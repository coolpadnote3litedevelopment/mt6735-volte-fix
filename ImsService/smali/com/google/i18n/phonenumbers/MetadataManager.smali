.class Lcom/google/i18n/phonenumbers/MetadataManager;
.super Ljava/lang/Object;
.source "MetadataManager.java"


# static fields
.field private static final ALTERNATE_FORMATS_FILE_PREFIX:Ljava/lang/String; = "/com/google/i18n/phonenumbers/data/PhoneNumberAlternateFormatsProto"

.field private static final LOGGER:Ljava/util/logging/Logger;

.field private static final SHORT_NUMBER_METADATA_FILE_PREFIX:Ljava/lang/String; = "/com/google/i18n/phonenumbers/data/ShortNumberMetadataProto"

.field private static final callingCodeToAlternateFormatsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private static final countryCodeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final regionCodeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final regionCodeToShortNumberMetadataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    const-class v0, Lcom/google/i18n/phonenumbers/MetadataManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/MetadataManager;->LOGGER:Ljava/util/logging/Logger;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 47
    sput-object v0, Lcom/google/i18n/phonenumbers/MetadataManager;->callingCodeToAlternateFormatsMap:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 49
    sput-object v0, Lcom/google/i18n/phonenumbers/MetadataManager;->regionCodeToShortNumberMetadataMap:Ljava/util/Map;

    .line 55
    invoke-static {}, Lcom/google/i18n/phonenumbers/AlternateFormatsCountryCodeSet;->getCountryCodeSet()Ljava/util/Set;

    move-result-object v0

    .line 54
    sput-object v0, Lcom/google/i18n/phonenumbers/MetadataManager;->countryCodeSet:Ljava/util/Set;

    .line 59
    invoke-static {}, Lcom/google/i18n/phonenumbers/ShortNumbersRegionCodeSet;->getRegionCodeSet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/MetadataManager;->regionCodeSet:Ljava/util/Set;

    .line 39
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static close(Ljava/io/InputStream;)V
    .registers 5
    .param p0, "in"    # Ljava/io/InputStream;

    .prologue
    .line 65
    if-eqz p0, :cond_5

    .line 67
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 64
    :cond_5
    :goto_5
    return-void

    .line 68
    :catch_6
    move-exception v0

    .line 69
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/google/i18n/phonenumbers/MetadataManager;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_5
.end method

.method static getAlternateFormatsForCountry(I)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 4
    .param p0, "countryCallingCode"    # I

    .prologue
    .line 93
    sget-object v0, Lcom/google/i18n/phonenumbers/MetadataManager;->countryCodeSet:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 94
    const/4 v0, 0x0

    return-object v0

    .line 96
    :cond_e
    sget-object v1, Lcom/google/i18n/phonenumbers/MetadataManager;->callingCodeToAlternateFormatsMap:Ljava/util/Map;

    monitor-enter v1

    .line 97
    :try_start_11
    sget-object v0, Lcom/google/i18n/phonenumbers/MetadataManager;->callingCodeToAlternateFormatsMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 98
    invoke-static {p0}, Lcom/google/i18n/phonenumbers/MetadataManager;->loadAlternateFormatsMetadataFromFile(I)V
    :try_end_20
    .catchall {:try_start_11 .. :try_end_20} :catchall_2e

    :cond_20
    monitor-exit v1

    .line 101
    sget-object v0, Lcom/google/i18n/phonenumbers/MetadataManager;->callingCodeToAlternateFormatsMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    return-object v0

    .line 96
    :catchall_2e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3
    .param p0, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 128
    sget-object v0, Lcom/google/i18n/phonenumbers/MetadataManager;->regionCodeSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 129
    const/4 v0, 0x0

    return-object v0

    .line 131
    :cond_a
    sget-object v1, Lcom/google/i18n/phonenumbers/MetadataManager;->regionCodeToShortNumberMetadataMap:Ljava/util/Map;

    monitor-enter v1

    .line 132
    :try_start_d
    sget-object v0, Lcom/google/i18n/phonenumbers/MetadataManager;->regionCodeToShortNumberMetadataMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 133
    invoke-static {p0}, Lcom/google/i18n/phonenumbers/MetadataManager;->loadShortNumberMetadataFromFile(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_22

    :cond_18
    monitor-exit v1

    .line 136
    sget-object v0, Lcom/google/i18n/phonenumbers/MetadataManager;->regionCodeToShortNumberMetadataMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    return-object v0

    .line 131
    :catchall_22
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static getShortNumberMetadataSupportedRegions()Ljava/util/Set;
    .registers 1
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
    .line 124
    sget-object v0, Lcom/google/i18n/phonenumbers/MetadataManager;->regionCodeSet:Ljava/util/Set;

    return-object v0
.end method

.method private static loadAlternateFormatsMetadataFromFile(I)V
    .registers 11
    .param p0, "countryCallingCode"    # I

    .prologue
    .line 75
    const-class v7, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;

    .line 76
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "/com/google/i18n/phonenumbers/data/PhoneNumberAlternateFormatsProto_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 75
    invoke-virtual {v7, v8}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 77
    .local v6, "source":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 79
    .local v2, "in":Ljava/io/ObjectInputStream;
    :try_start_1b
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v6}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_20} :catch_68
    .catchall {:try_start_1b .. :try_end_20} :catchall_60

    .line 80
    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .local v3, "in":Ljava/io/ObjectInputStream;
    :try_start_20
    new-instance v0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;-><init>()V

    .line 81
    .local v0, "alternateFormats":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    invoke-virtual {v0, v3}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->readExternal(Ljava/io/ObjectInput;)V

    .line 82
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->getMetadataList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "metadata$iterator":Ljava/util/Iterator;
    :goto_30
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 83
    .local v4, "metadata":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    sget-object v7, Lcom/google/i18n/phonenumbers/MetadataManager;->callingCodeToAlternateFormatsMap:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getCountryCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_49} :catch_4a
    .catchall {:try_start_20 .. :try_end_49} :catchall_65

    goto :goto_30

    .line 85
    .end local v0    # "alternateFormats":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    .end local v4    # "metadata":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .end local v5    # "metadata$iterator":Ljava/util/Iterator;
    :catch_4a
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    move-object v2, v3

    .line 86
    .end local v3    # "in":Ljava/io/ObjectInputStream;
    :goto_4c
    :try_start_4c
    sget-object v7, Lcom/google/i18n/phonenumbers/MetadataManager;->LOGGER:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_57
    .catchall {:try_start_4c .. :try_end_57} :catchall_60

    .line 88
    invoke-static {v2}, Lcom/google/i18n/phonenumbers/MetadataManager;->close(Ljava/io/InputStream;)V

    .line 74
    .end local v1    # "e":Ljava/io/IOException;
    :goto_5a
    return-void

    .line 88
    .restart local v0    # "alternateFormats":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    .restart local v3    # "in":Ljava/io/ObjectInputStream;
    .restart local v5    # "metadata$iterator":Ljava/util/Iterator;
    :cond_5b
    invoke-static {v3}, Lcom/google/i18n/phonenumbers/MetadataManager;->close(Ljava/io/InputStream;)V

    move-object v2, v3

    .end local v3    # "in":Ljava/io/ObjectInputStream;
    .local v2, "in":Ljava/io/ObjectInputStream;
    goto :goto_5a

    .line 87
    .end local v0    # "alternateFormats":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .end local v5    # "metadata$iterator":Ljava/util/Iterator;
    :catchall_60
    move-exception v7

    .line 88
    :goto_61
    invoke-static {v2}, Lcom/google/i18n/phonenumbers/MetadataManager;->close(Ljava/io/InputStream;)V

    .line 87
    throw v7

    .restart local v3    # "in":Ljava/io/ObjectInputStream;
    :catchall_65
    move-exception v7

    move-object v2, v3

    .end local v3    # "in":Ljava/io/ObjectInputStream;
    .restart local v2    # "in":Ljava/io/ObjectInputStream;
    goto :goto_61

    .line 85
    .local v2, "in":Ljava/io/ObjectInputStream;
    :catch_68
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_4c
.end method

.method private static loadShortNumberMetadataFromFile(Ljava/lang/String;)V
    .registers 11
    .param p0, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 105
    const-class v7, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;

    .line 106
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "/com/google/i18n/phonenumbers/data/ShortNumberMetadataProto_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 105
    invoke-virtual {v7, v8}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 107
    .local v6, "source":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 109
    .local v1, "in":Ljava/io/ObjectInputStream;
    :try_start_1b
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v6}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_20} :catch_60
    .catchall {:try_start_1b .. :try_end_20} :catchall_58

    .line 110
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .local v2, "in":Ljava/io/ObjectInputStream;
    :try_start_20
    new-instance v5, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;

    invoke-direct {v5}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;-><init>()V

    .line 111
    .local v5, "shortNumberMetadata":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    invoke-virtual {v5, v2}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->readExternal(Ljava/io/ObjectInput;)V

    .line 112
    invoke-virtual {v5}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->getMetadataList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "metadata$iterator":Ljava/util/Iterator;
    :goto_30
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_53

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 113
    .local v3, "metadata":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    sget-object v7, Lcom/google/i18n/phonenumbers/MetadataManager;->regionCodeToShortNumberMetadataMap:Ljava/util/Map;

    invoke-interface {v7, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_41} :catch_42
    .catchall {:try_start_20 .. :try_end_41} :catchall_5d

    goto :goto_30

    .line 115
    .end local v3    # "metadata":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .end local v4    # "metadata$iterator":Ljava/util/Iterator;
    .end local v5    # "shortNumberMetadata":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    :catch_42
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v1, v2

    .line 116
    .end local v2    # "in":Ljava/io/ObjectInputStream;
    :goto_44
    :try_start_44
    sget-object v7, Lcom/google/i18n/phonenumbers/MetadataManager;->LOGGER:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_4f
    .catchall {:try_start_44 .. :try_end_4f} :catchall_58

    .line 118
    invoke-static {v1}, Lcom/google/i18n/phonenumbers/MetadataManager;->close(Ljava/io/InputStream;)V

    .line 104
    .end local v0    # "e":Ljava/io/IOException;
    :goto_52
    return-void

    .line 118
    .restart local v2    # "in":Ljava/io/ObjectInputStream;
    .restart local v4    # "metadata$iterator":Ljava/util/Iterator;
    .restart local v5    # "shortNumberMetadata":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    :cond_53
    invoke-static {v2}, Lcom/google/i18n/phonenumbers/MetadataManager;->close(Ljava/io/InputStream;)V

    move-object v1, v2

    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .local v1, "in":Ljava/io/ObjectInputStream;
    goto :goto_52

    .line 117
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .end local v4    # "metadata$iterator":Ljava/util/Iterator;
    .end local v5    # "shortNumberMetadata":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    :catchall_58
    move-exception v7

    .line 118
    :goto_59
    invoke-static {v1}, Lcom/google/i18n/phonenumbers/MetadataManager;->close(Ljava/io/InputStream;)V

    .line 117
    throw v7

    .restart local v2    # "in":Ljava/io/ObjectInputStream;
    :catchall_5d
    move-exception v7

    move-object v1, v2

    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    goto :goto_59

    .line 115
    .local v1, "in":Ljava/io/ObjectInputStream;
    :catch_60
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_44
.end method
