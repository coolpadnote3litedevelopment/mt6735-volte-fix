.class Lcom/mediatek/ims/internal/DataDispatcher$4;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "DataDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/DataDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/internal/DataDispatcher;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/internal/DataDispatcher;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/ims/internal/DataDispatcher;

    .prologue
    .line 768
    iput-object p1, p0, Lcom/mediatek/ims/internal/DataDispatcher$4;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 8
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 772
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$4;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->-wrap0(Lcom/mediatek/ims/internal/DataDispatcher;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 773
    .local v0, "netInfo":Landroid/net/NetworkInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAvailable: networInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->-wrap9(Ljava/lang/String;)V

    .line 775
    const-string/jumbo v1, "connected"

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 776
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$4;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcher;->-get1(Lcom/mediatek/ims/internal/DataDispatcher;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$4;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v2}, Lcom/mediatek/ims/internal/DataDispatcher;->-get1(Lcom/mediatek/ims/internal/DataDispatcher;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x1b58

    .line 777
    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 776
    invoke-virtual {v2, v3, v4, v5, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 771
    :goto_45
    return-void

    .line 779
    :cond_46
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$4;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    .line 780
    iget-object v2, p0, Lcom/mediatek/ims/internal/DataDispatcher$4;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    .line 781
    const-string/jumbo v3, "ims"

    .line 780
    const v4, 0xdbba8

    invoke-virtual {v2, v4, v3}, Lcom/mediatek/ims/internal/DataDispatcher;->findTransaction(ILjava/lang/String;)Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;

    move-result-object v2

    .line 781
    const/high16 v3, 0x10000

    .line 782
    const/16 v4, 0x1388

    .line 779
    invoke-static {v1, v2, v3, v4}, Lcom/mediatek/ims/internal/DataDispatcher;->-wrap11(Lcom/mediatek/ims/internal/DataDispatcher;Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;II)V

    goto :goto_45
.end method
