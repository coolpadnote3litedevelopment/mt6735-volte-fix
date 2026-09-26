.class Lcom/mediatek/ims/ImsService$1;
.super Landroid/content/BroadcastReceiver;
.source "ImsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/ImsService;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/ImsService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/ims/ImsService;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 185
    const-string/jumbo v19, "ACTION_IMS_SIMULATE"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a7

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    move-object/from16 v19, v0

    const-string/jumbo v20, "registry"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    invoke-static/range {v19 .. v20}, Lcom/mediatek/ims/ImsService;->-set3(Lcom/mediatek/ims/ImsService;Z)Z

    .line 188
    const-string/jumbo v19, "ImsService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Simulate IMS Registration: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/mediatek/ims/ImsService;->-get7(Lcom/mediatek/ims/ImsService;)Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v13, v0, [I

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/mediatek/ims/ImsService;->-get7(Lcom/mediatek/ims/ImsService;)Z

    move-result v19

    if-eqz v19, :cond_a4

    const/16 v19, 0x1

    :goto_5d
    const/16 v20, 0x0

    aput v19, v13, v20

    .line 191
    const/16 v19, 0xf

    const/16 v20, 0x1

    aput v19, v13, v20

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/mediatek/ims/ImsService;->-get0(Lcom/mediatek/ims/ImsService;)I

    move-result v19

    const/16 v20, 0x2

    aput v19, v13, v20

    .line 193
    .local v13, "result":[I
    new-instance v3, Landroid/os/AsyncResult;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v3, v0, v13, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 194
    .local v3, "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/mediatek/ims/ImsService;->-get2(Lcom/mediatek/ims/ImsService;)Landroid/os/Handler;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/mediatek/ims/ImsService;->-get2(Lcom/mediatek/ims/ImsService;)Landroid/os/Handler;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 183
    .end local v3    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "result":[I
    :cond_a3
    :goto_a3
    return-void

    .line 190
    :cond_a4
    const/16 v19, 0x0

    goto :goto_5d

    .line 195
    :cond_a7
    const-string/jumbo v19, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f0

    .line 196
    invoke-static {}, Lcom/mediatek/ims/ImsService;->-get10()Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v19

    if-nez v19, :cond_a3

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/mediatek/ims/ImsService;->-wrap5(Lcom/mediatek/ims/ImsService;)V

    .line 199
    invoke-static {}, Lcom/mediatek/ims/ImsService;->-get10()Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v19

    if-eqz v19, :cond_e6

    .line 201
    :try_start_c9
    invoke-static {}, Lcom/mediatek/ims/ImsService;->-get10()Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v19

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/mediatek/ims/ImsService;->-wrap1(Lcom/mediatek/ims/ImsService;)Lcom/mediatek/ims/ImsService$IWifiOffloadListenerProxy;

    move-result-object v20

    .line 201
    invoke-interface/range {v19 .. v20}, Lcom/mediatek/wfo/IWifiOffloadService;->registerForHandoverEvent(Lcom/mediatek/wfo/IWifiOffloadListener;)V
    :try_end_da
    .catch Landroid/os/RemoteException; {:try_start_c9 .. :try_end_da} :catch_db

    goto :goto_a3

    .line 203
    :catch_db
    move-exception v4

    .line 204
    .local v4, "e":Landroid/os/RemoteException;
    const-string/jumbo v19, "ImsService"

    const-string/jumbo v20, "can\'t register handover event"

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a3

    .line 207
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_e6
    const-string/jumbo v19, "ImsService"

    const-string/jumbo v20, "can\'t get WifiOffloadService"

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a3

    .line 210
    :cond_f0
    const-string/jumbo v19, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_31e

    .line 211
    const-string/jumbo v19, "ss"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 212
    .local v14, "simState":Ljava/lang/String;
    const-string/jumbo v19, "phone"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 213
    .local v11, "phoneId":I
    const/4 v7, 0x0

    .line 214
    .local v7, "mcc":I
    const/4 v8, 0x0

    .line 215
    .local v8, "mnc":I
    const-string/jumbo v19, "ImsService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "ACTION_SIM_STATE_CHANGED on phone"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v5, 0x0

    .line 217
    .local v5, "instance":Lcom/android/ims/internal/IImsConfig;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/mediatek/ims/ImsService;->-get3(Lcom/mediatek/ims/ImsService;)Ljava/util/Map;

    move-result-object v20

    monitor-enter v20

    .line 218
    :try_start_141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/mediatek/ims/ImsService;->-get3(Lcom/mediatek/ims/ImsService;)Ljava/util/Map;

    move-result-object v19

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1bf

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/mediatek/ims/ImsService;->-get3(Lcom/mediatek/ims/ImsService;)Ljava/util/Map;

    move-result-object v19

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Lcom/android/ims/internal/IImsConfig;

    move-object v5, v0
    :try_end_174
    .catchall {:try_start_141 .. :try_end_174} :catchall_1e9

    .local v5, "instance":Lcom/android/ims/internal/IImsConfig;
    :goto_174
    monitor-exit v20

    .line 227
    const/16 v17, 0x0

    .line 228
    .local v17, "volteRes":Z
    const/16 v16, 0x0

    .line 229
    .local v16, "vilteRes":Z
    const/16 v18, 0x0

    .line 231
    .local v18, "wfcRes":Z
    :try_start_17b
    const-string/jumbo v19, "ABSENT"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1ec

    .line 232
    const-string/jumbo v19, "ImsService"

    const-string/jumbo v20, "setImsCapability by default value"

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v5, v0, v1, v2}, Lcom/android/ims/internal/IImsConfig;->setImsCapability(ZZZ)V
    :try_end_19e
    .catch Landroid/os/RemoteException; {:try_start_17b .. :try_end_19e} :catch_1a0

    goto/16 :goto_a3

    .line 272
    .end local v16    # "vilteRes":Z
    .end local v17    # "volteRes":Z
    .end local v18    # "wfcRes":Z
    :catch_1a0
    move-exception v4

    .line 273
    .restart local v4    # "e":Landroid/os/RemoteException;
    const-string/jumbo v19, "ImsService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "SetImsCapability fail: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a3

    .line 221
    .end local v4    # "e":Landroid/os/RemoteException;
    .local v5, "instance":Lcom/android/ims/internal/IImsConfig;
    :cond_1bf
    :try_start_1bf
    new-instance v6, Lcom/mediatek/ims/ImsConfigStub;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/mediatek/ims/ImsService;->-get5(Lcom/mediatek/ims/ImsService;)Lcom/mediatek/ims/ImsRILAdapter;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-direct {v6, v0, v1, v11}, Lcom/mediatek/ims/ImsConfigStub;-><init>(Landroid/content/Context;Lcom/mediatek/ims/ImsRILAdapter;I)V
    :try_end_1d2
    .catchall {:try_start_1bf .. :try_end_1d2} :catchall_1e9

    .line 222
    .end local v5    # "instance":Lcom/android/ims/internal/IImsConfig;
    .local v6, "instance":Lcom/android/ims/internal/IImsConfig;
    :try_start_1d2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/mediatek/ims/ImsService;->-get3(Lcom/mediatek/ims/ImsService;)Ljava/util/Map;

    move-result-object v19

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e7
    .catchall {:try_start_1d2 .. :try_end_1e7} :catchall_364

    move-object v5, v6

    .end local v6    # "instance":Lcom/android/ims/internal/IImsConfig;
    .local v5, "instance":Lcom/android/ims/internal/IImsConfig;
    goto :goto_174

    .line 217
    .local v5, "instance":Lcom/android/ims/internal/IImsConfig;
    :catchall_1e9
    move-exception v19

    .end local v5    # "instance":Lcom/android/ims/internal/IImsConfig;
    :goto_1ea
    monitor-exit v20

    throw v19

    .line 235
    .local v5, "instance":Lcom/android/ims/internal/IImsConfig;
    .restart local v16    # "vilteRes":Z
    .restart local v17    # "volteRes":Z
    .restart local v18    # "wfcRes":Z
    :cond_1ec
    :try_start_1ec
    const-string/jumbo v19, "LOADED"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_a3

    .line 236
    invoke-static {v11}, Lcom/mediatek/ims/ImsService;->-wrap0(I)Z

    move-result v19

    if-nez v19, :cond_2fa

    .line 238
    const-string/jumbo v19, "phone"

    .line 237
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/telephony/TelephonyManager;

    .line 239
    .local v15, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v15, v11}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v10

    .line 240
    .local v10, "operator":Ljava/lang/String;
    const/16 v19, 0x0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 241
    const/16 v19, 0x3

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 242
    const-string/jumbo v19, "ImsService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "ACTION_SIM_STATE_CHANGED on mcc: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 243
    const-string/jumbo v21, " mnc: "

    .line 242
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 246
    .local v12, "res":Landroid/content/res/Resources;
    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    .line 247
    .local v9, "newConfiguration":Landroid/content/res/Configuration;
    iput v7, v9, Landroid/content/res/Configuration;->mcc:I

    .line 248
    if-nez v8, :cond_2f6

    const v19, 0xffff

    :goto_262
    move/from16 v0, v19

    iput v0, v9, Landroid/content/res/Configuration;->mnc:I

    .line 249
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v12, v9, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 252
    const v19, 0x1120084

    .line 251
    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    .line 254
    .local v17, "volteRes":Z
    const v19, 0x1120088

    .line 253
    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v16

    .line 256
    .local v16, "vilteRes":Z
    const v19, 0x112008a

    .line 255
    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v18

    .line 265
    .end local v9    # "newConfiguration":Landroid/content/res/Configuration;
    .end local v10    # "operator":Ljava/lang/String;
    .end local v12    # "res":Landroid/content/res/Resources;
    .end local v15    # "tm":Landroid/telephony/TelephonyManager;
    .end local v16    # "vilteRes":Z
    .end local v17    # "volteRes":Z
    .end local v18    # "wfcRes":Z
    :goto_288
    const-string/jumbo v19, "ImsService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Set volte capability is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const-string/jumbo v19, "ImsService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Set vilte capability is  "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const-string/jumbo v19, "ImsService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Set wfc capability is  "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    move/from16 v0, v17

    move/from16 v1, v16

    move/from16 v2, v18

    invoke-interface {v5, v0, v1, v2}, Lcom/android/ims/internal/IImsConfig;->setImsCapability(ZZZ)V

    .line 270
    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v11, v1}, Lcom/android/ims/ImsManager;->updateImsServiceConfig(Landroid/content/Context;IZ)V

    goto/16 :goto_a3

    .restart local v9    # "newConfiguration":Landroid/content/res/Configuration;
    .restart local v10    # "operator":Ljava/lang/String;
    .restart local v12    # "res":Landroid/content/res/Resources;
    .restart local v15    # "tm":Landroid/telephony/TelephonyManager;
    .local v16, "vilteRes":Z
    .local v17, "volteRes":Z
    .restart local v18    # "wfcRes":Z
    :cond_2f6
    move/from16 v19, v8

    .line 248
    goto/16 :goto_262

    .line 259
    .end local v9    # "newConfiguration":Landroid/content/res/Configuration;
    .end local v10    # "operator":Ljava/lang/String;
    .end local v12    # "res":Landroid/content/res/Resources;
    .end local v15    # "tm":Landroid/telephony/TelephonyManager;
    :cond_2fa
    const-string/jumbo v19, "ImsService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Found test SIM on phone "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_316
    .catch Landroid/os/RemoteException; {:try_start_1ec .. :try_end_316} :catch_1a0

    .line 260
    const/16 v17, 0x1

    .line 261
    const/16 v16, 0x1

    .line 262
    const/16 v18, 0x1

    goto/16 :goto_288

    .line 275
    .end local v5    # "instance":Lcom/android/ims/internal/IImsConfig;
    .end local v7    # "mcc":I
    .end local v8    # "mnc":I
    .end local v11    # "phoneId":I
    .end local v14    # "simState":Ljava/lang/String;
    .end local v16    # "vilteRes":Z
    .end local v17    # "volteRes":Z
    .end local v18    # "wfcRes":Z
    :cond_31e
    const-string/jumbo v19, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a3

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/mediatek/ims/ImsService;->-wrap2(Lcom/mediatek/ims/ImsService;)I

    move-result v20

    invoke-static/range {v19 .. v20}, Lcom/mediatek/ims/ImsService;->-set0(Lcom/mediatek/ims/ImsService;I)I

    .line 277
    const-string/jumbo v19, "ImsService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "update mActivePhoneId = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsService$1;->this$0:Lcom/mediatek/ims/ImsService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/mediatek/ims/ImsService;->-get0(Lcom/mediatek/ims/ImsService;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a3

    .line 217
    .restart local v6    # "instance":Lcom/android/ims/internal/IImsConfig;
    .restart local v7    # "mcc":I
    .restart local v8    # "mnc":I
    .restart local v11    # "phoneId":I
    .restart local v14    # "simState":Ljava/lang/String;
    :catchall_364
    move-exception v19

    move-object v5, v6

    .end local v6    # "instance":Lcom/android/ims/internal/IImsConfig;
    .restart local v5    # "instance":Lcom/android/ims/internal/IImsConfig;
    goto/16 :goto_1ea
.end method
