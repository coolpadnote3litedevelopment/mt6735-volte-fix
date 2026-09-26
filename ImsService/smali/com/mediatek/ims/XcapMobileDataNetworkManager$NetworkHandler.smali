.class Lcom/mediatek/ims/XcapMobileDataNetworkManager$NetworkHandler;
.super Landroid/os/Handler;
.source "XcapMobileDataNetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/XcapMobileDataNetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/XcapMobileDataNetworkManager;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/XcapMobileDataNetworkManager;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/mediatek/ims/XcapMobileDataNetworkManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager$NetworkHandler;->this$0:Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    .line 202
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 201
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 207
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_40

    .line 206
    return-void

    .line 209
    :pswitch_6
    const-string/jumbo v0, "XcapMobileDataNetworkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ready to release network: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager$NetworkHandler;->this$0:Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    invoke-static {v2}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->-get0(Lcom/mediatek/ims/XcapMobileDataNetworkManager;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager$NetworkHandler;->this$0:Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    invoke-static {v0}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->-get0(Lcom/mediatek/ims/XcapMobileDataNetworkManager;)Landroid/net/Network;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 211
    iget-object v0, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager$NetworkHandler;->this$0:Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    iget-object v1, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager$NetworkHandler;->this$0:Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    invoke-static {v1}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->-get1(Lcom/mediatek/ims/XcapMobileDataNetworkManager;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->-wrap0(Lcom/mediatek/ims/XcapMobileDataNetworkManager;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 212
    iget-object v0, p0, Lcom/mediatek/ims/XcapMobileDataNetworkManager$NetworkHandler;->this$0:Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    invoke-static {v0}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->-wrap1(Lcom/mediatek/ims/XcapMobileDataNetworkManager;)V

    .line 214
    :cond_3e
    return-void

    .line 207
    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method
