.class public Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;
.super Ljava/lang/Object;
.source "PrefixFileReader.java"


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private availablePhonePrefixMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;",
            ">;"
        }
    .end annotation
.end field

.field private mappingFileProvider:Lcom/google/i18n/phonenumbers/prefixmapper/MappingFileProvider;

.field private final phonePrefixDataDirectory:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const-class v0, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;->LOGGER:Ljava/util/logging/Logger;

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "phonePrefixDataDirectory"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/google/i18n/phonenumbers/prefixmapper/MappingFileProvider;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/prefixmapper/MappingFileProvider;-><init>()V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;->mappingFileProvider:Lcom/google/i18n/phonenumbers/prefixmapper/MappingFileProvider;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;->availablePhonePrefixMaps:Ljava/util/Map;

    .line 47
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;->phonePrefixDataDirectory:Ljava/lang/String;

    .line 48
    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;->loadMappingFileProvider()V

    .line 46
    return-void
.end method

.method private static close(Ljava/io/InputStream;)V
    .registers 5
    .param p0, "in"    # Ljava/io/InputStream;

    .prologue
    .line 94
    if-eqz p0, :cond_5

    .line 96
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 93
    :cond_5
    :goto_5
    return-void

    .line 97
    :catch_6
    move-exception v0

    .line 98
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_5
.end method

.method private getPhonePrefixDescriptions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;
    .registers 7
    .param p1, "prefixMapKey"    # I
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "script"    # Ljava/lang/String;
    .param p4, "region"    # Ljava/lang/String;

    .prologue
    .line 67
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;->mappingFileProvider:Lcom/google/i18n/phonenumbers/prefixmapper/MappingFileProvider;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/i18n/phonenumbers/prefixmapper/MappingFileProvider;->getFileName(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "fileName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_e

    .line 69
    const/4 v1, 0x0

    return-object v1

    .line 71
    :cond_e
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;->availablePhonePrefixMaps:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 72
    invoke-direct {p0, v0}, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;->loadPhonePrefixMapFromFile(Ljava/lang/String;)V

    .line 74
    :cond_19
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;->availablePhonePrefixMaps:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;

    return-object v1
.end method

.method private loadMappingFileProvider()V
    .registers 8

    .prologue
    .line 53
    const-class v4, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;->phonePrefixDataDirectory:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "config"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 54
    .local v3, "source":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 56
    .local v1, "in":Ljava/io/ObjectInputStream;
    :try_start_1d
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_22} :catch_2c
    .catchall {:try_start_1d .. :try_end_22} :catchall_3c

    .line 57
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .local v2, "in":Ljava/io/ObjectInputStream;
    :try_start_22
    iget-object v4, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;->mappingFileProvider:Lcom/google/i18n/phonenumbers/prefixmapper/MappingFileProvider;

    invoke-virtual {v4, v2}, Lcom/google/i18n/phonenumbers/prefixmapper/MappingFileProvider;->readExternal(Ljava/io/ObjectInput;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_27} :catch_44
    .catchall {:try_start_22 .. :try_end_27} :catchall_41

    .line 61
    invoke-static {v2}, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;->close(Ljava/io/InputStream;)V

    move-object v1, v2

    .line 51
    .end local v2    # "in":Ljava/io/ObjectInputStream;
    :goto_2b
    return-void

    .line 58
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    :catch_2c
    move-exception v0

    .line 59
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .local v0, "e":Ljava/io/IOException;
    :goto_2d
    :try_start_2d
    sget-object v4, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;->LOGGER:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_38
    .catchall {:try_start_2d .. :try_end_38} :catchall_3c

    .line 61
    invoke-static {v1}, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;->close(Ljava/io/InputStream;)V

    goto :goto_2b

    .line 60
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_3c
    move-exception v4

    .line 61
    :goto_3d
    invoke-static {v1}, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;->close(Ljava/io/InputStream;)V

    .line 60
    throw v4

    .restart local v2    # "in":Ljava/io/ObjectInputStream;
    :catchall_41
    move-exception v4

    move-object v1, v2

    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .local v1, "in":Ljava/io/ObjectInputStream;
    goto :goto_3d

    .line 58
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .restart local v2    # "in":Ljava/io/ObjectInputStream;
    :catch_44
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v1, v2

    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    goto :goto_2d
.end method

.method private loadPhonePrefixMapFromFile(Ljava/lang/String;)V
    .registers 10
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 79
    const-class v5, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;->phonePrefixDataDirectory:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 80
    .local v4, "source":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 82
    .local v1, "in":Ljava/io/ObjectInputStream;
    :try_start_1a
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1f} :catch_31
    .catchall {:try_start_1a .. :try_end_1f} :catchall_41

    .line 83
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .local v2, "in":Ljava/io/ObjectInputStream;
    :try_start_1f
    new-instance v3, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;

    invoke-direct {v3}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;-><init>()V

    .line 84
    .local v3, "map":Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;
    invoke-virtual {v3, v2}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->readExternal(Ljava/io/ObjectInput;)V

    .line 85
    iget-object v5, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;->availablePhonePrefixMaps:Ljava/util/Map;

    invoke-interface {v5, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_2c} :catch_49
    .catchall {:try_start_1f .. :try_end_2c} :catchall_46

    .line 89
    invoke-static {v2}, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;->close(Ljava/io/InputStream;)V

    move-object v1, v2

    .line 77
    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .end local v3    # "map":Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;
    :goto_30
    return-void

    .line 86
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    :catch_31
    move-exception v0

    .line 87
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .local v0, "e":Ljava/io/IOException;
    :goto_32
    :try_start_32
    sget-object v5, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;->LOGGER:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_41

    .line 89
    invoke-static {v1}, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;->close(Ljava/io/InputStream;)V

    goto :goto_30

    .line 88
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_41
    move-exception v5

    .line 89
    :goto_42
    invoke-static {v1}, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;->close(Ljava/io/InputStream;)V

    .line 88
    throw v5

    .restart local v2    # "in":Ljava/io/ObjectInputStream;
    :catchall_46
    move-exception v5

    move-object v1, v2

    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .local v1, "in":Ljava/io/ObjectInputStream;
    goto :goto_42

    .line 86
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .restart local v2    # "in":Ljava/io/ObjectInputStream;
    :catch_49
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v1, v2

    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    goto :goto_32
.end method

.method private mayFallBackToEnglish(Ljava/lang/String;)Z
    .registers 4
    .param p1, "lang"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 141
    const-string/jumbo v1, "zh"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string/jumbo v1, "ja"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    :cond_13
    :goto_13
    return v0

    :cond_14
    const-string/jumbo v1, "ko"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    const/4 v0, 0x1

    goto :goto_13
.end method


# virtual methods
.method public getDescriptionForNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "lang"    # Ljava/lang/String;
    .param p3, "script"    # Ljava/lang/String;
    .param p4, "region"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 119
    .local v0, "countryCallingCode":I
    const/4 v5, 0x1

    if-eq v0, v5, :cond_33

    .line 120
    move v3, v0

    .line 122
    .local v3, "phonePrefix":I
    :goto_8
    invoke-direct {p0, v3, p2, p3, p4}, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;->getPhonePrefixDescriptions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;

    move-result-object v4

    .line 123
    .local v4, "phonePrefixDescriptions":Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;
    if-eqz v4, :cond_3f

    .line 124
    invoke-virtual {v4, p1}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->lookup(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    .line 126
    :goto_12
    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_45

    :cond_1a
    invoke-direct {p0, p2}, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;->mayFallBackToEnglish(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 127
    const-string/jumbo v5, "en"

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    invoke-direct {p0, v3, v5, v6, v7}, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;->getPhonePrefixDescriptions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;

    move-result-object v1

    .line 128
    .local v1, "defaultMap":Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;
    if-nez v1, :cond_41

    .line 129
    const-string/jumbo v5, ""

    return-object v5

    .line 120
    .end local v1    # "defaultMap":Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;
    .end local v3    # "phonePrefix":I
    .end local v4    # "phonePrefixDescriptions":Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;
    :cond_33
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v6

    const-wide/32 v8, 0x989680

    div-long/2addr v6, v8

    long-to-int v5, v6

    add-int/lit16 v3, v5, 0x3e8

    .restart local v3    # "phonePrefix":I
    goto :goto_8

    .line 124
    .restart local v4    # "phonePrefixDescriptions":Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;
    :cond_3f
    const/4 v2, 0x0

    .local v2, "description":Ljava/lang/String;
    goto :goto_12

    .line 131
    .end local v2    # "description":Ljava/lang/String;
    .restart local v1    # "defaultMap":Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;
    :cond_41
    invoke-virtual {v1, p1}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->lookup(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    .line 133
    .end local v1    # "defaultMap":Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;
    :cond_45
    if-eqz v2, :cond_48

    :goto_47
    return-object v2

    :cond_48
    const-string/jumbo v2, ""

    goto :goto_47
.end method
