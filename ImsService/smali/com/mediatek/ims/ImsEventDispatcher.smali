.class public Lcom/mediatek/ims/ImsEventDispatcher;
.super Landroid/os/Handler;
.source "ImsEventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/ImsEventDispatcher$VaEventDispatcher;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "[ImsEventDispatcher]"


# instance fields
.field private mCallControlDispatcher:Lcom/mediatek/ims/internal/CallControlDispatcher;

.field private mContext:Landroid/content/Context;

.field private mDataDispatcher:Lcom/mediatek/ims/internal/DataDispatcher;

.field private mSimservsDispatcher:Lcom/mediatek/ims/internal/ImsSimservsDispatcher;

.field private mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

.field private mTimerDispatcher:Lcom/mediatek/ims/internal/TimerDispatcher;

.field private mVaEventDispatcher:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/ims/ImsEventDispatcher$VaEventDispatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/ims/ImsAdapter$VaSocketIO;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "IO"    # Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mVaEventDispatcher:Ljava/util/ArrayList;

    .line 67
    iput-object p1, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mContext:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    .line 70
    invoke-direct {p0}, Lcom/mediatek/ims/ImsEventDispatcher;->createDispatcher()V

    .line 66
    return-void
.end method

.method private createDispatcher()V
    .registers 4

    .prologue
    .line 101
    new-instance v0, Lcom/mediatek/ims/internal/CallControlDispatcher;

    iget-object v1, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ims/internal/CallControlDispatcher;-><init>(Landroid/content/Context;Lcom/mediatek/ims/ImsAdapter$VaSocketIO;)V

    iput-object v0, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mCallControlDispatcher:Lcom/mediatek/ims/internal/CallControlDispatcher;

    .line 102
    iget-object v0, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mVaEventDispatcher:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mCallControlDispatcher:Lcom/mediatek/ims/internal/CallControlDispatcher;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance v0, Lcom/mediatek/ims/internal/DataDispatcher;

    iget-object v1, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ims/internal/DataDispatcher;-><init>(Landroid/content/Context;Lcom/mediatek/ims/ImsAdapter$VaSocketIO;)V

    iput-object v0, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mDataDispatcher:Lcom/mediatek/ims/internal/DataDispatcher;

    .line 105
    iget-object v0, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mVaEventDispatcher:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mDataDispatcher:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v0, Lcom/mediatek/ims/internal/TimerDispatcher;

    iget-object v1, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ims/internal/TimerDispatcher;-><init>(Landroid/content/Context;Lcom/mediatek/ims/ImsAdapter$VaSocketIO;)V

    iput-object v0, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mTimerDispatcher:Lcom/mediatek/ims/internal/TimerDispatcher;

    .line 108
    iget-object v0, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mVaEventDispatcher:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mTimerDispatcher:Lcom/mediatek/ims/internal/TimerDispatcher;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v0, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;

    iget-object v1, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;-><init>(Landroid/content/Context;Lcom/mediatek/ims/ImsAdapter$VaSocketIO;)V

    iput-object v0, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mSimservsDispatcher:Lcom/mediatek/ims/internal/ImsSimservsDispatcher;

    .line 111
    iget-object v0, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mVaEventDispatcher:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mSimservsDispatcher:Lcom/mediatek/ims/internal/ImsSimservsDispatcher;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    return-void
.end method


# virtual methods
.method disableRequest()V
    .registers 4

    .prologue
    .line 86
    iget-object v2, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mVaEventDispatcher:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "dispatcher$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ImsEventDispatcher$VaEventDispatcher;

    .line 87
    .local v0, "dispatcher":Lcom/mediatek/ims/ImsEventDispatcher$VaEventDispatcher;
    invoke-interface {v0}, Lcom/mediatek/ims/ImsEventDispatcher$VaEventDispatcher;->disableRequest()V

    goto :goto_6

    .line 85
    .end local v0    # "dispatcher":Lcom/mediatek/ims/ImsEventDispatcher$VaEventDispatcher;
    :cond_16
    return-void
.end method

.method dispatchCallback(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .registers 5
    .param p1, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .prologue
    .line 121
    const-string/jumbo v0, "[ImsEventDispatcher]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dispatchCallback: request ID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getRequestID()I

    move-result v2

    invoke-static {v2}, Lcom/mediatek/ims/ImsAdapter;->requestIdToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getRequestID()I

    move-result v0

    sparse-switch v0, :sswitch_data_4c

    .line 145
    const-string/jumbo v0, "[ImsEventDispatcher]"

    const-string/jumbo v1, "Receive unsupported Request ID"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :goto_32
    return-void

    .line 125
    :sswitch_33
    iget-object v0, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mSimservsDispatcher:Lcom/mediatek/ims/internal/ImsSimservsDispatcher;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;->vaEventCallback(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    goto :goto_32

    .line 129
    :sswitch_39
    iget-object v0, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mCallControlDispatcher:Lcom/mediatek/ims/internal/CallControlDispatcher;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/CallControlDispatcher;->vaEventCallback(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    goto :goto_32

    .line 136
    :sswitch_3f
    iget-object v0, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mDataDispatcher:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/DataDispatcher;->vaEventCallback(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    goto :goto_32

    .line 141
    :sswitch_45
    iget-object v0, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mTimerDispatcher:Lcom/mediatek/ims/internal/TimerDispatcher;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/TimerDispatcher;->vaEventCallback(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    goto :goto_32

    .line 123
    nop

    :sswitch_data_4c
    .sparse-switch
        0xdbba2 -> :sswitch_3f
        0xdbba8 -> :sswitch_3f
        0xdbbab -> :sswitch_3f
        0xdbc69 -> :sswitch_45
        0xdbc6a -> :sswitch_45
        0xdbd31 -> :sswitch_33
        0xdbd32 -> :sswitch_39
        0xdbd33 -> :sswitch_3f
    .end sparse-switch
.end method

.method enableRequest()V
    .registers 4

    .prologue
    .line 80
    iget-object v2, p0, Lcom/mediatek/ims/ImsEventDispatcher;->mVaEventDispatcher:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "dispatcher$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ImsEventDispatcher$VaEventDispatcher;

    .line 81
    .local v0, "dispatcher":Lcom/mediatek/ims/ImsEventDispatcher$VaEventDispatcher;
    invoke-interface {v0}, Lcom/mediatek/ims/ImsEventDispatcher$VaEventDispatcher;->enableRequest()V

    goto :goto_6

    .line 79
    .end local v0    # "dispatcher":Lcom/mediatek/ims/ImsEventDispatcher$VaEventDispatcher;
    :cond_16
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 116
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mediatek/ims/ImsAdapter$VaEvent;

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ImsEventDispatcher;->dispatchCallback(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    .line 115
    return-void
.end method
