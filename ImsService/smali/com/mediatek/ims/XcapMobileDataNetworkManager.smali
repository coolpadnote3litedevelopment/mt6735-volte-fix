.class public Lcom/mediatek/ims/XcapMobileDataNetworkManager;
.super Ljava/lang/Object;
.source "XcapMobileDataNetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/XcapMobileDataNetworkManager$NetworkHandler;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "XcapMobileDataNetworkManager"

.field private static final NETWORK_ACQUIRE_TIMEOUT_MILLIS:I = 0x2ee0

.field private static final NETWORK_ACQUIRE_TIMER_AFTER_RELEASE:I = 0x1f40

.field private static final NETWORK_KEEP_ALIVE_TIMER:I = 0x2710

.field private static final NETWORK_REQUEST_TIMEOUT_MILLIS:I = 0x2710

.field private static final RELEASE_NETWORK:I


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mHandlerReleaseNW:Landroid/os/Handler;

.field private mNetwork:Landroid/net/Network;

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mPreviousReleaseTime:J

.field private mXcapMobileDataNetworkRequestCount:I


# direct methods
.method static synthetic -get0(Lcom/mediatek/ims/XcapMobileDataNetworkManager;)Landroid/net/Network;
    .registers 2

    iget-object v0, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->mNetwork:Landroid/net/Network;

    return-object v0
.end method

.method static synthetic -get1(Lcom/mediatek/ims/XcapMobileDataNetworkManager;)Landroid/net/ConnectivityManager$NetworkCallback;
    .registers 2

    iget-object v0, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    return-object v0
.end method

.method static synthetic -set0(Lcom/mediatek/ims/XcapMobileDataNetworkManager;Landroid/net/Network;)Landroid/net/Network;
    .registers 2

    iput-object p1, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->mNetwork:Landroid/net/Network;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/mediatek/ims/XcapMobileDataNetworkManager;Landroid/net/ConnectivityManager$NetworkCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/net/ConnectivityManager$NetworkCallback;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->releaseRequest(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/mediatek/ims/XcapMobileDataNetworkManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->resetLocked()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v2, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->mPreviousReleaseTime:J

    .line 60
    iput-object v2, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->mHandlerReleaseNW:Landroid/os/Handler;

    .line 83
    iput-object p1, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->mContext:Landroid/content/Context;

    .line 84
    iput-object v2, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 85
    iput-object v2, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->mNetwork:Landroid/net/Network;

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->mXcapMobileDataNetworkRequestCount:I

    .line 87
    iput-object v2, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 89
    new-instance v0, Lcom/mediatek/ims/XcapMobileDataNetworkManager$NetworkHandler;

    invoke-direct {v0, p0, p2}, Lcom/mediatek/ims/XcapMobileDataNetworkManager$NetworkHandler;-><init>(Lcom/mediatek/ims/XcapMobileDataNetworkManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->mHandlerReleaseNW:Landroid/os/Handler;

    .line 82
    return-void
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .registers 3

    .prologue
    .line 376
    iget-object v0, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_11

    .line 377
    iget-object v0, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->mContext:Landroid/content/Context;

    .line 378
    const-string/jumbo v1, "connectivity"

    .line 377
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 380
    :cond_11
    iget-object v0, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private inAirplaneMode()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 384
    iget-object v1, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 385
    const-string/jumbo v2, "airplane_mode_on"

    .line 384
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method private isNotPermitAcquireXcapNetwork(I)Z
    .registers 4
    .param p1, "phoneId"    # I

    .prologue
    .line 103
    invoke-static {p1}, Lcom/mediatek/ims/MMTelSSUtils;->isOp08IccCard(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 104
    const-string/jumbo v0, "XcapMobileDataNetworkManager"

    const-string/jumbo v1, "isNotPermitAcquireXcapNetwork: true"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v0, 0x1

    return v0

    .line 108
    :cond_11
    const-string/jumbo v0, "XcapMobileDataNetworkManager"

    const-string/jumbo v1, "isNotPermitAcquireXcapNetwork = false"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method private isPermitAcquireXcapNetwork(I)Z
    .registers 4
    .param p1, "phoneId"    # I

    .prologue
    .line 115
    invoke-static {p1}, Lcom/mediatek/ims/MMTelSSUtils;->isOp01IccCard(I)Z

    move-result v0

    if-nez v0, :cond_30

    .line 116
    invoke-static {p1}, Lcom/mediatek/ims/MMTelSSUtils;->isOp03IccCard(I)Z

    move-result v0

    .line 115
    if-nez v0, :cond_30

    .line 117
    invoke-static {p1}, Lcom/mediatek/ims/MMTelSSUtils;->isOp05IccCard(I)Z

    move-result v0

    .line 115
    if-nez v0, :cond_30

    .line 118
    invoke-static {p1}, Lcom/mediatek/ims/MMTelSSUtils;->isOp06IccCard(I)Z

    move-result v0

    .line 115
    if-nez v0, :cond_30

    .line 119
    invoke-static {p1}, Lcom/mediatek/ims/MMTelSSUtils;->isOp07IccCard(I)Z

    move-result v0

    .line 115
    if-nez v0, :cond_30

    .line 120
    invoke-static {p1}, Lcom/mediatek/ims/MMTelSSUtils;->isOp15IccCard(I)Z

    move-result v0

    .line 115
    if-nez v0, :cond_30

    .line 121
    invoke-static {p1}, Lcom/mediatek/ims/MMTelSSUtils;->isOp18IccCard(I)Z

    move-result v0

    .line 115
    if-nez v0, :cond_30

    .line 122
    invoke-static {p1}, Lcom/mediatek/ims/MMTelSSUtils;->isOp19IccCard(I)Z

    move-result v0

    .line 115
    if-eqz v0, :cond_3b

    .line 123
    :cond_30
    const-string/jumbo v0, "XcapMobileDataNetworkManager"

    const-string/jumbo v1, "isPermitAcquireXcapNetwork: true"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v0, 0x1

    return v0

    .line 126
    :cond_3b
    const-string/jumbo v0, "XcapMobileDataNetworkManager"

    const-string/jumbo v1, "isPermitAcquireXcapNetwork: false"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method private newRequest(I)V
    .registers 9
    .param p1, "phoneId"    # I

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 249
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v3

    .line 250
    .local v3, "subId":I
    new-instance v4, Lcom/mediatek/ims/XcapMobileDataNetworkManager$1;

    invoke-direct {v4, p0}, Lcom/mediatek/ims/XcapMobileDataNetworkManager$1;-><init>(Lcom/mediatek/ims/XcapMobileDataNetworkManager;)V

    iput-object v4, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 287
    const-string/jumbo v4, "XcapMobileDataNetworkManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "newRequest, subId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    new-instance v4, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v4}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 289
    const/4 v5, 0x0

    .line 288
    invoke-virtual {v4, v5}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v4

    .line 290
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 288
    invoke-virtual {v4, v5}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 296
    .local v1, "networkBuilder":Landroid/net/NetworkRequest$Builder;
    const/16 v4, 0x9

    invoke-virtual {v1, v4}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 297
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v2

    .line 299
    .local v2, "networkRequest":Landroid/net/NetworkRequest;
    iget-object v4, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    const/16 v5, 0x2710

    .line 298
    invoke-virtual {v0, v2, v4, v5}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;I)V

    .line 247
    return-void
.end method

.method private releaseRequest(Landroid/net/ConnectivityManager$NetworkCallback;)V
    .registers 8
    .param p1, "callback"    # Landroid/net/ConnectivityManager$NetworkCallback;

    .prologue
    .line 308
    if-eqz p1, :cond_2f

    .line 309
    invoke-direct {p0}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 310
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 312
    iget-object v1, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->mNetwork:Landroid/net/Network;

    if-eqz v1, :cond_2f

    .line 313
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->mPreviousReleaseTime:J

    .line 314
    const-string/jumbo v1, "XcapMobileDataNetworkManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Release time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->mPreviousReleaseTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    .end local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    :cond_2f
    return-void
.end method

.method private resetLocked()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 323
    iput-object v0, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 324
    iput-object v0, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->mNetwork:Landroid/net/Network;

    .line 325
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->mXcapMobileDataNetworkRequestCount:I

    .line 322
    return-void
.end method


# virtual methods
.method public acquireNetwork(I)Landroid/net/Network;
    .registers 14
    .param p1, "phoneId"    # I

    .prologue
    .line 136
    const-string/jumbo v3, "XcapMobileDataNetworkManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "acquireNetwork(): phoneId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-direct {p0}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->inAirplaneMode()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 139
    const/4 v3, 0x0

    return-object v3

    .line 142
    :cond_22
    invoke-direct {p0, p1}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->isNotPermitAcquireXcapNetwork(I)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 143
    const-string/jumbo v3, "XcapMobileDataNetworkManager"

    const-string/jumbo v8, "XcapMobileDataNetworkManager: acquireNetwork not supported"

    invoke-static {v3, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v3, 0x0

    return-object v3

    .line 146
    :cond_33
    const-string/jumbo v3, "XcapMobileDataNetworkManager"

    const-string/jumbo v8, "XcapMobileDataNetworkManager: acquireNetwork start"

    invoke-static {v3, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    monitor-enter p0

    .line 148
    :try_start_3d
    iget v3, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->mXcapMobileDataNetworkRequestCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->mXcapMobileDataNetworkRequestCount:I

    .line 150
    iget-object v3, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->mHandlerReleaseNW:Landroid/os/Handler;

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 152
    iget-object v3, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->mNetwork:Landroid/net/Network;

    if-eqz v3, :cond_5a

    .line 154
    const-string/jumbo v3, "XcapMobileDataNetworkManager"

    const-string/jumbo v8, "XcapMobileDataNetworkManager: already available"

    invoke-static {v3, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v3, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->mNetwork:Landroid/net/Network;
    :try_end_58
    .catchall {:try_start_3d .. :try_end_58} :catchall_c7

    monitor-exit p0

    return-object v3

    .line 157
    :cond_5a
    :try_start_5a
    const-string/jumbo v3, "XcapMobileDataNetworkManager"

    const-string/jumbo v8, "XcapMobileDataNetworkManager: start new network request"

    invoke-static {v3, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->mPreviousReleaseTime:J

    sub-long/2addr v8, v10

    .line 161
    const-wide/16 v10, 0x1f40

    .line 160
    cmp-long v3, v8, v10

    if-lez v3, :cond_b0

    .line 162
    const-wide/16 v0, 0x0

    .line 165
    .local v0, "additinalTimeOut":J
    :goto_72
    const-string/jumbo v3, "XcapMobileDataNetworkManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "additinalTimeOut: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8c
    .catchall {:try_start_5a .. :try_end_8c} :catchall_c7

    .line 168
    :try_start_8c
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8f
    .catch Ljava/lang/InterruptedException; {:try_start_8c .. :try_end_8f} :catch_bc
    .catchall {:try_start_8c .. :try_end_8f} :catchall_c7

    .line 173
    :goto_8f
    :try_start_8f
    invoke-direct {p0, p1}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->newRequest(I)V

    .line 174
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_95
    .catchall {:try_start_8f .. :try_end_95} :catchall_c7

    move-result-wide v8

    .line 175
    const-wide/16 v10, 0x2ee0

    .line 174
    add-long/2addr v8, v10

    add-long v4, v8, v0

    .line 176
    .local v4, "shouldEnd":J
    const-wide/16 v8, 0x2ee0

    add-long v6, v8, v0

    .line 177
    .local v6, "waitTime":J
    :goto_9f
    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_dc

    .line 179
    :try_start_a5
    invoke-virtual {p0, v6, v7}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->wait(J)V
    :try_end_a8
    .catch Ljava/lang/InterruptedException; {:try_start_a5 .. :try_end_a8} :catch_ca
    .catchall {:try_start_a5 .. :try_end_a8} :catchall_c7

    .line 184
    :goto_a8
    :try_start_a8
    iget-object v3, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->mNetwork:Landroid/net/Network;

    if-eqz v3, :cond_d5

    .line 186
    iget-object v3, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->mNetwork:Landroid/net/Network;
    :try_end_ae
    .catchall {:try_start_a8 .. :try_end_ae} :catchall_c7

    monitor-exit p0

    return-object v3

    .line 163
    .end local v0    # "additinalTimeOut":J
    .end local v4    # "shouldEnd":J
    .end local v6    # "waitTime":J
    :cond_b0
    :try_start_b0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->mPreviousReleaseTime:J

    sub-long/2addr v8, v10

    .line 162
    const-wide/16 v10, 0x1f40

    sub-long v0, v10, v8

    .restart local v0    # "additinalTimeOut":J
    goto :goto_72

    .line 169
    :catch_bc
    move-exception v2

    .line 170
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v3, "XcapMobileDataNetworkManager"

    const-string/jumbo v8, "additional time out exception, so skip it."

    invoke-static {v3, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c6
    .catchall {:try_start_b0 .. :try_end_c6} :catchall_c7

    goto :goto_8f

    .line 147
    .end local v0    # "additinalTimeOut":J
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catchall_c7
    move-exception v3

    monitor-exit p0

    throw v3

    .line 180
    .restart local v0    # "additinalTimeOut":J
    .restart local v4    # "shouldEnd":J
    .restart local v6    # "waitTime":J
    :catch_ca
    move-exception v2

    .line 181
    .restart local v2    # "e":Ljava/lang/InterruptedException;
    :try_start_cb
    const-string/jumbo v3, "XcapMobileDataNetworkManager"

    const-string/jumbo v8, "XcapMobileDataNetworkManager: acquire network wait interrupted"

    invoke-static {v3, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a8

    .line 189
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_d5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v6, v4, v8

    goto :goto_9f

    .line 192
    :cond_dc
    const-string/jumbo v3, "XcapMobileDataNetworkManager"

    const-string/jumbo v8, "XcapMobileDataNetworkManager: timed out"

    invoke-static {v3, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v3, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-direct {p0, v3}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->releaseRequest(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 194
    invoke-direct {p0}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->resetLocked()V
    :try_end_ed
    .catchall {:try_start_cb .. :try_end_ed} :catchall_c7

    monitor-exit p0

    .line 197
    const/4 v3, 0x0

    return-object v3
.end method

.method public getNetwork()Landroid/net/Network;
    .registers 2

    .prologue
    .line 97
    monitor-enter p0

    .line 98
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->mNetwork:Landroid/net/Network;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 97
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public releaseNetwork()V
    .registers 5

    .prologue
    .line 224
    monitor-enter p0

    .line 225
    :try_start_1
    iget v1, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->mXcapMobileDataNetworkRequestCount:I

    if-lez v1, :cond_41

    .line 226
    iget v1, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->mXcapMobileDataNetworkRequestCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->mXcapMobileDataNetworkRequestCount:I

    .line 227
    const-string/jumbo v1, "XcapMobileDataNetworkManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "XcapMobileDataNetworkManager: release, count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 228
    iget v3, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->mXcapMobileDataNetworkRequestCount:I

    .line 227
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget v1, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->mXcapMobileDataNetworkRequestCount:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_41

    .line 230
    iget-object v1, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->mNetwork:Landroid/net/Network;

    if-nez v1, :cond_43

    .line 231
    const-string/jumbo v1, "XcapMobileDataNetworkManager"

    const-string/jumbo v2, "No dedicate network here, release directly."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v1, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-direct {p0, v1}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->releaseRequest(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 233
    invoke-direct {p0}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->resetLocked()V
    :try_end_41
    .catchall {:try_start_1 .. :try_end_41} :catchall_5b

    :cond_41
    :goto_41
    monitor-exit p0

    .line 223
    return-void

    .line 235
    :cond_43
    :try_start_43
    const-string/jumbo v1, "XcapMobileDataNetworkManager"

    const-string/jumbo v2, "Delay release network."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v1, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->mHandlerReleaseNW:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 237
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->mHandlerReleaseNW:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_5a
    .catchall {:try_start_43 .. :try_end_5a} :catchall_5b

    goto :goto_41

    .line 224
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_5b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public useAcquiredNetwork(Landroid/net/Network;Ljava/lang/String;I)V
    .registers 13
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "xcapRootUri"    # Ljava/lang/String;
    .param p3, "phoneId"    # I

    .prologue
    const/4 v5, 0x0

    .line 335
    const/4 v4, 0x0

    .line 336
    .local v4, "xcapSrvHostName":Ljava/lang/String;
    if-eqz p2, :cond_19

    .line 337
    const-string/jumbo v6, "http://"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6f

    .line 338
    const-string/jumbo v6, "/"

    invoke-virtual {p2, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x7

    invoke-virtual {p2, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 346
    .end local v4    # "xcapSrvHostName":Ljava/lang/String;
    :cond_19
    :goto_19
    if-eqz v4, :cond_29

    .line 347
    const-string/jumbo v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 348
    .local v3, "portStartIndex":I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_29

    .line 349
    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 353
    .end local v3    # "portStartIndex":I
    :cond_29
    const-string/jumbo v6, "XcapMobileDataNetworkManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "useAcquiredNetwork(): xcapRootUri = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 354
    const-string/jumbo v8, ", xcapSrvHostName="

    .line 353
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    if-eqz v4, :cond_9f

    .line 357
    const/16 v2, 0x28

    .line 362
    .local v2, "networkType":I
    :try_start_52
    invoke-virtual {p1, v4}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v6

    array-length v7, v6

    :goto_57
    if-ge v5, v7, :cond_9f

    aget-object v0, v6, v5

    .line 363
    .local v0, "address":Ljava/net/InetAddress;
    invoke-direct {p0}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v8

    invoke-virtual {v8, v2, v0}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v8

    if-nez v8, :cond_92

    .line 365
    const-string/jumbo v5, "XcapMobileDataNetworkManager"

    const-string/jumbo v6, "useAcquiredNetwork(): requestRouteToHostAddress() failed"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catch Ljava/net/UnknownHostException; {:try_start_52 .. :try_end_6e} :catch_95

    .line 366
    return-void

    .line 339
    .end local v0    # "address":Ljava/net/InetAddress;
    .end local v2    # "networkType":I
    .restart local v4    # "xcapSrvHostName":Ljava/lang/String;
    :cond_6f
    const-string/jumbo v6, "https://"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_86

    .line 340
    const-string/jumbo v6, "/"

    invoke-virtual {p2, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0x8

    invoke-virtual {p2, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .local v4, "xcapSrvHostName":Ljava/lang/String;
    goto :goto_19

    .line 342
    .local v4, "xcapSrvHostName":Ljava/lang/String;
    :cond_86
    const-string/jumbo v6, "/"

    invoke-virtual {p2, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .local v4, "xcapSrvHostName":Ljava/lang/String;
    goto :goto_19

    .line 362
    .end local v4    # "xcapSrvHostName":Ljava/lang/String;
    .restart local v0    # "address":Ljava/net/InetAddress;
    .restart local v2    # "networkType":I
    :cond_92
    add-int/lit8 v5, v5, 0x1

    goto :goto_57

    .line 369
    .end local v0    # "address":Ljava/net/InetAddress;
    :catch_95
    move-exception v1

    .line 370
    .local v1, "ex":Ljava/net/UnknownHostException;
    const-string/jumbo v5, "XcapMobileDataNetworkManager"

    const-string/jumbo v6, "useAcquiredNetwork(): UnknownHostException"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    .end local v1    # "ex":Ljava/net/UnknownHostException;
    .end local v2    # "networkType":I
    :cond_9f
    return-void
.end method
