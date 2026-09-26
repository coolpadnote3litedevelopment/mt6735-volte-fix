.class Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;
.super Ljava/lang/Object;
.source "DataDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/DataDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApnStatus"
.end annotation


# instance fields
.field ifaceName:Ljava/lang/String;

.field isSendReq:Z

.field mName:Ljava/lang/String;

.field mStatus:I

.field final synthetic this$0:Lcom/mediatek/ims/internal/DataDispatcher;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/internal/DataDispatcher;Ljava/lang/String;)V
    .registers 6
    .param p1, "this$0"    # Lcom/mediatek/ims/internal/DataDispatcher;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1162
    iput-object p1, p0, Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1155
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;->mName:Ljava/lang/String;

    .line 1156
    iput v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;->mStatus:I

    .line 1157
    iput-boolean v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;->isSendReq:Z

    .line 1158
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;->ifaceName:Ljava/lang/String;

    .line 1163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "new apn status for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/DataDispatcher;->-wrap9(Ljava/lang/String;)V

    .line 1164
    iput-object p2, p0, Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;->mName:Ljava/lang/String;

    .line 1165
    iput v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;->mStatus:I

    .line 1166
    iput-boolean v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;->isSendReq:Z

    .line 1162
    return-void
.end method

.method private statusToString(I)Ljava/lang/String;
    .registers 3
    .param p1, "status"    # I

    .prologue
    .line 1182
    const-string/jumbo v0, ""

    .line 1184
    .local v0, "rs":Ljava/lang/String;
    packed-switch p1, :pswitch_data_14

    .line 1198
    :goto_6
    return-object v0

    .line 1186
    :pswitch_7
    const-string/jumbo v0, "DATA_CONNECTED"

    goto :goto_6

    .line 1190
    :pswitch_b
    const-string/jumbo v0, "DATA_CONNECTING"

    goto :goto_6

    .line 1194
    :pswitch_f
    const-string/jumbo v0, "DATA_DISCONNECTED"

    goto :goto_6

    .line 1184
    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_f
        :pswitch_b
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1173
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1174
    const-string/jumbo v1, ", status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;->mStatus:I

    invoke-direct {p0, v2}, Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;->statusToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1175
    const-string/jumbo v1, ", isSendReq: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;->isSendReq:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1176
    const-string/jumbo v1, ", ifaceName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;->ifaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1178
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
