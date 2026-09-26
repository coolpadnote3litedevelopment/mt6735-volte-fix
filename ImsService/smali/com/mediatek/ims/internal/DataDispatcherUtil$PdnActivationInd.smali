.class public Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnActivationInd;
.super Ljava/lang/Object;
.source "DataDispatcherUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/DataDispatcherUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PdnActivationInd"
.end annotation


# instance fields
.field public isEmergency:Z

.field public pad:[B

.field public rat_type:I

.field final synthetic this$0:Lcom/mediatek/ims/internal/DataDispatcherUtil;

.field public transactionId:I


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/internal/DataDispatcherUtil;)V
    .registers 3
    .param p1, "this$0"    # Lcom/mediatek/ims/internal/DataDispatcherUtil;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnActivationInd;->this$0:Lcom/mediatek/ims/internal/DataDispatcherUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnActivationInd;->pad:[B

    .line 43
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[ transactionId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnActivationInd;->transactionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isEmergency= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 52
    iget-boolean v1, p0, Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnActivationInd;->isEmergency:Z

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 52
    const-string/jumbo v1, ", rat_type= "

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 52
    iget v1, p0, Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnActivationInd;->rat_type:I

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 52
    const-string/jumbo v1, " ]"

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
