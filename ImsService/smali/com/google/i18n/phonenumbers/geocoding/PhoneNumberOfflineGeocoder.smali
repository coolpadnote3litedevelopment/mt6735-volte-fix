.class public Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
.super Ljava/lang/Object;
.source "PhoneNumberOfflineGeocoder.java"


# static fields
.field private static final MAPPING_DATA_DIRECTORY:Ljava/lang/String; = "/com/google/i18n/phonenumbers/geocoding/data/"

.field private static instance:Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;


# instance fields
.field private final phoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

.field private prefixFileReader:Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->instance:Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    .line 33
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "phonePrefixDataDirectory"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->prefixFileReader:Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;

    .line 39
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    .line 43
    new-instance v0, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;

    invoke-direct {v0, p1}, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->prefixFileReader:Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;

    .line 42
    return-void
.end method

.method private canBeGeocoded(Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Z
    .registers 4
    .param p1, "numberType"    # Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .prologue
    const/4 v0, 0x1

    .line 224
    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq p1, v1, :cond_9

    .line 225
    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne p1, v1, :cond_a

    .line 224
    :cond_9
    :goto_9
    return v0

    .line 226
    :cond_a
    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq p1, v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private getCountryNameForNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;
    .registers 9
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "language"    # Ljava/util/Locale;

    .prologue
    .line 68
    iget-object v4, p0, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodesForCountryCode(I)Ljava/util/List;

    move-result-object v2

    .line 69
    .local v2, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1d

    .line 70
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4, p2}, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getRegionDisplayName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 72
    :cond_1d
    const-string/jumbo v3, "ZZ"

    .line 73
    .local v3, "regionWhereNumberIsValid":Ljava/lang/String;
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "regionCode$iterator":Ljava/util/Iterator;
    :cond_24
    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 74
    .local v0, "regionCode":Ljava/lang/String;
    iget-object v4, p0, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v4, p1, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isValidNumberForRegion(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 75
    const-string/jumbo v4, "ZZ"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_45

    .line 78
    const-string/jumbo v4, ""

    return-object v4

    .line 80
    :cond_45
    move-object v3, v0

    goto :goto_24

    .line 83
    .end local v0    # "regionCode":Ljava/lang/String;
    :cond_47
    invoke-direct {p0, v3, p2}, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getRegionDisplayName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static declared-synchronized getInstance()Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
    .registers 3

    .prologue
    const-class v1, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    monitor-enter v1

    .line 56
    :try_start_3
    sget-object v0, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->instance:Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    if-nez v0, :cond_11

    .line 57
    new-instance v0, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    const-string/jumbo v2, "/com/google/i18n/phonenumbers/geocoding/data/"

    invoke-direct {v0, v2}, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->instance:Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    .line 59
    :cond_11
    sget-object v0, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->instance:Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    monitor-exit v1

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getRegionDisplayName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .registers 5
    .param p1, "regionCode"    # Ljava/lang/String;
    .param p2, "language"    # Ljava/util/Locale;

    .prologue
    .line 91
    if-eqz p1, :cond_14

    const-string/jumbo v0, "ZZ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 92
    const-string/jumbo v0, "001"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 91
    if-eqz v0, :cond_18

    .line 93
    :cond_14
    const-string/jumbo v0, ""

    .line 91
    :goto_17
    return-object v0

    .line 93
    :cond_18
    new-instance v0, Ljava/util/Locale;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17
.end method


# virtual methods
.method public getDescriptionForNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;
    .registers 5
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "languageCode"    # Ljava/util/Locale;

    .prologue
    .line 186
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v1, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v0

    .line 187
    .local v0, "numberType":Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne v0, v1, :cond_e

    .line 188
    const-string/jumbo v1, ""

    return-object v1

    .line 189
    :cond_e
    invoke-direct {p0, v0}, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->canBeGeocoded(Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 190
    invoke-direct {p0, p1, p2}, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getCountryNameForNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 192
    :cond_19
    invoke-virtual {p0, p1, p2}, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getDescriptionForValidNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDescriptionForNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "languageCode"    # Ljava/util/Locale;
    .param p3, "userRegion"    # Ljava/lang/String;

    .prologue
    .line 209
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v1, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v0

    .line 210
    .local v0, "numberType":Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne v0, v1, :cond_e

    .line 211
    const-string/jumbo v1, ""

    return-object v1

    .line 212
    :cond_e
    invoke-direct {p0, v0}, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->canBeGeocoded(Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 213
    invoke-direct {p0, p1, p2}, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getCountryNameForNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 215
    :cond_19
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getDescriptionForValidNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDescriptionForValidNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;
    .registers 14
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "languageCode"    # Ljava/util/Locale;

    .prologue
    .line 111
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, "langStr":Ljava/lang/String;
    const-string/jumbo v8, ""

    .line 113
    .local v8, "scriptStr":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    .line 116
    .local v7, "regionStr":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v9

    invoke-static {v9}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getCountryMobileToken(I)Ljava/lang/String;

    move-result-object v4

    .line 117
    .local v4, "mobileToken":Ljava/lang/String;
    iget-object v9, p0, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v9, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v5

    .line 118
    .local v5, "nationalNumber":Ljava/lang/String;
    const-string/jumbo v9, ""

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_50

    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_50

    .line 121
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 122
    iget-object v9, p0, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v6

    .line 125
    .local v6, "region":Ljava/lang/String;
    :try_start_3a
    iget-object v9, p0, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v9, v5, v6}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_end_3f
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_3a .. :try_end_3f} :catch_4d

    move-result-object v1

    .line 130
    .local v1, "copiedNumber":Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :goto_40
    iget-object v9, p0, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->prefixFileReader:Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;

    invoke-virtual {v9, v1, v3, v8, v7}, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;->getDescriptionForNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    .end local v1    # "copiedNumber":Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .end local v6    # "region":Ljava/lang/String;
    .local v0, "areaDescription":Ljava/lang/String;
    :goto_46
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_57

    .end local v0    # "areaDescription":Ljava/lang/String;
    :goto_4c
    return-object v0

    .line 126
    .restart local v6    # "region":Ljava/lang/String;
    :catch_4d
    move-exception v2

    .line 128
    .local v2, "e":Lcom/google/i18n/phonenumbers/NumberParseException;
    move-object v1, p1

    .restart local v1    # "copiedNumber":Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    goto :goto_40

    .line 133
    .end local v1    # "copiedNumber":Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .end local v2    # "e":Lcom/google/i18n/phonenumbers/NumberParseException;
    .end local v6    # "region":Ljava/lang/String;
    :cond_50
    iget-object v9, p0, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->prefixFileReader:Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;

    invoke-virtual {v9, p1, v3, v8, v7}, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;->getDescriptionForNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "areaDescription":Ljava/lang/String;
    goto :goto_46

    .line 137
    :cond_57
    invoke-direct {p0, p1, p2}, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getCountryNameForNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4c
.end method

.method public getDescriptionForValidNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "languageCode"    # Ljava/util/Locale;
    .param p3, "userRegion"    # Ljava/lang/String;

    .prologue
    .line 166
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v1, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "regionCode":Ljava/lang/String;
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 168
    invoke-virtual {p0, p1, p2}, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getDescriptionForValidNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 171
    :cond_11
    invoke-direct {p0, v0, p2}, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getRegionDisplayName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
