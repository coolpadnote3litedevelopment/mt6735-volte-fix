.class Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
.super Ljava/lang/Object;
.source "DataDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/DataDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransactionParam"
.end annotation


# instance fields
.field public apnName:Ljava/lang/String;

.field public isEmergency:Z

.field public phoneId:I

.field public requestId:I

.field final synthetic this$0:Lcom/mediatek/ims/internal/DataDispatcher;

.field public transactionId:I


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/internal/DataDispatcher;IIILjava/lang/String;)V
    .registers 7
    .param p1, "this$0"    # Lcom/mediatek/ims/internal/DataDispatcher;
    .param p2, "tid"    # I
    .param p3, "reqId"    # I
    .param p4, "phoneId"    # I
    .param p5, "apn"    # Ljava/lang/String;

    .prologue
    .line 1138
    iput-object p1, p0, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1134
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->apnName:Ljava/lang/String;

    .line 1135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->isEmergency:Z

    .line 1136
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->phoneId:I

    .line 1139
    iput p2, p0, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->transactionId:I

    .line 1140
    iput p3, p0, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->requestId:I

    .line 1141
    iput p4, p0, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->phoneId:I

    .line 1142
    iput-object p5, p0, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->apnName:Ljava/lang/String;

    .line 1138
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[transactionId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->transactionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", request= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->requestId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", apn= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1148
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->apnName:Ljava/lang/String;

    .line 1147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1149
    const-string/jumbo v1, ", phoneId= "

    .line 1147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1149
    iget v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;->phoneId:I

    .line 1147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1149
    const-string/jumbo v1, "]"

    .line 1147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
