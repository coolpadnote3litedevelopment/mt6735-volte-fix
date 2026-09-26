.class Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;
.super Ljava/lang/Object;
.source "ImsRILAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsRILAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "dtmfQueueHandler"
.end annotation


# instance fields
.field private final DTMF_STATUS_START:Z

.field private final DTMF_STATUS_STOP:Z

.field public final MAXIMUM_DTMF_REQUEST:I

.field private mDtmfQueue:Ljava/util/Vector;

.field private mDtmfStatus:Z

.field private mIsSendChldRequest:Z

.field private mPendingCHLDRequest:Lcom/mediatek/ims/RILRequest;

.field final synthetic this$0:Lcom/mediatek/ims/ImsRILAdapter;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/ImsRILAdapter;)V
    .registers 5
    .param p1, "this$0"    # Lcom/mediatek/ims/ImsRILAdapter;

    .prologue
    const/16 v2, 0x20

    const/4 v1, 0x0

    .line 374
    iput-object p1, p0, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->this$0:Lcom/mediatek/ims/ImsRILAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    iput v2, p0, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->MAXIMUM_DTMF_REQUEST:I

    .line 432
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->DTMF_STATUS_START:Z

    .line 433
    iput-boolean v1, p0, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->DTMF_STATUS_STOP:Z

    .line 435
    iput-boolean v1, p0, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->mDtmfStatus:Z

    .line 436
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->mDtmfQueue:Ljava/util/Vector;

    .line 438
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->mPendingCHLDRequest:Lcom/mediatek/ims/RILRequest;

    .line 439
    iput-boolean v1, p0, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->mIsSendChldRequest:Z

    .line 375
    iput-boolean v1, p0, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->mDtmfStatus:Z

    .line 374
    return-void
.end method


# virtual methods
.method public add(Lcom/mediatek/ims/RILRequest;)V
    .registers 3
    .param p1, "o"    # Lcom/mediatek/ims/RILRequest;

    .prologue
    .line 391
    iget-object v0, p0, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->mDtmfQueue:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 390
    return-void
.end method

.method public get()Lcom/mediatek/ims/RILRequest;
    .registers 3

    .prologue
    .line 403
    iget-object v0, p0, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->mDtmfQueue:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/RILRequest;

    return-object v0
.end method

.method public getPendingRequest()Lcom/mediatek/ims/RILRequest;
    .registers 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->mPendingCHLDRequest:Lcom/mediatek/ims/RILRequest;

    return-object v0
.end method

.method public hasSendChldRequest()Z
    .registers 4

    .prologue
    .line 427
    iget-object v0, p0, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->this$0:Lcom/mediatek/ims/ImsRILAdapter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIsSendChldRequest = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->mIsSendChldRequest:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/ImsRILAdapter;->-wrap6(Lcom/mediatek/ims/ImsRILAdapter;Ljava/lang/String;)V

    .line 428
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->mIsSendChldRequest:Z

    return v0
.end method

.method public isStart()Z
    .registers 2

    .prologue
    .line 387
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->mDtmfStatus:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public remove(I)V
    .registers 3
    .param p1, "idx"    # I

    .prologue
    .line 399
    iget-object v0, p0, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->mDtmfQueue:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 398
    return-void
.end method

.method public remove(Lcom/mediatek/ims/RILRequest;)V
    .registers 3
    .param p1, "o"    # Lcom/mediatek/ims/RILRequest;

    .prologue
    .line 395
    iget-object v0, p0, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->mDtmfQueue:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 394
    return-void
.end method

.method public resetSendChldRequest()V
    .registers 2

    .prologue
    .line 423
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->mIsSendChldRequest:Z

    .line 422
    return-void
.end method

.method public setPendingRequest(Lcom/mediatek/ims/RILRequest;)V
    .registers 2
    .param p1, "r"    # Lcom/mediatek/ims/RILRequest;

    .prologue
    .line 411
    iput-object p1, p0, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->mPendingCHLDRequest:Lcom/mediatek/ims/RILRequest;

    .line 410
    return-void
.end method

.method public setSendChldRequest()V
    .registers 2

    .prologue
    .line 419
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->mIsSendChldRequest:Z

    .line 418
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->mDtmfQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public start()V
    .registers 2

    .prologue
    .line 379
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->mDtmfStatus:Z

    .line 378
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 383
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->mDtmfStatus:Z

    .line 382
    return-void
.end method
