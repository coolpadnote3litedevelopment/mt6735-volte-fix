.class public Lcom/mediatek/ims/ImsAdapter$VaEvent;
.super Ljava/lang/Object;
.source "ImsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VaEvent"
.end annotation


# static fields
.field public static final DEFAULT_MAX_DATA_LENGTH:I = 0xa000


# instance fields
.field private data:[B

.field private data_len:I

.field private event_max_data_len:I

.field private mPhoneId:I

.field private read_offset:I

.field private request_id:I


# direct methods
.method public constructor <init>(II)V
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "rid"    # I

    .prologue
    .line 89
    const v0, 0xa000

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;-><init>(III)V

    .line 88
    return-void
.end method

.method public constructor <init>(III)V
    .registers 6
    .param p1, "phoneId"    # I
    .param p2, "rid"    # I
    .param p3, "length"    # I

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->mPhoneId:I

    .line 80
    const v0, 0xa000

    iput v0, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->event_max_data_len:I

    .line 100
    iput p1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->mPhoneId:I

    .line 101
    iput p2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->request_id:I

    .line 102
    iput p3, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->event_max_data_len:I

    .line 103
    iget v0, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->event_max_data_len:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    .line 104
    iput v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    .line 105
    iput v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I

    .line 99
    return-void
.end method


# virtual methods
.method public getByte()I
    .registers 4

    .prologue
    .line 225
    const/4 v0, 0x0

    .line 226
    .local v0, "ret":I
    monitor-enter p0

    .line 227
    :try_start_2
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 228
    iget v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_12

    monitor-exit p0

    .line 230
    return v0

    .line 226
    :catchall_12
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getBytes(I)[B
    .registers 6
    .param p1, "length"    # I

    .prologue
    .line 234
    iget v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    iget v3, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I

    sub-int/2addr v2, v3

    if-le p1, v2, :cond_9

    .line 235
    const/4 v2, 0x0

    return-object v2

    .line 238
    :cond_9
    new-array v1, p1, [B

    .line 240
    .local v1, "ret":[B
    monitor-enter p0

    .line 241
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    if-ge v0, p1, :cond_20

    .line 242
    :try_start_f
    iget-object v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v3, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I

    aget-byte v2, v2, v3

    aput-byte v2, v1, v0

    .line 243
    iget v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_22

    .line 241
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_20
    monitor-exit p0

    .line 245
    return-object v1

    .line 240
    :catchall_22
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getData()[B
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    return-object v0
.end method

.method public getDataLen()I
    .registers 2

    .prologue
    .line 194
    iget v0, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    return v0
.end method

.method public getInt()I
    .registers 5

    .prologue
    .line 206
    const/4 v0, 0x0

    .line 207
    .local v0, "ret":I
    monitor-enter p0

    .line 208
    :try_start_2
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I

    add-int/lit8 v2, v2, 0x3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    iget-object v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v3, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I

    add-int/lit8 v3, v3, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iget-object v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v3, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iget-object v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v3, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    .line 209
    iget v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I
    :try_end_38
    .catchall {:try_start_2 .. :try_end_38} :catchall_3a

    monitor-exit p0

    .line 211
    return v0

    .line 207
    :catchall_3a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getPhoneId()I
    .registers 2

    .prologue
    .line 202
    iget v0, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->mPhoneId:I

    return v0
.end method

.method public getRequestID()I
    .registers 2

    .prologue
    .line 198
    iget v0, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->request_id:I

    return v0
.end method

.method public getShort()I
    .registers 5

    .prologue
    .line 215
    const/4 v0, 0x0

    .line 216
    .local v0, "ret":I
    monitor-enter p0

    .line 217
    :try_start_2
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v3, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    .line 218
    iget v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I
    :try_end_1e
    .catchall {:try_start_2 .. :try_end_1e} :catchall_20

    monitor-exit p0

    .line 220
    return v0

    .line 216
    :catchall_20
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getString(I)Ljava/lang/String;
    .registers 6
    .param p1, "len"    # I

    .prologue
    .line 250
    new-array v0, p1, [B

    .line 252
    .local v0, "buf":[B
    monitor-enter p0

    .line 253
    :try_start_3
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 254
    iget v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_1b

    monitor-exit p0

    .line 257
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 252
    :catchall_1b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public putByte(I)I
    .registers 5
    .param p1, "value"    # I

    .prologue
    .line 138
    iget v0, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    iget v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->event_max_data_len:I

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_a

    .line 139
    const/4 v0, -0x1

    return v0

    .line 142
    :cond_a
    monitor-enter p0

    .line 143
    :try_start_b
    iget-object v0, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 144
    iget v0, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_1d

    monitor-exit p0

    .line 147
    const/4 v0, 0x0

    return v0

    .line 142
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public putBytes([B)I
    .registers 7
    .param p1, "value"    # [B

    .prologue
    const/4 v4, 0x0

    .line 175
    array-length v0, p1

    .line 177
    .local v0, "len":I
    iget v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->event_max_data_len:I

    if-le v0, v1, :cond_8

    .line 178
    const/4 v1, -0x1

    return v1

    .line 181
    :cond_8
    monitor-enter p0

    .line 182
    :try_start_9
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 183
    iget v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_18

    monitor-exit p0

    .line 186
    return v4

    .line 181
    :catchall_18
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public putInt(I)I
    .registers 6
    .param p1, "value"    # I

    .prologue
    .line 109
    iget v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    iget v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->event_max_data_len:I

    add-int/lit8 v2, v2, -0x4

    if-le v1, v2, :cond_a

    .line 110
    const/4 v1, -0x1

    return v1

    .line 113
    :cond_a
    monitor-enter p0

    .line 114
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    const/4 v1, 0x4

    if-ge v0, v1, :cond_25

    .line 115
    :try_start_f
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    mul-int/lit8 v3, v0, 0x8

    shr-int v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 116
    iget v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_28

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_25
    monitor-exit p0

    .line 119
    const/4 v1, 0x0

    return v1

    .line 113
    :catchall_28
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public putShort(I)I
    .registers 6
    .param p1, "value"    # I

    .prologue
    .line 123
    iget v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    iget v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->event_max_data_len:I

    add-int/lit8 v2, v2, -0x2

    if-le v1, v2, :cond_a

    .line 124
    const/4 v1, -0x1

    return v1

    .line 127
    :cond_a
    monitor-enter p0

    .line 128
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    const/4 v1, 0x2

    if-ge v0, v1, :cond_25

    .line 129
    :try_start_f
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    mul-int/lit8 v3, v0, 0x8

    shr-int v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 130
    iget v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_28

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_25
    monitor-exit p0

    .line 134
    const/4 v1, 0x0

    return v1

    .line 127
    :catchall_28
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public putString(Ljava/lang/String;I)I
    .registers 11
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "len"    # I

    .prologue
    const/4 v7, 0x0

    .line 151
    iget v3, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    iget v4, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->event_max_data_len:I

    sub-int/2addr v4, p2

    if-le v3, v4, :cond_a

    .line 152
    const/4 v3, -0x1

    return v3

    .line 155
    :cond_a
    monitor-enter p0

    .line 156
    :try_start_b
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 157
    .local v2, "s":[B
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge p2, v3, :cond_24

    .line 158
    iget-object v3, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v4, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v4, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 159
    iget v3, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    add-int/2addr v3, p2

    iput v3, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I
    :try_end_22
    .catchall {:try_start_b .. :try_end_22} :catchall_52

    :cond_22
    monitor-exit p0

    .line 171
    return v7

    .line 161
    :cond_24
    :try_start_24
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v1, p2, v3

    .line 162
    .local v1, "remain":I
    iget-object v3, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v4, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v2, v6, v3, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 163
    iget v3, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    .line 164
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_40
    if-ge v0, v1, :cond_22

    .line 165
    iget-object v3, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v4, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    const/4 v5, 0x0

    aput-byte v5, v3, v4

    .line 166
    iget v3, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I
    :try_end_4f
    .catchall {:try_start_24 .. :try_end_4f} :catchall_52

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    .line 155
    .end local v0    # "i":I
    .end local v1    # "remain":I
    .end local v2    # "s":[B
    :catchall_52
    move-exception v3

    monitor-exit p0

    throw v3
.end method
