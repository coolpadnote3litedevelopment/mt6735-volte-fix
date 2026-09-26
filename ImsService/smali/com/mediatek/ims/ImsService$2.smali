.class Lcom/mediatek/ims/ImsService$2;
.super Landroid/database/ContentObserver;
.source "ImsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ims/ImsService;->registerForWfcPreferenceChange(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/ImsService;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/ImsService;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/mediatek/ims/ImsService;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 1064
    iput-object p1, p0, Lcom/mediatek/ims/ImsService$2;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 1068
    const-string/jumbo v0, "wfc_ims_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/ims/ImsService$2;->onChange(ZLandroid/net/Uri;)V

    .line 1067
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 9
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1074
    const-string/jumbo v3, "wfc_ims_mode"

    .line 1073
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1075
    .local v0, "i":Landroid/net/Uri;
    iget-object v3, p0, Lcom/mediatek/ims/ImsService$2;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->-get1(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1076
    const-string/jumbo v4, "wfc_ims_mode"

    .line 1077
    const/4 v5, 0x2

    .line 1075
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1078
    .local v2, "wfc_preference":I
    iget-object v3, p0, Lcom/mediatek/ims/ImsService$2;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3, v2}, Lcom/mediatek/ims/ImsService;->-wrap3(Lcom/mediatek/ims/ImsService;I)I

    move-result v1

    .line 1079
    .local v1, "ril_wfc_preference":I
    const-string/jumbo v3, "ImsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", db_uri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    const-string/jumbo v3, "ImsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "wfc_preference:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    if-eqz v0, :cond_6f

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 1083
    iget-object v3, p0, Lcom/mediatek/ims/ImsService$2;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->-get5(Lcom/mediatek/ims/ImsService;)Lcom/mediatek/ims/ImsRILAdapter;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mediatek/ims/ImsRILAdapter;->sendWfcProfileInfo(I)V

    .line 1072
    :cond_6f
    return-void
.end method
