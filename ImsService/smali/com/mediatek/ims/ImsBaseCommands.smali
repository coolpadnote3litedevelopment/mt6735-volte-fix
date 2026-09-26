.class public abstract Lcom/mediatek/ims/ImsBaseCommands;
.super Ljava/lang/Object;
.source "ImsBaseCommands.java"

# interfaces
.implements Lcom/mediatek/ims/ImsCommandsInterface;


# instance fields
.field protected mAvailRegistrants:Landroid/os/RegistrantList;

.field protected mCallForwardingInfoRegistrants:Landroid/os/RegistrantList;

.field protected mCallInfoRegistrants:Landroid/os/RegistrantList;

.field protected mCallModeChangeIndicatorRegistrants:Landroid/os/RegistrantList;

.field protected mCallProgressIndicatorRegistrants:Landroid/os/RegistrantList;

.field protected mCallRelatedSuppSvcRegistrant:Landroid/os/Registrant;

.field protected mCallStateRegistrants:Landroid/os/RegistrantList;

.field protected mCipherIndicationRegistrant:Landroid/os/RegistrantList;

.field protected mCnapNotifyRegistrant:Landroid/os/Registrant;

.field protected mContext:Landroid/content/Context;

.field protected mDedicateBearerActivatedRegistrant:Landroid/os/RegistrantList;

.field protected mDedicateBearerDeactivatedRegistrant:Landroid/os/RegistrantList;

.field protected mDedicateBearerModifiedRegistrant:Landroid/os/RegistrantList;

.field protected mEconfResultRegistrants:Landroid/os/RegistrantList;

.field protected mEconfSrvccRegistrants:Landroid/os/RegistrantList;

.field protected mEpsNetworkFeatureInfoRegistrants:Landroid/os/RegistrantList;

.field protected mEpsNetworkFeatureSupportRegistrants:Landroid/os/RegistrantList;

.field protected mImsDeregistrationDoneRegistrants:Landroid/os/RegistrantList;

.field protected mImsDisableDoneRegistrants:Landroid/os/RegistrantList;

.field protected mImsDisableStartRegistrants:Landroid/os/RegistrantList;

.field protected mImsEnableDoneRegistrants:Landroid/os/RegistrantList;

.field protected mImsEnableStartRegistrants:Landroid/os/RegistrantList;

.field protected mImsRegistrationInfoRegistrants:Landroid/os/RegistrantList;

.field protected mIncomingCallIndicationRegistrant:Landroid/os/Registrant;

.field protected mNotAvailRegistrants:Landroid/os/RegistrantList;

.field protected mOffOrNotAvailRegistrants:Landroid/os/RegistrantList;

.field protected mOffRegistrants:Landroid/os/RegistrantList;

.field protected mOnRegistrants:Landroid/os/RegistrantList;

.field protected mRadioStateChangedRegistrants:Landroid/os/RegistrantList;

.field protected mRingRegistrant:Landroid/os/Registrant;

.field protected mRingbackToneRegistrants:Landroid/os/RegistrantList;

.field protected mSpeechCodecInfoRegistrant:Landroid/os/Registrant;

.field protected mSrvccHandoverInfoIndicationRegistrants:Landroid/os/RegistrantList;

.field protected mSrvccStateRegistrants:Landroid/os/RegistrantList;

.field protected mSsnRegistrant:Landroid/os/Registrant;

.field protected mState:Lcom/mediatek/ims/ImsCommandsInterface$RadioState;

.field protected mStateMonitor:Ljava/lang/Object;

.field protected mVideoCapabilityIndicatorRegistrants:Landroid/os/RegistrantList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget-object v0, Lcom/mediatek/ims/ImsCommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/mediatek/ims/ImsCommandsInterface$RadioState;

    iput-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mState:Lcom/mediatek/ims/ImsCommandsInterface$RadioState;

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mStateMonitor:Ljava/lang/Object;

    .line 55
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mRadioStateChangedRegistrants:Landroid/os/RegistrantList;

    .line 56
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mOnRegistrants:Landroid/os/RegistrantList;

    .line 57
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mAvailRegistrants:Landroid/os/RegistrantList;

    .line 58
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mOffOrNotAvailRegistrants:Landroid/os/RegistrantList;

    .line 59
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mNotAvailRegistrants:Landroid/os/RegistrantList;

    .line 60
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mOffRegistrants:Landroid/os/RegistrantList;

    .line 61
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mCallStateRegistrants:Landroid/os/RegistrantList;

    .line 63
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    .line 66
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mCallForwardingInfoRegistrants:Landroid/os/RegistrantList;

    .line 70
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mCipherIndicationRegistrant:Landroid/os/RegistrantList;

    .line 75
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mEpsNetworkFeatureSupportRegistrants:Landroid/os/RegistrantList;

    .line 76
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mEpsNetworkFeatureInfoRegistrants:Landroid/os/RegistrantList;

    .line 77
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mSrvccHandoverInfoIndicationRegistrants:Landroid/os/RegistrantList;

    .line 80
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mImsEnableStartRegistrants:Landroid/os/RegistrantList;

    .line 81
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mImsDisableStartRegistrants:Landroid/os/RegistrantList;

    .line 82
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mImsEnableDoneRegistrants:Landroid/os/RegistrantList;

    .line 83
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mImsDisableDoneRegistrants:Landroid/os/RegistrantList;

    .line 85
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mImsDeregistrationDoneRegistrants:Landroid/os/RegistrantList;

    .line 87
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mImsRegistrationInfoRegistrants:Landroid/os/RegistrantList;

    .line 88
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mDedicateBearerActivatedRegistrant:Landroid/os/RegistrantList;

    .line 89
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mDedicateBearerModifiedRegistrant:Landroid/os/RegistrantList;

    .line 90
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mDedicateBearerDeactivatedRegistrant:Landroid/os/RegistrantList;

    .line 94
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mEconfSrvccRegistrants:Landroid/os/RegistrantList;

    .line 96
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mEconfResultRegistrants:Landroid/os/RegistrantList;

    .line 98
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mCallInfoRegistrants:Landroid/os/RegistrantList;

    .line 102
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mSrvccStateRegistrants:Landroid/os/RegistrantList;

    .line 103
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mCallProgressIndicatorRegistrants:Landroid/os/RegistrantList;

    .line 105
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mCallModeChangeIndicatorRegistrants:Landroid/os/RegistrantList;

    .line 106
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mVideoCapabilityIndicatorRegistrants:Landroid/os/RegistrantList;

    .line 110
    iput-object p1, p0, Lcom/mediatek/ims/ImsBaseCommands;->mContext:Landroid/content/Context;

    .line 109
    return-void
.end method


# virtual methods
.method public acceptVideoCall(II)V
    .registers 3
    .param p1, "videoMode"    # I
    .param p2, "callId"    # I

    .prologue
    .line 527
    return-void
.end method

.method protected onRadioAvailable()V
    .registers 1

    .prologue
    .line 516
    return-void
.end method

.method public registerForCallForwardingInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 197
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 198
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ImsBaseCommands;->mCallForwardingInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 196
    return-void
.end method

.method public registerForCallInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 294
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 295
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ImsBaseCommands;->mCallInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 293
    return-void
.end method

.method public registerForCallModeChangeIndicator(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 425
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 427
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ImsBaseCommands;->mCallModeChangeIndicatorRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 424
    return-void
.end method

.method public registerForCallProgressIndicator(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 406
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 408
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ImsBaseCommands;->mCallProgressIndicatorRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 405
    return-void
.end method

.method public registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 168
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 169
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ImsBaseCommands;->mCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 167
    return-void
.end method

.method public registerForCipherIndication(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 230
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 231
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ImsBaseCommands;->mCipherIndicationRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 229
    return-void
.end method

.method public registerForDedicateBearerActivated(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 358
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 359
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ImsBaseCommands;->mDedicateBearerActivatedRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 357
    return-void
.end method

.method public registerForDedicateBearerDeactivated(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 376
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 377
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ImsBaseCommands;->mDedicateBearerDeactivatedRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 375
    return-void
.end method

.method public registerForDedicateBearerModified(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 367
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 368
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ImsBaseCommands;->mDedicateBearerModifiedRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 366
    return-void
.end method

.method public registerForEconfResult(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 285
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 286
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ImsBaseCommands;->mEconfResultRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 284
    return-void
.end method

.method public registerForEconfSrvcc(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 276
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 277
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ImsBaseCommands;->mEconfSrvccRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 275
    return-void
.end method

.method public registerForEpsNetworkFeatureInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 259
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 260
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ImsBaseCommands;->mEpsNetworkFeatureInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 258
    return-void
.end method

.method public registerForEpsNetworkFeatureSupport(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 250
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 251
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ImsBaseCommands;->mEpsNetworkFeatureSupportRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 249
    return-void
.end method

.method public registerForImsDeregisterComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 340
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 341
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ImsBaseCommands;->mImsDeregistrationDoneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 339
    return-void
.end method

.method public registerForImsDisableComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 331
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 332
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ImsBaseCommands;->mImsDisableDoneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 330
    return-void
.end method

.method public registerForImsDisableStart(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 313
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 314
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ImsBaseCommands;->mImsDisableStartRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 312
    return-void
.end method

.method public registerForImsEnableComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 322
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 323
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ImsBaseCommands;->mImsEnableDoneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 321
    return-void
.end method

.method public registerForImsEnableStart(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 304
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 305
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ImsBaseCommands;->mImsEnableStartRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 303
    return-void
.end method

.method public registerForImsRegistrationInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 349
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 350
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ImsBaseCommands;->mImsRegistrationInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 348
    return-void
.end method

.method public registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 10
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 114
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 116
    .local v0, "r":Landroid/os/Registrant;
    iget-object v2, p0, Lcom/mediatek/ims/ImsBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 117
    :try_start_8
    iget-object v1, p0, Lcom/mediatek/ims/ImsBaseCommands;->mNotAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 119
    iget-object v1, p0, Lcom/mediatek/ims/ImsBaseCommands;->mState:Lcom/mediatek/ims/ImsCommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/mediatek/ims/ImsCommandsInterface$RadioState;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_20

    .line 120
    new-instance v1, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_22

    :cond_20
    monitor-exit v2

    .line 113
    return-void

    .line 116
    :catchall_22
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public registerForOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 10
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 132
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 134
    .local v0, "r":Landroid/os/Registrant;
    iget-object v2, p0, Lcom/mediatek/ims/ImsBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 135
    :try_start_8
    iget-object v1, p0, Lcom/mediatek/ims/ImsBaseCommands;->mOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 137
    iget-object v1, p0, Lcom/mediatek/ims/ImsBaseCommands;->mState:Lcom/mediatek/ims/ImsCommandsInterface$RadioState;

    sget-object v3, Lcom/mediatek/ims/ImsCommandsInterface$RadioState;->RADIO_OFF:Lcom/mediatek/ims/ImsCommandsInterface$RadioState;

    if-ne v1, v3, :cond_1e

    .line 138
    new-instance v1, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_20

    :cond_1e
    monitor-exit v2

    .line 131
    return-void

    .line 134
    :catchall_20
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 10
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 150
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 152
    .local v0, "r":Landroid/os/Registrant;
    iget-object v2, p0, Lcom/mediatek/ims/ImsBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 153
    :try_start_8
    iget-object v1, p0, Lcom/mediatek/ims/ImsBaseCommands;->mOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 155
    iget-object v1, p0, Lcom/mediatek/ims/ImsBaseCommands;->mState:Lcom/mediatek/ims/ImsCommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/mediatek/ims/ImsCommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 156
    new-instance v1, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_22

    :cond_20
    monitor-exit v2

    .line 149
    return-void

    .line 152
    :catchall_22
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 188
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 189
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ImsBaseCommands;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 187
    return-void
.end method

.method public registerForSrvccHandoverInfoIndication(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 268
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 269
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ImsBaseCommands;->mSrvccHandoverInfoIndicationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 267
    return-void
.end method

.method public registerForSrvccStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 396
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 398
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ImsBaseCommands;->mSrvccStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 395
    return-void
.end method

.method public registerForVideoCapabilityIndicator(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 449
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 451
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/ims/ImsBaseCommands;->mVideoCapabilityIndicatorRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 448
    return-void
.end method

.method public setCnapNotify(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 222
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mCnapNotifyRegistrant:Landroid/os/Registrant;

    .line 221
    return-void
.end method

.method public setOnCallRelatedSuppSvc(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 206
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mCallRelatedSuppSvcRegistrant:Landroid/os/Registrant;

    .line 205
    return-void
.end method

.method public setOnCallRing(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 177
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mRingRegistrant:Landroid/os/Registrant;

    .line 176
    return-void
.end method

.method public setOnIncomingCallIndication(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 214
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mIncomingCallIndicationRegistrant:Landroid/os/Registrant;

    .line 213
    return-void
.end method

.method public setOnSpeechCodecInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 239
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mSpeechCodecInfoRegistrant:Landroid/os/Registrant;

    .line 238
    return-void
.end method

.method public setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 385
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mSsnRegistrant:Landroid/os/Registrant;

    .line 384
    return-void
.end method

.method protected setRadioState(Lcom/mediatek/ims/ImsCommandsInterface$RadioState;)V
    .registers 5
    .param p1, "newState"    # Lcom/mediatek/ims/ImsCommandsInterface$RadioState;

    .prologue
    .line 479
    iget-object v2, p0, Lcom/mediatek/ims/ImsBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 480
    :try_start_3
    iget-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mState:Lcom/mediatek/ims/ImsCommandsInterface$RadioState;

    .line 481
    .local v0, "oldState":Lcom/mediatek/ims/ImsCommandsInterface$RadioState;
    iput-object p1, p0, Lcom/mediatek/ims/ImsBaseCommands;->mState:Lcom/mediatek/ims/ImsCommandsInterface$RadioState;

    .line 483
    iget-object v1, p0, Lcom/mediatek/ims/ImsBaseCommands;->mState:Lcom/mediatek/ims/ImsCommandsInterface$RadioState;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_69

    if-ne v0, v1, :cond_d

    monitor-exit v2

    .line 485
    return-void

    .line 488
    :cond_d
    :try_start_d
    iget-object v1, p0, Lcom/mediatek/ims/ImsBaseCommands;->mRadioStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 490
    iget-object v1, p0, Lcom/mediatek/ims/ImsBaseCommands;->mState:Lcom/mediatek/ims/ImsCommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/mediatek/ims/ImsCommandsInterface$RadioState;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCommandsInterface$RadioState;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_60

    .line 495
    :cond_20
    :goto_20
    iget-object v1, p0, Lcom/mediatek/ims/ImsBaseCommands;->mState:Lcom/mediatek/ims/ImsCommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/mediatek/ims/ImsCommandsInterface$RadioState;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_33

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCommandsInterface$RadioState;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 496
    iget-object v1, p0, Lcom/mediatek/ims/ImsBaseCommands;->mNotAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 499
    :cond_33
    iget-object v1, p0, Lcom/mediatek/ims/ImsBaseCommands;->mState:Lcom/mediatek/ims/ImsCommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/mediatek/ims/ImsCommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 503
    :cond_41
    :goto_41
    iget-object v1, p0, Lcom/mediatek/ims/ImsBaseCommands;->mState:Lcom/mediatek/ims/ImsCommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/mediatek/ims/ImsCommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-eqz v1, :cond_72

    iget-object v1, p0, Lcom/mediatek/ims/ImsBaseCommands;->mState:Lcom/mediatek/ims/ImsCommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/mediatek/ims/ImsCommandsInterface$RadioState;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_72

    .line 509
    :cond_51
    :goto_51
    iget-object v1, p0, Lcom/mediatek/ims/ImsBaseCommands;->mState:Lcom/mediatek/ims/ImsCommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/mediatek/ims/ImsCommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-nez v1, :cond_5e

    .line 510
    iget-object v1, p0, Lcom/mediatek/ims/ImsBaseCommands;->mOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V
    :try_end_5e
    .catchall {:try_start_d .. :try_end_5e} :catchall_69

    :cond_5e
    monitor-exit v2

    .line 476
    return-void

    .line 491
    :cond_60
    :try_start_60
    iget-object v1, p0, Lcom/mediatek/ims/ImsBaseCommands;->mAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 492
    invoke-virtual {p0}, Lcom/mediatek/ims/ImsBaseCommands;->onRadioAvailable()V
    :try_end_68
    .catchall {:try_start_60 .. :try_end_68} :catchall_69

    goto :goto_20

    .line 479
    .end local v0    # "oldState":Lcom/mediatek/ims/ImsCommandsInterface$RadioState;
    :catchall_69
    move-exception v1

    monitor-exit v2

    throw v1

    .line 500
    .restart local v0    # "oldState":Lcom/mediatek/ims/ImsCommandsInterface$RadioState;
    :cond_6c
    :try_start_6c
    iget-object v1, p0, Lcom/mediatek/ims/ImsBaseCommands;->mOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_41

    .line 504
    :cond_72
    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCommandsInterface$RadioState;->isAvailable()Z

    move-result v1

    .line 503
    if-eqz v1, :cond_51

    .line 506
    iget-object v1, p0, Lcom/mediatek/ims/ImsBaseCommands;->mOffOrNotAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V
    :try_end_83
    .catchall {:try_start_6c .. :try_end_83} :catchall_69

    goto :goto_51
.end method

.method public turnOffImsVideo(Landroid/os/Message;)V
    .registers 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 586
    return-void
.end method

.method public turnOffImsVoice(Landroid/os/Message;)V
    .registers 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 572
    return-void
.end method

.method public turnOffVolte(Landroid/os/Message;)V
    .registers 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 544
    return-void
.end method

.method public turnOffWfc(Landroid/os/Message;)V
    .registers 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 558
    return-void
.end method

.method public turnOnImsVideo(Landroid/os/Message;)V
    .registers 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 579
    return-void
.end method

.method public turnOnImsVoice(Landroid/os/Message;)V
    .registers 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 565
    return-void
.end method

.method public turnOnVolte(Landroid/os/Message;)V
    .registers 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 537
    return-void
.end method

.method public turnOnWfc(Landroid/os/Message;)V
    .registers 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 551
    return-void
.end method

.method public unSetCnapNotify(Landroid/os/Handler;)V
    .registers 3
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mCnapNotifyRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 225
    return-void
.end method

.method public unSetOnCallRelatedSuppSvc(Landroid/os/Handler;)V
    .registers 3
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mCallRelatedSuppSvcRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 209
    return-void
.end method

.method public unSetOnCallRing(Landroid/os/Handler;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 181
    iget-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mRingRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mRingRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_14

    .line 182
    iget-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mRingRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 183
    iput-object v1, p0, Lcom/mediatek/ims/ImsBaseCommands;->mRingRegistrant:Landroid/os/Registrant;

    .line 180
    :cond_14
    return-void
.end method

.method public unSetOnSpeechCodecInfo(Landroid/os/Handler;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 243
    iget-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mSpeechCodecInfoRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mSpeechCodecInfoRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_14

    .line 244
    iget-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mSpeechCodecInfoRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 245
    iput-object v1, p0, Lcom/mediatek/ims/ImsBaseCommands;->mSpeechCodecInfoRegistrant:Landroid/os/Registrant;

    .line 242
    :cond_14
    return-void
.end method

.method public unSetOnSuppServiceNotification(Landroid/os/Handler;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 389
    iget-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mSsnRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mSsnRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_14

    .line 390
    iget-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mSsnRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 391
    iput-object v1, p0, Lcom/mediatek/ims/ImsBaseCommands;->mSsnRegistrant:Landroid/os/Registrant;

    .line 388
    :cond_14
    return-void
.end method

.method public unregisterForCallForwardingInfo(Landroid/os/Handler;)V
    .registers 3
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mCallForwardingInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 201
    return-void
.end method

.method public unregisterForCallInfo(Landroid/os/Handler;)V
    .registers 3
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 299
    iget-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mCallInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 298
    return-void
.end method

.method public unregisterForCallModeChangeIndicator(Landroid/os/Handler;)V
    .registers 3
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 437
    iget-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mCallModeChangeIndicatorRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 436
    return-void
.end method

.method public unregisterForCallProgressIndicator(Landroid/os/Handler;)V
    .registers 3
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 412
    iget-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mCallProgressIndicatorRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 411
    return-void
.end method

.method public unregisterForCallStateChanged(Landroid/os/Handler;)V
    .registers 3
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 172
    return-void
.end method

.method public unregisterForCipherIndication(Landroid/os/Handler;)V
    .registers 3
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mCipherIndicationRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 234
    return-void
.end method

.method public unregisterForDedicateBearerActivated(Landroid/os/Handler;)V
    .registers 3
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 363
    iget-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mDedicateBearerActivatedRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 362
    return-void
.end method

.method public unregisterForDedicateBearerDeactivated(Landroid/os/Handler;)V
    .registers 3
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 381
    iget-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mDedicateBearerDeactivatedRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 380
    return-void
.end method

.method public unregisterForDedicateBearerModified(Landroid/os/Handler;)V
    .registers 3
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 372
    iget-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mDedicateBearerModifiedRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 371
    return-void
.end method

.method public unregisterForEconfResult(Landroid/os/Handler;)V
    .registers 3
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 290
    iget-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mEconfResultRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 289
    return-void
.end method

.method public unregisterForEconfSrvcc(Landroid/os/Handler;)V
    .registers 3
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 281
    iget-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mEconfSrvccRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 280
    return-void
.end method

.method public unregisterForEpsNetworkFeatureInfo(Landroid/os/Handler;)V
    .registers 3
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mEpsNetworkFeatureInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 263
    return-void
.end method

.method public unregisterForEpsNetworkFeatureSupport(Landroid/os/Handler;)V
    .registers 3
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 255
    iget-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mEpsNetworkFeatureSupportRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 254
    return-void
.end method

.method public unregisterForImsDeregisterComplete(Landroid/os/Handler;)V
    .registers 3
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 345
    iget-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mImsDeregistrationDoneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 344
    return-void
.end method

.method public unregisterForImsDisableComplete(Landroid/os/Handler;)V
    .registers 3
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 336
    iget-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mImsDisableDoneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 335
    return-void
.end method

.method public unregisterForImsDisableStart(Landroid/os/Handler;)V
    .registers 3
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 318
    iget-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mImsDisableStartRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 317
    return-void
.end method

.method public unregisterForImsEnableComplete(Landroid/os/Handler;)V
    .registers 3
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 327
    iget-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mImsEnableDoneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 326
    return-void
.end method

.method public unregisterForImsEnableStart(Landroid/os/Handler;)V
    .registers 3
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 309
    iget-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mImsEnableStartRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 308
    return-void
.end method

.method public unregisterForImsRegistrationInfo(Landroid/os/Handler;)V
    .registers 3
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 354
    iget-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mImsRegistrationInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 353
    return-void
.end method

.method public unregisterForNotAvailable(Landroid/os/Handler;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 126
    iget-object v1, p0, Lcom/mediatek/ims/ImsBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 127
    :try_start_3
    iget-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mNotAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    .line 125
    return-void

    .line 126
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unregisterForOff(Landroid/os/Handler;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 144
    iget-object v1, p0, Lcom/mediatek/ims/ImsBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 145
    :try_start_3
    iget-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    .line 143
    return-void

    .line 144
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unregisterForOn(Landroid/os/Handler;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 162
    iget-object v1, p0, Lcom/mediatek/ims/ImsBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 163
    :try_start_3
    iget-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    .line 161
    return-void

    .line 162
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unregisterForRingbackTone(Landroid/os/Handler;)V
    .registers 3
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 192
    return-void
.end method

.method public unregisterForSrvccHandoverInfoIndication(Landroid/os/Handler;)V
    .registers 3
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mSrvccHandoverInfoIndicationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 271
    return-void
.end method

.method public unregisterForSrvccStateChanged(Landroid/os/Handler;)V
    .registers 3
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 402
    iget-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mSrvccStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 401
    return-void
.end method

.method public unregisterForVideoCapabilityIndicator(Landroid/os/Handler;)V
    .registers 3
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 461
    iget-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mVideoCapabilityIndicatorRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 460
    return-void
.end method

.method public unsetOnIncomingCallIndication(Landroid/os/Handler;)V
    .registers 3
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 218
    iget-object v0, p0, Lcom/mediatek/ims/ImsBaseCommands;->mIncomingCallIndicationRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 217
    return-void
.end method
