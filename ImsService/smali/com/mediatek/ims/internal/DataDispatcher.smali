.class public Lcom/mediatek/ims/internal/DataDispatcher;
.super Ljava/lang/Object;
.source "DataDispatcher.java"

# interfaces
.implements Lcom/mediatek/ims/ImsEventDispatcher$VaEventDispatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/DataDispatcher$DataDispatcherNetworkRequest;,
        Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;,
        Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;,
        Lcom/mediatek/ims/internal/DataDispatcher$1;,
        Lcom/mediatek/ims/internal/DataDispatcher$2;,
        Lcom/mediatek/ims/internal/DataDispatcher$3;,
        Lcom/mediatek/ims/internal/DataDispatcher$4;,
        Lcom/mediatek/ims/internal/DataDispatcher$5;
    }
.end annotation


# static fields
.field private static final APN_CAP_LIST:[I

.field private static final DUMP_TRANSACTION:Z = true

.field private static final EMERGENCY_INTERFACE_NAME:Ljava/lang/String; = "ccmni5"

.field private static final FAILCAUSE_NONE:I = 0x0

.field private static final FAILCAUSE_UNKNOWN:I = 0x10000

.field private static final IMS_INTERFACE_NAME:Ljava/lang/String; = "ccmni4"

.field private static final MAX_NETWORK_ACTIVE_TIMEOUT_MS:I = 0x2710

.field private static final MAX_NETWORK_DEACTIVE_TIMEOUT_MS:I = 0x4e20

.field private static final MSG_ON_NOTIFY_ACTIVE_DATA_TIMEOUT:I = 0x1c84

.field private static final MSG_ON_NOTIFY_DATA_CONNECTED:I = 0x1b58

.field private static final MSG_ON_NOTIFY_DATA_DISCONNECTED:I = 0x1bbc

.field private static final MSG_ON_NOTIFY_DEACTIVE_DATA_TIMEOUT:I = 0x1c20

.field private static final TAG:Ljava/lang/String; = "GSM"

.field private static final WAITING_FRAMEWORK_STATUS_SYNC:I = 0x1388

.field private static mInstance:Lcom/mediatek/ims/internal/DataDispatcher;


# instance fields
.field private failCauses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAPNStatuses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDataDispatcherUtil:Lcom/mediatek/ims/internal/DataDispatcherUtil;

.field mDataNetworkRequests:[Lcom/mediatek/ims/internal/DataDispatcher$DataDispatcherNetworkRequest;

.field mEImsNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Ljava/lang/Thread;

.field mImsNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mIsEnable:Z

.field private mSimStatus:[Z

.field private mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

.field private mTransactions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/mediatek/ims/internal/DataDispatcher;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mAPNStatuses:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get1(Lcom/mediatek/ims/internal/DataDispatcher;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/mediatek/ims/internal/DataDispatcher;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mIsEnable:Z

    return v0
.end method

.method static synthetic -get3(Lcom/mediatek/ims/internal/DataDispatcher;)[Z
    .registers 2

    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mSimStatus:[Z

    return-object v0
.end method

.method static synthetic -set0(Lcom/mediatek/ims/internal/DataDispatcher;Landroid/os/Handler;)Landroid/os/Handler;
    .registers 2

    iput-object p1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/mediatek/ims/internal/DataDispatcher;)Landroid/net/ConnectivityManager;
    .registers 2

    invoke-direct {p0}, Lcom/mediatek/ims/internal/DataDispatcher;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/mediatek/ims/internal/DataDispatcher;I)Z
    .registers 3
    .param p1, "phoneId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DataDispatcher;->isImsApnExists(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Ljava/lang/String;)V
    .registers 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/mediatek/ims/internal/DataDispatcher;Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;II)V
    .registers 4
    .param p1, "param"    # Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    .param p2, "failCause"    # I
    .param p3, "delayMs"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/ims/internal/DataDispatcher;->rejectDefaultBearerDataConnActivation(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;II)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/mediatek/ims/internal/DataDispatcher;II)V
    .registers 3
    .param p1, "transactionId"    # I
    .param p2, "failCause"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/internal/DataDispatcher;->rejectPcscfDiscovery(II)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/mediatek/ims/internal/DataDispatcher;Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;ILjava/lang/String;)V
    .registers 4
    .param p1, "param"    # Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    .param p2, "cause"    # I
    .param p3, "IntlName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/ims/internal/DataDispatcher;->responseDefaultBearerDataConnDeactivated(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/mediatek/ims/internal/DataDispatcher;Ljava/lang/String;)Z
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DataDispatcher;->isReasonAllowedToDetach(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/mediatek/ims/internal/DataDispatcher;Ljava/lang/String;I)I
    .registers 4
    .param p1, "requestApnType"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/internal/DataDispatcher;->requestNwRequest(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/mediatek/ims/internal/DataDispatcher;I)Ljava/lang/String;
    .registers 3
    .param p1, "cap"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DataDispatcher;->getApnTypeByCap(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Lcom/mediatek/ims/internal/DataDispatcher;Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .registers 2
    .param p1, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DataDispatcher;->handleDefaultBearerActivationRequest(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/mediatek/ims/internal/DataDispatcher;Landroid/net/Network;Ljava/lang/String;)V
    .registers 3
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/internal/DataDispatcher;->handleDefaultBearerActivationResponse(Landroid/net/Network;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/mediatek/ims/internal/DataDispatcher;Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .registers 2
    .param p1, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DataDispatcher;->handleDefaultBearerDeactivationRequest(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/mediatek/ims/internal/DataDispatcher;Landroid/telephony/PreciseDataConnectionState;)V
    .registers 2
    .param p1, "state"    # Landroid/telephony/PreciseDataConnectionState;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DataDispatcher;->handleDefaultBearerDeactivationResonse(Landroid/telephony/PreciseDataConnectionState;)V

    return-void
.end method

.method static synthetic -wrap9(Ljava/lang/String;)V
    .registers 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 69
    const/4 v0, 0x4

    .line 70
    const/16 v1, 0xa

    .line 68
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/internal/DataDispatcher;->APN_CAP_LIST:[I

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/ims/ImsAdapter$VaSocketIO;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "IO"    # Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    .prologue
    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    .line 79
    new-instance v1, Lcom/mediatek/ims/internal/DataDispatcher$1;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/internal/DataDispatcher$1;-><init>(Lcom/mediatek/ims/internal/DataDispatcher;)V

    iput-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->failCauses:Ljava/util/HashMap;

    .line 159
    new-instance v1, Lcom/mediatek/ims/internal/DataDispatcher$2;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/internal/DataDispatcher$2;-><init>(Lcom/mediatek/ims/internal/DataDispatcher;)V

    iput-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 296
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mAPNStatuses:Ljava/util/HashMap;

    .line 299
    new-instance v1, Lcom/mediatek/ims/internal/DataDispatcher$3;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/internal/DataDispatcher$3;-><init>(Lcom/mediatek/ims/internal/DataDispatcher;)V

    iput-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mHandlerThread:Ljava/lang/Thread;

    .line 768
    new-instance v1, Lcom/mediatek/ims/internal/DataDispatcher$4;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/internal/DataDispatcher$4;-><init>(Lcom/mediatek/ims/internal/DataDispatcher;)V

    iput-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mImsNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 787
    new-instance v1, Lcom/mediatek/ims/internal/DataDispatcher$5;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/internal/DataDispatcher$5;-><init>(Lcom/mediatek/ims/internal/DataDispatcher;)V

    iput-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mEImsNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 369
    iput-object p1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mContext:Landroid/content/Context;

    .line 370
    iput-object p2, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    .line 371
    new-instance v1, Lcom/mediatek/ims/internal/DataDispatcherUtil;

    invoke-direct {v1}, Lcom/mediatek/ims/internal/DataDispatcherUtil;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mDataDispatcherUtil:Lcom/mediatek/ims/internal/DataDispatcherUtil;

    .line 372
    sput-object p0, Lcom/mediatek/ims/internal/DataDispatcher;->mInstance:Lcom/mediatek/ims/internal/DataDispatcher;

    .line 374
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mContext:Landroid/content/Context;

    .line 375
    const-string/jumbo v2, "phone"

    .line 374
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 376
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mSimStatus:[Z

    .line 377
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mHandlerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 378
    invoke-direct {p0}, Lcom/mediatek/ims/internal/DataDispatcher;->createNetworkRequest()V

    .line 368
    return-void
.end method

.method private createNetworkRequest()V
    .registers 9

    .prologue
    .line 655
    sget-object v4, Lcom/mediatek/ims/internal/DataDispatcher;->APN_CAP_LIST:[I

    array-length v1, v4

    .line 656
    .local v1, "count":I
    new-array v4, v1, [Lcom/mediatek/ims/internal/DataDispatcher$DataDispatcherNetworkRequest;

    iput-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mDataNetworkRequests:[Lcom/mediatek/ims/internal/DataDispatcher$DataDispatcherNetworkRequest;

    .line 658
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_46

    .line 659
    new-instance v3, Landroid/net/NetworkCapabilities;

    invoke-direct {v3}, Landroid/net/NetworkCapabilities;-><init>()V

    .line 660
    .local v3, "netCap":Landroid/net/NetworkCapabilities;
    sget-object v4, Lcom/mediatek/ims/internal/DataDispatcher;->APN_CAP_LIST:[I

    aget v0, v4, v2

    .line 661
    .local v0, "cap":I
    invoke-virtual {v3, v0}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 662
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 663
    iget-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mDataNetworkRequests:[Lcom/mediatek/ims/internal/DataDispatcher$DataDispatcherNetworkRequest;

    new-instance v5, Lcom/mediatek/ims/internal/DataDispatcher$DataDispatcherNetworkRequest;

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher;->getNwCBbyCap(I)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v6

    .line 664
    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher;->getApnTypeByCap(I)Ljava/lang/String;

    move-result-object v7

    .line 663
    invoke-direct {v5, v6, v7}, Lcom/mediatek/ims/internal/DataDispatcher$DataDispatcherNetworkRequest;-><init>(Landroid/net/ConnectivityManager$NetworkCallback;Ljava/lang/String;)V

    aput-object v5, v4, v2

    .line 665
    iget-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mDataNetworkRequests:[Lcom/mediatek/ims/internal/DataDispatcher$DataDispatcherNetworkRequest;

    aget-object v4, v4, v2

    iput-object v3, v4, Lcom/mediatek/ims/internal/DataDispatcher$DataDispatcherNetworkRequest;->nwCap:Landroid/net/NetworkCapabilities;

    .line 668
    iget-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mAPNStatuses:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher;->getApnTypeByCap(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;

    .line 669
    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher;->getApnTypeByCap(I)Ljava/lang/String;

    move-result-object v7

    .line 668
    invoke-direct {v6, p0, v7}, Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;-><init>(Lcom/mediatek/ims/internal/DataDispatcher;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 654
    .end local v0    # "cap":I
    .end local v3    # "netCap":Landroid/net/NetworkCapabilities;
    :cond_46
    return-void
.end method

.method private delayForSeconds(I)V
    .registers 6
    .param p1, "seconds"    # I

    .prologue
    .line 1025
    int-to-long v2, p1

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_4} :catch_5

    .line 1023
    :goto_4
    return-void

    .line 1026
    :catch_5
    move-exception v0

    .line 1027
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4
.end method

.method private getApnTypeByCap(I)Ljava/lang/String;
    .registers 5
    .param p1, "cap"    # I

    .prologue
    .line 882
    const-string/jumbo v0, ""

    .line 883
    .local v0, "apnType":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_2e

    .line 891
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "error: apnType=\"\" for invalid cap ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 893
    :goto_24
    return-object v0

    .line 885
    :sswitch_25
    const-string/jumbo v0, "ims"

    goto :goto_24

    .line 888
    :sswitch_29
    const-string/jumbo v0, "emergency"

    goto :goto_24

    .line 883
    nop

    :sswitch_data_2e
    .sparse-switch
        0x4 -> :sswitch_25
        0xa -> :sswitch_29
    .end sparse-switch
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .registers 3

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public static getInstance()Lcom/mediatek/ims/internal/DataDispatcher;
    .registers 1

    .prologue
    .line 382
    sget-object v0, Lcom/mediatek/ims/internal/DataDispatcher;->mInstance:Lcom/mediatek/ims/internal/DataDispatcher;

    return-object v0
.end method

.method private getNetworkRequetsPos(Ljava/lang/String;I)I
    .registers 6
    .param p1, "requestApnType"    # Ljava/lang/String;
    .param p2, "endPos"    # I

    .prologue
    .line 897
    const/4 v1, -0x1

    .line 898
    .local v1, "pos":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, p2, :cond_11

    .line 899
    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mDataNetworkRequests:[Lcom/mediatek/ims/internal/DataDispatcher$DataDispatcherNetworkRequest;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/mediatek/ims/internal/DataDispatcher$DataDispatcherNetworkRequest;->apnType:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 900
    move v1, v0

    .line 904
    :cond_11
    return v1

    .line 898
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private getNwCBbyCap(I)Landroid/net/ConnectivityManager$NetworkCallback;
    .registers 5
    .param p1, "cap"    # I

    .prologue
    .line 867
    const/4 v0, 0x0

    .line 868
    .local v0, "nwCb":Landroid/net/ConnectivityManager$NetworkCallback;
    sparse-switch p1, :sswitch_data_2a

    .line 876
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "error: nwCB=null for invalid cap ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 878
    .end local v0    # "nwCb":Landroid/net/ConnectivityManager$NetworkCallback;
    :goto_22
    return-object v0

    .line 870
    .restart local v0    # "nwCb":Landroid/net/ConnectivityManager$NetworkCallback;
    :sswitch_23
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mImsNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .local v0, "nwCb":Landroid/net/ConnectivityManager$NetworkCallback;
    goto :goto_22

    .line 873
    .local v0, "nwCb":Landroid/net/ConnectivityManager$NetworkCallback;
    :sswitch_26
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mEImsNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .local v0, "nwCb":Landroid/net/ConnectivityManager$NetworkCallback;
    goto :goto_22

    .line 868
    nop

    :sswitch_data_2a
    .sparse-switch
        0x4 -> :sswitch_23
        0xa -> :sswitch_26
    .end sparse-switch
.end method

.method private handleDefaultBearerActivationRequest(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .registers 14
    .param p1, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .prologue
    const/high16 v11, 0x10000

    const/16 v9, 0x1c84

    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 433
    const-string/jumbo v5, "ims"

    .line 434
    .local v5, "apnType":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getPhoneId()I

    move-result v4

    .line 436
    .local v4, "phoneId":I
    const-string/jumbo v1, "handleDefaultBearerActivationRequest"

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 438
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mDataDispatcherUtil:Lcom/mediatek/ims/internal/DataDispatcherUtil;

    invoke-virtual {v1, p1}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->extractDefaultPdnActInd(Lcom/mediatek/ims/ImsAdapter$VaEvent;)Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnActivationInd;

    move-result-object v6

    .line 441
    .local v6, "actInd":Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnActivationInd;
    new-instance v0, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;

    iget v2, v6, Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnActivationInd;->transactionId:I

    .line 442
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getRequestID()I

    move-result v3

    move-object v1, p0

    .line 441
    invoke-direct/range {v0 .. v5}, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;-><init>(Lcom/mediatek/ims/internal/DataDispatcher;IIILjava/lang/String;)V

    .line 444
    .local v0, "param":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    iget-boolean v1, v6, Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnActivationInd;->isEmergency:Z

    if-eqz v1, :cond_30

    .line 445
    const-string/jumbo v5, "emergency"

    .line 446
    iput-boolean v8, v0, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->isEmergency:Z

    .line 447
    iput-object v5, v0, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->apnName:Ljava/lang/String;

    .line 450
    :cond_30
    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher;->putTransaction(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;)V

    .line 451
    const-string/jumbo v1, "ims"

    if-ne v5, v1, :cond_6c

    .line 452
    invoke-static {v4}, Lcom/mediatek/ims/compat/ImsCompat;->getSubIdUsingPhoneId(I)I

    move-result v7

    .line 453
    .local v7, "subId":I
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mSimStatus:[Z

    aget-boolean v1, v1, v4

    if-nez v1, :cond_44

    if-lez v7, :cond_76

    .line 454
    :cond_44
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mSimStatus:[Z

    aput-boolean v8, v1, v4

    .line 455
    invoke-direct {p0, v4}, Lcom/mediatek/ims/internal/DataDispatcher;->isImsApnExists(I)Z

    move-result v1

    if-nez v1, :cond_5a

    .line 456
    const-string/jumbo v1, "no IMS apn Exists!!"

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 457
    const/16 v1, 0x1f4

    invoke-direct {p0, v0, v11, v1}, Lcom/mediatek/ims/internal/DataDispatcher;->rejectDefaultBearerDataConnActivation(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;II)V

    .line 458
    return-void

    .line 460
    :cond_5a
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 461
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v9, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 463
    const-wide/16 v8, 0x2710

    .line 461
    invoke-virtual {v1, v2, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 470
    .end local v7    # "subId":I
    :cond_6c
    invoke-direct {p0, v5, v4}, Lcom/mediatek/ims/internal/DataDispatcher;->requestNwRequest(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_75

    .line 471
    invoke-direct {p0, v0, v11, v10}, Lcom/mediatek/ims/internal/DataDispatcher;->rejectDefaultBearerDataConnActivation(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;II)V

    .line 432
    :cond_75
    return-void

    .line 465
    .restart local v7    # "subId":I
    :cond_76
    const-string/jumbo v1, "sim is not ready, pending IMS PDN activation."

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 466
    return-void
.end method

.method private handleDefaultBearerActivationResponse(Landroid/net/Network;Ljava/lang/String;)V
    .registers 11
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 806
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleDefaultBearerActivationResponse for APN: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 809
    const v4, 0xdbbab

    .line 808
    invoke-virtual {p0, v4, p2}, Lcom/mediatek/ims/internal/DataDispatcher;->findTransaction(ILjava/lang/String;)Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;

    move-result-object v2

    .line 811
    .local v2, "deacTrans":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    iget-object v5, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mAPNStatuses:Ljava/util/HashMap;

    monitor-enter v5

    .line 812
    :try_start_21
    iget-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mAPNStatuses:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;

    .line 814
    .local v0, "apnStatus":Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;
    if-nez v2, :cond_d4

    .line 815
    const/4 v4, 0x2

    iput v4, v0, Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;->mStatus:I

    .line 816
    iget-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mContext:Landroid/content/Context;

    .line 817
    const-string/jumbo v6, "connectivity"

    .line 816
    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 818
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v3

    .line 819
    .local v3, "mLink":Landroid/net/LinkProperties;
    if-nez v3, :cond_53

    .line 820
    const-string/jumbo v4, "Link Propertiys is null at network"

    invoke-static {v4}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 822
    const v4, 0xdbba8

    invoke-virtual {p0, v4, p2}, Lcom/mediatek/ims/internal/DataDispatcher;->findTransaction(ILjava/lang/String;)Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;

    move-result-object v4

    .line 823
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 821
    invoke-direct {p0, v4, v6, v7}, Lcom/mediatek/ims/internal/DataDispatcher;->rejectDefaultBearerDataConnActivation(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;II)V
    :try_end_51
    .catchall {:try_start_21 .. :try_end_51} :catchall_d1

    monitor-exit v5

    .line 824
    return-void

    .line 826
    :cond_53
    :try_start_53
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;->ifaceName:Ljava/lang/String;

    .line 827
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "APNStatus: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 828
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "netId =  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p1, Landroid/net/Network;->netId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " IfaceName = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 829
    const-string/jumbo v4, "ccmni4"

    iget-object v6, v0, Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;->ifaceName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ae

    .line 830
    const-string/jumbo v4, "ccmni5"

    iget-object v6, v0, Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;->ifaceName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 829
    if-eqz v4, :cond_be

    .line 832
    :cond_ae
    const v4, 0xdbba8

    invoke-virtual {p0, v4, p2}, Lcom/mediatek/ims/internal/DataDispatcher;->findTransaction(ILjava/lang/String;)Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;

    move-result-object v4

    .line 833
    iget v6, p1, Landroid/net/Network;->netId:I

    iget-object v7, v0, Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;->ifaceName:Ljava/lang/String;

    .line 831
    invoke-direct {p0, v4, v6, v7}, Lcom/mediatek/ims/internal/DataDispatcher;->responseDefaultBearerDataConnActivated(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;ILjava/lang/String;)V
    :try_end_bc
    .catchall {:try_start_53 .. :try_end_bc} :catchall_d1

    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    .end local v3    # "mLink":Landroid/net/LinkProperties;
    :goto_bc
    monitor-exit v5

    .line 805
    return-void

    .line 835
    .restart local v1    # "cm":Landroid/net/ConnectivityManager;
    .restart local v3    # "mLink":Landroid/net/LinkProperties;
    :cond_be
    :try_start_be
    const-string/jumbo v4, "interface name not valid"

    invoke-static {v4}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 837
    const v4, 0xdbba8

    invoke-virtual {p0, v4, p2}, Lcom/mediatek/ims/internal/DataDispatcher;->findTransaction(ILjava/lang/String;)Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;

    move-result-object v4

    .line 838
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 836
    invoke-direct {p0, v4, v6, v7}, Lcom/mediatek/ims/internal/DataDispatcher;->rejectDefaultBearerDataConnActivation(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;II)V
    :try_end_d0
    .catchall {:try_start_be .. :try_end_d0} :catchall_d1

    goto :goto_bc

    .line 811
    .end local v0    # "apnStatus":Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    .end local v3    # "mLink":Landroid/net/LinkProperties;
    :catchall_d1
    move-exception v4

    monitor-exit v5

    throw v4

    .line 841
    .restart local v0    # "apnStatus":Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;
    :cond_d4
    :try_start_d4
    const-string/jumbo v4, "find pending abort request.... "

    invoke-static {v4}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 842
    const/16 v4, 0x1388

    invoke-direct {p0, p2, v4}, Lcom/mediatek/ims/internal/DataDispatcher;->handleDefaultDataConnAbortRequest(Ljava/lang/String;I)V
    :try_end_df
    .catchall {:try_start_d4 .. :try_end_df} :catchall_d1

    goto :goto_bc
.end method

.method private handleDefaultBearerDeactivationRequest(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .registers 12
    .param p1, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .prologue
    const/4 v8, 0x1

    .line 549
    const-string/jumbo v1, "handleDefaultBearerDeactivationRequest"

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 550
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mDataDispatcherUtil:Lcom/mediatek/ims/internal/DataDispatcherUtil;

    invoke-virtual {v1, p1}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->extractDeactInd(Lcom/mediatek/ims/ImsAdapter$VaEvent;)Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactivationInd;

    move-result-object v7

    .line 551
    .local v7, "deactInd":Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactivationInd;
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getPhoneId()I

    move-result v4

    .line 552
    .local v4, "phoneId":I
    const-string/jumbo v5, "ims"

    .line 554
    .local v5, "apnType":Ljava/lang/String;
    iget-boolean v1, v7, Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactivationInd;->isEmergency:Z

    if-eqz v1, :cond_1b

    .line 555
    const-string/jumbo v5, "emergency"

    .line 558
    :cond_1b
    new-instance v0, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;

    iget v2, v7, Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactivationInd;->transactionId:I

    .line 559
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getRequestID()I

    move-result v3

    move-object v1, p0

    .line 558
    invoke-direct/range {v0 .. v5}, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;-><init>(Lcom/mediatek/ims/internal/DataDispatcher;IIILjava/lang/String;)V

    .line 562
    .local v0, "trans":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mAPNStatuses:Ljava/util/HashMap;

    monitor-enter v2

    .line 563
    :try_start_2a
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mAPNStatuses:Ljava/util/HashMap;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;

    .line 564
    .local v6, "apnStatus":Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ApnStatus: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 566
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x1c84

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 567
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x1c20

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 569
    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher;->putTransaction(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;)V

    .line 572
    iget-boolean v1, v7, Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactivationInd;->isValid:Z

    if-eqz v1, :cond_cf

    .line 573
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "transactionId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v7, Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactivationInd;->transactionId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " deactivation "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 574
    const-string/jumbo v3, " PDN"

    .line 573
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 575
    iget v1, v6, Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;->mStatus:I

    if-nez v1, :cond_b4

    .line 576
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PDN: ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "] already deactivation."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 578
    iget-object v1, v6, Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;->ifaceName:Ljava/lang/String;

    const/high16 v3, 0x10000

    .line 577
    invoke-direct {p0, v0, v3, v1}, Lcom/mediatek/ims/internal/DataDispatcher;->responseDefaultBearerDataConnDeactivated(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;ILjava/lang/String;)V
    :try_end_b2
    .catchall {:try_start_2a .. :try_end_b2} :catchall_141

    monitor-exit v2

    .line 579
    return-void

    .line 581
    :cond_b4
    :try_start_b4
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mHandler:Landroid/os/Handler;

    .line 582
    const/16 v8, 0x1c20

    .line 581
    invoke-virtual {v3, v8, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 583
    const-wide/16 v8, 0x4e20

    .line 581
    invoke-virtual {v1, v3, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 584
    invoke-direct {p0, v5}, Lcom/mediatek/ims/internal/DataDispatcher;->releaseNwRequest(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_13f

    .line 585
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher;->rejectDefaultBearerDataConnDeactivation(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;I)V
    :try_end_cd
    .catchall {:try_start_b4 .. :try_end_cd} :catchall_141

    monitor-exit v2

    .line 586
    return-void

    .line 591
    :cond_cf
    :try_start_cf
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "transactionId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v7, Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactivationInd;->transactionId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " abort transactionId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 592
    iget v3, v7, Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactivationInd;->abortTransactionId:I

    .line 591
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 592
    const-string/jumbo v3, " "

    .line 591
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 593
    const-string/jumbo v3, " PDN"

    .line 591
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 595
    iget v1, v6, Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;->mStatus:I

    if-ne v1, v8, :cond_113

    .line 596
    const-string/jumbo v1, "ims pdn connecting, pending abort request!"

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V
    :try_end_111
    .catchall {:try_start_cf .. :try_end_111} :catchall_141

    monitor-exit v2

    .line 597
    return-void

    .line 598
    :cond_113
    :try_start_113
    iget v1, v6, Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;->mStatus:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_13b

    .line 599
    const-string/jumbo v1, "IMS PDN already connected!, follow normal deactivae flow......"

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 600
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mHandler:Landroid/os/Handler;

    .line 601
    const/16 v8, 0x1c20

    .line 600
    invoke-virtual {v3, v8, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 602
    const-wide/16 v8, 0x4e20

    .line 600
    invoke-virtual {v1, v3, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 603
    invoke-direct {p0, v5}, Lcom/mediatek/ims/internal/DataDispatcher;->releaseNwRequest(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_139

    .line 604
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher;->rejectDefaultBearerDataConnDeactivation(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;I)V
    :try_end_137
    .catchall {:try_start_113 .. :try_end_137} :catchall_141

    monitor-exit v2

    .line 605
    return-void

    :cond_139
    monitor-exit v2

    .line 607
    return-void

    .line 609
    :cond_13b
    const/4 v1, 0x0

    :try_start_13c
    invoke-direct {p0, v5, v1}, Lcom/mediatek/ims/internal/DataDispatcher;->handleDefaultDataConnAbortRequest(Ljava/lang/String;I)V
    :try_end_13f
    .catchall {:try_start_13c .. :try_end_13f} :catchall_141

    :cond_13f
    monitor-exit v2

    .line 548
    return-void

    .line 562
    .end local v6    # "apnStatus":Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;
    :catchall_141
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private handleDefaultBearerDeactivationResonse(Landroid/telephony/PreciseDataConnectionState;)V
    .registers 10
    .param p1, "state"    # Landroid/telephony/PreciseDataConnectionState;

    .prologue
    .line 928
    invoke-virtual {p1}, Landroid/telephony/PreciseDataConnectionState;->getDataConnectionAPNType()Ljava/lang/String;

    move-result-object v2

    .line 929
    .local v2, "apnType":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/telephony/PreciseDataConnectionState;->getDataConnectionFailCause()Ljava/lang/String;

    move-result-object v4

    .line 931
    .local v4, "failCause":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "start ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] deactivation flow......"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 932
    iget-object v6, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mAPNStatuses:Ljava/util/HashMap;

    monitor-enter v6

    .line 933
    :try_start_29
    iget-object v5, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mAPNStatuses:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;

    .line 934
    .local v1, "apnStatus":Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;
    const/4 v5, 0x0

    iput v5, v1, Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;->mStatus:I

    .line 935
    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;->isSendReq:Z

    .line 938
    const v5, 0xdbbab

    .line 937
    invoke-virtual {p0, v5, v2}, Lcom/mediatek/ims/internal/DataDispatcher;->findTransaction(ILjava/lang/String;)Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;

    move-result-object v3

    .line 939
    .local v3, "deacTrans":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    if-nez v3, :cond_7d

    .line 941
    const v5, 0xdbba8

    .line 940
    invoke-virtual {p0, v5, v2}, Lcom/mediatek/ims/internal/DataDispatcher;->findTransaction(ILjava/lang/String;)Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;

    move-result-object v0

    .line 942
    .local v0, "actTrans":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    if-nez v0, :cond_62

    .line 943
    const-string/jumbo v5, "Network/Framework send deactivation IMS connection"

    invoke-static {v5}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 945
    iget-object v5, p0, Lcom/mediatek/ims/internal/DataDispatcher;->failCauses:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_unknown_fail_cause_1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_fail_cause_1

    :cond_unknown_fail_cause_1
    const/4 v5, 0x0

    :goto_fail_cause_1

    iget-object v7, v1, Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;->ifaceName:Ljava/lang/String;

    .line 944
    invoke-direct {p0, v5, v7, v2}, Lcom/mediatek/ims/internal/DataDispatcher;->notifyDefaultBearerDataConnDeactivated(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_60
    .catchall {:try_start_29 .. :try_end_60} :catchall_7a

    :goto_60
    monitor-exit v6

    .line 926
    return-void

    .line 947
    :cond_62
    :try_start_62
    const-string/jumbo v5, "IMCB requestNetwork fail"

    invoke-static {v5}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 949
    iget-object v5, p0, Lcom/mediatek/ims/internal/DataDispatcher;->failCauses:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_unknown_fail_cause_2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_fail_cause_2

    :cond_unknown_fail_cause_2
    const/4 v5, 0x0

    :goto_fail_cause_2

    const/16 v7, 0x1388

    .line 948
    invoke-direct {p0, v0, v5, v7}, Lcom/mediatek/ims/internal/DataDispatcher;->rejectDefaultBearerDataConnActivation(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;II)V
    :try_end_79
    .catchall {:try_start_62 .. :try_end_79} :catchall_7a

    goto :goto_60

    .line 932
    .end local v0    # "actTrans":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    .end local v1    # "apnStatus":Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;
    .end local v3    # "deacTrans":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    :catchall_7a
    move-exception v5

    monitor-exit v6

    throw v5

    .line 953
    .restart local v1    # "apnStatus":Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;
    .restart local v3    # "deacTrans":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    :cond_7d
    const v5, 0xdbba8

    .line 952
    :try_start_80
    invoke-virtual {p0, v5, v2}, Lcom/mediatek/ims/internal/DataDispatcher;->findTransaction(ILjava/lang/String;)Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;

    move-result-object v0

    .line 954
    .restart local v0    # "actTrans":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    if-nez v0, :cond_9e

    .line 955
    const-string/jumbo v5, "IMCB send deactivation IMS connection"

    invoke-static {v5}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 957
    iget-object v5, p0, Lcom/mediatek/ims/internal/DataDispatcher;->failCauses:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_unknown_fail_cause_3

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_fail_cause_3

    :cond_unknown_fail_cause_3
    const/4 v5, 0x0

    :goto_fail_cause_3

    iget-object v7, v1, Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;->ifaceName:Ljava/lang/String;

    .line 956
    invoke-direct {p0, v3, v5, v7}, Lcom/mediatek/ims/internal/DataDispatcher;->responseDefaultBearerDataConnDeactivated(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;ILjava/lang/String;)V

    goto :goto_60

    .line 959
    :cond_9e
    const-string/jumbo v5, "find abort pdn request"

    invoke-static {v5}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 960
    const/4 v5, 0x0

    invoke-direct {p0, v2, v5}, Lcom/mediatek/ims/internal/DataDispatcher;->handleDefaultDataConnAbortRequest(Ljava/lang/String;I)V
    :try_end_a8
    .catchall {:try_start_80 .. :try_end_a8} :catchall_7a

    goto :goto_60
.end method

.method private handleDefaultDataConnAbortRequest(Ljava/lang/String;I)V
    .registers 9
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "delayMs"    # I

    .prologue
    .line 616
    iget-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mAPNStatuses:Ljava/util/HashMap;

    monitor-enter v4

    .line 617
    :try_start_3
    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mAPNStatuses:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;

    .line 618
    .local v1, "apnStatus":Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;
    const/4 v3, 0x0

    iput v3, v1, Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;->mStatus:I

    .line 619
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;->isSendReq:Z

    .line 620
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IMCB send abort ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "] connection"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 622
    const v3, 0xdbbab

    .line 621
    invoke-virtual {p0, v3, p1}, Lcom/mediatek/ims/internal/DataDispatcher;->findTransaction(ILjava/lang/String;)Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;

    move-result-object v2

    .line 623
    .local v2, "deactTrans":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    if-eqz v2, :cond_5d

    .line 624
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DataDispatcher;->releaseNwRequest(Ljava/lang/String;)I

    .line 626
    const v3, 0xdbba8

    .line 625
    invoke-virtual {p0, v3, p1}, Lcom/mediatek/ims/internal/DataDispatcher;->findTransaction(ILjava/lang/String;)Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;

    move-result-object v0

    .line 627
    .local v0, "actTrans":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    if-eqz v0, :cond_4f

    .line 628
    const-string/jumbo v3, "[Abort] send reject activation transaction to IMSM"

    invoke-static {v3}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 630
    const/high16 v3, 0x10000

    .line 629
    invoke-direct {p0, v0, v3, p2}, Lcom/mediatek/ims/internal/DataDispatcher;->rejectDefaultBearerDataConnActivation(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;II)V

    .line 632
    :cond_4f
    const-string/jumbo v3, "[Abort] send response abort transaction to IMSM"

    invoke-static {v3}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 634
    iget-object v3, v1, Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;->ifaceName:Ljava/lang/String;

    const/4 v5, 0x0

    .line 633
    invoke-direct {p0, v2, v5, v3}, Lcom/mediatek/ims/internal/DataDispatcher;->responseDefaultBearerDataConnDeactivated(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;ILjava/lang/String;)V
    :try_end_5b
    .catchall {:try_start_3 .. :try_end_5b} :catchall_64

    .end local v0    # "actTrans":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    :goto_5b
    monitor-exit v4

    .line 614
    return-void

    .line 637
    :cond_5d
    :try_start_5d
    const-string/jumbo v3, "abort transaction not in queue..."

    invoke-static {v3}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V
    :try_end_63
    .catchall {:try_start_5d .. :try_end_63} :catchall_64

    goto :goto_5b

    .line 616
    .end local v1    # "apnStatus":Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;
    .end local v2    # "deactTrans":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    :catchall_64
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private isImsApnExists(I)Z
    .registers 13
    .param p1, "phoneId"    # I

    .prologue
    .line 739
    const/4 v8, 0x0

    .line 741
    .local v8, "hasImsApn":Z
    :try_start_1
    const-string/jumbo v9, ""

    .line 742
    .local v9, "operator":Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mContext:Landroid/content/Context;

    .line 743
    const-string/jumbo v2, "phone"

    .line 742
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    .line 744
    .local v10, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v10, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v9

    .line 746
    if-eqz v9, :cond_81

    .line 747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "numeric = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 748
    .local v3, "selection":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " and type like \'%ims%\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 749
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "query: selection="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 750
    const-string/jumbo v0, "content://telephony/carriers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 751
    .local v1, "CONTENT_URI":Landroid/net/Uri;
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 752
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 751
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 754
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_81

    .line 755
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_7e

    .line 756
    const-string/jumbo v0, "has ims apn!!"

    invoke-static {v0}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 757
    const/4 v8, 0x1

    .line 759
    :cond_7e
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_81
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_81} :catch_82

    .line 765
    .end local v1    # "CONTENT_URI":Landroid/net/Uri;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v9    # "operator":Ljava/lang/String;
    .end local v10    # "tm":Landroid/telephony/TelephonyManager;
    :cond_81
    :goto_81
    return v8

    .line 762
    :catch_82
    move-exception v7

    .line 763
    .local v7, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_81
.end method

.method private isReasonAllowedToDetach(Ljava/lang/String;)Z
    .registers 5
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 848
    const/4 v0, 0x0

    .line 849
    .local v0, "bRet":Z
    const-string/jumbo v1, "dataDisabled"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    const-string/jumbo v1, "dataDetached"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    .line 850
    const-string/jumbo v1, "apnChanged"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 849
    if-nez v1, :cond_69

    .line 851
    const-string/jumbo v1, "apnSwitched"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 849
    if-nez v1, :cond_69

    .line 852
    const-string/jumbo v1, "apnFailed"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 849
    if-nez v1, :cond_69

    .line 853
    const-string/jumbo v1, "pdpReset"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 849
    if-nez v1, :cond_69

    .line 854
    const-string/jumbo v1, "lostDataConnection"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 849
    if-nez v1, :cond_69

    .line 855
    const-string/jumbo v1, "queryPLMN"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 849
    if-nez v1, :cond_69

    .line 856
    const-string/jumbo v1, "connected"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 849
    if-nez v1, :cond_69

    .line 857
    const-string/jumbo v1, "radioTurnedOff"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 849
    if-nez v1, :cond_69

    .line 858
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->LOST_CONNECTION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 849
    if-nez v1, :cond_69

    .line 859
    if-nez p1, :cond_6a

    .line 860
    :cond_69
    const/4 v0, 0x1

    .line 862
    :cond_6a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isReasonAllowedToDetach ret: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 863
    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .registers 4
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 1048
    const-string/jumbo v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[dedicate] DataDispatcher "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .registers 4
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 1052
    const-string/jumbo v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[dedicate] DataDispatcher "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    return-void
.end method

.method private makeRejectDefaultBearerEvent(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;I)Lcom/mediatek/ims/ImsAdapter$VaEvent;
    .registers 6
    .param p1, "trans"    # Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    .param p2, "failCause"    # I

    .prologue
    .line 530
    iget v1, p1, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->requestId:I

    const v2, 0xdbba8

    if-ne v1, v2, :cond_42

    .line 531
    new-instance v0, Lcom/mediatek/ims/ImsAdapter$VaEvent;

    iget v1, p1, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->phoneId:I

    .line 532
    const v2, 0xdbbaa

    .line 531
    invoke-direct {v0, v1, v2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;-><init>(II)V

    .line 533
    .local v0, "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rejectDefaultBearerDataConnActivation param"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", failCause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 541
    :goto_33
    iget v1, p1, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->transactionId:I

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 542
    invoke-virtual {v0, p2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 543
    const/4 v1, 0x2

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putBytes([B)I

    .line 545
    return-object v0

    .line 535
    .end local v0    # "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    :cond_42
    new-instance v0, Lcom/mediatek/ims/ImsAdapter$VaEvent;

    iget v1, p1, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->phoneId:I

    .line 536
    const v2, 0xdbbad

    .line 535
    invoke-direct {v0, v1, v2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;-><init>(II)V

    .line 537
    .restart local v0    # "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rejectDefaultBearerDataConnDeactivation param"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", failCause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    goto :goto_33
.end method

.method private notifyDefaultBearerDataConnDeactivated(ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "cause"    # I
    .param p2, "intlName"    # Ljava/lang/String;
    .param p3, "apnType"    # Ljava/lang/String;

    .prologue
    .line 993
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyDefaultBearerDataConnDeactivated for ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 994
    invoke-direct {p0, p3}, Lcom/mediatek/ims/internal/DataDispatcher;->releaseNwRequest(Ljava/lang/String;)I

    .line 996
    new-instance v0, Lcom/mediatek/ims/ImsAdapter$VaEvent;

    invoke-static {}, Lcom/mediatek/ims/ImsAdapter$Util;->getDefaultVoltePhoneId()I

    move-result v1

    .line 997
    const v2, 0xdbbae

    .line 996
    invoke-direct {v0, v1, v2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;-><init>(II)V

    .line 999
    .local v0, "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 1000
    const/4 v1, 0x3

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putBytes([B)I

    .line 1001
    const/16 v1, 0x10

    invoke-virtual {v0, p2, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putString(Ljava/lang/String;I)I

    .line 1003
    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher;->sendVaEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    .line 992
    return-void
.end method

.method private rejectDefaultBearerDataConnActivation(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;II)V
    .registers 5
    .param p1, "param"    # Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    .param p2, "failCause"    # I
    .param p3, "delayMs"    # I

    .prologue
    .line 507
    if-nez p1, :cond_9

    .line 508
    const-string/jumbo v0, "TransactionParam can not be null"

    invoke-static {v0}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 509
    return-void

    .line 512
    :cond_9
    iget v0, p1, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->transactionId:I

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher;->hasTransaction(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 513
    iget-boolean v0, p1, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->isEmergency:Z

    if-eqz v0, :cond_2b

    const-string/jumbo v0, "emergency"

    :goto_18
    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher;->releaseNwRequest(Ljava/lang/String;)I

    .line 516
    iget v0, p1, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->transactionId:I

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher;->removeTransaction(I)V

    .line 518
    invoke-direct {p0, p3}, Lcom/mediatek/ims/internal/DataDispatcher;->delayForSeconds(I)V

    .line 520
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/internal/DataDispatcher;->makeRejectDefaultBearerEvent(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;I)Lcom/mediatek/ims/ImsAdapter$VaEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher;->sendVaEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    .line 505
    :goto_2a
    return-void

    .line 514
    :cond_2b
    const-string/jumbo v0, "ims"

    goto :goto_18

    .line 522
    :cond_2f
    const-string/jumbo v0, "rejectDefaultBearerDataConnActivation but transactionId does not existed, ignore"

    invoke-static {v0}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    goto :goto_2a
.end method

.method private rejectDefaultBearerDataConnDeactivation(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;I)V
    .registers 5
    .param p1, "param"    # Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    .param p2, "failCause"    # I

    .prologue
    .line 644
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1c20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 645
    iget v0, p1, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->transactionId:I

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher;->hasTransaction(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 646
    iget v0, p1, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->transactionId:I

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher;->removeTransaction(I)V

    .line 647
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/internal/DataDispatcher;->makeRejectDefaultBearerEvent(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;I)Lcom/mediatek/ims/ImsAdapter$VaEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher;->sendVaEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    .line 643
    :goto_1b
    return-void

    .line 649
    :cond_1c
    const-string/jumbo v0, "rejectDefaultBearerDataConnDeactivation but transactionId does not existed, ignore"

    invoke-static {v0}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    goto :goto_1b
.end method

.method private rejectPcscfDiscovery(II)V
    .registers 6
    .param p1, "transactionId"    # I
    .param p2, "failCause"    # I

    .prologue
    .line 1008
    new-instance v0, Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .line 1009
    invoke-static {}, Lcom/mediatek/ims/ImsAdapter$Util;->getDefaultVoltePhoneId()I

    move-result v1

    .line 1010
    const v2, 0xdbd35

    .line 1008
    invoke-direct {v0, v1, v2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;-><init>(II)V

    .line 1011
    .local v0, "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rejectPcscfDiscovery transId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", failCause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1016
    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 1017
    invoke-virtual {v0, p2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 1018
    const/4 v1, 0x2

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putBytes([B)I

    .line 1020
    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher;->sendVaEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    .line 1006
    return-void
.end method

.method private releaseNwRequest(Ljava/lang/String;)I
    .registers 9
    .param p1, "requestApnType"    # Ljava/lang/String;

    .prologue
    .line 674
    const/4 v2, 0x0

    .line 675
    .local v2, "nRet":I
    iget-object v5, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mDataNetworkRequests:[Lcom/mediatek/ims/internal/DataDispatcher$DataDispatcherNetworkRequest;

    array-length v0, v5

    .line 676
    .local v0, "endPos":I
    invoke-direct {p0, p1, v0}, Lcom/mediatek/ims/internal/DataDispatcher;->getNetworkRequetsPos(Ljava/lang/String;I)I

    move-result v4

    .line 678
    .local v4, "pos":I
    const/4 v5, -0x1

    if-le v4, v5, :cond_45

    if-ge v4, v0, :cond_45

    .line 679
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "releaseNwRequest pos: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", requestApnType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 681
    iget-object v5, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mDataNetworkRequests:[Lcom/mediatek/ims/internal/DataDispatcher$DataDispatcherNetworkRequest;

    aget-object v5, v5, v4

    iget-object v3, v5, Lcom/mediatek/ims/internal/DataDispatcher$DataDispatcherNetworkRequest;->nwCb:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 683
    .local v3, "nwCb":Landroid/net/ConnectivityManager$NetworkCallback;
    :try_start_35
    invoke-direct {p0}, Lcom/mediatek/ims/internal/DataDispatcher;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_3c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_35 .. :try_end_3c} :catch_3d

    .line 692
    .end local v3    # "nwCb":Landroid/net/ConnectivityManager$NetworkCallback;
    :goto_3c
    return v2

    .line 684
    .restart local v3    # "nwCb":Landroid/net/ConnectivityManager$NetworkCallback;
    :catch_3d
    move-exception v1

    .line 685
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v5, "cb already has been released!!"

    invoke-static {v5}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    goto :goto_3c

    .line 688
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    .end local v3    # "nwCb":Landroid/net/ConnectivityManager$NetworkCallback;
    :cond_45
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unknown apnType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " skip requestNetwork "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 689
    const/4 v2, -0x1

    goto :goto_3c
.end method

.method private requestNwRequest(Ljava/lang/String;I)I
    .registers 15
    .param p1, "requestApnType"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 696
    const/4 v3, 0x0

    .line 697
    .local v3, "nRet":I
    iget-object v8, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mDataNetworkRequests:[Lcom/mediatek/ims/internal/DataDispatcher$DataDispatcherNetworkRequest;

    array-length v2, v8

    .line 698
    .local v2, "endPos":I
    invoke-direct {p0, p1, v2}, Lcom/mediatek/ims/internal/DataDispatcher;->getNetworkRequetsPos(Ljava/lang/String;I)I

    move-result v6

    .line 699
    .local v6, "pos":I
    invoke-static {p2}, Lcom/mediatek/ims/compat/ImsCompat;->getSubIdUsingPhoneId(I)I

    move-result v7

    .line 701
    .local v7, "subId":I
    const/4 v8, -0x1

    if-le v6, v8, :cond_d4

    if-ge v6, v2, :cond_d4

    .line 702
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "requestNwRequest pos: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", requestApnType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 703
    const-string/jumbo v9, " subId: "

    .line 702
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 704
    iget-object v8, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mDataNetworkRequests:[Lcom/mediatek/ims/internal/DataDispatcher$DataDispatcherNetworkRequest;

    aget-object v8, v8, v6

    iget-object v4, v8, Lcom/mediatek/ims/internal/DataDispatcher$DataDispatcherNetworkRequest;->nwCb:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 707
    .local v4, "nwCb":Landroid/net/ConnectivityManager$NetworkCallback;
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 708
    .local v1, "builder":Landroid/net/NetworkRequest$Builder;
    sget-object v8, Lcom/mediatek/ims/internal/DataDispatcher;->APN_CAP_LIST:[I

    aget v8, v8, v6

    invoke-virtual {v1, v8}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 709
    invoke-virtual {v1, v10}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 710
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;

    .line 712
    iget-object v8, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mDataNetworkRequests:[Lcom/mediatek/ims/internal/DataDispatcher$DataDispatcherNetworkRequest;

    aget-object v8, v8, v6

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v9

    iput-object v9, v8, Lcom/mediatek/ims/internal/DataDispatcher$DataDispatcherNetworkRequest;->nwRequest:Landroid/net/NetworkRequest;

    .line 713
    iget-object v8, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mDataNetworkRequests:[Lcom/mediatek/ims/internal/DataDispatcher$DataDispatcherNetworkRequest;

    aget-object v8, v8, v6

    iget-object v5, v8, Lcom/mediatek/ims/internal/DataDispatcher$DataDispatcherNetworkRequest;->nwRequest:Landroid/net/NetworkRequest;

    .line 715
    .local v5, "nwRequest":Landroid/net/NetworkRequest;
    const-string/jumbo v8, "before start requestNetwork, first relaseNetwork!"

    invoke-static {v8}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 716
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DataDispatcher;->releaseNwRequest(Ljava/lang/String;)I

    .line 717
    iget-object v9, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mAPNStatuses:Ljava/util/HashMap;

    monitor-enter v9

    .line 718
    :try_start_78
    const-string/jumbo v8, "persist.net.wo.debug.no_ims"

    const/4 v10, 0x0

    invoke-static {v8, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-eq v8, v11, :cond_cf

    .line 719
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "start requestNetwork for "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 720
    iget-object v8, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mAPNStatuses:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;

    .line 721
    .local v0, "apnStatus":Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;
    iput-object p1, v0, Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;->mName:Ljava/lang/String;

    .line 722
    const/4 v8, 0x0

    iput v8, v0, Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;->mStatus:I

    .line 723
    const/4 v8, 0x1

    iput-boolean v8, v0, Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;->isSendReq:Z

    .line 724
    const-string/jumbo v8, ""

    iput-object v8, v0, Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;->ifaceName:Ljava/lang/String;

    .line 725
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "ApnStatus: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 726
    invoke-direct {p0}, Lcom/mediatek/ims/internal/DataDispatcher;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v8

    .line 727
    const v10, 0x5b8d80

    .line 726
    invoke-virtual {v8, v5, v4, v10}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;I)V
    :try_end_cf
    .catchall {:try_start_78 .. :try_end_cf} :catchall_d1

    .end local v0    # "apnStatus":Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;
    :cond_cf
    monitor-exit v9

    .line 735
    .end local v1    # "builder":Landroid/net/NetworkRequest$Builder;
    .end local v4    # "nwCb":Landroid/net/ConnectivityManager$NetworkCallback;
    .end local v5    # "nwRequest":Landroid/net/NetworkRequest;
    :goto_d0
    return v3

    .line 717
    .restart local v1    # "builder":Landroid/net/NetworkRequest$Builder;
    .restart local v4    # "nwCb":Landroid/net/ConnectivityManager$NetworkCallback;
    .restart local v5    # "nwRequest":Landroid/net/NetworkRequest;
    :catchall_d1
    move-exception v8

    monitor-exit v9

    throw v8

    .line 731
    .end local v1    # "builder":Landroid/net/NetworkRequest$Builder;
    .end local v4    # "nwCb":Landroid/net/ConnectivityManager$NetworkCallback;
    .end local v5    # "nwRequest":Landroid/net/NetworkRequest;
    :cond_d4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "unknow apnType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " skip requestNetwork "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 732
    const/4 v3, -0x1

    goto :goto_d0
.end method

.method private responseDefaultBearerDataConnActivated(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;ILjava/lang/String;)V
    .registers 7
    .param p1, "param"    # Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    .param p2, "netId"    # I
    .param p3, "ifaceName"    # Ljava/lang/String;

    .prologue
    .line 477
    const-string/jumbo v1, "responseDefaultBearerDataConnActivated "

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 479
    if-nez p1, :cond_f

    .line 480
    const-string/jumbo v1, "TransactionParam can not be null"

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    .line 481
    return-void

    .line 484
    :cond_f
    iget v1, p1, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->transactionId:I

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/DataDispatcher;->hasTransaction(I)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 485
    new-instance v0, Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .line 486
    iget v1, p1, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->phoneId:I

    .line 487
    const v2, 0xdbba9

    .line 485
    invoke-direct {v0, v1, v2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;-><init>(II)V

    .line 488
    .local v0, "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    iget v1, p1, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->transactionId:I

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 489
    const/4 v1, 0x3

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putBytes([B)I

    .line 490
    invoke-virtual {v0, p2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putInt(I)I

    .line 491
    const/16 v1, 0x10

    invoke-virtual {v0, p3, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putString(Ljava/lang/String;I)I

    .line 494
    iget v1, p1, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->transactionId:I

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/DataDispatcher;->removeTransaction(I)V

    .line 495
    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher;->sendVaEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    .line 476
    .end local v0    # "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    :goto_3c
    return-void

    .line 498
    :cond_3d
    const-string/jumbo v1, "responseDefaultBearerDataConnActivated but transactionId does not existed, ignore"

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    goto :goto_3c
.end method

.method private responseDefaultBearerDataConnDeactivated(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;ILjava/lang/String;)V
    .registers 7
    .param p1, "param"    # Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    .param p2, "cause"    # I
    .param p3, "IntlName"    # Ljava/lang/String;

    .prologue
    .line 969
    const-string/jumbo v1, "responseDefaultBearerDataConnDeactivated"

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 970
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1c20

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 971
    iget-boolean v1, p1, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->isEmergency:Z

    if-eqz v1, :cond_5c

    const-string/jumbo v1, "emergency"

    :goto_14
    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/DataDispatcher;->releaseNwRequest(Ljava/lang/String;)I

    .line 973
    iget v1, p1, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->transactionId:I

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/DataDispatcher;->hasTransaction(I)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 974
    new-instance v0, Lcom/mediatek/ims/ImsAdapter$VaEvent;

    iget v1, p1, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->phoneId:I

    .line 975
    const v2, 0xdbbac

    .line 974
    invoke-direct {v0, v1, v2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;-><init>(II)V

    .line 976
    .local v0, "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "responseDataConnectionDeactivated param"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 978
    iget v1, p1, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->transactionId:I

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 979
    invoke-virtual {v0, p2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putByte(I)I

    .line 980
    const/4 v1, 0x2

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putBytes([B)I

    .line 981
    const/16 v1, 0x10

    invoke-virtual {v0, p3, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->putString(Ljava/lang/String;I)I

    .line 983
    iget v1, p1, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->transactionId:I

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/DataDispatcher;->removeTransaction(I)V

    .line 984
    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/DataDispatcher;->sendVaEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    .line 968
    .end local v0    # "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    :goto_5b
    return-void

    .line 972
    :cond_5c
    const-string/jumbo v1, "ims"

    goto :goto_14

    .line 986
    :cond_60
    const-string/jumbo v1, "responseDataConnectionDeactivated but transactionId does not existed, ignore"

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->loge(Ljava/lang/String;)V

    goto :goto_5b
.end method

.method private sendVaEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .registers 4
    .param p1, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .prologue
    .line 1043
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DataDispatcher send event ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getRequestID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getDataLen()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1044
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->writeEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)I

    .line 1042
    return-void
.end method


# virtual methods
.method public disableRequest()V
    .registers 7

    .prologue
    .line 401
    iget-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mHandler:Landroid/os/Handler;

    monitor-enter v4

    .line 402
    :try_start_3
    const-string/jumbo v3, "receive disableRequest"

    invoke-static {v3}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 403
    const-string/jumbo v3, "unregisterReceiver"

    invoke-static {v3}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 404
    iget-boolean v3, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mIsEnable:Z

    if-eqz v3, :cond_7f

    .line 405
    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 406
    iget-object v5, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_73

    .line 407
    :try_start_1d
    const-string/jumbo v3, "disableRequest to clear transactions"

    invoke-static {v3}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 408
    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V
    :try_end_28
    .catchall {:try_start_1d .. :try_end_28} :catchall_76

    :try_start_28
    monitor-exit v5

    .line 410
    const-string/jumbo v3, "ims"

    invoke-direct {p0, v3}, Lcom/mediatek/ims/internal/DataDispatcher;->releaseNwRequest(Ljava/lang/String;)I

    .line 411
    const-string/jumbo v3, "emergency"

    invoke-direct {p0, v3}, Lcom/mediatek/ims/internal/DataDispatcher;->releaseNwRequest(Ljava/lang/String;)I

    .line 412
    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x1c84

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 413
    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x1c20

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 415
    iget-object v5, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mAPNStatuses:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_46
    .catchall {:try_start_28 .. :try_end_46} :catchall_73

    .line 416
    :try_start_46
    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mAPNStatuses:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "apnType$iterator":Ljava/util/Iterator;
    :goto_50
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_79

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 418
    .local v0, "apnType":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mAPNStatuses:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;

    .line 419
    .local v2, "status":Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;
    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;->mName:Ljava/lang/String;

    .line 420
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;->isSendReq:Z

    .line 421
    const/4 v3, 0x0

    iput v3, v2, Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;->mStatus:I
    :try_end_6f
    .catchall {:try_start_46 .. :try_end_6f} :catchall_70

    goto :goto_50

    .line 415
    .end local v0    # "apnType":Ljava/lang/String;
    .end local v1    # "apnType$iterator":Ljava/util/Iterator;
    .end local v2    # "status":Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;
    :catchall_70
    move-exception v3

    :try_start_71
    monitor-exit v5

    throw v3
    :try_end_73
    .catchall {:try_start_71 .. :try_end_73} :catchall_73

    .line 401
    :catchall_73
    move-exception v3

    monitor-exit v4

    throw v3

    .line 406
    :catchall_76
    move-exception v3

    :try_start_77
    monitor-exit v5

    throw v3

    .restart local v1    # "apnType$iterator":Ljava/util/Iterator;
    :cond_79
    monitor-exit v5

    .line 424
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mIsEnable:Z
    :try_end_7d
    .catchall {:try_start_77 .. :try_end_7d} :catchall_73

    .end local v1    # "apnType$iterator":Ljava/util/Iterator;
    :goto_7d
    monitor-exit v4

    .line 400
    return-void

    .line 426
    :cond_7f
    :try_start_7f
    const-string/jumbo v3, "DataDispatcher already be disabled"

    invoke-static {v3}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V
    :try_end_85
    .catchall {:try_start_7f .. :try_end_85} :catchall_73

    goto :goto_7d
.end method

.method protected dumpTransactions()V
    .registers 5

    .prologue
    .line 1120
    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_43

    .line 1121
    const-string/jumbo v2, "====Start dump [transactions]===="

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1122
    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "param$iterator":Ljava/util/Iterator;
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;

    .line 1123
    .local v0, "param":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dump transactions"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    goto :goto_18

    .line 1125
    .end local v0    # "param":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    :cond_3c
    const-string/jumbo v2, "====End dump [transactions]===="

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1119
    .end local v1    # "param$iterator":Ljava/util/Iterator;
    :goto_42
    return-void

    .line 1127
    :cond_43
    const-string/jumbo v2, "====dump [transactions] but empty===="

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    goto :goto_42
.end method

.method public enableRequest()V
    .registers 5

    .prologue
    .line 386
    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mHandler:Landroid/os/Handler;

    monitor-enter v2

    .line 387
    :try_start_3
    const-string/jumbo v1, "receive enableRequest"

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 388
    const-string/jumbo v1, "registerReceiver"

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 390
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mSimStatus:[Z

    const/4 v3, 0x0

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([ZZ)V

    .line 392
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 393
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.PRECISE_DATA_CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 394
    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 395
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 396
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mIsEnable:Z
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_32

    monitor-exit v2

    .line 385
    return-void

    .line 386
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :catchall_32
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method protected findTransaction(ILjava/lang/String;)Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    .registers 10
    .param p1, "reqId"    # I
    .param p2, "apn"    # Ljava/lang/String;

    .prologue
    .line 1066
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "findTransaction reqId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " apn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/ims/internal/DataDispatcher;->log(Ljava/lang/String;)V

    .line 1067
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/DataDispatcher;->dumpTransactions()V

    .line 1068
    iget-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    monitor-enter v4

    .line 1069
    :try_start_28
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/DataDispatcher;->getTransactionKeyArray()[Ljava/lang/Integer;

    move-result-object v0

    .line 1070
    .local v0, "keys":[Ljava/lang/Integer;
    const/4 v3, 0x0

    array-length v5, v0

    :goto_2e
    if-ge v3, v5, :cond_4b

    aget-object v2, v0, v3

    .line 1071
    .local v2, "transactionId":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/mediatek/ims/internal/DataDispatcher;->getTransaction(I)Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;

    move-result-object v1

    .line 1072
    .local v1, "param":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    iget v6, v1, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->requestId:I

    if-ne v6, p1, :cond_48

    .line 1073
    iget-object v6, v1, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->apnName:Ljava/lang/String;

    invoke-virtual {v6, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_43
    .catchall {:try_start_28 .. :try_end_43} :catchall_4e

    move-result v6

    .line 1072
    if-eqz v6, :cond_48

    monitor-exit v4

    .line 1074
    return-object v1

    .line 1070
    :cond_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 1077
    .end local v1    # "param":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    .end local v2    # "transactionId":Ljava/lang/Integer;
    :cond_4b
    const/4 v3, 0x0

    monitor-exit v4

    return-object v3

    .line 1068
    .end local v0    # "keys":[Ljava/lang/Integer;
    :catchall_4e
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method protected getTransaction(I)Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    .registers 5
    .param p1, "transactionId"    # I

    .prologue
    .line 1100
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    monitor-enter v1

    .line 1101
    :try_start_3
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    monitor-exit v1

    return-object v0

    .line 1100
    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected getTransactionKeyArray()[Ljava/lang/Integer;
    .registers 6

    .prologue
    .line 1106
    iget-object v4, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    monitor-enter v4

    .line 1107
    :try_start_3
    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 1108
    .local v0, "array":[Ljava/lang/Object;
    if-nez v0, :cond_14

    .line 1109
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Integer;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_26

    monitor-exit v4

    return-object v3

    .line 1111
    :cond_14
    :try_start_14
    array-length v3, v0

    new-array v2, v3, [Ljava/lang/Integer;

    .line 1112
    .local v2, "intArray":[Ljava/lang/Integer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_18
    array-length v3, v0

    if-ge v1, v3, :cond_24

    .line 1113
    aget-object v3, v0, v1

    check-cast v3, Ljava/lang/Integer;

    aput-object v3, v2, v1
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_26

    .line 1112
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_24
    monitor-exit v4

    .line 1114
    return-object v2

    .line 1106
    .end local v0    # "array":[Ljava/lang/Object;
    .end local v1    # "i":I
    .end local v2    # "intArray":[Ljava/lang/Integer;
    :catchall_26
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method protected hasTransaction(I)Z
    .registers 5
    .param p1, "transactionId"    # I

    .prologue
    .line 1060
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    monitor-enter v1

    .line 1061
    :try_start_3
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_14

    move-result-object v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_10
    monitor-exit v1

    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_10

    .line 1060
    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected putTransaction(Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;)V
    .registers 5
    .param p1, "param"    # Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;

    .prologue
    .line 1082
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    monitor-enter v1

    .line 1083
    :try_start_3
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    iget v2, p1, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->transactionId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1085
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/DataDispatcher;->dumpTransactions()V
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    monitor-exit v1

    .line 1081
    return-void

    .line 1082
    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected removeTransaction(I)V
    .registers 5
    .param p1, "transactionId"    # I

    .prologue
    .line 1091
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    monitor-enter v1

    .line 1092
    :try_start_3
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mTransactions:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1094
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/DataDispatcher;->dumpTransactions()V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    monitor-exit v1

    .line 1090
    return-void

    .line 1091
    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public vaEventCallback(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .registers 5
    .param p1, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getRequestID()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1036
    return-void
.end method
