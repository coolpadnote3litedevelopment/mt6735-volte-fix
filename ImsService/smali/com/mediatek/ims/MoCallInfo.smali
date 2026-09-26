.class Lcom/mediatek/ims/MoCallInfo;
.super Ljava/lang/Object;
.source "ImsRILAdapter.java"


# instance fields
.field mCallee:Ljava/lang/String;

.field mClirMode:I

.field mIsEmergency:Z

.field mIsVideoCall:Z

.field mResult:Landroid/os/Message;


# direct methods
.method public constructor <init>(Ljava/lang/String;IZZLandroid/os/Message;)V
    .registers 6
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "isEmergency"    # Z
    .param p4, "isVideoCall"    # Z
    .param p5, "result"    # Landroid/os/Message;

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-object p1, p0, Lcom/mediatek/ims/MoCallInfo;->mCallee:Ljava/lang/String;

    .line 235
    iput p2, p0, Lcom/mediatek/ims/MoCallInfo;->mClirMode:I

    .line 236
    iput-boolean p3, p0, Lcom/mediatek/ims/MoCallInfo;->mIsEmergency:Z

    .line 237
    iput-boolean p4, p0, Lcom/mediatek/ims/MoCallInfo;->mIsVideoCall:Z

    .line 238
    iput-object p5, p0, Lcom/mediatek/ims/MoCallInfo;->mResult:Landroid/os/Message;

    .line 233
    return-void
.end method
