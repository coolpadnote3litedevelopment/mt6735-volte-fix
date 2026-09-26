.class Lcom/mediatek/ims/internal/TimerDispatcher$1;
.super Landroid/content/BroadcastReceiver;
.source "TimerDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/TimerDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/internal/TimerDispatcher;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/internal/TimerDispatcher;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/ims/internal/TimerDispatcher;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/mediatek/ims/internal/TimerDispatcher$1;->this$0:Lcom/mediatek/ims/internal/TimerDispatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 79
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_90

    .line 80
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.android.internal.telephony.volte_timer_alarm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_72

    .line 81
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 82
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_54

    .line 83
    const-string/jumbo v3, "timer_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 84
    .local v1, "timer_id":I
    const-string/jumbo v3, "user_data"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 86
    .local v2, "user_data":I
    iget-object v3, p0, Lcom/mediatek/ims/internal/TimerDispatcher$1;->this$0:Lcom/mediatek/ims/internal/TimerDispatcher;

    const v4, 0xdbc6b

    invoke-static {v3, v4, v1, v2}, Lcom/mediatek/ims/internal/TimerDispatcher;->-wrap0(Lcom/mediatek/ims/internal/TimerDispatcher;III)V

    .line 88
    iget-object v3, p0, Lcom/mediatek/ims/internal/TimerDispatcher$1;->this$0:Lcom/mediatek/ims/internal/TimerDispatcher;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "timer timeout, timer_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", user_data = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/ims/internal/TimerDispatcher;->log(Ljava/lang/String;)V

    .line 78
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "timer_id":I
    .end local v2    # "user_data":I
    :goto_53
    return-void

    .line 91
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_54
    iget-object v3, p0, Lcom/mediatek/ims/internal/TimerDispatcher$1;->this$0:Lcom/mediatek/ims/internal/TimerDispatcher;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "receive intent = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/ims/internal/TimerDispatcher;->log(Ljava/lang/String;)V

    goto :goto_53

    .line 94
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_72
    iget-object v3, p0, Lcom/mediatek/ims/internal/TimerDispatcher$1;->this$0:Lcom/mediatek/ims/internal/TimerDispatcher;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "receive intent = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/ims/internal/TimerDispatcher;->log(Ljava/lang/String;)V

    goto :goto_53

    .line 97
    :cond_90
    iget-object v3, p0, Lcom/mediatek/ims/internal/TimerDispatcher$1;->this$0:Lcom/mediatek/ims/internal/TimerDispatcher;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "receive intent = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/ims/internal/TimerDispatcher;->log(Ljava/lang/String;)V

    goto :goto_53
.end method
