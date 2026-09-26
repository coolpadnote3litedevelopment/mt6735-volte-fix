.class public Lcom/mediatek/ims/ImsAdapter$VaSocketIO;
.super Ljava/lang/Thread;
.source "ImsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VaSocketIO"
.end annotation


# instance fields
.field VaSocketIOThreadLock:Ljava/lang/Object;

.field private buf:[B

.field private mDin:Ljava/io/DataInputStream;

.field private mId:I

.field private mOut:Ljava/io/OutputStream;

.field private mPhoneId:I

.field private mSocket:Landroid/net/LocalSocket;

.field private mSocketName:Ljava/lang/String;

.field private mTyp:I

.field final synthetic this$0:Lcom/mediatek/ims/ImsAdapter;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/ImsAdapter;Ljava/lang/String;)V
    .registers 5
    .param p1, "this$0"    # Lcom/mediatek/ims/ImsAdapter;
    .param p2, "socket_name"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 275
    iput-object p1, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->this$0:Lcom/mediatek/ims/ImsAdapter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 264
    iput v1, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mTyp:I

    .line 265
    iput v1, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mId:I

    .line 266
    iput-object v0, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mSocketName:Ljava/lang/String;

    .line 267
    iput-object v0, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mSocket:Landroid/net/LocalSocket;

    .line 268
    iput-object v0, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mOut:Ljava/io/OutputStream;

    .line 269
    iput-object v0, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mDin:Ljava/io/DataInputStream;

    .line 271
    iput v1, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mPhoneId:I

    .line 273
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->VaSocketIOThreadLock:Ljava/lang/Object;

    .line 276
    iput-object p2, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mSocketName:Ljava/lang/String;

    .line 278
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->buf:[B

    .line 279
    const-string/jumbo v0, "@M_[ImsAdapter]"

    const-string/jumbo v1, "VaSocketIO(): Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return-void
.end method

.method private dumpEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .registers 5
    .param p1, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .prologue
    .line 481
    const-string/jumbo v0, "@M_[ImsAdapter]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dumpEvent: phone_id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 482
    const-string/jumbo v2, ",request_id:"

    .line 481
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 482
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getRequestID()I

    move-result v2

    invoke-static {v2}, Lcom/mediatek/ims/ImsAdapter;->requestIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 481
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 483
    const-string/jumbo v2, ",data_len:"

    .line 481
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 483
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getDataLen()I

    move-result v2

    .line 481
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 484
    const-string/jumbo v2, ",event:"

    .line 481
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 484
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getData()[B

    move-result-object v2

    .line 481
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    return-void
.end method

.method private readEvent()Lcom/mediatek/ims/ImsAdapter$VaEvent;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 461
    const-string/jumbo v5, "@M_[ImsAdapter]"

    const-string/jumbo v6, "readEvent Enter"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    invoke-direct {p0}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->readInt()I

    move-result v4

    .line 468
    .local v4, "request_id":I
    invoke-direct {p0}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->readInt()I

    move-result v1

    .line 469
    .local v1, "data_len":I
    new-array v0, v1, [B

    .line 470
    .local v0, "buf":[B
    const/4 v5, 0x0

    invoke-direct {p0, v0, v5, v1}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->readFully([BII)V

    .line 472
    invoke-static {}, Lcom/mediatek/ims/ImsAdapter$Util;->getDefaultVoltePhoneId()I

    move-result v3

    .line 473
    .local v3, "phoneId":I
    new-instance v2, Lcom/mediatek/ims/ImsAdapter$VaEvent;

    invoke-direct {v2, v3, v4}, Lcom/mediatek/ims/ImsAdapter$VaEvent;-><init>(II)V

    .line 474
    .local v2, "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    invoke-virtual {v2, v0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putBytes([B)I

    .line 476
    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->dumpEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    .line 477
    return-object v2
.end method

.method private readFully([BII)V
    .registers 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 457
    iget-object v0, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mDin:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 456
    return-void
.end method

.method private readInt()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 452
    iget-object v0, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mDin:Ljava/io/DataInputStream;

    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->buf:[B

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 453
    iget-object v0, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->buf:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x18

    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->buf:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->buf:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->buf:[B

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private writeBytes([BI)V
    .registers 5
    .param p1, "value"    # [B
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 407
    iget-object v0, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mOut:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/io/OutputStream;->write([BII)V

    .line 406
    return-void
.end method

.method private writeInt(I)V
    .registers 5
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 411
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_12

    .line 412
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mOut:Ljava/io/OutputStream;

    mul-int/lit8 v2, v0, 0x8

    shr-int v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 411
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 410
    :cond_12
    return-void
.end method


# virtual methods
.method public connectSocket()Z
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 345
    const-string/jumbo v3, "@M_[ImsAdapter]"

    const-string/jumbo v4, "connectSocket() Enter"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v3, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mSocket:Landroid/net/LocalSocket;

    if-eqz v3, :cond_1e

    .line 348
    const-string/jumbo v3, "@M_[ImsAdapter]"

    const-string/jumbo v4, "connectSocket() Reuse current Socket"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-static {}, Lcom/mediatek/ims/ImsAdapter$Util;->getDefaultVoltePhoneId()I

    move-result v3

    iput v3, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mPhoneId:I

    .line 353
    return v6

    .line 357
    :cond_1e
    :try_start_1e
    new-instance v3, Landroid/net/LocalSocket;

    invoke-direct {v3}, Landroid/net/LocalSocket;-><init>()V

    iput-object v3, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mSocket:Landroid/net/LocalSocket;

    .line 358
    new-instance v0, Landroid/net/LocalSocketAddress;

    .line 359
    iget-object v3, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mSocketName:Ljava/lang/String;

    .line 360
    sget-object v4, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    .line 358
    invoke-direct {v0, v3, v4}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 362
    .local v0, "addr":Landroid/net/LocalSocketAddress;
    iget-object v3, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 364
    new-instance v3, Ljava/io/BufferedOutputStream;

    iget-object v4, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    const/16 v5, 0x1000

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v3, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mOut:Ljava/io/OutputStream;

    .line 365
    new-instance v3, Ljava/io/DataInputStream;

    iget-object v4, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v3, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mDin:Ljava/io/DataInputStream;

    .line 367
    const/4 v2, 0x0

    .line 368
    .local v2, "sendBufferSize":I
    iget-object v3, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getSendBufferSize()I

    move-result v2

    .line 369
    iget-object v3, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mSocket:Landroid/net/LocalSocket;

    const/16 v4, 0x200

    invoke-virtual {v3, v4}, Landroid/net/LocalSocket;->setSendBufferSize(I)V

    .line 370
    iget-object v3, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getSendBufferSize()I

    move-result v2

    .line 372
    invoke-static {}, Lcom/mediatek/ims/ImsAdapter$Util;->getDefaultVoltePhoneId()I

    move-result v3

    iput v3, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mPhoneId:I

    .line 373
    const-string/jumbo v3, "@M_[ImsAdapter]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "connectSocket() update socket phone Id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mPhoneId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_85} :catch_86

    .line 380
    return v6

    .line 375
    .end local v0    # "addr":Landroid/net/LocalSocketAddress;
    .end local v2    # "sendBufferSize":I
    :catch_86
    move-exception v1

    .line 376
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 377
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->disconnectSocket()V

    .line 378
    const/4 v3, 0x0

    return v3
.end method

.method public disconnectSocket()V
    .registers 7

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 384
    const-string/jumbo v1, "@M_[ImsAdapter]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "disconnectSocket() Enter, mOut="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",mDin="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mDin:Ljava/io/DataInputStream;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :try_start_2b
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mOut:Ljava/io/OutputStream;

    if-eqz v1, :cond_34

    .line 387
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 389
    :cond_34
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mDin:Ljava/io/DataInputStream;

    if-eqz v1, :cond_3d

    .line 390
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mDin:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 392
    :cond_3d
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mSocket:Landroid/net/LocalSocket;

    if-eqz v1, :cond_46

    .line 393
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_46} :catch_58
    .catchall {:try_start_2b .. :try_end_46} :catchall_6e

    .line 398
    :cond_46
    iput-object v4, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mSocket:Landroid/net/LocalSocket;

    .line 399
    iput-object v4, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mOut:Ljava/io/OutputStream;

    .line 400
    iput-object v4, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mDin:Ljava/io/DataInputStream;

    .line 401
    iput v5, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mPhoneId:I

    .line 402
    const-string/jumbo v1, "@M_[ImsAdapter]"

    const-string/jumbo v2, "disconnectSocket() reset socket phone Id"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :goto_57
    return-void

    .line 395
    :catch_58
    move-exception v0

    .line 396
    .local v0, "e":Ljava/io/IOException;
    :try_start_59
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_6e

    .line 398
    iput-object v4, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mSocket:Landroid/net/LocalSocket;

    .line 399
    iput-object v4, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mOut:Ljava/io/OutputStream;

    .line 400
    iput-object v4, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mDin:Ljava/io/DataInputStream;

    .line 401
    iput v5, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mPhoneId:I

    .line 402
    const-string/jumbo v1, "@M_[ImsAdapter]"

    const-string/jumbo v2, "disconnectSocket() reset socket phone Id"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    .line 397
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_6e
    move-exception v1

    .line 398
    iput-object v4, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mSocket:Landroid/net/LocalSocket;

    .line 399
    iput-object v4, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mOut:Ljava/io/OutputStream;

    .line 400
    iput-object v4, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mDin:Ljava/io/DataInputStream;

    .line 401
    iput v5, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mPhoneId:I

    .line 402
    const-string/jumbo v2, "@M_[ImsAdapter]"

    const-string/jumbo v3, "disconnectSocket() reset socket phone Id"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    throw v1
.end method

.method public run()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 283
    const-string/jumbo v5, "@M_[ImsAdapter]"

    const-string/jumbo v6, "VaSocketIO(): Run"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_a
    :goto_a
    iget-object v5, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mSocket:Landroid/net/LocalSocket;

    if-eqz v5, :cond_76

    .line 288
    :try_start_e
    iget-object v5, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mDin:Ljava/io/DataInputStream;

    if-eqz v5, :cond_a

    .line 290
    invoke-direct {p0}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->readEvent()Lcom/mediatek/ims/ImsAdapter$VaEvent;

    move-result-object v2

    .line 293
    .local v2, "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    iget-object v5, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->this$0:Lcom/mediatek/ims/ImsAdapter;

    invoke-static {v5}, Lcom/mediatek/ims/ImsAdapter;->-get0(Lcom/mediatek/ims/ImsAdapter;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1d
    .catch Ljava/io/InterruptedIOException; {:try_start_e .. :try_end_1d} :catch_35
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1d} :catch_57

    .line 294
    if-eqz v2, :cond_33

    :try_start_1f
    invoke-static {}, Lcom/mediatek/ims/ImsAdapter;->-get2()Z

    move-result v5

    if-eqz v5, :cond_33

    .line 295
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 296
    .local v4, "msg":Landroid/os/Message;
    iput-object v2, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 297
    invoke-static {}, Lcom/mediatek/ims/ImsAdapter;->-get1()Lcom/mediatek/ims/ImsEventDispatcher;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/mediatek/ims/ImsEventDispatcher;->sendMessage(Landroid/os/Message;)Z
    :try_end_33
    .catchall {:try_start_1f .. :try_end_33} :catchall_54

    .end local v4    # "msg":Landroid/os/Message;
    :cond_33
    :try_start_33
    monitor-exit v6
    :try_end_34
    .catch Ljava/io/InterruptedIOException; {:try_start_33 .. :try_end_34} :catch_35
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_34} :catch_57

    goto :goto_a

    .line 301
    .end local v2    # "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    :catch_35
    move-exception v0

    .line 302
    .local v0, "e":Ljava/io/InterruptedIOException;
    const-string/jumbo v5, "@M_[ImsAdapter]"

    const-string/jumbo v6, "VaSocketIO(): InterruptedIOException"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-virtual {v0}, Ljava/io/InterruptedIOException;->printStackTrace()V

    .line 305
    const-string/jumbo v5, "@M_[ImsAdapter]"

    const-string/jumbo v6, "MAL socket disconnect"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->disconnectSocket()V

    .line 307
    iget-object v5, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->this$0:Lcom/mediatek/ims/ImsAdapter;

    invoke-virtual {v5, v10}, Lcom/mediatek/ims/ImsAdapter;->disableImsAdapter(Z)V

    goto :goto_a

    .line 293
    .end local v0    # "e":Ljava/io/InterruptedIOException;
    .restart local v2    # "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    :catchall_54
    move-exception v5

    :try_start_55
    monitor-exit v6

    throw v5
    :try_end_57
    .catch Ljava/io/InterruptedIOException; {:try_start_55 .. :try_end_57} :catch_35
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_57} :catch_57

    .line 308
    .end local v2    # "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    :catch_57
    move-exception v1

    .line 309
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "@M_[ImsAdapter]"

    const-string/jumbo v6, "VaSocketIO(): Exception"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 312
    const-string/jumbo v5, "@M_[ImsAdapter]"

    const-string/jumbo v6, "MAL socket disconnect"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->disconnectSocket()V

    .line 314
    iget-object v5, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->this$0:Lcom/mediatek/ims/ImsAdapter;

    invoke-virtual {v5, v10}, Lcom/mediatek/ims/ImsAdapter;->disableImsAdapter(Z)V

    goto :goto_a

    .line 321
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_76
    iget-object v6, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->VaSocketIOThreadLock:Ljava/lang/Object;

    monitor-enter v6

    .line 323
    :try_start_79
    const-string/jumbo v5, "@M_[ImsAdapter]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "VaSocketIO(): thread \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 324
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    .line 323
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 325
    const-string/jumbo v8, "\" enter wait state"

    .line 323
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v5, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->VaSocketIOThreadLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    .line 329
    const-string/jumbo v5, "@M_[ImsAdapter]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "VaSocketIO(): thread \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 330
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    .line 329
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 331
    const-string/jumbo v8, "\" leave wait state"

    .line 329
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d0
    .catch Ljava/lang/InterruptedException; {:try_start_79 .. :try_end_d0} :catch_d3
    .catchall {:try_start_79 .. :try_end_d0} :catchall_10d

    :goto_d0
    monitor-exit v6

    goto/16 :goto_a

    .line 333
    :catch_d3
    move-exception v3

    .line 334
    .local v3, "ie":Ljava/lang/InterruptedException;
    :try_start_d4
    const-string/jumbo v5, "@M_[ImsAdapter]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "VaSocketIO(): waiting thread \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 335
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    .line 334
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 336
    const-string/jumbo v8, "\" interrupted ("

    .line 334
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 337
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v8

    .line 334
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 337
    const-string/jumbo v8, ")"

    .line 334
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10c
    .catchall {:try_start_d4 .. :try_end_10c} :catchall_10d

    goto :goto_d0

    .line 321
    .end local v3    # "ie":Ljava/lang/InterruptedException;
    :catchall_10d
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public writeEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)I
    .registers 8
    .param p1, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .prologue
    const/4 v5, -0x1

    .line 417
    const-string/jumbo v2, "@M_[ImsAdapter]"

    const-string/jumbo v3, "writeEvent Enter"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const/4 v1, -0x1

    .line 420
    .local v1, "ret":I
    :try_start_b
    monitor-enter p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_c} :catch_91

    .line 421
    :try_start_c
    iget-object v2, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mOut:Ljava/io/OutputStream;

    if-eqz v2, :cond_84

    .line 422
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getPhoneId()I

    move-result v2

    if-eq v2, v5, :cond_1e

    .line 423
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getPhoneId()I

    move-result v2

    iget v3, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mPhoneId:I

    if-eq v2, v3, :cond_61

    .line 424
    :cond_1e
    const-string/jumbo v2, "@M_[ImsAdapter]"

    .line 425
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeEvent event phoneId mismatch, event skipped. (event requestId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 426
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getRequestID()I

    move-result v4

    .line 425
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 427
    const-string/jumbo v4, ", phoneId="

    .line 425
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 427
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getPhoneId()I

    move-result v4

    .line 425
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 428
    const-string/jumbo v4, ", socket phoneId="

    .line 425
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 428
    iget v4, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mPhoneId:I

    .line 425
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 429
    const-string/jumbo v4, ")"

    .line 425
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 424
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catchall {:try_start_c .. :try_end_5f} :catchall_8e

    :goto_5f
    :try_start_5f
    monitor-exit p0
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_60} :catch_91

    .line 448
    return v1

    .line 431
    :cond_61
    :try_start_61
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->dumpEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    .line 433
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getRequestID()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->writeInt(I)V

    .line 434
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getDataLen()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->writeInt(I)V

    .line 435
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getData()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getDataLen()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->writeBytes([BI)V

    .line 436
    iget-object v2, p0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 437
    const/4 v1, 0x0

    goto :goto_5f

    .line 440
    :cond_84
    const-string/jumbo v2, "@M_[ImsAdapter]"

    const-string/jumbo v3, "mOut is null, socket is not setup"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8d
    .catchall {:try_start_61 .. :try_end_8d} :catchall_8e

    goto :goto_5f

    .line 420
    :catchall_8e
    move-exception v2

    :try_start_8f
    monitor-exit p0

    throw v2
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_91} :catch_91

    .line 443
    :catch_91
    move-exception v0

    .line 444
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 445
    return v5
.end method
