.class Lcom/mediatek/ims/MMTelSSRequest;
.super Ljava/lang/Object;
.source "MMTelSSTransport.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "MMTelSSReq"

.field private static final MAX_POOL_SIZE:I = 0x4

.field static sNextSerial:I

.field private static sPool:Lcom/mediatek/ims/MMTelSSRequest;

.field private static sPoolSize:I

.field private static sPoolSync:Ljava/lang/Object;

.field static sSerialMonitor:Ljava/lang/Object;


# instance fields
.field mNext:Lcom/mediatek/ims/MMTelSSRequest;

.field mRequest:I

.field mResult:Landroid/os/Message;

.field mSerial:I

.field mp:Landroid/os/Parcel;

.field requestParm:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 107
    sput v1, Lcom/mediatek/ims/MMTelSSRequest;->sNextSerial:I

    .line 108
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/ims/MMTelSSRequest;->sSerialMonitor:Ljava/lang/Object;

    .line 109
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/ims/MMTelSSRequest;->sPoolSync:Ljava/lang/Object;

    .line 110
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/ims/MMTelSSRequest;->sPool:Lcom/mediatek/ims/MMTelSSRequest;

    .line 111
    sput v1, Lcom/mediatek/ims/MMTelSSRequest;->sPoolSize:I

    .line 103
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static obtain(ILandroid/os/Message;)Lcom/mediatek/ims/MMTelSSRequest;
    .registers 6
    .param p0, "request"    # I
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 133
    const/4 v0, 0x0

    .line 135
    .local v0, "rr":Lcom/mediatek/ims/MMTelSSRequest;
    sget-object v2, Lcom/mediatek/ims/MMTelSSRequest;->sPoolSync:Ljava/lang/Object;

    monitor-enter v2

    .line 136
    :try_start_4
    sget-object v1, Lcom/mediatek/ims/MMTelSSRequest;->sPool:Lcom/mediatek/ims/MMTelSSRequest;

    if-eqz v1, :cond_17

    .line 137
    sget-object v0, Lcom/mediatek/ims/MMTelSSRequest;->sPool:Lcom/mediatek/ims/MMTelSSRequest;

    .line 138
    .local v0, "rr":Lcom/mediatek/ims/MMTelSSRequest;
    iget-object v1, v0, Lcom/mediatek/ims/MMTelSSRequest;->mNext:Lcom/mediatek/ims/MMTelSSRequest;

    sput-object v1, Lcom/mediatek/ims/MMTelSSRequest;->sPool:Lcom/mediatek/ims/MMTelSSRequest;

    .line 139
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mediatek/ims/MMTelSSRequest;->mNext:Lcom/mediatek/ims/MMTelSSRequest;

    .line 140
    sget v1, Lcom/mediatek/ims/MMTelSSRequest;->sPoolSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/mediatek/ims/MMTelSSRequest;->sPoolSize:I
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_46

    .end local v0    # "rr":Lcom/mediatek/ims/MMTelSSRequest;
    :cond_17
    monitor-exit v2

    .line 144
    if-nez v0, :cond_1f

    .line 145
    new-instance v0, Lcom/mediatek/ims/MMTelSSRequest;

    invoke-direct {v0}, Lcom/mediatek/ims/MMTelSSRequest;-><init>()V

    .line 148
    :cond_1f
    sget-object v2, Lcom/mediatek/ims/MMTelSSRequest;->sSerialMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 149
    :try_start_22
    sget v1, Lcom/mediatek/ims/MMTelSSRequest;->sNextSerial:I

    add-int/lit8 v3, v1, 0x1

    sput v3, Lcom/mediatek/ims/MMTelSSRequest;->sNextSerial:I

    iput v1, v0, Lcom/mediatek/ims/MMTelSSRequest;->mSerial:I
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_49

    monitor-exit v2

    .line 151
    iput p0, v0, Lcom/mediatek/ims/MMTelSSRequest;->mRequest:I

    .line 152
    iput-object p1, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    .line 153
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    .line 155
    if-eqz p1, :cond_4c

    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v1

    if-nez v1, :cond_4c

    .line 156
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "Message target must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 135
    :catchall_46
    move-exception v1

    monitor-exit v2

    throw v1

    .line 148
    :catchall_49
    move-exception v1

    monitor-exit v2

    throw v1

    .line 161
    :cond_4c
    iget-object v1, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget-object v1, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    iget v2, v0, Lcom/mediatek/ims/MMTelSSRequest;->mSerial:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    return-object v0
.end method

.method static resetSerial()V
    .registers 2

    .prologue
    .line 188
    sget-object v0, Lcom/mediatek/ims/MMTelSSRequest;->sSerialMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 189
    const/4 v1, 0x0

    :try_start_4
    sput v1, Lcom/mediatek/ims/MMTelSSRequest;->sNextSerial:I
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_8

    monitor-exit v0

    .line 187
    return-void

    .line 188
    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method onError(ILjava/lang/Object;)V
    .registers 8
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 217
    invoke-static {p1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 219
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    const-string/jumbo v1, "MMTelSSReq"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mediatek/ims/MMTelSSRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "< "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 220
    iget v3, p0, Lcom/mediatek/ims/MMTelSSRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    .line 219
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 221
    const-string/jumbo v3, " error: "

    .line 219
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v1, p0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v1, :cond_46

    .line 224
    iget-object v1, p0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 225
    iget-object v1, p0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 228
    :cond_46
    iget-object v1, p0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    if-eqz v1, :cond_51

    .line 229
    iget-object v1, p0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 230
    iput-object v4, p0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    .line 213
    :cond_51
    return-void
.end method

.method release()V
    .registers 4

    .prologue
    .line 173
    sget-object v1, Lcom/mediatek/ims/MMTelSSRequest;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 174
    :try_start_3
    sget v0, Lcom/mediatek/ims/MMTelSSRequest;->sPoolSize:I

    const/4 v2, 0x4

    if-ge v0, v2, :cond_17

    .line 175
    sget-object v0, Lcom/mediatek/ims/MMTelSSRequest;->sPool:Lcom/mediatek/ims/MMTelSSRequest;

    iput-object v0, p0, Lcom/mediatek/ims/MMTelSSRequest;->mNext:Lcom/mediatek/ims/MMTelSSRequest;

    .line 176
    sput-object p0, Lcom/mediatek/ims/MMTelSSRequest;->sPool:Lcom/mediatek/ims/MMTelSSRequest;

    .line 177
    sget v0, Lcom/mediatek/ims/MMTelSSRequest;->sPoolSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/mediatek/ims/MMTelSSRequest;->sPoolSize:I

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    :cond_17
    monitor-exit v1

    .line 172
    return-void

    .line 173
    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method serialString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0x8

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 199
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget v4, p0, Lcom/mediatek/ims/MMTelSSRequest;->mSerial:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, "sn":Ljava/lang/String;
    const/16 v4, 0x5b

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 203
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "s":I
    :goto_17
    rsub-int/lit8 v4, v1, 0x4

    if-ge v0, v4, :cond_23

    .line 204
    const/16 v4, 0x30

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 207
    :cond_23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    const/16 v4, 0x5d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
