.class Lcom/mediatek/ims/RILRequest;
.super Ljava/lang/Object;
.source "ImsRILAdapter.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "IMSRILRequest"

.field private static final MAX_POOL_SIZE:I = 0x4

.field static sNextSerial:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sPool:Lcom/mediatek/ims/RILRequest;

.field private static sPoolSize:I

.field private static sPoolSync:Ljava/lang/Object;

.field static sRandom:Ljava/util/Random;


# instance fields
.field private mContext:Landroid/content/Context;

.field mNext:Lcom/mediatek/ims/RILRequest;

.field mParcel:Landroid/os/Parcel;

.field mRequest:I

.field mResult:Landroid/os/Message;

.field mSerial:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 95
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/mediatek/ims/RILRequest;->sRandom:Ljava/util/Random;

    .line 96
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/mediatek/ims/RILRequest;->sNextSerial:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/ims/RILRequest;->sPoolSync:Ljava/lang/Object;

    .line 98
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/ims/RILRequest;->sPool:Lcom/mediatek/ims/RILRequest;

    .line 99
    sput v1, Lcom/mediatek/ims/RILRequest;->sPoolSize:I

    .line 91
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static obtain(ILandroid/os/Message;)Lcom/mediatek/ims/RILRequest;
    .registers 5
    .param p0, "request"    # I
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 118
    const/4 v0, 0x0

    .line 120
    .local v0, "rr":Lcom/mediatek/ims/RILRequest;
    sget-object v2, Lcom/mediatek/ims/RILRequest;->sPoolSync:Ljava/lang/Object;

    monitor-enter v2

    .line 121
    :try_start_4
    sget-object v1, Lcom/mediatek/ims/RILRequest;->sPool:Lcom/mediatek/ims/RILRequest;

    if-eqz v1, :cond_17

    .line 122
    sget-object v0, Lcom/mediatek/ims/RILRequest;->sPool:Lcom/mediatek/ims/RILRequest;

    .line 123
    .local v0, "rr":Lcom/mediatek/ims/RILRequest;
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mNext:Lcom/mediatek/ims/RILRequest;

    sput-object v1, Lcom/mediatek/ims/RILRequest;->sPool:Lcom/mediatek/ims/RILRequest;

    .line 124
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mediatek/ims/RILRequest;->mNext:Lcom/mediatek/ims/RILRequest;

    .line 125
    sget v1, Lcom/mediatek/ims/RILRequest;->sPoolSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/mediatek/ims/RILRequest;->sPoolSize:I
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_42

    .end local v0    # "rr":Lcom/mediatek/ims/RILRequest;
    :cond_17
    monitor-exit v2

    .line 129
    if-nez v0, :cond_1f

    .line 130
    new-instance v0, Lcom/mediatek/ims/RILRequest;

    invoke-direct {v0}, Lcom/mediatek/ims/RILRequest;-><init>()V

    .line 133
    :cond_1f
    sget-object v1, Lcom/mediatek/ims/RILRequest;->sNextSerial:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    iput v1, v0, Lcom/mediatek/ims/RILRequest;->mSerial:I

    .line 135
    iput p0, v0, Lcom/mediatek/ims/RILRequest;->mRequest:I

    .line 136
    iput-object p1, v0, Lcom/mediatek/ims/RILRequest;->mResult:Landroid/os/Message;

    .line 137
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    .line 139
    if-eqz p1, :cond_45

    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v1

    if-nez v1, :cond_45

    .line 140
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "Message target must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 120
    :catchall_42
    move-exception v1

    monitor-exit v2

    throw v1

    .line 144
    :cond_45
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    iget v2, v0, Lcom/mediatek/ims/RILRequest;->mSerial:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    return-object v0
.end method

.method static resetSerial()V
    .registers 2

    .prologue
    .line 173
    sget-object v0, Lcom/mediatek/ims/RILRequest;->sNextSerial:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v1, Lcom/mediatek/ims/RILRequest;->sRandom:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 170
    return-void
.end method


# virtual methods
.method onError(ILjava/lang/Object;)V
    .registers 8
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 201
    invoke-static {p1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 203
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    const-string/jumbo v1, "IMSRILRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mediatek/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "< "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 204
    iget v3, p0, Lcom/mediatek/ims/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    .line 203
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 205
    const-string/jumbo v3, " error: "

    .line 203
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 205
    const-string/jumbo v3, " ret="

    .line 203
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 205
    iget v3, p0, Lcom/mediatek/ims/RILRequest;->mRequest:I

    invoke-static {v3, p2}, Lcom/mediatek/ims/ImsRILAdapter;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 203
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v1, p0, Lcom/mediatek/ims/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v1, :cond_57

    .line 208
    iget-object v1, p0, Lcom/mediatek/ims/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 209
    iget-object v1, p0, Lcom/mediatek/ims/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 212
    :cond_57
    iget-object v1, p0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz v1, :cond_62

    .line 213
    iget-object v1, p0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 214
    iput-object v4, p0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    .line 198
    :cond_62
    return-void
.end method

.method release()V
    .registers 4

    .prologue
    .line 156
    sget-object v1, Lcom/mediatek/ims/RILRequest;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 157
    :try_start_3
    sget v0, Lcom/mediatek/ims/RILRequest;->sPoolSize:I

    const/4 v2, 0x4

    if-ge v0, v2, :cond_17

    .line 158
    sget-object v0, Lcom/mediatek/ims/RILRequest;->sPool:Lcom/mediatek/ims/RILRequest;

    iput-object v0, p0, Lcom/mediatek/ims/RILRequest;->mNext:Lcom/mediatek/ims/RILRequest;

    .line 159
    sput-object p0, Lcom/mediatek/ims/RILRequest;->sPool:Lcom/mediatek/ims/RILRequest;

    .line 160
    sget v0, Lcom/mediatek/ims/RILRequest;->sPoolSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/mediatek/ims/RILRequest;->sPoolSize:I

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/RILRequest;->mResult:Landroid/os/Message;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    :cond_17
    monitor-exit v1

    .line 155
    return-void

    .line 156
    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method serialString()Ljava/lang/String;
    .registers 11

    .prologue
    .line 179
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v6, 0x8

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 182
    .local v4, "sb":Ljava/lang/StringBuilder;
    iget v6, p0, Lcom/mediatek/ims/RILRequest;->mSerial:I

    int-to-long v6, v6

    const-wide/32 v8, -0x80000000

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x2710

    rem-long v0, v6, v8

    .line 184
    .local v0, "adjustedSerial":J
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    .line 187
    .local v5, "sn":Ljava/lang/String;
    const/16 v6, 0x5b

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 188
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "s":I
    :goto_20
    rsub-int/lit8 v6, v3, 0x4

    if-ge v2, v6, :cond_2c

    .line 189
    const/16 v6, 0x30

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 188
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 192
    :cond_2c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const/16 v6, 0x5d

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
