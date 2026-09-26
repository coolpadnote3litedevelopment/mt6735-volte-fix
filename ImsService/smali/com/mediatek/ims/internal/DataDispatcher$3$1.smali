.class Lcom/mediatek/ims/internal/DataDispatcher$3$1;
.super Landroid/os/Handler;
.source "DataDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ims/internal/DataDispatcher$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/ims/internal/DataDispatcher$3;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/internal/DataDispatcher$3;)V
    .registers 2
    .param p1, "this$1"    # Lcom/mediatek/ims/internal/DataDispatcher$3;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/mediatek/ims/internal/DataDispatcher$3$1;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$3;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized handleMessage(Landroid/os/Message;)V
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    monitor-enter p0

    .line 306
    :try_start_1
    iget-object v5, p0, Lcom/mediatek/ims/internal/DataDispatcher$3$1;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$3;

    iget-object v5, v5, Lcom/mediatek/ims/internal/DataDispatcher$3;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v5}, Lcom/mediatek/ims/internal/DataDispatcher;->-get2(Lcom/mediatek/ims/internal/DataDispatcher;)Z

    move-result v5

    if-nez v5, :cond_2d

    .line 307
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "receives message ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 308
    const-string/jumbo v6, "] but DataDispatcher is not enabled, ignore"

    .line 307
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/ims/internal/DataDispatcher;->-wrap10(Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_a4

    monitor-exit p0

    .line 309
    return-void

    .line 312
    :cond_2d
    :try_start_2d
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v5, v5, Lcom/mediatek/ims/ImsAdapter$VaEvent;

    if-eqz v5, :cond_bd

    .line 313
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .line 314
    .local v1, "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "receives request ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getDataLen()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 315
    const-string/jumbo v6, ", phoneId: "

    .line 314
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 315
    invoke-virtual {v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getPhoneId()I

    move-result v6

    .line 314
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 315
    const-string/jumbo v6, "]"

    .line 314
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/ims/internal/DataDispatcher;->-wrap9(Ljava/lang/String;)V

    .line 316
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_15a

    .line 328
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "receives unhandled message ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/ims/internal/DataDispatcher;->-wrap9(Ljava/lang/String;)V
    :try_end_9a
    .catchall {:try_start_2d .. :try_end_9a} :catchall_a4

    .end local v1    # "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    :goto_9a
    monitor-exit p0

    .line 305
    return-void

    .line 318
    .restart local v1    # "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    :sswitch_9c
    :try_start_9c
    iget-object v5, p0, Lcom/mediatek/ims/internal/DataDispatcher$3$1;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$3;

    iget-object v5, v5, Lcom/mediatek/ims/internal/DataDispatcher$3;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v5, v1}, Lcom/mediatek/ims/internal/DataDispatcher;->-wrap5(Lcom/mediatek/ims/internal/DataDispatcher;Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    :try_end_a3
    .catchall {:try_start_9c .. :try_end_a3} :catchall_a4

    goto :goto_9a

    .end local v1    # "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    :catchall_a4
    move-exception v5

    monitor-exit p0

    throw v5

    .line 322
    .restart local v1    # "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    :sswitch_a7
    :try_start_a7
    iget-object v5, p0, Lcom/mediatek/ims/internal/DataDispatcher$3$1;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$3;

    iget-object v5, v5, Lcom/mediatek/ims/internal/DataDispatcher$3;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v5, v1}, Lcom/mediatek/ims/internal/DataDispatcher;->-wrap7(Lcom/mediatek/ims/internal/DataDispatcher;Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    goto :goto_9a

    .line 325
    :sswitch_af
    iget-object v5, p0, Lcom/mediatek/ims/internal/DataDispatcher$3$1;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$3;

    iget-object v5, v5, Lcom/mediatek/ims/internal/DataDispatcher$3;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-virtual {v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v6

    const/high16 v7, 0x10000

    invoke-static {v5, v6, v7}, Lcom/mediatek/ims/internal/DataDispatcher;->-wrap12(Lcom/mediatek/ims/internal/DataDispatcher;II)V

    goto :goto_9a

    .line 331
    .end local v1    # "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    :cond_bd
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "receives request ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/ims/internal/DataDispatcher;->-wrap9(Ljava/lang/String;)V

    .line 332
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_168

    .line 359
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "receives unhandled message ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/ims/internal/DataDispatcher;->-wrap9(Ljava/lang/String;)V

    goto :goto_9a

    .line 334
    :sswitch_103
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/Network;

    .line 335
    .local v2, "network":Landroid/net/Network;
    iget-object v5, p0, Lcom/mediatek/ims/internal/DataDispatcher$3$1;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$3;

    iget-object v5, v5, Lcom/mediatek/ims/internal/DataDispatcher$3;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    .line 336
    iget-object v6, p0, Lcom/mediatek/ims/internal/DataDispatcher$3$1;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$3;

    iget-object v6, v6, Lcom/mediatek/ims/internal/DataDispatcher$3;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-static {v6, v7}, Lcom/mediatek/ims/internal/DataDispatcher;->-wrap4(Lcom/mediatek/ims/internal/DataDispatcher;I)Ljava/lang/String;

    move-result-object v6

    .line 335
    invoke-static {v5, v2, v6}, Lcom/mediatek/ims/internal/DataDispatcher;->-wrap6(Lcom/mediatek/ims/internal/DataDispatcher;Landroid/net/Network;Ljava/lang/String;)V

    goto :goto_9a

    .line 341
    .end local v2    # "network":Landroid/net/Network;
    :sswitch_119
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/telephony/PreciseDataConnectionState;

    .line 342
    .local v4, "state":Landroid/telephony/PreciseDataConnectionState;
    iget-object v5, p0, Lcom/mediatek/ims/internal/DataDispatcher$3$1;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$3;

    iget-object v5, v5, Lcom/mediatek/ims/internal/DataDispatcher$3;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v5, v4}, Lcom/mediatek/ims/internal/DataDispatcher;->-wrap8(Lcom/mediatek/ims/internal/DataDispatcher;Landroid/telephony/PreciseDataConnectionState;)V

    goto/16 :goto_9a

    .line 346
    .end local v4    # "state":Landroid/telephony/PreciseDataConnectionState;
    :sswitch_126
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;

    .line 347
    .local v3, "param":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    iget-object v5, p0, Lcom/mediatek/ims/internal/DataDispatcher$3$1;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$3;

    iget-object v5, v5, Lcom/mediatek/ims/internal/DataDispatcher$3;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    const/high16 v6, 0x10000

    .line 348
    const/16 v7, 0x1388

    .line 347
    invoke-static {v5, v3, v6, v7}, Lcom/mediatek/ims/internal/DataDispatcher;->-wrap11(Lcom/mediatek/ims/internal/DataDispatcher;Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;II)V

    goto/16 :goto_9a

    .line 352
    .end local v3    # "param":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    :sswitch_137
    const-string/jumbo v5, "deactive PDN timeout, clear transation of  IMCB"

    invoke-static {v5}, Lcom/mediatek/ims/internal/DataDispatcher;->-wrap9(Ljava/lang/String;)V

    .line 353
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;

    .line 354
    .local v0, "apnStatus":Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;
    iget-object v5, p0, Lcom/mediatek/ims/internal/DataDispatcher$3$1;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$3;

    iget-object v5, v5, Lcom/mediatek/ims/internal/DataDispatcher$3;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    iget-object v6, p0, Lcom/mediatek/ims/internal/DataDispatcher$3$1;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$3;

    iget-object v6, v6, Lcom/mediatek/ims/internal/DataDispatcher$3;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    .line 356
    iget-object v7, v0, Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;->mName:Ljava/lang/String;

    .line 355
    const v8, 0xdbbab

    .line 354
    invoke-virtual {v6, v8, v7}, Lcom/mediatek/ims/internal/DataDispatcher;->findTransaction(ILjava/lang/String;)Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;

    move-result-object v6

    .line 356
    iget-object v7, v0, Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;->ifaceName:Ljava/lang/String;

    const/4 v8, 0x0

    .line 354
    invoke-static {v5, v6, v8, v7}, Lcom/mediatek/ims/internal/DataDispatcher;->-wrap13(Lcom/mediatek/ims/internal/DataDispatcher;Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;ILjava/lang/String;)V
    :try_end_158
    .catchall {:try_start_a7 .. :try_end_158} :catchall_a4

    goto/16 :goto_9a

    .line 316
    :sswitch_data_15a
    .sparse-switch
        0xdbba8 -> :sswitch_9c
        0xdbbab -> :sswitch_a7
        0xdbd33 -> :sswitch_af
    .end sparse-switch

    .line 332
    :sswitch_data_168
    .sparse-switch
        0x1b58 -> :sswitch_103
        0x1bbc -> :sswitch_119
        0x1c20 -> :sswitch_137
        0x1c84 -> :sswitch_126
    .end sparse-switch
.end method
