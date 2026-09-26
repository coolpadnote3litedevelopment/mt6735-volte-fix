.class public Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;
.super Ljava/lang/Object;
.source "PhonePrefixMap.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private phonePrefixMapStorage:Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

.field private final phoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const-class v0, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->LOGGER:Ljava/util/logging/Logger;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    .line 54
    return-void
.end method

.method private binarySearch(IIJ)I
    .registers 10
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "value"    # J

    .prologue
    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, "current":I
    :goto_1
    if-gt p1, p2, :cond_1f

    .line 195
    add-int v2, p1, p2

    ushr-int/lit8 v0, v2, 0x1

    .line 196
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phonePrefixMapStorage:Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    invoke-virtual {v2, v0}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->getPrefix(I)I

    move-result v1

    .line 197
    .local v1, "currentValue":I
    int-to-long v2, v1

    cmp-long v2, v2, p3

    if-nez v2, :cond_13

    .line 198
    return v0

    .line 199
    :cond_13
    int-to-long v2, v1

    cmp-long v2, v2, p3

    if-lez v2, :cond_1c

    .line 200
    add-int/lit8 v0, v0, -0x1

    .line 201
    move p2, v0

    goto :goto_1

    .line 203
    :cond_1c
    add-int/lit8 p1, v0, 0x1

    goto :goto_1

    .line 206
    .end local v1    # "currentValue":I
    :cond_1f
    return v0
.end method

.method private createDefaultMapStorage()Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;
    .registers 2

    .prologue
    .line 73
    new-instance v0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;-><init>()V

    return-object v0
.end method

.method private createFlyweightMapStorage()Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;
    .registers 2

    .prologue
    .line 77
    new-instance v0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;-><init>()V

    return-object v0
.end method

.method private static getSizeOfPhonePrefixMapStorage(Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;Ljava/util/SortedMap;)I
    .registers 5
    .param p0, "mapStorage"    # Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "phonePrefixMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->readFromSortedMap(Ljava/util/SortedMap;)V

    .line 63
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 64
    .local v0, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 65
    .local v1, "objectOutputStream":Ljava/io/ObjectOutputStream;
    invoke-virtual {p0, v1}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 66
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 67
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    .line 68
    .local v2, "sizeOfStorage":I
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 69
    return v2
.end method


# virtual methods
.method getPhonePrefixMapStorage()Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phonePrefixMapStorage:Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    return-object v0
.end method

.method getSmallerMapStorage(Ljava/util/SortedMap;)Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "phonePrefixMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->createFlyweightMapStorage()Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    move-result-object v2

    .line 89
    .local v2, "flyweightMapStorage":Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;
    invoke-static {v2, p1}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->getSizeOfPhonePrefixMapStorage(Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;Ljava/util/SortedMap;)I

    move-result v4

    .line 92
    .local v4, "sizeOfFlyweightMapStorage":I
    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->createDefaultMapStorage()Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    move-result-object v0

    .line 93
    .local v0, "defaultMapStorage":Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;
    invoke-static {v0, p1}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->getSizeOfPhonePrefixMapStorage(Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;Ljava/util/SortedMap;)I
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_15

    move-result v3

    .line 96
    .local v3, "sizeOfDefaultMapStorage":I
    if-ge v4, v3, :cond_13

    .end local v2    # "flyweightMapStorage":Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;
    :goto_12
    return-object v2

    .restart local v2    # "flyweightMapStorage":Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;
    :cond_13
    move-object v2, v0

    .line 97
    goto :goto_12

    .line 98
    .end local v0    # "defaultMapStorage":Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;
    .end local v2    # "flyweightMapStorage":Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;
    .end local v3    # "sizeOfDefaultMapStorage":I
    .end local v4    # "sizeOfFlyweightMapStorage":I
    :catch_15
    move-exception v1

    .line 99
    .local v1, "e":Ljava/io/IOException;
    sget-object v5, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->LOGGER:Ljava/util/logging/Logger;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 100
    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->createFlyweightMapStorage()Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    move-result-object v5

    return-object v5
.end method

.method lookup(J)Ljava/lang/String;
    .registers 16
    .param p1, "number"    # J

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 148
    iget-object v8, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phonePrefixMapStorage:Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    invoke-virtual {v8}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->getNumOfEntries()I

    move-result v3

    .line 149
    .local v3, "numOfEntries":I
    if-nez v3, :cond_b

    .line 150
    return-object v11

    .line 152
    :cond_b
    move-wide v4, p1

    .line 153
    .local v4, "phonePrefix":J
    add-int/lit8 v0, v3, -0x1

    .line 154
    .local v0, "currentIndex":I
    iget-object v8, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phonePrefixMapStorage:Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    invoke-virtual {v8}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->getPossibleLengths()Ljava/util/TreeSet;

    move-result-object v2

    .line 155
    .local v2, "currentSetOfLengths":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    :goto_14
    invoke-interface {v2}, Ljava/util/SortedSet;->size()I

    move-result v8

    if-lez v8, :cond_58

    .line 156
    invoke-interface {v2}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 157
    .local v7, "possibleLength":Ljava/lang/Integer;
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 158
    .local v6, "phonePrefixStr":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-le v8, v9, :cond_3a

    .line 159
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 161
    :cond_3a
    invoke-direct {p0, v10, v0, v4, v5}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->binarySearch(IIJ)I

    move-result v0

    .line 162
    if-gez v0, :cond_41

    .line 163
    return-object v11

    .line 165
    :cond_41
    iget-object v8, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phonePrefixMapStorage:Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    invoke-virtual {v8, v0}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->getPrefix(I)I

    move-result v1

    .line 166
    .local v1, "currentPrefix":I
    int-to-long v8, v1

    cmp-long v8, v4, v8

    if-nez v8, :cond_53

    .line 167
    iget-object v8, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phonePrefixMapStorage:Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    invoke-virtual {v8, v0}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->getDescription(I)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 169
    :cond_53
    invoke-interface {v2, v7}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v2

    goto :goto_14

    .line 171
    .end local v1    # "currentPrefix":I
    .end local v6    # "phonePrefixStr":Ljava/lang/String;
    .end local v7    # "possibleLength":Ljava/lang/Integer;
    :cond_58
    return-object v11
.end method

.method public lookup(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;
    .registers 6
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v3, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 183
    .local v0, "phonePrefix":J
    invoke-virtual {p0, v0, v1}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->lookup(J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .registers 4
    .param p1, "objectInput"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    .line 122
    .local v0, "useFlyweightMapStorage":Z
    if-eqz v0, :cond_13

    .line 123
    new-instance v1, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;

    invoke-direct {v1}, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;-><init>()V

    iput-object v1, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phonePrefixMapStorage:Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    .line 127
    :goto_d
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phonePrefixMapStorage:Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    invoke-virtual {v1, p1}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->readExternal(Ljava/io/ObjectInput;)V

    .line 119
    return-void

    .line 125
    :cond_13
    new-instance v1, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;

    invoke-direct {v1}, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;-><init>()V

    iput-object v1, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phonePrefixMapStorage:Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    goto :goto_d
.end method

.method public readPhonePrefixMap(Ljava/util/SortedMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "sortedPhonePrefixMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->getSmallerMapStorage(Ljava/util/SortedMap;)Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phonePrefixMapStorage:Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    .line 112
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phonePrefixMapStorage:Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .registers 3
    .param p1, "objectOutput"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phonePrefixMapStorage:Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    instance-of v0, v0, Lcom/google/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 135
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phonePrefixMapStorage:Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 133
    return-void
.end method
