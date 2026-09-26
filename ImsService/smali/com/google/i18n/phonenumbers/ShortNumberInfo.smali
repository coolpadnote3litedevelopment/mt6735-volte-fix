.class public Lcom/google/i18n/phonenumbers/ShortNumberInfo;
.super Ljava/lang/Object;
.source "ShortNumberInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;
    }
.end annotation


# static fields
.field private static synthetic -com_google_i18n_phonenumbers_ShortNumberInfo$ShortNumberCostSwitchesValues:[I

.field private static final INSTANCE:Lcom/google/i18n/phonenumbers/ShortNumberInfo;

.field private static final REGIONS_WHERE_EMERGENCY_NUMBERS_MUST_BE_EXACT:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final countryCallingCodeToRegionCodeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final matcherApi:Lcom/google/i18n/phonenumbers/internal/MatcherApi;


# direct methods
.method private static synthetic -getcom_google_i18n_phonenumbers_ShortNumberInfo$ShortNumberCostSwitchesValues()[I
    .registers 3

    sget-object v0, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->-com_google_i18n_phonenumbers_ShortNumberInfo$ShortNumberCostSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->-com_google_i18n_phonenumbers_ShortNumberInfo$ShortNumberCostSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->values()[Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->PREMIUM_RATE:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_3b

    :goto_17
    :try_start_17
    sget-object v1, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->STANDARD_RATE:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_39

    :goto_20
    :try_start_20
    sget-object v1, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->TOLL_FREE:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_37

    :goto_29
    :try_start_29
    sget-object v1, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->UNKNOWN_COST:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_35

    :goto_32
    sput-object v0, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->-com_google_i18n_phonenumbers_ShortNumberInfo$ShortNumberCostSwitchesValues:[I

    return-object v0

    :catch_35
    move-exception v1

    goto :goto_32

    :catch_37
    move-exception v1

    goto :goto_29

    :catch_39
    move-exception v1

    goto :goto_20

    :catch_3b
    move-exception v1

    goto :goto_17
.end method

.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 45
    const-class v0, Lcom/google/i18n/phonenumbers/ShortNumberInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->logger:Ljava/util/logging/Logger;

    .line 48
    new-instance v0, Lcom/google/i18n/phonenumbers/ShortNumberInfo;

    invoke-static {}, Lcom/google/i18n/phonenumbers/internal/RegexBasedMatcher;->create()Lcom/google/i18n/phonenumbers/internal/MatcherApi;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;-><init>(Lcom/google/i18n/phonenumbers/internal/MatcherApi;)V

    .line 47
    sput-object v0, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->INSTANCE:Lcom/google/i18n/phonenumbers/ShortNumberInfo;

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 52
    sput-object v0, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->REGIONS_WHERE_EMERGENCY_NUMBERS_MUST_BE_EXACT:Ljava/util/Set;

    .line 55
    sget-object v0, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->REGIONS_WHERE_EMERGENCY_NUMBERS_MUST_BE_EXACT:Ljava/util/Set;

    const-string/jumbo v1, "BR"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->REGIONS_WHERE_EMERGENCY_NUMBERS_MUST_BE_EXACT:Ljava/util/Set;

    const-string/jumbo v1, "CL"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->REGIONS_WHERE_EMERGENCY_NUMBERS_MUST_BE_EXACT:Ljava/util/Set;

    const-string/jumbo v1, "NI"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    return-void
.end method

.method constructor <init>(Lcom/google/i18n/phonenumbers/internal/MatcherApi;)V
    .registers 3
    .param p1, "matcherApi"    # Lcom/google/i18n/phonenumbers/internal/MatcherApi;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->matcherApi:Lcom/google/i18n/phonenumbers/internal/MatcherApi;

    .line 89
    invoke-static {}, Lcom/google/i18n/phonenumbers/CountryCodeToRegionCodeMap;->getCountryCodeToRegionCodeMap()Ljava/util/Map;

    move-result-object v0

    .line 88
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    .line 85
    return-void
.end method

.method public static getInstance()Lcom/google/i18n/phonenumbers/ShortNumberInfo;
    .registers 1

    .prologue
    .line 70
    sget-object v0, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->INSTANCE:Lcom/google/i18n/phonenumbers/ShortNumberInfo;

    return-object v0
.end method

.method private static getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;
    .registers 5
    .param p0, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 571
    .local v0, "nationalNumber":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->isItalianLeadingZero()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 572
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNumberOfLeadingZeros()I

    move-result v2

    new-array v1, v2, [C

    .line 573
    .local v1, "zeros":[C
    const/16 v2, 0x30

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([CC)V

    .line 574
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    .end local v1    # "zeros":[C
    :cond_1e
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 577
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getRegionCodeForShortNumberFromRegionList(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/List;)Ljava/lang/String;
    .registers 11
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p2, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 402
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_9

    .line 403
    return-object v6

    .line 404
    :cond_9
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_17

    .line 405
    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    return-object v4

    .line 407
    :cond_17
    invoke-static {p1}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, "nationalNumber":Ljava/lang/String;
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "regionCode$iterator":Ljava/util/Iterator;
    :cond_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 409
    .local v2, "regionCode":Ljava/lang/String;
    invoke-static {v2}, Lcom/google/i18n/phonenumbers/MetadataManager;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v1

    .line 410
    .local v1, "phoneMetadata":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v1, :cond_1f

    .line 411
    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getShortCode()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v4

    .line 410
    if-eqz v4, :cond_1f

    .line 413
    return-object v2

    .line 416
    .end local v1    # "phoneMetadata":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .end local v2    # "regionCode":Ljava/lang/String;
    :cond_3c
    return-object v6
.end method

.method private getRegionCodesForCountryCode(I)Ljava/util/List;
    .registers 5
    .param p1, "countryCallingCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 99
    .local v0, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_14

    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :cond_14
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private matchesEmergencyNumberHelper(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 10
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "regionCode"    # Ljava/lang/String;
    .param p3, "allowPrefixMatch"    # Z

    .prologue
    const/4 v5, 0x0

    .line 517
    invoke-static {p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->extractPossibleNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 518
    sget-object v4, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 522
    return v5

    .line 524
    :cond_12
    invoke-static {p2}, Lcom/google/i18n/phonenumbers/MetadataManager;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v2

    .line 525
    .local v2, "metadata":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v2, :cond_38

    invoke-virtual {v2}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasEmergency()Z

    move-result v4

    if-eqz v4, :cond_38

    .line 529
    invoke-static {p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 530
    .local v3, "normalizedNumber":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getEmergency()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    .line 532
    .local v1, "emergencyDesc":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    if-eqz p3, :cond_30

    sget-object v4, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->REGIONS_WHERE_EMERGENCY_NUMBERS_MUST_BE_EXACT:Ljava/util/Set;

    invoke-interface {v4, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    :cond_30
    const/4 v0, 0x0

    .line 533
    .local v0, "allowPrefixMatchForRegion":Z
    :goto_31
    iget-object v4, p0, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->matcherApi:Lcom/google/i18n/phonenumbers/internal/MatcherApi;

    invoke-interface {v4, v3, v1, v0}, Lcom/google/i18n/phonenumbers/internal/MatcherApi;->matchesNationalNumber(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;Z)Z

    move-result v4

    return v4

    .line 526
    .end local v0    # "allowPrefixMatchForRegion":Z
    .end local v1    # "emergencyDesc":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .end local v3    # "normalizedNumber":Ljava/lang/String;
    :cond_38
    return v5

    .line 532
    .restart local v1    # "emergencyDesc":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .restart local v3    # "normalizedNumber":Ljava/lang/String;
    :cond_39
    const/4 v0, 0x1

    .restart local v0    # "allowPrefixMatchForRegion":Z
    goto :goto_31
.end method

.method private matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z
    .registers 5
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "numberDesc"    # Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .prologue
    const/4 v0, 0x0

    .line 584
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->matcherApi:Lcom/google/i18n/phonenumbers/internal/MatcherApi;

    invoke-interface {v1, p1, p2}, Lcom/google/i18n/phonenumbers/internal/MatcherApi;->matchesPossibleNumber(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 585
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->matcherApi:Lcom/google/i18n/phonenumbers/internal/MatcherApi;

    invoke-interface {v1, p1, p2, v0}, Lcom/google/i18n/phonenumbers/internal/MatcherApi;->matchesNationalNumber(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;Z)Z

    move-result v0

    .line 584
    :cond_f
    return v0
.end method


# virtual methods
.method public connectsToEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 496
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->matchesEmergencyNumberHelper(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method getExampleShortNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 435
    invoke-static {p1}, Lcom/google/i18n/phonenumbers/MetadataManager;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v1

    .line 436
    .local v1, "phoneMetadata":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v1, :cond_a

    .line 437
    const-string/jumbo v2, ""

    return-object v2

    .line 439
    :cond_a
    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getShortCode()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    .line 440
    .local v0, "desc":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 441
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getExampleNumber()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 443
    :cond_19
    const-string/jumbo v2, ""

    return-object v2
.end method

.method getExampleShortNumberForCost(Ljava/lang/String;Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;)Ljava/lang/String;
    .registers 7
    .param p1, "regionCode"    # Ljava/lang/String;
    .param p2, "cost"    # Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    .prologue
    .line 456
    invoke-static {p1}, Lcom/google/i18n/phonenumbers/MetadataManager;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v1

    .line 457
    .local v1, "phoneMetadata":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v1, :cond_a

    .line 458
    const-string/jumbo v2, ""

    return-object v2

    .line 460
    :cond_a
    const/4 v0, 0x0

    .line 461
    .local v0, "desc":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-static {}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->-getcom_google_i18n_phonenumbers_ShortNumberInfo$ShortNumberCostSwitchesValues()[I

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_38

    .line 475
    .end local v0    # "desc":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :goto_18
    if-eqz v0, :cond_34

    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 476
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getExampleNumber()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 463
    .restart local v0    # "desc":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :pswitch_25
    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getTollFree()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    .local v0, "desc":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    goto :goto_18

    .line 466
    .local v0, "desc":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :pswitch_2a
    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getStandardRate()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    .local v0, "desc":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    goto :goto_18

    .line 469
    .local v0, "desc":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :pswitch_2f
    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPremiumRate()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    .local v0, "desc":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    goto :goto_18

    .line 478
    .end local v0    # "desc":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_34
    const-string/jumbo v2, ""

    return-object v2

    .line 461
    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_2a
        :pswitch_25
    .end packed-switch
.end method

.method public getExpectedCost(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;
    .registers 11
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    const/4 v7, 0x0

    .line 366
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->getRegionCodesForCountryCode(I)Ljava/util/List;

    move-result-object v4

    .line 367
    .local v4, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_12

    .line 368
    sget-object v5, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->UNKNOWN_COST:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    return-object v5

    .line 370
    :cond_12
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_24

    .line 371
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, p1, v5}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->getExpectedCostForRegion(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    move-result-object v5

    return-object v5

    .line 373
    :cond_24
    sget-object v0, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->TOLL_FREE:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    .line 374
    .local v0, "cost":Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "regionCode$iterator":Ljava/util/Iterator;
    :cond_2a
    :goto_2a
    :pswitch_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_70

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 375
    .local v2, "regionCode":Ljava/lang/String;
    invoke-virtual {p0, p1, v2}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->getExpectedCostForRegion(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    move-result-object v1

    .line 376
    .local v1, "costForRegion":Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;
    invoke-static {}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->-getcom_google_i18n_phonenumbers_ShortNumberInfo$ShortNumberCostSwitchesValues()[I

    move-result-object v5

    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_72

    .line 391
    sget-object v5, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unrecognised cost for region: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_2a

    .line 378
    :pswitch_63
    sget-object v5, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->PREMIUM_RATE:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    return-object v5

    .line 380
    :pswitch_66
    sget-object v0, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->UNKNOWN_COST:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    goto :goto_2a

    .line 383
    :pswitch_69
    sget-object v5, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->UNKNOWN_COST:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    if-eq v0, v5, :cond_2a

    .line 384
    sget-object v0, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->STANDARD_RATE:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    goto :goto_2a

    .line 394
    .end local v1    # "costForRegion":Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;
    .end local v2    # "regionCode":Ljava/lang/String;
    :cond_70
    return-object v0

    .line 376
    nop

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_63
        :pswitch_69
        :pswitch_2a
        :pswitch_66
    .end packed-switch
.end method

.method public getExpectedCostForRegion(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;
    .registers 6
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionDialingFrom"    # Ljava/lang/String;

    .prologue
    .line 318
    invoke-static {p2}, Lcom/google/i18n/phonenumbers/MetadataManager;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 320
    .local v0, "phoneMetadata":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v0, :cond_9

    .line 321
    sget-object v2, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->UNKNOWN_COST:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    return-object v2

    .line 324
    :cond_9
    invoke-static {p1}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    .line 328
    .local v1, "shortNumber":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPremiumRate()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 329
    sget-object v2, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->PREMIUM_RATE:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    return-object v2

    .line 331
    :cond_1a
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getStandardRate()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 332
    sget-object v2, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->STANDARD_RATE:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    return-object v2

    .line 334
    :cond_27
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getTollFree()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 335
    sget-object v2, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->TOLL_FREE:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    return-object v2

    .line 337
    :cond_34
    invoke-virtual {p0, v1, p2}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->isEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 339
    sget-object v2, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->TOLL_FREE:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    return-object v2

    .line 341
    :cond_3d
    sget-object v2, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->UNKNOWN_COST:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    return-object v2
.end method

.method public getExpectedCostForRegion(Ljava/lang/String;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;
    .registers 5
    .param p1, "shortNumber"    # Ljava/lang/String;
    .param p2, "regionDialingFrom"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 269
    invoke-static {p2}, Lcom/google/i18n/phonenumbers/MetadataManager;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 271
    .local v0, "phoneMetadata":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v0, :cond_9

    .line 272
    sget-object v1, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->UNKNOWN_COST:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    return-object v1

    .line 277
    :cond_9
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPremiumRate()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 278
    sget-object v1, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->PREMIUM_RATE:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    return-object v1

    .line 280
    :cond_16
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getStandardRate()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 281
    sget-object v1, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->STANDARD_RATE:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    return-object v1

    .line 283
    :cond_23
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getTollFree()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 284
    sget-object v1, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->TOLL_FREE:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    return-object v1

    .line 286
    :cond_30
    invoke-virtual {p0, p1, p2}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->isEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 288
    sget-object v1, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->TOLL_FREE:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    return-object v1

    .line 290
    :cond_39
    sget-object v1, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->UNKNOWN_COST:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    return-object v1
.end method

.method getSupportedRegions()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 423
    invoke-static {}, Lcom/google/i18n/phonenumbers/MetadataManager;->getShortNumberMetadataSupportedRegions()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public isCarrierSpecific(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .registers 7
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 548
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->getRegionCodesForCountryCode(I)Ljava/util/List;

    move-result-object v3

    .line 549
    .local v3, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, v3}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->getRegionCodeForShortNumberFromRegionList(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 550
    .local v2, "regionCode":Ljava/lang/String;
    invoke-static {p1}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v0

    .line 551
    .local v0, "nationalNumber":Ljava/lang/String;
    invoke-static {v2}, Lcom/google/i18n/phonenumbers/MetadataManager;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v1

    .line 552
    .local v1, "phoneMetadata":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v1, :cond_1f

    .line 554
    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getCarrierSpecific()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v4

    .line 553
    invoke-direct {p0, v0, v4}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v4

    .line 552
    :goto_1e
    return v4

    :cond_1f
    const/4 v4, 0x0

    goto :goto_1e
.end method

.method public isEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 512
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->matchesEmergencyNumberHelper(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isPossibleShortNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .registers 9
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 155
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->getRegionCodesForCountryCode(I)Ljava/util/List;

    move-result-object v3

    .line 156
    .local v3, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v4

    .line 157
    .local v4, "shortNumber":Ljava/lang/String;
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "region$iterator":Ljava/util/Iterator;
    :cond_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 158
    .local v1, "region":Ljava/lang/String;
    invoke-static {v1}, Lcom/google/i18n/phonenumbers/MetadataManager;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 159
    .local v0, "phoneMetadata":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    iget-object v5, p0, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->matcherApi:Lcom/google/i18n/phonenumbers/internal/MatcherApi;

    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Lcom/google/i18n/phonenumbers/internal/MatcherApi;->matchesPossibleNumber(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 160
    const/4 v5, 0x1

    return v5

    .line 163
    .end local v0    # "phoneMetadata":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .end local v1    # "region":Ljava/lang/String;
    :cond_2e
    const/4 v5, 0x0

    return v5
.end method

.method public isPossibleShortNumberForRegion(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z
    .registers 7
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionDialingFrom"    # Ljava/lang/String;

    .prologue
    .line 137
    invoke-static {p2}, Lcom/google/i18n/phonenumbers/MetadataManager;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 138
    .local v0, "phoneMetadata":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v0, :cond_8

    .line 139
    const/4 v1, 0x0

    return v1

    .line 141
    :cond_8
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->matcherApi:Lcom/google/i18n/phonenumbers/internal/MatcherApi;

    invoke-static {p1}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    .line 142
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v3

    .line 141
    invoke-interface {v1, v2, v3}, Lcom/google/i18n/phonenumbers/internal/MatcherApi;->matchesPossibleNumber(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v1

    return v1
.end method

.method public isPossibleShortNumberForRegion(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "shortNumber"    # Ljava/lang/String;
    .param p2, "regionDialingFrom"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 120
    invoke-static {p2}, Lcom/google/i18n/phonenumbers/MetadataManager;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 121
    .local v0, "phoneMetadata":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v0, :cond_8

    .line 122
    const/4 v1, 0x0

    return v1

    .line 124
    :cond_8
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->matcherApi:Lcom/google/i18n/phonenumbers/internal/MatcherApi;

    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/google/i18n/phonenumbers/internal/MatcherApi;->matchesPossibleNumber(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v1

    return v1
.end method

.method public isValidShortNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .registers 6
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    const/4 v3, 0x1

    .line 229
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->getRegionCodesForCountryCode(I)Ljava/util/List;

    move-result-object v1

    .line 230
    .local v1, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, v1}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->getRegionCodeForShortNumberFromRegionList(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "regionCode":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v3, :cond_16

    if-eqz v0, :cond_16

    .line 234
    return v3

    .line 236
    :cond_16
    invoke-virtual {p0, p1, v0}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->isValidShortNumberForRegion(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public isValidShortNumberForRegion(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z
    .registers 9
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionDialingFrom"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 206
    invoke-static {p2}, Lcom/google/i18n/phonenumbers/MetadataManager;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v1

    .line 207
    .local v1, "phoneMetadata":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v1, :cond_8

    .line 208
    return v5

    .line 210
    :cond_8
    invoke-static {p1}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, "shortNumber":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    .line 212
    .local v0, "generalDesc":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-direct {p0, v2, v0}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 213
    return v5

    .line 215
    :cond_17
    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getShortCode()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v3

    .line 216
    .local v3, "shortNumberDesc":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-direct {p0, v2, v3}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v4

    return v4
.end method

.method public isValidShortNumberForRegion(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "shortNumber"    # Ljava/lang/String;
    .param p2, "regionDialingFrom"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 183
    invoke-static {p2}, Lcom/google/i18n/phonenumbers/MetadataManager;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v1

    .line 184
    .local v1, "phoneMetadata":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v1, :cond_8

    .line 185
    return v4

    .line 187
    :cond_8
    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    .line 188
    .local v0, "generalDesc":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-direct {p0, p1, v0}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 189
    return v4

    .line 191
    :cond_13
    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getShortCode()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    .line 192
    .local v2, "shortNumberDesc":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-direct {p0, p1, v2}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v3

    return v3
.end method
