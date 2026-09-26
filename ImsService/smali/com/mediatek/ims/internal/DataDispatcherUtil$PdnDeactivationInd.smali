.class public Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactivationInd;
.super Ljava/lang/Object;
.source "DataDispatcherUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/DataDispatcherUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PdnDeactivationInd"
.end annotation


# instance fields
.field public abortTransactionId:I

.field public isEmergency:Z

.field public isValid:Z

.field final synthetic this$0:Lcom/mediatek/ims/internal/DataDispatcherUtil;

.field public transactionId:I


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/internal/DataDispatcherUtil;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/ims/internal/DataDispatcherUtil;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactivationInd;->this$0:Lcom/mediatek/ims/internal/DataDispatcherUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[ transactionId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactivationInd;->transactionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", abortTransactionId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 65
    iget v1, p0, Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactivationInd;->abortTransactionId:I

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 65
    const-string/jumbo v1, ", isValid= "

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 65
    iget-boolean v1, p0, Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactivationInd;->isValid:Z

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 65
    const-string/jumbo v1, ", isEmergency= "

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 66
    iget-boolean v1, p0, Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactivationInd;->isEmergency:Z

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 66
    const-string/jumbo v1, " ]"

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
