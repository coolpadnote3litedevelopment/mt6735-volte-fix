.class Lcom/mediatek/ims/ImsService$IWifiOffloadServiceDeathRecipient;
.super Ljava/lang/Object;
.source "ImsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IWifiOffloadServiceDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/ImsService;


# direct methods
.method private constructor <init>(Lcom/mediatek/ims/ImsService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/ims/ImsService;

    .prologue
    .line 924
    iput-object p1, p0, Lcom/mediatek/ims/ImsService$IWifiOffloadServiceDeathRecipient;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/ims/ImsService;Lcom/mediatek/ims/ImsService$IWifiOffloadServiceDeathRecipient;)V
    .registers 3
    .param p1, "this$0"    # Lcom/mediatek/ims/ImsService;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsService$IWifiOffloadServiceDeathRecipient;-><init>(Lcom/mediatek/ims/ImsService;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 2

    .prologue
    .line 927
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->-set7(Lcom/mediatek/wfo/IWifiOffloadService;)Lcom/mediatek/wfo/IWifiOffloadService;

    .line 926
    return-void
.end method
