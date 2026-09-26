.class Lcom/mediatek/ims/XcapMobileDataNetworkManager$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "XcapMobileDataNetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ims/XcapMobileDataNetworkManager;->newRequest(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/XcapMobileDataNetworkManager;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/XcapMobileDataNetworkManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager$1;->this$0:Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 5
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 253
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 254
    const-string/jumbo v0, "XcapMobileDataNetworkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "NetworkCallbackListener.onAvailable: network="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v1, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager$1;->this$0:Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    monitor-enter v1

    .line 256
    :try_start_20
    iget-object v0, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager$1;->this$0:Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    invoke-static {v0, p1}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->-set0(Lcom/mediatek/ims/XcapMobileDataNetworkManager;Landroid/net/Network;)Landroid/net/Network;

    .line 257
    iget-object v0, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager$1;->this$0:Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    invoke-virtual {v0}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->notifyAll()V
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_2c

    monitor-exit v1

    .line 252
    return-void

    .line 255
    :catchall_2c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 5
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 263
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 264
    const-string/jumbo v0, "XcapMobileDataNetworkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "NetworkCallbackListener.onLost: network="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v1, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager$1;->this$0:Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    monitor-enter v1

    .line 266
    :try_start_20
    iget-object v0, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager$1;->this$0:Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    invoke-static {v0, p0}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->-wrap0(Lcom/mediatek/ims/XcapMobileDataNetworkManager;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 267
    iget-object v0, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager$1;->this$0:Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    invoke-static {v0}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->-get1(Lcom/mediatek/ims/XcapMobileDataNetworkManager;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v0

    if-ne v0, p0, :cond_32

    .line 268
    iget-object v0, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager$1;->this$0:Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    invoke-static {v0}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->-wrap1(Lcom/mediatek/ims/XcapMobileDataNetworkManager;)V

    .line 270
    :cond_32
    iget-object v0, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager$1;->this$0:Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    invoke-virtual {v0}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->notifyAll()V
    :try_end_37
    .catchall {:try_start_20 .. :try_end_37} :catchall_39

    monitor-exit v1

    .line 262
    return-void

    .line 265
    :catchall_39
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onUnavailable()V
    .registers 3

    .prologue
    .line 276
    invoke-super {p0}, Landroid/net/ConnectivityManager$NetworkCallback;->onUnavailable()V

    .line 277
    const-string/jumbo v0, "XcapMobileDataNetworkManager"

    const-string/jumbo v1, "NetworkCallbackListener.onUnavailable"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v1, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager$1;->this$0:Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    monitor-enter v1

    .line 279
    :try_start_f
    iget-object v0, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager$1;->this$0:Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    invoke-static {v0, p0}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->-wrap0(Lcom/mediatek/ims/XcapMobileDataNetworkManager;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 280
    iget-object v0, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager$1;->this$0:Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    invoke-static {v0}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->-get1(Lcom/mediatek/ims/XcapMobileDataNetworkManager;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v0

    if-ne v0, p0, :cond_21

    .line 281
    iget-object v0, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager$1;->this$0:Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    invoke-static {v0}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->-wrap1(Lcom/mediatek/ims/XcapMobileDataNetworkManager;)V

    .line 283
    :cond_21
    iget-object v0, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager$1;->this$0:Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    invoke-virtual {v0}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->notifyAll()V
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_28

    monitor-exit v1

    .line 275
    return-void

    .line 278
    :catchall_28
    move-exception v0

    monitor-exit v1

    throw v0
.end method
