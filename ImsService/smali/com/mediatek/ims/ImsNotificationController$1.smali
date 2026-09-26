.class Lcom/mediatek/ims/ImsNotificationController$1;
.super Landroid/content/BroadcastReceiver;
.source "ImsNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsNotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/ImsNotificationController;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/ImsNotificationController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/ims/ImsNotificationController;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/mediatek/ims/ImsNotificationController$1;->this$0:Lcom/mediatek/ims/ImsNotificationController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x0

    .line 67
    const-string/jumbo v2, "ImsNotificationController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Intent action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 71
    iget-object v2, p0, Lcom/mediatek/ims/ImsNotificationController$1;->this$0:Lcom/mediatek/ims/ImsNotificationController;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/mediatek/ims/ImsNotificationController;->-set0(Lcom/mediatek/ims/ImsNotificationController;Z)Z

    .line 72
    iget-object v2, p0, Lcom/mediatek/ims/ImsNotificationController$1;->this$0:Lcom/mediatek/ims/ImsNotificationController;

    invoke-static {v2}, Lcom/mediatek/ims/ImsNotificationController;->-wrap2(Lcom/mediatek/ims/ImsNotificationController;)V

    .line 76
    :goto_38
    const-string/jumbo v2, "ImsNotificationController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "on receive:screen lock:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ims/ImsNotificationController$1;->this$0:Lcom/mediatek/ims/ImsNotificationController;

    invoke-static {v4}, Lcom/mediatek/ims/ImsNotificationController;->-get0(Lcom/mediatek/ims/ImsNotificationController;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.android.ims.IMS_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9b

    .line 99
    iget-object v2, p0, Lcom/mediatek/ims/ImsNotificationController$1;->this$0:Lcom/mediatek/ims/ImsNotificationController;

    invoke-static {v2, p2}, Lcom/mediatek/ims/ImsNotificationController;->-wrap1(Lcom/mediatek/ims/ImsNotificationController;Landroid/content/Intent;)V

    .line 124
    :cond_6a
    :goto_6a
    const-string/jumbo v2, "ImsNotificationController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mPhoneType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ims/ImsNotificationController$1;->this$0:Lcom/mediatek/ims/ImsNotificationController;

    invoke-static {v4}, Lcom/mediatek/ims/ImsNotificationController;->-get2(Lcom/mediatek/ims/ImsNotificationController;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void

    .line 74
    :cond_8b
    iget-object v2, p0, Lcom/mediatek/ims/ImsNotificationController$1;->this$0:Lcom/mediatek/ims/ImsNotificationController;

    iget-object v3, p0, Lcom/mediatek/ims/ImsNotificationController$1;->this$0:Lcom/mediatek/ims/ImsNotificationController;

    invoke-static {v3}, Lcom/mediatek/ims/ImsNotificationController;->-get1(Lcom/mediatek/ims/ImsNotificationController;)Landroid/app/KeyguardManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/mediatek/ims/ImsNotificationController;->-set0(Lcom/mediatek/ims/ImsNotificationController;Z)Z

    goto :goto_38

    .line 100
    :cond_9b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.SUBSCRIPTION_PHONE_STATE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d9

    .line 105
    const-string/jumbo v2, "state"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "state":Ljava/lang/String;
    const-string/jumbo v2, "phoneType"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 108
    .local v0, "phoneType":I
    if-ne v0, v6, :cond_cd

    .line 109
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c8

    .line 110
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 109
    if-eqz v2, :cond_d3

    .line 111
    :cond_c8
    iget-object v2, p0, Lcom/mediatek/ims/ImsNotificationController$1;->this$0:Lcom/mediatek/ims/ImsNotificationController;

    invoke-static {v2, v6}, Lcom/mediatek/ims/ImsNotificationController;->-set1(Lcom/mediatek/ims/ImsNotificationController;I)I

    .line 116
    :cond_cd
    :goto_cd
    iget-object v2, p0, Lcom/mediatek/ims/ImsNotificationController$1;->this$0:Lcom/mediatek/ims/ImsNotificationController;

    invoke-static {v2, v1, v0}, Lcom/mediatek/ims/ImsNotificationController;->-wrap0(Lcom/mediatek/ims/ImsNotificationController;Ljava/lang/String;I)V

    goto :goto_6a

    .line 113
    :cond_d3
    iget-object v2, p0, Lcom/mediatek/ims/ImsNotificationController$1;->this$0:Lcom/mediatek/ims/ImsNotificationController;

    invoke-static {v2, v5}, Lcom/mediatek/ims/ImsNotificationController;->-set1(Lcom/mediatek/ims/ImsNotificationController;I)I

    goto :goto_cd

    .line 117
    .end local v0    # "phoneType":I
    .end local v1    # "state":Ljava/lang/String;
    :cond_d9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.android.ims.IMS_SERVICE_DOWN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ed

    .line 118
    iget-object v2, p0, Lcom/mediatek/ims/ImsNotificationController$1;->this$0:Lcom/mediatek/ims/ImsNotificationController;

    invoke-static {v2}, Lcom/mediatek/ims/ImsNotificationController;->-wrap5(Lcom/mediatek/ims/ImsNotificationController;)V

    goto/16 :goto_6a

    .line 119
    :cond_ed
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_101

    .line 120
    iget-object v2, p0, Lcom/mediatek/ims/ImsNotificationController$1;->this$0:Lcom/mediatek/ims/ImsNotificationController;

    invoke-static {v2}, Lcom/mediatek/ims/ImsNotificationController;->-wrap3(Lcom/mediatek/ims/ImsNotificationController;)V

    goto/16 :goto_6a

    .line 121
    :cond_101
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.USER_PRESENT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 122
    iget-object v2, p0, Lcom/mediatek/ims/ImsNotificationController$1;->this$0:Lcom/mediatek/ims/ImsNotificationController;

    invoke-static {v2}, Lcom/mediatek/ims/ImsNotificationController;->-wrap4(Lcom/mediatek/ims/ImsNotificationController;)V

    goto/16 :goto_6a
.end method
