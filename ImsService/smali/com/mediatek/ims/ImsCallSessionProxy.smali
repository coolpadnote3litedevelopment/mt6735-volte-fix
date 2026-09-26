.class public Lcom/mediatek/ims/ImsCallSessionProxy;
.super Lcom/android/ims/internal/IImsCallSession$Stub;
.source "ImsCallSessionProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;,
        Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;,
        Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;,
        Lcom/mediatek/ims/ImsCallSessionProxy$1;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_ACCEPT_RESULT:I = 0xca

.field private static final EVENT_ADD_CONFERENCE_RESULT:I = 0xce

.field private static final EVENT_CALL_INFO_INDICATION:I = 0x66

.field private static final EVENT_CALL_MODE_CHANGE_INDICATION:I = 0x6a

.field private static final EVENT_DIAL_CONFERENCE_RESULT:I = 0xd1

.field private static final EVENT_DIAL_RESULT:I = 0xc9

.field private static final EVENT_DTMF_DONE:I = 0xd4

.field private static final EVENT_ECONF_RESULT_INDICATION:I = 0x68

.field private static final EVENT_GET_LAST_CALL_FAIL_CAUSE:I = 0x69

.field private static final EVENT_HOLD_RESULT:I = 0xcb

.field private static final EVENT_MERGE_RESULT:I = 0xcd

.field private static final EVENT_POLL_CALLS_RESULT:I = 0x65

.field private static final EVENT_REMOVE_CONFERENCE_RESULT:I = 0xcf

.field private static final EVENT_RESUME_RESULT:I = 0xcc

.field private static final EVENT_RETRIEVE_MERGE_FAIL_RESULT:I = 0xd3

.field private static final EVENT_RINGBACK_TONE:I = 0x67

.field private static final EVENT_SIP_CODE_INDICATION:I = 0xd0

.field private static final EVENT_SWAP_BEFORE_MERGE_RESULT:I = 0xd2

.field private static final EVENT_VIDEO_CAPABILITY_INDICATION:I = 0x6b

.field private static final IMS_VIDEO_CALL:I = 0x15

.field private static final IMS_VIDEO_CONF:I = 0x17

.field private static final IMS_VIDEO_CONF_PARTS:I = 0x19

.field private static final IMS_VOICE_CALL:I = 0x14

.field private static final IMS_VOICE_CONF:I = 0x16

.field private static final IMS_VOICE_CONF_PARTS:I = 0x18

.field private static final INVALID_CALL_MODE:I = 0xff

.field private static final LOG_TAG:Ljava/lang/String; = "ImsCallSessionProxy"

.field private static final VDBG:Z = false

.field private static final WFC_GET_CAUSE_FAILED:I = -0x1


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallErrorState:Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

.field private mCallId:Ljava/lang/String;

.field private mCallNumber:Ljava/lang/String;

.field private mCallProfile:Lcom/android/ims/ImsCallProfile;

.field private mConfParticipantsUri:Ljava/util/LinkedHashMap;

.field private mConfSession:Lcom/android/ims/internal/IImsCallSession;

.field private mContext:Landroid/content/Context;

.field private mDtmfMsg:Landroid/os/Message;

.field private mDtmfTarget:Landroid/os/Messenger;

.field private mEconfCount:I

.field private final mHandler:Landroid/os/Handler;

.field private mHasPendingMo:Z

.field private mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

.field private mImsService:Lcom/mediatek/ims/ImsService;

.field private mIsAddRemoveParticipantsCommandOK:Z

.field private mIsHideHoldEventDuringMerging:Z

.field private mIsMerging:Z

.field private mIsOnTerminated:Z

.field private mListener:Lcom/android/ims/internal/IImsCallSessionListener;

.field private mLocalCallProfile:Lcom/android/ims/ImsCallProfile;

.field private mMergeCallId:Ljava/lang/String;

.field private mMergeCallStatus:Lcom/mediatek/ims/ImsCallInfo$State;

.field private mMergedCallId:Ljava/lang/String;

.field private mMergedCallStatus:Lcom/mediatek/ims/ImsCallInfo$State;

.field private mNormalCallsMerge:Z

.field private mPendingParticipantInfo:[Ljava/lang/String;

.field private mPendingParticipantInfoIndex:I

.field private mPendingParticipantStatistics:I

.field private mRatType:I

.field private mRemoteCallProfile:Lcom/android/ims/ImsCallProfile;

.field private final mServiceHandler:Landroid/os/Handler;

.field private mState:I

.field private mTerminateReason:I

.field private mThreeWayMergeSucceeded:Z

.field private mVTProvider:Lcom/mediatek/ims/internal/ImsVTProvider;

.field private mWfoService:Lcom/mediatek/wfo/IWifiOffloadService;


# direct methods
.method static synthetic -get0(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;
    .registers 2

    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallErrorState:Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    return-object v0
.end method

.method static synthetic -get1(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get10(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get11(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHasPendingMo:Z

    return v0
.end method

.method static synthetic -get12(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsRILAdapter;
    .registers 2

    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    return-object v0
.end method

.method static synthetic -get13(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsService;
    .registers 2

    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsService:Lcom/mediatek/ims/ImsService;

    return-object v0
.end method

.method static synthetic -get14(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsAddRemoveParticipantsCommandOK:Z

    return v0
.end method

.method static synthetic -get15(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsHideHoldEventDuringMerging:Z

    return v0
.end method

.method static synthetic -get16(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsMerging:Z

    return v0
.end method

.method static synthetic -get17(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsOnTerminated:Z

    return v0
.end method

.method static synthetic -get18(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;
    .registers 2

    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    return-object v0
.end method

.method static synthetic -get19(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;
    .registers 2

    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mLocalCallProfile:Lcom/android/ims/ImsCallProfile;

    return-object v0
.end method

.method static synthetic -get2(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get20(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMergeCallId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get21(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMergedCallId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get22(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mNormalCallsMerge:Z

    return v0
.end method

.method static synthetic -get23(Lcom/mediatek/ims/ImsCallSessionProxy;)[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantInfo:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get24(Lcom/mediatek/ims/ImsCallSessionProxy;)I
    .registers 2

    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantInfoIndex:I

    return v0
.end method

.method static synthetic -get25(Lcom/mediatek/ims/ImsCallSessionProxy;)I
    .registers 2

    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantStatistics:I

    return v0
.end method

.method static synthetic -get26(Lcom/mediatek/ims/ImsCallSessionProxy;)I
    .registers 2

    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRatType:I

    return v0
.end method

.method static synthetic -get27(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;
    .registers 2

    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRemoteCallProfile:Lcom/android/ims/ImsCallProfile;

    return-object v0
.end method

.method static synthetic -get28(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get29(Lcom/mediatek/ims/ImsCallSessionProxy;)I
    .registers 2

    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    return v0
.end method

.method static synthetic -get3(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;
    .registers 2

    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    return-object v0
.end method

.method static synthetic -get30(Lcom/mediatek/ims/ImsCallSessionProxy;)I
    .registers 2

    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mTerminateReason:I

    return v0
.end method

.method static synthetic -get31(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mThreeWayMergeSucceeded:Z

    return v0
.end method

.method static synthetic -get32(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/internal/ImsVTProvider;
    .registers 2

    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mVTProvider:Lcom/mediatek/ims/internal/ImsVTProvider;

    return-object v0
.end method

.method static synthetic -get33(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/wfo/IWifiOffloadService;
    .registers 2

    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mWfoService:Lcom/mediatek/wfo/IWifiOffloadService;

    return-object v0
.end method

.method static synthetic -get4(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/util/LinkedHashMap;
    .registers 2

    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mConfParticipantsUri:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic -get5(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSession;
    .registers 2

    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mConfSession:Lcom/android/ims/internal/IImsCallSession;

    return-object v0
.end method

.method static synthetic -get6(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get7(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Message;
    .registers 2

    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mDtmfMsg:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic -get8(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Messenger;
    .registers 2

    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mDtmfTarget:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic -get9(Lcom/mediatek/ims/ImsCallSessionProxy;)I
    .registers 2

    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mEconfCount:I

    return v0
.end method

.method static synthetic -set0(Lcom/mediatek/ims/ImsCallSessionProxy;Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;)Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;
    .registers 2

    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallErrorState:Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    return-object p1
.end method

.method static synthetic -set1(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set10(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mNormalCallsMerge:Z

    return p1
.end method

.method static synthetic -set11(Lcom/mediatek/ims/ImsCallSessionProxy;I)I
    .registers 2

    iput p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantInfoIndex:I

    return p1
.end method

.method static synthetic -set12(Lcom/mediatek/ims/ImsCallSessionProxy;I)I
    .registers 2

    iput p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRatType:I

    return p1
.end method

.method static synthetic -set13(Lcom/mediatek/ims/ImsCallSessionProxy;I)I
    .registers 2

    iput p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    return p1
.end method

.method static synthetic -set14(Lcom/mediatek/ims/ImsCallSessionProxy;I)I
    .registers 2

    iput p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mTerminateReason:I

    return p1
.end method

.method static synthetic -set15(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mThreeWayMergeSucceeded:Z

    return p1
.end method

.method static synthetic -set2(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set3(Lcom/mediatek/ims/ImsCallSessionProxy;Lcom/android/ims/internal/IImsCallSession;)Lcom/android/ims/internal/IImsCallSession;
    .registers 2

    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mConfSession:Lcom/android/ims/internal/IImsCallSession;

    return-object p1
.end method

.method static synthetic -set4(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/Message;)Landroid/os/Message;
    .registers 2

    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mDtmfMsg:Landroid/os/Message;

    return-object p1
.end method

.method static synthetic -set5(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/Messenger;)Landroid/os/Messenger;
    .registers 2

    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mDtmfTarget:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic -set6(Lcom/mediatek/ims/ImsCallSessionProxy;I)I
    .registers 2

    iput p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mEconfCount:I

    return p1
.end method

.method static synthetic -set7(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHasPendingMo:Z

    return p1
.end method

.method static synthetic -set8(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsAddRemoveParticipantsCommandOK:Z

    return p1
.end method

.method static synthetic -set9(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsOnTerminated:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/mediatek/ims/ImsCallSessionProxy;)Z
    .registers 2

    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->shouldAutoTerminateConf()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "uriString"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->getUserNameFromSipTelUriString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/mediatek/ims/ImsCallSessionProxy;)V
    .registers 1

    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->mergeCompleted()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/mediatek/ims/ImsCallSessionProxy;)V
    .registers 1

    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->mergeFailed()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/mediatek/ims/ImsCallSessionProxy;I)V
    .registers 2
    .param p1, "callState"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->updateCallStateForWifiOffload(I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;Lcom/mediatek/ims/ImsService;Landroid/os/Handler;Lcom/mediatek/ims/ImsRILAdapter;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;
    .param p3, "listener"    # Lcom/android/ims/internal/IImsCallSessionListener;
    .param p4, "imsService"    # Lcom/mediatek/ims/ImsService;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "imsRILAdapter"    # Lcom/mediatek/ims/ImsRILAdapter;

    .prologue
    .line 273
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/mediatek/ims/ImsCallSessionProxy;-><init>(Landroid/content/Context;Lcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;Lcom/mediatek/ims/ImsService;Landroid/os/Handler;Lcom/mediatek/ims/ImsRILAdapter;Ljava/lang/String;)V

    .line 275
    const-string/jumbo v0, "ImsCallSessionProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ImsCallSessionProxy RILAdapter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;Lcom/mediatek/ims/ImsService;Landroid/os/Handler;Lcom/mediatek/ims/ImsRILAdapter;Ljava/lang/String;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;
    .param p3, "listener"    # Lcom/android/ims/internal/IImsCallSessionListener;
    .param p4, "imsService"    # Lcom/mediatek/ims/ImsService;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "imsRILAdapter"    # Lcom/mediatek/ims/ImsRILAdapter;
    .param p7, "callId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 209
    invoke-direct {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;-><init>()V

    .line 120
    iput v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    .line 128
    iput-boolean v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHasPendingMo:Z

    .line 129
    iput-boolean v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsMerging:Z

    .line 130
    iput-boolean v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsOnTerminated:Z

    .line 131
    iput-boolean v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsAddRemoveParticipantsCommandOK:Z

    .line 133
    iput v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantInfoIndex:I

    .line 134
    iput v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantStatistics:I

    .line 135
    iput-boolean v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsHideHoldEventDuringMerging:Z

    .line 136
    const-string/jumbo v3, ""

    iput-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMergeCallId:Ljava/lang/String;

    .line 137
    sget-object v3, Lcom/mediatek/ims/ImsCallInfo$State;->INVALID:Lcom/mediatek/ims/ImsCallInfo$State;

    iput-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMergeCallStatus:Lcom/mediatek/ims/ImsCallInfo$State;

    .line 138
    const-string/jumbo v3, ""

    iput-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMergedCallId:Ljava/lang/String;

    .line 139
    sget-object v3, Lcom/mediatek/ims/ImsCallInfo$State;->INVALID:Lcom/mediatek/ims/ImsCallInfo$State;

    iput-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMergedCallStatus:Lcom/mediatek/ims/ImsCallInfo$State;

    .line 141
    iput-boolean v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mNormalCallsMerge:Z

    .line 143
    iput-boolean v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mThreeWayMergeSucceeded:Z

    .line 145
    iput v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mEconfCount:I

    .line 152
    const/4 v3, 0x1

    iput v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRatType:I

    .line 161
    const/4 v3, -0x1

    iput v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mTerminateReason:I

    .line 167
    sget-object v3, Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;->IDLE:Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    iput-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallErrorState:Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    .line 169
    iput-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mDtmfMsg:Landroid/os/Message;

    .line 170
    iput-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mDtmfTarget:Landroid/os/Messenger;

    .line 174
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mConfParticipantsUri:Ljava/util/LinkedHashMap;

    .line 678
    new-instance v3, Lcom/mediatek/ims/ImsCallSessionProxy$1;

    invoke-direct {v3, p0}, Lcom/mediatek/ims/ImsCallSessionProxy$1;-><init>(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    iput-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 212
    const-string/jumbo v3, "ImsCallSessionProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ImsSessionProxy RILAdapter:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "imsService:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " callID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iput-object p5, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mServiceHandler:Landroid/os/Handler;

    .line 215
    new-instance v3, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;

    invoke-virtual {p5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;-><init>(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    .line 216
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    .line 217
    iput-object p2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    .line 218
    new-instance v3, Lcom/android/ims/ImsCallProfile;

    iget v4, p2, Lcom/android/ims/ImsCallProfile;->mServiceType:I

    iget v5, p2, Lcom/android/ims/ImsCallProfile;->mCallType:I

    invoke-direct {v3, v4, v5}, Lcom/android/ims/ImsCallProfile;-><init>(II)V

    iput-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mLocalCallProfile:Lcom/android/ims/ImsCallProfile;

    .line 219
    new-instance v3, Lcom/android/ims/ImsCallProfile;

    iget v4, p2, Lcom/android/ims/ImsCallProfile;->mServiceType:I

    iget v5, p2, Lcom/android/ims/ImsCallProfile;->mCallType:I

    invoke-direct {v3, v4, v5}, Lcom/android/ims/ImsCallProfile;-><init>(II)V

    iput-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRemoteCallProfile:Lcom/android/ims/ImsCallProfile;

    .line 220
    iput-object p3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    .line 221
    iput-object p4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsService:Lcom/mediatek/ims/ImsService;

    .line 222
    iput-object p6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    .line 223
    iput-object p7, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    .line 224
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x66

    invoke-virtual {v3, v4, v5, v6}, Lcom/mediatek/ims/ImsRILAdapter;->registerForCallInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 225
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x67

    invoke-virtual {v3, v4, v5, v6}, Lcom/mediatek/ims/ImsRILAdapter;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 227
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x68

    invoke-virtual {v3, v4, v5, v6}, Lcom/mediatek/ims/ImsRILAdapter;->registerForEconfResult(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 228
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xd0

    invoke-virtual {v3, v4, v5, v6}, Lcom/mediatek/ims/ImsRILAdapter;->registerForCallProgressIndicator(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 229
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    .line 230
    const/16 v5, 0x6a

    .line 229
    invoke-virtual {v3, v4, v5, v6}, Lcom/mediatek/ims/ImsRILAdapter;->registerForCallModeChangeIndicator(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 231
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    .line 232
    const/16 v5, 0x6b

    .line 231
    invoke-virtual {v3, v4, v5, v6}, Lcom/mediatek/ims/ImsRILAdapter;->registerForVideoCapabilityIndicator(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 234
    const-string/jumbo v3, "ro.mtk_vilte_support"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ff

    .line 235
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    if-eqz v3, :cond_158

    .line 237
    new-instance v3, Lcom/mediatek/ims/internal/ImsVTProvider;

    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3, v4}, Lcom/mediatek/ims/internal/ImsVTProvider;-><init>(I)V

    iput-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mVTProvider:Lcom/mediatek/ims/internal/ImsVTProvider;

    .line 245
    :cond_ff
    :goto_ff
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 246
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.intent.action.ims.conference"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 249
    const-string/jumbo v3, "wfo"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 250
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mWfoService:Lcom/mediatek/wfo/IWifiOffloadService;

    .line 251
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mWfoService:Lcom/mediatek/wfo/IWifiOffloadService;

    if-eqz v3, :cond_134

    .line 253
    :try_start_11b
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mWfoService:Lcom/mediatek/wfo/IWifiOffloadService;

    new-instance v4, Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;-><init>(Lcom/mediatek/ims/ImsCallSessionProxy;Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;)V

    invoke-interface {v3, v4}, Lcom/mediatek/wfo/IWifiOffloadService;->registerForHandoverEvent(Lcom/mediatek/wfo/IWifiOffloadListener;)V

    .line 254
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mWfoService:Lcom/mediatek/wfo/IWifiOffloadService;

    invoke-interface {v3}, Lcom/mediatek/wfo/IWifiOffloadService;->getRatType()I

    move-result v3

    iput v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRatType:I

    .line 257
    if-eqz p7, :cond_134

    .line 258
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->updateCallStateForWifiOffload(I)V
    :try_end_134
    .catch Landroid/os/RemoteException; {:try_start_11b .. :try_end_134} :catch_160

    .line 264
    :cond_134
    :goto_134
    const-string/jumbo v3, "ImsCallSessionProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[WFC]mRatType is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRatType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 267
    iput-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mConfSession:Lcom/android/ims/internal/IImsCallSession;

    .line 210
    return-void

    .line 240
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v2    # "filter":Landroid/content/IntentFilter;
    :cond_158
    new-instance v3, Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-direct {v3}, Lcom/mediatek/ims/internal/ImsVTProvider;-><init>()V

    iput-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mVTProvider:Lcom/mediatek/ims/internal/ImsVTProvider;

    goto :goto_ff

    .line 260
    .restart local v0    # "b":Landroid/os/IBinder;
    .restart local v2    # "filter":Landroid/content/IntentFilter;
    :catch_160
    move-exception v1

    .line 261
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "ImsCallSessionProxy"

    const-string/jumbo v4, "RemoteException ImsCallSessionProxy()"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_134
.end method

.method private getMainCapabilityPhoneId()I
    .registers 7

    .prologue
    .line 2337
    const/4 v1, -0x1

    .line 2339
    .local v1, "mainPhoneId":I
    const-string/jumbo v3, "phoneEx"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 2338
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    .line 2341
    .local v2, "telephony":Lcom/mediatek/internal/telephony/ITelephonyEx;
    if-eqz v2, :cond_2c

    .line 2343
    :try_start_e
    invoke-interface {v2}, Lcom/mediatek/internal/telephony/ITelephonyEx;->getMainCapabilityPhoneId()I

    move-result v1

    .line 2344
    const-string/jumbo v3, "ImsCallSessionProxy"

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

    .line 2350
    :cond_2c
    return v1

    .line 2345
    :catch_2d
    move-exception v0

    .line 2346
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "ImsCallSessionProxy"

    const-string/jumbo v4, "getMainCapabilityPhoneId: remote exception"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2347
    return v1
.end method

.method private getUserNameFromSipTelUriString(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "uriString"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 2294
    if-nez p1, :cond_5

    .line 2295
    return-object v5

    .line 2298
    :cond_5
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2303
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 2304
    .local v0, "address":Ljava/lang/String;
    if-nez v0, :cond_10

    .line 2305
    return-object v5

    .line 2310
    :cond_10
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getUsernameFromUriNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2311
    .local v3, "userName":Ljava/lang/String;
    if-nez v3, :cond_17

    .line 2312
    return-object v5

    .line 2317
    :cond_17
    const/16 v5, 0x3b

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 2318
    .local v1, "pIndex":I
    const/16 v5, 0x2c

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 2320
    .local v4, "wIndex":I
    if-ltz v1, :cond_30

    if-ltz v4, :cond_30

    .line 2321
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 2322
    :cond_30
    if-ltz v1, :cond_37

    .line 2323
    invoke-virtual {v3, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 2324
    :cond_37
    if-ltz v4, :cond_3e

    .line 2325
    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 2327
    :cond_3e
    return-object v3
.end method

.method private mergeCompleted()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2186
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_c

    .line 2188
    :try_start_5
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mConfSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1, v2}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_c} :catch_11

    .line 2193
    :cond_c
    :goto_c
    iput-boolean v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsMerging:Z

    .line 2194
    iput-boolean v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsHideHoldEventDuringMerging:Z

    .line 2185
    return-void

    .line 2189
    :catch_11
    move-exception v0

    .line 2190
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ImsCallSessionProxy"

    const-string/jumbo v2, "RemoteException callSessionMerged()"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method private mergeFailed()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2198
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_10

    .line 2200
    :try_start_6
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    .line 2201
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    invoke-direct {v2}, Lcom/android/ims/ImsReasonInfo;-><init>()V

    .line 2200
    invoke-interface {v1, p0, v2}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionMergeFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_36

    .line 2206
    :cond_10
    :goto_10
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMergeCallId:Ljava/lang/String;

    .line 2207
    sget-object v1, Lcom/mediatek/ims/ImsCallInfo$State;->INVALID:Lcom/mediatek/ims/ImsCallInfo$State;

    iput-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMergeCallStatus:Lcom/mediatek/ims/ImsCallInfo$State;

    .line 2208
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMergedCallId:Ljava/lang/String;

    .line 2209
    sget-object v1, Lcom/mediatek/ims/ImsCallInfo$State;->INVALID:Lcom/mediatek/ims/ImsCallInfo$State;

    iput-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMergedCallStatus:Lcom/mediatek/ims/ImsCallInfo$State;

    .line 2211
    iput-boolean v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsMerging:Z

    .line 2212
    iput-boolean v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsHideHoldEventDuringMerging:Z

    .line 2213
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mConfSession:Lcom/android/ims/internal/IImsCallSession;

    instance-of v1, v1, Lcom/mediatek/ims/ImsCallSessionProxy;

    if-eqz v1, :cond_35

    .line 2214
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mConfSession:Lcom/android/ims/internal/IImsCallSession;

    check-cast v1, Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->close()V

    .line 2217
    iput-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mConfSession:Lcom/android/ims/internal/IImsCallSession;

    .line 2197
    :cond_35
    return-void

    .line 2202
    :catch_36
    move-exception v0

    .line 2203
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ImsCallSessionProxy"

    const-string/jumbo v2, "RemoteException callSessionMergeFailed()"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method private shouldAutoTerminateConf()Z
    .registers 7

    .prologue
    .line 2406
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getMainCapabilityPhoneId()I

    move-result v2

    .line 2407
    .local v2, "phoneId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v1

    .line 2408
    .local v1, "mccMnc":Ljava/lang/String;
    const-string/jumbo v3, "ImsCallSessionProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Mcc Mnc = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2409
    const/16 v3, 0x1a

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "21401"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string/jumbo v4, "21406"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string/jumbo v4, "20404"

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const-string/jumbo v4, "28602"

    const/4 v5, 0x3

    aput-object v4, v3, v5

    .line 2410
    const-string/jumbo v4, "23415"

    const/4 v5, 0x4

    aput-object v4, v3, v5

    const-string/jumbo v4, "27602"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "23003"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "23099"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string/jumbo v4, "60202"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    const-string/jumbo v4, "28802"

    const/16 v5, 0x9

    aput-object v4, v3, v5

    const-string/jumbo v4, "54201"

    const/16 v5, 0xa

    aput-object v4, v3, v5

    const-string/jumbo v4, "26202"

    const/16 v5, 0xb

    aput-object v4, v3, v5

    const-string/jumbo v4, "26204"

    const/16 v5, 0xc

    aput-object v4, v3, v5

    .line 2411
    const-string/jumbo v4, "26209"

    const/16 v5, 0xd

    aput-object v4, v3, v5

    const-string/jumbo v4, "62002"

    const/16 v5, 0xe

    aput-object v4, v3, v5

    const-string/jumbo v4, "20205"

    const/16 v5, 0xf

    aput-object v4, v3, v5

    const-string/jumbo v4, "21670"

    const/16 v5, 0x10

    aput-object v4, v3, v5

    const-string/jumbo v4, "27402"

    const/16 v5, 0x11

    aput-object v4, v3, v5

    const-string/jumbo v4, "27403"

    const/16 v5, 0x12

    aput-object v4, v3, v5

    const-string/jumbo v4, "27201"

    const/16 v5, 0x13

    aput-object v4, v3, v5

    const-string/jumbo v4, "22210"

    const/16 v5, 0x14

    aput-object v4, v3, v5

    const-string/jumbo v4, "27801"

    const/16 v5, 0x15

    aput-object v4, v3, v5

    .line 2412
    const-string/jumbo v4, "53001"

    const/16 v5, 0x16

    aput-object v4, v3, v5

    const-string/jumbo v4, "26801"

    const/16 v5, 0x17

    aput-object v4, v3, v5

    const-string/jumbo v4, "22601"

    const/16 v5, 0x18

    aput-object v4, v3, v5

    const-string/jumbo v4, "42702"

    const/16 v5, 0x19

    aput-object v4, v3, v5

    .line 2409
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2413
    .local v0, "OP06_MCCMNC_LIST":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method private updateCallStateForWifiOffload(I)V
    .registers 9
    .param p1, "callState"    # I

    .prologue
    .line 2354
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mWfoService:Lcom/mediatek/wfo/IWifiOffloadService;

    if-nez v4, :cond_e

    .line 2355
    const-string/jumbo v4, "ImsCallSessionProxy"

    const-string/jumbo v5, "updateCallStateForWifiOffload: skip, no WOS!"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2356
    return-void

    .line 2359
    :cond_e
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    if-nez v4, :cond_1c

    .line 2360
    const-string/jumbo v4, "ImsCallSessionProxy"

    const-string/jumbo v5, "updateCallStateForWifiOffload: skip, no call ID!"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2361
    return-void

    .line 2364
    :cond_1c
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2365
    .local v0, "callId":I
    const/4 v1, 0x1

    .line 2367
    .local v1, "callType":I
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    iget v4, v4, Lcom/android/ims/ImsCallProfile;->mCallType:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_31

    .line 2368
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    iget v4, v4, Lcom/android/ims/ImsCallProfile;->mCallType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_50

    .line 2369
    :cond_31
    const/4 v1, 0x1

    .line 2375
    :goto_32
    packed-switch p1, :pswitch_data_68

    .line 2392
    const-string/jumbo v4, "ImsCallSessionProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateCallStateForWifiOffload: skip, unexpected state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2394
    return-void

    .line 2371
    :cond_50
    const/4 v1, 0x2

    goto :goto_32

    .line 2381
    :pswitch_52
    const/4 v3, 0x2

    .line 2398
    .local v3, "wosCallState":I
    :goto_53
    :try_start_53
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mWfoService:Lcom/mediatek/wfo/IWifiOffloadService;

    invoke-interface {v4, v0, v1, v3}, Lcom/mediatek/wfo/IWifiOffloadService;->updateCallState(III)V
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_58} :catch_5d

    .line 2353
    :goto_58
    return-void

    .line 2384
    .end local v3    # "wosCallState":I
    :pswitch_59
    const/4 v3, 0x1

    .line 2385
    .restart local v3    # "wosCallState":I
    goto :goto_53

    .line 2389
    .end local v3    # "wosCallState":I
    :pswitch_5b
    const/4 v3, 0x0

    .line 2390
    .restart local v3    # "wosCallState":I
    goto :goto_53

    .line 2399
    :catch_5d
    move-exception v2

    .line 2400
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "ImsCallSessionProxy"

    const-string/jumbo v5, "RemoteException in Wos.updateCallState()"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    .line 2375
    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_5b
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_59
        :pswitch_52
        :pswitch_52
        :pswitch_5b
        :pswitch_5b
    .end packed-switch
.end method


# virtual methods
.method public accept(ILcom/android/ims/ImsStreamMediaProfile;)V
    .registers 7
    .param p1, "callType"    # I
    .param p2, "profile"    # Lcom/android/ims/ImsStreamMediaProfile;

    .prologue
    .line 401
    const-string/jumbo v1, "ImsCallSessionProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "accept - original call Type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    iget v3, v3, Lcom/android/ims/ImsCallProfile;->mCallType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 402
    const-string/jumbo v3, "accept as:"

    .line 401
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    iget v1, v1, Lcom/android/ims/ImsCallProfile;->mCallType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_36

    .line 404
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    invoke-virtual {v1}, Lcom/mediatek/ims/ImsRILAdapter;->accept()V

    .line 400
    :goto_35
    return-void

    .line 414
    :cond_36
    packed-switch p1, :pswitch_data_4e

    .line 428
    :pswitch_39
    const/4 v0, 0x0

    .line 431
    .local v0, "videoMode":I
    :goto_3a
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/mediatek/ims/ImsRILAdapter;->acceptVideoCall(II)V

    goto :goto_35

    .line 416
    .end local v0    # "videoMode":I
    :pswitch_46
    const/4 v0, 0x0

    .line 417
    .restart local v0    # "videoMode":I
    goto :goto_3a

    .line 419
    .end local v0    # "videoMode":I
    :pswitch_48
    const/4 v0, 0x1

    .line 420
    .restart local v0    # "videoMode":I
    goto :goto_3a

    .line 422
    .end local v0    # "videoMode":I
    :pswitch_4a
    const/4 v0, 0x2

    .line 423
    .restart local v0    # "videoMode":I
    goto :goto_3a

    .line 425
    .end local v0    # "videoMode":I
    :pswitch_4c
    const/4 v0, 0x3

    .line 426
    .restart local v0    # "videoMode":I
    goto :goto_3a

    .line 414
    :pswitch_data_4e
    .packed-switch 0x2
        :pswitch_48
        :pswitch_39
        :pswitch_46
        :pswitch_4c
        :pswitch_4a
    .end packed-switch
.end method

.method public close()V
    .registers 5

    .prologue
    .line 282
    const-string/jumbo v2, "ImsCallSessionProxy"

    const-string/jumbo v3, "ImsCallSessionProxy is closed!!! "

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const/4 v2, -0x1

    iput v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    .line 285
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/ImsRILAdapter;->unregisterForCallInfo(Landroid/os/Handler;)V

    .line 286
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/ImsRILAdapter;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 287
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/ImsRILAdapter;->unregisterForEconfResult(Landroid/os/Handler;)V

    .line 288
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/ImsRILAdapter;->unregisterForCallProgressIndicator(Landroid/os/Handler;)V

    .line 289
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/ImsRILAdapter;->unregisterForCallModeChangeIndicator(Landroid/os/Handler;)V

    .line 290
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/ImsRILAdapter;->unregisterForVideoCapabilityIndicator(Landroid/os/Handler;)V

    .line 292
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_41

    .line 293
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 298
    :cond_41
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;

    move-result-object v1

    .line 299
    .local v1, "vtProvider":Lcom/android/ims/internal/IImsVideoCallProvider;
    if-eqz v1, :cond_4f

    .line 301
    const/high16 v2, 0x10000

    :try_start_49
    invoke-interface {v1, v2}, Lcom/android/ims/internal/IImsVideoCallProvider;->setUIMode(I)V

    .line 302
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mVTProvider:Lcom/mediatek/ims/internal/ImsVTProvider;
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_4f} :catch_50

    .line 280
    :cond_4f
    :goto_4f
    return-void

    .line 303
    :catch_50
    move-exception v0

    .line 304
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "ImsCallSessionProxy"

    const-string/jumbo v3, "RemoteException vtProvider.setUIMode()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f
.end method

.method public extendToConference([Ljava/lang/String;)V
    .registers 2
    .param p1, "participants"    # [Ljava/lang/String;

    .prologue
    .line 571
    return-void
.end method

.method public getCallId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    return-object v0
.end method

.method public getCallProfile()Lcom/android/ims/ImsCallProfile;
    .registers 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    return-object v0
.end method

.method public getLocalCallProfile()Lcom/android/ims/ImsCallProfile;
    .registers 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mLocalCallProfile:Lcom/android/ims/ImsCallProfile;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 331
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteCallProfile()Lcom/android/ims/ImsCallProfile;
    .registers 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mRemoteCallProfile:Lcom/android/ims/ImsCallProfile;

    return-object v0
.end method

.method public getState()I
    .registers 2

    .prologue
    .line 336
    iget v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mState:I

    return v0
.end method

.method public getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 660
    const-string/jumbo v0, "ImsCallSessionProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getVideoCallProvider: mVTProvider= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mVTProvider:Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mVTProvider:Lcom/mediatek/ims/internal/ImsVTProvider;

    if-eqz v0, :cond_28

    .line 662
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mVTProvider:Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getInterface()Lcom/android/ims/internal/IImsVideoCallProvider;

    move-result-object v0

    return-object v0

    .line 664
    :cond_28
    return-object v3
.end method

.method public hold(Lcom/android/ims/ImsStreamMediaProfile;)V
    .registers 5
    .param p1, "profile"    # Lcom/android/ims/ImsStreamMediaProfile;

    .prologue
    .line 457
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xcb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 458
    .local v0, "result":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ImsRILAdapter;->hold(ILandroid/os/Message;)V

    .line 456
    return-void
.end method

.method public inviteParticipants([Ljava/lang/String;)V
    .registers 8
    .param p1, "participants"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 577
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xce

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 578
    .local v1, "result":Landroid/os/Message;
    iput v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantInfoIndex:I

    .line 579
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantInfo:[Ljava/lang/String;

    .line 580
    array-length v2, p1

    iput v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantStatistics:I

    .line 581
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    if-nez v2, :cond_18

    iget v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantStatistics:I

    if-nez v2, :cond_2a

    .line 582
    :cond_18
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 583
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantInfo:[Ljava/lang/String;

    iget v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantInfoIndex:I

    aget-object v4, v4, v5

    .line 582
    invoke-virtual {v2, v3, v4, v1}, Lcom/mediatek/ims/ImsRILAdapter;->inviteParticipants(ILjava/lang/String;Landroid/os/Message;)V

    .line 576
    :cond_29
    :goto_29
    return-void

    .line 585
    :cond_2a
    const-string/jumbo v2, "ImsCallSessionProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "inviteParticipants fail since no call ID or participants is null CallID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 586
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    .line 585
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 586
    const-string/jumbo v4, " Participant number="

    .line 585
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 586
    iget v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantStatistics:I

    .line 585
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v2, :cond_29

    .line 589
    :try_start_57
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    .line 590
    new-instance v3, Lcom/android/ims/ImsReasonInfo;

    invoke-direct {v3}, Lcom/android/ims/ImsReasonInfo;-><init>()V

    .line 589
    invoke-interface {v2, p0, v3}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionInviteParticipantsRequestFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_61} :catch_62

    goto :goto_29

    .line 591
    :catch_62
    move-exception v0

    .line 592
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "ImsCallSessionProxy"

    const-string/jumbo v3, "RemoteException occurs when InviteParticipantsRequestFailed"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29
.end method

.method public isInCall()Z
    .registers 2

    .prologue
    .line 341
    const/4 v0, 0x0

    return v0
.end method

.method public isIncomingCallMultiparty()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 675
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    const-string/jumbo v3, "incoming_mpty"

    invoke-virtual {v2, v3, v1}, Lcom/android/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_e

    :goto_d
    return v0

    :cond_e
    move v0, v1

    goto :goto_d
.end method

.method public isMultiparty()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 670
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    const-string/jumbo v3, "mpty"

    invoke-virtual {v2, v3, v1}, Lcom/android/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_e

    :goto_d
    return v0

    :cond_e
    move v0, v1

    goto :goto_d
.end method

.method logDebugMessagesWithNotifyFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "callNumber"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;

    .prologue
    .line 2234
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 2236
    :cond_4
    return-void

    .line 2239
    :cond_5
    new-instance v1, Lcom/mediatek/telecom/FormattedLog$Builder;

    invoke-direct {v1}, Lcom/mediatek/telecom/FormattedLog$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lcom/mediatek/telecom/FormattedLog$Builder;->setCategory(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v1

    .line 2241
    const-string/jumbo v2, "ImsPhone"

    .line 2239
    invoke-virtual {v1, v2}, Lcom/mediatek/telecom/FormattedLog$Builder;->setServiceName(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v1

    .line 2242
    sget-object v2, Lcom/mediatek/telecom/FormattedLog$OpType;->NOTIFY:Lcom/mediatek/telecom/FormattedLog$OpType;

    .line 2239
    invoke-virtual {v1, v2}, Lcom/mediatek/telecom/FormattedLog$Builder;->setOpType(Lcom/mediatek/telecom/FormattedLog$OpType;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/mediatek/telecom/FormattedLog$Builder;->setActionName(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/mediatek/telecom/FormattedLog$Builder;->setCallNumber(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v1

    .line 2245
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getCallId()Ljava/lang/String;

    move-result-object v2

    .line 2239
    invoke-virtual {v1, v2}, Lcom/mediatek/telecom/FormattedLog$Builder;->setCallId(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/mediatek/telecom/FormattedLog$Builder;->setExtraMessage(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/telecom/FormattedLog$Builder;->buildDebugMsg()Lcom/mediatek/telecom/FormattedLog;

    move-result-object v0

    .line 2249
    .local v0, "formattedLog":Lcom/mediatek/telecom/FormattedLog;
    if-eqz v0, :cond_3f

    .line 2250
    const-string/jumbo v1, "ImsCallSessionProxy"

    invoke-virtual {v0}, Lcom/mediatek/telecom/FormattedLog;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2233
    :cond_3f
    return-void
.end method

.method public merge()V
    .registers 13

    .prologue
    const/4 v11, 0x1

    const/16 v10, 0xce

    .line 470
    const-string/jumbo v7, "ImsCallSessionProxy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Merge callId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    iget-object v8, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/mediatek/ims/ImsRILAdapter;->getCallInfo(Ljava/lang/String;)Lcom/mediatek/ims/ImsCallInfo;

    move-result-object v2

    .line 472
    .local v2, "myCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    const/4 v0, 0x0

    .line 473
    .local v0, "beMergedCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getMainCapabilityPhoneId()I

    move-result v4

    .line 474
    .local v4, "phoneId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v1

    .line 476
    .local v1, "mccMnc":Ljava/lang/String;
    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/String;

    .line 478
    const-string/jumbo v8, "23430"

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const-string/jumbo v8, "23431"

    aput-object v8, v7, v11

    const-string/jumbo v8, "23432"

    const/4 v9, 0x2

    aput-object v8, v7, v9

    const-string/jumbo v8, "23433"

    const/4 v9, 0x3

    aput-object v8, v7, v9

    const-string/jumbo v8, "23434"

    const/4 v9, 0x4

    aput-object v8, v7, v9

    .line 476
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 480
    .local v6, "swapConfMccMncList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 482
    .local v3, "needSwapConfToFg":Z
    if-nez v2, :cond_6b

    .line 483
    const-string/jumbo v7, "ImsCallSessionProxy"

    const-string/jumbo v8, "can\'t find this call callInfo"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->mergeFailed()V

    .line 485
    return-void

    .line 488
    :cond_6b
    iget-object v7, v2, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    sget-object v8, Lcom/mediatek/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/ims/ImsCallInfo$State;

    if-ne v7, v8, :cond_88

    .line 489
    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    sget-object v8, Lcom/mediatek/ims/ImsCallInfo$State;->HOLDING:Lcom/mediatek/ims/ImsCallInfo$State;

    invoke-virtual {v7, v8}, Lcom/mediatek/ims/ImsRILAdapter;->getCallInfo(Lcom/mediatek/ims/ImsCallInfo$State;)Lcom/mediatek/ims/ImsCallInfo;

    move-result-object v0

    .line 494
    .end local v0    # "beMergedCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    :cond_79
    :goto_79
    if-nez v0, :cond_97

    .line 495
    const-string/jumbo v7, "ImsCallSessionProxy"

    const-string/jumbo v8, "can\'t find another call\'s callInfo"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->mergeFailed()V

    .line 497
    return-void

    .line 490
    .restart local v0    # "beMergedCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    :cond_88
    iget-object v7, v2, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    sget-object v8, Lcom/mediatek/ims/ImsCallInfo$State;->HOLDING:Lcom/mediatek/ims/ImsCallInfo$State;

    if-ne v7, v8, :cond_79

    .line 491
    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    sget-object v8, Lcom/mediatek/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/ims/ImsCallInfo$State;

    invoke-virtual {v7, v8}, Lcom/mediatek/ims/ImsRILAdapter;->getCallInfo(Lcom/mediatek/ims/ImsCallInfo$State;)Lcom/mediatek/ims/ImsCallInfo;

    move-result-object v0

    .local v0, "beMergedCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    goto :goto_79

    .line 500
    .end local v0    # "beMergedCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    :cond_97
    const-string/jumbo v7, "ImsCallSessionProxy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "merge command- my call: conference type="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, v2, Lcom/mediatek/ims/ImsCallInfo;->mIsConference:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 501
    const-string/jumbo v9, " call status="

    .line 500
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 501
    iget-object v9, v2, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    .line 500
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 501
    const-string/jumbo v9, " beMergedCall: conference type="

    .line 500
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 502
    iget-boolean v9, v0, Lcom/mediatek/ims/ImsCallInfo;->mIsConference:Z

    .line 500
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 502
    const-string/jumbo v9, " call status="

    .line 500
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 502
    iget-object v9, v0, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    .line 500
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 503
    const-string/jumbo v9, " needSwapConfToFg="

    .line 500
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 503
    const-string/jumbo v9, " mccMnc="

    .line 500
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v7, v2, Lcom/mediatek/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    iput-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMergeCallId:Ljava/lang/String;

    .line 506
    iget-object v7, v2, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    iput-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMergeCallStatus:Lcom/mediatek/ims/ImsCallInfo$State;

    .line 507
    iget-object v7, v0, Lcom/mediatek/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    iput-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMergedCallId:Ljava/lang/String;

    .line 508
    iget-object v7, v0, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    iput-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMergedCallStatus:Lcom/mediatek/ims/ImsCallInfo$State;

    .line 511
    iput-boolean v11, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsMerging:Z

    .line 513
    iget-boolean v7, v2, Lcom/mediatek/ims/ImsCallInfo;->mIsConference:Z

    if-nez v7, :cond_11c

    iget-boolean v7, v0, Lcom/mediatek/ims/ImsCallInfo;->mIsConference:Z

    if-nez v7, :cond_11c

    .line 515
    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v8, 0xcd

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 516
    .local v5, "result":Landroid/os/Message;
    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    invoke-virtual {v7, v5}, Lcom/mediatek/ims/ImsRILAdapter;->merge(Landroid/os/Message;)V

    .line 517
    iput-boolean v11, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mIsHideHoldEventDuringMerging:Z

    .line 518
    iput-boolean v11, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mNormalCallsMerge:Z

    .line 468
    :goto_11b
    return-void

    .line 519
    .end local v5    # "result":Landroid/os/Message;
    :cond_11c
    iget-boolean v7, v2, Lcom/mediatek/ims/ImsCallInfo;->mIsConference:Z

    if-eqz v7, :cond_141

    iget-boolean v7, v0, Lcom/mediatek/ims/ImsCallInfo;->mIsConference:Z

    if-eqz v7, :cond_141

    .line 521
    const-string/jumbo v7, "ImsCallSessionProxy"

    const-string/jumbo v8, "conference call merge conference call"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 523
    .restart local v5    # "result":Landroid/os/Message;
    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    iget-object v8, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 524
    iget-object v9, v0, Lcom/mediatek/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    .line 523
    invoke-virtual {v7, v8, v9, v5}, Lcom/mediatek/ims/ImsRILAdapter;->inviteParticipantsByCallId(ILjava/lang/String;Landroid/os/Message;)V

    .line 525
    return-void

    .line 527
    .end local v5    # "result":Landroid/os/Message;
    :cond_141
    if-nez v3, :cond_181

    .line 529
    iget-boolean v7, v2, Lcom/mediatek/ims/ImsCallInfo;->mIsConference:Z

    if-eqz v7, :cond_164

    .line 530
    const-string/jumbo v7, "ImsCallSessionProxy"

    const-string/jumbo v8, "active conference call merge background normal call"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 532
    .restart local v5    # "result":Landroid/os/Message;
    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    iget-object v8, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 533
    iget-object v9, v0, Lcom/mediatek/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    .line 532
    invoke-virtual {v7, v8, v9, v5}, Lcom/mediatek/ims/ImsRILAdapter;->inviteParticipantsByCallId(ILjava/lang/String;Landroid/os/Message;)V

    goto :goto_11b

    .line 535
    .end local v5    # "result":Landroid/os/Message;
    :cond_164
    const-string/jumbo v7, "ImsCallSessionProxy"

    const-string/jumbo v8, "active normal call merge background conference call"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 537
    .restart local v5    # "result":Landroid/os/Message;
    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    .line 538
    iget-object v8, v0, Lcom/mediatek/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 539
    iget-object v9, v2, Lcom/mediatek/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    .line 537
    invoke-virtual {v7, v8, v9, v5}, Lcom/mediatek/ims/ImsRILAdapter;->inviteParticipantsByCallId(ILjava/lang/String;Landroid/os/Message;)V

    goto :goto_11b

    .line 543
    .end local v5    # "result":Landroid/os/Message;
    :cond_181
    iget-boolean v7, v2, Lcom/mediatek/ims/ImsCallInfo;->mIsConference:Z

    if-eqz v7, :cond_1a9

    iget-object v7, v2, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    sget-object v8, Lcom/mediatek/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/ims/ImsCallInfo$State;

    if-ne v7, v8, :cond_1a9

    .line 544
    const-string/jumbo v7, "ImsCallSessionProxy"

    const-string/jumbo v8, "active conference call merge background normal call"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 546
    .restart local v5    # "result":Landroid/os/Message;
    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    iget-object v8, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 547
    iget-object v9, v0, Lcom/mediatek/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    .line 546
    invoke-virtual {v7, v8, v9, v5}, Lcom/mediatek/ims/ImsRILAdapter;->inviteParticipantsByCallId(ILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_11b

    .line 548
    .end local v5    # "result":Landroid/os/Message;
    :cond_1a9
    iget-boolean v7, v0, Lcom/mediatek/ims/ImsCallInfo;->mIsConference:Z

    if-eqz v7, :cond_1d1

    .line 549
    iget-object v7, v0, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    sget-object v8, Lcom/mediatek/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/ims/ImsCallInfo$State;

    if-ne v7, v8, :cond_1d1

    .line 551
    const-string/jumbo v7, "ImsCallSessionProxy"

    const-string/jumbo v8, "beMergedCall in foreground merge bg normal call"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 553
    .restart local v5    # "result":Landroid/os/Message;
    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    .line 554
    iget-object v8, v0, Lcom/mediatek/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 555
    iget-object v9, v2, Lcom/mediatek/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    .line 553
    invoke-virtual {v7, v8, v9, v5}, Lcom/mediatek/ims/ImsRILAdapter;->inviteParticipantsByCallId(ILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_11b

    .line 557
    .end local v5    # "result":Landroid/os/Message;
    :cond_1d1
    const-string/jumbo v7, "ImsCallSessionProxy"

    const-string/jumbo v8, "swapping before merge"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v8, 0xd2

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 559
    .restart local v5    # "result":Landroid/os/Message;
    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    invoke-virtual {v7, v5}, Lcom/mediatek/ims/ImsRILAdapter;->swap(Landroid/os/Message;)V

    goto/16 :goto_11b
.end method

.method public reject(I)V
    .registers 4
    .param p1, "reason"    # I

    .prologue
    .line 437
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 438
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->reject(I)V

    .line 436
    :goto_f
    return-void

    .line 440
    :cond_10
    const-string/jumbo v0, "ImsCallSessionProxy"

    const-string/jumbo v1, "Reject Call fail since there is no call ID. Abnormal Case"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public removeParticipants([Ljava/lang/String;)V
    .registers 9
    .param p1, "participants"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 600
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xcf

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 601
    .local v3, "result":Landroid/os/Message;
    iput v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantInfoIndex:I

    .line 602
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantInfo:[Ljava/lang/String;

    .line 603
    array-length v4, p1

    iput v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantStatistics:I

    .line 604
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    if-nez v4, :cond_18

    iget v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantStatistics:I

    if-nez v4, :cond_35

    .line 606
    :cond_18
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantInfo:[Ljava/lang/String;

    iget v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantInfoIndex:I

    aget-object v1, v4, v5

    .line 607
    .local v1, "participantAddr":Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mConfParticipantsUri:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 608
    .local v2, "participantUri":Ljava/lang/String;
    if-nez v2, :cond_29

    .line 609
    move-object v2, v1

    .line 612
    :cond_29
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5, v2, v3}, Lcom/mediatek/ims/ImsRILAdapter;->removeParticipants(ILjava/lang/String;Landroid/os/Message;)V

    .line 599
    .end local v1    # "participantAddr":Ljava/lang/String;
    .end local v2    # "participantUri":Ljava/lang/String;
    :cond_34
    :goto_34
    return-void

    .line 614
    :cond_35
    const-string/jumbo v4, "ImsCallSessionProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeParticipants fail since no call ID or participants is null CallID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 615
    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    .line 614
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 615
    const-string/jumbo v6, " Participant number="

    .line 614
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 615
    iget v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mPendingParticipantStatistics:I

    .line 614
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v4, :cond_34

    .line 618
    :try_start_62
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    .line 619
    new-instance v5, Lcom/android/ims/ImsReasonInfo;

    invoke-direct {v5}, Lcom/android/ims/ImsReasonInfo;-><init>()V

    .line 618
    invoke-interface {v4, p0, v5}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionRemoveParticipantsRequestFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_6c} :catch_6d

    goto :goto_34

    .line 620
    :catch_6d
    move-exception v0

    .line 621
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "ImsCallSessionProxy"

    const-string/jumbo v5, "RemoteException occurs when RemoveParticipantsRequestFailed"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34
.end method

.method public resume(Lcom/android/ims/ImsStreamMediaProfile;)V
    .registers 5
    .param p1, "profile"    # Lcom/android/ims/ImsStreamMediaProfile;

    .prologue
    .line 463
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xcc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 464
    .local v0, "result":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ImsRILAdapter;->resume(ILandroid/os/Message;)V

    .line 462
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .registers 4
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 629
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/ims/ImsRILAdapter;->sendDtmf(CLandroid/os/Message;)V

    .line 628
    return-void
.end method

.method public sendDtmfbyTarget(CLandroid/os/Message;Landroid/os/Messenger;)V
    .registers 7
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;
    .param p3, "target"    # Landroid/os/Messenger;

    .prologue
    .line 647
    iput-object p2, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mDtmfMsg:Landroid/os/Message;

    .line 648
    iput-object p3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mDtmfTarget:Landroid/os/Messenger;

    .line 650
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 651
    .local v0, "local_result":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    invoke-virtual {v1, p1, v0}, Lcom/mediatek/ims/ImsRILAdapter;->sendDtmf(CLandroid/os/Message;)V

    .line 646
    return-void
.end method

.method public sendUssd(Ljava/lang/String;)V
    .registers 2
    .param p1, "ussdMessage"    # Ljava/lang/String;

    .prologue
    .line 655
    return-void
.end method

.method public setListener(Lcom/android/ims/internal/IImsCallSessionListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/android/ims/internal/IImsCallSessionListener;

    .prologue
    .line 346
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    .line 345
    return-void
.end method

.method public setMute(Z)V
    .registers 4
    .param p1, "muted"    # Z

    .prologue
    .line 351
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/ims/ImsRILAdapter;->setMute(ZLandroid/os/Message;)V

    .line 350
    return-void
.end method

.method public start(Ljava/lang/String;Lcom/android/ims/ImsCallProfile;)V
    .registers 15
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 356
    const-string/jumbo v0, "oir"

    invoke-virtual {p2, v0, v9}, Lcom/android/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result v2

    .line 358
    .local v2, "clirMode":I
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getMainCapabilityPhoneId()I

    move-result v8

    .line 359
    .local v8, "phoneId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v7

    .line 360
    .local v7, "mccMnc":Ljava/lang/String;
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "23203"

    aput-object v1, v0, v9

    const-string/jumbo v1, "23204"

    aput-object v1, v0, v10

    const-string/jumbo v1, "21901"

    aput-object v1, v0, v11

    const-string/jumbo v1, "23001"

    const/4 v9, 0x3

    aput-object v1, v0, v9

    .line 361
    const-string/jumbo v1, "21630"

    const/4 v9, 0x4

    aput-object v1, v0, v9

    const-string/jumbo v1, "29702"

    const/4 v9, 0x5

    aput-object v1, v0, v9

    const-string/jumbo v1, "20416"

    const/4 v9, 0x6

    aput-object v1, v0, v9

    const-string/jumbo v1, "20420"

    const/4 v9, 0x7

    aput-object v1, v0, v9

    const-string/jumbo v1, "26002"

    const/16 v9, 0x8

    aput-object v1, v0, v9

    const-string/jumbo v1, "22004"

    const/16 v9, 0x9

    aput-object v1, v0, v9

    const-string/jumbo v1, "23430"

    const/16 v9, 0xa

    aput-object v1, v0, v9

    const-string/jumbo v1, "310160"

    const/16 v9, 0xb

    aput-object v1, v0, v9

    .line 362
    const-string/jumbo v1, "310260"

    const/16 v9, 0xc

    aput-object v1, v0, v9

    const-string/jumbo v1, "310490"

    const/16 v9, 0xd

    aput-object v1, v0, v9

    const-string/jumbo v1, "310580"

    const/16 v9, 0xe

    aput-object v1, v0, v9

    const-string/jumbo v1, "310660"

    const/16 v9, 0xf

    aput-object v1, v0, v9

    .line 360
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 363
    .local v6, "OP08_MCCMNC_LIST":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95

    if-nez v2, :cond_95

    .line 364
    const-string/jumbo v0, "ImsCallSessionProxy"

    const-string/jumbo v1, "op08, condsider CLIR default as suppression."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const/4 v2, 0x2

    .line 368
    :cond_95
    const/4 v4, 0x0

    .line 369
    .local v4, "isVideoCall":Z
    const/4 v3, 0x0

    .line 370
    .local v3, "isEmergencyNumber":Z
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 372
    .local v5, "result":Landroid/os/Message;
    iget v0, p2, Lcom/android/ims/ImsCallProfile;->mServiceType:I

    if-ne v0, v11, :cond_a4

    .line 373
    const/4 v3, 0x1

    .line 376
    :cond_a4
    invoke-static {p2}, Lcom/android/ims/ImsCallProfile;->getVideoStateFromImsCallProfile(Lcom/android/ims/ImsCallProfile;)I

    move-result v0

    if-eqz v0, :cond_ab

    .line 378
    const/4 v4, 0x1

    .line 380
    :cond_ab
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/ims/ImsRILAdapter;->start(Ljava/lang/String;IZZLandroid/os/Message;)V

    .line 381
    iput-boolean v10, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHasPendingMo:Z

    .line 382
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallNumber:Ljava/lang/String;

    .line 355
    return-void
.end method

.method public startConference([Ljava/lang/String;Lcom/android/ims/ImsCallProfile;)V
    .registers 8
    .param p1, "participants"    # [Ljava/lang/String;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    const/4 v4, 0x0

    .line 387
    const-string/jumbo v3, "oir"

    invoke-virtual {p2, v3, v4}, Lcom/android/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result v0

    .line 388
    .local v0, "clirMode":I
    const/4 v1, 0x0

    .line 389
    .local v1, "isVideoCall":Z
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xd1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 391
    .local v2, "result":Landroid/os/Message;
    invoke-static {p2}, Lcom/android/ims/ImsCallProfile;->getVideoStateFromImsCallProfile(Lcom/android/ims/ImsCallProfile;)I

    move-result v3

    if-eqz v3, :cond_18

    .line 393
    const/4 v1, 0x1

    .line 395
    :cond_18
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    invoke-virtual {v3, p1, v0, v1, v2}, Lcom/mediatek/ims/ImsRILAdapter;->startConference([Ljava/lang/String;IZLandroid/os/Message;)V

    .line 396
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mHasPendingMo:Z

    .line 386
    return-void
.end method

.method public startDtmf(C)V
    .registers 4
    .param p1, "c"    # C

    .prologue
    .line 634
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/ims/ImsRILAdapter;->startDtmf(CLandroid/os/Message;)V

    .line 633
    return-void
.end method

.method public stopDtmf()V
    .registers 3

    .prologue
    .line 639
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->stopDtmf(Landroid/os/Message;)V

    .line 638
    return-void
.end method

.method public terminate(I)V
    .registers 4
    .param p1, "reason"    # I

    .prologue
    .line 446
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 447
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mImsRILAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->terminate(I)V

    .line 449
    iput p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy;->mTerminateReason:I

    .line 445
    :goto_11
    return-void

    .line 451
    :cond_12
    const-string/jumbo v0, "ImsCallSessionProxy"

    const-string/jumbo v1, "Terminate Call fail since there is no call ID. Abnormal Case"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method public update(ILcom/android/ims/ImsStreamMediaProfile;)V
    .registers 3
    .param p1, "callType"    # I
    .param p2, "profile"    # Lcom/android/ims/ImsStreamMediaProfile;

    .prologue
    .line 566
    return-void
.end method
