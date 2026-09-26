.class Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;
.super Lcom/mediatek/wfo/WifiOffloadManager$Listener;
.source "ImsCallSessionProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsCallSessionProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IWifiOffloadListenerProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/ImsCallSessionProxy;


# direct methods
.method private constructor <init>(Lcom/mediatek/ims/ImsCallSessionProxy;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .prologue
    .line 2257
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-direct {p0}, Lcom/mediatek/wfo/WifiOffloadManager$Listener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/ims/ImsCallSessionProxy;Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;)V
    .registers 3
    .param p1, "this$0"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;-><init>(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    return-void
.end method


# virtual methods
.method public onHandover(II)V
    .registers 8
    .param p1, "stage"    # I
    .param p2, "ratType"    # I

    .prologue
    .line 2260
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get26(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v1

    if-eq p2, v1, :cond_a

    if-nez p1, :cond_b

    .line 2261
    :cond_a
    return-void

    .line 2263
    :cond_b
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get18(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 2266
    :try_start_13
    const-string/jumbo v1, "ImsCallSessionProxy"

    const-string/jumbo v2, "onHandover"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2268
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get18(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get26(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v3

    .line 2269
    new-instance v4, Lcom/android/ims/ImsReasonInfo;

    invoke-direct {v4}, Lcom/android/ims/ImsReasonInfo;-><init>()V

    .line 2268
    invoke-interface {v1, v2, v3, p2, v4}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionHandover(Lcom/android/ims/internal/IImsCallSession;IILcom/android/ims/ImsReasonInfo;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_32} :catch_38

    .line 2274
    :cond_32
    :goto_32
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1, p2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-set12(Lcom/mediatek/ims/ImsCallSessionProxy;I)I

    .line 2259
    return-void

    .line 2270
    :catch_38
    move-exception v0

    .line 2271
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ImsCallSessionProxy"

    const-string/jumbo v2, "RemoteException onHandover()"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32
.end method

.method public onRequestImsSwitch(IZ)V
    .registers 3
    .param p1, "simIdx"    # I
    .param p2, "isImsOn"    # Z

    .prologue
    .line 2278
    return-void
.end method
