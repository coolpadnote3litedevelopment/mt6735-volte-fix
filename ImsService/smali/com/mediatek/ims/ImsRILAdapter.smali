.class public Lcom/mediatek/ims/ImsRILAdapter;
.super Lcom/mediatek/ims/ImsBaseCommands;
.source "ImsRILAdapter.java"

# interfaces
.implements Lcom/mediatek/ims/ImsCommandsInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;,
        Lcom/mediatek/ims/ImsRILAdapter$ImsRILSender;,
        Lcom/mediatek/ims/ImsRILAdapter$ImsRILReceiver;,
        Lcom/mediatek/ims/ImsRILAdapter$1;
    }
.end annotation


# static fields
.field private static final DEFAULT_WAKE_LOCK_TIMEOUT:I = 0xea60

.field private static final EVENT_AT_CMD_DONE:I = 0x64

.field static final EVENT_SEND:I = 0x1

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x2

.field static final IMS_RILA_LOGD:Z = true

.field static final IMS_RILA_LOG_TAG:Ljava/lang/String; = "IMS_RILA"

.field private static final IMS_VIDEO_CALL:I = 0x15

.field private static final IMS_VIDEO_CONF:I = 0x17

.field private static final IMS_VIDEO_CONF_PARTS:I = 0x19

.field private static final IMS_VOICE_CALL:I = 0x14

.field private static final IMS_VOICE_CONF:I = 0x16

.field private static final IMS_VOICE_CONF_PARTS:I = 0x18

.field private static final INVALID_CALL_MODE:I = 0xff

.field private static final MAX_BYTE_COUNT:I = 0x100

.field static final MAX_CONNECTIONS:I = 0x7

.field static final PROPERTY_WAKE_LOCK_TIMEOUT:Ljava/lang/String; = "ro.ril.wake_lock_timeout"

.field static final RESPONSE_SOLICITED:I = 0x0

.field static final RESPONSE_UNSOLICITED:I = 0x1

.field static final RIL_MAX_COMMAND_BYTES:I = 0x2000

.field static final SOCKET_OPEN_RETRY_MILLIS:I = 0xfa0


# instance fields
.field private mCallConnections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mediatek/ims/ImsCallInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mConferenceCallDialInfo:Lcom/mediatek/ims/ConferenceCallDialInfo;

.field mContext:Landroid/content/Context;

.field private mDtmfReqQueue:Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;

.field private mHandler:Landroid/os/Handler;

.field private mMoCall:Lcom/mediatek/ims/MoCallInfo;

.field mReceiver:Lcom/mediatek/ims/ImsRILAdapter$ImsRILReceiver;

.field mReceiverThread:Ljava/lang/Thread;

.field mRequestList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/mediatek/ims/RILRequest;",
            ">;"
        }
    .end annotation
.end field

.field mSender:Lcom/mediatek/ims/ImsRILAdapter$ImsRILSender;

.field mSenderThread:Landroid/os/HandlerThread;

.field mSocket:Landroid/net/LocalSocket;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mWakeLockCount:I

.field final mWakeLockTimeout:I


# direct methods
.method static synthetic -get0(Lcom/mediatek/ims/ImsRILAdapter;)Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;
    .registers 2

    iget-object v0, p0, Lcom/mediatek/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/mediatek/ims/ImsRILAdapter;)Z
    .registers 2

    invoke-direct {p0}, Lcom/mediatek/ims/ImsRILAdapter;->clearWakeLock()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/mediatek/ims/ImsRILAdapter;I)Lcom/mediatek/ims/RILRequest;
    .registers 3
    .param p1, "serial"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->findAndRemoveRequestFromList(I)Lcom/mediatek/ims/RILRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Ljava/io/InputStream;[B)I
    .registers 3
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "buffer"    # [B

    .prologue
    invoke-static {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->readRilMessage(Ljava/io/InputStream;[B)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/mediatek/ims/ImsRILAdapter;)V
    .registers 1

    invoke-direct {p0}, Lcom/mediatek/ims/ImsRILAdapter;->decrementWakeLock()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/mediatek/ims/ImsRILAdapter;Landroid/os/AsyncResult;)V
    .registers 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->handleAtCmdResponseAndDial(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/mediatek/ims/ImsRILAdapter;Landroid/os/Parcel;)V
    .registers 2
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->processResponse(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/mediatek/ims/ImsRILAdapter;Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 447
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsBaseCommands;-><init>(Landroid/content/Context;)V

    .line 313
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/mediatek/ims/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    .line 347
    iput-object v3, p0, Lcom/mediatek/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/ims/MoCallInfo;

    .line 348
    iput-object v3, p0, Lcom/mediatek/ims/ImsRILAdapter;->mConferenceCallDialInfo:Lcom/mediatek/ims/ConferenceCallDialInfo;

    .line 353
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/mediatek/ims/ImsRILAdapter;->mCallConnections:Ljava/util/HashMap;

    .line 355
    new-instance v2, Lcom/mediatek/ims/ImsRILAdapter$1;

    invoke-direct {v2, p0}, Lcom/mediatek/ims/ImsRILAdapter$1;-><init>(Lcom/mediatek/ims/ImsRILAdapter;)V

    iput-object v2, p0, Lcom/mediatek/ims/ImsRILAdapter;->mHandler:Landroid/os/Handler;

    .line 442
    new-instance v2, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-direct {v2, p0}, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;-><init>(Lcom/mediatek/ims/ImsRILAdapter;)V

    iput-object v2, p0, Lcom/mediatek/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;

    .line 448
    iput-object p1, p0, Lcom/mediatek/ims/ImsRILAdapter;->mContext:Landroid/content/Context;

    .line 449
    const-string/jumbo v2, "IMS_RILA"

    const-string/jumbo v3, "IMS:ImsRILAdapter constructor"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const-string/jumbo v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 452
    .local v1, "pm":Landroid/os/PowerManager;
    const-string/jumbo v2, "IMS_RILA"

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 453
    iget-object v2, p0, Lcom/mediatek/ims/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 454
    const-string/jumbo v2, "ro.ril.wake_lock_timeout"

    .line 455
    const v3, 0xea60

    .line 454
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/ims/ImsRILAdapter;->mWakeLockTimeout:I

    .line 456
    iput v4, p0, Lcom/mediatek/ims/ImsRILAdapter;->mWakeLockCount:I

    .line 459
    new-instance v2, Landroid/os/HandlerThread;

    const-string/jumbo v3, "ImsRILSender"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/mediatek/ims/ImsRILAdapter;->mSenderThread:Landroid/os/HandlerThread;

    .line 460
    iget-object v2, p0, Lcom/mediatek/ims/ImsRILAdapter;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 461
    iget-object v2, p0, Lcom/mediatek/ims/ImsRILAdapter;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 462
    .local v0, "looper":Landroid/os/Looper;
    new-instance v2, Lcom/mediatek/ims/ImsRILAdapter$ImsRILSender;

    invoke-direct {v2, p0, v0}, Lcom/mediatek/ims/ImsRILAdapter$ImsRILSender;-><init>(Lcom/mediatek/ims/ImsRILAdapter;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/mediatek/ims/ImsRILAdapter;->mSender:Lcom/mediatek/ims/ImsRILAdapter$ImsRILSender;

    .line 465
    new-instance v2, Lcom/mediatek/ims/ImsRILAdapter$ImsRILReceiver;

    invoke-direct {v2, p0}, Lcom/mediatek/ims/ImsRILAdapter$ImsRILReceiver;-><init>(Lcom/mediatek/ims/ImsRILAdapter;)V

    iput-object v2, p0, Lcom/mediatek/ims/ImsRILAdapter;->mReceiver:Lcom/mediatek/ims/ImsRILAdapter$ImsRILReceiver;

    .line 466
    new-instance v2, Ljava/lang/Thread;

    iget-object v3, p0, Lcom/mediatek/ims/ImsRILAdapter;->mReceiver:Lcom/mediatek/ims/ImsRILAdapter$ImsRILReceiver;

    const-string/jumbo v4, "ImsRILReceiver"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/mediatek/ims/ImsRILAdapter;->mReceiverThread:Ljava/lang/Thread;

    .line 467
    iget-object v2, p0, Lcom/mediatek/ims/ImsRILAdapter;->mReceiverThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 446
    return-void
.end method

.method private acquireWakeLock()V
    .registers 7

    .prologue
    .line 1320
    iget-object v2, p0, Lcom/mediatek/ims/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 1321
    :try_start_3
    iget-object v1, p0, Lcom/mediatek/ims/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1322
    iget v1, p0, Lcom/mediatek/ims/ImsRILAdapter;->mWakeLockCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/ims/ImsRILAdapter;->mWakeLockCount:I

    .line 1324
    iget-object v1, p0, Lcom/mediatek/ims/ImsRILAdapter;->mSender:Lcom/mediatek/ims/ImsRILAdapter$ImsRILSender;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/mediatek/ims/ImsRILAdapter$ImsRILSender;->removeMessages(I)V

    .line 1325
    iget-object v1, p0, Lcom/mediatek/ims/ImsRILAdapter;->mSender:Lcom/mediatek/ims/ImsRILAdapter$ImsRILSender;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/mediatek/ims/ImsRILAdapter$ImsRILSender;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1326
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/ims/ImsRILAdapter;->mSender:Lcom/mediatek/ims/ImsRILAdapter$ImsRILSender;

    iget v3, p0, Lcom/mediatek/ims/ImsRILAdapter;->mWakeLockTimeout:I

    int-to-long v4, v3

    invoke-virtual {v1, v0, v4, v5}, Lcom/mediatek/ims/ImsRILAdapter$ImsRILSender;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_25

    monitor-exit v2

    .line 1319
    return-void

    .line 1320
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_25
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private checkMoMSSubPermission(Ljava/lang/String;)Z
    .registers 9
    .param p1, "subPermission"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 2645
    :try_start_1
    const-string/jumbo v4, "mobile"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2646
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/mom/IMobileManagerService;

    move-result-object v2

    .line 2647
    .local v2, "mMobileManager":Lcom/mediatek/common/mom/IMobileManagerService;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-interface {v2, p1, v4}, Lcom/mediatek/common/mom/IMobileManagerService;->checkPermission(Ljava/lang/String;I)I

    move-result v3

    .line 2648
    .local v3, "result":I
    if-eqz v3, :cond_36

    .line 2649
    const-string/jumbo v4, "[Error]Subpermission is not granted!!"

    invoke-direct {p0, v4}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_1d

    .line 2650
    return v6

    .line 2652
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v2    # "mMobileManager":Lcom/mediatek/common/mom/IMobileManagerService;
    .end local v3    # "result":I
    :catch_1d
    move-exception v1

    .line 2653
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[Error]Failed to chcek permission: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2654
    return v6

    .line 2657
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "binder":Landroid/os/IBinder;
    .restart local v2    # "mMobileManager":Lcom/mediatek/common/mom/IMobileManagerService;
    .restart local v3    # "result":I
    :cond_36
    const/4 v4, 0x1

    return v4
.end method

.method private clearWakeLock()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 1344
    iget-object v1, p0, Lcom/mediatek/ims/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 1345
    :try_start_4
    iget v0, p0, Lcom/mediatek/ims/ImsRILAdapter;->mWakeLockCount:I

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/mediatek/ims/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_46

    move-result v0

    if-nez v0, :cond_12

    monitor-exit v1

    return v2

    .line 1346
    :cond_12
    :try_start_12
    const-string/jumbo v0, "IMS_RILA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NOTE: mWakeLockCount is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/ims/ImsRILAdapter;->mWakeLockCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1347
    const-string/jumbo v3, "at time of clearing"

    .line 1346
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ims/ImsRILAdapter;->mWakeLockCount:I

    .line 1349
    iget-object v0, p0, Lcom/mediatek/ims/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1350
    iget-object v0, p0, Lcom/mediatek/ims/ImsRILAdapter;->mSender:Lcom/mediatek/ims/ImsRILAdapter$ImsRILSender;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ImsRILAdapter$ImsRILSender;->removeMessages(I)V
    :try_end_43
    .catchall {:try_start_12 .. :try_end_43} :catchall_46

    .line 1351
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    .line 1344
    :catchall_46
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private decrementWakeLock()V
    .registers 4

    .prologue
    .line 1331
    iget-object v1, p0, Lcom/mediatek/ims/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 1332
    :try_start_3
    iget v0, p0, Lcom/mediatek/ims/ImsRILAdapter;->mWakeLockCount:I

    const/4 v2, 0x1

    if-le v0, v2, :cond_10

    .line 1333
    iget v0, p0, Lcom/mediatek/ims/ImsRILAdapter;->mWakeLockCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/mediatek/ims/ImsRILAdapter;->mWakeLockCount:I
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_1f

    :goto_e
    monitor-exit v1

    .line 1330
    return-void

    .line 1335
    :cond_10
    const/4 v0, 0x0

    :try_start_11
    iput v0, p0, Lcom/mediatek/ims/ImsRILAdapter;->mWakeLockCount:I

    .line 1336
    iget-object v0, p0, Lcom/mediatek/ims/ImsRILAdapter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1337
    iget-object v0, p0, Lcom/mediatek/ims/ImsRILAdapter;->mSender:Lcom/mediatek/ims/ImsRILAdapter$ImsRILSender;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ImsRILAdapter$ImsRILSender;->removeMessages(I)V
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_1f

    goto :goto_e

    .line 1331
    :catchall_1f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized executeCommandResponse(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "atCmdLine"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 2582
    :try_start_1
    const-string/jumbo v0, ""

    .line 2583
    .local v0, "atCmdResult":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    .line 2584
    .local v1, "cmd":[Ljava/lang/String;
    const/4 v3, 0x0

    aput-object p1, v1, v3

    .line 2585
    const-string/jumbo v3, ""

    const/4 v4, 0x1

    aput-object v3, v1, v4

    .line 2587
    const-string/jumbo v3, "IMS_RILA"

    const-string/jumbo v4, "IMS: invokeOemRilRequestRaw() "

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_2b

    .line 2591
    :try_start_19
    iget-object v3, p0, Lcom/mediatek/ims/ImsRILAdapter;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 2590
    invoke-virtual {p0, v1, v3}, Lcom/mediatek/ims/ImsRILAdapter;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    :try_end_24
    .catch Ljava/lang/NullPointerException; {:try_start_19 .. :try_end_24} :catch_26
    .catchall {:try_start_19 .. :try_end_24} :catchall_2b

    :goto_24
    monitor-exit p0

    .line 2595
    return-object v0

    .line 2592
    :catch_26
    move-exception v2

    .line 2593
    .local v2, "ex":Ljava/lang/NullPointerException;
    :try_start_27
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2b

    goto :goto_24

    .end local v0    # "atCmdResult":Ljava/lang/String;
    .end local v1    # "cmd":[Ljava/lang/String;
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catchall_2b
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private findAndRemoveRequestFromList(I)Lcom/mediatek/ims/RILRequest;
    .registers 6
    .param p1, "serial"    # I

    .prologue
    .line 1610
    const/4 v1, 0x0

    .line 1611
    .local v1, "rr":Lcom/mediatek/ims/RILRequest;
    iget-object v3, p0, Lcom/mediatek/ims/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v3

    .line 1612
    :try_start_4
    iget-object v2, p0, Lcom/mediatek/ims/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/mediatek/ims/RILRequest;

    move-object v1, v0

    .line 1613
    .local v1, "rr":Lcom/mediatek/ims/RILRequest;
    if-eqz v1, :cond_15

    .line 1614
    iget-object v2, p0, Lcom/mediatek/ims/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_17

    :cond_15
    monitor-exit v3

    .line 1618
    return-object v1

    .line 1611
    .end local v1    # "rr":Lcom/mediatek/ims/RILRequest;
    :catchall_17
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private getRadioStateFromInt(I)Lcom/mediatek/ims/ImsCommandsInterface$RadioState;
    .registers 6
    .param p1, "stateInt"    # I

    .prologue
    .line 2910
    sparse-switch p1, :sswitch_data_26

    .line 2916
    new-instance v1, Ljava/lang/RuntimeException;

    .line 2917
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unrecognized IMS_RIL_RadioState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2916
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2911
    :sswitch_1d
    sget-object v0, Lcom/mediatek/ims/ImsCommandsInterface$RadioState;->RADIO_OFF:Lcom/mediatek/ims/ImsCommandsInterface$RadioState;

    .line 2919
    .local v0, "state":Lcom/mediatek/ims/ImsCommandsInterface$RadioState;
    :goto_1f
    return-object v0

    .line 2912
    .end local v0    # "state":Lcom/mediatek/ims/ImsCommandsInterface$RadioState;
    :sswitch_20
    sget-object v0, Lcom/mediatek/ims/ImsCommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/mediatek/ims/ImsCommandsInterface$RadioState;

    .restart local v0    # "state":Lcom/mediatek/ims/ImsCommandsInterface$RadioState;
    goto :goto_1f

    .line 2913
    .end local v0    # "state":Lcom/mediatek/ims/ImsCommandsInterface$RadioState;
    :sswitch_23
    sget-object v0, Lcom/mediatek/ims/ImsCommandsInterface$RadioState;->RADIO_ON:Lcom/mediatek/ims/ImsCommandsInterface$RadioState;

    .restart local v0    # "state":Lcom/mediatek/ims/ImsCommandsInterface$RadioState;
    goto :goto_1f

    .line 2910
    :sswitch_data_26
    .sparse-switch
        0x0 -> :sswitch_1d
        0x1 -> :sswitch_20
        0xa -> :sswitch_23
    .end sparse-switch
.end method

.method private handleAtCmdResponseAndDial(Landroid/os/AsyncResult;)V
    .registers 8
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v5, 0x0

    .line 2600
    iget-object v1, p0, Lcom/mediatek/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/ims/MoCallInfo;

    if-nez v1, :cond_13

    iget-object v1, p0, Lcom/mediatek/ims/ImsRILAdapter;->mConferenceCallDialInfo:Lcom/mediatek/ims/ConferenceCallDialInfo;

    if-nez v1, :cond_13

    .line 2601
    const-string/jumbo v1, "IMS_RILA"

    const-string/jumbo v2, "IMS: mMoCall is null when calling"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2602
    return-void

    .line 2606
    :cond_13
    iget-object v1, p0, Lcom/mediatek/ims/ImsRILAdapter;->mConferenceCallDialInfo:Lcom/mediatek/ims/ConferenceCallDialInfo;

    if-eqz v1, :cond_2f

    .line 2607
    iget-object v1, p0, Lcom/mediatek/ims/ImsRILAdapter;->mConferenceCallDialInfo:Lcom/mediatek/ims/ConferenceCallDialInfo;

    iget-object v1, v1, Lcom/mediatek/ims/ConferenceCallDialInfo;->mParticipants:[Ljava/lang/String;

    .line 2608
    iget-object v2, p0, Lcom/mediatek/ims/ImsRILAdapter;->mConferenceCallDialInfo:Lcom/mediatek/ims/ConferenceCallDialInfo;

    iget v2, v2, Lcom/mediatek/ims/ConferenceCallDialInfo;->mClirMode:I

    .line 2609
    iget-object v3, p0, Lcom/mediatek/ims/ImsRILAdapter;->mConferenceCallDialInfo:Lcom/mediatek/ims/ConferenceCallDialInfo;

    iget-boolean v3, v3, Lcom/mediatek/ims/ConferenceCallDialInfo;->mIsVideoCall:Z

    .line 2610
    iget-object v4, p0, Lcom/mediatek/ims/ImsRILAdapter;->mConferenceCallDialInfo:Lcom/mediatek/ims/ConferenceCallDialInfo;

    iget-object v4, v4, Lcom/mediatek/ims/ConferenceCallDialInfo;->mResult:Landroid/os/Message;

    .line 2607
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/mediatek/ims/ImsRILAdapter;->conferenceDial([Ljava/lang/String;IZLandroid/os/Message;)V

    .line 2628
    :goto_2a
    iput-object v5, p0, Lcom/mediatek/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/ims/MoCallInfo;

    .line 2629
    iput-object v5, p0, Lcom/mediatek/ims/ImsRILAdapter;->mConferenceCallDialInfo:Lcom/mediatek/ims/ConferenceCallDialInfo;

    .line 2598
    return-void

    .line 2612
    :cond_2f
    iget-object v1, p0, Lcom/mediatek/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/ims/MoCallInfo;

    iget-boolean v1, v1, Lcom/mediatek/ims/MoCallInfo;->mIsVideoCall:Z

    if-eqz v1, :cond_45

    .line 2613
    iget-object v1, p0, Lcom/mediatek/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/ims/MoCallInfo;

    iget-object v1, v1, Lcom/mediatek/ims/MoCallInfo;->mCallee:Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/ims/MoCallInfo;

    iget v2, v2, Lcom/mediatek/ims/MoCallInfo;->mClirMode:I

    iget-object v3, p0, Lcom/mediatek/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/ims/MoCallInfo;

    iget-object v3, v3, Lcom/mediatek/ims/MoCallInfo;->mResult:Landroid/os/Message;

    invoke-virtual {p0, v1, v2, v5, v3}, Lcom/mediatek/ims/ImsRILAdapter;->vtDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    goto :goto_2a

    .line 2615
    :cond_45
    iget-object v1, p0, Lcom/mediatek/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/ims/MoCallInfo;

    iget-boolean v1, v1, Lcom/mediatek/ims/MoCallInfo;->mIsEmergency:Z

    if-eqz v1, :cond_66

    .line 2617
    iget-object v1, p0, Lcom/mediatek/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/ims/MoCallInfo;

    iget-object v1, v1, Lcom/mediatek/ims/MoCallInfo;->mCallee:Ljava/lang/String;

    invoke-static {v1}, Lcom/mediatek/ims/compat/ImsCompat;->getServiceCategoryFromEcc(Ljava/lang/String;)I

    move-result v0

    .line 2618
    .local v0, "serviceCategory":I
    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ImsRILAdapter;->setEccServiceCategory(I)V

    .line 2619
    iget-object v1, p0, Lcom/mediatek/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/ims/MoCallInfo;

    iget-object v1, v1, Lcom/mediatek/ims/MoCallInfo;->mCallee:Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/ims/MoCallInfo;

    iget v2, v2, Lcom/mediatek/ims/MoCallInfo;->mClirMode:I

    .line 2620
    iget-object v3, p0, Lcom/mediatek/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/ims/MoCallInfo;

    iget-object v3, v3, Lcom/mediatek/ims/MoCallInfo;->mResult:Landroid/os/Message;

    .line 2619
    invoke-virtual {p0, v1, v2, v5, v3}, Lcom/mediatek/ims/ImsRILAdapter;->emergencyDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    goto :goto_2a

    .line 2622
    .end local v0    # "serviceCategory":I
    :cond_66
    iget-object v1, p0, Lcom/mediatek/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/ims/MoCallInfo;

    iget-object v1, v1, Lcom/mediatek/ims/MoCallInfo;->mCallee:Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/ims/MoCallInfo;

    iget v2, v2, Lcom/mediatek/ims/MoCallInfo;->mClirMode:I

    iget-object v3, p0, Lcom/mediatek/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/ims/MoCallInfo;

    iget-object v3, v3, Lcom/mediatek/ims/MoCallInfo;->mResult:Landroid/os/Message;

    invoke-virtual {p0, v1, v2, v3}, Lcom/mediatek/ims/ImsRILAdapter;->dial(Ljava/lang/String;ILandroid/os/Message;)V

    goto :goto_2a
.end method

.method private handleChldRelatedRequest(Lcom/mediatek/ims/RILRequest;)V
    .registers 11
    .param p1, "rr"    # Lcom/mediatek/ims/RILRequest;

    .prologue
    const/4 v8, 0x1

    .line 2668
    iget-object v6, p0, Lcom/mediatek/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;

    monitor-enter v6

    .line 2669
    :try_start_4
    iget-object v5, p0, Lcom/mediatek/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v5}, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->size()I

    move-result v2

    .line 2671
    .local v2, "queueSize":I
    if-lez v2, :cond_a1

    .line 2672
    iget-object v5, p0, Lcom/mediatek/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v5}, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->get()Lcom/mediatek/ims/RILRequest;

    move-result-object v3

    .line 2673
    .local v3, "rr2":Lcom/mediatek/ims/RILRequest;
    iget v5, v3, Lcom/mediatek/ims/RILRequest;->mRequest:I

    const/16 v7, 0x31

    if-ne v5, v7, :cond_8f

    .line 2676
    const-string/jumbo v5, "DTMF queue isn\'t 0, send stop dtmf and pending switch"

    invoke-direct {p0, v5}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2678
    if-le v2, v8, :cond_4a

    .line 2679
    const/4 v1, 0x2

    .line 2684
    .local v1, "j":I
    :goto_21
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "queue size  "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/mediatek/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v7}, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2686
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_40
    if-lt v0, v1, :cond_4c

    .line 2687
    iget-object v5, p0, Lcom/mediatek/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v5, v0}, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->remove(I)V

    .line 2686
    add-int/lit8 v0, v0, -0x1

    goto :goto_40

    .line 2682
    .end local v0    # "i":I
    .end local v1    # "j":I
    :cond_4a
    const/4 v1, 0x1

    .restart local v1    # "j":I
    goto :goto_21

    .line 2690
    .restart local v0    # "i":I
    :cond_4c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "queue size  after "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/mediatek/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v7}, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2692
    iget-object v5, p0, Lcom/mediatek/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v5}, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->size()I

    move-result v5

    if-ne v5, v8, :cond_88

    .line 2694
    const/16 v5, 0x32

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/mediatek/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/RILRequest;

    move-result-object v4

    .line 2695
    .local v4, "rr3":Lcom/mediatek/ims/RILRequest;
    const-string/jumbo v5, "add dummy stop dtmf request"

    invoke-direct {p0, v5}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2696
    iget-object v5, p0, Lcom/mediatek/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v5}, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->stop()V

    .line 2697
    iget-object v5, p0, Lcom/mediatek/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v5, v4}, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->add(Lcom/mediatek/ims/RILRequest;)V

    .line 2710
    .end local v1    # "j":I
    .end local v4    # "rr3":Lcom/mediatek/ims/RILRequest;
    :cond_88
    iget-object v5, p0, Lcom/mediatek/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v5, p1}, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->setPendingRequest(Lcom/mediatek/ims/RILRequest;)V
    :try_end_8d
    .catchall {:try_start_4 .. :try_end_8d} :catchall_b0

    .end local v0    # "i":I
    .end local v3    # "rr2":Lcom/mediatek/ims/RILRequest;
    :goto_8d
    monitor-exit v6

    .line 2667
    return-void

    .line 2703
    .restart local v3    # "rr2":Lcom/mediatek/ims/RILRequest;
    :cond_8f
    :try_start_8f
    const-string/jumbo v5, "DTMF queue isn\'t 0, first request is STOP, penging switch"

    invoke-direct {p0, v5}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2706
    add-int/lit8 v0, v2, -0x1

    .restart local v0    # "i":I
    :goto_97
    if-lt v0, v8, :cond_88

    .line 2707
    iget-object v5, p0, Lcom/mediatek/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v5, v0}, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->remove(I)V

    .line 2706
    add-int/lit8 v0, v0, -0x1

    goto :goto_97

    .line 2712
    .end local v0    # "i":I
    .end local v3    # "rr2":Lcom/mediatek/ims/RILRequest;
    :cond_a1
    const-string/jumbo v5, "DTMF queue is 0, send switch Immediately"

    invoke-direct {p0, v5}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2713
    iget-object v5, p0, Lcom/mediatek/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v5}, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->setSendChldRequest()V

    .line 2714
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->send(Lcom/mediatek/ims/RILRequest;)V
    :try_end_af
    .catchall {:try_start_8f .. :try_end_af} :catchall_b0

    goto :goto_8d

    .line 2668
    .end local v2    # "queueSize":I
    :catchall_b0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method private processResponse(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 1373
    const-string/jumbo v2, "IMS_RILA"

    const-string/jumbo v3, " IMS processResponse()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1376
    .local v1, "type":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    .line 1377
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->processUnsolicited(Landroid/os/Parcel;)V

    .line 1371
    :cond_13
    :goto_13
    return-void

    .line 1378
    :cond_14
    if-nez v1, :cond_13

    .line 1379
    const-string/jumbo v2, "IMS_RILA"

    const-string/jumbo v3, "IMS: receive the RESPONSE_SOLICITED !!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->processSolicited(Landroid/os/Parcel;)Lcom/mediatek/ims/RILRequest;

    move-result-object v0

    .line 1381
    .local v0, "rr":Lcom/mediatek/ims/RILRequest;
    if-eqz v0, :cond_13

    .line 1382
    invoke-virtual {v0}, Lcom/mediatek/ims/RILRequest;->release()V

    .line 1383
    invoke-direct {p0}, Lcom/mediatek/ims/ImsRILAdapter;->decrementWakeLock()V

    goto :goto_13
.end method

.method private processSolicited(Landroid/os/Parcel;)Lcom/mediatek/ims/RILRequest;
    .registers 13
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v10, 0x0

    .line 1391
    const/4 v1, 0x0

    .line 1393
    .local v1, "found":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1394
    .local v5, "serial":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1398
    .local v0, "error":I
    invoke-direct {p0, v5}, Lcom/mediatek/ims/ImsRILAdapter;->findAndRemoveRequestFromList(I)Lcom/mediatek/ims/RILRequest;

    move-result-object v3

    .line 1400
    .local v3, "rr":Lcom/mediatek/ims/RILRequest;
    if-nez v3, :cond_36

    .line 1401
    const-string/jumbo v7, "IMS_RILA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unexpected solicited response! sn: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1402
    const-string/jumbo v9, " error: "

    .line 1401
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    return-object v10

    .line 1408
    :cond_36
    iget v7, v3, Lcom/mediatek/ims/RILRequest;->mRequest:I

    const/16 v8, 0x31

    if-eq v7, v8, :cond_42

    .line 1409
    iget v7, v3, Lcom/mediatek/ims/RILRequest;->mRequest:I

    const/16 v8, 0x32

    if-ne v7, v8, :cond_9e

    .line 1410
    :cond_42
    iget-object v8, p0, Lcom/mediatek/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;

    monitor-enter v8

    .line 1411
    :try_start_45
    iget-object v7, p0, Lcom/mediatek/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v7, v3}, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->remove(Lcom/mediatek/ims/RILRequest;)V

    .line 1412
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "remove first item in dtmf queue done, size = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/mediatek/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v9}, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->size()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1413
    iget-object v7, p0, Lcom/mediatek/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v7}, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->size()I

    move-result v7

    if-lez v7, :cond_11e

    .line 1414
    iget-object v7, p0, Lcom/mediatek/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v7}, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->get()Lcom/mediatek/ims/RILRequest;

    move-result-object v4

    .line 1415
    .local v4, "rr2":Lcom/mediatek/ims/RILRequest;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/mediatek/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, "> "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, v4, Lcom/mediatek/ims/RILRequest;->mRequest:I

    invoke-static {v9}, Lcom/mediatek/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1416
    invoke-direct {p0, v4}, Lcom/mediatek/ims/ImsRILAdapter;->send(Lcom/mediatek/ims/RILRequest;)V
    :try_end_9d
    .catchall {:try_start_45 .. :try_end_9d} :catchall_142

    .end local v4    # "rr2":Lcom/mediatek/ims/RILRequest;
    :cond_9d
    :goto_9d
    monitor-exit v8

    .line 1428
    :cond_9e
    const/4 v2, 0x0

    .line 1431
    .local v2, "ret":Ljava/lang/Object;
    iget v7, v3, Lcom/mediatek/ims/RILRequest;->mRequest:I

    const/16 v8, 0xf

    if-eq v7, v8, :cond_ab

    .line 1432
    iget v7, v3, Lcom/mediatek/ims/RILRequest;->mRequest:I

    const/16 v8, 0x10

    if-ne v7, v8, :cond_145

    .line 1435
    :cond_ab
    :goto_ab
    const-string/jumbo v7, "clear mIsSendChldRequest"

    invoke-direct {p0, v7}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1436
    iget-object v7, p0, Lcom/mediatek/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v7}, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->resetSendChldRequest()V

    .line 1440
    :cond_b6
    if-eqz v0, :cond_be

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v7

    if-lez v7, :cond_157

    .line 1442
    :cond_be
    :try_start_be
    iget v7, v3, Lcom/mediatek/ims/RILRequest;->mRequest:I

    sparse-switch v7, :sswitch_data_3dc

    .line 1569
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unrecognized solicited response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Lcom/mediatek/ims/RILRequest;->mRequest:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_df
    .catch Ljava/lang/Throwable; {:try_start_be .. :try_end_df} :catch_df

    .line 1571
    :catch_df
    move-exception v6

    .line 1574
    .local v6, "tr":Ljava/lang/Throwable;
    const-string/jumbo v7, "IMS_RILA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/mediatek/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "< "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1575
    iget v9, v3, Lcom/mediatek/ims/RILRequest;->mRequest:I

    invoke-static {v9}, Lcom/mediatek/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v9

    .line 1574
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1576
    const-string/jumbo v9, " exception, possible invalid RIL response"

    .line 1574
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1578
    iget-object v7, v3, Lcom/mediatek/ims/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v7, :cond_11d

    .line 1579
    iget-object v7, v3, Lcom/mediatek/ims/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v7, v10, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1580
    iget-object v7, v3, Lcom/mediatek/ims/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 1582
    :cond_11d
    return-object v3

    .line 1418
    .end local v2    # "ret":Ljava/lang/Object;
    .end local v6    # "tr":Ljava/lang/Throwable;
    :cond_11e
    :try_start_11e
    iget-object v7, p0, Lcom/mediatek/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v7}, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->getPendingRequest()Lcom/mediatek/ims/RILRequest;

    move-result-object v7

    if-eqz v7, :cond_9d

    .line 1419
    const-string/jumbo v7, "send pending switch request"

    invoke-direct {p0, v7}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1420
    iget-object v7, p0, Lcom/mediatek/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v7}, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->getPendingRequest()Lcom/mediatek/ims/RILRequest;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/ims/ImsRILAdapter;->send(Lcom/mediatek/ims/RILRequest;)V

    .line 1421
    iget-object v7, p0, Lcom/mediatek/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v7}, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->setSendChldRequest()V

    .line 1422
    iget-object v7, p0, Lcom/mediatek/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->setPendingRequest(Lcom/mediatek/ims/RILRequest;)V
    :try_end_140
    .catchall {:try_start_11e .. :try_end_140} :catchall_142

    goto/16 :goto_9d

    .line 1410
    :catchall_142
    move-exception v7

    monitor-exit v8

    throw v7

    .line 1433
    .restart local v2    # "ret":Ljava/lang/Object;
    :cond_145
    iget v7, v3, Lcom/mediatek/ims/RILRequest;->mRequest:I

    const/16 v8, 0x34

    if-eq v7, v8, :cond_ab

    .line 1434
    iget v7, v3, Lcom/mediatek/ims/RILRequest;->mRequest:I

    const/16 v8, 0x48

    if-ne v7, v8, :cond_b6

    goto/16 :goto_ab

    .line 1444
    :sswitch_153
    :try_start_153
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_156
    .catch Ljava/lang/Throwable; {:try_start_153 .. :try_end_156} :catch_df

    move-result-object v2

    .line 1586
    .end local v2    # "ret":Ljava/lang/Object;
    :cond_157
    :goto_157
    iget v7, v3, Lcom/mediatek/ims/RILRequest;->mRequest:I

    const/16 v8, 0x81

    if-ne v7, v8, :cond_180

    .line 1589
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Response to RIL_REQUEST_SHUTDOWN received. Error is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1590
    const-string/jumbo v8, " Setting Radio State to Unavailable regardless of error."

    .line 1589
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1591
    sget-object v7, Lcom/mediatek/ims/ImsCommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/mediatek/ims/ImsCommandsInterface$RadioState;

    invoke-virtual {p0, v7}, Lcom/mediatek/ims/ImsRILAdapter;->setRadioState(Lcom/mediatek/ims/ImsCommandsInterface$RadioState;)V

    .line 1594
    :cond_180
    if-eqz v0, :cond_396

    .line 1595
    invoke-virtual {v3, v0, v2}, Lcom/mediatek/ims/RILRequest;->onError(ILjava/lang/Object;)V

    .line 1606
    :cond_185
    :goto_185
    return-object v3

    .line 1445
    .restart local v2    # "ret":Ljava/lang/Object;
    :sswitch_186
    :try_start_186
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_157

    .line 1446
    :sswitch_18b
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_157

    .line 1447
    :sswitch_190
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_157

    .line 1448
    :sswitch_195
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_157

    .line 1449
    :sswitch_19a
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_157

    .line 1450
    :sswitch_19f
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_157

    .line 1451
    :sswitch_1a4
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseFailCause(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_157

    .line 1452
    :sswitch_1a9
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_157

    .line 1453
    :sswitch_1ae
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_157

    .line 1454
    :sswitch_1b3
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_157

    .line 1455
    :sswitch_1b8
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_157

    .line 1456
    :sswitch_1bd
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_157

    .line 1457
    :sswitch_1c2
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_157

    .line 1458
    :sswitch_1c7
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_157

    .line 1459
    :sswitch_1cc
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_157

    .line 1460
    :sswitch_1d1
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_157

    .line 1461
    :sswitch_1d6
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1462
    :sswitch_1dc
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1463
    :sswitch_1e2
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1464
    :sswitch_1e8
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1465
    :sswitch_1ee
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1466
    :sswitch_1f4
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1467
    :sswitch_1fa
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1468
    :sswitch_200
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1469
    :sswitch_206
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1470
    :sswitch_20c
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1471
    :sswitch_212
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1472
    :sswitch_218
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1473
    :sswitch_21e
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1474
    :sswitch_224
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1475
    :sswitch_22a
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1476
    :sswitch_230
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1477
    :sswitch_236
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1478
    :sswitch_23c
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1479
    :sswitch_242
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1480
    :sswitch_248
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1481
    :sswitch_24e
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1482
    :sswitch_254
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1483
    :sswitch_25a
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1484
    :sswitch_260
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1485
    :sswitch_266
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1486
    :sswitch_26c
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1487
    :sswitch_272
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1488
    :sswitch_278
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1489
    :sswitch_27e
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1490
    :sswitch_284
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1491
    :sswitch_28a
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1492
    :sswitch_290
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1493
    :sswitch_296
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1494
    :sswitch_29c
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1495
    :sswitch_2a2
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1496
    :sswitch_2a8
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1497
    :sswitch_2ae
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1498
    :sswitch_2b4
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1499
    :sswitch_2ba
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1500
    :sswitch_2c0
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1502
    :sswitch_2c6
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1503
    :sswitch_2cc
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1504
    :sswitch_2d2
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1505
    :sswitch_2d8
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1506
    :sswitch_2de
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1507
    :sswitch_2e4
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1510
    :sswitch_2ea
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1513
    :sswitch_2f0
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1514
    :sswitch_2f6
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1515
    :sswitch_2fc
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1518
    :sswitch_302
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    goto/16 :goto_157

    .line 1519
    :sswitch_307
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    goto/16 :goto_157

    .line 1520
    :sswitch_30c
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1521
    :sswitch_312
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1522
    :sswitch_318
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1526
    :sswitch_31e
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1527
    :sswitch_324
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1528
    :sswitch_32a
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1532
    :sswitch_330
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1533
    :sswitch_336
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1535
    :sswitch_33c
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1536
    :sswitch_342
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1539
    :sswitch_348
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1542
    :sswitch_34e
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1544
    :sswitch_354
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1546
    :sswitch_35a
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1550
    :sswitch_360
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1551
    :sswitch_366
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1554
    :sswitch_36c
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1557
    :sswitch_372
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1558
    :sswitch_378
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1559
    :sswitch_37e
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1560
    :sswitch_384
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1563
    :sswitch_38a
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_157

    .line 1566
    :sswitch_390
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_393
    .catch Ljava/lang/Throwable; {:try_start_186 .. :try_end_393} :catch_df

    move-result-object v2

    goto/16 :goto_157

    .line 1598
    .end local v2    # "ret":Ljava/lang/Object;
    :cond_396
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/mediatek/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "< "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/mediatek/ims/RILRequest;->mRequest:I

    invoke-static {v8}, Lcom/mediatek/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1599
    const-string/jumbo v8, " "

    .line 1598
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1599
    iget v8, v3, Lcom/mediatek/ims/RILRequest;->mRequest:I

    invoke-static {v8, v2}, Lcom/mediatek/ims/ImsRILAdapter;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1598
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1601
    iget-object v7, v3, Lcom/mediatek/ims/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v7, :cond_185

    .line 1602
    iget-object v7, v3, Lcom/mediatek/ims/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v7, v2, v10}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1603
    iget-object v7, v3, Lcom/mediatek/ims/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_185

    .line 1442
    :sswitch_data_3dc
    .sparse-switch
        0xa -> :sswitch_153
        0xb -> :sswitch_186
        0xc -> :sswitch_18b
        0xd -> :sswitch_190
        0xf -> :sswitch_195
        0x10 -> :sswitch_19a
        0x11 -> :sswitch_19f
        0x12 -> :sswitch_1a4
        0x14 -> :sswitch_1a9
        0x15 -> :sswitch_1ae
        0x16 -> :sswitch_1b3
        0x17 -> :sswitch_1b8
        0x18 -> :sswitch_1bd
        0x1d -> :sswitch_1c2
        0x1e -> :sswitch_1c7
        0x1f -> :sswitch_1cc
        0x20 -> :sswitch_1d1
        0x22 -> :sswitch_1d6
        0x23 -> :sswitch_1dc
        0x24 -> :sswitch_1e2
        0x25 -> :sswitch_1e8
        0x26 -> :sswitch_1ee
        0x27 -> :sswitch_1f4
        0x28 -> :sswitch_1fa
        0x2a -> :sswitch_200
        0x2b -> :sswitch_206
        0x2c -> :sswitch_20c
        0x2d -> :sswitch_212
        0x2e -> :sswitch_218
        0x2f -> :sswitch_21e
        0x31 -> :sswitch_22a
        0x32 -> :sswitch_230
        0x33 -> :sswitch_236
        0x34 -> :sswitch_23c
        0x35 -> :sswitch_242
        0x36 -> :sswitch_248
        0x37 -> :sswitch_24e
        0x38 -> :sswitch_254
        0x3a -> :sswitch_25a
        0x3b -> :sswitch_260
        0x3c -> :sswitch_266
        0x3d -> :sswitch_26c
        0x3e -> :sswitch_272
        0x3f -> :sswitch_278
        0x40 -> :sswitch_27e
        0x42 -> :sswitch_284
        0x48 -> :sswitch_28a
        0x4c -> :sswitch_290
        0x50 -> :sswitch_296
        0x51 -> :sswitch_29c
        0x63 -> :sswitch_2a2
        0x6c -> :sswitch_2a8
        0x6e -> :sswitch_2ae
        0x6f -> :sswitch_2b4
        0x70 -> :sswitch_2c0
        0x80 -> :sswitch_2ba
        0x7d0 -> :sswitch_31e
        0x7d1 -> :sswitch_324
        0x7d2 -> :sswitch_32a
        0x7e4 -> :sswitch_33c
        0x807 -> :sswitch_336
        0x80d -> :sswitch_342
        0x821 -> :sswitch_224
        0x824 -> :sswitch_2c6
        0x825 -> :sswitch_2cc
        0x826 -> :sswitch_2d2
        0x827 -> :sswitch_2d8
        0x828 -> :sswitch_2de
        0x829 -> :sswitch_2e4
        0x82e -> :sswitch_330
        0x83a -> :sswitch_302
        0x83b -> :sswitch_307
        0x83c -> :sswitch_30c
        0x83d -> :sswitch_312
        0x83e -> :sswitch_2ea
        0x841 -> :sswitch_35a
        0x842 -> :sswitch_2f0
        0x843 -> :sswitch_2f6
        0x844 -> :sswitch_2fc
        0x845 -> :sswitch_348
        0x84a -> :sswitch_34e
        0x84b -> :sswitch_360
        0x84c -> :sswitch_366
        0x84d -> :sswitch_354
        0x84e -> :sswitch_318
        0x855 -> :sswitch_36c
        0x85b -> :sswitch_372
        0x85c -> :sswitch_378
        0x85d -> :sswitch_37e
        0x85e -> :sswitch_384
        0x85f -> :sswitch_38a
        0x860 -> :sswitch_390
    .end sparse-switch
.end method

.method private processUnsolicited(Landroid/os/Parcel;)V
    .registers 29
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 2264
    const-string/jumbo v22, "IMS_RILA"

    const-string/jumbo v23, " IMS processUnsolicited !!"

    invoke-static/range {v22 .. v23}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2267
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 2268
    .local v16, "response":I
    sparse-switch v16, :sswitch_data_6a2

    .line 2299
    :try_start_10
    new-instance v22, Ljava/lang/RuntimeException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Unrecognized unsol response: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v22
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_2e} :catch_2e

    .line 2301
    :catch_2e
    move-exception v21

    .line 2302
    .local v21, "tr":Ljava/lang/Throwable;
    const-string/jumbo v22, "IMS_RILA"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Exception processing unsol response: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 2303
    const-string/jumbo v24, "Exception:"

    .line 2302
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 2303
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v24

    .line 2302
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2304
    return-void

    .line 2269
    .end local v21    # "tr":Ljava/lang/Throwable;
    :sswitch_5d
    :try_start_5d
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .line 2307
    .local v17, "ret":Ljava/lang/Object;
    :goto_61
    sparse-switch v16, :sswitch_data_704

    .line 2263
    .end local v17    # "ret":Ljava/lang/Object;
    :cond_64
    :goto_64
    return-void

    .line 2270
    :sswitch_65
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_61

    .line 2271
    .end local v17    # "ret":Ljava/lang/Object;
    :sswitch_6a
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_61

    .line 2272
    .end local v17    # "ret":Ljava/lang/Object;
    :sswitch_6f
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_61

    .line 2273
    .end local v17    # "ret":Ljava/lang/Object;
    :sswitch_74
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_61

    .line 2274
    .end local v17    # "ret":Ljava/lang/Object;
    :sswitch_79
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_61

    .line 2275
    .end local v17    # "ret":Ljava/lang/Object;
    :sswitch_7e
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_61

    .line 2276
    .end local v17    # "ret":Ljava/lang/Object;
    :sswitch_83
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_61

    .line 2277
    .end local v17    # "ret":Ljava/lang/Object;
    :sswitch_88
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_61

    .line 2278
    .end local v17    # "ret":Ljava/lang/Object;
    :sswitch_8d
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_61

    .line 2279
    .end local v17    # "ret":Ljava/lang/Object;
    :sswitch_92
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_61

    .line 2280
    .end local v17    # "ret":Ljava/lang/Object;
    :sswitch_97
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_61

    .line 2281
    .end local v17    # "ret":Ljava/lang/Object;
    :sswitch_9c
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseCallRing(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_61

    .line 2282
    .end local v17    # "ret":Ljava/lang/Object;
    :sswitch_a1
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseSuppServiceNotification(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_61

    .line 2283
    .end local v17    # "ret":Ljava/lang/Object;
    :sswitch_a6
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_61

    .line 2284
    .end local v17    # "ret":Ljava/lang/Object;
    :sswitch_ab
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_61

    .line 2286
    .end local v17    # "ret":Ljava/lang/Object;
    :sswitch_b0
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_61

    .line 2287
    .end local v17    # "ret":Ljava/lang/Object;
    :sswitch_b5
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_61

    .line 2288
    .end local v17    # "ret":Ljava/lang/Object;
    :sswitch_ba
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_61

    .line 2290
    .end local v17    # "ret":Ljava/lang/Object;
    :sswitch_bf
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_61

    .line 2291
    .end local v17    # "ret":Ljava/lang/Object;
    :sswitch_c4
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_61

    .line 2293
    .end local v17    # "ret":Ljava/lang/Object;
    :sswitch_c9
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_61

    .line 2294
    .end local v17    # "ret":Ljava/lang/Object;
    :sswitch_ce
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_61

    .line 2296
    .end local v17    # "ret":Ljava/lang/Object;
    :sswitch_d3
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_d6
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_d6} :catch_2e

    move-result-object v17

    .restart local v17    # "ret":Ljava/lang/Object;
    goto :goto_61

    .line 2310
    :sswitch_d8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->getRadioStateFromInt(I)Lcom/mediatek/ims/ImsCommandsInterface$RadioState;

    move-result-object v13

    .line 2311
    .local v13, "newState":Lcom/mediatek/ims/ImsCommandsInterface$RadioState;
    invoke-virtual {v13}, Lcom/mediatek/ims/ImsCommandsInterface$RadioState;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ims/ImsRILAdapter;->unsljLogMore(ILjava/lang/String;)V

    .line 2313
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mediatek/ims/ImsRILAdapter;->switchToRadioState(Lcom/mediatek/ims/ImsCommandsInterface$RadioState;)V

    goto/16 :goto_64

    .line 2317
    .end local v13    # "newState":Lcom/mediatek/ims/ImsCommandsInterface$RadioState;
    :sswitch_f8
    if-eqz v17, :cond_64

    .line 2320
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->unsljLog(I)V

    .line 2321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsRILAdapter;->mCallInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_123

    .line 2322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsRILAdapter;->mCallInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v22 .. v23}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_123
    move-object/from16 v5, v17

    .line 2325
    check-cast v5, [Ljava/lang/String;

    .line 2327
    .local v5, "callInfo":[Ljava/lang/String;
    const/16 v22, 0x0

    aget-object v22, v5, v22

    if-eqz v22, :cond_133

    const/16 v22, 0x1

    aget-object v22, v5, v22

    if-nez v22, :cond_13f

    .line 2328
    :cond_133
    const-string/jumbo v22, "RIL_UNSOL_CALL_INFO_INDICATION something wrong"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    goto/16 :goto_64

    .line 2332
    :cond_13f
    const/16 v22, 0x1

    aget-object v22, v5, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 2333
    .local v12, "msgType":I
    const/16 v22, 0x0

    aget-object v22, v5, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 2334
    .local v4, "callId":I
    const/16 v6, 0xff

    .line 2335
    .local v6, "callMode":I
    const/4 v11, 0x0

    .line 2336
    .local v11, "isConferenceCall":Z
    const/16 v22, 0x5

    aget-object v22, v5, v22

    if-eqz v22, :cond_165

    const/16 v22, 0x5

    aget-object v22, v5, v22

    const-string/jumbo v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_19d

    .line 2340
    :cond_165
    :goto_165
    const/16 v22, 0x16

    move/from16 v0, v22

    if-eq v6, v0, :cond_171

    .line 2341
    const/16 v22, 0x17

    move/from16 v0, v22

    if-ne v6, v0, :cond_1a6

    .line 2344
    :cond_171
    :goto_171
    const/4 v11, 0x1

    .line 2348
    :cond_172
    sparse-switch v12, :sswitch_data_766

    goto/16 :goto_64

    .line 2351
    :sswitch_177
    sget-object v20, Lcom/mediatek/ims/ImsCallInfo$State;->INCOMING:Lcom/mediatek/ims/ImsCallInfo$State;

    .line 2352
    .local v20, "state":Lcom/mediatek/ims/ImsCallInfo$State;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsRILAdapter;->mCallConnections:Ljava/util/HashMap;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v23, v5, v23

    .line 2353
    new-instance v24, Lcom/mediatek/ims/ImsCallInfo;

    const/16 v25, 0x0

    aget-object v25, v5, v25

    const/16 v26, 0x6

    aget-object v26, v5, v26

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v11, v3}, Lcom/mediatek/ims/ImsCallInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/mediatek/ims/ImsCallInfo$State;)V

    .line 2352
    invoke-virtual/range {v22 .. v24}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_64

    .line 2337
    .end local v20    # "state":Lcom/mediatek/ims/ImsCallInfo$State;
    :cond_19d
    const/16 v22, 0x5

    aget-object v22, v5, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_165

    .line 2342
    :cond_1a6
    const/16 v22, 0x18

    move/from16 v0, v22

    if-eq v6, v0, :cond_171

    .line 2343
    const/16 v22, 0x19

    move/from16 v0, v22

    if-ne v6, v0, :cond_172

    goto :goto_171

    .line 2359
    :sswitch_1b3
    sget-object v20, Lcom/mediatek/ims/ImsCallInfo$State;->ALERTING:Lcom/mediatek/ims/ImsCallInfo$State;

    .line 2360
    .restart local v20    # "state":Lcom/mediatek/ims/ImsCallInfo$State;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsRILAdapter;->mCallConnections:Ljava/util/HashMap;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v23, v5, v23

    .line 2361
    new-instance v24, Lcom/mediatek/ims/ImsCallInfo;

    const/16 v25, 0x0

    aget-object v25, v5, v25

    const/16 v26, 0x6

    aget-object v26, v5, v26

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v11, v3}, Lcom/mediatek/ims/ImsCallInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/mediatek/ims/ImsCallInfo$State;)V

    .line 2360
    invoke-virtual/range {v22 .. v24}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_64

    .line 2367
    .end local v20    # "state":Lcom/mediatek/ims/ImsCallInfo$State;
    :sswitch_1d9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsRILAdapter;->mCallConnections:Ljava/util/HashMap;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v23, v5, v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mediatek/ims/ImsCallInfo;

    .line 2368
    .local v10, "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    iput-boolean v11, v10, Lcom/mediatek/ims/ImsCallInfo;->mIsConference:Z

    .line 2369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsRILAdapter;->mCallConnections:Ljava/util/HashMap;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v23, v5, v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_64

    .line 2374
    .end local v10    # "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    :sswitch_1fe
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsRILAdapter;->mCallConnections:Ljava/util/HashMap;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v23, v5, v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mediatek/ims/ImsCallInfo;

    .line 2375
    .restart local v10    # "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    sget-object v22, Lcom/mediatek/ims/ImsCallInfo$State;->HOLDING:Lcom/mediatek/ims/ImsCallInfo$State;

    move-object/from16 v0, v22

    iput-object v0, v10, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    .line 2376
    iput-boolean v11, v10, Lcom/mediatek/ims/ImsCallInfo;->mIsConference:Z

    .line 2377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsRILAdapter;->mCallConnections:Ljava/util/HashMap;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v23, v5, v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_64

    .line 2382
    .end local v10    # "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    :sswitch_229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsRILAdapter;->mCallConnections:Ljava/util/HashMap;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v23, v5, v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mediatek/ims/ImsCallInfo;

    .line 2383
    .restart local v10    # "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    sget-object v22, Lcom/mediatek/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/ims/ImsCallInfo$State;

    move-object/from16 v0, v22

    iput-object v0, v10, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    .line 2384
    iput-boolean v11, v10, Lcom/mediatek/ims/ImsCallInfo;->mIsConference:Z

    .line 2385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsRILAdapter;->mCallConnections:Ljava/util/HashMap;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v23, v5, v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_64

    .line 2389
    .end local v10    # "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    :sswitch_254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsRILAdapter;->mCallConnections:Ljava/util/HashMap;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v23, v5, v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_64

    .line 2396
    .end local v4    # "callId":I
    .end local v5    # "callInfo":[Ljava/lang/String;
    .end local v6    # "callMode":I
    .end local v11    # "isConferenceCall":Z
    .end local v12    # "msgType":I
    :sswitch_263
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->unsljLog(I)V

    .line 2397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsRILAdapter;->mCallStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_64

    .line 2398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsRILAdapter;->mCallStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    .line 2399
    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-direct/range {v23 .. v26}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2398
    invoke-virtual/range {v22 .. v23}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_64

    .line 2403
    :sswitch_288
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->unsljLog(I)V

    .line 2404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsRILAdapter;->mImsRegistrationInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_64

    .line 2405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsRILAdapter;->mImsRegistrationInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v22 .. v23}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_64

    .line 2409
    :sswitch_2b3
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ims/ImsRILAdapter;->unsljLogvRet(ILjava/lang/Object;)V

    .line 2410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsRILAdapter;->mIncomingCallIndicationRegistrant:Landroid/os/Registrant;

    move-object/from16 v22, v0

    if-eqz v22, :cond_64

    .line 2411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsRILAdapter;->mIncomingCallIndicationRegistrant:Landroid/os/Registrant;

    move-object/from16 v22, v0

    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v22 .. v23}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_64

    .line 2415
    :sswitch_2e0
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ims/ImsRILAdapter;->unsljLogvRet(ILjava/lang/Object;)V

    .line 2416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsRILAdapter;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_64

    .line 2417
    check-cast v17, [I

    .end local v17    # "ret":Ljava/lang/Object;
    const/16 v22, 0x0

    aget v22, v17, v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_320

    const/4 v14, 0x1

    .line 2418
    .local v14, "playtone":Z
    :goto_300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsRILAdapter;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    .line 2419
    new-instance v23, Landroid/os/AsyncResult;

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2418
    invoke-virtual/range {v22 .. v23}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_64

    .line 2417
    .end local v14    # "playtone":Z
    :cond_320
    const/4 v14, 0x0

    .restart local v14    # "playtone":Z
    goto :goto_300

    .line 2423
    .end local v14    # "playtone":Z
    .restart local v17    # "ret":Ljava/lang/Object;
    :sswitch_322
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ims/ImsRILAdapter;->unsljLogvRet(ILjava/lang/Object;)V

    move-object/from16 v22, v17

    .line 2425
    check-cast v22, [Ljava/lang/String;

    const/16 v23, 0x0

    aget-object v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .local v19, "simCipherStatus":I
    move-object/from16 v22, v17

    .line 2426
    check-cast v22, [Ljava/lang/String;

    const/16 v23, 0x1

    aget-object v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .local v18, "sessionStatus":I
    move-object/from16 v22, v17

    .line 2427
    check-cast v22, [Ljava/lang/String;

    const/16 v23, 0x2

    aget-object v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 2428
    .local v8, "csStatus":I
    check-cast v17, [Ljava/lang/String;

    .end local v17    # "ret":Ljava/lang/Object;
    const/16 v22, 0x3

    aget-object v22, v17, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 2430
    .local v15, "psStatus":I
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "RIL_UNSOL_CIPHER_INDICATION :"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2432
    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v7, v0, [I

    .line 2434
    .local v7, "cipherResult":[I
    const/16 v22, 0x0

    aput v19, v7, v22

    .line 2435
    const/16 v22, 0x1

    aput v8, v7, v22

    .line 2436
    const/16 v22, 0x2

    aput v15, v7, v22

    .line 2438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsRILAdapter;->mCipherIndicationRegistrant:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_64

    .line 2439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsRILAdapter;->mCipherIndicationRegistrant:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    .line 2440
    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v7, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2439
    invoke-virtual/range {v22 .. v23}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_64

    .line 2444
    .end local v7    # "cipherResult":[I
    .end local v8    # "csStatus":I
    .end local v15    # "psStatus":I
    .end local v18    # "sessionStatus":I
    .end local v19    # "simCipherStatus":I
    .restart local v17    # "ret":Ljava/lang/Object;
    :sswitch_3d5
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ims/ImsRILAdapter;->unsljLogvRet(ILjava/lang/Object;)V

    .line 2445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsRILAdapter;->mEpsNetworkFeatureSupportRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_64

    .line 2446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsRILAdapter;->mEpsNetworkFeatureSupportRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    .line 2447
    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2446
    invoke-virtual/range {v22 .. v23}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_64

    .line 2453
    :sswitch_402
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->unsljLog(I)V

    .line 2454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsRILAdapter;->mEconfSrvccRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_64

    .line 2455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsRILAdapter;->mEconfSrvccRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v22 .. v23}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_64

    .line 2461
    :sswitch_42d
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->unsljLog(I)V

    .line 2462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsRILAdapter;->mEconfResultRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_64

    .line 2463
    const-string/jumbo v22, "Notify ECONF result"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    move-object/from16 v9, v17

    .line 2464
    check-cast v9, [Ljava/lang/String;

    .line 2465
    .local v9, "econfResult":[Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "ECONF result = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x3

    aget-object v23, v9, v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsRILAdapter;->mEconfResultRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v22 .. v23}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_64

    .line 2470
    .end local v9    # "econfResult":[Ljava/lang/String;
    :sswitch_485
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->unsljLog(I)V

    .line 2471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsRILAdapter;->mEpsNetworkFeatureInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_64

    .line 2472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsRILAdapter;->mEpsNetworkFeatureInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v22 .. v23}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_64

    .line 2477
    :sswitch_4b0
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->unsljLog(I)V

    .line 2478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsRILAdapter;->mSrvccHandoverInfoIndicationRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_64

    .line 2479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsRILAdapter;->mSrvccHandoverInfoIndicationRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v22 .. v23}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_64

    .line 2484
    :sswitch_4db
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ims/ImsRILAdapter;->unsljLogvRet(ILjava/lang/Object;)V

    .line 2486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsRILAdapter;->mSpeechCodecInfoRegistrant:Landroid/os/Registrant;

    move-object/from16 v22, v0

    if-eqz v22, :cond_64

    .line 2487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsRILAdapter;->mSpeechCodecInfoRegistrant:Landroid/os/Registrant;

    move-object/from16 v22, v0

    .line 2488
    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2487
    invoke-virtual/range {v22 .. v23}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_64

    .line 2492
    :sswitch_508
    const-string/jumbo v22, "IMS_RILA"

    const-string/jumbo v23, "IMS: receive RIL_UNSOL_CALL_RING"

    invoke-static/range {v22 .. v23}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2493
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ims/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 2495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsRILAdapter;->mRingRegistrant:Landroid/os/Registrant;

    move-object/from16 v22, v0

    if-eqz v22, :cond_64

    .line 2496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsRILAdapter;->mRingRegistrant:Landroid/os/Registrant;

    move-object/from16 v22, v0

    .line 2497
    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2496
    invoke-virtual/range {v22 .. v23}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_64

    .line 2501
    :sswitch_53e
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ims/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 2502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsRILAdapter;->mSsnRegistrant:Landroid/os/Registrant;

    move-object/from16 v22, v0

    if-eqz v22, :cond_64

    .line 2503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsRILAdapter;->mSsnRegistrant:Landroid/os/Registrant;

    move-object/from16 v22, v0

    .line 2504
    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2503
    invoke-virtual/range {v22 .. v23}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_64

    .line 2508
    :sswitch_56b
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ims/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 2509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsRILAdapter;->mSrvccStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_64

    .line 2510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsRILAdapter;->mSrvccStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    .line 2511
    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2510
    invoke-virtual/range {v22 .. v23}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_64

    .line 2515
    :sswitch_598
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ims/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 2516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsRILAdapter;->mCallProgressIndicatorRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_64

    .line 2517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsRILAdapter;->mCallProgressIndicatorRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    .line 2518
    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2517
    invoke-virtual/range {v22 .. v23}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_64

    .line 2522
    :sswitch_5c5
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->unsljLog(I)V

    .line 2523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsRILAdapter;->mImsEnableDoneRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_64

    .line 2524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsRILAdapter;->mImsEnableDoneRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_64

    .line 2528
    :sswitch_5df
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->unsljLog(I)V

    .line 2529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsRILAdapter;->mImsDisableDoneRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_64

    .line 2530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsRILAdapter;->mImsDisableDoneRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_64

    .line 2535
    :sswitch_5f9
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->unsljLog(I)V

    .line 2537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsRILAdapter;->mImsEnableStartRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_64

    .line 2538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsRILAdapter;->mImsEnableStartRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_64

    .line 2543
    :sswitch_613
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->unsljLog(I)V

    .line 2545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsRILAdapter;->mImsDisableStartRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_64

    .line 2546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsRILAdapter;->mImsDisableStartRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_64

    .line 2551
    :sswitch_62d
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ims/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 2553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsRILAdapter;->mCallModeChangeIndicatorRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_64

    .line 2554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsRILAdapter;->mCallModeChangeIndicatorRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    .line 2555
    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2554
    invoke-virtual/range {v22 .. v23}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_64

    .line 2560
    :sswitch_65a
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ims/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 2562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsRILAdapter;->mVideoCapabilityIndicatorRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_64

    .line 2563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsRILAdapter;->mVideoCapabilityIndicatorRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    .line 2564
    new-instance v23, Landroid/os/AsyncResult;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2563
    invoke-virtual/range {v22 .. v23}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_64

    .line 2569
    :sswitch_687
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->unsljLog(I)V

    .line 2570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsRILAdapter;->mImsDeregistrationDoneRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_64

    .line 2571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsRILAdapter;->mImsDeregistrationDoneRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_64

    .line 2268
    nop

    :sswitch_data_6a2
    .sparse-switch
        0x3e8 -> :sswitch_ba
        0x3e9 -> :sswitch_65
        0x3f3 -> :sswitch_a1
        0x3fa -> :sswitch_9c
        0x405 -> :sswitch_74
        0x40f -> :sswitch_a6
        0xbd6 -> :sswitch_83
        0xbd7 -> :sswitch_b0
        0xbd8 -> :sswitch_b5
        0xbd9 -> :sswitch_6a
        0xbde -> :sswitch_88
        0xbe2 -> :sswitch_6f
        0xbe3 -> :sswitch_79
        0xbe8 -> :sswitch_7e
        0xbe9 -> :sswitch_5d
        0xbea -> :sswitch_8d
        0xbeb -> :sswitch_92
        0xbec -> :sswitch_97
        0xbf1 -> :sswitch_ab
        0xbf8 -> :sswitch_bf
        0xbf9 -> :sswitch_c4
        0xc05 -> :sswitch_c9
        0xc06 -> :sswitch_ce
        0xc0a -> :sswitch_d3
    .end sparse-switch

    .line 2307
    :sswitch_data_704
    .sparse-switch
        0x3e8 -> :sswitch_d8
        0x3e9 -> :sswitch_263
        0x3f3 -> :sswitch_53e
        0x3fa -> :sswitch_508
        0x405 -> :sswitch_2e0
        0x40f -> :sswitch_56b
        0xbd6 -> :sswitch_402
        0xbd7 -> :sswitch_5c5
        0xbd8 -> :sswitch_5df
        0xbd9 -> :sswitch_288
        0xbde -> :sswitch_42d
        0xbe2 -> :sswitch_2b3
        0xbe3 -> :sswitch_322
        0xbe8 -> :sswitch_3d5
        0xbe9 -> :sswitch_f8
        0xbea -> :sswitch_485
        0xbeb -> :sswitch_4b0
        0xbec -> :sswitch_4db
        0xbf1 -> :sswitch_598
        0xbf8 -> :sswitch_5f9
        0xbf9 -> :sswitch_613
        0xc05 -> :sswitch_62d
        0xc06 -> :sswitch_65a
        0xc0a -> :sswitch_687
    .end sparse-switch

    .line 2348
    :sswitch_data_766
    .sparse-switch
        0x0 -> :sswitch_177
        0x2 -> :sswitch_1d9
        0x82 -> :sswitch_1b3
        0x83 -> :sswitch_1fe
        0x84 -> :sswitch_229
        0x85 -> :sswitch_254
    .end sparse-switch
.end method

.method private static readRilMessage(Ljava/io/InputStream;[B)I
    .registers 10
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const/4 v4, 0x0

    .line 1027
    const/4 v2, 0x0

    .line 1028
    .local v2, "offset":I
    const/4 v3, 0x4

    .line 1030
    .local v3, "remaining":I
    :cond_4
    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 1032
    .local v0, "countRead":I
    if-gez v0, :cond_14

    .line 1033
    const-string/jumbo v4, "IMS_RILA"

    const-string/jumbo v5, "Hit EOS reading message length"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    return v7

    .line 1037
    :cond_14
    add-int/2addr v2, v0

    .line 1038
    sub-int/2addr v3, v0

    .line 1039
    if-gtz v3, :cond_4

    .line 1041
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    .line 1042
    const/4 v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    .line 1041
    or-int/2addr v4, v5

    .line 1043
    const/4 v5, 0x2

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    .line 1041
    or-int/2addr v4, v5

    .line 1044
    const/4 v5, 0x3

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    .line 1041
    or-int v1, v4, v5

    .line 1047
    .local v1, "messageLength":I
    const/4 v2, 0x0

    .line 1048
    move v3, v1

    .line 1050
    :cond_37
    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 1052
    if-gez v0, :cond_63

    .line 1053
    const-string/jumbo v4, "IMS_RILA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Hit EOS reading message.  messageLength="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1054
    const-string/jumbo v6, " remaining="

    .line 1053
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    return v7

    .line 1058
    :cond_63
    add-int/2addr v2, v0

    .line 1059
    sub-int/2addr v3, v0

    .line 1060
    if-gtz v3, :cond_37

    .line 1062
    return v1
.end method

.method static requestToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "request"    # I

    .prologue
    .line 1824
    sparse-switch p0, :sswitch_data_3e8

    .line 2194
    const-string/jumbo v0, "<unknown request>"

    return-object v0

    .line 1825
    :sswitch_7
    const-string/jumbo v0, "GET_SIM_STATUS"

    return-object v0

    .line 1826
    :sswitch_b
    const-string/jumbo v0, "ENTER_SIM_PIN"

    return-object v0

    .line 1827
    :sswitch_f
    const-string/jumbo v0, "ENTER_SIM_PUK"

    return-object v0

    .line 1828
    :sswitch_13
    const-string/jumbo v0, "ENTER_SIM_PIN2"

    return-object v0

    .line 1829
    :sswitch_17
    const-string/jumbo v0, "ENTER_SIM_PUK2"

    return-object v0

    .line 1830
    :sswitch_1b
    const-string/jumbo v0, "CHANGE_SIM_PIN"

    return-object v0

    .line 1831
    :sswitch_1f
    const-string/jumbo v0, "CHANGE_SIM_PIN2"

    return-object v0

    .line 1833
    :sswitch_23
    const-string/jumbo v0, "ENTER_NETWORK_DEPERSONALIZATION"

    return-object v0

    .line 1834
    :sswitch_27
    const-string/jumbo v0, "GET_CURRENT_CALLS"

    return-object v0

    .line 1835
    :sswitch_2b
    const-string/jumbo v0, "DIAL"

    return-object v0

    .line 1836
    :sswitch_2f
    const-string/jumbo v0, "GET_IMSI"

    return-object v0

    .line 1837
    :sswitch_33
    const-string/jumbo v0, "HANGUP"

    return-object v0

    .line 1838
    :sswitch_37
    const-string/jumbo v0, "HANGUP_WAITING_OR_BACKGROUND"

    return-object v0

    .line 1840
    :sswitch_3b
    const-string/jumbo v0, "HANGUP_FOREGROUND_RESUME_BACKGROUND"

    return-object v0

    .line 1842
    :sswitch_3f
    const-string/jumbo v0, "REQUEST_SWITCH_WAITING_OR_HOLDING_AND_ACTIVE"

    return-object v0

    .line 1843
    :sswitch_43
    const-string/jumbo v0, "CONFERENCE"

    return-object v0

    .line 1844
    :sswitch_47
    const-string/jumbo v0, "UDUB"

    return-object v0

    .line 1845
    :sswitch_4b
    const-string/jumbo v0, "LAST_CALL_FAIL_CAUSE"

    return-object v0

    .line 1846
    :sswitch_4f
    const-string/jumbo v0, "SIGNAL_STRENGTH"

    return-object v0

    .line 1847
    :sswitch_53
    const-string/jumbo v0, "VOICE_REGISTRATION_STATE"

    return-object v0

    .line 1848
    :sswitch_57
    const-string/jumbo v0, "DATA_REGISTRATION_STATE"

    return-object v0

    .line 1849
    :sswitch_5b
    const-string/jumbo v0, "OPERATOR"

    return-object v0

    .line 1850
    :sswitch_5f
    const-string/jumbo v0, "RADIO_POWER"

    return-object v0

    .line 1851
    :sswitch_63
    const-string/jumbo v0, "DTMF"

    return-object v0

    .line 1852
    :sswitch_67
    const-string/jumbo v0, "SEND_SMS"

    return-object v0

    .line 1853
    :sswitch_6b
    const-string/jumbo v0, "SEND_SMS_EXPECT_MORE"

    return-object v0

    .line 1854
    :sswitch_6f
    const-string/jumbo v0, "SETUP_DATA_CALL"

    return-object v0

    .line 1855
    :sswitch_73
    const-string/jumbo v0, "SIM_IO"

    return-object v0

    .line 1856
    :sswitch_77
    const-string/jumbo v0, "SEND_USSD"

    return-object v0

    .line 1857
    :sswitch_7b
    const-string/jumbo v0, "CANCEL_USSD"

    return-object v0

    .line 1858
    :sswitch_7f
    const-string/jumbo v0, "GET_CLIR"

    return-object v0

    .line 1859
    :sswitch_83
    const-string/jumbo v0, "SET_CLIR"

    return-object v0

    .line 1860
    :sswitch_87
    const-string/jumbo v0, "QUERY_CALL_FORWARD_STATUS"

    return-object v0

    .line 1861
    :sswitch_8b
    const-string/jumbo v0, "SET_CALL_FORWARD"

    return-object v0

    .line 1862
    :sswitch_8f
    const-string/jumbo v0, "QUERY_CALL_WAITING"

    return-object v0

    .line 1863
    :sswitch_93
    const-string/jumbo v0, "SET_CALL_WAITING"

    return-object v0

    .line 1864
    :sswitch_97
    const-string/jumbo v0, "SMS_ACKNOWLEDGE"

    return-object v0

    .line 1865
    :sswitch_9b
    const-string/jumbo v0, "GET_IMEI"

    return-object v0

    .line 1866
    :sswitch_9f
    const-string/jumbo v0, "GET_IMEISV"

    return-object v0

    .line 1867
    :sswitch_a3
    const-string/jumbo v0, "ANSWER"

    return-object v0

    .line 1868
    :sswitch_a7
    const-string/jumbo v0, "DEACTIVATE_DATA_CALL"

    return-object v0

    .line 1869
    :sswitch_ab
    const-string/jumbo v0, "QUERY_FACILITY_LOCK"

    return-object v0

    .line 1870
    :sswitch_af
    const-string/jumbo v0, "SET_FACILITY_LOCK"

    return-object v0

    .line 1871
    :sswitch_b3
    const-string/jumbo v0, "CHANGE_BARRING_PASSWORD"

    return-object v0

    .line 1872
    :sswitch_b7
    const-string/jumbo v0, "QUERY_NETWORK_SELECTION_MODE"

    return-object v0

    .line 1874
    :sswitch_bb
    const-string/jumbo v0, "SET_NETWORK_SELECTION_AUTOMATIC"

    return-object v0

    .line 1875
    :sswitch_bf
    const-string/jumbo v0, "SET_NETWORK_SELECTION_MANUAL"

    return-object v0

    .line 1876
    :sswitch_c3
    const-string/jumbo v0, "QUERY_AVAILABLE_NETWORKS "

    return-object v0

    .line 1878
    :sswitch_c7
    const-string/jumbo v0, "ABORT_QUERY_AVAILABLE_NETWORKS"

    return-object v0

    .line 1879
    :sswitch_cb
    const-string/jumbo v0, "DTMF_START"

    return-object v0

    .line 1880
    :sswitch_cf
    const-string/jumbo v0, "DTMF_STOP"

    return-object v0

    .line 1881
    :sswitch_d3
    const-string/jumbo v0, "BASEBAND_VERSION"

    return-object v0

    .line 1882
    :sswitch_d7
    const-string/jumbo v0, "SEPARATE_CONNECTION"

    return-object v0

    .line 1883
    :sswitch_db
    const-string/jumbo v0, "SET_MUTE"

    return-object v0

    .line 1884
    :sswitch_df
    const-string/jumbo v0, "GET_MUTE"

    return-object v0

    .line 1885
    :sswitch_e3
    const-string/jumbo v0, "QUERY_CLIP"

    return-object v0

    .line 1886
    :sswitch_e7
    const-string/jumbo v0, "LAST_DATA_CALL_FAIL_CAUSE"

    return-object v0

    .line 1887
    :sswitch_eb
    const-string/jumbo v0, "DATA_CALL_LIST"

    return-object v0

    .line 1888
    :sswitch_ef
    const-string/jumbo v0, "RESET_RADIO"

    return-object v0

    .line 1889
    :sswitch_f3
    const-string/jumbo v0, "OEM_HOOK_RAW"

    return-object v0

    .line 1890
    :sswitch_f7
    const-string/jumbo v0, "OEM_HOOK_STRINGS"

    return-object v0

    .line 1891
    :sswitch_fb
    const-string/jumbo v0, "SCREEN_STATE"

    return-object v0

    .line 1892
    :sswitch_ff
    const-string/jumbo v0, "SET_SUPP_SVC_NOTIFICATION"

    return-object v0

    .line 1893
    :sswitch_103
    const-string/jumbo v0, "WRITE_SMS_TO_SIM"

    return-object v0

    .line 1894
    :sswitch_107
    const-string/jumbo v0, "DELETE_SMS_ON_SIM"

    return-object v0

    .line 1895
    :sswitch_10b
    const-string/jumbo v0, "SET_BAND_MODE"

    return-object v0

    .line 1896
    :sswitch_10f
    const-string/jumbo v0, "QUERY_AVAILABLE_BAND_MODE"

    return-object v0

    .line 1897
    :sswitch_113
    const-string/jumbo v0, "REQUEST_STK_GET_PROFILE"

    return-object v0

    .line 1898
    :sswitch_117
    const-string/jumbo v0, "REQUEST_STK_SET_PROFILE"

    return-object v0

    .line 1899
    :sswitch_11b
    const-string/jumbo v0, "REQUEST_STK_SEND_ENVELOPE_COMMAND"

    return-object v0

    .line 1901
    :sswitch_11f
    const-string/jumbo v0, "REQUEST_STK_SEND_TERMINAL_RESPONSE"

    return-object v0

    .line 1903
    :sswitch_123
    const-string/jumbo v0, "REQUEST_STK_HANDLE_CALL_SETUP_REQUESTED_FROM_SIM"

    return-object v0

    .line 1904
    :sswitch_127
    const-string/jumbo v0, "REQUEST_EXPLICIT_CALL_TRANSFER"

    return-object v0

    .line 1906
    :sswitch_12b
    const-string/jumbo v0, "REQUEST_SET_PREFERRED_NETWORK_TYPE"

    return-object v0

    .line 1908
    :sswitch_12f
    const-string/jumbo v0, "REQUEST_GET_PREFERRED_NETWORK_TYPE"

    return-object v0

    .line 1909
    :sswitch_133
    const-string/jumbo v0, "REQUEST_GET_NEIGHBORING_CELL_IDS"

    return-object v0

    .line 1910
    :sswitch_137
    const-string/jumbo v0, "REQUEST_SET_LOCATION_UPDATES"

    return-object v0

    .line 1912
    :sswitch_13b
    const-string/jumbo v0, "RIL_REQUEST_CDMA_SET_SUBSCRIPTION_SOURCE"

    return-object v0

    .line 1914
    :sswitch_13f
    const-string/jumbo v0, "RIL_REQUEST_CDMA_SET_ROAMING_PREFERENCE"

    return-object v0

    .line 1916
    :sswitch_143
    const-string/jumbo v0, "RIL_REQUEST_CDMA_QUERY_ROAMING_PREFERENCE"

    return-object v0

    .line 1917
    :sswitch_147
    const-string/jumbo v0, "RIL_REQUEST_SET_TTY_MODE"

    return-object v0

    .line 1918
    :sswitch_14b
    const-string/jumbo v0, "RIL_REQUEST_QUERY_TTY_MODE"

    return-object v0

    .line 1920
    :sswitch_14f
    const-string/jumbo v0, "RIL_REQUEST_CDMA_SET_PREFERRED_VOICE_PRIVACY_MODE"

    return-object v0

    .line 1922
    :sswitch_153
    const-string/jumbo v0, "RIL_REQUEST_CDMA_QUERY_PREFERRED_VOICE_PRIVACY_MODE"

    return-object v0

    .line 1923
    :sswitch_157
    const-string/jumbo v0, "RIL_REQUEST_CDMA_FLASH"

    return-object v0

    .line 1924
    :sswitch_15b
    const-string/jumbo v0, "RIL_REQUEST_CDMA_BURST_DTMF"

    return-object v0

    .line 1925
    :sswitch_15f
    const-string/jumbo v0, "RIL_REQUEST_CDMA_SEND_SMS"

    return-object v0

    .line 1926
    :sswitch_163
    const-string/jumbo v0, "RIL_REQUEST_CDMA_SMS_ACKNOWLEDGE"

    return-object v0

    .line 1928
    :sswitch_167
    const-string/jumbo v0, "RIL_REQUEST_GSM_GET_BROADCAST_CONFIG"

    return-object v0

    .line 1930
    :sswitch_16b
    const-string/jumbo v0, "RIL_REQUEST_GSM_SET_BROADCAST_CONFIG"

    return-object v0

    .line 1932
    :sswitch_16f
    const-string/jumbo v0, "RIL_REQUEST_CDMA_GET_BROADCAST_CONFIG"

    return-object v0

    .line 1934
    :sswitch_173
    const-string/jumbo v0, "RIL_REQUEST_CDMA_SET_BROADCAST_CONFIG"

    return-object v0

    .line 1936
    :sswitch_177
    const-string/jumbo v0, "RIL_REQUEST_GSM_BROADCAST_ACTIVATION"

    return-object v0

    .line 1938
    :sswitch_17b
    const-string/jumbo v0, "RIL_REQUEST_CDMA_VALIDATE_AND_WRITE_AKEY"

    return-object v0

    .line 1940
    :sswitch_17f
    const-string/jumbo v0, "RIL_REQUEST_CDMA_BROADCAST_ACTIVATION"

    return-object v0

    .line 1941
    :sswitch_183
    const-string/jumbo v0, "RIL_REQUEST_CDMA_SUBSCRIPTION"

    return-object v0

    .line 1942
    :sswitch_187
    const-string/jumbo v0, "RIL_REQUEST_CDMA_WRITE_SMS_TO_RUIM"

    return-object v0

    .line 1943
    :sswitch_18b
    const-string/jumbo v0, "RIL_REQUEST_CDMA_DELETE_SMS_ON_RUIM"

    return-object v0

    .line 1944
    :sswitch_18f
    const-string/jumbo v0, "RIL_REQUEST_DEVICE_IDENTITY"

    return-object v0

    .line 1945
    :sswitch_193
    const-string/jumbo v0, "RIL_REQUEST_GET_SMSC_ADDRESS"

    return-object v0

    .line 1946
    :sswitch_197
    const-string/jumbo v0, "RIL_REQUEST_SET_SMSC_ADDRESS"

    return-object v0

    .line 1948
    :sswitch_19b
    const-string/jumbo v0, "REQUEST_EXIT_EMERGENCY_CALLBACK_MODE"

    return-object v0

    .line 1950
    :sswitch_19f
    const-string/jumbo v0, "RIL_REQUEST_REPORT_SMS_MEMORY_STATUS"

    return-object v0

    .line 1952
    :sswitch_1a3
    const-string/jumbo v0, "RIL_REQUEST_REPORT_STK_SERVICE_IS_RUNNING"

    return-object v0

    .line 1954
    :sswitch_1a7
    const-string/jumbo v0, "RIL_REQUEST_CDMA_GET_SUBSCRIPTION_SOURCE"

    return-object v0

    .line 1955
    :sswitch_1ab
    const-string/jumbo v0, "RIL_REQUEST_ISIM_AUTHENTICATION"

    return-object v0

    .line 1957
    :sswitch_1af
    const-string/jumbo v0, "RIL_REQUEST_ACKNOWLEDGE_INCOMING_GSM_SMS_WITH_PDU"

    return-object v0

    .line 1959
    :sswitch_1b3
    const-string/jumbo v0, "RIL_REQUEST_STK_SEND_ENVELOPE_WITH_STATUS"

    return-object v0

    .line 1960
    :sswitch_1b7
    const-string/jumbo v0, "RIL_REQUEST_VOICE_RADIO_TECH"

    return-object v0

    .line 1961
    :sswitch_1bb
    const-string/jumbo v0, "RIL_REQUEST_GET_CELL_INFO_LIST"

    return-object v0

    .line 1963
    :sswitch_1bf
    const-string/jumbo v0, "RIL_REQUEST_SET_CELL_INFO_LIST_RATE"

    return-object v0

    .line 1964
    :sswitch_1c3
    const-string/jumbo v0, "RIL_REQUEST_SET_INITIAL_ATTACH_APN"

    return-object v0

    .line 1965
    :sswitch_1c7
    const-string/jumbo v0, "RIL_REQUEST_SET_DATA_PROFILE"

    return-object v0

    .line 1966
    :sswitch_1cb
    const-string/jumbo v0, "RIL_REQUEST_IMS_REGISTRATION_STATE"

    return-object v0

    .line 1967
    :sswitch_1cf
    const-string/jumbo v0, "RIL_REQUEST_IMS_SEND_SMS"

    return-object v0

    .line 1968
    :sswitch_1d3
    const-string/jumbo v0, "RIL_REQUEST_SIM_TRANSMIT_APDU_BASIC"

    return-object v0

    .line 1969
    :sswitch_1d7
    const-string/jumbo v0, "RIL_REQUEST_SIM_OPEN_CHANNEL"

    return-object v0

    .line 1970
    :sswitch_1db
    const-string/jumbo v0, "RIL_REQUEST_SIM_CLOSE_CHANNEL"

    return-object v0

    .line 1972
    :sswitch_1df
    const-string/jumbo v0, "RIL_REQUEST_SIM_TRANSMIT_APDU_CHANNEL"

    return-object v0

    .line 1973
    :sswitch_1e3
    const-string/jumbo v0, "RIL_REQUEST_NV_READ_ITEM"

    return-object v0

    .line 1974
    :sswitch_1e7
    const-string/jumbo v0, "RIL_REQUEST_NV_WRITE_ITEM"

    return-object v0

    .line 1975
    :sswitch_1eb
    const-string/jumbo v0, "RIL_REQUEST_NV_WRITE_CDMA_PRL"

    return-object v0

    .line 1976
    :sswitch_1ef
    const-string/jumbo v0, "RIL_REQUEST_NV_RESET_CONFIG"

    return-object v0

    .line 1977
    :sswitch_1f3
    const-string/jumbo v0, "RIL_REQUEST_SET_UICC_SUBSCRIPTION"

    return-object v0

    .line 1978
    :sswitch_1f7
    const-string/jumbo v0, "RIL_REQUEST_ALLOW_DATA"

    return-object v0

    .line 1979
    :sswitch_1fb
    const-string/jumbo v0, "GET_HARDWARE_CONFIG"

    return-object v0

    .line 1980
    :sswitch_1ff
    const-string/jumbo v0, "RIL_REQUEST_SIM_AUTHENTICATION"

    return-object v0

    .line 1981
    :sswitch_203
    const-string/jumbo v0, "RIL_REQUEST_SHUTDOWN"

    return-object v0

    .line 1983
    :sswitch_207
    const-string/jumbo v0, "RIL_REQUEST_SET_RADIO_CAPABILITY"

    return-object v0

    .line 1985
    :sswitch_20b
    const-string/jumbo v0, "RIL_REQUEST_GET_RADIO_CAPABILITY"

    return-object v0

    .line 1987
    :sswitch_20f
    const-string/jumbo v0, "HANGUP_ALL"

    return-object v0

    .line 1988
    :sswitch_213
    const-string/jumbo v0, "FORCE_RELEASE_CALL"

    return-object v0

    .line 1989
    :sswitch_217
    const-string/jumbo v0, "SET_CALL_INDICATION"

    return-object v0

    .line 1990
    :sswitch_21b
    const-string/jumbo v0, "EMERGENCY_DIAL"

    return-object v0

    .line 1991
    :sswitch_21f
    const-string/jumbo v0, "SET_ECC_SERVICE_CATEGORY"

    return-object v0

    .line 1992
    :sswitch_223
    const-string/jumbo v0, "SET_ECC_LIST"

    return-object v0

    .line 1995
    :sswitch_227
    const-string/jumbo v0, "SET_SPEECH_CODEC_INFO"

    return-object v0

    .line 1998
    :sswitch_22b
    const-string/jumbo v0, "RIL_REQUEST_VT_DIAL"

    return-object v0

    .line 1999
    :sswitch_22f
    const-string/jumbo v0, "VOICE_ACCEPT"

    return-object v0

    .line 2000
    :sswitch_233
    const-string/jumbo v0, "RIL_REQUEST_REPLACE_VT_CALL"

    return-object v0

    .line 2005
    :sswitch_237
    const-string/jumbo v0, "RIL_REQUEST_ADD_IMS_CONFERENCE_CALL_MEMBER"

    return-object v0

    .line 2007
    :sswitch_23b
    const-string/jumbo v0, "RIL_REQUEST_REMOVE_IMS_CONFERENCE_CALL_MEMBER"

    return-object v0

    .line 2008
    :sswitch_23f
    const-string/jumbo v0, "RIL_REQUEST_DIAL_WITH_SIP_URI"

    return-object v0

    .line 2009
    :sswitch_243
    const-string/jumbo v0, "RIL_REQUEST_RESUNME_CALL"

    return-object v0

    .line 2010
    :sswitch_247
    const-string/jumbo v0, "RIL_REQUEST_HOLD_CALL"

    return-object v0

    .line 2014
    :sswitch_24b
    const-string/jumbo v0, "GET_COLP"

    return-object v0

    .line 2015
    :sswitch_24f
    const-string/jumbo v0, "SET_COLP"

    return-object v0

    .line 2016
    :sswitch_253
    const-string/jumbo v0, "GET_COLR"

    return-object v0

    .line 2020
    :sswitch_257
    const-string/jumbo v0, "QUERY_SIM_NETWORK_LOCK"

    return-object v0

    .line 2021
    :sswitch_25b
    const-string/jumbo v0, "SET_SIM_NETWORK_LOCK"

    return-object v0

    .line 2024
    :sswitch_25f
    const-string/jumbo v0, "RIL_REQUEST_GENERAL_SIM_AUTH"

    return-object v0

    .line 2025
    :sswitch_263
    const-string/jumbo v0, "RIL_REQUEST_OPEN_ICC_APPLICATION"

    return-object v0

    .line 2027
    :sswitch_267
    const-string/jumbo v0, "RIL_REQUEST_GET_ICC_APPLICATION_STATUS"

    return-object v0

    .line 2028
    :sswitch_26b
    const-string/jumbo v0, "SIM_IO_EX"

    return-object v0

    .line 2031
    :sswitch_26f
    const-string/jumbo v0, "RIL_REQUEST_QUERY_PHB_STORAGE_INFO"

    return-object v0

    .line 2032
    :sswitch_273
    const-string/jumbo v0, "RIL_REQUEST_WRITE_PHB_ENTRY"

    return-object v0

    .line 2033
    :sswitch_277
    const-string/jumbo v0, "RIL_REQUEST_READ_PHB_ENTRY"

    return-object v0

    .line 2034
    :sswitch_27b
    const-string/jumbo v0, "RIL_REQUEST_QUERY_UPB_CAPABILITY"

    return-object v0

    .line 2035
    :sswitch_27f
    const-string/jumbo v0, "RIL_REQUEST_EDIT_UPB_ENTRY"

    return-object v0

    .line 2036
    :sswitch_283
    const-string/jumbo v0, "RIL_REQUEST_DELETE_UPB_ENTRY"

    return-object v0

    .line 2037
    :sswitch_287
    const-string/jumbo v0, "RIL_REQUEST_READ_UPB_GAS_LIST"

    return-object v0

    .line 2038
    :sswitch_28b
    const-string/jumbo v0, "RIL_REQUEST_READ_UPB_GRP"

    return-object v0

    .line 2039
    :sswitch_28f
    const-string/jumbo v0, "RIL_REQUEST_WRITE_UPB_GRP"

    return-object v0

    .line 2040
    :sswitch_293
    const-string/jumbo v0, "RIL_REQUEST_GET_PHB_STRING_LENGTH"

    return-object v0

    .line 2041
    :sswitch_297
    const-string/jumbo v0, "RIL_REQUEST_GET_PHB_MEM_STORAGE"

    return-object v0

    .line 2042
    :sswitch_29b
    const-string/jumbo v0, "RIL_REQUEST_SET_PHB_MEM_STORAGE"

    return-object v0

    .line 2043
    :sswitch_29f
    const-string/jumbo v0, "RIL_REQUEST_READ_PHB_ENTRY_EXT"

    return-object v0

    .line 2044
    :sswitch_2a3
    const-string/jumbo v0, "RIL_REQUEST_WRITE_PHB_ENTRY_EXT"

    return-object v0

    .line 2049
    :sswitch_2a7
    const-string/jumbo v0, "SET_NETWORK_SELECTION_MANUAL_WITH_ACT"

    return-object v0

    .line 2050
    :sswitch_2ab
    const-string/jumbo v0, "RIL_REQUEST_GET_POL_CAPABILITY"

    return-object v0

    .line 2051
    :sswitch_2af
    const-string/jumbo v0, "RIL_REQUEST_GET_POL_LIST"

    return-object v0

    .line 2052
    :sswitch_2b3
    const-string/jumbo v0, "RIL_REQUEST_SET_POL_ENTRY"

    return-object v0

    .line 2053
    :sswitch_2b7
    const-string/jumbo v0, "RIL_REQUEST_SET_TRM"

    return-object v0

    .line 2055
    :sswitch_2bb
    const-string/jumbo v0, "QUERY_AVAILABLE_NETWORKS_WITH_ACT"

    return-object v0

    .line 2057
    :sswitch_2bf
    const-string/jumbo v0, "RIL_REQUEST_GET_FEMTOCELL_LIST"

    return-object v0

    .line 2058
    :sswitch_2c3
    const-string/jumbo v0, "RIL_REQUEST_ABORT_FEMTOCELL_LIST"

    return-object v0

    .line 2059
    :sswitch_2c7
    const-string/jumbo v0, "RIL_REQUEST_SELECT_FEMTOCELL"

    return-object v0

    .line 2062
    :sswitch_2cb
    const-string/jumbo v0, "RIL_REQUEST_STK_EVDL_CALL_BY_AP"

    return-object v0

    .line 2063
    :sswitch_2cf
    const-string/jumbo v0, "RIL_REQUEST_QUERY_MODEM_TYPE"

    return-object v0

    .line 2064
    :sswitch_2d3
    const-string/jumbo v0, "RIL_REQUEST_STORE_MODEM_TYPE"

    return-object v0

    .line 2065
    :sswitch_2d7
    const-string/jumbo v0, "SIM_GET_ATR"

    return-object v0

    .line 2066
    :sswitch_2db
    const-string/jumbo v0, "SIM_OPEN_CHANNEL_WITH_SW"

    return-object v0

    .line 2069
    :sswitch_2df
    const-string/jumbo v0, "RIL_REQUEST_SET_IMS_ENABLE"

    return-object v0

    .line 2072
    :sswitch_2e3
    const-string/jumbo v0, "RIL_REQUEST_SET_SCRI"

    return-object v0

    .line 2073
    :sswitch_2e7
    const-string/jumbo v0, "RIL_REQUEST_SET_FD_MODE"

    return-object v0

    .line 2075
    :sswitch_2eb
    const-string/jumbo v0, "RIL_REQUEST_GET_SMS_PARAMS"

    return-object v0

    .line 2076
    :sswitch_2ef
    const-string/jumbo v0, "RIL_REQUEST_SET_SMS_PARAMS"

    return-object v0

    .line 2077
    :sswitch_2f3
    const-string/jumbo v0, "RIL_REQUEST_GET_SMS_SIM_MEM_STATUS"

    return-object v0

    .line 2078
    :sswitch_2f7
    const-string/jumbo v0, "RIL_REQUEST_SET_ETWS"

    return-object v0

    .line 2080
    :sswitch_2fb
    const-string/jumbo v0, "RIL_REQUEST_SET_CB_CHANNEL_CONFIG_INFO"

    return-object v0

    .line 2082
    :sswitch_2ff
    const-string/jumbo v0, "RIL_REQUEST_SET_CB_LANGUAGE_CONFIG_INFO"

    return-object v0

    .line 2083
    :sswitch_303
    const-string/jumbo v0, "RIL_REQUEST_GET_CB_CONFIG_INFO"

    return-object v0

    .line 2084
    :sswitch_307
    const-string/jumbo v0, "RIL_REQUEST_REMOVE_CB_MESSAGE"

    return-object v0

    .line 2086
    :sswitch_30b
    const-string/jumbo v0, "RIL_REQUEST_SET_DATA_CENTRIC"

    return-object v0

    .line 2088
    :sswitch_30f
    const-string/jumbo v0, "MODEM_POWEROFF"

    return-object v0

    .line 2089
    :sswitch_313
    const-string/jumbo v0, "MODEM_POWERON"

    return-object v0

    .line 2091
    :sswitch_317
    const-string/jumbo v0, "RIL_REQUEST_SET_DATA_ON_TO_MD"

    return-object v0

    .line 2093
    :sswitch_31b
    const-string/jumbo v0, "RIL_REQUEST_SET_REMOVE_RESTRICT_EUTRAN_MODE"

    return-object v0

    .line 2094
    :sswitch_31f
    const-string/jumbo v0, "RIL_REQUEST_BTSIM_CONNECT"

    return-object v0

    .line 2096
    :sswitch_323
    const-string/jumbo v0, "RIL_REQUEST_BTSIM_DISCONNECT_OR_POWEROFF"

    return-object v0

    .line 2098
    :sswitch_327
    const-string/jumbo v0, "RIL_REQUEST_BTSIM_POWERON_OR_RESETSIM"

    return-object v0

    .line 2099
    :sswitch_32b
    const-string/jumbo v0, "RIL_REQUEST_SEND_BTSIM_TRANSFERAPDU"

    return-object v0

    .line 2102
    :sswitch_32f
    const-string/jumbo v0, "RIL_REQUEST_CONFERENCE_DIAL"

    return-object v0

    .line 2104
    :sswitch_333
    const-string/jumbo v0, "RIL_REQUEST_RELOAD_MODEM_TYPE"

    return-object v0

    .line 2106
    :sswitch_337
    const-string/jumbo v0, "RIL_REQUEST_SET_IMS_CALL_STATUS"

    return-object v0

    .line 2111
    :sswitch_33b
    const-string/jumbo v0, "RIL_REQUEST_SET_SRVCC_CALL_CONTEXT_TRANSFER"

    return-object v0

    .line 2113
    :sswitch_33f
    const-string/jumbo v0, "RIL_REQUEST_UPDATE_IMS_REGISTRATION_STATUS"

    return-object v0

    .line 2117
    :sswitch_343
    const-string/jumbo v0, "RIL_REQUEST_CONFIG_MODEM_STATUS"

    return-object v0

    .line 2119
    :sswitch_347
    const-string/jumbo v0, "RIL_REQUEST_GET_NITZ_TIME"

    return-object v0

    .line 2120
    :sswitch_34b
    const-string/jumbo v0, "RIL_REQUEST_QUERY_UIM_INSERTED"

    return-object v0

    .line 2121
    :sswitch_34f
    const-string/jumbo v0, "RIL_REQUEST_SWITCH_HPF"

    return-object v0

    .line 2122
    :sswitch_353
    const-string/jumbo v0, "RIL_REQUEST_SET_AVOID_SYS"

    return-object v0

    .line 2123
    :sswitch_357
    const-string/jumbo v0, "RIL_REQUEST_QUERY_AVOID_SYS"

    return-object v0

    .line 2124
    :sswitch_35b
    const-string/jumbo v0, "RIL_REQUEST_QUERY_CDMA_NETWORK_INFO"

    return-object v0

    .line 2125
    :sswitch_35f
    const-string/jumbo v0, "RIL_REQUEST_GET_LOCAL_INFO"

    return-object v0

    .line 2126
    :sswitch_363
    const-string/jumbo v0, "RIL_REQUEST_UTK_REFRESH"

    return-object v0

    .line 2128
    :sswitch_367
    const-string/jumbo v0, "RIL_REQUEST_QUERY_SMS_AND_PHONEBOOK_STATUS"

    return-object v0

    .line 2130
    :sswitch_36b
    const-string/jumbo v0, "RIL_REQUEST_QUERY_NETWORK_REGISTRATION"

    return-object v0

    .line 2131
    :sswitch_36f
    const-string/jumbo v0, "RIL_REQUEST_AGPS_TCP_CONNIND"

    return-object v0

    .line 2132
    :sswitch_373
    const-string/jumbo v0, "RIL_REQUEST_AGPS_SET_MPC_IPPORT"

    return-object v0

    .line 2133
    :sswitch_377
    const-string/jumbo v0, "RIL_REQUEST_AGPS_GET_MPC_IPPORT"

    return-object v0

    .line 2134
    :sswitch_37b
    const-string/jumbo v0, "RIL_REQUEST_SET_MEID"

    return-object v0

    .line 2135
    :sswitch_37f
    const-string/jumbo v0, "RIL_REQUEST_SET_ETS_DEV"

    return-object v0

    .line 2136
    :sswitch_383
    const-string/jumbo v0, "RIL_REQUEST_WRITE_MDN"

    return-object v0

    .line 2137
    :sswitch_387
    const-string/jumbo v0, "RIL_REQUEST_SET_VIA_TRM"

    return-object v0

    .line 2138
    :sswitch_38b
    const-string/jumbo v0, "RIL_REQUEST_SET_ARSI_THRESHOLD"

    return-object v0

    .line 2139
    :sswitch_38f
    const-string/jumbo v0, "RIL_REQUEST_QUERY_UTK_MENU_FROM_MD"

    return-object v0

    .line 2140
    :sswitch_393
    const-string/jumbo v0, "RIL_REQUEST_QUERY_STK_MENU_FROM_MD"

    return-object v0

    .line 2143
    :sswitch_397
    const-string/jumbo v0, "RIL_REQUEST_SET_ACTIVE_PS_SLOT"

    return-object v0

    .line 2145
    :sswitch_39b
    const-string/jumbo v0, "RIL_REQUEST_CONFIRM_INTER_3GPP_IRAT_CHANGE"

    return-object v0

    .line 2147
    :sswitch_39f
    const-string/jumbo v0, "RIL_REQUEST_DEACTIVATE_LINK_DOWN_PDN"

    return-object v0

    .line 2150
    :sswitch_3a3
    const-string/jumbo v0, "RIL_REQUEST_SET_SVLTE_RAT_MODE"

    return-object v0

    .line 2154
    :sswitch_3a7
    const-string/jumbo v0, "RIL_REQUEST_SET_REG_SUSPEND_ENABLED"

    return-object v0

    .line 2155
    :sswitch_3ab
    const-string/jumbo v0, "RIL_REQUEST_RESUME_REGISTRATION"

    return-object v0

    .line 2157
    :sswitch_3af
    const-string/jumbo v0, "RIL_REQUEST_SET_REG_SUSPEND_ENABLED_CDMA"

    return-object v0

    .line 2159
    :sswitch_3b3
    const-string/jumbo v0, "RIL_REQUEST_RESUME_REGISTRATION_CDMA"

    return-object v0

    .line 2161
    :sswitch_3b7
    const-string/jumbo v0, "RIL_REQUEST_CONFIG_EVDO_MODE"

    return-object v0

    .line 2165
    :sswitch_3bb
    const-string/jumbo v0, "RIL_REQUEST_SET_STK_UTK_MODE"

    return-object v0

    .line 2169
    :sswitch_3bf
    const-string/jumbo v0, "RIL_UNSOL_CDMA_SIGNAL_FADE"

    return-object v0

    .line 2172
    :sswitch_3c3
    const-string/jumbo v0, "RIL_UNSOL_CDMA_TONE_SIGNALS"

    return-object v0

    .line 2174
    :sswitch_3c7
    const-string/jumbo v0, "RIL_REQUEST_SWITCH_ANTENNA"

    return-object v0

    .line 2176
    :sswitch_3cb
    const-string/jumbo v0, "RIL_REQUEST_VIDEO_CALL_ACCEPT"

    return-object v0

    .line 2180
    :sswitch_3cf
    const-string/jumbo v0, "RIL_REQUEST_SET_VOLTE_ENABLE"

    return-object v0

    .line 2182
    :sswitch_3d3
    const-string/jumbo v0, "RIL_REQUEST_SET_WFC_ENABLE"

    return-object v0

    .line 2184
    :sswitch_3d7
    const-string/jumbo v0, "RIL_REQUEST_SET_IMS_VOICE_ENABLE"

    return-object v0

    .line 2186
    :sswitch_3db
    const-string/jumbo v0, "RIL_REQUEST_SET_IMS_VIDEO_ENABLE"

    return-object v0

    .line 2189
    :sswitch_3df
    const-string/jumbo v0, "RIL_REQUEST_VT_DIAL_WITH_SIP_URI"

    return-object v0

    .line 2192
    :sswitch_3e3
    const-string/jumbo v0, "RIL_REQUEST_IMS_DEREG_NOTIFICATION"

    return-object v0

    .line 1824
    nop

    :sswitch_data_3e8
    .sparse-switch
        0x1 -> :sswitch_7
        0x2 -> :sswitch_b
        0x3 -> :sswitch_f
        0x4 -> :sswitch_13
        0x5 -> :sswitch_17
        0x6 -> :sswitch_1b
        0x7 -> :sswitch_1f
        0x8 -> :sswitch_23
        0x9 -> :sswitch_27
        0xa -> :sswitch_2b
        0xb -> :sswitch_2f
        0xc -> :sswitch_33
        0xd -> :sswitch_37
        0xe -> :sswitch_3b
        0xf -> :sswitch_3f
        0x10 -> :sswitch_43
        0x11 -> :sswitch_47
        0x12 -> :sswitch_4b
        0x13 -> :sswitch_4f
        0x14 -> :sswitch_53
        0x15 -> :sswitch_57
        0x16 -> :sswitch_5b
        0x17 -> :sswitch_5f
        0x18 -> :sswitch_63
        0x19 -> :sswitch_67
        0x1a -> :sswitch_6b
        0x1b -> :sswitch_6f
        0x1c -> :sswitch_73
        0x1d -> :sswitch_77
        0x1e -> :sswitch_7b
        0x1f -> :sswitch_7f
        0x20 -> :sswitch_83
        0x21 -> :sswitch_87
        0x22 -> :sswitch_8b
        0x23 -> :sswitch_8f
        0x24 -> :sswitch_93
        0x25 -> :sswitch_97
        0x26 -> :sswitch_9b
        0x27 -> :sswitch_9f
        0x28 -> :sswitch_a3
        0x29 -> :sswitch_a7
        0x2a -> :sswitch_ab
        0x2b -> :sswitch_af
        0x2c -> :sswitch_b3
        0x2d -> :sswitch_b7
        0x2e -> :sswitch_bb
        0x2f -> :sswitch_bf
        0x30 -> :sswitch_c3
        0x31 -> :sswitch_cb
        0x32 -> :sswitch_cf
        0x33 -> :sswitch_d3
        0x34 -> :sswitch_d7
        0x35 -> :sswitch_db
        0x36 -> :sswitch_df
        0x37 -> :sswitch_e3
        0x38 -> :sswitch_e7
        0x39 -> :sswitch_eb
        0x3a -> :sswitch_ef
        0x3b -> :sswitch_f3
        0x3c -> :sswitch_f7
        0x3d -> :sswitch_fb
        0x3e -> :sswitch_ff
        0x3f -> :sswitch_103
        0x40 -> :sswitch_107
        0x41 -> :sswitch_10b
        0x42 -> :sswitch_10f
        0x43 -> :sswitch_113
        0x44 -> :sswitch_117
        0x45 -> :sswitch_11b
        0x46 -> :sswitch_11f
        0x47 -> :sswitch_123
        0x48 -> :sswitch_127
        0x49 -> :sswitch_12b
        0x4a -> :sswitch_12f
        0x4b -> :sswitch_133
        0x4c -> :sswitch_137
        0x4d -> :sswitch_13b
        0x4e -> :sswitch_13f
        0x4f -> :sswitch_143
        0x50 -> :sswitch_147
        0x51 -> :sswitch_14b
        0x52 -> :sswitch_14f
        0x53 -> :sswitch_153
        0x54 -> :sswitch_157
        0x55 -> :sswitch_15b
        0x56 -> :sswitch_17b
        0x57 -> :sswitch_15f
        0x58 -> :sswitch_163
        0x59 -> :sswitch_167
        0x5a -> :sswitch_16b
        0x5b -> :sswitch_177
        0x5c -> :sswitch_16f
        0x5d -> :sswitch_173
        0x5e -> :sswitch_17f
        0x5f -> :sswitch_183
        0x60 -> :sswitch_187
        0x61 -> :sswitch_18b
        0x62 -> :sswitch_18f
        0x63 -> :sswitch_19b
        0x64 -> :sswitch_193
        0x65 -> :sswitch_197
        0x66 -> :sswitch_19f
        0x67 -> :sswitch_1a3
        0x68 -> :sswitch_1a7
        0x69 -> :sswitch_1ab
        0x6a -> :sswitch_1af
        0x6b -> :sswitch_1b3
        0x6c -> :sswitch_1b7
        0x6d -> :sswitch_1bb
        0x6e -> :sswitch_1bf
        0x6f -> :sswitch_1c3
        0x70 -> :sswitch_1cb
        0x71 -> :sswitch_1cf
        0x72 -> :sswitch_1d3
        0x73 -> :sswitch_1d7
        0x74 -> :sswitch_1db
        0x75 -> :sswitch_1df
        0x76 -> :sswitch_1e3
        0x77 -> :sswitch_1e7
        0x78 -> :sswitch_1eb
        0x79 -> :sswitch_1ef
        0x7a -> :sswitch_1f3
        0x7b -> :sswitch_1f7
        0x7c -> :sswitch_1fb
        0x7d -> :sswitch_1ff
        0x80 -> :sswitch_1c7
        0x81 -> :sswitch_203
        0x82 -> :sswitch_20b
        0x83 -> :sswitch_207
        0x7d0 -> :sswitch_24b
        0x7d1 -> :sswitch_24f
        0x7d2 -> :sswitch_253
        0x7da -> :sswitch_30f
        0x7dc -> :sswitch_26f
        0x7dd -> :sswitch_273
        0x7de -> :sswitch_277
        0x7e2 -> :sswitch_257
        0x7e3 -> :sswitch_25b
        0x7e4 -> :sswitch_2e3
        0x7e5 -> :sswitch_31f
        0x7e6 -> :sswitch_323
        0x7e7 -> :sswitch_327
        0x7e8 -> :sswitch_32b
        0x7e9 -> :sswitch_2a7
        0x7ec -> :sswitch_313
        0x7ed -> :sswitch_2f3
        0x7f0 -> :sswitch_2ab
        0x7f1 -> :sswitch_2af
        0x7f2 -> :sswitch_2b3
        0x7f3 -> :sswitch_27b
        0x7f4 -> :sswitch_27f
        0x7f5 -> :sswitch_283
        0x7f6 -> :sswitch_287
        0x7f7 -> :sswitch_28b
        0x7f8 -> :sswitch_28f
        0x7fb -> :sswitch_2b7
        0x7fe -> :sswitch_293
        0x7ff -> :sswitch_297
        0x800 -> :sswitch_29b
        0x801 -> :sswitch_29f
        0x802 -> :sswitch_2a3
        0x803 -> :sswitch_2eb
        0x804 -> :sswitch_2ef
        0x807 -> :sswitch_2d7
        0x808 -> :sswitch_2fb
        0x809 -> :sswitch_2ff
        0x80a -> :sswitch_303
        0x80c -> :sswitch_2f7
        0x80d -> :sswitch_2e7
        0x80f -> :sswitch_2db
        0x810 -> :sswitch_3a7
        0x811 -> :sswitch_3ab
        0x812 -> :sswitch_2d3
        0x813 -> :sswitch_2cf
        0x81b -> :sswitch_2cb
        0x81c -> :sswitch_2bf
        0x81d -> :sswitch_2c3
        0x81e -> :sswitch_2c7
        0x821 -> :sswitch_c7
        0x824 -> :sswitch_20f
        0x825 -> :sswitch_213
        0x826 -> :sswitch_217
        0x827 -> :sswitch_21b
        0x828 -> :sswitch_21f
        0x829 -> :sswitch_223
        0x82a -> :sswitch_25f
        0x82b -> :sswitch_263
        0x82c -> :sswitch_267
        0x82d -> :sswitch_26b
        0x82e -> :sswitch_2df
        0x82f -> :sswitch_2bb
        0x838 -> :sswitch_307
        0x839 -> :sswitch_30b
        0x83a -> :sswitch_237
        0x83b -> :sswitch_23b
        0x83c -> :sswitch_23f
        0x83d -> :sswitch_243
        0x83e -> :sswitch_227
        0x83f -> :sswitch_317
        0x840 -> :sswitch_31b
        0x841 -> :sswitch_337
        0x842 -> :sswitch_22b
        0x843 -> :sswitch_22f
        0x844 -> :sswitch_233
        0x845 -> :sswitch_343
        0x846 -> :sswitch_397
        0x847 -> :sswitch_39b
        0x848 -> :sswitch_3a3
        0x84a -> :sswitch_32f
        0x84b -> :sswitch_33b
        0x84c -> :sswitch_33f
        0x84d -> :sswitch_333
        0x84e -> :sswitch_247
        0x84f -> :sswitch_3bb
        0x850 -> :sswitch_3c7
        0x851 -> :sswitch_39f
        0x855 -> :sswitch_3cb
        0x85b -> :sswitch_3cf
        0x85c -> :sswitch_3d3
        0x85d -> :sswitch_3d7
        0x85e -> :sswitch_3db
        0x85f -> :sswitch_3df
        0x860 -> :sswitch_3e3
        0xfa0 -> :sswitch_347
        0xfa1 -> :sswitch_34b
        0xfa2 -> :sswitch_34f
        0xfa3 -> :sswitch_353
        0xfa4 -> :sswitch_357
        0xfa5 -> :sswitch_35b
        0xfa6 -> :sswitch_35f
        0xfa7 -> :sswitch_363
        0xfa8 -> :sswitch_367
        0xfa9 -> :sswitch_36b
        0xfaa -> :sswitch_36f
        0xfab -> :sswitch_373
        0xfac -> :sswitch_377
        0xfad -> :sswitch_37b
        0xfae -> :sswitch_3b3
        0xfaf -> :sswitch_3af
        0xfb0 -> :sswitch_37f
        0xfb1 -> :sswitch_383
        0xfb2 -> :sswitch_387
        0xfb3 -> :sswitch_38b
        0xfb6 -> :sswitch_3b7
        0xfb7 -> :sswitch_38f
        0xfb8 -> :sswitch_393
        0x1394 -> :sswitch_3bf
        0x1395 -> :sswitch_3c3
    .end sparse-switch
.end method

.method private responseCallRing(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 5
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 1669
    const/4 v1, 0x4

    new-array v0, v1, [C

    .line 1671
    .local v0, "response":[C
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-char v1, v1

    const/4 v2, 0x0

    aput-char v1, v0, v2

    .line 1672
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-char v1, v1

    const/4 v2, 0x1

    aput-char v1, v0, v2

    .line 1673
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-char v1, v1

    const/4 v2, 0x2

    aput-char v1, v0, v2

    .line 1674
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-char v1, v1

    const/4 v2, 0x3

    aput-char v1, v0, v2

    .line 1676
    return-object v0
.end method

.method private responseFailCause(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 4
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 1694
    new-instance v0, Lcom/android/internal/telephony/LastCallFailCause;

    invoke-direct {v0}, Lcom/android/internal/telephony/LastCallFailCause;-><init>()V

    .line 1695
    .local v0, "failCause":Lcom/android/internal/telephony/LastCallFailCause;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/LastCallFailCause;->causeCode:I

    .line 1696
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    if-lez v1, :cond_17

    .line 1697
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/LastCallFailCause;->vendorCause:Ljava/lang/String;

    .line 1699
    :cond_17
    return-object v0
.end method

.method private responseInts(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 6
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 1656
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1658
    .local v1, "numInts":I
    new-array v2, v1, [I

    .line 1660
    .local v2, "response":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_12

    .line 1661
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v0

    .line 1660
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1664
    :cond_12
    return-object v2
.end method

.method private responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 1647
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 1649
    .local v0, "response":[B
    return-object v0
.end method

.method private responseString(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 1628
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1630
    .local v0, "response":Ljava/lang/String;
    return-object v0
.end method

.method private responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 1637
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 1639
    .local v0, "response":[Ljava/lang/String;
    return-object v0
.end method

.method private responseSuppServiceNotification(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 4
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 1681
    new-instance v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SuppServiceNotification;-><init>()V

    .line 1683
    .local v0, "notification":Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    .line 1684
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    .line 1685
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->index:I

    .line 1686
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->type:I

    .line 1687
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->number:Ljava/lang/String;

    .line 1689
    return-object v0
.end method

.method static responseToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "request"    # I

    .prologue
    .line 1704
    sparse-switch p0, :sswitch_data_168

    .line 1819
    const-string/jumbo v0, "<unknown response>"

    return-object v0

    .line 1705
    :sswitch_7
    const-string/jumbo v0, "UNSOL_RESPONSE_RADIO_STATE_CHANGED"

    return-object v0

    .line 1706
    :sswitch_b
    const-string/jumbo v0, "UNSOL_RESPONSE_CALL_STATE_CHANGED"

    return-object v0

    .line 1707
    :sswitch_f
    const-string/jumbo v0, "UNSOL_RESPONSE_VOICE_NETWORK_STATE_CHANGED"

    return-object v0

    .line 1708
    :sswitch_13
    const-string/jumbo v0, "UNSOL_RESPONSE_NEW_SMS"

    return-object v0

    .line 1709
    :sswitch_17
    const-string/jumbo v0, "UNSOL_RESPONSE_NEW_SMS_STATUS_REPORT"

    return-object v0

    .line 1710
    :sswitch_1b
    const-string/jumbo v0, "UNSOL_RESPONSE_NEW_SMS_ON_SIM"

    return-object v0

    .line 1711
    :sswitch_1f
    const-string/jumbo v0, "UNSOL_ON_USSD"

    return-object v0

    .line 1712
    :sswitch_23
    const-string/jumbo v0, "UNSOL_ON_USSD_REQUEST"

    return-object v0

    .line 1713
    :sswitch_27
    const-string/jumbo v0, "UNSOL_NITZ_TIME_RECEIVED"

    return-object v0

    .line 1714
    :sswitch_2b
    const-string/jumbo v0, "UNSOL_SIGNAL_STRENGTH"

    return-object v0

    .line 1715
    :sswitch_2f
    const-string/jumbo v0, "UNSOL_DATA_CALL_LIST_CHANGED"

    return-object v0

    .line 1716
    :sswitch_33
    const-string/jumbo v0, "UNSOL_SUPP_SVC_NOTIFICATION"

    return-object v0

    .line 1717
    :sswitch_37
    const-string/jumbo v0, "UNSOL_STK_SESSION_END"

    return-object v0

    .line 1718
    :sswitch_3b
    const-string/jumbo v0, "UNSOL_STK_PROACTIVE_COMMAND"

    return-object v0

    .line 1719
    :sswitch_3f
    const-string/jumbo v0, "UNSOL_STK_EVENT_NOTIFY"

    return-object v0

    .line 1720
    :sswitch_43
    const-string/jumbo v0, "UNSOL_STK_CALL_SETUP"

    return-object v0

    .line 1721
    :sswitch_47
    const-string/jumbo v0, "UNSOL_SIM_SMS_STORAGE_FULL"

    return-object v0

    .line 1722
    :sswitch_4b
    const-string/jumbo v0, "UNSOL_SIM_REFRESH"

    return-object v0

    .line 1723
    :sswitch_4f
    const-string/jumbo v0, "UNSOL_CALL_RING"

    return-object v0

    .line 1724
    :sswitch_53
    const-string/jumbo v0, "UNSOL_RESPONSE_SIM_STATUS_CHANGED"

    return-object v0

    .line 1725
    :sswitch_57
    const-string/jumbo v0, "UNSOL_RESPONSE_CDMA_NEW_SMS"

    return-object v0

    .line 1726
    :sswitch_5b
    const-string/jumbo v0, "UNSOL_RESPONSE_NEW_BROADCAST_SMS"

    return-object v0

    .line 1727
    :sswitch_5f
    const-string/jumbo v0, "UNSOL_CDMA_RUIM_SMS_STORAGE_FULL"

    return-object v0

    .line 1728
    :sswitch_63
    const-string/jumbo v0, "UNSOL_RESTRICTED_STATE_CHANGED"

    return-object v0

    .line 1729
    :sswitch_67
    const-string/jumbo v0, "UNSOL_ENTER_EMERGENCY_CALLBACK_MODE"

    return-object v0

    .line 1730
    :sswitch_6b
    const-string/jumbo v0, "UNSOL_CDMA_CALL_WAITING"

    return-object v0

    .line 1731
    :sswitch_6f
    const-string/jumbo v0, "UNSOL_CDMA_OTA_PROVISION_STATUS"

    return-object v0

    .line 1732
    :sswitch_73
    const-string/jumbo v0, "UNSOL_CDMA_INFO_REC"

    return-object v0

    .line 1733
    :sswitch_77
    const-string/jumbo v0, "UNSOL_OEM_HOOK_RAW"

    return-object v0

    .line 1734
    :sswitch_7b
    const-string/jumbo v0, "UNSOL_RINGBACK_TONE"

    return-object v0

    .line 1735
    :sswitch_7f
    const-string/jumbo v0, "UNSOL_RESEND_INCALL_MUTE"

    return-object v0

    .line 1736
    :sswitch_83
    const-string/jumbo v0, "CDMA_SUBSCRIPTION_SOURCE_CHANGED"

    return-object v0

    .line 1737
    :sswitch_87
    const-string/jumbo v0, "UNSOL_CDMA_PRL_CHANGED"

    return-object v0

    .line 1738
    :sswitch_8b
    const-string/jumbo v0, "UNSOL_EXIT_EMERGENCY_CALLBACK_MODE"

    return-object v0

    .line 1739
    :sswitch_8f
    const-string/jumbo v0, "UNSOL_RIL_CONNECTED"

    return-object v0

    .line 1740
    :sswitch_93
    const-string/jumbo v0, "UNSOL_VOICE_RADIO_TECH_CHANGED"

    return-object v0

    .line 1741
    :sswitch_97
    const-string/jumbo v0, "UNSOL_CELL_INFO_LIST"

    return-object v0

    .line 1743
    :sswitch_9b
    const-string/jumbo v0, "UNSOL_RESPONSE_IMS_NETWORK_STATE_CHANGED"

    return-object v0

    .line 1745
    :sswitch_9f
    const-string/jumbo v0, "RIL_UNSOL_UICC_SUBSCRIPTION_STATUS_CHANGED"

    return-object v0

    .line 1747
    :sswitch_a3
    const-string/jumbo v0, "UNSOL_SRVCC_STATE_NOTIFY"

    return-object v0

    .line 1749
    :sswitch_a7
    const-string/jumbo v0, "UNSOL_SIP_CALL_PROGRESS_INDICATOR"

    return-object v0

    .line 1750
    :sswitch_ab
    const-string/jumbo v0, "RIL_UNSOL_HARDWARE_CONFIG_CHANGED"

    return-object v0

    .line 1752
    :sswitch_af
    const-string/jumbo v0, "UNSOL_CALL_FORWARDING"

    return-object v0

    .line 1753
    :sswitch_b3
    const-string/jumbo v0, "UNSOL_CRSS_NOTIFICATION"

    return-object v0

    .line 1754
    :sswitch_b7
    const-string/jumbo v0, "UNSOL_INCOMING_CALL_INDICATION"

    return-object v0

    .line 1755
    :sswitch_bb
    const-string/jumbo v0, "RIL_UNSOL_CIPHER_INDICATION"

    return-object v0

    .line 1756
    :sswitch_bf
    const-string/jumbo v0, "RIL_UNSOL_CNAP"

    return-object v0

    .line 1757
    :sswitch_c3
    const-string/jumbo v0, "UNSOL_SPEECH_CODEC_INFO"

    return-object v0

    .line 1760
    :sswitch_c7
    const-string/jumbo v0, "RIL_UNSOL_APPLICATION_SESSION_ID_CHANGED"

    return-object v0

    .line 1762
    :sswitch_cb
    const-string/jumbo v0, "UNSOL_SIM_MISSING"

    return-object v0

    .line 1763
    :sswitch_cf
    const-string/jumbo v0, "UNSOL_VIRTUAL_SIM_ON"

    return-object v0

    .line 1764
    :sswitch_d3
    const-string/jumbo v0, "UNSOL_VIRTUAL_SIM_ON_OFF"

    return-object v0

    .line 1765
    :sswitch_d7
    const-string/jumbo v0, "UNSOL_SIM_RECOVERY"

    return-object v0

    .line 1766
    :sswitch_db
    const-string/jumbo v0, "UNSOL_SIM_PLUG_OUT"

    return-object v0

    .line 1767
    :sswitch_df
    const-string/jumbo v0, "UNSOL_SIM_PLUG_IN"

    return-object v0

    .line 1768
    :sswitch_e3
    const-string/jumbo v0, "RIL_UNSOL_SIM_COMMON_SLOT_NO_CHANGED"

    return-object v0

    .line 1769
    :sswitch_e7
    const-string/jumbo v0, "RIL_UNSOL_DATA_ALLOWED"

    return-object v0

    .line 1770
    :sswitch_eb
    const-string/jumbo v0, "UNSOL_PHB_READY_NOTIFICATION"

    return-object v0

    .line 1771
    :sswitch_ef
    const-string/jumbo v0, "UNSOL_IMEI_LOCK"

    return-object v0

    .line 1772
    :sswitch_f3
    const-string/jumbo v0, "UNSOL_ACMT_INFO"

    return-object v0

    .line 1773
    :sswitch_f7
    const-string/jumbo v0, "UNSOL_RESPONSE_PS_NETWORK_STATE_CHANGED"

    return-object v0

    .line 1774
    :sswitch_fb
    const-string/jumbo v0, "UNSOL_RESPONSE_MMRR_STATUS_CHANGED"

    return-object v0

    .line 1775
    :sswitch_ff
    const-string/jumbo v0, "UNSOL_NEIGHBORING_CELL_INFO"

    return-object v0

    .line 1776
    :sswitch_103
    const-string/jumbo v0, "UNSOL_NETWORK_INFO"

    return-object v0

    .line 1777
    :sswitch_107
    const-string/jumbo v0, "RIL_UNSOL_IMS_ENABLE_DONE"

    return-object v0

    .line 1778
    :sswitch_10b
    const-string/jumbo v0, "RIL_UNSOL_IMS_DISABLE_DONE"

    return-object v0

    .line 1779
    :sswitch_10f
    const-string/jumbo v0, "RIL_UNSOL_IMS_REGISTRATION_INFO"

    return-object v0

    .line 1780
    :sswitch_113
    const-string/jumbo v0, "RIL_UNSOL_STK_SETUP_MENU_RESET"

    return-object v0

    .line 1781
    :sswitch_117
    const-string/jumbo v0, "RIL_UNSOL_RESPONSE_PLMN_CHANGED"

    return-object v0

    .line 1782
    :sswitch_11b
    const-string/jumbo v0, "RIL_UNSOL_RESPONSE_REGISTRATION_SUSPENDED"

    return-object v0

    .line 1784
    :sswitch_11f
    const-string/jumbo v0, "RIL_UNSOL_MELOCK_NOTIFICATION"

    return-object v0

    .line 1787
    :sswitch_123
    const-string/jumbo v0, "RIL_UNSOL_SCRI_RESULT"

    return-object v0

    .line 1788
    :sswitch_127
    const-string/jumbo v0, "RIL_UNSOL_STK_EVDL_CALL"

    return-object v0

    .line 1789
    :sswitch_12b
    const-string/jumbo v0, "RIL_UNSOL_STK_CALL_CTRL"

    return-object v0

    .line 1792
    :sswitch_12f
    const-string/jumbo v0, "RIL_UNSOL_ECONF_SRVCC_INDICATION"

    return-object v0

    .line 1794
    :sswitch_133
    const-string/jumbo v0, "RIL_UNSOL_ECONF_RESULT_INDICATION"

    return-object v0

    .line 1796
    :sswitch_137
    const-string/jumbo v0, "RIL_UNSOL_CALL_INFO_INDICATION"

    return-object v0

    .line 1799
    :sswitch_13b
    const-string/jumbo v0, "RIL_UNSOL_VOLTE_EPS_NETWORK_FEATURE_INFO"

    return-object v0

    .line 1800
    :sswitch_13f
    const-string/jumbo v0, "RIL_UNSOL_SRVCC_HANDOVER_INFO_INDICATION"

    return-object v0

    .line 1802
    :sswitch_143
    const-string/jumbo v0, "RIL_UNSOL_RAC_UPDATE"

    return-object v0

    .line 1803
    :sswitch_147
    const-string/jumbo v0, "RIL_UNSOL_REMOVE_RESTRICT_EUTRAN"

    return-object v0

    .line 1806
    :sswitch_14b
    const-string/jumbo v0, "RIL_UNSOL_MD_STATE_CHANGE"

    return-object v0

    .line 1808
    :sswitch_14f
    const-string/jumbo v0, "UNSOL_STK_CC_ALPHA_NOTIFY"

    return-object v0

    .line 1810
    :sswitch_153
    const-string/jumbo v0, "RIL_UNSOL_IMS_ENABLE_START"

    return-object v0

    .line 1811
    :sswitch_157
    const-string/jumbo v0, "RIL_UNSOL_IMS_DISABLE_START"

    return-object v0

    .line 1813
    :sswitch_15b
    const-string/jumbo v0, "RIL_UNSOL_CALLMOD_CHANGE_INDICATOR"

    return-object v0

    .line 1815
    :sswitch_15f
    const-string/jumbo v0, "RIL_UNSOL_VIDEO_CAPABILITY_INDICATOR"

    return-object v0

    .line 1817
    :sswitch_163
    const-string/jumbo v0, "RIL_UNSOL_IMS_DEREG_DONE"

    return-object v0

    .line 1704
    nop

    :sswitch_data_168
    .sparse-switch
        0x3e8 -> :sswitch_7
        0x3e9 -> :sswitch_b
        0x3ea -> :sswitch_f
        0x3eb -> :sswitch_13
        0x3ec -> :sswitch_17
        0x3ed -> :sswitch_1b
        0x3ee -> :sswitch_1f
        0x3ef -> :sswitch_23
        0x3f0 -> :sswitch_27
        0x3f1 -> :sswitch_2b
        0x3f2 -> :sswitch_2f
        0x3f3 -> :sswitch_33
        0x3f4 -> :sswitch_37
        0x3f5 -> :sswitch_3b
        0x3f6 -> :sswitch_3f
        0x3f7 -> :sswitch_43
        0x3f8 -> :sswitch_47
        0x3f9 -> :sswitch_4b
        0x3fa -> :sswitch_4f
        0x3fb -> :sswitch_53
        0x3fc -> :sswitch_57
        0x3fd -> :sswitch_5b
        0x3fe -> :sswitch_5f
        0x3ff -> :sswitch_63
        0x400 -> :sswitch_67
        0x401 -> :sswitch_6b
        0x402 -> :sswitch_6f
        0x403 -> :sswitch_73
        0x404 -> :sswitch_77
        0x405 -> :sswitch_7b
        0x406 -> :sswitch_7f
        0x407 -> :sswitch_83
        0x408 -> :sswitch_87
        0x409 -> :sswitch_8b
        0x40a -> :sswitch_8f
        0x40b -> :sswitch_93
        0x40c -> :sswitch_97
        0x40d -> :sswitch_9b
        0x40e -> :sswitch_9f
        0x40f -> :sswitch_a3
        0x410 -> :sswitch_ab
        0x414 -> :sswitch_14f
        0xbb8 -> :sswitch_ff
        0xbb9 -> :sswitch_103
        0xbba -> :sswitch_eb
        0xbbf -> :sswitch_123
        0xbc0 -> :sswitch_cb
        0xbc3 -> :sswitch_d7
        0xbc4 -> :sswitch_cf
        0xbc5 -> :sswitch_d3
        0xbc7 -> :sswitch_f7
        0xbc8 -> :sswitch_f3
        0xbca -> :sswitch_ef
        0xbcb -> :sswitch_fb
        0xbcc -> :sswitch_db
        0xbcd -> :sswitch_df
        0xbcf -> :sswitch_117
        0xbd0 -> :sswitch_11b
        0xbd1 -> :sswitch_127
        0xbd4 -> :sswitch_113
        0xbd5 -> :sswitch_c7
        0xbd6 -> :sswitch_12f
        0xbd7 -> :sswitch_107
        0xbd8 -> :sswitch_10b
        0xbd9 -> :sswitch_10f
        0xbdd -> :sswitch_143
        0xbde -> :sswitch_133
        0xbdf -> :sswitch_11f
        0xbe0 -> :sswitch_af
        0xbe1 -> :sswitch_b3
        0xbe2 -> :sswitch_b7
        0xbe3 -> :sswitch_bb
        0xbe4 -> :sswitch_bf
        0xbe5 -> :sswitch_e3
        0xbe6 -> :sswitch_e7
        0xbe7 -> :sswitch_12b
        0xbe9 -> :sswitch_137
        0xbea -> :sswitch_13b
        0xbeb -> :sswitch_13f
        0xbec -> :sswitch_c3
        0xbed -> :sswitch_14b
        0xbee -> :sswitch_147
        0xbf1 -> :sswitch_a7
        0xbf8 -> :sswitch_153
        0xbf9 -> :sswitch_157
        0xc05 -> :sswitch_15b
        0xc06 -> :sswitch_15f
        0xc0a -> :sswitch_163
    .end sparse-switch
.end method

.method private responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 1622
    const/4 v0, 0x0

    return-object v0
.end method

.method static retToString(ILjava/lang/Object;)Ljava/lang/String;
    .registers 11
    .param p0, "req"    # I
    .param p1, "ret"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    .line 2200
    if-nez p1, :cond_7

    const-string/jumbo v7, ""

    return-object v7

    .line 2205
    :cond_7
    instance-of v7, p1, [I

    if-eqz v7, :cond_3d

    move-object v2, p1

    .line 2206
    check-cast v2, [I

    .line 2207
    .local v2, "intArray":[I
    array-length v3, v2

    .line 2208
    .local v3, "length":I
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "{"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2209
    .local v5, "sb":Ljava/lang/StringBuilder;
    if-lez v3, :cond_32

    .line 2211
    const/4 v0, 0x1

    .local v0, "i":I
    aget v7, v2, v8

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v1, v0

    .line 2212
    .end local v0    # "i":I
    .local v1, "i":I
    :goto_20
    if-ge v1, v3, :cond_32

    .line 2213
    const-string/jumbo v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget v8, v2, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_20

    .line 2216
    .end local v1    # "i":I
    :cond_32
    const-string/jumbo v7, "}"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2217
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2234
    .end local v2    # "intArray":[I
    .end local v3    # "length":I
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .local v4, "s":Ljava/lang/String;
    :goto_3c
    return-object v4

    .line 2218
    .end local v4    # "s":Ljava/lang/String;
    :cond_3d
    instance-of v7, p1, [Ljava/lang/String;

    if-eqz v7, :cond_73

    move-object v6, p1

    .line 2219
    check-cast v6, [Ljava/lang/String;

    .line 2220
    .local v6, "strings":[Ljava/lang/String;
    array-length v3, v6

    .line 2221
    .restart local v3    # "length":I
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "{"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2222
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    if-lez v3, :cond_68

    .line 2224
    const/4 v0, 0x1

    .restart local v0    # "i":I
    aget-object v7, v6, v8

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v0

    .line 2225
    .end local v0    # "i":I
    .restart local v1    # "i":I
    :goto_56
    if-ge v1, v3, :cond_68

    .line 2226
    const-string/jumbo v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget-object v8, v6, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_56

    .line 2229
    .end local v1    # "i":I
    :cond_68
    const-string/jumbo v7, "}"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2230
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "s":Ljava/lang/String;
    goto :goto_3c

    .line 2232
    .end local v3    # "length":I
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "strings":[Ljava/lang/String;
    :cond_73
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "s":Ljava/lang/String;
    goto :goto_3c
.end method

.method private riljLog(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 2238
    const-string/jumbo v0, "IMS_RILA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2239
    const-string/jumbo v2, ""

    .line 2238
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2237
    return-void
.end method

.method private riljLogv(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 2243
    const-string/jumbo v0, "IMS_RILA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2244
    const-string/jumbo v2, ""

    .line 2243
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2242
    return-void
.end method

.method private send(Lcom/mediatek/ims/RILRequest;)V
    .registers 6
    .param p1, "rr"    # Lcom/mediatek/ims/RILRequest;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1358
    iget-object v1, p0, Lcom/mediatek/ims/ImsRILAdapter;->mSocket:Landroid/net/LocalSocket;

    if-nez v1, :cond_d

    .line 1359
    invoke-virtual {p1, v2, v3}, Lcom/mediatek/ims/RILRequest;->onError(ILjava/lang/Object;)V

    .line 1360
    invoke-virtual {p1}, Lcom/mediatek/ims/RILRequest;->release()V

    .line 1361
    return-void

    .line 1364
    :cond_d
    iget-object v1, p0, Lcom/mediatek/ims/ImsRILAdapter;->mSender:Lcom/mediatek/ims/ImsRILAdapter$ImsRILSender;

    invoke-virtual {v1, v2, p1}, Lcom/mediatek/ims/ImsRILAdapter$ImsRILSender;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1366
    .local v0, "msg":Landroid/os/Message;
    invoke-direct {p0}, Lcom/mediatek/ims/ImsRILAdapter;->acquireWakeLock()V

    .line 1368
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1355
    return-void
.end method

.method private switchToRadioState(Lcom/mediatek/ims/ImsCommandsInterface$RadioState;)V
    .registers 2
    .param p1, "newState"    # Lcom/mediatek/ims/ImsCommandsInterface$RadioState;

    .prologue
    .line 2903
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/ImsRILAdapter;->setRadioState(Lcom/mediatek/ims/ImsCommandsInterface$RadioState;)V

    .line 2902
    return-void
.end method

.method private unsljLog(I)V
    .registers 4
    .param p1, "response"    # I

    .prologue
    .line 2248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2247
    return-void
.end method

.method private unsljLogMore(ILjava/lang/String;)V
    .registers 5
    .param p1, "response"    # I
    .param p2, "more"    # Ljava/lang/String;

    .prologue
    .line 2252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2251
    return-void
.end method

.method private unsljLogRet(ILjava/lang/Object;)V
    .registers 5
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 2256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/mediatek/ims/ImsRILAdapter;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2255
    return-void
.end method

.method private unsljLogvRet(ILjava/lang/Object;)V
    .registers 5
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 2260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/mediatek/ims/ImsRILAdapter;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/mediatek/ims/ImsRILAdapter;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsRILAdapter;->riljLogv(Ljava/lang/String;)V

    .line 2259
    return-void
.end method


# virtual methods
.method public accept()V
    .registers 4

    .prologue
    .line 530
    const/16 v1, 0x28

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/mediatek/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/RILRequest;

    move-result-object v0

    .line 532
    .local v0, "rr":Lcom/mediatek/ims/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/mediatek/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 534
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsRILAdapter;->send(Lcom/mediatek/ims/RILRequest;)V

    .line 528
    return-void
.end method

.method public acceptVideoCall(II)V
    .registers 6
    .param p1, "videoMode"    # I
    .param p2, "callId"    # I

    .prologue
    .line 547
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "acceptVideoCall : callId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", videoMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 551
    const/16 v1, 0x855

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/mediatek/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/RILRequest;

    move-result-object v0

    .line 553
    .local v0, "rr":Lcom/mediatek/ims/RILRequest;
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 554
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 555
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 558
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/mediatek/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 559
    const-string/jumbo v2, " "

    .line 558
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 559
    const-string/jumbo v2, ", "

    .line 558
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 561
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsRILAdapter;->send(Lcom/mediatek/ims/RILRequest;)V

    .line 545
    return-void
.end method

.method public acceptVtCallWithVoiceOnly(ILandroid/os/Message;)V
    .registers 6
    .param p1, "callId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 2878
    const/16 v1, 0x843

    invoke-static {v1, p2}, Lcom/mediatek/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/RILRequest;

    move-result-object v0

    .line 2880
    .local v0, "rr":Lcom/mediatek/ims/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2881
    iget v2, v0, Lcom/mediatek/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2880
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2881
    const-string/jumbo v2, " "

    .line 2880
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2883
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2884
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2886
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsRILAdapter;->send(Lcom/mediatek/ims/RILRequest;)V

    .line 2877
    return-void
.end method

.method public addConferenceMember(ILjava/lang/String;ILandroid/os/Message;)V
    .registers 8
    .param p1, "confCallId"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "callIdToAdd"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 857
    const/16 v1, 0x83a

    invoke-static {v1, p4}, Lcom/mediatek/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/RILRequest;

    move-result-object v0

    .line 859
    .local v0, "rr":Lcom/mediatek/ims/RILRequest;
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 860
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 861
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 862
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 864
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/mediatek/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 865
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsRILAdapter;->send(Lcom/mediatek/ims/RILRequest;)V

    .line 856
    return-void
.end method

.method public conferenceDial([Ljava/lang/String;IZLandroid/os/Message;)V
    .registers 14
    .param p1, "participants"    # [Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "isVideoCall"    # Z
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 2786
    const/16 v6, 0x84a

    invoke-static {v6, p4}, Lcom/mediatek/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/RILRequest;

    move-result-object v5

    .line 2788
    .local v5, "rr":Lcom/mediatek/ims/RILRequest;
    array-length v2, p1

    .line 2795
    .local v2, "numberOfParticipants":I
    add-int/lit8 v6, v2, 0x2

    add-int/lit8 v3, v6, 0x1

    .line 2796
    .local v3, "numberOfStrings":I
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 2799
    .local v4, "participantList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v6, "IMS_RILA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "conferenceDial: numberOfParticipants "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2800
    const-string/jumbo v8, "numberOfStrings:"

    .line 2799
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2803
    iget-object v6, v5, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v6, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2805
    if-eqz p3, :cond_7e

    .line 2806
    iget-object v6, v5, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2811
    :goto_45
    iget-object v6, v5, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2813
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "dialNumber$iterator":Ljava/util/Iterator;
    :goto_52
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_89

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2814
    .local v0, "dialNumber":Ljava/lang/String;
    iget-object v6, v5, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2816
    const-string/jumbo v6, "IMS_RILA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "conferenceDial: dialnumber "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    .line 2808
    .end local v0    # "dialNumber":Ljava/lang/String;
    .end local v1    # "dialNumber$iterator":Ljava/util/Iterator;
    :cond_7e
    iget-object v6, v5, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_45

    .line 2819
    .restart local v1    # "dialNumber$iterator":Ljava/util/Iterator;
    :cond_89
    iget-object v6, v5, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2821
    const-string/jumbo v6, "IMS_RILA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "conferenceDial: clirMode "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2825
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/mediatek/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Lcom/mediatek/ims/RILRequest;->mRequest:I

    invoke-static {v7}, Lcom/mediatek/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2828
    invoke-direct {p0, v5}, Lcom/mediatek/ims/ImsRILAdapter;->send(Lcom/mediatek/ims/RILRequest;)V

    .line 2785
    return-void
.end method

.method public deregisterIms(Landroid/os/Message;)V
    .registers 5
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 764
    const/16 v1, 0x860

    invoke-static {v1, p1}, Lcom/mediatek/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/RILRequest;

    move-result-object v0

    .line 766
    .local v0, "rr":Lcom/mediatek/ims/RILRequest;
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 768
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 770
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/mediatek/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 771
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsRILAdapter;->send(Lcom/mediatek/ims/RILRequest;)V

    .line 763
    return-void
.end method

.method public dial(Ljava/lang/String;ILandroid/os/Message;)V
    .registers 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 2722
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/mediatek/ims/ImsRILAdapter;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    .line 2721
    return-void
.end method

.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .registers 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 2727
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_69

    .line 2728
    const/16 v1, 0xa

    invoke-static {v1, p4}, Lcom/mediatek/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/RILRequest;

    move-result-object v0

    .line 2730
    .local v0, "rr":Lcom/mediatek/ims/RILRequest;
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2731
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2733
    if-nez p3, :cond_47

    .line 2734
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2742
    :goto_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/mediatek/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2744
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsRILAdapter;->send(Lcom/mediatek/ims/RILRequest;)V

    .line 2726
    :goto_46
    return-void

    .line 2736
    :cond_47
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2737
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2738
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2739
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_1e

    .line 2746
    .end local v0    # "rr":Lcom/mediatek/ims/RILRequest;
    :cond_69
    const/16 v1, 0x83c

    invoke-static {v1, p4}, Lcom/mediatek/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/RILRequest;

    move-result-object v0

    .line 2748
    .restart local v0    # "rr":Lcom/mediatek/ims/RILRequest;
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2749
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/mediatek/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2750
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsRILAdapter;->send(Lcom/mediatek/ims/RILRequest;)V

    goto :goto_46
.end method

.method public emergencyDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .registers 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 2756
    const/16 v1, 0x827

    invoke-static {v1, p4}, Lcom/mediatek/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/RILRequest;

    move-result-object v0

    .line 2758
    .local v0, "rr":Lcom/mediatek/ims/RILRequest;
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2759
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2760
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2762
    if-nez p3, :cond_46

    .line 2763
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2771
    :goto_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/mediatek/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2773
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsRILAdapter;->send(Lcom/mediatek/ims/RILRequest;)V

    .line 2755
    return-void

    .line 2765
    :cond_46
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2766
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2767
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2768
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_1d
.end method

.method public getCallInfo(Lcom/mediatek/ims/ImsCallInfo$State;)Lcom/mediatek/ims/ImsCallInfo;
    .registers 8
    .param p1, "state"    # Lcom/mediatek/ims/ImsCallInfo$State;

    .prologue
    .line 969
    iget-object v3, p0, Lcom/mediatek/ims/ImsRILAdapter;->mCallConnections:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 970
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ImsCallInfo;

    .line 971
    .local v0, "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    const-string/jumbo v3, "IMS_RILA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getCallInfo- callID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/mediatek/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "call num:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 972
    iget-object v5, v0, Lcom/mediatek/ims/ImsCallInfo;->mCallNum:Ljava/lang/String;

    .line 971
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 972
    const-string/jumbo v5, "call State:"

    .line 971
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 972
    iget-object v5, v0, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    .line 971
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    iget-object v3, v0, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    if-ne v3, p1, :cond_a

    .line 974
    return-object v0

    .line 977
    .end local v0    # "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    :cond_57
    const/4 v3, 0x0

    return-object v3
.end method

.method public getCallInfo(Ljava/lang/String;)Lcom/mediatek/ims/ImsCallInfo;
    .registers 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 959
    iget-object v0, p0, Lcom/mediatek/ims/ImsRILAdapter;->mCallConnections:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ImsCallInfo;

    return-object v0
.end method

.method public getLastCallFailCause(Landroid/os/Message;)V
    .registers 5
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 934
    const/16 v1, 0x12

    invoke-static {v1, p1}, Lcom/mediatek/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/RILRequest;

    move-result-object v0

    .line 936
    .local v0, "rr":Lcom/mediatek/ims/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/mediatek/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 938
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsRILAdapter;->send(Lcom/mediatek/ims/RILRequest;)V

    .line 932
    return-void
.end method

.method public hangupAllCall(Landroid/os/Message;)V
    .registers 5
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 946
    const/16 v1, 0x824

    invoke-static {v1, p1}, Lcom/mediatek/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/RILRequest;

    move-result-object v0

    .line 948
    .local v0, "rr":Lcom/mediatek/ims/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/mediatek/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 950
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsRILAdapter;->send(Lcom/mediatek/ims/RILRequest;)V

    .line 945
    return-void
.end method

.method public hold(ILandroid/os/Message;)V
    .registers 6
    .param p1, "callId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 598
    const/16 v1, 0x84e

    invoke-static {v1, p2}, Lcom/mediatek/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/RILRequest;

    move-result-object v0

    .line 600
    .local v0, "rr":Lcom/mediatek/ims/RILRequest;
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 601
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 604
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/mediatek/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 606
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsRILAdapter;->send(Lcom/mediatek/ims/RILRequest;)V

    .line 597
    return-void
.end method

.method public inviteParticipants(ILjava/lang/String;Landroid/os/Message;)V
    .registers 9
    .param p1, "confCallId"    # I
    .param p2, "participant"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 891
    const/4 v3, -0x1

    .line 893
    .local v3, "participantCallId":I
    iget-object v4, p0, Lcom/mediatek/ims/ImsRILAdapter;->mCallConnections:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 894
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ImsCallInfo;

    .line 895
    .local v0, "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    iget-object v4, v0, Lcom/mediatek/ims/ImsCallInfo;->mCallNum:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 896
    iget-object v4, v0, Lcom/mediatek/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 901
    .end local v0    # "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    :cond_2b
    invoke-virtual {p0, p1, p2, v3, p3}, Lcom/mediatek/ims/ImsRILAdapter;->addConferenceMember(ILjava/lang/String;ILandroid/os/Message;)V

    .line 890
    return-void
.end method

.method public inviteParticipantsByCallId(ILjava/lang/String;Landroid/os/Message;)V
    .registers 9
    .param p1, "confCallId"    # I
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 2932
    invoke-virtual {p0, p2}, Lcom/mediatek/ims/ImsRILAdapter;->getCallInfo(Ljava/lang/String;)Lcom/mediatek/ims/ImsCallInfo;

    move-result-object v2

    if-nez v2, :cond_10

    .line 2933
    const-string/jumbo v2, "IMS_RILA"

    const-string/jumbo v3, "Invite participants failed: can not get call info"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2934
    return-void

    .line 2936
    :cond_10
    const/4 v1, -0x1

    .line 2938
    .local v1, "id":I
    :try_start_11
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_14} :catch_1f

    move-result v1

    .line 2943
    invoke-virtual {p0, p2}, Lcom/mediatek/ims/ImsRILAdapter;->getCallInfo(Ljava/lang/String;)Lcom/mediatek/ims/ImsCallInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/mediatek/ims/ImsCallInfo;->mCallNum:Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v1, p3}, Lcom/mediatek/ims/ImsRILAdapter;->addConferenceMember(ILjava/lang/String;ILandroid/os/Message;)V

    .line 2931
    return-void

    .line 2939
    :catch_1f
    move-exception v0

    .line 2940
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v2, "IMS_RILA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invite participants failed: id is not integer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2941
    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .registers 6
    .param p1, "strings"    # [Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1011
    const/16 v1, 0x3c

    invoke-static {v1, p2}, Lcom/mediatek/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/RILRequest;

    move-result-object v0

    .line 1013
    .local v0, "rr":Lcom/mediatek/ims/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/mediatek/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1015
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1017
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsRILAdapter;->send(Lcom/mediatek/ims/RILRequest;)V

    .line 1009
    return-void
.end method

.method public merge(Landroid/os/Message;)V
    .registers 5
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 629
    invoke-static {}, Lcom/mediatek/common/mom/MobileManagerUtils;->isSupported()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 630
    const-string/jumbo v1, "sub-permission.MAKE_CONFERENCE_CALL"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->checkMoMSSubPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 631
    return-void

    .line 637
    :cond_10
    const/16 v1, 0x10

    invoke-static {v1, p1}, Lcom/mediatek/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/RILRequest;

    move-result-object v0

    .line 639
    .local v0, "rr":Lcom/mediatek/ims/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/mediatek/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 642
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsRILAdapter;->handleChldRelatedRequest(Lcom/mediatek/ims/RILRequest;)V

    .line 626
    return-void
.end method

.method public reject(I)V
    .registers 5
    .param p1, "callId"    # I

    .prologue
    .line 565
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IMS reject : callId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 567
    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/mediatek/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/RILRequest;

    move-result-object v0

    .line 569
    .local v0, "rr":Lcom/mediatek/ims/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/mediatek/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 572
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 573
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 575
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsRILAdapter;->send(Lcom/mediatek/ims/RILRequest;)V

    .line 564
    return-void
.end method

.method public removeConferenceMember(ILjava/lang/String;ILandroid/os/Message;)V
    .registers 8
    .param p1, "confCallId"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "callIdToRemove"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 870
    const/16 v1, 0x83b

    invoke-static {v1, p4}, Lcom/mediatek/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/RILRequest;

    move-result-object v0

    .line 872
    .local v0, "rr":Lcom/mediatek/ims/RILRequest;
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 873
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 874
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 875
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 877
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/mediatek/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 878
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsRILAdapter;->send(Lcom/mediatek/ims/RILRequest;)V

    .line 869
    return-void
.end method

.method public removeParticipants(ILjava/lang/String;Landroid/os/Message;)V
    .registers 9
    .param p1, "confCallId"    # I
    .param p2, "participant"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 913
    const/4 v3, -0x1

    .line 915
    .local v3, "participantCallId":I
    iget-object v4, p0, Lcom/mediatek/ims/ImsRILAdapter;->mCallConnections:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 916
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ImsCallInfo;

    .line 917
    .local v0, "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    iget-object v4, v0, Lcom/mediatek/ims/ImsCallInfo;->mCallNum:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 918
    iget-object v4, v0, Lcom/mediatek/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 923
    .end local v0    # "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    :cond_2b
    invoke-virtual {p0, p1, p2, v3, p3}, Lcom/mediatek/ims/ImsRILAdapter;->removeConferenceMember(ILjava/lang/String;ILandroid/os/Message;)V

    .line 912
    return-void
.end method

.method public replaceVtCall(ILandroid/os/Message;)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 2891
    const/16 v1, 0x844

    invoke-static {v1, p2}, Lcom/mediatek/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/RILRequest;

    move-result-object v0

    .line 2893
    .local v0, "rr":Lcom/mediatek/ims/RILRequest;
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2894
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2896
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/mediatek/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2898
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsRILAdapter;->send(Lcom/mediatek/ims/RILRequest;)V

    .line 2889
    return-void
.end method

.method public resume(ILandroid/os/Message;)V
    .registers 6
    .param p1, "callId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 615
    const/16 v1, 0x83d

    invoke-static {v1, p2}, Lcom/mediatek/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/RILRequest;

    move-result-object v0

    .line 617
    .local v0, "rr":Lcom/mediatek/ims/RILRequest;
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 618
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 621
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/mediatek/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 623
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsRILAdapter;->send(Lcom/mediatek/ims/RILRequest;)V

    .line 614
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .registers 6
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 648
    const/16 v1, 0x18

    invoke-static {v1, p2}, Lcom/mediatek/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/RILRequest;

    move-result-object v0

    .line 650
    .local v0, "rr":Lcom/mediatek/ims/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/mediatek/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 652
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 654
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsRILAdapter;->send(Lcom/mediatek/ims/RILRequest;)V

    .line 646
    return-void
.end method

.method public sendWfcProfileInfo(I)V
    .registers 7
    .param p1, "wfcPreference"    # I

    .prologue
    const/4 v4, 0x0

    .line 1002
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 1003
    .local v0, "s":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AT+EWFCP="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 1004
    const-string/jumbo v1, ""

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 1005
    const-string/jumbo v1, "IMS_RILA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "At cmnd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 1001
    return-void
.end method

.method public setCallIndication(III)V
    .registers 7
    .param p1, "mode"    # I
    .param p2, "callId"    # I
    .param p3, "seqNum"    # I

    .prologue
    .line 728
    const/16 v1, 0x826

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/mediatek/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/RILRequest;

    move-result-object v0

    .line 730
    .local v0, "rr":Lcom/mediatek/ims/RILRequest;
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 731
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 732
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 733
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 735
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/mediatek/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 736
    const-string/jumbo v2, " "

    .line 735
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 736
    const-string/jumbo v2, ", "

    .line 735
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 736
    const-string/jumbo v2, ", "

    .line 735
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 738
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsRILAdapter;->send(Lcom/mediatek/ims/RILRequest;)V

    .line 726
    return-void
.end method

.method public setEccServiceCategory(I)V
    .registers 5
    .param p1, "serviceCategory"    # I

    .prologue
    .line 2834
    const/16 v1, 0x828

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/mediatek/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/RILRequest;

    move-result-object v0

    .line 2836
    .local v0, "rr":Lcom/mediatek/ims/RILRequest;
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2837
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2839
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/mediatek/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2840
    const-string/jumbo v2, " "

    .line 2839
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2842
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsRILAdapter;->send(Lcom/mediatek/ims/RILRequest;)V

    .line 2833
    return-void
.end method

.method public setMute(ZLandroid/os/Message;)V
    .registers 7
    .param p1, "enableMute"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 473
    const/16 v2, 0x35

    invoke-static {v2, p2}, Lcom/mediatek/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/RILRequest;

    move-result-object v0

    .line 475
    .local v0, "rr":Lcom/mediatek/ims/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/mediatek/ims/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 476
    const-string/jumbo v3, " "

    .line 475
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 478
    iget-object v2, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 479
    iget-object v2, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_47

    :goto_40
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 481
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsRILAdapter;->send(Lcom/mediatek/ims/RILRequest;)V

    .line 471
    return-void

    .line 479
    :cond_47
    const/4 v1, 0x0

    goto :goto_40
.end method

.method public start(Ljava/lang/String;IZZLandroid/os/Message;)V
    .registers 13
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "isEmergency"    # Z
    .param p4, "isVideoCall"    # Z
    .param p5, "result"    # Landroid/os/Message;

    .prologue
    .line 496
    const-string/jumbo v6, "DIALSOURCE_IMS"

    .line 498
    .local v6, "atCmdString":Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/ims/MoCallInfo;

    if-eqz v0, :cond_10

    const-string/jumbo v0, "IMS_RILA"

    const-string/jumbo v1, "IMS: mMoCall is not null when dial !!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_10
    new-instance v0, Lcom/mediatek/ims/MoCallInfo;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/ims/MoCallInfo;-><init>(Ljava/lang/String;IZZLandroid/os/Message;)V

    iput-object v0, p0, Lcom/mediatek/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/ims/MoCallInfo;

    .line 502
    invoke-direct {p0, v6}, Lcom/mediatek/ims/ImsRILAdapter;->executeCommandResponse(Ljava/lang/String;)Ljava/lang/String;

    .line 495
    return-void
.end method

.method public startConference([Ljava/lang/String;IZLandroid/os/Message;)V
    .registers 8
    .param p1, "participants"    # [Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "isVideoCall"    # Z
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 516
    const-string/jumbo v0, "DIALSOURCE_IMS"

    .line 518
    .local v0, "atCmdString":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ImsRILAdapter;->mConferenceCallDialInfo:Lcom/mediatek/ims/ConferenceCallDialInfo;

    if-eqz v1, :cond_10

    .line 519
    const-string/jumbo v1, "IMS_RILA"

    const-string/jumbo v2, "IMS: ConferenceCallDialInfo is not null when dial !!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_10
    new-instance v1, Lcom/mediatek/ims/ConferenceCallDialInfo;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/mediatek/ims/ConferenceCallDialInfo;-><init>([Ljava/lang/String;IZLandroid/os/Message;)V

    iput-object v1, p0, Lcom/mediatek/ims/ImsRILAdapter;->mConferenceCallDialInfo:Lcom/mediatek/ims/ConferenceCallDialInfo;

    .line 525
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsRILAdapter;->executeCommandResponse(Ljava/lang/String;)Ljava/lang/String;

    .line 515
    return-void
.end method

.method public startDtmf(CLandroid/os/Message;)V
    .registers 7
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 667
    iget-object v2, p0, Lcom/mediatek/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;

    monitor-enter v2

    .line 668
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startDtmf: queue size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/mediatek/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v3}, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 670
    iget-object v1, p0, Lcom/mediatek/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v1}, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->hasSendChldRequest()Z

    move-result v1

    if-nez v1, :cond_8f

    .line 671
    iget-object v1, p0, Lcom/mediatek/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v1}, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->size()I

    move-result v1

    iget-object v3, p0, Lcom/mediatek/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x20

    if-ge v1, v3, :cond_8f

    .line 672
    iget-object v1, p0, Lcom/mediatek/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v1}, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->isStart()Z

    move-result v1

    if-nez v1, :cond_91

    .line 673
    const/16 v1, 0x31

    invoke-static {v1, p2}, Lcom/mediatek/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/RILRequest;

    move-result-object v0

    .line 675
    .local v0, "rr":Lcom/mediatek/ims/RILRequest;
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 676
    iget-object v1, p0, Lcom/mediatek/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v1}, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->start()V

    .line 677
    iget-object v1, p0, Lcom/mediatek/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->add(Lcom/mediatek/ims/RILRequest;)V

    .line 678
    iget-object v1, p0, Lcom/mediatek/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v1}, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_8f

    .line 679
    const-string/jumbo v1, "send start dtmf"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 681
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/mediatek/ims/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 683
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsRILAdapter;->send(Lcom/mediatek/ims/RILRequest;)V
    :try_end_8f
    .catchall {:try_start_3 .. :try_end_8f} :catchall_af

    .end local v0    # "rr":Lcom/mediatek/ims/RILRequest;
    :cond_8f
    :goto_8f
    monitor-exit v2

    .line 664
    return-void

    .line 686
    :cond_91
    :try_start_91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DTMF status conflict, want to start DTMF when status is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 687
    iget-object v3, p0, Lcom/mediatek/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v3}, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->isStart()Z

    move-result v3

    .line 686
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V
    :try_end_ae
    .catchall {:try_start_91 .. :try_end_ae} :catchall_af

    goto :goto_8f

    .line 667
    :catchall_af
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public stopDtmf(Landroid/os/Message;)V
    .registers 6
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 702
    iget-object v2, p0, Lcom/mediatek/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;

    monitor-enter v2

    .line 703
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopDtmf: queue size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/mediatek/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v3}, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 705
    iget-object v1, p0, Lcom/mediatek/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v1}, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->hasSendChldRequest()Z

    move-result v1

    if-nez v1, :cond_86

    .line 706
    iget-object v1, p0, Lcom/mediatek/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v1}, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->size()I

    move-result v1

    iget-object v3, p0, Lcom/mediatek/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x20

    if-ge v1, v3, :cond_86

    .line 707
    iget-object v1, p0, Lcom/mediatek/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v1}, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->isStart()Z

    move-result v1

    if-eqz v1, :cond_88

    .line 708
    const/16 v1, 0x32

    invoke-static {v1, p1}, Lcom/mediatek/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/RILRequest;

    move-result-object v0

    .line 710
    .local v0, "rr":Lcom/mediatek/ims/RILRequest;
    iget-object v1, p0, Lcom/mediatek/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v1}, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->stop()V

    .line 711
    iget-object v1, p0, Lcom/mediatek/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->add(Lcom/mediatek/ims/RILRequest;)V

    .line 712
    iget-object v1, p0, Lcom/mediatek/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v1}, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_86

    .line 713
    const-string/jumbo v1, "send stop dtmf"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 714
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 715
    const-string/jumbo v3, "> "

    .line 714
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 715
    iget v3, v0, Lcom/mediatek/ims/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/mediatek/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    .line 714
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 716
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsRILAdapter;->send(Lcom/mediatek/ims/RILRequest;)V
    :try_end_86
    .catchall {:try_start_3 .. :try_end_86} :catchall_a6

    .end local v0    # "rr":Lcom/mediatek/ims/RILRequest;
    :cond_86
    :goto_86
    monitor-exit v2

    .line 699
    return-void

    .line 719
    :cond_88
    :try_start_88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DTMF status conflict, want to start DTMF when status is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 720
    iget-object v3, p0, Lcom/mediatek/ims/ImsRILAdapter;->mDtmfReqQueue:Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;

    invoke-virtual {v3}, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->isStart()Z

    move-result v3

    .line 719
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V
    :try_end_a5
    .catchall {:try_start_88 .. :try_end_a5} :catchall_a6

    goto :goto_86

    .line 702
    :catchall_a6
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public swap(Landroid/os/Message;)V
    .registers 5
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 987
    const/16 v1, 0xf

    .line 986
    invoke-static {v1, p1}, Lcom/mediatek/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/RILRequest;

    move-result-object v0

    .line 989
    .local v0, "rr":Lcom/mediatek/ims/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/mediatek/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 992
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsRILAdapter;->handleChldRelatedRequest(Lcom/mediatek/ims/RILRequest;)V

    .line 984
    return-void
.end method

.method public terminate(I)V
    .registers 5
    .param p1, "callId"    # I

    .prologue
    .line 579
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IMS terminate : callId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 581
    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/mediatek/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/RILRequest;

    move-result-object v0

    .line 583
    .local v0, "rr":Lcom/mediatek/ims/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/mediatek/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 586
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 587
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 589
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsRILAdapter;->send(Lcom/mediatek/ims/RILRequest;)V

    .line 578
    return-void
.end method

.method public turnOffIms(Landroid/os/Message;)V
    .registers 5
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 753
    const/16 v1, 0x82e

    invoke-static {v1, p1}, Lcom/mediatek/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/RILRequest;

    move-result-object v0

    .line 755
    .local v0, "rr":Lcom/mediatek/ims/RILRequest;
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 756
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 758
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/mediatek/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 759
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsRILAdapter;->send(Lcom/mediatek/ims/RILRequest;)V

    .line 752
    return-void
.end method

.method public turnOffImsVideo(Landroid/os/Message;)V
    .registers 5
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 845
    const/16 v1, 0x85e

    invoke-static {v1, p1}, Lcom/mediatek/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/RILRequest;

    move-result-object v0

    .line 847
    .local v0, "rr":Lcom/mediatek/ims/RILRequest;
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 848
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 850
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/mediatek/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 851
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsRILAdapter;->send(Lcom/mediatek/ims/RILRequest;)V

    .line 844
    return-void
.end method

.method public turnOffImsVoice(Landroid/os/Message;)V
    .registers 5
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 825
    const/16 v1, 0x85d    # 3.0E-42f

    invoke-static {v1, p1}, Lcom/mediatek/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/RILRequest;

    move-result-object v0

    .line 827
    .local v0, "rr":Lcom/mediatek/ims/RILRequest;
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 828
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 830
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/mediatek/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 831
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsRILAdapter;->send(Lcom/mediatek/ims/RILRequest;)V

    .line 824
    return-void
.end method

.method public turnOffVolte(Landroid/os/Message;)V
    .registers 5
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 785
    const/16 v1, 0x85b

    invoke-static {v1, p1}, Lcom/mediatek/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/RILRequest;

    move-result-object v0

    .line 787
    .local v0, "rr":Lcom/mediatek/ims/RILRequest;
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 788
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 790
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/mediatek/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 791
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsRILAdapter;->send(Lcom/mediatek/ims/RILRequest;)V

    .line 784
    return-void
.end method

.method public turnOffWfc(Landroid/os/Message;)V
    .registers 5
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 805
    const/16 v1, 0x85c

    invoke-static {v1, p1}, Lcom/mediatek/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/RILRequest;

    move-result-object v0

    .line 807
    .local v0, "rr":Lcom/mediatek/ims/RILRequest;
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 808
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 810
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/mediatek/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 811
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsRILAdapter;->send(Lcom/mediatek/ims/RILRequest;)V

    .line 804
    return-void
.end method

.method public turnOnIms(Landroid/os/Message;)V
    .registers 5
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 743
    const/16 v1, 0x82e

    invoke-static {v1, p1}, Lcom/mediatek/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/RILRequest;

    move-result-object v0

    .line 745
    .local v0, "rr":Lcom/mediatek/ims/RILRequest;
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 746
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 748
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/mediatek/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 749
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsRILAdapter;->send(Lcom/mediatek/ims/RILRequest;)V

    .line 742
    return-void
.end method

.method public turnOnImsVideo(Landroid/os/Message;)V
    .registers 5
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 835
    const/16 v1, 0x85e

    invoke-static {v1, p1}, Lcom/mediatek/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/RILRequest;

    move-result-object v0

    .line 837
    .local v0, "rr":Lcom/mediatek/ims/RILRequest;
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 838
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 840
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/mediatek/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 841
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsRILAdapter;->send(Lcom/mediatek/ims/RILRequest;)V

    .line 834
    return-void
.end method

.method public turnOnImsVoice(Landroid/os/Message;)V
    .registers 5
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 815
    const/16 v1, 0x85d    # 3.0E-42f

    invoke-static {v1, p1}, Lcom/mediatek/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/RILRequest;

    move-result-object v0

    .line 817
    .local v0, "rr":Lcom/mediatek/ims/RILRequest;
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 818
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 820
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/mediatek/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 821
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsRILAdapter;->send(Lcom/mediatek/ims/RILRequest;)V

    .line 814
    return-void
.end method

.method public turnOnVolte(Landroid/os/Message;)V
    .registers 5
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 775
    const/16 v1, 0x85b

    invoke-static {v1, p1}, Lcom/mediatek/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/RILRequest;

    move-result-object v0

    .line 777
    .local v0, "rr":Lcom/mediatek/ims/RILRequest;
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 778
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 780
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/mediatek/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 781
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsRILAdapter;->send(Lcom/mediatek/ims/RILRequest;)V

    .line 774
    return-void
.end method

.method public turnOnWfc(Landroid/os/Message;)V
    .registers 5
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 795
    const/16 v1, 0x85c

    invoke-static {v1, p1}, Lcom/mediatek/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/RILRequest;

    move-result-object v0

    .line 797
    .local v0, "rr":Lcom/mediatek/ims/RILRequest;
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 798
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 800
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/mediatek/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 801
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsRILAdapter;->send(Lcom/mediatek/ims/RILRequest;)V

    .line 794
    return-void
.end method

.method public vtDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .registers 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 2848
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_69

    .line 2849
    const/16 v1, 0x842

    invoke-static {v1, p4}, Lcom/mediatek/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/RILRequest;

    move-result-object v0

    .line 2851
    .local v0, "rr":Lcom/mediatek/ims/RILRequest;
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2852
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2854
    if-nez p3, :cond_47

    .line 2855
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2863
    :goto_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/mediatek/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2865
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsRILAdapter;->send(Lcom/mediatek/ims/RILRequest;)V

    .line 2847
    :goto_46
    return-void

    .line 2857
    :cond_47
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2858
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2859
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2860
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_1e

    .line 2867
    .end local v0    # "rr":Lcom/mediatek/ims/RILRequest;
    :cond_69
    const/16 v1, 0x85f

    invoke-static {v1, p4}, Lcom/mediatek/ims/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/RILRequest;

    move-result-object v0

    .line 2869
    .restart local v0    # "rr":Lcom/mediatek/ims/RILRequest;
    iget-object v1, v0, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2870
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/ims/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/mediatek/ims/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/mediatek/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 2872
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsRILAdapter;->send(Lcom/mediatek/ims/RILRequest;)V

    goto :goto_46
.end method
