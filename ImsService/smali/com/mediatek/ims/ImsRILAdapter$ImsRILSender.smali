.class Lcom/mediatek/ims/ImsRILAdapter$ImsRILSender;
.super Landroid/os/Handler;
.source "ImsRILAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsRILAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImsRILSender"
.end annotation


# instance fields
.field dataLength:[B

.field final synthetic this$0:Lcom/mediatek/ims/ImsRILAdapter;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/ImsRILAdapter;Landroid/os/Looper;)V
    .registers 4
    .param p1, "this$0"    # Lcom/mediatek/ims/ImsRILAdapter;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1066
    iput-object p1, p0, Lcom/mediatek/ims/ImsRILAdapter$ImsRILSender;->this$0:Lcom/mediatek/ims/ImsRILAdapter;

    .line 1067
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1071
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/ims/ImsRILAdapter$ImsRILSender;->dataLength:[B

    .line 1066
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 15
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1084
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/mediatek/ims/RILRequest;

    .line 1085
    .local v7, "rr":Lcom/mediatek/ims/RILRequest;
    const/4 v6, 0x0

    .line 1087
    .local v6, "req":Lcom/mediatek/ims/RILRequest;
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_14e

    .line 1083
    .end local v6    # "req":Lcom/mediatek/ims/RILRequest;
    :cond_a
    :goto_a
    return-void

    .line 1092
    .restart local v6    # "req":Lcom/mediatek/ims/RILRequest;
    :pswitch_b
    :try_start_b
    iget-object v9, p0, Lcom/mediatek/ims/ImsRILAdapter$ImsRILSender;->this$0:Lcom/mediatek/ims/ImsRILAdapter;

    iget-object v8, v9, Lcom/mediatek/ims/ImsRILAdapter;->mSocket:Landroid/net/LocalSocket;

    .line 1094
    .local v8, "s":Landroid/net/LocalSocket;
    if-nez v8, :cond_1f

    .line 1095
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Lcom/mediatek/ims/RILRequest;->onError(ILjava/lang/Object;)V

    .line 1096
    invoke-virtual {v7}, Lcom/mediatek/ims/RILRequest;->release()V

    .line 1097
    iget-object v9, p0, Lcom/mediatek/ims/ImsRILAdapter$ImsRILSender;->this$0:Lcom/mediatek/ims/ImsRILAdapter;

    invoke-static {v9}, Lcom/mediatek/ims/ImsRILAdapter;->-wrap3(Lcom/mediatek/ims/ImsRILAdapter;)V

    .line 1098
    return-void

    .line 1102
    :cond_1f
    iget-object v9, v7, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v9}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    .line 1103
    .local v2, "data":[B
    iget-object v9, p0, Lcom/mediatek/ims/ImsRILAdapter$ImsRILSender;->this$0:Lcom/mediatek/ims/ImsRILAdapter;

    iget-object v10, v9, Lcom/mediatek/ims/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v10
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_2a} :catch_5c
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_2a} :catch_81

    .line 1104
    :try_start_2a
    iget-object v9, p0, Lcom/mediatek/ims/ImsRILAdapter$ImsRILSender;->this$0:Lcom/mediatek/ims/ImsRILAdapter;

    iget-object v9, v9, Lcom/mediatek/ims/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    iget v11, v7, Lcom/mediatek/ims/RILRequest;->mSerial:I

    invoke-virtual {v9, v11, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1105
    iget-object v9, v7, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 1106
    const/4 v9, 0x0

    iput-object v9, v7, Lcom/mediatek/ims/RILRequest;->mParcel:Landroid/os/Parcel;
    :try_end_3b
    .catchall {:try_start_2a .. :try_end_3b} :catchall_7e

    :try_start_3b
    monitor-exit v10

    .line 1109
    array-length v9, v2

    const/16 v10, 0x2000

    if-le v9, v10, :cond_a4

    .line 1110
    new-instance v9, Ljava/lang/RuntimeException;

    .line 1111
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Parcel larger than max bytes allowed! "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1112
    array-length v11, v2

    .line 1111
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1110
    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_5c} :catch_5c
    .catch Ljava/lang/RuntimeException; {:try_start_3b .. :try_end_5c} :catch_81

    .line 1124
    .end local v2    # "data":[B
    .end local v8    # "s":Landroid/net/LocalSocket;
    :catch_5c
    move-exception v3

    .line 1125
    .local v3, "ex":Ljava/io/IOException;
    const-string/jumbo v9, "IMS_RILA"

    const-string/jumbo v10, "IOException"

    invoke-static {v9, v10, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1126
    iget-object v9, p0, Lcom/mediatek/ims/ImsRILAdapter$ImsRILSender;->this$0:Lcom/mediatek/ims/ImsRILAdapter;

    iget v10, v7, Lcom/mediatek/ims/RILRequest;->mSerial:I

    invoke-static {v9, v10}, Lcom/mediatek/ims/ImsRILAdapter;->-wrap1(Lcom/mediatek/ims/ImsRILAdapter;I)Lcom/mediatek/ims/RILRequest;

    move-result-object v6

    .line 1129
    .local v6, "req":Lcom/mediatek/ims/RILRequest;
    if-eqz v6, :cond_a

    .line 1130
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Lcom/mediatek/ims/RILRequest;->onError(ILjava/lang/Object;)V

    .line 1131
    invoke-virtual {v7}, Lcom/mediatek/ims/RILRequest;->release()V

    .line 1132
    iget-object v9, p0, Lcom/mediatek/ims/ImsRILAdapter$ImsRILSender;->this$0:Lcom/mediatek/ims/ImsRILAdapter;

    invoke-static {v9}, Lcom/mediatek/ims/ImsRILAdapter;->-wrap3(Lcom/mediatek/ims/ImsRILAdapter;)V

    goto :goto_a

    .line 1103
    .end local v3    # "ex":Ljava/io/IOException;
    .restart local v2    # "data":[B
    .local v6, "req":Lcom/mediatek/ims/RILRequest;
    .restart local v8    # "s":Landroid/net/LocalSocket;
    :catchall_7e
    move-exception v9

    :try_start_7f
    monitor-exit v10

    throw v9
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_81} :catch_5c
    .catch Ljava/lang/RuntimeException; {:try_start_7f .. :try_end_81} :catch_81

    .line 1134
    .end local v2    # "data":[B
    .end local v8    # "s":Landroid/net/LocalSocket;
    :catch_81
    move-exception v4

    .line 1135
    .local v4, "exc":Ljava/lang/RuntimeException;
    const-string/jumbo v9, "IMS_RILA"

    const-string/jumbo v10, "Uncaught exception "

    invoke-static {v9, v10, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1136
    iget-object v9, p0, Lcom/mediatek/ims/ImsRILAdapter$ImsRILSender;->this$0:Lcom/mediatek/ims/ImsRILAdapter;

    iget v10, v7, Lcom/mediatek/ims/RILRequest;->mSerial:I

    invoke-static {v9, v10}, Lcom/mediatek/ims/ImsRILAdapter;->-wrap1(Lcom/mediatek/ims/ImsRILAdapter;I)Lcom/mediatek/ims/RILRequest;

    move-result-object v6

    .line 1139
    .local v6, "req":Lcom/mediatek/ims/RILRequest;
    if-eqz v6, :cond_a

    .line 1140
    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Lcom/mediatek/ims/RILRequest;->onError(ILjava/lang/Object;)V

    .line 1141
    invoke-virtual {v7}, Lcom/mediatek/ims/RILRequest;->release()V

    .line 1142
    iget-object v9, p0, Lcom/mediatek/ims/ImsRILAdapter$ImsRILSender;->this$0:Lcom/mediatek/ims/ImsRILAdapter;

    invoke-static {v9}, Lcom/mediatek/ims/ImsRILAdapter;->-wrap3(Lcom/mediatek/ims/ImsRILAdapter;)V

    goto/16 :goto_a

    .line 1116
    .end local v4    # "exc":Ljava/lang/RuntimeException;
    .restart local v2    # "data":[B
    .local v6, "req":Lcom/mediatek/ims/RILRequest;
    .restart local v8    # "s":Landroid/net/LocalSocket;
    :cond_a4
    :try_start_a4
    iget-object v9, p0, Lcom/mediatek/ims/ImsRILAdapter$ImsRILSender;->dataLength:[B

    iget-object v10, p0, Lcom/mediatek/ims/ImsRILAdapter$ImsRILSender;->dataLength:[B

    const/4 v11, 0x0

    const/4 v12, 0x1

    aput-byte v11, v10, v12

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput-byte v10, v9, v11

    .line 1117
    iget-object v9, p0, Lcom/mediatek/ims/ImsRILAdapter$ImsRILSender;->dataLength:[B

    array-length v10, v2

    shr-int/lit8 v10, v10, 0x8

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    const/4 v11, 0x2

    aput-byte v10, v9, v11

    .line 1118
    iget-object v9, p0, Lcom/mediatek/ims/ImsRILAdapter$ImsRILSender;->dataLength:[B

    array-length v10, v2

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    const/4 v11, 0x3

    aput-byte v10, v9, v11

    .line 1122
    invoke-virtual {v8}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/ims/ImsRILAdapter$ImsRILSender;->dataLength:[B

    invoke-virtual {v9, v10}, Ljava/io/OutputStream;->write([B)V

    .line 1123
    invoke-virtual {v8}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_d4
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_d4} :catch_5c
    .catch Ljava/lang/RuntimeException; {:try_start_a4 .. :try_end_d4} :catch_81

    goto/16 :goto_a

    .line 1159
    .end local v2    # "data":[B
    .end local v8    # "s":Landroid/net/LocalSocket;
    :pswitch_d6
    iget-object v9, p0, Lcom/mediatek/ims/ImsRILAdapter$ImsRILSender;->this$0:Lcom/mediatek/ims/ImsRILAdapter;

    iget-object v10, v9, Lcom/mediatek/ims/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v10

    .line 1160
    :try_start_db
    iget-object v9, p0, Lcom/mediatek/ims/ImsRILAdapter$ImsRILSender;->this$0:Lcom/mediatek/ims/ImsRILAdapter;

    invoke-static {v9}, Lcom/mediatek/ims/ImsRILAdapter;->-wrap0(Lcom/mediatek/ims/ImsRILAdapter;)Z

    move-result v9

    if-eqz v9, :cond_148

    .line 1162
    iget-object v9, p0, Lcom/mediatek/ims/ImsRILAdapter$ImsRILSender;->this$0:Lcom/mediatek/ims/ImsRILAdapter;

    iget-object v9, v9, Lcom/mediatek/ims/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1163
    .local v1, "count":I
    const-string/jumbo v9, "IMS_RILA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "WAKE_LOCK_TIMEOUT  mRequestList="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_106
    if-ge v5, v1, :cond_148

    .line 1166
    iget-object v9, p0, Lcom/mediatek/ims/ImsRILAdapter$ImsRILSender;->this$0:Lcom/mediatek/ims/ImsRILAdapter;

    iget-object v9, v9, Lcom/mediatek/ims/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v9, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/mediatek/ims/RILRequest;

    move-object v7, v0

    .line 1167
    const-string/jumbo v9, "IMS_RILA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ": ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Lcom/mediatek/ims/RILRequest;->mSerial:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "] "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1168
    iget v12, v7, Lcom/mediatek/ims/RILRequest;->mRequest:I

    invoke-static {v12}, Lcom/mediatek/ims/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v12

    .line 1167
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_145
    .catchall {:try_start_db .. :try_end_145} :catchall_14b

    .line 1165
    add-int/lit8 v5, v5, 0x1

    goto :goto_106

    .end local v1    # "count":I
    .end local v5    # "i":I
    :cond_148
    monitor-exit v10

    goto/16 :goto_a

    .line 1159
    :catchall_14b
    move-exception v9

    monitor-exit v10

    throw v9

    .line 1087
    :pswitch_data_14e
    .packed-switch 0x1
        :pswitch_b
        :pswitch_d6
    .end packed-switch
.end method

.method public run()V
    .registers 1

    .prologue
    .line 1076
    return-void
.end method
