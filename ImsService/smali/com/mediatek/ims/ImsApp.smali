.class public Lcom/mediatek/ims/ImsApp;
.super Landroid/app/Application;
.source "ImsApp.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImsApp"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 5

    .prologue
    .line 57
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-nez v1, :cond_28

    .line 58
    const-string/jumbo v1, "ImsApp"

    const-string/jumbo v2, "ImsApp onCreate begin"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance v0, Lcom/mediatek/ims/ImsService;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/ImsService;-><init>(Landroid/content/Context;)V

    .line 63
    .local v0, "imsService":Lcom/mediatek/ims/ImsService;
    const-string/jumbo v1, "ims"

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 65
    const-string/jumbo v1, "ImsApp"

    const-string/jumbo v2, "ImsApp onCreate end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .end local v0    # "imsService":Lcom/mediatek/ims/ImsService;
    :cond_28
    return-void
.end method
