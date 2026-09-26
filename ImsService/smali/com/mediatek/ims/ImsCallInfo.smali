.class Lcom/mediatek/ims/ImsCallInfo;
.super Ljava/lang/Object;
.source "ImsRILAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/ImsCallInfo$State;
    }
.end annotation


# instance fields
.field mCallId:Ljava/lang/String;

.field mCallNum:Ljava/lang/String;

.field mIsConference:Z

.field mState:Lcom/mediatek/ims/ImsCallInfo$State;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/mediatek/ims/ImsCallInfo$State;)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "callNum"    # Ljava/lang/String;
    .param p3, "isConference"    # Z
    .param p4, "state"    # Lcom/mediatek/ims/ImsCallInfo$State;

    .prologue
    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    .line 286
    iput-object p2, p0, Lcom/mediatek/ims/ImsCallInfo;->mCallNum:Ljava/lang/String;

    .line 287
    iput-boolean p3, p0, Lcom/mediatek/ims/ImsCallInfo;->mIsConference:Z

    .line 288
    iput-object p4, p0, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    .line 284
    return-void
.end method
