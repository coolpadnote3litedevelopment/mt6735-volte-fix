.class public abstract Lcom/mediatek/wfo/WifiOffloadManager$Listener;
.super Lcom/mediatek/wfo/IWifiOffloadListener$Stub;
.source "WifiOffloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfo/WifiOffloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Listener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/mediatek/wfo/IWifiOffloadListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandover(II)V
    .registers 3
    .param p1, "stage"    # I
    .param p2, "ratType"    # I

    .prologue
    .line 48
    return-void
.end method

.method public onRequestImsSwitch(IZ)V
    .registers 3
    .param p1, "simIdx"    # I
    .param p2, "isImsOn"    # Z

    .prologue
    .line 52
    return-void
.end method

.method public onRoveOut(ZI)V
    .registers 3
    .param p1, "roveOut"    # Z
    .param p2, "rssi"    # I

    .prologue
    .line 50
    return-void
.end method
