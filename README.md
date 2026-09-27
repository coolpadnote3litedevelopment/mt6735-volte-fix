# mt6735-volte-fix

VoLTE for MT6735 phones running CyanogenMod 13 with the MediaTek
Android 6.0 IMS blobs. Tested on the Coolpad Note 3 Lite (CP8298_I00)
on Jio: IMS registration, incoming and outgoing calls with audio, and
receiving SMS over IMS.

This repo holds the stock `ImsService` from Coolpad's
6.0.007.P0.160801.8298_I00 build, deodexed to smali. Each fix is its own
commit on top of the stock import, so `git log -p` shows exactly what
was changed and why:

- Adapt to the cm-13 framework (MediaTek-only framework members are
  routed through `ImsCompat`)
- Enable IMS on the modem from `turnOnIms`
- Allow incoming calls from the call indication
- Enable IMS again when the radio comes back
- Mark the caller number as presentable
- Keep the dialed number on outgoing calls

`build.sh` rebuilds `ImsService.apk` from this tree. It has to be signed
with the ROM's platform key.

The device tree pins it by sha1 in `proprietary-files.txt`, so update the
pin when a new build goes into the vendor repo.

## Device, common and vendor changes

VoLTE also needs the native IMS stack, the VT service, init, sepolicy,
RIL and overlay changes in the device trees.

[android_device_coolpad_mt6735-common](https://github.com/coolpadnote3litedevelopment/android_device_coolpad_mt6735-common/tree/cm-13.0):
- [mt6735: Drop the rild sockets for SIM slots 3 and 4](https://github.com/coolpadnote3litedevelopment/android_device_coolpad_mt6735-common/commit/7a17df76b2d1174362e0acb6d43d71c1eeae1502)
- [mt6735: Open the rild MAL sockets](https://github.com/coolpadnote3litedevelopment/android_device_coolpad_mt6735-common/commit/694aaa9eda473152b7ab46c906fd02549431a6d8)
- [mt6735: Add the ims network type](https://github.com/coolpadnote3litedevelopment/android_device_coolpad_mt6735-common/commit/4f383cb8a7a18287e14ff56bc4301c5243ebf3c2)
- [libshims: Add the media symbols the VT libraries need](https://github.com/coolpadnote3litedevelopment/android_device_coolpad_mt6735-common/commit/310f073f29535abebcc3ba52e3f4847df5bc2ba1)
- [ril: Reserve the data call interface at request time and keep IMS on ccmni4](https://github.com/coolpadnote3litedevelopment/android_device_coolpad_mt6735-common/commit/37ec7e9efd7cb4509fee4bc8875e1574ee50908d)
- [ril: Send IMS SMS through the regular SMS request](https://github.com/coolpadnote3litedevelopment/android_device_coolpad_mt6735-common/commit/86af700533f9bdea0d6b943b2555e7288304e973)

[android_device_coolpad_CP8298_I00](https://github.com/coolpadnote3litedevelopment/android_device_coolpad_CP8298_I00/tree/cm-13.0):
- [CP8298_I00: Add the VoLTE daemons](https://github.com/coolpadnote3litedevelopment/android_device_coolpad_CP8298_I00/commit/0402c383928d8d10f3ddd454270f2abcd33eff24)
- [CP8298_I00: Add the IMS blobs](https://github.com/coolpadnote3litedevelopment/android_device_coolpad_CP8298_I00/commit/af76f71c5b0f372e9883ee571c2bd27dcd22331a)
- [CP8298_I00: Enable VoLTE](https://github.com/coolpadnote3litedevelopment/android_device_coolpad_CP8298_I00/commit/721cb5b6356bb11b7070ddb9b281df9a220f5131)
- [CP8298_I00: Enable dynamic SBP](https://github.com/coolpadnote3litedevelopment/android_device_coolpad_CP8298_I00/commit/5af89b77c0833cdc2ca7a402eaf159a80cbfbec3)
- [CP8298_I00: Start the VT service](https://github.com/coolpadnote3litedevelopment/android_device_coolpad_CP8298_I00/commit/970741abfbe86846e6adffa68c11bdc552da9405)
- [CP8298_I00: Let volte_stack set up the IMS IPsec](https://github.com/coolpadnote3litedevelopment/android_device_coolpad_CP8298_I00/commit/c2d9172f1569c9a2840b589c3100805f600e7868)
- [CP8298_I00: Let mtkmal use wake alarms](https://github.com/coolpadnote3litedevelopment/android_device_coolpad_CP8298_I00/commit/b3b0743461224f3a2779dff58b92db64fcc357d2)

[proprietary_vendor_coolpad](https://github.com/coolpadnote3litedevelopment/proprietary_vendor_coolpad/tree/cm-13.0):
- [CP8298_I00: Import the IMS stack](https://github.com/coolpadnote3litedevelopment/proprietary_vendor_coolpad/commit/ad3aa5893e616e5278510b14eb42dd24ccb43962)
- [CP8298_I00: Import the VT service](https://github.com/coolpadnote3litedevelopment/proprietary_vendor_coolpad/commit/c5bbf65c0d8df6c8e205738fb4228adebfa70d8d)
- ImsService updates built from this repo:
  [66bf2de](https://github.com/coolpadnote3litedevelopment/proprietary_vendor_coolpad/commit/66bf2debebcf566afcff9899b685fde0b93dc6e3),
  [24eb791](https://github.com/coolpadnote3litedevelopment/proprietary_vendor_coolpad/commit/24eb791247fe1366207b21c392d1e6ff03e9325c),
  [4513964](https://github.com/coolpadnote3litedevelopment/proprietary_vendor_coolpad/commit/45139646a9eed89c391ae3e7207fd13d478808f7),
  [dddf74b](https://github.com/coolpadnote3litedevelopment/proprietary_vendor_coolpad/commit/dddf74bcac5a1c4785e8c3317b440add8765f54f)

## What each piece is for

- The modem only starts IMS registration once `vtservice` is running.
- The IMS PDN has to be on ccmni4: MAL and ImsService reject any other
  interface, and MAL only supplies the P-CSCF discovery flags for it.
- cm-13 needs `mobile_ims` in `networkAttributes` to bring up the ims APN.
- cm-13 init has 31 environment slots, so mtkrild loses its sockets
  unless the unused SIM 3 and 4 sockets are dropped.
