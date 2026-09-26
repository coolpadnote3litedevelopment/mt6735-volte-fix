#!/bin/bash
# Build ImsService.apk from ImsService/smali and ImsService/compat.
#
# usage: ./build.sh <platform.pk8> <platform.x509.pem> [out.apk]
#
# Needs java, smali.jar and baksmali.jar (2.x), and the Android SDK:
#   SMALI=/path/smali.jar BAKSMALI=/path/baksmali.jar \
#   BUILD_TOOLS=$ANDROID_HOME/build-tools/34.0.0 \
#   ANDROID_JAR=$ANDROID_HOME/platforms/android-34/android.jar ./build.sh ...
# The key must be the platform key of the ROM: ImsService runs as android.uid.phone.
set -e

key=$1; cert=$2; out=${3:-ImsService.apk}
[ -f "$key" ] && [ -f "$cert" ] || { echo "usage: $0 <platform.pk8> <platform.x509.pem> [out.apk]"; exit 1; }
: "${SMALI:?}" "${BAKSMALI:?}" "${BUILD_TOOLS:?}" "${ANDROID_JAR:?}"

top=$(cd "$(dirname "$0")" && pwd)
work=$(mktemp -d)
trap 'rm -rf "$work"' EXIT

# compat classes, compiled against stubs of the framework classes they use
mkdir -p "$work/stubs" "$work/cls" "$work/d8"
javac --release 8 -nowarn -d "$work/stubs" -cp "$ANDROID_JAR" $(find "$top/ImsService/compat/stubs" -name '*.java')
javac --release 8 -nowarn -d "$work/cls" -cp "$ANDROID_JAR:$work/stubs" $(find "$top/ImsService/compat/src" -name '*.java')
java -cp "$BUILD_TOOLS/lib/d8.jar" com.android.tools.r8.D8 --min-api 23 --lib "$ANDROID_JAR" \
    --classpath "$work/stubs" --output "$work/d8" $(find "$work/cls" -name '*.class')

# ImsService smali plus the compat classes
cp -R "$top/ImsService/smali" "$work/smali"
java -jar "$BAKSMALI" d "$work/d8/classes.dex" -o "$work/smali"
java -jar "$SMALI" a --api 23 "$work/smali" -o "$work/classes.dex"

# stock APK resources with the new code
cp "$top/ImsService/ImsService-stock.apk" "$work/u.apk"
zip -q -d "$work/u.apk" 'META-INF/*'
(cd "$work" && zip -q u.apk classes.dex)
"$BUILD_TOOLS/zipalign" -f -p 4 "$work/u.apk" "$work/a.apk"
java -jar "$BUILD_TOOLS/lib/apksigner.jar" sign --key "$key" --cert "$cert" --min-sdk-version 23 --out "$out" "$work/a.apk"
echo "$out"
