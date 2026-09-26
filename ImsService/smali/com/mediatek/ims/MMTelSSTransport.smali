.class public final Lcom/mediatek/ims/MMTelSSTransport;
.super Ljava/lang/Object;
.source "MMTelSSTransport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;
    }
.end annotation


# static fields
.field static final DBG:Z = true

.field private static final DEFAULT_WAKE_LOCK_TIMEOUT:I = 0x1388

.field static final DISABLE_MODE_ADD_RULE_DEACTIVATED_TAG:I = 0x2

.field static final DISABLE_MODE_CHANGE_CB_ALLOW:I = 0x3

.field static final DISABLE_MODE_DELETE_RULE:I = 0x1

.field static final EVENT_SEND:I = 0x1

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x2

.field private static final HTTP_ERROR_CODE_412:I = 0x19c

.field private static final INSTANCE:Lcom/mediatek/ims/MMTelSSTransport;

.field private static final LOG_TAG:Ljava/lang/String; = "MMTelSS"

.field static final MMTELSS_MAX_COMMAND_BYTES:I = 0x2000

.field static final MMTELSS_REQ_GET_CB:I = 0x7

.field static final MMTELSS_REQ_GET_CF:I = 0x9

.field static final MMTELSS_REQ_GET_CF_TIME_SLOT:I = 0x10

.field static final MMTELSS_REQ_GET_CLIP:I = 0x3

.field static final MMTELSS_REQ_GET_CLIR:I = 0x2

.field static final MMTELSS_REQ_GET_COLP:I = 0x4

.field static final MMTELSS_REQ_GET_COLR:I = 0x5

.field static final MMTELSS_REQ_GET_CW:I = 0xb

.field static final MMTELSS_REQ_SET_CB:I = 0x6

.field static final MMTELSS_REQ_SET_CF:I = 0x8

.field static final MMTELSS_REQ_SET_CF_TIME_SLOT:I = 0xf

.field static final MMTELSS_REQ_SET_CLIP:I = 0xc

.field static final MMTELSS_REQ_SET_CLIR:I = 0x1

.field static final MMTELSS_REQ_SET_COLP:I = 0xd

.field static final MMTELSS_REQ_SET_COLR:I = 0xe

.field static final MMTELSS_REQ_SET_CW:I = 0xa

.field private static final MMTEL_CACHE_VALID_TIME:J = 0x1d4c0L

.field private static final MODE_SS_CS:Ljava/lang/String; = "Prefer CS"

.field private static final MODE_SS_XCAP:Ljava/lang/String; = "Prefer XCAP"

.field private static final PROPERTY_CS_CURRENT_PHONE_ID:Ljava/lang/String; = "gsm.radio.ss.phoneid"

.field private static final PROP_SS_CFNUM:Ljava/lang/String; = "persist.radio.xcap.cfn"

.field private static final PROP_SS_DISABLE_METHOD:Ljava/lang/String; = "persist.radio.ss.xrdm"

.field private static final PROP_SS_MODE:Ljava/lang/String; = "persist.radio.ss.mode"

.field static final RADIO_TEMPSTATE_AVAILABLE:I = 0x0

.field static final RADIO_TEMPSTATE_UNAVAILABLE:I = 0x1

.field private static final TEST_DOC:Ljava/lang/String; = "simservs"

.field private static final TEST_USER:Ljava/lang/String; = "sip:user@anritsu-cscf.com"

.field private static final XCAP_ROOT:Ljava/lang/String; = "http://192.168.1.2:8080/"

.field private static final mSimservs:Lcom/mediatek/simservs/client/SimServs;


# instance fields
.field private mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;

.field private mCdCacheLastQueried:J

.field private mCdCachePhoneId:I

.field mContext:Landroid/content/Context;

.field private mCsDomainPhoneId:I

.field private mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;

.field private mCwCacheLastQueried:J

.field private mCwCachePhoneId:I

.field mDisableRuleMode:I

.field private mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

.field private mIcbCacheLastQueried:J

.field private mIcbCachePhoneId:I

.field mMCC:Ljava/lang/String;

.field mMNC:Ljava/lang/String;

.field private mNetwork:Landroid/net/Network;

.field private mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

.field private mOcbCacheLastQueried:J

.field private mOcbCachePhoneId:I

.field private mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

.field private mOirCacheLastQueried:J

.field private mOirCachePhoneId:I

.field mPassword:Ljava/lang/String;

.field mRequestMessagesPending:I

.field mRequestMessagesWaiting:I

.field mRequestsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/ims/MMTelSSRequest;",
            ">;"
        }
    .end annotation
.end field

.field mSender:Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;

.field mSenderThread:Landroid/os/HandlerThread;

.field private mUpdateSingleRule:Z

.field mUserName:Ljava/lang/String;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mWakeLockTimeout:I

.field mXIntendedId:Ljava/lang/String;

.field private mXcapMobileDataNetworkManager:Lcom/mediatek/ims/XcapMobileDataNetworkManager;

.field mXcapRoot:Ljava/lang/String;

.field mXui:Ljava/lang/String;

.field private pm:Landroid/os/PowerManager;

.field private radioTemporarilyUnavailable:I


# direct methods
.method static synthetic -get0(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;
    .registers 2

    iget-object v0, p0, Lcom/mediatek/ims/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;

    return-object v0
.end method

.method static synthetic -get1(Lcom/mediatek/ims/MMTelSSTransport;)J
    .registers 3

    iget-wide v0, p0, Lcom/mediatek/ims/MMTelSSTransport;->mCdCacheLastQueried:J

    return-wide v0
.end method

.method static synthetic -get10(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .registers 2

    iget-object v0, p0, Lcom/mediatek/ims/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    return-object v0
.end method

.method static synthetic -get11(Lcom/mediatek/ims/MMTelSSTransport;)J
    .registers 3

    iget-wide v0, p0, Lcom/mediatek/ims/MMTelSSTransport;->mOcbCacheLastQueried:J

    return-wide v0
.end method

.method static synthetic -get12(Lcom/mediatek/ims/MMTelSSTransport;)I
    .registers 2

    iget v0, p0, Lcom/mediatek/ims/MMTelSSTransport;->mOcbCachePhoneId:I

    return v0
.end method

.method static synthetic -get13(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    .registers 2

    iget-object v0, p0, Lcom/mediatek/ims/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    return-object v0
.end method

.method static synthetic -get14(Lcom/mediatek/ims/MMTelSSTransport;)J
    .registers 3

    iget-wide v0, p0, Lcom/mediatek/ims/MMTelSSTransport;->mOirCacheLastQueried:J

    return-wide v0
.end method

.method static synthetic -get15(Lcom/mediatek/ims/MMTelSSTransport;)I
    .registers 2

    iget v0, p0, Lcom/mediatek/ims/MMTelSSTransport;->mOirCachePhoneId:I

    return v0
.end method

.method static synthetic -get16()Lcom/mediatek/simservs/client/SimServs;
    .registers 1

    sget-object v0, Lcom/mediatek/ims/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;

    return-object v0
.end method

.method static synthetic -get17(Lcom/mediatek/ims/MMTelSSTransport;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/mediatek/ims/MMTelSSTransport;->mUpdateSingleRule:Z

    return v0
.end method

.method static synthetic -get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;
    .registers 2

    iget-object v0, p0, Lcom/mediatek/ims/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/mediatek/ims/MMTelSSTransport;)I
    .registers 2

    iget v0, p0, Lcom/mediatek/ims/MMTelSSTransport;->mCdCachePhoneId:I

    return v0
.end method

.method static synthetic -get3(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationWaiting;
    .registers 2

    iget-object v0, p0, Lcom/mediatek/ims/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;

    return-object v0
.end method

.method static synthetic -get4(Lcom/mediatek/ims/MMTelSSTransport;)J
    .registers 3

    iget-wide v0, p0, Lcom/mediatek/ims/MMTelSSTransport;->mCwCacheLastQueried:J

    return-wide v0
.end method

.method static synthetic -get5(Lcom/mediatek/ims/MMTelSSTransport;)I
    .registers 2

    iget v0, p0, Lcom/mediatek/ims/MMTelSSTransport;->mCwCachePhoneId:I

    return v0
.end method

.method static synthetic -get6(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    .registers 2

    iget-object v0, p0, Lcom/mediatek/ims/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    return-object v0
.end method

.method static synthetic -get7(Lcom/mediatek/ims/MMTelSSTransport;)J
    .registers 3

    iget-wide v0, p0, Lcom/mediatek/ims/MMTelSSTransport;->mIcbCacheLastQueried:J

    return-wide v0
.end method

.method static synthetic -get8(Lcom/mediatek/ims/MMTelSSTransport;)I
    .registers 2

    iget v0, p0, Lcom/mediatek/ims/MMTelSSTransport;->mIcbCachePhoneId:I

    return v0
.end method

.method static synthetic -get9(Lcom/mediatek/ims/MMTelSSTransport;)Landroid/net/Network;
    .registers 2

    iget-object v0, p0, Lcom/mediatek/ims/MMTelSSTransport;->mNetwork:Landroid/net/Network;

    return-object v0
.end method

.method static synthetic -set0(Lcom/mediatek/ims/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationDiversion;)Lcom/mediatek/simservs/client/CommunicationDiversion;
    .registers 2

    iput-object p1, p0, Lcom/mediatek/ims/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;

    return-object p1
.end method

.method static synthetic -set1(Lcom/mediatek/ims/MMTelSSTransport;J)J
    .registers 4

    iput-wide p1, p0, Lcom/mediatek/ims/MMTelSSTransport;->mCdCacheLastQueried:J

    return-wide p1
.end method

.method static synthetic -set10(Lcom/mediatek/ims/MMTelSSTransport;J)J
    .registers 4

    iput-wide p1, p0, Lcom/mediatek/ims/MMTelSSTransport;->mOcbCacheLastQueried:J

    return-wide p1
.end method

.method static synthetic -set11(Lcom/mediatek/ims/MMTelSSTransport;I)I
    .registers 2

    iput p1, p0, Lcom/mediatek/ims/MMTelSSTransport;->mOcbCachePhoneId:I

    return p1
.end method

.method static synthetic -set12(Lcom/mediatek/ims/MMTelSSTransport;Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    .registers 2

    iput-object p1, p0, Lcom/mediatek/ims/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    return-object p1
.end method

.method static synthetic -set13(Lcom/mediatek/ims/MMTelSSTransport;J)J
    .registers 4

    iput-wide p1, p0, Lcom/mediatek/ims/MMTelSSTransport;->mOirCacheLastQueried:J

    return-wide p1
.end method

.method static synthetic -set14(Lcom/mediatek/ims/MMTelSSTransport;I)I
    .registers 2

    iput p1, p0, Lcom/mediatek/ims/MMTelSSTransport;->mOirCachePhoneId:I

    return p1
.end method

.method static synthetic -set2(Lcom/mediatek/ims/MMTelSSTransport;I)I
    .registers 2

    iput p1, p0, Lcom/mediatek/ims/MMTelSSTransport;->mCdCachePhoneId:I

    return p1
.end method

.method static synthetic -set3(Lcom/mediatek/ims/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationWaiting;)Lcom/mediatek/simservs/client/CommunicationWaiting;
    .registers 2

    iput-object p1, p0, Lcom/mediatek/ims/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;

    return-object p1
.end method

.method static synthetic -set4(Lcom/mediatek/ims/MMTelSSTransport;J)J
    .registers 4

    iput-wide p1, p0, Lcom/mediatek/ims/MMTelSSTransport;->mCwCacheLastQueried:J

    return-wide p1
.end method

.method static synthetic -set5(Lcom/mediatek/ims/MMTelSSTransport;I)I
    .registers 2

    iput p1, p0, Lcom/mediatek/ims/MMTelSSTransport;->mCwCachePhoneId:I

    return p1
.end method

.method static synthetic -set6(Lcom/mediatek/ims/MMTelSSTransport;Lcom/mediatek/simservs/client/IncomingCommunicationBarring;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    .registers 2

    iput-object p1, p0, Lcom/mediatek/ims/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    return-object p1
.end method

.method static synthetic -set7(Lcom/mediatek/ims/MMTelSSTransport;J)J
    .registers 4

    iput-wide p1, p0, Lcom/mediatek/ims/MMTelSSTransport;->mIcbCacheLastQueried:J

    return-wide p1
.end method

.method static synthetic -set8(Lcom/mediatek/ims/MMTelSSTransport;I)I
    .registers 2

    iput p1, p0, Lcom/mediatek/ims/MMTelSSTransport;->mIcbCachePhoneId:I

    return p1
.end method

.method static synthetic -set9(Lcom/mediatek/ims/MMTelSSTransport;Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .registers 2

    iput-object p1, p0, Lcom/mediatek/ims/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/mediatek/ims/MMTelSSTransport;I)Z
    .registers 3
    .param p1, "phoneId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/ims/MMTelSSTransport;->updateNetworkInitSimServ(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/mediatek/ims/MMTelSSTransport;I)Lcom/mediatek/ims/MMTelSSRequest;
    .registers 3
    .param p1, "serial"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/ims/MMTelSSTransport;->findAndRemoveRequestFromList(I)Lcom/mediatek/ims/MMTelSSRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/mediatek/ims/MMTelSSTransport;)V
    .registers 1

    invoke-direct {p0}, Lcom/mediatek/ims/MMTelSSTransport;->releaseWakeLockIfDone()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 247
    new-instance v0, Lcom/mediatek/ims/MMTelSSTransport;

    invoke-direct {v0}, Lcom/mediatek/ims/MMTelSSTransport;-><init>()V

    sput-object v0, Lcom/mediatek/ims/MMTelSSTransport;->INSTANCE:Lcom/mediatek/ims/MMTelSSTransport;

    .line 331
    invoke-static {}, Lcom/mediatek/simservs/client/SimServs;->getInstance()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;

    .line 242
    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .prologue
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput-object v2, p0, Lcom/mediatek/ims/MMTelSSTransport;->pm:Landroid/os/PowerManager;

    .line 251
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/mediatek/ims/MMTelSSTransport;->mMCC:Ljava/lang/String;

    .line 252
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/mediatek/ims/MMTelSSTransport;->mMNC:Ljava/lang/String;

    .line 253
    const-string/jumbo v1, "user@chinaTel.com"

    iput-object v1, p0, Lcom/mediatek/ims/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 254
    const-string/jumbo v1, "http://192.168.1.2:8080/"

    iput-object v1, p0, Lcom/mediatek/ims/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 255
    const-string/jumbo v1, "user@chinaTel.com"

    iput-object v1, p0, Lcom/mediatek/ims/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 256
    const-string/jumbo v1, "sip:user@anritsu-cscf.com"

    iput-object v1, p0, Lcom/mediatek/ims/MMTelSSTransport;->mUserName:Ljava/lang/String;

    .line 260
    const-string/jumbo v1, "password"

    iput-object v1, p0, Lcom/mediatek/ims/MMTelSSTransport;->mPassword:Ljava/lang/String;

    .line 261
    iput-object v2, p0, Lcom/mediatek/ims/MMTelSSTransport;->mContext:Landroid/content/Context;

    .line 262
    iput-object v2, p0, Lcom/mediatek/ims/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    .line 263
    iput-object v2, p0, Lcom/mediatek/ims/MMTelSSTransport;->mNetwork:Landroid/net/Network;

    .line 303
    iput v3, p0, Lcom/mediatek/ims/MMTelSSTransport;->mRequestMessagesPending:I

    .line 322
    const/4 v1, 0x2

    iput v1, p0, Lcom/mediatek/ims/MMTelSSTransport;->mDisableRuleMode:I

    .line 326
    iput v3, p0, Lcom/mediatek/ims/MMTelSSTransport;->radioTemporarilyUnavailable:I

    .line 329
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ims/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    .line 345
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/ims/MMTelSSTransport;->mUpdateSingleRule:Z

    .line 346
    iput v3, p0, Lcom/mediatek/ims/MMTelSSTransport;->mCsDomainPhoneId:I

    .line 348
    iput-object v2, p0, Lcom/mediatek/ims/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 350
    iput-wide v4, p0, Lcom/mediatek/ims/MMTelSSTransport;->mCdCacheLastQueried:J

    .line 351
    iput-object v2, p0, Lcom/mediatek/ims/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    .line 353
    iput-wide v4, p0, Lcom/mediatek/ims/MMTelSSTransport;->mOcbCacheLastQueried:J

    .line 354
    iput-object v2, p0, Lcom/mediatek/ims/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    .line 356
    iput-wide v4, p0, Lcom/mediatek/ims/MMTelSSTransport;->mIcbCacheLastQueried:J

    .line 357
    iput-object v2, p0, Lcom/mediatek/ims/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;

    .line 359
    iput-wide v4, p0, Lcom/mediatek/ims/MMTelSSTransport;->mCwCacheLastQueried:J

    .line 360
    iput-object v2, p0, Lcom/mediatek/ims/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    .line 362
    iput-wide v4, p0, Lcom/mediatek/ims/MMTelSSTransport;->mOirCacheLastQueried:J

    .line 373
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "MMTelSSTransmitter"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mediatek/ims/MMTelSSTransport;->mSenderThread:Landroid/os/HandlerThread;

    .line 374
    iget-object v1, p0, Lcom/mediatek/ims/MMTelSSTransport;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 375
    iget-object v1, p0, Lcom/mediatek/ims/MMTelSSTransport;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 376
    .local v0, "looper":Landroid/os/Looper;
    new-instance v1, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;

    invoke-direct {v1, p0, v0}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;-><init>(Lcom/mediatek/ims/MMTelSSTransport;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/mediatek/ims/MMTelSSTransport;->mSender:Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;

    .line 366
    return-void
.end method

.method private acquireWakeLock()V
    .registers 7

    .prologue
    .line 6047
    const-string/jumbo v1, "MMTelSS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "=>wakeLock() mRequestMessagesPending = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 6048
    iget v3, p0, Lcom/mediatek/ims/MMTelSSTransport;->mRequestMessagesPending:I

    .line 6047
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 6049
    const-string/jumbo v3, ", mRequestsList.size() = "

    .line 6047
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 6049
    iget-object v3, p0, Lcom/mediatek/ims/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 6047
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6050
    iget-object v2, p0, Lcom/mediatek/ims/MMTelSSTransport;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 6051
    :try_start_30
    iget-object v1, p0, Lcom/mediatek/ims/MMTelSSTransport;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 6052
    iget v1, p0, Lcom/mediatek/ims/MMTelSSTransport;->mRequestMessagesPending:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/ims/MMTelSSTransport;->mRequestMessagesPending:I

    .line 6054
    iget-object v1, p0, Lcom/mediatek/ims/MMTelSSTransport;->mSender:Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->removeMessages(I)V

    .line 6055
    iget-object v1, p0, Lcom/mediatek/ims/MMTelSSTransport;->mSender:Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 6056
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/ims/MMTelSSTransport;->mSender:Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;

    iget v3, p0, Lcom/mediatek/ims/MMTelSSTransport;->mWakeLockTimeout:I

    int-to-long v4, v3

    invoke-virtual {v1, v0, v4, v5}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_50
    .catchall {:try_start_30 .. :try_end_50} :catchall_52

    monitor-exit v2

    .line 6046
    return-void

    .line 6050
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_52
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private findAndRemoveRequestFromList(I)Lcom/mediatek/ims/MMTelSSRequest;
    .registers 7
    .param p1, "serial"    # I

    .prologue
    .line 6078
    iget-object v4, p0, Lcom/mediatek/ims/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 6079
    const/4 v0, 0x0

    .local v0, "i":I
    :try_start_4
    iget-object v3, p0, Lcom/mediatek/ims/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "s":I
    :goto_a
    if-ge v0, v2, :cond_2c

    .line 6080
    iget-object v3, p0, Lcom/mediatek/ims/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/MMTelSSRequest;

    .line 6082
    .local v1, "rr":Lcom/mediatek/ims/MMTelSSRequest;
    iget v3, v1, Lcom/mediatek/ims/MMTelSSRequest;->mSerial:I

    if-ne v3, p1, :cond_29

    .line 6083
    iget-object v3, p0, Lcom/mediatek/ims/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6084
    iget v3, p0, Lcom/mediatek/ims/MMTelSSTransport;->mRequestMessagesWaiting:I

    if-lez v3, :cond_27

    .line 6085
    iget v3, p0, Lcom/mediatek/ims/MMTelSSTransport;->mRequestMessagesWaiting:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/mediatek/ims/MMTelSSTransport;->mRequestMessagesWaiting:I
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_2f

    :cond_27
    monitor-exit v4

    .line 6086
    return-object v1

    .line 6079
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .end local v1    # "rr":Lcom/mediatek/ims/MMTelSSRequest;
    :cond_2c
    monitor-exit v4

    .line 6091
    const/4 v3, 0x0

    return-object v3

    .line 6078
    .end local v2    # "s":I
    :catchall_2f
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static getInstance()Lcom/mediatek/ims/MMTelSSTransport;
    .registers 1

    .prologue
    .line 380
    sget-object v0, Lcom/mediatek/ims/MMTelSSTransport;->INSTANCE:Lcom/mediatek/ims/MMTelSSTransport;

    return-object v0
.end method

.method public static getSimServs()Lcom/mediatek/simservs/client/SimServs;
    .registers 1

    .prologue
    .line 384
    sget-object v0, Lcom/mediatek/ims/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;

    return-object v0
.end method

.method private getUtXcapPhoneId()I
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 5648
    iget-object v2, p0, Lcom/mediatek/ims/MMTelSSTransport;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSUtils;->getDefaultImsPhoneId(Landroid/content/Context;)I

    move-result v1

    .line 5650
    .local v1, "imsPhoneId":I
    if-gez v1, :cond_2b

    .line 5651
    const-string/jumbo v2, "gsm.radio.ss.phoneid"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 5652
    .local v0, "csDomainPhoneId":I
    const-string/jumbo v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUtXcapPhoneId(): use CS domain phoneId by SystemProperties = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5654
    return v0

    .line 5656
    .end local v0    # "csDomainPhoneId":I
    :cond_2b
    const-string/jumbo v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUtXcapPhoneId(): use IMS phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5657
    return v1
.end method

.method private releaseWakeLockIfDone()V
    .registers 4

    .prologue
    .line 6062
    const-string/jumbo v0, "MMTelSS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wakeLock()=> mRequestMessagesPending = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6063
    iget v2, p0, Lcom/mediatek/ims/MMTelSSTransport;->mRequestMessagesPending:I

    .line 6062
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6064
    const-string/jumbo v2, ", mRequestsList.size() = "

    .line 6062
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6064
    iget-object v2, p0, Lcom/mediatek/ims/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 6062
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6065
    iget-object v1, p0, Lcom/mediatek/ims/MMTelSSTransport;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 6066
    :try_start_30
    iget-object v0, p0, Lcom/mediatek/ims/MMTelSSTransport;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 6067
    iget v0, p0, Lcom/mediatek/ims/MMTelSSTransport;->mRequestMessagesPending:I

    if-nez v0, :cond_4f

    .line 6069
    iget-object v0, p0, Lcom/mediatek/ims/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4f

    .line 6071
    iget-object v0, p0, Lcom/mediatek/ims/MMTelSSTransport;->mSender:Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->removeMessages(I)V

    .line 6072
    iget-object v0, p0, Lcom/mediatek/ims/MMTelSSTransport;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_4f
    .catchall {:try_start_30 .. :try_end_4f} :catchall_51

    :cond_4f
    monitor-exit v1

    .line 6061
    return-void

    .line 6065
    :catchall_51
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static requestToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "request"    # I

    .prologue
    .line 6096
    packed-switch p0, :pswitch_data_3c

    .line 6112
    :pswitch_3
    const-string/jumbo v0, "UNKNOWN MMTELSS REQ"

    return-object v0

    .line 6097
    :pswitch_7
    const-string/jumbo v0, "SET_CLIR"

    return-object v0

    .line 6098
    :pswitch_b
    const-string/jumbo v0, "GET_CLIR"

    return-object v0

    .line 6099
    :pswitch_f
    const-string/jumbo v0, "GET_CLIP"

    return-object v0

    .line 6100
    :pswitch_13
    const-string/jumbo v0, "GET_COLP"

    return-object v0

    .line 6101
    :pswitch_17
    const-string/jumbo v0, "GET_COLR"

    return-object v0

    .line 6102
    :pswitch_1b
    const-string/jumbo v0, "SET_CW"

    return-object v0

    .line 6103
    :pswitch_1f
    const-string/jumbo v0, "GET_CW"

    return-object v0

    .line 6104
    :pswitch_23
    const-string/jumbo v0, "SET_CB"

    return-object v0

    .line 6105
    :pswitch_27
    const-string/jumbo v0, "GET_CB"

    return-object v0

    .line 6106
    :pswitch_2b
    const-string/jumbo v0, "SET_CF"

    return-object v0

    .line 6107
    :pswitch_2f
    const-string/jumbo v0, "GET_CF"

    return-object v0

    .line 6109
    :pswitch_33
    const-string/jumbo v0, "SET_CF_TIME_SLOT"

    return-object v0

    .line 6110
    :pswitch_37
    const-string/jumbo v0, "GET_CF_TIME_SLOT"

    return-object v0

    .line 6096
    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_7
        :pswitch_b
        :pswitch_f
        :pswitch_13
        :pswitch_17
        :pswitch_23
        :pswitch_27
        :pswitch_2b
        :pswitch_2f
        :pswitch_1b
        :pswitch_1f
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_33
        :pswitch_37
    .end packed-switch
.end method

.method private requestXcapNetwork(I)V
    .registers 6
    .param p1, "phoneId"    # I

    .prologue
    const/4 v3, 0x0

    .line 404
    const-string/jumbo v0, "MMTelSS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestXcapNetwork(): phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 405
    const-string/jumbo v2, ", mXcapMobileDataNetworkManager = "

    .line 404
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 405
    iget-object v2, p0, Lcom/mediatek/ims/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    .line 404
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iput-object v3, p0, Lcom/mediatek/ims/MMTelSSTransport;->mNetwork:Landroid/net/Network;

    .line 407
    iget-object v0, p0, Lcom/mediatek/ims/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    if-eqz v0, :cond_36

    .line 408
    iget-object v0, p0, Lcom/mediatek/ims/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->acquireNetwork(I)Landroid/net/Network;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/MMTelSSTransport;->mNetwork:Landroid/net/Network;

    .line 403
    :cond_36
    return-void
.end method

.method private send(Lcom/mediatek/ims/MMTelSSRequest;)V
    .registers 5
    .param p1, "rr"    # Lcom/mediatek/ims/MMTelSSRequest;

    .prologue
    .line 6179
    iget-object v1, p0, Lcom/mediatek/ims/MMTelSSTransport;->mSender:Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 6180
    .local v0, "msg":Landroid/os/Message;
    invoke-direct {p0}, Lcom/mediatek/ims/MMTelSSTransport;->acquireWakeLock()V

    .line 6181
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 6177
    return-void
.end method

.method private updateNetworkInitSimServ(I)Z
    .registers 9
    .param p1, "phoneId"    # I

    .prologue
    .line 413
    const-string/jumbo v0, "MMTelSS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateNetworkInitSimServ:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-direct {p0, p1}, Lcom/mediatek/ims/MMTelSSTransport;->requestXcapNetwork(I)V

    .line 417
    iget-object v0, p0, Lcom/mediatek/ims/MMTelSSTransport;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/mediatek/ims/MMTelSSUtils;->getXui(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 418
    invoke-static {p1}, Lcom/mediatek/ims/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 419
    iget-object v0, p0, Lcom/mediatek/ims/MMTelSSTransport;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/mediatek/ims/MMTelSSUtils;->getXIntendedId(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 421
    iget-object v0, p0, Lcom/mediatek/ims/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 422
    const-string/jumbo v0, "MMTelSS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSimServParameter(): XcapRoot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const/4 v0, 0x0

    return v0

    .line 427
    :cond_59
    iget-object v1, p0, Lcom/mediatek/ims/MMTelSSTransport;->mXui:Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/ims/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/ims/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/ims/MMTelSSTransport;->mUserName:Ljava/lang/String;

    iget-object v5, p0, Lcom/mediatek/ims/MMTelSSTransport;->mPassword:Ljava/lang/String;

    move-object v0, p0

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/ims/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 429
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public dumpCBRule(Lcom/mediatek/simservs/client/policy/Rule;)V
    .registers 10
    .param p1, "rule"    # Lcom/mediatek/simservs/client/policy/Rule;

    .prologue
    .line 6150
    const/4 v1, 0x0

    .line 6151
    .local v1, "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    const/4 v0, 0x0

    .line 6153
    .local v0, "action":Lcom/mediatek/simservs/client/policy/Actions;
    if-eqz p1, :cond_11

    .line 6154
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v1

    .line 6155
    .local v1, "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v0

    .line 6156
    .local v0, "action":Lcom/mediatek/simservs/client/policy/Actions;
    if-eqz v1, :cond_10

    if-nez v0, :cond_12

    .line 6157
    :cond_10
    return-void

    .line 6160
    .local v0, "action":Lcom/mediatek/simservs/client/policy/Actions;
    .local v1, "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    :cond_11
    return-void

    .line 6163
    .local v0, "action":Lcom/mediatek/simservs/client/policy/Actions;
    .local v1, "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    :cond_12
    const-string/jumbo v5, "MMTelSS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Dump CB Rule: international="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 6164
    const-string/jumbo v7, ",roaming="

    .line 6163
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 6164
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v7

    .line 6163
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6165
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v3

    .line 6166
    .local v3, "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v4, ""

    .line 6167
    .local v4, "mediaTypeList":Ljava/lang/String;
    if-eqz v3, :cond_8a

    .line 6168
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_49
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_70

    .line 6169
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6168
    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    .line 6171
    :cond_70
    const-string/jumbo v5, "MMTelSS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Dump CB Rule:mediaTypeList="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6149
    .end local v2    # "i":I
    :cond_8a
    return-void
.end method

.method public dumpCFRule(Lcom/mediatek/simservs/client/policy/Rule;)V
    .registers 11
    .param p1, "rule"    # Lcom/mediatek/simservs/client/policy/Rule;

    .prologue
    .line 6120
    const/4 v1, 0x0

    .line 6121
    .local v1, "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    const/4 v0, 0x0

    .line 6122
    .local v0, "action":Lcom/mediatek/simservs/client/policy/Actions;
    const/4 v2, 0x0

    .line 6124
    .local v2, "forward":Lcom/mediatek/simservs/client/policy/ForwardTo;
    if-eqz p1, :cond_12

    .line 6125
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v1

    .line 6126
    .local v1, "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v0

    .line 6127
    .local v0, "action":Lcom/mediatek/simservs/client/policy/Actions;
    if-eqz v1, :cond_11

    if-nez v0, :cond_13

    .line 6128
    :cond_11
    return-void

    .line 6131
    .local v0, "action":Lcom/mediatek/simservs/client/policy/Actions;
    .local v1, "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    :cond_12
    return-void

    .line 6134
    .local v0, "action":Lcom/mediatek/simservs/client/policy/Actions;
    .local v1, "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    :cond_13
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v2

    .line 6135
    .local v2, "forward":Lcom/mediatek/simservs/client/policy/ForwardTo;
    const-string/jumbo v6, "MMTelSS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Dump CF Rule:busy="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ",noAns="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 6136
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v8

    .line 6135
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 6136
    const-string/jumbo v8, ",noReachable="

    .line 6135
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 6136
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v8

    .line 6135
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 6137
    const-string/jumbo v8, ",noRegistered="

    .line 6135
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 6137
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v8

    .line 6135
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 6137
    const-string/jumbo v8, ",forward_to_Target="

    .line 6135
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 6138
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/ForwardTo;->getTarget()Ljava/lang/String;

    move-result-object v8

    .line 6135
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 6138
    const-string/jumbo v8, ",isNotifyCaller="

    .line 6135
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 6138
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/ForwardTo;->isNotifyCaller()Z

    move-result v8

    .line 6135
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6139
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v4

    .line 6140
    .local v4, "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v5, ""

    .line 6141
    .local v5, "mediaTypeList":Ljava/lang/String;
    if-eqz v4, :cond_cb

    .line 6142
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8a
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_b1

    .line 6143
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 6142
    add-int/lit8 v3, v3, 0x1

    goto :goto_8a

    .line 6145
    :cond_b1
    const-string/jumbo v6, "MMTelSS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Dump CF Rule:mediaTypeList="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6119
    .end local v3    # "i":I
    :cond_cb
    return-void
.end method

.method public getCLIR(Landroid/os/Message;)V
    .registers 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 5688
    invoke-direct {p0}, Lcom/mediatek/ims/MMTelSSTransport;->getUtXcapPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/ims/MMTelSSTransport;->getCLIR(Landroid/os/Message;I)V

    .line 5687
    return-void
.end method

.method public getCLIR(Landroid/os/Message;I)V
    .registers 5
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "phoneId"    # I

    .prologue
    .line 5698
    const/4 v1, 0x2

    invoke-static {v1, p1}, Lcom/mediatek/ims/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/MMTelSSRequest;

    move-result-object v0

    .line 5699
    .local v0, "rr":Lcom/mediatek/ims/MMTelSSRequest;
    iget-object v1, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5700
    invoke-direct {p0, v0}, Lcom/mediatek/ims/MMTelSSTransport;->send(Lcom/mediatek/ims/MMTelSSRequest;)V

    .line 5697
    return-void
.end method

.method public getCOLP(Landroid/os/Message;)V
    .registers 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 5760
    invoke-direct {p0}, Lcom/mediatek/ims/MMTelSSTransport;->getUtXcapPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/ims/MMTelSSTransport;->getCOLP(Landroid/os/Message;I)V

    .line 5759
    return-void
.end method

.method public getCOLP(Landroid/os/Message;I)V
    .registers 5
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "phoneId"    # I

    .prologue
    .line 5771
    const/4 v1, 0x4

    invoke-static {v1, p1}, Lcom/mediatek/ims/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/MMTelSSRequest;

    move-result-object v0

    .line 5772
    .local v0, "rr":Lcom/mediatek/ims/MMTelSSRequest;
    iget-object v1, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5773
    invoke-direct {p0, v0}, Lcom/mediatek/ims/MMTelSSTransport;->send(Lcom/mediatek/ims/MMTelSSRequest;)V

    .line 5769
    return-void
.end method

.method public getCOLR(Landroid/os/Message;)V
    .registers 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 5798
    invoke-direct {p0}, Lcom/mediatek/ims/MMTelSSTransport;->getUtXcapPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/ims/MMTelSSTransport;->getCOLR(Landroid/os/Message;I)V

    .line 5797
    return-void
.end method

.method public getCOLR(Landroid/os/Message;I)V
    .registers 5
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "phoneId"    # I

    .prologue
    .line 5809
    const/4 v1, 0x5

    invoke-static {v1, p1}, Lcom/mediatek/ims/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/MMTelSSRequest;

    move-result-object v0

    .line 5810
    .local v0, "rr":Lcom/mediatek/ims/MMTelSSRequest;
    iget-object v1, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5811
    invoke-direct {p0, v0}, Lcom/mediatek/ims/MMTelSSTransport;->send(Lcom/mediatek/ims/MMTelSSRequest;)V

    .line 5807
    return-void
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .registers 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 5724
    invoke-direct {p0}, Lcom/mediatek/ims/MMTelSSTransport;->getUtXcapPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/ims/MMTelSSTransport;->queryCLIP(Landroid/os/Message;I)V

    .line 5723
    return-void
.end method

.method public queryCLIP(Landroid/os/Message;I)V
    .registers 5
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "phoneId"    # I

    .prologue
    .line 5734
    const/4 v1, 0x3

    invoke-static {v1, p1}, Lcom/mediatek/ims/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/MMTelSSRequest;

    move-result-object v0

    .line 5735
    .local v0, "rr":Lcom/mediatek/ims/MMTelSSRequest;
    iget-object v1, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5736
    invoke-direct {p0, v0}, Lcom/mediatek/ims/MMTelSSTransport;->send(Lcom/mediatek/ims/MMTelSSRequest;)V

    .line 5733
    return-void
.end method

.method public queryCallForwardInTimeSlotStatus(IILandroid/os/Message;)V
    .registers 5
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 6024
    invoke-direct {p0}, Lcom/mediatek/ims/MMTelSSTransport;->getUtXcapPhoneId()I

    move-result v0

    .line 6023
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/ims/MMTelSSTransport;->queryCallForwardInTimeSlotStatus(IILandroid/os/Message;I)V

    .line 6022
    return-void
.end method

.method public queryCallForwardInTimeSlotStatus(IILandroid/os/Message;I)V
    .registers 7
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "response"    # Landroid/os/Message;
    .param p4, "phoneId"    # I

    .prologue
    .line 6037
    const/16 v1, 0x10

    invoke-static {v1, p3}, Lcom/mediatek/ims/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/MMTelSSRequest;

    move-result-object v0

    .line 6038
    .local v0, "rr":Lcom/mediatek/ims/MMTelSSRequest;
    iget-object v1, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6039
    iget-object v1, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6040
    iget-object v1, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6041
    invoke-direct {p0, v0}, Lcom/mediatek/ims/MMTelSSTransport;->send(Lcom/mediatek/ims/MMTelSSRequest;)V

    .line 6036
    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .registers 11
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 5948
    invoke-direct {p0}, Lcom/mediatek/ims/MMTelSSTransport;->getUtXcapPhoneId()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 5947
    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/ims/MMTelSSTransport;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;I)V

    .line 5946
    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;I)V
    .registers 9
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;
    .param p5, "phoneId"    # I

    .prologue
    .line 5963
    const/16 v1, 0x9

    invoke-static {v1, p4}, Lcom/mediatek/ims/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/MMTelSSRequest;

    move-result-object v0

    .line 5965
    .local v0, "rr":Lcom/mediatek/ims/MMTelSSRequest;
    iget-object v1, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5967
    iget-object v1, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5968
    iget-object v1, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5970
    if-eqz p3, :cond_26

    .line 5971
    iget-object v1, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5975
    :goto_1d
    iget-object v1, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 5977
    invoke-direct {p0, v0}, Lcom/mediatek/ims/MMTelSSTransport;->send(Lcom/mediatek/ims/MMTelSSRequest;)V

    .line 5961
    return-void

    .line 5973
    :cond_26
    iget-object v1, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1d
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .registers 4
    .param p1, "serviceClass"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 5838
    invoke-direct {p0}, Lcom/mediatek/ims/MMTelSSTransport;->getUtXcapPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mediatek/ims/MMTelSSTransport;->queryCallWaiting(ILandroid/os/Message;I)V

    .line 5837
    return-void
.end method

.method public queryCallWaiting(ILandroid/os/Message;I)V
    .registers 6
    .param p1, "serviceClass"    # I
    .param p2, "response"    # Landroid/os/Message;
    .param p3, "phoneId"    # I

    .prologue
    .line 5849
    const/16 v1, 0xb

    invoke-static {v1, p2}, Lcom/mediatek/ims/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/MMTelSSRequest;

    move-result-object v0

    .line 5850
    .local v0, "rr":Lcom/mediatek/ims/MMTelSSRequest;
    iget-object v1, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5851
    iget-object v1, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5852
    invoke-direct {p0, v0}, Lcom/mediatek/ims/MMTelSSTransport;->send(Lcom/mediatek/ims/MMTelSSRequest;)V

    .line 5848
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .registers 11
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 5888
    invoke-direct {p0}, Lcom/mediatek/ims/MMTelSSTransport;->getUtXcapPhoneId()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 5887
    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/ims/MMTelSSTransport;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;I)V

    .line 5886
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;I)V
    .registers 8
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "response"    # Landroid/os/Message;
    .param p5, "phoneId"    # I

    .prologue
    .line 5904
    const/4 v1, 0x7

    invoke-static {v1, p4}, Lcom/mediatek/ims/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/MMTelSSRequest;

    move-result-object v0

    .line 5905
    .local v0, "rr":Lcom/mediatek/ims/MMTelSSRequest;
    iget-object v1, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5906
    iget-object v1, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5907
    iget-object v1, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 5908
    invoke-direct {p0, v0}, Lcom/mediatek/ims/MMTelSSTransport;->send(Lcom/mediatek/ims/MMTelSSRequest;)V

    .line 5901
    return-void
.end method

.method public registerUtService(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 388
    iput-object p1, p0, Lcom/mediatek/ims/MMTelSSTransport;->mContext:Landroid/content/Context;

    .line 389
    iget-object v0, p0, Lcom/mediatek/ims/MMTelSSTransport;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_30

    .line 390
    iget-object v0, p0, Lcom/mediatek/ims/MMTelSSTransport;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/mediatek/ims/MMTelSSTransport;->pm:Landroid/os/PowerManager;

    .line 391
    iget-object v0, p0, Lcom/mediatek/ims/MMTelSSTransport;->pm:Landroid/os/PowerManager;

    const-string/jumbo v1, "MMTelSS"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/MMTelSSTransport;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 392
    iget-object v0, p0, Lcom/mediatek/ims/MMTelSSTransport;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 394
    const-string/jumbo v0, "ro.ril.wake_lock_timeout"

    const/16 v1, 0x1388

    .line 393
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/ims/MMTelSSTransport;->mWakeLockTimeout:I

    .line 398
    :cond_30
    iget-object v0, p0, Lcom/mediatek/ims/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    if-nez v0, :cond_43

    .line 399
    new-instance v0, Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    iget-object v1, p0, Lcom/mediatek/ims/MMTelSSTransport;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/ims/MMTelSSTransport;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/ims/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    .line 387
    :cond_43
    return-void
.end method

.method public setCLIP(ILandroid/os/Message;)V
    .registers 4
    .param p1, "clipEnable"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 5705
    invoke-direct {p0}, Lcom/mediatek/ims/MMTelSSTransport;->getUtXcapPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mediatek/ims/MMTelSSTransport;->setCLIP(ILandroid/os/Message;I)V

    .line 5704
    return-void
.end method

.method public setCLIP(ILandroid/os/Message;I)V
    .registers 6
    .param p1, "clipEnable"    # I
    .param p2, "result"    # Landroid/os/Message;
    .param p3, "phoneId"    # I

    .prologue
    .line 5716
    const/16 v1, 0xc

    invoke-static {v1, p2}, Lcom/mediatek/ims/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/MMTelSSRequest;

    move-result-object v0

    .line 5717
    .local v0, "rr":Lcom/mediatek/ims/MMTelSSRequest;
    iget-object v1, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5718
    iget-object v1, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5719
    invoke-direct {p0, v0}, Lcom/mediatek/ims/MMTelSSTransport;->send(Lcom/mediatek/ims/MMTelSSRequest;)V

    .line 5715
    return-void
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .registers 4
    .param p1, "clirMode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 5664
    invoke-direct {p0}, Lcom/mediatek/ims/MMTelSSTransport;->getUtXcapPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mediatek/ims/MMTelSSTransport;->setCLIR(ILandroid/os/Message;I)V

    .line 5663
    return-void
.end method

.method public setCLIR(ILandroid/os/Message;I)V
    .registers 6
    .param p1, "clirMode"    # I
    .param p2, "result"    # Landroid/os/Message;
    .param p3, "phoneId"    # I

    .prologue
    .line 5677
    const/4 v1, 0x1

    invoke-static {v1, p2}, Lcom/mediatek/ims/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/MMTelSSRequest;

    move-result-object v0

    .line 5681
    .local v0, "rr":Lcom/mediatek/ims/MMTelSSRequest;
    iget-object v1, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5682
    iget-object v1, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5683
    invoke-direct {p0, v0}, Lcom/mediatek/ims/MMTelSSTransport;->send(Lcom/mediatek/ims/MMTelSSRequest;)V

    .line 5674
    return-void
.end method

.method public setCOLP(ILandroid/os/Message;)V
    .registers 4
    .param p1, "colpEnable"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 5741
    invoke-direct {p0}, Lcom/mediatek/ims/MMTelSSTransport;->getUtXcapPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mediatek/ims/MMTelSSTransport;->setCOLP(ILandroid/os/Message;I)V

    .line 5740
    return-void
.end method

.method public setCOLP(ILandroid/os/Message;I)V
    .registers 6
    .param p1, "colpEnable"    # I
    .param p2, "result"    # Landroid/os/Message;
    .param p3, "phoneId"    # I

    .prologue
    .line 5752
    const/16 v1, 0xd

    invoke-static {v1, p2}, Lcom/mediatek/ims/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/MMTelSSRequest;

    move-result-object v0

    .line 5753
    .local v0, "rr":Lcom/mediatek/ims/MMTelSSRequest;
    iget-object v1, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5754
    iget-object v1, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5755
    invoke-direct {p0, v0}, Lcom/mediatek/ims/MMTelSSTransport;->send(Lcom/mediatek/ims/MMTelSSRequest;)V

    .line 5751
    return-void
.end method

.method public setCOLR(ILandroid/os/Message;)V
    .registers 4
    .param p1, "colrMode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 5779
    invoke-direct {p0}, Lcom/mediatek/ims/MMTelSSTransport;->getUtXcapPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mediatek/ims/MMTelSSTransport;->setCOLR(ILandroid/os/Message;I)V

    .line 5778
    return-void
.end method

.method public setCOLR(ILandroid/os/Message;I)V
    .registers 6
    .param p1, "colrMode"    # I
    .param p2, "result"    # Landroid/os/Message;
    .param p3, "phoneId"    # I

    .prologue
    .line 5790
    const/16 v1, 0xe

    invoke-static {v1, p2}, Lcom/mediatek/ims/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/MMTelSSRequest;

    move-result-object v0

    .line 5791
    .local v0, "rr":Lcom/mediatek/ims/MMTelSSRequest;
    iget-object v1, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5792
    iget-object v1, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5793
    invoke-direct {p0, v0}, Lcom/mediatek/ims/MMTelSSTransport;->send(Lcom/mediatek/ims/MMTelSSRequest;)V

    .line 5789
    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .registers 15
    .param p1, "action"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "timeSeconds"    # I
    .param p6, "response"    # Landroid/os/Message;

    .prologue
    .line 5915
    invoke-direct {p0}, Lcom/mediatek/ims/MMTelSSTransport;->getUtXcapPhoneId()I

    move-result v7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .line 5914
    invoke-virtual/range {v0 .. v7}, Lcom/mediatek/ims/MMTelSSTransport;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;I)V

    .line 5913
    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILandroid/os/Message;I)V
    .registers 12
    .param p1, "action"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "timeSeconds"    # I
    .param p6, "response"    # Landroid/os/Message;
    .param p7, "phoneId"    # I

    .prologue
    .line 5931
    const-string/jumbo v1, "MMTelSS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5933
    const/16 v1, 0x8

    invoke-static {v1, p6}, Lcom/mediatek/ims/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/MMTelSSRequest;

    move-result-object v0

    .line 5934
    .local v0, "rr":Lcom/mediatek/ims/MMTelSSRequest;
    iget-object v1, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5935
    iget-object v1, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5936
    iget-object v1, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5937
    iget-object v1, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5938
    iget-object v1, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 5939
    iget-object v1, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 5940
    invoke-direct {p0, v0}, Lcom/mediatek/ims/MMTelSSTransport;->send(Lcom/mediatek/ims/MMTelSSRequest;)V

    .line 5930
    return-void
.end method

.method public setCallForwardInTimeSlot(IIILjava/lang/String;I[JLandroid/os/Message;)V
    .registers 17
    .param p1, "action"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "timeSeconds"    # I
    .param p6, "timeSlot"    # [J
    .param p7, "response"    # Landroid/os/Message;

    .prologue
    .line 5986
    invoke-direct {p0}, Lcom/mediatek/ims/MMTelSSTransport;->getUtXcapPhoneId()I

    move-result v8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 5985
    invoke-virtual/range {v0 .. v8}, Lcom/mediatek/ims/MMTelSSTransport;->setCallForwardInTimeSlot(IIILjava/lang/String;I[JLandroid/os/Message;I)V

    .line 5984
    return-void
.end method

.method public setCallForwardInTimeSlot(IIILjava/lang/String;I[JLandroid/os/Message;I)V
    .registers 12
    .param p1, "action"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "timeSeconds"    # I
    .param p6, "timeSlot"    # [J
    .param p7, "response"    # Landroid/os/Message;
    .param p8, "phoneId"    # I

    .prologue
    .line 6004
    if-eqz p4, :cond_b

    const-string/jumbo v1, "sip:"

    invoke-virtual {p4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 6009
    :cond_b
    :goto_b
    const/16 v1, 0xf

    invoke-static {v1, p7}, Lcom/mediatek/ims/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/MMTelSSRequest;

    move-result-object v0

    .line 6010
    .local v0, "rr":Lcom/mediatek/ims/MMTelSSRequest;
    iget-object v1, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6011
    iget-object v1, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6012
    iget-object v1, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6013
    iget-object v1, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6014
    iget-object v1, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 6015
    iget-object v1, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 6016
    iget-object v1, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 6017
    invoke-direct {p0, v0}, Lcom/mediatek/ims/MMTelSSTransport;->send(Lcom/mediatek/ims/MMTelSSRequest;)V

    .line 6002
    return-void

    .line 6004
    .end local v0    # "rr":Lcom/mediatek/ims/MMTelSSRequest;
    :cond_38
    const-string/jumbo v1, "sips:"

    invoke-virtual {p4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 6005
    const-string/jumbo v1, "tel:"

    invoke-virtual {p4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 6006
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_b
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .registers 5
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 5817
    invoke-direct {p0}, Lcom/mediatek/ims/MMTelSSTransport;->getUtXcapPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/ims/MMTelSSTransport;->setCallWaiting(ZILandroid/os/Message;I)V

    .line 5816
    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;I)V
    .registers 8
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I
    .param p3, "response"    # Landroid/os/Message;
    .param p4, "phoneId"    # I

    .prologue
    .line 5829
    const/16 v1, 0xa

    invoke-static {v1, p3}, Lcom/mediatek/ims/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/MMTelSSRequest;

    move-result-object v0

    .line 5830
    .local v0, "rr":Lcom/mediatek/ims/MMTelSSRequest;
    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    if-eqz p1, :cond_1c

    const/4 v1, 0x1

    :goto_b
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5831
    iget-object v1, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5832
    iget-object v1, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5833
    invoke-direct {p0, v0}, Lcom/mediatek/ims/MMTelSSTransport;->send(Lcom/mediatek/ims/MMTelSSRequest;)V

    .line 5828
    return-void

    .line 5830
    :cond_1c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .registers 13
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 5860
    invoke-direct {p0}, Lcom/mediatek/ims/MMTelSSTransport;->getUtXcapPhoneId()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 5859
    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/ims/MMTelSSTransport;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;I)V

    .line 5858
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;I)V
    .registers 10
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "response"    # Landroid/os/Message;
    .param p6, "phoneId"    # I

    .prologue
    .line 5875
    const/4 v1, 0x6

    invoke-static {v1, p5}, Lcom/mediatek/ims/MMTelSSRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/MMTelSSRequest;

    move-result-object v0

    .line 5876
    .local v0, "rr":Lcom/mediatek/ims/MMTelSSRequest;
    iget-object v1, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5877
    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    if-eqz p2, :cond_20

    const/4 v1, 0x1

    :goto_f
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5878
    iget-object v1, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5879
    iget-object v1, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 5880
    invoke-direct {p0, v0}, Lcom/mediatek/ims/MMTelSSTransport;->send(Lcom/mediatek/ims/MMTelSSRequest;)V

    .line 5874
    return-void

    .line 5877
    :cond_20
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 13
    .param p1, "xui"    # Ljava/lang/String;
    .param p2, "xcapRoot"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .param p4, "userName"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "phoneId"    # I

    .prologue
    .line 444
    iput-object p1, p0, Lcom/mediatek/ims/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 445
    iput-object p2, p0, Lcom/mediatek/ims/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 446
    iput-object p3, p0, Lcom/mediatek/ims/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 447
    iput-object p4, p0, Lcom/mediatek/ims/MMTelSSTransport;->mUserName:Ljava/lang/String;

    .line 448
    iput-object p5, p0, Lcom/mediatek/ims/MMTelSSTransport;->mPassword:Ljava/lang/String;

    .line 450
    sget-object v3, Lcom/mediatek/ims/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;

    invoke-virtual {v3, p1}, Lcom/mediatek/simservs/client/SimServs;->setXui(Ljava/lang/String;)V

    .line 451
    sget-object v3, Lcom/mediatek/ims/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;

    invoke-static {p2, p6}, Lcom/mediatek/ims/MMTelSSUtils;->addXcapRootPort(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/simservs/client/SimServs;->setXcapRoot(Ljava/lang/String;)V

    .line 452
    sget-object v3, Lcom/mediatek/ims/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;

    invoke-virtual {v3, p3}, Lcom/mediatek/simservs/client/SimServs;->setIntendedId(Ljava/lang/String;)V

    .line 453
    invoke-static {p6}, Lcom/mediatek/ims/compat/ImsCompat;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 456
    .local v1, "subId":I
    const-string/jumbo v3, "ril.ss.tcname"

    const-string/jumbo v4, "Empty"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 457
    .local v2, "tc_name":Ljava/lang/String;
    const-string/jumbo v3, "MMTelSS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setSimservsInitParameters():tc_name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", passed userName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    if-eqz v2, :cond_5e

    const-string/jumbo v3, "Single_TC_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 460
    move-object p4, v2

    .line 461
    iput-object p4, p0, Lcom/mediatek/ims/MMTelSSTransport;->mUserName:Ljava/lang/String;

    .line 468
    :cond_5e
    const-string/jumbo v3, "MMTelSS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "persist.mtk.simserv.username:["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 469
    const-string/jumbo v5, "persist.mtk.simserv.username"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 468
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 469
    const-string/jumbo v5, "]"

    .line 468
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 470
    const-string/jumbo v5, "persist.mtk.simserv.password:["

    .line 468
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 471
    const-string/jumbo v5, "persist.mtk.simserv.password"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 468
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 471
    const-string/jumbo v5, "]"

    .line 468
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const-string/jumbo v3, "persist.mtk.simserv.username"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b5

    .line 474
    const-string/jumbo v3, "persist.mtk.simserv.username"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_cd

    .line 488
    :cond_b5
    new-instance v0, Lcom/mediatek/gba/GbaHttpUrlCredential;

    iget-object v3, p0, Lcom/mediatek/ims/MMTelSSTransport;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, p2, v1}, Lcom/mediatek/gba/GbaHttpUrlCredential;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 489
    .local v0, "gbaCredential":Lcom/mediatek/gba/GbaHttpUrlCredential;
    iget-object v3, p0, Lcom/mediatek/ims/MMTelSSTransport;->mNetwork:Landroid/net/Network;

    if-eqz v3, :cond_c5

    .line 490
    iget-object v3, p0, Lcom/mediatek/ims/MMTelSSTransport;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v3}, Lcom/mediatek/gba/GbaHttpUrlCredential;->setNetwork(Landroid/net/Network;)V

    .line 492
    :cond_c5
    invoke-virtual {v0}, Lcom/mediatek/gba/GbaHttpUrlCredential;->getAuthenticator()Ljava/net/Authenticator;

    move-result-object v3

    invoke-static {v3}, Ljava/net/Authenticator;->setDefault(Ljava/net/Authenticator;)V

    .line 443
    .end local v0    # "gbaCredential":Lcom/mediatek/gba/GbaHttpUrlCredential;
    :goto_cc
    return-void

    .line 475
    :cond_cd
    const-string/jumbo v3, "persist.mtk.simserv.password"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b5

    .line 476
    const-string/jumbo v3, "persist.mtk.simserv.password"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b5

    .line 479
    new-instance v3, Lcom/mediatek/ims/MMTelSSTransport$1;

    invoke-direct {v3, p0}, Lcom/mediatek/ims/MMTelSSTransport$1;-><init>(Lcom/mediatek/ims/MMTelSSTransport;)V

    invoke-static {v3}, Ljava/net/Authenticator;->setDefault(Ljava/net/Authenticator;)V

    goto :goto_cc
.end method
