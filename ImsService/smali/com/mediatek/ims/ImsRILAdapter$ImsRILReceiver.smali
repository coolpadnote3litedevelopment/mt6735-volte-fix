.class Lcom/mediatek/ims/ImsRILAdapter$ImsRILReceiver;
.super Ljava/lang/Object;
.source "ImsRILAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsRILAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImsRILReceiver"
.end annotation


# instance fields
.field buffer:[B

.field final synthetic this$0:Lcom/mediatek/ims/ImsRILAdapter;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/ImsRILAdapter;)V
    .registers 3
    .param p1, "this$0"    # Lcom/mediatek/ims/ImsRILAdapter;

    .prologue
    .line 1181
    iput-object p1, p0, Lcom/mediatek/ims/ImsRILAdapter$ImsRILReceiver;->this$0:Lcom/mediatek/ims/ImsRILAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1182
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/ims/ImsRILAdapter$ImsRILReceiver;->buffer:[B

    .line 1181
    return-void
.end method


# virtual methods
.method public run()V
    .registers 20

    .prologue
    .line 1188
    const/4 v11, 0x0

    .line 1189
    .local v11, "retryCount":I
    const-string/jumbo v6, "rild-ims"

    .line 1192
    .local v6, "imsRilSocket":Ljava/lang/String;
    :goto_4
    const/4 v12, 0x0

    .line 1196
    .local v12, "s":Landroid/net/LocalSocket;
    :try_start_5
    new-instance v13, Landroid/net/LocalSocket;

    invoke-direct {v13}, Landroid/net/LocalSocket;-><init>()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_90
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a} :catch_de

    .line 1197
    .local v13, "s":Landroid/net/LocalSocket;
    :try_start_a
    new-instance v8, Landroid/net/LocalSocketAddress;

    .line 1198
    .end local v12    # "s":Landroid/net/LocalSocket;
    sget-object v15, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    .line 1197
    invoke-direct {v8, v6, v15}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 1199
    .local v8, "l":Landroid/net/LocalSocketAddress;
    invoke-virtual {v13, v8}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_14} :catch_221
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_14} :catch_1a6

    .line 1233
    const/4 v11, 0x0

    .line 1235
    :try_start_15
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/ImsRILAdapter$ImsRILReceiver;->this$0:Lcom/mediatek/ims/ImsRILAdapter;

    iput-object v13, v15, Lcom/mediatek/ims/ImsRILAdapter;->mSocket:Landroid/net/LocalSocket;

    .line 1236
    const-string/jumbo v15, "IMS_RILA"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Connected to \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "\' socket"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/ImsRILAdapter$ImsRILReceiver;->this$0:Lcom/mediatek/ims/ImsRILAdapter;

    invoke-static {v15}, Lcom/mediatek/ims/ImsRILAdapter;->-get0(Lcom/mediatek/ims/ImsRILAdapter;)Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;

    move-result-object v16

    monitor-enter v16
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_47} :catch_1a6

    .line 1241
    :try_start_47
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/ImsRILAdapter$ImsRILReceiver;->this$0:Lcom/mediatek/ims/ImsRILAdapter;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "mDtmfReqQueue queue size before "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsRILAdapter$ImsRILReceiver;->this$0:Lcom/mediatek/ims/ImsRILAdapter;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/mediatek/ims/ImsRILAdapter;->-get0(Lcom/mediatek/ims/ImsRILAdapter;)Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/mediatek/ims/ImsRILAdapter;->-wrap6(Lcom/mediatek/ims/ImsRILAdapter;Ljava/lang/String;)V

    .line 1243
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/ImsRILAdapter$ImsRILReceiver;->this$0:Lcom/mediatek/ims/ImsRILAdapter;

    invoke-static {v15}, Lcom/mediatek/ims/ImsRILAdapter;->-get0(Lcom/mediatek/ims/ImsRILAdapter;)Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;

    move-result-object v15

    invoke-virtual {v15}, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->size()I

    move-result v15

    add-int/lit8 v5, v15, -0x1

    .local v5, "i":I
    :goto_80
    if-ltz v5, :cond_117

    .line 1244
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/ImsRILAdapter$ImsRILReceiver;->this$0:Lcom/mediatek/ims/ImsRILAdapter;

    invoke-static {v15}, Lcom/mediatek/ims/ImsRILAdapter;->-get0(Lcom/mediatek/ims/ImsRILAdapter;)Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;

    move-result-object v15

    invoke-virtual {v15, v5}, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->remove(I)V
    :try_end_8d
    .catchall {:try_start_47 .. :try_end_8d} :catchall_1a3

    .line 1243
    add-int/lit8 v5, v5, -0x1

    goto :goto_80

    .line 1200
    .end local v5    # "i":I
    .end local v8    # "l":Landroid/net/LocalSocketAddress;
    .end local v13    # "s":Landroid/net/LocalSocket;
    .restart local v12    # "s":Landroid/net/LocalSocket;
    :catch_90
    move-exception v3

    .line 1202
    .end local v12    # "s":Landroid/net/LocalSocket;
    .local v3, "ex":Ljava/io/IOException;
    :goto_91
    if-eqz v12, :cond_96

    .line 1203
    :try_start_93
    invoke-virtual {v12}, Landroid/net/LocalSocket;->close()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_96} :catch_d3
    .catch Ljava/lang/Throwable; {:try_start_93 .. :try_end_96} :catch_de

    .line 1213
    :cond_96
    :goto_96
    const/16 v15, 0x8

    if-ne v11, v15, :cond_eb

    .line 1214
    :try_start_9a
    const-string/jumbo v15, "IMS_RILA"

    .line 1215
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Couldn\'t find \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1216
    const-string/jumbo v17, "\' socket after "

    .line 1215
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1217
    const-string/jumbo v17, " times, continuing to retry silently"

    .line 1215
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1214
    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ca
    .catch Ljava/lang/Throwable; {:try_start_9a .. :try_end_ca} :catch_de

    .line 1225
    :cond_ca
    :goto_ca
    const-wide/16 v16, 0xfa0

    :try_start_cc
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_cf
    .catch Ljava/lang/InterruptedException; {:try_start_cc .. :try_end_cf} :catch_115
    .catch Ljava/lang/Throwable; {:try_start_cc .. :try_end_cf} :catch_de

    .line 1229
    :goto_cf
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4

    .line 1205
    :catch_d3
    move-exception v4

    .line 1207
    .local v4, "ex2":Ljava/io/IOException;
    :try_start_d4
    const-string/jumbo v15, "IMS_RILA"

    const-string/jumbo v16, "Failed to close the socket"

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_dd
    .catch Ljava/lang/Throwable; {:try_start_d4 .. :try_end_dd} :catch_de

    goto :goto_96

    .line 1301
    .end local v3    # "ex":Ljava/io/IOException;
    .end local v4    # "ex2":Ljava/io/IOException;
    :catch_de
    move-exception v14

    .line 1302
    .local v14, "tr":Ljava/lang/Throwable;
    :goto_df
    const-string/jumbo v15, "IMS_RILA"

    const-string/jumbo v16, "Uncaught exception"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1187
    return-void

    .line 1218
    .end local v14    # "tr":Ljava/lang/Throwable;
    .restart local v3    # "ex":Ljava/io/IOException;
    :cond_eb
    if-lez v11, :cond_ca

    const/16 v15, 0x8

    if-ge v11, v15, :cond_ca

    .line 1219
    :try_start_f1
    const-string/jumbo v15, "IMS_RILA"

    .line 1220
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Couldn\'t find \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1221
    const-string/jumbo v17, "\' socket; retrying after timeout"

    .line 1220
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1219
    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_114
    .catch Ljava/lang/Throwable; {:try_start_f1 .. :try_end_114} :catch_de

    goto :goto_ca

    .line 1226
    :catch_115
    move-exception v2

    .local v2, "er":Ljava/lang/InterruptedException;
    goto :goto_cf

    .line 1247
    .end local v2    # "er":Ljava/lang/InterruptedException;
    .end local v3    # "ex":Ljava/io/IOException;
    .restart local v5    # "i":I
    .restart local v8    # "l":Landroid/net/LocalSocketAddress;
    .restart local v13    # "s":Landroid/net/LocalSocket;
    :cond_117
    :try_start_117
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/ImsRILAdapter$ImsRILReceiver;->this$0:Lcom/mediatek/ims/ImsRILAdapter;

    invoke-static {v15}, Lcom/mediatek/ims/ImsRILAdapter;->-get0(Lcom/mediatek/ims/ImsRILAdapter;)Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;

    move-result-object v15

    invoke-virtual {v15}, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->getPendingRequest()Lcom/mediatek/ims/RILRequest;

    move-result-object v15

    if-eqz v15, :cond_14b

    .line 1248
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/ImsRILAdapter$ImsRILReceiver;->this$0:Lcom/mediatek/ims/ImsRILAdapter;

    const-string/jumbo v17, "reset pending switch request"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/mediatek/ims/ImsRILAdapter;->-wrap6(Lcom/mediatek/ims/ImsRILAdapter;Ljava/lang/String;)V

    .line 1249
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/ImsRILAdapter$ImsRILReceiver;->this$0:Lcom/mediatek/ims/ImsRILAdapter;

    invoke-static {v15}, Lcom/mediatek/ims/ImsRILAdapter;->-get0(Lcom/mediatek/ims/ImsRILAdapter;)Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;

    move-result-object v15

    invoke-virtual {v15}, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->resetSendChldRequest()V

    .line 1250
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/ImsRILAdapter$ImsRILReceiver;->this$0:Lcom/mediatek/ims/ImsRILAdapter;

    invoke-static {v15}, Lcom/mediatek/ims/ImsRILAdapter;->-get0(Lcom/mediatek/ims/ImsRILAdapter;)Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;

    move-result-object v15

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/mediatek/ims/ImsRILAdapter$dtmfQueueHandler;->setPendingRequest(Lcom/mediatek/ims/RILRequest;)V
    :try_end_14b
    .catchall {:try_start_117 .. :try_end_14b} :catchall_1a3

    :cond_14b
    :try_start_14b
    monitor-exit v16
    :try_end_14c
    .catch Ljava/lang/Throwable; {:try_start_14b .. :try_end_14c} :catch_1a6

    .line 1255
    const/4 v9, 0x0

    .line 1257
    .local v9, "length":I
    :try_start_14d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/ImsRILAdapter$ImsRILReceiver;->this$0:Lcom/mediatek/ims/ImsRILAdapter;

    iget-object v15, v15, Lcom/mediatek/ims/ImsRILAdapter;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v15}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 1262
    .local v7, "is":Ljava/io/InputStream;
    :goto_157
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/ImsRILAdapter$ImsRILReceiver;->buffer:[B

    invoke-static {v7, v15}, Lcom/mediatek/ims/ImsRILAdapter;->-wrap2(Ljava/io/InputStream;[B)I
    :try_end_15e
    .catch Ljava/io/IOException; {:try_start_14d .. :try_end_15e} :catch_1c8
    .catch Ljava/lang/Throwable; {:try_start_14d .. :try_end_15e} :catch_1f0

    move-result v9

    .line 1264
    if-gez v9, :cond_1aa

    .line 1286
    .end local v7    # "is":Ljava/io/InputStream;
    :goto_161
    :try_start_161
    const-string/jumbo v15, "IMS_RILA"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Disconnected from \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1287
    const-string/jumbo v17, "\' socket"

    .line 1286
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/ImsRILAdapter$ImsRILReceiver;->this$0:Lcom/mediatek/ims/ImsRILAdapter;

    sget-object v16, Lcom/mediatek/ims/ImsCommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/mediatek/ims/ImsCommandsInterface$RadioState;

    invoke-virtual/range {v15 .. v16}, Lcom/mediatek/ims/ImsRILAdapter;->setRadioState(Lcom/mediatek/ims/ImsCommandsInterface$RadioState;)V
    :try_end_18d
    .catch Ljava/lang/Throwable; {:try_start_161 .. :try_end_18d} :catch_1a6

    .line 1292
    :try_start_18d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/ImsRILAdapter$ImsRILReceiver;->this$0:Lcom/mediatek/ims/ImsRILAdapter;

    iget-object v15, v15, Lcom/mediatek/ims/ImsRILAdapter;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v15}, Landroid/net/LocalSocket;->close()V
    :try_end_196
    .catch Ljava/io/IOException; {:try_start_18d .. :try_end_196} :catch_21e
    .catch Ljava/lang/Throwable; {:try_start_18d .. :try_end_196} :catch_1a6

    .line 1296
    :goto_196
    :try_start_196
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/ImsRILAdapter$ImsRILReceiver;->this$0:Lcom/mediatek/ims/ImsRILAdapter;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/mediatek/ims/ImsRILAdapter;->mSocket:Landroid/net/LocalSocket;

    move-object v12, v13

    .end local v13    # "s":Landroid/net/LocalSocket;
    .local v12, "s":Landroid/net/LocalSocket;
    goto/16 :goto_4

    .line 1239
    .end local v5    # "i":I
    .end local v9    # "length":I
    .end local v12    # "s":Landroid/net/LocalSocket;
    .restart local v13    # "s":Landroid/net/LocalSocket;
    :catchall_1a3
    move-exception v15

    monitor-exit v16

    throw v15
    :try_end_1a6
    .catch Ljava/lang/Throwable; {:try_start_196 .. :try_end_1a6} :catch_1a6

    .line 1301
    .end local v8    # "l":Landroid/net/LocalSocketAddress;
    :catch_1a6
    move-exception v14

    .restart local v14    # "tr":Ljava/lang/Throwable;
    move-object v12, v13

    .end local v13    # "s":Landroid/net/LocalSocket;
    .restart local v12    # "s":Landroid/net/LocalSocket;
    goto/16 :goto_df

    .line 1269
    .end local v12    # "s":Landroid/net/LocalSocket;
    .end local v14    # "tr":Ljava/lang/Throwable;
    .restart local v5    # "i":I
    .restart local v7    # "is":Ljava/io/InputStream;
    .restart local v8    # "l":Landroid/net/LocalSocketAddress;
    .restart local v9    # "length":I
    .restart local v13    # "s":Landroid/net/LocalSocket;
    :cond_1aa
    :try_start_1aa
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    .line 1270
    .local v10, "p":Landroid/os/Parcel;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/ImsRILAdapter$ImsRILReceiver;->buffer:[B

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v10, v15, v0, v9}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 1271
    const/4 v15, 0x0

    invoke-virtual {v10, v15}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1275
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/ImsRILAdapter$ImsRILReceiver;->this$0:Lcom/mediatek/ims/ImsRILAdapter;

    invoke-static {v15, v10}, Lcom/mediatek/ims/ImsRILAdapter;->-wrap5(Lcom/mediatek/ims/ImsRILAdapter;Landroid/os/Parcel;)V

    .line 1276
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V
    :try_end_1c7
    .catch Ljava/io/IOException; {:try_start_1aa .. :try_end_1c7} :catch_1c8
    .catch Ljava/lang/Throwable; {:try_start_1aa .. :try_end_1c7} :catch_1f0

    goto :goto_157

    .line 1278
    .end local v7    # "is":Ljava/io/InputStream;
    .end local v10    # "p":Landroid/os/Parcel;
    :catch_1c8
    move-exception v3

    .line 1279
    .restart local v3    # "ex":Ljava/io/IOException;
    :try_start_1c9
    const-string/jumbo v15, "IMS_RILA"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "\'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "\' socket closed"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_161

    .line 1281
    .end local v3    # "ex":Ljava/io/IOException;
    :catch_1f0
    move-exception v14

    .line 1282
    .restart local v14    # "tr":Ljava/lang/Throwable;
    const-string/jumbo v15, "IMS_RILA"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Uncaught exception read length="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1283
    const-string/jumbo v17, "Exception:"

    .line 1282
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1283
    invoke-virtual {v14}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1282
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21c
    .catch Ljava/lang/Throwable; {:try_start_1c9 .. :try_end_21c} :catch_1a6

    goto/16 :goto_161

    .line 1293
    .end local v14    # "tr":Ljava/lang/Throwable;
    :catch_21e
    move-exception v3

    .restart local v3    # "ex":Ljava/io/IOException;
    goto/16 :goto_196

    .line 1200
    .end local v3    # "ex":Ljava/io/IOException;
    .end local v5    # "i":I
    .end local v8    # "l":Landroid/net/LocalSocketAddress;
    .end local v9    # "length":I
    :catch_221
    move-exception v3

    .restart local v3    # "ex":Ljava/io/IOException;
    move-object v12, v13

    .end local v13    # "s":Landroid/net/LocalSocket;
    .restart local v12    # "s":Landroid/net/LocalSocket;
    goto/16 :goto_91
.end method
