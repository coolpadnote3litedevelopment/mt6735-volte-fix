.class Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;
.super Lcom/mediatek/wfo/WifiOffloadManager$Listener;
.source "ImsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IWifiOffloadListenerProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/ImsService;


# direct methods
.method private constructor <init>(Lcom/mediatek/ims/ImsService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/ims/ImsService;

    .prologue
    .line 820
    iput-object p1, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-direct {p0}, Lcom/mediatek/wfo/WifiOffloadManager$Listener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/ims/ImsService;Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;)V
    .registers 3
    .param p1, "this$0"    # Lcom/mediatek/ims/ImsService;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;-><init>(Lcom/mediatek/ims/ImsService;)V

    return-void
.end method


# virtual methods
.method public onHandover(II)V
    .registers 5
    .param p1, "stage"    # I
    .param p2, "ratType"    # I

    .prologue
    .line 825
    const-string/jumbo v0, "ImsService"

    const-string/jumbo v1, "onHandover"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    iget-object v0, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0, p2}, Lcom/mediatek/ims/ImsService;->-set5(Lcom/mediatek/ims/ImsService;I)I

    .line 830
    const/4 v0, 0x1

    if-ne p1, v0, :cond_24

    .line 831
    iget-object v0, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->-get6(Lcom/mediatek/ims/ImsService;)I

    move-result v0

    if-nez v0, :cond_24

    .line 832
    iget-object v0, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    iget-object v1, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v1}, Lcom/mediatek/ims/ImsService;->-get4(Lcom/mediatek/ims/ImsService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/ImsService;->-wrap7(Lcom/mediatek/ims/ImsService;I)V

    .line 823
    :cond_24
    return-void
.end method

.method public onRequestImsSwitch(IZ)V
    .registers 8
    .param p1, "simIdx"    # I
    .param p2, "isImsOn"    # Z

    .prologue
    const/4 v4, 0x3

    .line 839
    iget-object v1, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v1}, Lcom/mediatek/ims/ImsService;->-wrap2(Lcom/mediatek/ims/ImsService;)I

    move-result v0

    .line 842
    .local v0, "phoneId":I
    const-string/jumbo v1, "ImsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onRequestImsSwitch simIdx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 843
    const-string/jumbo v3, " isImsOn="

    .line 842
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 843
    const-string/jumbo v3, " mainCapability id="

    .line 842
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    iget-object v1, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v1}, Lcom/mediatek/ims/ImsService;->-get0(Lcom/mediatek/ims/ImsService;)I

    move-result v1

    if-eq v1, v0, :cond_44

    .line 847
    iget-object v1, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v1, v0}, Lcom/mediatek/ims/ImsService;->-set0(Lcom/mediatek/ims/ImsService;I)I

    .line 850
    :cond_44
    if-eqz p2, :cond_73

    .line 851
    iget-object v1, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v1}, Lcom/mediatek/ims/ImsService;->-get8(Lcom/mediatek/ims/ImsService;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_69

    .line 852
    iget-object v1, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v1}, Lcom/mediatek/ims/ImsService;->-get5(Lcom/mediatek/ims/ImsService;)Lcom/mediatek/ims/ImsRILAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v2}, Lcom/mediatek/ims/ImsService;->-get2(Lcom/mediatek/ims/ImsService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ImsRILAdapter;->turnOnIms(Landroid/os/Message;)V

    .line 853
    iget-object v1, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/mediatek/ims/ImsService;->-set4(Lcom/mediatek/ims/ImsService;I)I

    .line 837
    :goto_68
    return-void

    .line 855
    :cond_69
    const-string/jumbo v1, "ImsService"

    const-string/jumbo v2, "Ims already enable and ignore to send AT command."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_68

    .line 858
    :cond_73
    iget-object v1, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v1}, Lcom/mediatek/ims/ImsService;->-get8(Lcom/mediatek/ims/ImsService;)I

    move-result v1

    if-eqz v1, :cond_95

    .line 859
    iget-object v1, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v1}, Lcom/mediatek/ims/ImsService;->-get5(Lcom/mediatek/ims/ImsService;)Lcom/mediatek/ims/ImsRILAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v2}, Lcom/mediatek/ims/ImsService;->-get2(Lcom/mediatek/ims/ImsService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ImsRILAdapter;->turnOffIms(Landroid/os/Message;)V

    .line 860
    iget-object v1, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v1, v4}, Lcom/mediatek/ims/ImsService;->-set4(Lcom/mediatek/ims/ImsService;I)I

    goto :goto_68

    .line 862
    :cond_95
    const-string/jumbo v1, "ImsService"

    const-string/jumbo v2, "Ims already disabled and ignore to send AT command."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_68
.end method
