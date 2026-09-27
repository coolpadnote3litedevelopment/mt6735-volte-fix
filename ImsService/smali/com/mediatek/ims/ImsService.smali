.class public Lcom/mediatek/ims/ImsService;
.super Lcom/android/ims/internal/IImsService$Stub;
.source "ImsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;,
        Lcom/mediatek/ims/ImsService$IWifiOffloadServiceDeathRecipient;,
        Lcom/mediatek/ims/ImsService$MyHandler;,
        Lcom/mediatek/ims/ImsService$1;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field protected static final EVENT_CALL_INFO_INDICATION:I = 0x8

.field protected static final EVENT_CALL_RING:I = 0x9

.field protected static final EVENT_IMS_DEREG_DONE:I = 0xf

.field protected static final EVENT_IMS_DEREG_URC:I = 0x10

.field protected static final EVENT_IMS_DISABLED_URC:I = 0x5

.field protected static final EVENT_IMS_DISABLING_URC:I = 0xc

.field protected static final EVENT_IMS_ENABLED_URC:I = 0xb

.field protected static final EVENT_IMS_ENABLING_URC:I = 0xa

.field private static final EVENT_IMS_REGISTRATION_INFO:I = 0x1

.field protected static final EVENT_INCOMING_CALL_INDICATION:I = 0x7

.field protected static final EVENT_RADIO_NOT_AVAILABLE:I = 0x2

.field protected static final EVENT_RADIO_OFF:I = 0x11

.field protected static final EVENT_RADIO_ON:I = 0x12

.field protected static final EVENT_SET_IMS_DISABLE_DONE:I = 0x4

.field protected static final EVENT_SET_IMS_ENABLED_DONE:I = 0x3

.field private static final EVENT_SET_IMS_ENABLED_RETRY:I = 0x64

.field protected static final EVENT_SIP_CODE_INDICATION:I = 0xd

.field private static final EVENT_VIRTUAL_SIM_ON:I = 0x6

.field private static final IMS_ALLOW_INCOMING_CALL_INDICATION:I = 0x0

.field private static final IMS_DISALLOW_INCOMING_CALL_INDICATION:I = 0x1

.field private static final IMS_MAX_FEATURE_SUPPORT_SIZE:I = 0x4

.field private static final IMS_RCS_OVER_LTE:I = 0x2

.field private static final IMS_SMS_OVER_LTE:I = 0x4

.field private static final IMS_VIDEO_OVER_LTE:I = 0x8

.field private static final IMS_VOICE_OVER_LTE:I = 0x1

.field private static final IMS_VOICE_OVER_WIFI:I = 0x10

.field private static final LOG_TAG:Ljava/lang/String; = "ImsService"

.field private static final VDBG:Z

.field private static sImsConfig:Lcom/mediatek/ims/ImsConfigStub;

.field private static sImsUtStub:Lcom/mediatek/ims/ImsUtStub;

.field private static sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;


# instance fields
.field private mImsRequested:Z

.field private mActivePhoneId:I

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDeathRecipient:Lcom/mediatek/ims/ImsService$IWifiOffloadServiceDeathRecipient;

.field private final mHandler:Landroid/os/Handler;

.field private mImsAdapter:Lcom/mediatek/ims/ImsAdapter;

.field private mImsConfigInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/ims/internal/IImsConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mImsExtInfo:I

.field private mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

.field private mImsRegInfo:I

.field private mImsRegistry:Z

.field private mImsState:I

.field private mListener:Lcom/android/ims/internal/IImsRegistrationListener;

.field private mLockObj:Ljava/lang/Object;

.field private mNotificationController:Lcom/mediatek/ims/ImsNotificationController;

.field private mPendingMT:Lcom/android/ims/internal/IImsCallSession;

.field private mRAN:I

.field private mRegErrorCode:I

.field private mServiceId:I

.field private tryNum:I


# direct methods
.method static synthetic -get0(Lcom/mediatek/ims/ImsService;)I
    .registers 2

    iget v0, p0, Lcom/mediatek/ims/ImsService;->mActivePhoneId:I

    return v0
.end method

.method static synthetic -get1(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get10()Lcom/mediatek/wfo/IWifiOffloadService;
    .registers 1

    sget-object v0, Lcom/mediatek/ims/ImsService;->sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;

    return-object v0
.end method

.method static synthetic -get11(Lcom/mediatek/ims/ImsService;)I
    .registers 2

    iget v0, p0, Lcom/mediatek/ims/ImsService;->tryNum:I

    return v0
.end method

.method static synthetic -get2(Lcom/mediatek/ims/ImsService;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/mediatek/ims/ImsService;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsConfigInstanceMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get4(Lcom/mediatek/ims/ImsService;)I
    .registers 2

    iget v0, p0, Lcom/mediatek/ims/ImsService;->mImsExtInfo:I

    return v0
.end method

.method static synthetic -get5(Lcom/mediatek/ims/ImsService;)Lcom/mediatek/ims/ImsRILAdapter;
    .registers 2

    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    return-object v0
.end method

.method static synthetic -get6(Lcom/mediatek/ims/ImsService;)I
    .registers 2

    iget v0, p0, Lcom/mediatek/ims/ImsService;->mImsRegInfo:I

    return v0
.end method

.method static synthetic -get7(Lcom/mediatek/ims/ImsService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/mediatek/ims/ImsService;->mImsRegistry:Z

    return v0
.end method

.method static synthetic -get8(Lcom/mediatek/ims/ImsService;)I
    .registers 2

    iget v0, p0, Lcom/mediatek/ims/ImsService;->mImsState:I

    return v0
.end method

.method static synthetic -get9(Lcom/mediatek/ims/ImsService;)I
    .registers 2

    iget v0, p0, Lcom/mediatek/ims/ImsService;->mRAN:I

    return v0
.end method

.method static synthetic -set0(Lcom/mediatek/ims/ImsService;I)I
    .registers 2

    iput p1, p0, Lcom/mediatek/ims/ImsService;->mActivePhoneId:I

    return p1
.end method

.method static synthetic -set1(Lcom/mediatek/ims/ImsService;I)I
    .registers 2

    iput p1, p0, Lcom/mediatek/ims/ImsService;->mImsExtInfo:I

    return p1
.end method

.method static synthetic -set2(Lcom/mediatek/ims/ImsService;I)I
    .registers 2

    iput p1, p0, Lcom/mediatek/ims/ImsService;->mImsRegInfo:I

    return p1
.end method

.method static synthetic -set3(Lcom/mediatek/ims/ImsService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/mediatek/ims/ImsService;->mImsRegistry:Z

    return p1
.end method

.method static synthetic -set4(Lcom/mediatek/ims/ImsService;I)I
    .registers 2

    iput p1, p0, Lcom/mediatek/ims/ImsService;->mImsState:I

    return p1
.end method

.method static synthetic -set5(Lcom/mediatek/ims/ImsService;I)I
    .registers 2

    iput p1, p0, Lcom/mediatek/ims/ImsService;->mRAN:I

    return p1
.end method

.method static synthetic -set6(Lcom/mediatek/ims/ImsService;I)I
    .registers 2

    iput p1, p0, Lcom/mediatek/ims/ImsService;->mRegErrorCode:I

    return p1
.end method

.method static synthetic -set7(Lcom/mediatek/wfo/IWifiOffloadService;)Lcom/mediatek/wfo/IWifiOffloadService;
    .registers 1

    sput-object p0, Lcom/mediatek/ims/ImsService;->sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;

    return-object p0
.end method

.method static synthetic -set8(Lcom/mediatek/ims/ImsService;I)I
    .registers 2

    iput p1, p0, Lcom/mediatek/ims/ImsService;->tryNum:I

    return p1
.end method

.method static synthetic -wrap0(I)Z
    .registers 2
    .param p0, "phoneId"    # I

    .prologue
    invoke-static {p0}, Lcom/mediatek/ims/ImsService;->isTestSim(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/mediatek/ims/ImsService;)Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;
    .registers 2

    invoke-direct {p0}, Lcom/mediatek/ims/ImsService;->createWifiOffloadListenerProxy()Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Lcom/mediatek/ims/ImsService;)V
    .registers 1

    invoke-direct {p0}, Lcom/mediatek/ims/ImsService;->setWfcProfileInfo()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/mediatek/ims/ImsService;)I
    .registers 2

    invoke-direct {p0}, Lcom/mediatek/ims/ImsService;->getMainCapabilityPhoneId()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/mediatek/ims/ImsService;I)I
    .registers 3
    .param p1, "wfcMode"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsService;->mapToMDWfcProfile(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/mediatek/ims/ImsService;II)I
    .registers 4
    .param p1, "sipErrorCode"    # I
    .param p2, "sipMethod"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsService;->mapToWfcRegErrorCause(II)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/mediatek/ims/ImsService;)V
    .registers 1

    invoke-direct {p0}, Lcom/mediatek/ims/ImsService;->checkAndBindWifiOffloadService()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/mediatek/ims/ImsService;Z)V
    .registers 2
    .param p1, "isNormalDisable"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsService;->disableIms(Z)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/mediatek/ims/ImsService;I)V
    .registers 2
    .param p1, "imsExtInfo"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsService;->notifyRegistrationCapabilityChange(I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/mediatek/ims/ImsService;I)V
    .registers 2
    .param p1, "imsRegInfo"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsService;->notifyRegistrationStateChange(I)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/mediatek/ims/ImsService;Landroid/os/AsyncResult;)V
    .registers 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsService;->sendIncomingCallIndication(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 109
    sput-object v0, Lcom/mediatek/ims/ImsService;->sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;

    .line 113
    sput-object v0, Lcom/mediatek/ims/ImsService;->sImsConfig:Lcom/mediatek/ims/ImsConfigStub;

    .line 114
    sput-object v0, Lcom/mediatek/ims/ImsService;->sImsUtStub:Lcom/mediatek/ims/ImsUtStub;

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 283
    invoke-direct {p0}, Lcom/android/ims/internal/IImsService$Stub;-><init>()V

    .line 101
    iput-object v8, p0, Lcom/mediatek/ims/ImsService;->mImsAdapter:Lcom/mediatek/ims/ImsAdapter;

    .line 102
    iput-object v8, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    .line 103
    iput-object v8, p0, Lcom/mediatek/ims/ImsService;->mPendingMT:Lcom/android/ims/internal/IImsCallSession;

    .line 106
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/mediatek/ims/ImsService;->mLockObj:Ljava/lang/Object;

    .line 111
    new-instance v5, Lcom/mediatek/ims/ImsService$IWifiOffloadServiceDeathRecipient;

    invoke-direct {v5, p0, v8}, Lcom/mediatek/ims/ImsService$IWifiOffloadServiceDeathRecipient;-><init>(Lcom/mediatek/ims/ImsService;Lcom/mediatek/ims/ImsService$IWifiOffloadServiceDeathRecipient;)V

    .line 110
    iput-object v5, p0, Lcom/mediatek/ims/ImsService;->mDeathRecipient:Lcom/mediatek/ims/ImsService$IWifiOffloadServiceDeathRecipient;

    .line 117
    iput-object v8, p0, Lcom/mediatek/ims/ImsService;->mListener:Lcom/android/ims/internal/IImsRegistrationListener;

    .line 118
    const/4 v5, 0x3

    iput v5, p0, Lcom/mediatek/ims/ImsService;->mImsRegInfo:I

    .line 119
    iput v9, p0, Lcom/mediatek/ims/ImsService;->mImsExtInfo:I

    .line 120
    iput v9, p0, Lcom/mediatek/ims/ImsService;->mServiceId:I

    .line 121
    iput v9, p0, Lcom/mediatek/ims/ImsService;->mImsState:I

    .line 122
    iput v9, p0, Lcom/mediatek/ims/ImsService;->mActivePhoneId:I

    .line 123
    iput v9, p0, Lcom/mediatek/ims/ImsService;->mRegErrorCode:I

    .line 124
    iput v10, p0, Lcom/mediatek/ims/ImsService;->mRAN:I

    .line 129
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 128
    iput-object v5, p0, Lcom/mediatek/ims/ImsService;->mImsConfigInstanceMap:Ljava/util/Map;

    .line 162
    iput v9, p0, Lcom/mediatek/ims/ImsService;->tryNum:I

    .line 176
    iput-object v8, p0, Lcom/mediatek/ims/ImsService;->mNotificationController:Lcom/mediatek/ims/ImsNotificationController;

    .line 181
    iput-boolean v9, p0, Lcom/mediatek/ims/ImsService;->mImsRegistry:Z

    .line 182
    new-instance v5, Lcom/mediatek/ims/ImsService$1;

    invoke-direct {v5, p0}, Lcom/mediatek/ims/ImsService$1;-><init>(Lcom/mediatek/ims/ImsService;)V

    iput-object v5, p0, Lcom/mediatek/ims/ImsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 284
    new-instance v5, Lcom/mediatek/ims/ImsAdapter;

    invoke-direct {v5, p1}, Lcom/mediatek/ims/ImsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/mediatek/ims/ImsService;->mImsAdapter:Lcom/mediatek/ims/ImsAdapter;

    .line 285
    new-instance v5, Lcom/mediatek/ims/ImsRILAdapter;

    invoke-direct {v5, p1}, Lcom/mediatek/ims/ImsRILAdapter;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    .line 287
    const-string/jumbo v5, "ImsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " mImsRILAdapter= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iput-object p1, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    .line 290
    new-instance v5, Lcom/mediatek/ims/ImsService$MyHandler;

    invoke-direct {v5, p0, v8}, Lcom/mediatek/ims/ImsService$MyHandler;-><init>(Lcom/mediatek/ims/ImsService;Lcom/mediatek/ims/ImsService$MyHandler;)V

    iput-object v5, p0, Lcom/mediatek/ims/ImsService;->mHandler:Landroid/os/Handler;

    .line 292
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    iget-object v6, p0, Lcom/mediatek/ims/ImsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v10, v8}, Lcom/mediatek/ims/ImsRILAdapter;->registerForImsRegistrationInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 293
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    iget-object v6, p0, Lcom/mediatek/ims/ImsService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0xa

    invoke-virtual {v5, v6, v7, v8}, Lcom/mediatek/ims/ImsRILAdapter;->registerForImsEnableStart(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 294
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    iget-object v6, p0, Lcom/mediatek/ims/ImsService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0xb

    invoke-virtual {v5, v6, v7, v8}, Lcom/mediatek/ims/ImsRILAdapter;->registerForImsEnableComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 295
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    iget-object v6, p0, Lcom/mediatek/ims/ImsService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0xc

    invoke-virtual {v5, v6, v7, v8}, Lcom/mediatek/ims/ImsRILAdapter;->registerForImsDisableStart(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 296
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    iget-object v6, p0, Lcom/mediatek/ims/ImsService;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x5

    invoke-virtual {v5, v6, v7, v8}, Lcom/mediatek/ims/ImsRILAdapter;->registerForImsDisableComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 297
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    iget-object v6, p0, Lcom/mediatek/ims/ImsService;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x7

    invoke-virtual {v5, v6, v7, v8}, Lcom/mediatek/ims/ImsRILAdapter;->setOnIncomingCallIndication(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 298
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    iget-object v6, p0, Lcom/mediatek/ims/ImsService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x9

    invoke-virtual {v5, v6, v7, v8}, Lcom/mediatek/ims/ImsRILAdapter;->setOnCallRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 299
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    iget-object v6, p0, Lcom/mediatek/ims/ImsService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0xd

    invoke-virtual {v5, v6, v7, v8}, Lcom/mediatek/ims/ImsRILAdapter;->registerForCallProgressIndicator(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 301
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    iget-object v6, p0, Lcom/mediatek/ims/ImsService;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7, v8}, Lcom/mediatek/ims/ImsRILAdapter;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 302
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    iget-object v6, p0, Lcom/mediatek/ims/ImsService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x11

    invoke-virtual {v5, v6, v7, v8}, Lcom/mediatek/ims/ImsRILAdapter;->registerForOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 303
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    iget-object v6, p0, Lcom/mediatek/ims/ImsService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x12

    invoke-virtual {v5, v6, v7, v8}, Lcom/mediatek/ims/ImsRILAdapter;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 306
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    iget-object v6, p0, Lcom/mediatek/ims/ImsService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x10

    invoke-virtual {v5, v6, v7, v8}, Lcom/mediatek/ims/ImsRILAdapter;->registerForImsDeregisterComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 309
    sget-object v5, Lcom/mediatek/ims/ImsService;->sImsConfig:Lcom/mediatek/ims/ImsConfigStub;

    if-nez v5, :cond_e8

    .line 310
    new-instance v5, Lcom/mediatek/ims/ImsConfigStub;

    iget-object v6, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    invoke-direct {v5, v6, v7}, Lcom/mediatek/ims/ImsConfigStub;-><init>(Landroid/content/Context;Lcom/mediatek/ims/ImsRILAdapter;)V

    sput-object v5, Lcom/mediatek/ims/ImsService;->sImsConfig:Lcom/mediatek/ims/ImsConfigStub;

    .line 314
    :cond_e8
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 315
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v5, "ACTION_IMS_SIMULATE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 316
    const-string/jumbo v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 318
    const-string/jumbo v5, "persist.mtk_dynamic_ims_switch"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10f

    .line 319
    const-string/jumbo v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 323
    :cond_10f
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v5

    if-eqz v5, :cond_11b

    .line 324
    const-string/jumbo v5, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 326
    :cond_11b
    const-string/jumbo v5, "ro.mtk_wfc_support"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_158

    .line 329
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, v5}, Lcom/mediatek/ims/ImsService;->registerForWfcPreferenceChange(Landroid/os/Handler;)V

    .line 331
    invoke-direct {p0}, Lcom/mediatek/ims/ImsService;->setWfcProfileInfo()V

    .line 332
    new-instance v5, Lcom/mediatek/ims/ImsNotificationController;

    const-wide/16 v6, 0x1

    invoke-direct {v5, p1, v6, v7}, Lcom/mediatek/ims/ImsNotificationController;-><init>(Landroid/content/Context;J)V

    iput-object v5, p0, Lcom/mediatek/ims/ImsService;->mNotificationController:Lcom/mediatek/ims/ImsNotificationController;

    .line 333
    const-string/jumbo v5, "ImsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "noticontroller created"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/ims/ImsService;->mNotificationController:Lcom/mediatek/ims/ImsNotificationController;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_158
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 338
    const/4 v3, -0x1

    .line 340
    .local v3, "mainPhoneId":I
    const-string/jumbo v5, "phoneEx"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 339
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v4

    .line 342
    .local v4, "telephony":Lcom/mediatek/internal/telephony/ITelephonyEx;
    if-eqz v4, :cond_1e3

    .line 344
    :try_start_16b
    invoke-interface {v4}, Lcom/mediatek/internal/telephony/ITelephonyEx;->getMainCapabilityPhoneId()I

    move-result v3

    .line 345
    const-string/jumbo v5, "ImsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getMainCapabilityPhoneId: mainPhoneId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v5

    if-eqz v5, :cond_1bd

    .line 348
    monitor-enter p0
    :try_end_190
    .catch Landroid/os/RemoteException; {:try_start_16b .. :try_end_190} :catch_1d8

    .line 349
    :try_start_190
    const-string/jumbo v5, "ImsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Init config interface on main capability "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    new-instance v2, Lcom/mediatek/ims/ImsConfigStub;

    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    invoke-direct {v2, v5, v6, v3}, Lcom/mediatek/ims/ImsConfigStub;-><init>(Landroid/content/Context;Lcom/mediatek/ims/ImsRILAdapter;I)V

    .line 351
    .local v2, "instance":Lcom/mediatek/ims/ImsConfigStub;
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mImsConfigInstanceMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1bc
    .catchall {:try_start_190 .. :try_end_1bc} :catchall_1d5

    :try_start_1bc
    monitor-exit p0
    :try_end_1bd
    .catch Landroid/os/RemoteException; {:try_start_1bc .. :try_end_1bd} :catch_1d8

    .line 361
    .end local v2    # "instance":Lcom/mediatek/ims/ImsConfigStub;
    :cond_1bd
    :goto_1bd
    const-string/jumbo v5, "persist.mtk.volte.enable"

    invoke-static {v5, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v10, :cond_1cf

    .line 362
    const-string/jumbo v5, "persist.mtk.wfc.enable"

    invoke-static {v5, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v10, :cond_1f7

    .line 363
    :cond_1cf
    if-ltz v3, :cond_1ed

    .line 364
    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ImsService;->turnOnIms(I)V

    .line 283
    :goto_1d4
    return-void

    .line 348
    :catchall_1d5
    move-exception v5

    :try_start_1d6
    monitor-exit p0

    throw v5
    :try_end_1d8
    .catch Landroid/os/RemoteException; {:try_start_1d6 .. :try_end_1d8} :catch_1d8

    .line 354
    :catch_1d8
    move-exception v0

    .line 355
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "ImsService"

    const-string/jumbo v6, "getMainCapabilityPhoneId: remote exception"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1bd

    .line 358
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1e3
    const-string/jumbo v5, "ImsService"

    const-string/jumbo v6, "fail to get ITelephonyEx !!!"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1bd

    .line 366
    :cond_1ed
    const-string/jumbo v5, "ImsService"

    const-string/jumbo v6, "ImsService init ITelephonyEx not ready"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d4

    .line 369
    :cond_1f7
    if-ltz v3, :cond_1fd

    .line 370
    invoke-virtual {p0, v3}, Lcom/mediatek/ims/ImsService;->turnOffIms(I)V

    goto :goto_1d4

    .line 372
    :cond_1fd
    const-string/jumbo v5, "ImsService"

    const-string/jumbo v6, "ImsService init ITelephonyEx not ready"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d4
.end method

.method private checkAndBindWifiOffloadService()V
    .registers 6

    .prologue
    .line 907
    const-string/jumbo v2, "wfo"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 909
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_f

    .line 911
    :try_start_9
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mDeathRecipient:Lcom/mediatek/ims/ImsService$IWifiOffloadServiceDeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_32

    .line 916
    :cond_f
    :goto_f
    invoke-static {v0}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v2

    sput-object v2, Lcom/mediatek/ims/ImsService;->sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;

    .line 917
    const-string/jumbo v2, "ImsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkAndBindWifiOffloadService: sWifiOffloadService = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 918
    sget-object v4, Lcom/mediatek/ims/ImsService;->sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;

    .line 917
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    return-void

    .line 912
    :catch_32
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_f
.end method

.method private createWifiOffloadListenerProxy()Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;
    .registers 3

    .prologue
    .line 735
    new-instance v0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;-><init>(Lcom/mediatek/ims/ImsService;Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;)V

    .line 736
    .local v0, "proxy":Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;
    return-object v0
.end method

.method private disableIms(Z)V
    .registers 5
    .param p1, "isNormalDisable"    # Z

    .prologue
    .line 1337
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.ims.IMS_SERVICE_DOWN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1338
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/ImsService;->disableImsAdapter(Z)V

    .line 1336
    return-void
.end method

.method private getMainCapabilityPhoneId()I
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 884
    const-string/jumbo v3, "phoneEx"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 883
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    .line 886
    .local v2, "telephony":Lcom/mediatek/internal/telephony/ITelephonyEx;
    if-eqz v2, :cond_38

    .line 888
    :try_start_e
    invoke-interface {v2}, Lcom/mediatek/internal/telephony/ITelephonyEx;->getMainCapabilityPhoneId()I

    move-result v1

    .line 889
    .local v1, "mainPhoneId":I
    const-string/jumbo v3, "ImsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getMainCapabilityPhoneId: mainPhoneId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_2c} :catch_2d

    .line 890
    return v1

    .line 891
    .end local v1    # "mainPhoneId":I
    :catch_2d
    move-exception v0

    .line 892
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "ImsService"

    const-string/jumbo v4, "getMainCapabilityPhoneId: remote exception"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    return v6

    .line 896
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_38
    const-string/jumbo v3, "ImsService"

    const-string/jumbo v4, "fail to get ITelephonyEx !!!"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    return v6
.end method

.method private static isTestSim(I)Z
    .registers 5
    .param p0, "phoneId"    # I

    .prologue
    .line 1342
    const/4 v0, 0x0

    .line 1343
    .local v0, "isTestSim":Z
    packed-switch p0, :pswitch_data_4e

    .line 1357
    .end local v0    # "isTestSim":Z
    :goto_4
    return v0

    .line 1345
    .restart local v0    # "isTestSim":Z
    :pswitch_5
    const-string/jumbo v1, "1"

    const-string/jumbo v2, "gsm.sim.ril.testsim"

    const-string/jumbo v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .local v0, "isTestSim":Z
    goto :goto_4

    .line 1348
    .local v0, "isTestSim":Z
    :pswitch_17
    const-string/jumbo v1, "1"

    const-string/jumbo v2, "gsm.sim.ril.testsim.2"

    const-string/jumbo v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .local v0, "isTestSim":Z
    goto :goto_4

    .line 1351
    .local v0, "isTestSim":Z
    :pswitch_29
    const-string/jumbo v1, "1"

    const-string/jumbo v2, "gsm.sim.ril.testsim.3"

    const-string/jumbo v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .local v0, "isTestSim":Z
    goto :goto_4

    .line 1354
    .local v0, "isTestSim":Z
    :pswitch_3b
    const-string/jumbo v1, "1"

    const-string/jumbo v2, "gsm.sim.ril.testsim.4"

    const-string/jumbo v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .local v0, "isTestSim":Z
    goto :goto_4

    .line 1343
    nop

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_5
        :pswitch_17
        :pswitch_29
        :pswitch_3b
    .end packed-switch
.end method

.method private mapToMDWfcProfile(I)I
    .registers 3
    .param p1, "wfcMode"    # I

    .prologue
    .line 747
    const/4 v0, 0x2

    .line 749
    .local v0, "rilWfcMode":I
    packed-switch p1, :pswitch_data_c

    .line 762
    :goto_4
    return v0

    .line 751
    :pswitch_5
    const/4 v0, 0x3

    .line 752
    goto :goto_4

    .line 754
    :pswitch_7
    const/4 v0, 0x2

    .line 755
    goto :goto_4

    .line 757
    :pswitch_9
    const/4 v0, 0x1

    .line 758
    goto :goto_4

    .line 749
    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_5
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method

.method private mapToWfcRegErrorCause(II)I
    .registers 5
    .param p1, "sipErrorCode"    # I
    .param p2, "sipMethod"    # I

    .prologue
    .line 786
    const/16 v0, 0x3e7

    .line 788
    .local v0, "wfcRegErrorCode":I
    sparse-switch p1, :sswitch_data_20

    .line 814
    :goto_5
    return v0

    .line 790
    :sswitch_6
    const/16 v0, 0x641

    .line 791
    goto :goto_5

    .line 793
    :sswitch_9
    const/16 v0, 0x642

    .line 794
    goto :goto_5

    .line 796
    :sswitch_c
    const/16 v1, 0x9

    if-ne p2, v1, :cond_13

    .line 797
    const/16 v0, 0x6a5

    goto :goto_5

    .line 799
    :cond_13
    const/16 v0, 0x643

    goto :goto_5

    .line 803
    :sswitch_16
    const/16 v0, 0x644

    .line 804
    goto :goto_5

    .line 806
    :sswitch_19
    const/16 v0, 0x645

    .line 807
    goto :goto_5

    .line 809
    :sswitch_1c
    const/16 v0, 0x57e

    .line 810
    goto :goto_5

    .line 788
    nop

    :sswitch_data_20
    .sparse-switch
        0x1f4 -> :sswitch_1c
        0x9d6d -> :sswitch_6
        0x9d6e -> :sswitch_9
        0x9d6f -> :sswitch_c
        0x9d70 -> :sswitch_16
        0x9d71 -> :sswitch_19
    .end sparse-switch
.end method

.method private notifyRegistrationCapabilityChange(I)V
    .registers 12
    .param p1, "imsExtInfo"    # I

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x2

    .line 997
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mListener:Lcom/android/ims/internal/IImsRegistrationListener;

    if-nez v4, :cond_a

    .line 998
    return-void

    .line 1001
    :cond_a
    new-array v2, v9, [I

    .line 1002
    .local v2, "enabledFeatures":[I
    new-array v0, v9, [I

    .line 1004
    .local v0, "disabledFeatures":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v9, :cond_1a

    .line 1005
    const/4 v4, -0x1

    aput v4, v2, v3

    .line 1006
    const/4 v4, -0x1

    aput v4, v0, v3

    .line 1004
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 1009
    :cond_1a
    iget v4, p0, Lcom/mediatek/ims/ImsService;->mRAN:I

    if-eq v4, v6, :cond_67

    .line 1010
    and-int/lit8 v4, p1, 0x1

    if-ne v4, v7, :cond_67

    .line 1011
    aput v5, v2, v5

    .line 1018
    :goto_24
    iget v4, p0, Lcom/mediatek/ims/ImsService;->mRAN:I

    if-eq v4, v6, :cond_6a

    .line 1019
    and-int/lit8 v4, p1, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_6a

    .line 1020
    aput v7, v2, v7

    .line 1027
    :goto_30
    iget v4, p0, Lcom/mediatek/ims/ImsService;->mRAN:I

    if-ne v4, v6, :cond_6d

    .line 1028
    and-int/lit8 v4, p1, 0x1

    if-ne v4, v7, :cond_6d

    .line 1029
    aput v6, v2, v6

    .line 1031
    const-string/jumbo v4, "ImsService"

    const-string/jumbo v5, "[WFC]IMS_VOICE_OVER_WIFI"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    :goto_43
    iget v4, p0, Lcom/mediatek/ims/ImsService;->mRAN:I

    if-ne v4, v6, :cond_70

    .line 1038
    and-int/lit8 v4, p1, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_70

    .line 1039
    aput v8, v2, v8

    .line 1041
    const-string/jumbo v4, "ImsService"

    const-string/jumbo v5, "[WFC]IMS_VIDEO_OVER_WIFI"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    :goto_58
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mLockObj:Ljava/lang/Object;

    monitor-enter v5

    .line 1050
    :try_start_5b
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mListener:Lcom/android/ims/internal/IImsRegistrationListener;

    if-eqz v4, :cond_65

    .line 1051
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mListener:Lcom/android/ims/internal/IImsRegistrationListener;

    const/4 v6, 0x1

    invoke-interface {v4, v6, v2, v0}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationFeatureCapabilityChanged(I[I[I)V
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_65} :catch_76
    .catchall {:try_start_5b .. :try_end_65} :catchall_73

    :cond_65
    :goto_65
    monitor-exit v5

    .line 995
    return-void

    .line 1014
    :cond_67
    aput v5, v0, v5

    goto :goto_24

    .line 1023
    :cond_6a
    aput v7, v0, v7

    goto :goto_30

    .line 1033
    :cond_6d
    aput v6, v0, v6

    goto :goto_43

    .line 1043
    :cond_70
    aput v8, v0, v8

    goto :goto_58

    .line 1048
    :catchall_73
    move-exception v4

    monitor-exit v5

    throw v4

    .line 1054
    :catch_76
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_65
.end method

.method private notifyRegistrationStateChange(I)V
    .registers 9
    .param p1, "imsRegInfo"    # I

    .prologue
    .line 939
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mLockObj:Ljava/lang/Object;

    monitor-enter v4

    .line 941
    :try_start_3
    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mListener:Lcom/android/ims/internal/IImsRegistrationListener;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_65

    if-nez v3, :cond_9

    monitor-exit v4

    .line 942
    return-void

    .line 946
    :cond_9
    :try_start_9
    const-string/jumbo v3, "ImsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "IMS: notifyRegistrationStateChange imsRegInfo= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_65

    .line 949
    if-nez p1, :cond_72

    .line 951
    :try_start_25
    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mListener:Lcom/android/ims/internal/IImsRegistrationListener;

    invoke-interface {v3}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationConnected()V

    .line 952
    sget-object v3, Lcom/mediatek/ims/ImsService;->sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;

    if-nez v3, :cond_3e

    .line 954
    invoke-direct {p0}, Lcom/mediatek/ims/ImsService;->checkAndBindWifiOffloadService()V

    .line 955
    sget-object v3, Lcom/mediatek/ims/ImsService;->sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_33} :catch_5a
    .catchall {:try_start_25 .. :try_end_33} :catchall_65

    if-eqz v3, :cond_68

    .line 957
    :try_start_35
    sget-object v3, Lcom/mediatek/ims/ImsService;->sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;

    .line 958
    invoke-direct {p0}, Lcom/mediatek/ims/ImsService;->createWifiOffloadListenerProxy()Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;

    move-result-object v5

    .line 957
    invoke-interface {v3, v5}, Lcom/mediatek/wfo/IWifiOffloadService;->registerForHandoverEvent(Lcom/mediatek/wfo/IWifiOffloadListener;)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_3e} :catch_4f
    .catchall {:try_start_35 .. :try_end_3e} :catchall_65

    .line 967
    :cond_3e
    :goto_3e
    :try_start_3e
    sget-object v3, Lcom/mediatek/ims/ImsService;->sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;

    if-eqz v3, :cond_4a

    .line 968
    sget-object v3, Lcom/mediatek/ims/ImsService;->sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;

    invoke-interface {v3}, Lcom/mediatek/wfo/IWifiOffloadService;->getRatType()I

    move-result v3

    iput v3, p0, Lcom/mediatek/ims/ImsService;->mRAN:I

    .line 970
    :cond_4a
    const/4 v3, 0x0

    iput v3, p0, Lcom/mediatek/ims/ImsService;->mRegErrorCode:I
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_4d} :catch_5a
    .catchall {:try_start_3e .. :try_end_4d} :catchall_65

    :goto_4d
    monitor-exit v4

    .line 937
    return-void

    .line 959
    :catch_4f
    move-exception v0

    .line 960
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_50
    const-string/jumbo v3, "ImsService"

    const-string/jumbo v5, "can\'t register handover event"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_59} :catch_5a
    .catchall {:try_start_50 .. :try_end_59} :catchall_65

    goto :goto_3e

    .line 971
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_5a
    move-exception v0

    .line 973
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_5b
    const-string/jumbo v3, "ImsService"

    const-string/jumbo v5, "IMS: notifyStateChange fail on access WifiOffloadService"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catchall {:try_start_5b .. :try_end_64} :catchall_65

    goto :goto_4d

    .line 939
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_65
    move-exception v3

    monitor-exit v4

    throw v3

    .line 963
    :cond_68
    :try_start_68
    const-string/jumbo v3, "ImsService"

    const-string/jumbo v5, "can\'t get WifiOffloadService"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_71} :catch_5a
    .catchall {:try_start_68 .. :try_end_71} :catchall_65

    goto :goto_3e

    .line 977
    :cond_72
    const/4 v1, 0x0

    .line 979
    .local v1, "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    :try_start_73
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    .line 980
    iget v3, p0, Lcom/mediatek/ims/ImsService;->mRegErrorCode:I

    iget v5, p0, Lcom/mediatek/ims/ImsService;->mRegErrorCode:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 979
    const/16 v6, 0x3e8

    invoke-direct {v2, v6, v3, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V
    :try_end_82
    .catch Landroid/os/RemoteException; {:try_start_73 .. :try_end_82} :catch_8b
    .catchall {:try_start_73 .. :try_end_82} :catchall_65

    .line 982
    .local v2, "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    :try_start_82
    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mListener:Lcom/android/ims/internal/IImsRegistrationListener;

    .end local v1    # "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    invoke-interface {v3, v2}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationDisconnected(Lcom/android/ims/ImsReasonInfo;)V
    :try_end_87
    .catch Landroid/os/RemoteException; {:try_start_82 .. :try_end_87} :catch_88
    .catchall {:try_start_82 .. :try_end_87} :catchall_65

    goto :goto_4d

    .line 983
    :catch_88
    move-exception v0

    .restart local v0    # "e":Landroid/os/RemoteException;
    move-object v1, v2

    .end local v2    # "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    .local v1, "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    goto :goto_4d

    .end local v0    # "e":Landroid/os/RemoteException;
    .local v1, "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    :catch_8b
    move-exception v0

    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_4d
.end method

.method private registerForWfcPreferenceChange(Landroid/os/Handler;)V
    .registers 6
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1064
    new-instance v0, Lcom/mediatek/ims/ImsService$2;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/ims/ImsService$2;-><init>(Lcom/mediatek/ims/ImsService;Landroid/os/Handler;)V

    .line 1088
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1089
    const-string/jumbo v2, "wfc_ims_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1090
    const/4 v3, 0x0

    .line 1088
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1063
    return-void
.end method

.method private sendIncomingCallIndication(Landroid/os/AsyncResult;)V
    .registers 7
    .param p1, "ar"    # Landroid/os/AsyncResult;

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    const/4 v3, 0x4

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/mediatek/ims/ImsService;->setCallIndication(Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method private setWfcProfileInfo()V
    .registers 6

    .prologue
    .line 770
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 771
    const-string/jumbo v3, "wfc_ims_mode"

    .line 772
    const/4 v4, 0x2

    .line 770
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 773
    .local v1, "wfcMode":I
    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsService;->mapToMDWfcProfile(I)I

    move-result v0

    .line 774
    .local v0, "rilWfcMode":I
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    invoke-virtual {v2, v0}, Lcom/mediatek/ims/ImsRILAdapter;->sendWfcProfileInfo(I)V

    .line 769
    return-void
.end method


# virtual methods
.method public close(I)V
    .registers 4
    .param p1, "serviceId"    # I

    .prologue
    .line 410
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 412
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/mediatek/ims/ImsService;->mListener:Lcom/android/ims/internal/IImsRegistrationListener;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_8

    monitor-exit v0

    .line 408
    return-void

    .line 410
    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public createCallProfile(III)Lcom/android/ims/ImsCallProfile;
    .registers 5
    .param p1, "serviceId"    # I
    .param p2, "serviceType"    # I
    .param p3, "callType"    # I

    .prologue
    .line 531
    new-instance v0, Lcom/android/ims/ImsCallProfile;

    invoke-direct {v0, p2, p3}, Lcom/android/ims/ImsCallProfile;-><init>(II)V

    return-object v0
.end method

.method public createCallSession(ILcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;
    .registers 11
    .param p1, "serviceId"    # I
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;
    .param p3, "listener"    # Lcom/android/ims/internal/IImsCallSessionListener;

    .prologue
    .line 537
    new-instance v0, Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/ims/ImsCallSessionProxy;-><init>(Landroid/content/Context;Lcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;Lcom/mediatek/ims/ImsService;Landroid/os/Handler;Lcom/mediatek/ims/ImsRILAdapter;)V

    return-object v0
.end method

.method public deregisterIms(I)V
    .registers 6
    .param p1, "phoneId"    # I

    .prologue
    .line 459
    const-string/jumbo v1, "ImsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "deregisterIms, mActivePhoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/ims/ImsService;->mActivePhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 460
    const-string/jumbo v3, " phoneId = "

    .line 459
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-direct {p0}, Lcom/mediatek/ims/ImsService;->getMainCapabilityPhoneId()I

    move-result p1

    .line 462
    const-string/jumbo v1, "ImsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "deregisterIms, MainCapabilityPhoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const/4 v0, 0x0

    .line 465
    .local v0, "isPhoneIdChanged":Z
    iget v1, p0, Lcom/mediatek/ims/ImsService;->mActivePhoneId:I

    if-eq v1, p1, :cond_4d

    .line 466
    iput p1, p0, Lcom/mediatek/ims/ImsService;->mActivePhoneId:I

    .line 467
    const/4 v0, 0x1

    .line 469
    :cond_4d
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ImsRILAdapter;->deregisterIms(Landroid/os/Message;)V

    .line 458
    return-void
.end method

.method public disableImsAdapter(Z)V
    .registers 3
    .param p1, "isNormalDisable"    # Z

    .prologue
    .line 383
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsAdapter:Lcom/mediatek/ims/ImsAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsAdapter;->disableImsAdapter(Z)V

    .line 384
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ims/ImsService;->mImsState:I

    .line 382
    return-void
.end method

.method public enableImsAdapter()V
    .registers 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsAdapter:Lcom/mediatek/ims/ImsAdapter;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsAdapter;->enableImsAdapter()V

    .line 378
    return-void
.end method

.method public getConfigInterface(I)Lcom/android/ims/internal/IImsConfig;
    .registers 8
    .param p1, "phoneId"    # I

    .prologue
    .line 585
    invoke-direct {p0}, Lcom/mediatek/ims/ImsService;->getMainCapabilityPhoneId()I

    move-result p1

    .line 586
    const-string/jumbo v3, "ImsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Get config interface on main capability phone "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    const/4 v1, 0x0

    .line 589
    .local v1, "instance":Lcom/android/ims/internal/IImsConfig;
    const-string/jumbo v3, "ImsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getConfigInterface phone "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget-object v4, p0, Lcom/mediatek/ims/ImsService;->mImsConfigInstanceMap:Ljava/util/Map;

    monitor-enter v4

    .line 591
    :try_start_3c
    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mImsConfigInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 592
    const-string/jumbo v3, "ImsService"

    const-string/jumbo v5, "A"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mImsConfigInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/ims/internal/IImsConfig;

    move-object v1, v0
    :try_end_5f
    .catchall {:try_start_3c .. :try_end_5f} :catchall_7e

    .local v1, "instance":Lcom/android/ims/internal/IImsConfig;
    :goto_5f
    monitor-exit v4

    .line 600
    return-object v1

    .line 595
    .local v1, "instance":Lcom/android/ims/internal/IImsConfig;
    :cond_61
    :try_start_61
    const-string/jumbo v3, "ImsService"

    const-string/jumbo v5, "B"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    new-instance v2, Lcom/mediatek/ims/ImsConfigStub;

    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    invoke-direct {v2, v3, v5, p1}, Lcom/mediatek/ims/ImsConfigStub;-><init>(Landroid/content/Context;Lcom/mediatek/ims/ImsRILAdapter;I)V
    :try_end_73
    .catchall {:try_start_61 .. :try_end_73} :catchall_7e

    .line 597
    .end local v1    # "instance":Lcom/android/ims/internal/IImsConfig;
    .local v2, "instance":Lcom/android/ims/internal/IImsConfig;
    :try_start_73
    iget-object v3, p0, Lcom/mediatek/ims/ImsService;->mImsConfigInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7c
    .catchall {:try_start_73 .. :try_end_7c} :catchall_81

    move-object v1, v2

    .end local v2    # "instance":Lcom/android/ims/internal/IImsConfig;
    .local v1, "instance":Lcom/android/ims/internal/IImsConfig;
    goto :goto_5f

    .line 590
    .local v1, "instance":Lcom/android/ims/internal/IImsConfig;
    :catchall_7e
    move-exception v3

    .end local v1    # "instance":Lcom/android/ims/internal/IImsConfig;
    :goto_7f
    monitor-exit v4

    throw v3

    .restart local v2    # "instance":Lcom/android/ims/internal/IImsConfig;
    :catchall_81
    move-exception v3

    move-object v1, v2

    .end local v2    # "instance":Lcom/android/ims/internal/IImsConfig;
    .local v1, "instance":Lcom/android/ims/internal/IImsConfig;
    goto :goto_7f
.end method

.method public getEcbmInterface(I)Lcom/android/ims/internal/IImsEcbm;
    .registers 3
    .param p1, "serviceId"    # I

    .prologue
    .line 609
    new-instance v0, Lcom/mediatek/ims/ImsEcbmProxy;

    invoke-direct {v0}, Lcom/mediatek/ims/ImsEcbmProxy;-><init>()V

    return-object v0
.end method

.method public getImsExtInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 684
    iget v0, p0, Lcom/mediatek/ims/ImsService;->mImsExtInfo:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImsRILAdapter()Lcom/mediatek/ims/ImsRILAdapter;
    .registers 3

    .prologue
    .line 869
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    if-nez v0, :cond_d

    .line 870
    const-string/jumbo v0, "ImsService"

    const-string/jumbo v1, "IMS: getImsRILAdapter, mImsRILAdapter is null "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    :cond_d
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    return-object v0
.end method

.method public getImsRegInfo(I)Z
    .registers 6
    .param p1, "phoneId"    # I

    .prologue
    const/4 v3, 0x0

    .line 665
    iget v0, p0, Lcom/mediatek/ims/ImsService;->mActivePhoneId:I

    if-eq p1, v0, :cond_2d

    .line 666
    const-string/jumbo v0, "ImsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IMS: getImsRegInfo() phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 667
    const-string/jumbo v2, " mActivePhoneId = "

    .line 666
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 667
    iget v2, p0, Lcom/mediatek/ims/ImsService;->mActivePhoneId:I

    .line 666
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    return v3

    .line 671
    :cond_2d
    iget v0, p0, Lcom/mediatek/ims/ImsService;->mImsRegInfo:I

    if-nez v0, :cond_33

    .line 672
    const/4 v0, 0x1

    return v0

    .line 674
    :cond_33
    return v3
.end method

.method public getImsServiceState()I
    .registers 2

    .prologue
    .line 693
    iget v0, p0, Lcom/mediatek/ims/ImsService;->mImsRegInfo:I

    return v0
.end method

.method public getImsState()I
    .registers 2

    .prologue
    .line 656
    iget v0, p0, Lcom/mediatek/ims/ImsService;->mImsState:I

    return v0
.end method

.method public getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;
    .registers 7
    .param p1, "serviceId"    # I
    .param p2, "callId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 543
    iget-object v2, p0, Lcom/mediatek/ims/ImsService;->mPendingMT:Lcom/android/ims/internal/IImsCallSession;

    if-nez v2, :cond_6

    .line 544
    return-object v3

    .line 547
    :cond_6
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mPendingMT:Lcom/android/ims/internal/IImsCallSession;

    .line 550
    .local v1, "pendingMT":Lcom/android/ims/internal/IImsCallSession;
    :try_start_8
    invoke-interface {v1}, Lcom/android/ims/internal/IImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 551
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/ims/ImsService;->mPendingMT:Lcom/android/ims/internal/IImsCallSession;
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_15} :catch_16

    .line 552
    return-object v1

    .line 554
    :catch_16
    move-exception v0

    .line 558
    :cond_17
    return-object v3
.end method

.method public getRegistrationStatus()I
    .registers 2

    .prologue
    .line 1327
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mNotificationController:Lcom/mediatek/ims/ImsNotificationController;

    if-nez v0, :cond_7

    const/16 v0, 0x64

    return v0

    .line 1328
    :cond_7
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mNotificationController:Lcom/mediatek/ims/ImsNotificationController;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsNotificationController;->getRegistrationStatus()I

    move-result v0

    return v0
.end method

.method public getUtInterface(I)Lcom/android/ims/internal/IImsUt;
    .registers 4
    .param p1, "serviceId"    # I

    .prologue
    .line 566
    sget-object v0, Lcom/mediatek/ims/ImsService;->sImsUtStub:Lcom/mediatek/ims/ImsUtStub;

    if-nez v0, :cond_d

    .line 567
    new-instance v0, Lcom/mediatek/ims/ImsUtStub;

    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ImsUtStub;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/ims/ImsService;->sImsUtStub:Lcom/mediatek/ims/ImsUtStub;

    .line 569
    :cond_d
    sget-object v0, Lcom/mediatek/ims/ImsService;->sImsUtStub:Lcom/mediatek/ims/ImsUtStub;

    return-object v0
.end method

.method public hangupAllCall()V
    .registers 3

    .prologue
    .line 701
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->hangupAllCall(Landroid/os/Message;)V

    .line 700
    return-void
.end method

.method public isConnected(III)Z
    .registers 5
    .param p1, "serviceId"    # I
    .param p2, "serviceType"    # I
    .param p3, "callType"    # I

    .prologue
    .line 390
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsAdapter:Lcom/mediatek/ims/ImsAdapter;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsAdapter;->getImsAdapterEnable()Z

    move-result v0

    return v0
.end method

.method public isOpened(I)Z
    .registers 3
    .param p1, "serviceId"    # I

    .prologue
    .line 419
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsAdapter:Lcom/mediatek/ims/ImsAdapter;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsAdapter;->getImsAdapterEnable()Z

    move-result v0

    return v0
.end method

.method public open(IILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    .registers 9
    .param p1, "phoneId"    # I
    .param p2, "serviceClass"    # I
    .param p3, "incomingCallIntent"    # Landroid/app/PendingIntent;
    .param p4, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .prologue
    const/4 v3, 0x1

    .line 397
    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 399
    :try_start_4
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mListener:Lcom/android/ims/internal/IImsRegistrationListener;

    if-eqz v0, :cond_11

    .line 400
    const-string/jumbo v0, "ImsService"

    const-string/jumbo v2, "IMS: it did not close IMS servide before open() !!"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_11
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p4}, Lcom/mediatek/ims/ImsService;->setRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_17

    monitor-exit v1

    .line 403
    return v3

    .line 397
    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setCallIndication(Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 14
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "callNum"    # Ljava/lang/String;
    .param p3, "seqNum"    # I
    .param p4, "isAllow"    # Z

    .prologue
    const/4 v3, 0x0

    .line 626
    if-eqz p4, :cond_48

    .line 627
    new-instance v2, Lcom/android/ims/ImsCallProfile;

    invoke-direct {v2}, Lcom/android/ims/ImsCallProfile;-><init>()V

    const-string/jumbo v0, "oir"

    const/4 v1, 0x2

    invoke-virtual {v2, v0, v1}, Lcom/android/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 628
    .local v2, "imsCallProfile":Lcom/android/ims/ImsCallProfile;
    if-eqz p2, :cond_13

    const-string/jumbo v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 632
    :cond_13
    :goto_13
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mPendingMT:Lcom/android/ims/internal/IImsCallSession;

    if-eqz v0, :cond_1c

    .line 634
    :try_start_17
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mPendingMT:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->close()V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1c} :catch_3d

    .line 640
    :cond_1c
    :goto_1c
    new-instance v0, Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v1, p0, Lcom/mediatek/ims/ImsService;->mContext:Landroid/content/Context;

    .line 641
    iget-object v5, p0, Lcom/mediatek/ims/ImsService;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    move-object v4, p0

    move-object v7, p1

    .line 640
    invoke-direct/range {v0 .. v7}, Lcom/mediatek/ims/ImsCallSessionProxy;-><init>(Landroid/content/Context;Lcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;Lcom/mediatek/ims/ImsService;Landroid/os/Handler;Lcom/mediatek/ims/ImsRILAdapter;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/ims/ImsService;->mPendingMT:Lcom/android/ims/internal/IImsCallSession;

    .line 642
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    .line 643
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 642
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, p3}, Lcom/mediatek/ims/ImsRILAdapter;->setCallIndication(III)V

    .line 624
    .end local v2    # "imsCallProfile":Lcom/android/ims/ImsCallProfile;
    :goto_35
    return-void

    .line 629
    .restart local v2    # "imsCallProfile":Lcom/android/ims/ImsCallProfile;
    :cond_36
    const-string/jumbo v0, "oi"

    invoke-virtual {v2, v0, p2}, Lcom/android/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 635
    :catch_3d
    move-exception v8

    .line 637
    .local v8, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "ImsService"

    const-string/jumbo v1, "setCallIndication: can\'t close pending MT"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 645
    .end local v2    # "imsCallProfile":Lcom/android/ims/ImsCallProfile;
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_48
    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    .line 646
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 645
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, p3}, Lcom/mediatek/ims/ImsRILAdapter;->setCallIndication(III)V

    goto :goto_35
.end method

.method public setRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V
    .registers 5
    .param p1, "serviceId"    # I
    .param p2, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .prologue
    .line 520
    iput-object p2, p0, Lcom/mediatek/ims/ImsService;->mListener:Lcom/android/ims/internal/IImsRegistrationListener;

    .line 521
    iget v0, p0, Lcom/mediatek/ims/ImsService;->mImsRegInfo:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_c

    .line 522
    iget v0, p0, Lcom/mediatek/ims/ImsService;->mImsRegInfo:I

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->notifyRegistrationStateChange(I)V

    .line 524
    :cond_c
    iget v0, p0, Lcom/mediatek/ims/ImsService;->mImsRegInfo:I

    if-nez v0, :cond_15

    .line 525
    iget v0, p0, Lcom/mediatek/ims/ImsService;->mImsExtInfo:I

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService;->notifyRegistrationCapabilityChange(I)V

    .line 519
    :cond_15
    return-void
.end method

.method public setUiTTYMode(IILandroid/os/Message;)V
    .registers 4
    .param p1, "serviceId"    # I
    .param p2, "uiTtyMode"    # I
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 617
    return-void
.end method

.method public turnOffIms(I)V
    .registers 4
    .param p1, "phoneId"    # I

    invoke-direct {p0}, Lcom/mediatek/ims/ImsService;->getMainCapabilityPhoneId()I

    move-result v0

    iput v0, p0, Lcom/mediatek/ims/ImsService;->mActivePhoneId:I

    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->turnOffIms(Landroid/os/Message;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/ims/ImsService;->mImsRequested:Z

    return-void
.end method

.method public turnOnIms(I)V
    .registers 4
    .param p1, "phoneId"    # I

    invoke-direct {p0}, Lcom/mediatek/ims/ImsService;->getMainCapabilityPhoneId()I

    move-result v0

    iput v0, p0, Lcom/mediatek/ims/ImsService;->mActivePhoneId:I

    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->turnOnIms(Landroid/os/Message;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/ims/ImsService;->mImsRequested:Z

    return-void
.end method

.method public updateRadioState(ZI)V
    .registers 7
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .prologue
    if-eqz p1, :cond_ims_radio_on

    iget-boolean v0, p0, Lcom/mediatek/ims/ImsService;->mImsRequested:Z

    if-eqz v0, :cond_ims_radio_on

    iget-object v0, p0, Lcom/mediatek/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->turnOnIms(Landroid/os/Message;)V

    :cond_ims_radio_on
    .line 477
    const-string/jumbo v1, "ImsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateRadioState, mActivePhoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/ims/ImsService;->mActivePhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 478
    const-string/jumbo v3, " phoneId = "

    .line 477
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 478
    const-string/jumbo v3, " power = "

    .line 477
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    invoke-direct {p0}, Lcom/mediatek/ims/ImsService;->getMainCapabilityPhoneId()I

    move-result p2

    .line 480
    const-string/jumbo v1, "ImsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateRadioState, MainCapabilityPhoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget v1, p0, Lcom/mediatek/ims/ImsService;->mActivePhoneId:I

    if-eq v1, p2, :cond_56

    .line 483
    iput p2, p0, Lcom/mediatek/ims/ImsService;->mActivePhoneId:I

    .line 486
    :cond_56
    sget-object v1, Lcom/mediatek/ims/ImsService;->sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;

    if-nez v1, :cond_6a

    .line 488
    invoke-direct {p0}, Lcom/mediatek/ims/ImsService;->checkAndBindWifiOffloadService()V

    .line 489
    sget-object v1, Lcom/mediatek/ims/ImsService;->sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;

    if-eqz v1, :cond_ac

    .line 491
    :try_start_61
    sget-object v1, Lcom/mediatek/ims/ImsService;->sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;

    .line 492
    invoke-direct {p0}, Lcom/mediatek/ims/ImsService;->createWifiOffloadListenerProxy()Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;

    move-result-object v2

    .line 491
    invoke-interface {v1, v2}, Lcom/mediatek/wfo/IWifiOffloadService;->registerForHandoverEvent(Lcom/mediatek/wfo/IWifiOffloadListener;)V
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_6a} :catch_a1

    .line 501
    :cond_6a
    :goto_6a
    sget-object v1, Lcom/mediatek/ims/ImsService;->sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;

    if-eqz v1, :cond_c1

    .line 504
    :try_start_6e
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v1

    if-eqz v1, :cond_92

    .line 505
    invoke-static {p2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSlotId(I)I

    move-result p2

    .line 506
    const-string/jumbo v1, "ImsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateRadioState, slot:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_92
    sget-object v1, Lcom/mediatek/ims/ImsService;->sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;

    invoke-interface {v1, p2, p1}, Lcom/mediatek/wfo/IWifiOffloadService;->updateRadioState(IZ)V
    :try_end_97
    .catch Landroid/os/RemoteException; {:try_start_6e .. :try_end_97} :catch_b6

    .line 515
    :goto_97
    const-string/jumbo v1, "ImsService"

    const-string/jumbo v2, "updateRadioState done"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    return-void

    .line 493
    :catch_a1
    move-exception v0

    .line 494
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ImsService"

    const-string/jumbo v2, "can\'t register event"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a

    .line 497
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_ac
    const-string/jumbo v1, "ImsService"

    const-string/jumbo v2, "can\'t get WifiOffloadService"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a

    .line 509
    :catch_b6
    move-exception v0

    .line 510
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ImsService"

    const-string/jumbo v2, "can\'t update radio state"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_97

    .line 513
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_c1
    const-string/jumbo v1, "ImsService"

    const-string/jumbo v2, "can\'t get WifiOffloadService"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_97
.end method

.method public addRegistrationListener(IILcom/android/ims/internal/IImsRegistrationListener;)V
    .registers 4
    return-void
.end method

.method public getMultiEndpointInterface(I)Lcom/android/ims/internal/IImsMultiEndpoint;
    .registers 3
    const/4 v0, 0x0
    return-object v0
.end method
