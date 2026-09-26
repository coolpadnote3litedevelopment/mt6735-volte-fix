.class public Lcom/mediatek/ims/ImsAdapter;
.super Landroid/os/Handler;
.source "ImsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/ImsAdapter$VaEvent;,
        Lcom/mediatek/ims/ImsAdapter$VaSocketIO;,
        Lcom/mediatek/ims/ImsAdapter$Util;
    }
.end annotation


# static fields
.field private static final IMSA_RETRY_SOCKET_TIME:I = 0x1f4

.field private static final MSG_IMSA_RETRY_CONNECT_SOCKET:I = 0x1

.field private static final MSG_IMSA_RETRY_IMS_ENABLE:I = 0x2

.field private static final SOCKET_NAME1:Ljava/lang/String; = "volte_imsm"

.field private static final TAG:Ljava/lang/String; = "[ImsAdapter]"

.field private static mImsEventDispatcher:Lcom/mediatek/ims/ImsEventDispatcher;

.field private static mImsServiceUp:Z

.field private static mInstance:Lcom/mediatek/ims/ImsAdapter;

.field private static misImsAdapterEnabled:Z


# instance fields
.field private IS_ENG_BUILD:Z

.field private IS_USERDEBUG_BUILD:Z

.field private IS_USER_BUILD:Z

.field private ImsEnabledThreadLock:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mIO:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;


# direct methods
.method static synthetic -get0(Lcom/mediatek/ims/ImsAdapter;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/mediatek/ims/ImsAdapter;->ImsEnabledThreadLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get1()Lcom/mediatek/ims/ImsEventDispatcher;
    .registers 1

    sget-object v0, Lcom/mediatek/ims/ImsAdapter;->mImsEventDispatcher:Lcom/mediatek/ims/ImsEventDispatcher;

    return-object v0
.end method

.method static synthetic -get2()Z
    .registers 1

    sget-boolean v0, Lcom/mediatek/ims/ImsAdapter;->misImsAdapterEnabled:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/mediatek/ims/ImsAdapter;)V
    .registers 1

    invoke-direct {p0}, Lcom/mediatek/ims/ImsAdapter;->invokeTrm()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 499
    sput-boolean v0, Lcom/mediatek/ims/ImsAdapter;->misImsAdapterEnabled:Z

    .line 500
    sput-boolean v0, Lcom/mediatek/ims/ImsAdapter;->mImsServiceUp:Z

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 508
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 502
    const-string/jumbo v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/ims/ImsAdapter;->IS_USER_BUILD:Z

    .line 503
    const-string/jumbo v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/ims/ImsAdapter;->IS_USERDEBUG_BUILD:Z

    .line 504
    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/ims/ImsAdapter;->IS_ENG_BUILD:Z

    .line 506
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsAdapter;->ImsEnabledThreadLock:Ljava/lang/Object;

    .line 510
    iput-object p1, p0, Lcom/mediatek/ims/ImsAdapter;->mContext:Landroid/content/Context;

    .line 512
    sget-object v0, Lcom/mediatek/ims/ImsAdapter;->mInstance:Lcom/mediatek/ims/ImsAdapter;

    if-nez v0, :cond_33

    .line 513
    sput-object p0, Lcom/mediatek/ims/ImsAdapter;->mInstance:Lcom/mediatek/ims/ImsAdapter;

    .line 516
    :cond_33
    const-string/jumbo v0, "@M_[ImsAdapter]"

    const-string/jumbo v1, "ImsAdapter(): ImsAdapter Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    new-instance v0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    const-string/jumbo v1, "volte_imsm"

    invoke-direct {v0, p0, v1}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;-><init>(Lcom/mediatek/ims/ImsAdapter;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/ims/ImsAdapter;->mIO:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    .line 519
    new-instance v0, Lcom/mediatek/ims/ImsEventDispatcher;

    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/ims/ImsAdapter;->mIO:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ims/ImsEventDispatcher;-><init>(Landroid/content/Context;Lcom/mediatek/ims/ImsAdapter$VaSocketIO;)V

    sput-object v0, Lcom/mediatek/ims/ImsAdapter;->mImsEventDispatcher:Lcom/mediatek/ims/ImsEventDispatcher;

    .line 521
    iget-object v0, p0, Lcom/mediatek/ims/ImsAdapter;->mIO:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->start()V

    .line 508
    return-void
.end method

.method private disableImsStack()V
    .registers 4

    .prologue
    .line 671
    new-instance v0, Lcom/mediatek/ims/ImsAdapter$VaEvent;

    invoke-static {}, Lcom/mediatek/ims/ImsAdapter$Util;->getDefaultVoltePhoneId()I

    move-result v1

    const v2, 0xdbba4

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;-><init>(II)V

    .line 672
    .local v0, "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter;->mIO:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->writeEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)I

    .line 674
    return-void
.end method

.method private enableImsStack()V
    .registers 4

    .prologue
    .line 662
    new-instance v0, Lcom/mediatek/ims/ImsAdapter$VaEvent;

    invoke-static {}, Lcom/mediatek/ims/ImsAdapter$Util;->getDefaultVoltePhoneId()I

    move-result v1

    const v2, 0xdbba3

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ims/ImsAdapter$VaEvent;-><init>(II)V

    .line 663
    .local v0, "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter;->mIO:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->writeEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)I

    .line 665
    return-void
.end method

.method private getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;
    .registers 2

    .prologue
    .line 656
    const-string/jumbo v0, "phoneEx"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 655
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/mediatek/ims/ImsAdapter;
    .registers 1

    .prologue
    .line 525
    sget-object v0, Lcom/mediatek/ims/ImsAdapter;->mInstance:Lcom/mediatek/ims/ImsAdapter;

    return-object v0
.end method

.method private invokeTrm()V
    .registers 7

    .prologue
    .line 678
    invoke-static {}, Lcom/mediatek/ims/ImsAdapter$Util;->getDefaultVoltePhoneId()I

    move-result v2

    .line 679
    .local v2, "trmPhoneId":I
    const-string/jumbo v3, "@M_[ImsAdapter]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "VaSocketIO(): recover Phone (trmPhoneId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :try_start_25
    invoke-direct {p0}, Lcom/mediatek/ims/ImsAdapter;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v3, v2, v4}, Lcom/mediatek/internal/telephony/ITelephonyEx;->setTrmForPhone(II)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2d} :catch_55
    .catch Ljava/lang/NullPointerException; {:try_start_25 .. :try_end_2d} :catch_2e

    .line 677
    :goto_2d
    return-void

    .line 685
    :catch_2e
    move-exception v0

    .line 687
    .local v0, "npex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "@M_[ImsAdapter]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "VaSocketIO: phone trm exception (npex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 683
    .end local v0    # "npex":Ljava/lang/NullPointerException;
    :catch_55
    move-exception v1

    .line 684
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v3, "@M_[ImsAdapter]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "VaSocketIO: phone trm exception (re: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d
.end method

.method public static requestIdToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "requestId"    # I

    .prologue
    .line 692
    sparse-switch p0, :sswitch_data_54

    .line 719
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 693
    :sswitch_8
    const-string/jumbo v0, "MSG_ID_WRAP_IMSPA_IMSM_INFORMATION_IND"

    return-object v0

    .line 694
    :sswitch_c
    const-string/jumbo v0, "MSG_ID_WRAP_IMSM_IMSPA_INFORMATION_REQ"

    return-object v0

    .line 695
    :sswitch_10
    const-string/jumbo v0, "MSG_ID_IMS_ENABLE_IND"

    return-object v0

    .line 696
    :sswitch_14
    const-string/jumbo v0, "MSG_ID_IMS_DISABLE_IND"

    return-object v0

    .line 698
    :sswitch_18
    const-string/jumbo v0, "MSG_ID_WRAP_IMSM_IMSPA_PDN_ACT_REQ"

    return-object v0

    .line 699
    :sswitch_1c
    const-string/jumbo v0, "MSG_ID_WRAP_IMSPA_IMSM_PDN_ACT_ACK_RESP"

    return-object v0

    .line 700
    :sswitch_20
    const-string/jumbo v0, "MSG_ID_WRAP_IMSPA_IMSM_PDN_ACT_REJ_RESP"

    return-object v0

    .line 701
    :sswitch_24
    const-string/jumbo v0, "MSG_ID_WRAP_IMSM_IMSPA_PDN_DEACT_REQ"

    return-object v0

    .line 702
    :sswitch_28
    const-string/jumbo v0, "MSG_ID_WRAP_IMSPA_IMSM_PDN_DEACT_ACK_RESP"

    return-object v0

    .line 703
    :sswitch_2c
    const-string/jumbo v0, "MSG_ID_WRAP_IMSPA_IMSM_PDN_DEACT_REJ_RESP"

    return-object v0

    .line 704
    :sswitch_30
    const-string/jumbo v0, "MSG_ID_WRAP_IMSPA_IMSM_PDN_DEACT_IND"

    return-object v0

    .line 707
    :sswitch_34
    const-string/jumbo v0, "MSG_ID_REQUEST_TIMER_CREATE"

    return-object v0

    .line 708
    :sswitch_38
    const-string/jumbo v0, "MSG_ID_REQUEST_TIMER_CANCEL"

    return-object v0

    .line 709
    :sswitch_3c
    const-string/jumbo v0, "MSG_ID_NOTIFY_TIMER_EXPIRY"

    return-object v0

    .line 712
    :sswitch_40
    const-string/jumbo v0, "MSG_ID_NOTIFY_XUI_IND"

    return-object v0

    .line 713
    :sswitch_44
    const-string/jumbo v0, "MSG_ID_NOTIFY_SS_PROGRESS_INDICATION"

    return-object v0

    .line 714
    :sswitch_48
    const-string/jumbo v0, "MSG_ID_REQUEST_PCSCF_DISCOVERY"

    return-object v0

    .line 715
    :sswitch_4c
    const-string/jumbo v0, "MSG_ID_RESPONSE_PCSCF_DISCOVERY"

    return-object v0

    .line 716
    :sswitch_50
    const-string/jumbo v0, "MSG_ID_REJECT_PCSCF_DISCOVERY"

    return-object v0

    .line 692
    :sswitch_data_54
    .sparse-switch
        0xdbba1 -> :sswitch_8
        0xdbba2 -> :sswitch_c
        0xdbba3 -> :sswitch_10
        0xdbba4 -> :sswitch_14
        0xdbba8 -> :sswitch_18
        0xdbba9 -> :sswitch_1c
        0xdbbaa -> :sswitch_20
        0xdbbab -> :sswitch_24
        0xdbbac -> :sswitch_28
        0xdbbad -> :sswitch_2c
        0xdbbae -> :sswitch_30
        0xdbc69 -> :sswitch_34
        0xdbc6a -> :sswitch_38
        0xdbc6b -> :sswitch_3c
        0xdbd31 -> :sswitch_40
        0xdbd32 -> :sswitch_44
        0xdbd33 -> :sswitch_48
        0xdbd34 -> :sswitch_4c
        0xdbd35 -> :sswitch_50
    .end sparse-switch
.end method


# virtual methods
.method public ImsServiceUp()V
    .registers 3

    .prologue
    .line 622
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/ims/ImsAdapter;->mImsServiceUp:Z

    .line 623
    const-string/jumbo v0, "@M_[ImsAdapter]"

    const-string/jumbo v1, "ImsServiceUp, start to ACTION_IMS_SERVICE_UP intent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    return-void
.end method

.method public disableImsAdapter(Z)V
    .registers 5
    .param p1, "isNormalDisable"    # Z

    .prologue
    .line 563
    const-string/jumbo v0, "@M_[ImsAdapter]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "disableImsAdapter(): misImsAdapterEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 564
    sget-boolean v2, Lcom/mediatek/ims/ImsAdapter;->misImsAdapterEnabled:Z

    .line 563
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 564
    const-string/jumbo v2, ", isNormalDisable="

    .line 563
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter;->ImsEnabledThreadLock:Ljava/lang/Object;

    monitor-enter v1

    .line 568
    :try_start_2a
    sget-boolean v0, Lcom/mediatek/ims/ImsAdapter;->misImsAdapterEnabled:Z

    if-eqz v0, :cond_39

    .line 569
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/ims/ImsAdapter;->misImsAdapterEnabled:Z

    .line 571
    invoke-direct {p0}, Lcom/mediatek/ims/ImsAdapter;->disableImsStack()V

    .line 572
    sget-object v0, Lcom/mediatek/ims/ImsAdapter;->mImsEventDispatcher:Lcom/mediatek/ims/ImsEventDispatcher;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsEventDispatcher;->disableRequest()V
    :try_end_39
    .catchall {:try_start_2a .. :try_end_39} :catchall_3b

    :cond_39
    monitor-exit v1

    .line 561
    return-void

    .line 567
    :catchall_3b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public enableImsAdapter()V
    .registers 5

    .prologue
    .line 529
    const-string/jumbo v0, "@M_[ImsAdapter]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enableImsAdapter: misImsAdapterEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 530
    sget-boolean v2, Lcom/mediatek/ims/ImsAdapter;->misImsAdapterEnabled:Z

    .line 529
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter;->ImsEnabledThreadLock:Ljava/lang/Object;

    monitor-enter v1

    .line 533
    :try_start_1f
    sget-boolean v0, Lcom/mediatek/ims/ImsAdapter;->misImsAdapterEnabled:Z

    if-nez v0, :cond_4c

    .line 534
    iget-object v0, p0, Lcom/mediatek/ims/ImsAdapter;->mIO:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->connectSocket()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 535
    const-string/jumbo v0, "@M_[ImsAdapter]"

    const-string/jumbo v2, "enalbeImsAdapter(): connectSocket success"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    sget-object v0, Lcom/mediatek/ims/ImsAdapter;->mImsEventDispatcher:Lcom/mediatek/ims/ImsEventDispatcher;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsEventDispatcher;->enableRequest()V

    .line 540
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/ims/ImsAdapter;->misImsAdapterEnabled:Z

    .line 541
    iget-object v0, p0, Lcom/mediatek/ims/ImsAdapter;->mIO:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    iget-object v2, v0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->VaSocketIOThreadLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_41
    .catchall {:try_start_1f .. :try_end_41} :catchall_51

    .line 542
    :try_start_41
    iget-object v0, p0, Lcom/mediatek/ims/ImsAdapter;->mIO:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    iget-object v0, v0, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->VaSocketIOThreadLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_4e

    :try_start_48
    monitor-exit v2

    .line 545
    invoke-direct {p0}, Lcom/mediatek/ims/ImsAdapter;->enableImsStack()V
    :try_end_4c
    .catchall {:try_start_48 .. :try_end_4c} :catchall_51

    :cond_4c
    :goto_4c
    monitor-exit v1

    .line 528
    return-void

    .line 541
    :catchall_4e
    move-exception v0

    :try_start_4f
    monitor-exit v2

    throw v0
    :try_end_51
    .catchall {:try_start_4f .. :try_end_51} :catchall_51

    .line 532
    :catchall_51
    move-exception v0

    monitor-exit v1

    throw v0

    .line 547
    :cond_54
    :try_start_54
    const-string/jumbo v0, "@M_[ImsAdapter]"

    const-string/jumbo v2, "enableImsAdapter(): connectSocket error"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ImsAdapter;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 551
    const-wide/16 v2, 0x1f4

    .line 549
    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/ims/ImsAdapter;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_67
    .catchall {:try_start_54 .. :try_end_67} :catchall_51

    goto :goto_4c
.end method

.method public getImsAdapterEnable()Z
    .registers 2

    .prologue
    .line 558
    sget-boolean v0, Lcom/mediatek/ims/ImsAdapter;->misImsAdapterEnabled:Z

    return v0
.end method

.method public getImsServiceUp()Z
    .registers 2

    .prologue
    .line 631
    sget-boolean v0, Lcom/mediatek/ims/ImsAdapter;->mImsServiceUp:Z

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 579
    const-string/jumbo v0, "@M_[ImsAdapter]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 580
    const-string/jumbo v2, ", misImsAdapterEnabled = "

    .line 579
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 580
    sget-boolean v2, Lcom/mediatek/ims/ImsAdapter;->misImsAdapterEnabled:Z

    .line 579
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_80

    .line 606
    const-string/jumbo v0, "@M_[ImsAdapter]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage receive unsupported message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :goto_4a
    return-void

    .line 585
    :pswitch_4b
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter;->ImsEnabledThreadLock:Ljava/lang/Object;

    monitor-enter v1

    .line 586
    :try_start_4e
    sget-boolean v0, Lcom/mediatek/ims/ImsAdapter;->misImsAdapterEnabled:Z

    if-eqz v0, :cond_63

    .line 587
    iget-object v0, p0, Lcom/mediatek/ims/ImsAdapter;->mIO:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsAdapter$VaSocketIO;->connectSocket()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 588
    const-string/jumbo v0, "@M_[ImsAdapter]"

    const-string/jumbo v2, "RETRY_CONNECT_SOCKET: connectSocket success"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catchall {:try_start_4e .. :try_end_63} :catchall_70

    :cond_63
    :goto_63
    monitor-exit v1

    goto :goto_4a

    .line 593
    :cond_65
    const/4 v0, 0x1

    :try_start_66
    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ImsAdapter;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 594
    const-wide/16 v2, 0x1f4

    .line 592
    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/ims/ImsAdapter;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_6f
    .catchall {:try_start_66 .. :try_end_6f} :catchall_70

    goto :goto_63

    .line 585
    :catchall_70
    move-exception v0

    monitor-exit v1

    throw v0

    .line 601
    :pswitch_73
    const-string/jumbo v0, "@M_[ImsAdapter]"

    const-string/jumbo v1, "RETRY_IMS_ENABLE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsAdapter;->enableImsAdapter()V

    goto :goto_4a

    .line 582
    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_4b
        :pswitch_73
    .end packed-switch
.end method

.method public sendTestEvent(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .registers 3
    .param p1, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .prologue
    .line 618
    sget-object v0, Lcom/mediatek/ims/ImsAdapter;->mImsEventDispatcher:Lcom/mediatek/ims/ImsEventDispatcher;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsEventDispatcher;->dispatchCallback(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    .line 612
    return-void
.end method
