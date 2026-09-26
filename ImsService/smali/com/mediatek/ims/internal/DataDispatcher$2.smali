.class Lcom/mediatek/ims/internal/DataDispatcher$2;
.super Landroid/content/BroadcastReceiver;
.source "DataDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/DataDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/internal/DataDispatcher;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/internal/DataDispatcher;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/ims/internal/DataDispatcher;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 27
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 163
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    .line 164
    .local v13, "action":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "onReceive, intent action is "

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mediatek/ims/internal/DataDispatcher;->-wrap9(Ljava/lang/String;)V

    .line 167
    const-string/jumbo v10, "android.intent.action.PRECISE_DATA_CONNECTION_STATE_CHANGED"

    .line 166
    invoke-virtual {v13, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1a9

    .line 168
    const-string/jumbo v10, "state"

    .line 169
    const/16 v20, -0x1

    .line 168
    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v10, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 170
    .local v5, "mState":I
    const-string/jumbo v10, "networkType"

    .line 171
    const/16 v20, 0x0

    .line 170
    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v10, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 172
    .local v6, "mNetworkType":I
    const-string/jumbo v10, "apnType"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 173
    .local v7, "mAPNType":Ljava/lang/String;
    const-string/jumbo v10, "apn"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 174
    .local v8, "mAPN":Ljava/lang/String;
    const-string/jumbo v10, "reason"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 175
    .local v9, "mReason":Ljava/lang/String;
    const-string/jumbo v10, "failCause"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 177
    .local v11, "mFailCause":Ljava/lang/String;
    new-instance v4, Landroid/telephony/PreciseDataConnectionState;

    .line 178
    const/4 v10, 0x0

    .line 177
    invoke-direct/range {v4 .. v11}, Landroid/telephony/PreciseDataConnectionState;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Ljava/lang/String;)V

    .line 180
    .local v4, "state":Landroid/telephony/PreciseDataConnectionState;
    const-string/jumbo v10, "ims"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_82

    .line 181
    const-string/jumbo v10, "emergency"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    .line 180
    if-eqz v10, :cond_db

    .line 182
    :cond_82
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "data state: "

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Landroid/telephony/PreciseDataConnectionState;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mediatek/ims/internal/DataDispatcher;->-wrap9(Ljava/lang/String;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v10}, Lcom/mediatek/ims/internal/DataDispatcher;->-get0(Lcom/mediatek/ims/internal/DataDispatcher;)Ljava/util/HashMap;

    move-result-object v20

    monitor-enter v20

    .line 185
    :try_start_aa
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v10}, Lcom/mediatek/ims/internal/DataDispatcher;->-get0(Lcom/mediatek/ims/internal/DataDispatcher;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;

    .line 186
    .local v14, "apnStatus":Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "ApnStatus: "

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mediatek/ims/internal/DataDispatcher;->-wrap9(Ljava/lang/String;)V

    .line 188
    packed-switch v5, :pswitch_data_416

    .line 218
    const-string/jumbo v10, "No handle the data status."

    invoke-static {v10}, Lcom/mediatek/ims/internal/DataDispatcher;->-wrap10(Ljava/lang/String;)V
    :try_end_da
    .catchall {:try_start_aa .. :try_end_da} :catchall_115

    :cond_da
    :goto_da
    monitor-exit v20

    .line 162
    .end local v4    # "state":Landroid/telephony/PreciseDataConnectionState;
    .end local v5    # "mState":I
    .end local v6    # "mNetworkType":I
    .end local v7    # "mAPNType":Ljava/lang/String;
    .end local v8    # "mAPN":Ljava/lang/String;
    .end local v9    # "mReason":Ljava/lang/String;
    .end local v11    # "mFailCause":Ljava/lang/String;
    .end local v14    # "apnStatus":Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;
    :cond_db
    :goto_db
    return-void

    .line 190
    .restart local v4    # "state":Landroid/telephony/PreciseDataConnectionState;
    .restart local v5    # "mState":I
    .restart local v6    # "mNetworkType":I
    .restart local v7    # "mAPNType":Ljava/lang/String;
    .restart local v8    # "mAPN":Ljava/lang/String;
    .restart local v9    # "mReason":Ljava/lang/String;
    .restart local v11    # "mFailCause":Ljava/lang/String;
    .restart local v14    # "apnStatus":Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;
    :pswitch_dc
    :try_start_dc
    iget v10, v14, Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;->mStatus:I

    if-nez v10, :cond_da

    .line 191
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "[ "

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 192
    const-string/jumbo v21, " ] setupData starting, remove timeout handler....."

    .line 191
    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mediatek/ims/internal/DataDispatcher;->-wrap9(Ljava/lang/String;)V

    .line 193
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v10}, Lcom/mediatek/ims/internal/DataDispatcher;->-get1(Lcom/mediatek/ims/internal/DataDispatcher;)Landroid/os/Handler;

    move-result-object v10

    const/16 v21, 0x1c84

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 194
    const/4 v10, 0x1

    iput v10, v14, Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;->mStatus:I
    :try_end_114
    .catchall {:try_start_dc .. :try_end_114} :catchall_115

    goto :goto_da

    .line 184
    .end local v14    # "apnStatus":Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;
    :catchall_115
    move-exception v10

    monitor-exit v20

    throw v10

    .line 200
    .restart local v14    # "apnStatus":Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;
    :pswitch_118
    :try_start_118
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v10, v9}, Lcom/mediatek/ims/internal/DataDispatcher;->-wrap2(Lcom/mediatek/ims/internal/DataDispatcher;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_12a

    .line 201
    if-eqz v11, :cond_181

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_181

    .line 202
    :cond_12a
    iget-boolean v10, v14, Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;->isSendReq:Z

    if-nez v10, :cond_136

    .line 203
    iget v10, v14, Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;->mStatus:I

    const/16 v21, 0x2

    move/from16 v0, v21

    if-ne v10, v0, :cond_da

    .line 205
    :cond_136
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "send [ "

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v0, v14, Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;->mName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 206
    const-string/jumbo v21, " ] disconnected notify to message queue"

    .line 205
    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mediatek/ims/internal/DataDispatcher;->-wrap9(Ljava/lang/String;)V

    .line 207
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v10}, Lcom/mediatek/ims/internal/DataDispatcher;->-get1(Lcom/mediatek/ims/internal/DataDispatcher;)Landroid/os/Handler;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/mediatek/ims/internal/DataDispatcher;->-get1(Lcom/mediatek/ims/internal/DataDispatcher;)Landroid/os/Handler;

    move-result-object v21

    .line 208
    const/16 v22, 0x1bbc

    .line 207
    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_da

    .line 211
    :cond_181
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Igonre, It is not data conneciton event mReason: "

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 213
    const-string/jumbo v21, " failCause: "

    .line 211
    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mediatek/ims/internal/DataDispatcher;->-wrap9(Ljava/lang/String;)V
    :try_end_1a7
    .catchall {:try_start_118 .. :try_end_1a7} :catchall_115

    goto/16 :goto_da

    .line 223
    .end local v4    # "state":Landroid/telephony/PreciseDataConnectionState;
    .end local v5    # "mState":I
    .end local v6    # "mNetworkType":I
    .end local v7    # "mAPNType":Ljava/lang/String;
    .end local v8    # "mAPN":Ljava/lang/String;
    .end local v9    # "mReason":Ljava/lang/String;
    .end local v11    # "mFailCause":Ljava/lang/String;
    .end local v14    # "apnStatus":Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;
    :cond_1a9
    const-string/jumbo v10, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_db

    .line 224
    const-string/jumbo v10, "phone"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v10, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 225
    .local v17, "phoneId":I
    const-string/jumbo v10, "subscription"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v10, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 226
    .local v19, "subId":I
    const-string/jumbo v10, "ss"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 227
    .local v18, "simState":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "phoneId: "

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v20, " subId: "

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v20, " sim state: "

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mediatek/ims/internal/DataDispatcher;->-wrap9(Ljava/lang/String;)V

    .line 229
    const-string/jumbo v10, "ABSENT"

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2ba

    .line 230
    invoke-static {}, Lcom/mediatek/ims/ImsAdapter$Util;->getDefaultVoltePhoneId()I

    move-result v10

    move/from16 v0, v17

    if-ne v0, v10, :cond_2ba

    .line 231
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v10}, Lcom/mediatek/ims/internal/DataDispatcher;->-get0(Lcom/mediatek/ims/internal/DataDispatcher;)Ljava/util/HashMap;

    move-result-object v20

    monitor-enter v20

    .line 232
    :try_start_22a
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v10}, Lcom/mediatek/ims/internal/DataDispatcher;->-get0(Lcom/mediatek/ims/internal/DataDispatcher;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "apnStatus$iterator":Ljava/util/Iterator;
    :cond_23a
    :goto_23a
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2b9

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;

    .line 233
    .restart local v14    # "apnStatus":Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "ApnStatus: "

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mediatek/ims/internal/DataDispatcher;->-wrap9(Ljava/lang/String;)V

    .line 234
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Sim is not ready, reset "

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v0, v14, Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;->mName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v21, " pdn status"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mediatek/ims/internal/DataDispatcher;->-wrap9(Ljava/lang/String;)V

    .line 235
    const/4 v10, 0x0

    iput v10, v14, Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;->mStatus:I

    .line 236
    const/4 v10, 0x0

    iput-boolean v10, v14, Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;->isSendReq:Z

    .line 237
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    .line 238
    iget-object v0, v14, Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;->mName:Ljava/lang/String;

    move-object/from16 v21, v0

    const v22, 0xdbbab

    .line 237
    move/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher;->findTransaction(ILjava/lang/String;)Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;

    move-result-object v16

    .line 239
    .local v16, "deacTrans":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    if-eqz v16, :cond_23a

    .line 240
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    .line 241
    iget-object v0, v14, Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;->ifaceName:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    .line 240
    move-object/from16 v0, v16

    move/from16 v1, v22

    move-object/from16 v2, v21

    invoke-static {v10, v0, v1, v2}, Lcom/mediatek/ims/internal/DataDispatcher;->-wrap13(Lcom/mediatek/ims/internal/DataDispatcher;Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;ILjava/lang/String;)V
    :try_end_2b5
    .catchall {:try_start_22a .. :try_end_2b5} :catchall_2b6

    goto :goto_23a

    .line 231
    .end local v14    # "apnStatus":Lcom/mediatek/ims/internal/DataDispatcher$ApnStatus;
    .end local v15    # "apnStatus$iterator":Ljava/util/Iterator;
    .end local v16    # "deacTrans":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    :catchall_2b6
    move-exception v10

    monitor-exit v20

    throw v10

    .restart local v15    # "apnStatus$iterator":Ljava/util/Iterator;
    :cond_2b9
    monitor-exit v20

    .line 248
    .end local v15    # "apnStatus$iterator":Ljava/util/Iterator;
    :cond_2ba
    const-string/jumbo v10, "LOADED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3e2

    .line 250
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v10}, Lcom/mediatek/ims/internal/DataDispatcher;->-get3(Lcom/mediatek/ims/internal/DataDispatcher;)[Z

    move-result-object v10

    aget-boolean v10, v10, v17

    if-eqz v10, :cond_2f8

    .line 251
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Sim"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v20, v17, 0x1

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v20, " already enable, "

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mediatek/ims/internal/DataDispatcher;->-wrap9(Ljava/lang/String;)V

    .line 252
    return-void

    .line 255
    :cond_2f8
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "set Sim"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v20, v17, 0x1

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v20, " state: true"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mediatek/ims/internal/DataDispatcher;->-wrap9(Ljava/lang/String;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v10}, Lcom/mediatek/ims/internal/DataDispatcher;->-get3(Lcom/mediatek/ims/internal/DataDispatcher;)[Z

    move-result-object v10

    const/16 v20, 0x1

    aput-boolean v20, v10, v17

    .line 258
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v10}, Lcom/mediatek/ims/internal/DataDispatcher;->-get3(Lcom/mediatek/ims/internal/DataDispatcher;)[Z

    move-result-object v10

    array-length v10, v10

    add-int/lit8 v10, v10, -0x1

    move/from16 v0, v17

    if-ne v0, v10, :cond_348

    .line 259
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v10}, Lcom/mediatek/ims/internal/DataDispatcher;->-get3(Lcom/mediatek/ims/internal/DataDispatcher;)[Z

    move-result-object v10

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-static {v10, v0}, Ljava/util/Arrays;->fill([ZZ)V

    .line 262
    :cond_348
    invoke-static {}, Lcom/mediatek/ims/ImsAdapter$Util;->getDefaultVoltePhoneId()I

    move-result v10

    move/from16 v0, v17

    if-ne v0, v10, :cond_db

    .line 263
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    .line 265
    const-string/jumbo v20, "ims"

    .line 264
    const v21, 0xdbba8

    .line 263
    move/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher;->findTransaction(ILjava/lang/String;)Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;

    move-result-object v12

    .line 266
    .local v12, "actTrans":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    if-eqz v12, :cond_db

    .line 267
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    move/from16 v0, v17

    invoke-static {v10, v0}, Lcom/mediatek/ims/internal/DataDispatcher;->-wrap1(Lcom/mediatek/ims/internal/DataDispatcher;I)Z

    move-result v10

    if-nez v10, :cond_386

    .line 268
    const-string/jumbo v10, "no IMS apn Exists!!"

    invoke-static {v10}, Lcom/mediatek/ims/internal/DataDispatcher;->-wrap9(Ljava/lang/String;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    .line 270
    const/high16 v20, 0x10000

    .line 271
    const/16 v21, 0x1f4

    .line 269
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v10, v12, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher;->-wrap11(Lcom/mediatek/ims/internal/DataDispatcher;Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;II)V

    .line 272
    return-void

    .line 274
    :cond_386
    const-string/jumbo v10, "process pending PDN request "

    invoke-static {v10}, Lcom/mediatek/ims/internal/DataDispatcher;->-wrap9(Ljava/lang/String;)V

    .line 275
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v10}, Lcom/mediatek/ims/internal/DataDispatcher;->-get1(Lcom/mediatek/ims/internal/DataDispatcher;)Landroid/os/Handler;

    move-result-object v10

    const/16 v20, 0x1c84

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 276
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v10}, Lcom/mediatek/ims/internal/DataDispatcher;->-get1(Lcom/mediatek/ims/internal/DataDispatcher;)Landroid/os/Handler;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/mediatek/ims/internal/DataDispatcher;->-get1(Lcom/mediatek/ims/internal/DataDispatcher;)Landroid/os/Handler;

    move-result-object v20

    .line 277
    const/16 v21, 0x1c84

    .line 276
    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    .line 278
    const-wide/16 v22, 0x2710

    .line 276
    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v10, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 280
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    const-string/jumbo v20, "ims"

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-static {v10, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher;->-wrap3(Lcom/mediatek/ims/internal/DataDispatcher;Ljava/lang/String;I)I

    move-result v10

    if-gez v10, :cond_db

    .line 281
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    .line 282
    const/high16 v20, 0x10000

    .line 283
    const/16 v21, 0x0

    .line 281
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v10, v12, v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher;->-wrap11(Lcom/mediatek/ims/internal/DataDispatcher;Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;II)V

    goto/16 :goto_db

    .line 288
    .end local v12    # "actTrans":Lcom/mediatek/ims/internal/DataDispatcher$TransactionParam;
    :cond_3e2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "set Sim"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v20, v17, 0x1

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v20, " state: false"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mediatek/ims/internal/DataDispatcher;->-wrap9(Ljava/lang/String;)V

    .line 289
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/ims/internal/DataDispatcher$2;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v10}, Lcom/mediatek/ims/internal/DataDispatcher;->-get3(Lcom/mediatek/ims/internal/DataDispatcher;)[Z

    move-result-object v10

    const/16 v20, 0x0

    aput-boolean v20, v10, v17

    goto/16 :goto_db

    .line 188
    :pswitch_data_416
    .packed-switch -0x1
        :pswitch_118
        :pswitch_118
        :pswitch_dc
    .end packed-switch
.end method
