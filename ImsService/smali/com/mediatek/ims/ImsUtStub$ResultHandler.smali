.class Lcom/mediatek/ims/ImsUtStub$ResultHandler;
.super Landroid/os/Handler;
.source "ImsUtStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsUtStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResultHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/ImsUtStub;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/ImsUtStub;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/mediatek/ims/ImsUtStub;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    .line 131
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 130
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 22
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 137
    const-string/jumbo v14, "ImsUtService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "handleMessage(): event = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", requestId = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    packed-switch v14, :pswitch_data_952

    .line 605
    const-string/jumbo v14, "ImsUtService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Unknown Event: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_58
    :goto_58
    return-void

    .line 141
    :pswitch_59
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    invoke-static {v14}, Lcom/mediatek/ims/ImsUtStub;->-get0(Lcom/mediatek/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v14

    if-eqz v14, :cond_58

    .line 142
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 144
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v14, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v14, :cond_c8

    .line 145
    iget-object v11, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, [I

    .line 146
    .local v11, "result":[I
    const/4 v14, 0x1

    new-array v10, v14, [Lcom/android/ims/ImsSsInfo;

    .line 147
    .local v10, "info":[Lcom/android/ims/ImsSsInfo;
    new-instance v14, Lcom/android/ims/ImsSsInfo;

    invoke-direct {v14}, Lcom/android/ims/ImsSsInfo;-><init>()V

    const/4 v15, 0x0

    aput-object v14, v10, v15

    .line 148
    const/4 v14, 0x0

    aget-object v14, v10, v14

    const/4 v15, 0x0

    aget v15, v11, v15

    iput v15, v14, Lcom/android/ims/ImsSsInfo;->mStatus:I

    .line 151
    const-string/jumbo v14, "ImsUtService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "IMS_UT_EVENT_GET_CB: status = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    aget v16, v11, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :try_start_a2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    invoke-static {v14}, Lcom/mediatek/ims/ImsUtStub;->-get0(Lcom/mediatek/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    .line 156
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    .line 155
    move/from16 v0, v16

    invoke-interface {v14, v15, v0, v10}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationCallBarringQueried(Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/ImsSsInfo;)V
    :try_end_b9
    .catch Landroid/os/RemoteException; {:try_start_a2 .. :try_end_b9} :catch_ba

    goto :goto_58

    .line 157
    :catch_ba
    move-exception v4

    .line 158
    .local v4, "e":Landroid/os/RemoteException;
    const-string/jumbo v14, "ImsUtService"

    const-string/jumbo v15, "RemoteException in utConfigurationCallBarringQueried"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_58

    .line 161
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v10    # "info":[Lcom/android/ims/ImsSsInfo;
    .end local v11    # "result":[I
    :cond_c8
    iget-object v14, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v14, v14, Ljava/net/UnknownHostException;

    if-eqz v14, :cond_106

    .line 163
    const-string/jumbo v14, "ImsUtService"

    const-string/jumbo v15, "IMS_UT_EVENT_GET_CB: UnknownHostException."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :try_start_d7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    invoke-static {v14}, Lcom/mediatek/ims/ImsUtStub;->-get0(Lcom/mediatek/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    .line 167
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    .line 168
    new-instance v17, Lcom/android/ims/ImsReasonInfo;

    const/16 v18, 0x33f

    const/16 v19, 0x0

    invoke-direct/range {v17 .. v19}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    .line 166
    invoke-interface/range {v14 .. v17}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_f5
    .catch Landroid/os/RemoteException; {:try_start_d7 .. :try_end_f5} :catch_f7

    goto/16 :goto_58

    .line 169
    :catch_f7
    move-exception v4

    .line 170
    .restart local v4    # "e":Landroid/os/RemoteException;
    const-string/jumbo v14, "ImsUtService"

    const-string/jumbo v15, "RemoteException in IMS_UT_EVENT_GET_CB: UnknownHostException utConfigurationQueryFailed"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_58

    .line 174
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_106
    iget-object v14, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v14, v14, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v14, :cond_142

    .line 175
    iget-object v13, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v13, Lcom/mediatek/simservs/xcap/XcapException;

    .line 177
    .local v13, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :try_start_110
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    invoke-static {v14}, Lcom/mediatek/ims/ImsUtStub;->-get0(Lcom/mediatek/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    .line 178
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/mediatek/ims/ImsUtStub;->xcapExceptionToImsReasonInfo(Lcom/mediatek/simservs/xcap/XcapException;)Lcom/android/ims/ImsReasonInfo;

    move-result-object v17

    .line 177
    invoke-interface/range {v14 .. v17}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_131
    .catch Landroid/os/RemoteException; {:try_start_110 .. :try_end_131} :catch_133

    goto/16 :goto_58

    .line 180
    :catch_133
    move-exception v4

    .line 181
    .restart local v4    # "e":Landroid/os/RemoteException;
    const-string/jumbo v14, "ImsUtService"

    const-string/jumbo v15, "RemoteException in IMS_UT_EVENT_GET_CB: utConfigurationQueryFailed"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_58

    .line 187
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v13    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_142
    :try_start_142
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    invoke-static {v14}, Lcom/mediatek/ims/ImsUtStub;->-get0(Lcom/mediatek/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    .line 188
    new-instance v17, Lcom/android/ims/ImsReasonInfo;

    const/16 v18, 0x324

    .line 189
    const/16 v19, 0x0

    .line 188
    invoke-direct/range {v17 .. v19}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    .line 187
    invoke-interface/range {v14 .. v17}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_160
    .catch Landroid/os/RemoteException; {:try_start_142 .. :try_end_160} :catch_162

    goto/16 :goto_58

    .line 190
    :catch_162
    move-exception v4

    .line 191
    .restart local v4    # "e":Landroid/os/RemoteException;
    const-string/jumbo v14, "ImsUtService"

    const-string/jumbo v15, "RemoteException in IMS_UT_EVENT_GET_CB: utConfigurationQueryFailed"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_58

    .line 199
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "e":Landroid/os/RemoteException;
    :pswitch_171
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    invoke-static {v14}, Lcom/mediatek/ims/ImsUtStub;->-get0(Lcom/mediatek/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v14

    if-eqz v14, :cond_58

    .line 200
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 202
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v14, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v14, :cond_1f4

    .line 203
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 204
    .local v2, "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v6, 0x0

    .line 206
    .local v6, "imsCfInfo":[Lcom/android/ims/ImsCallForwardInfo;
    if-eqz v2, :cond_1cc

    array-length v14, v2

    if-eqz v14, :cond_1cc

    .line 207
    array-length v14, v2

    new-array v6, v14, [Lcom/android/ims/ImsCallForwardInfo;

    .line 208
    .local v6, "imsCfInfo":[Lcom/android/ims/ImsCallForwardInfo;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_193
    array-length v14, v2

    if-ge v5, v14, :cond_1cc

    .line 210
    const-string/jumbo v14, "ImsUtService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "IMS_UT_EVENT_GET_CF: cfInfo["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "] = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 211
    aget-object v16, v2, v5

    .line 210
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    aget-object v15, v2, v5

    invoke-static {v14, v15}, Lcom/mediatek/ims/ImsUtStub;->-wrap0(Lcom/mediatek/ims/ImsUtStub;Lcom/android/internal/telephony/CallForwardInfo;)Lcom/android/ims/ImsCallForwardInfo;

    move-result-object v14

    aput-object v14, v6, v5

    .line 208
    add-int/lit8 v5, v5, 0x1

    goto :goto_193

    .line 218
    .end local v5    # "i":I
    .end local v6    # "imsCfInfo":[Lcom/android/ims/ImsCallForwardInfo;
    :cond_1cc
    :try_start_1cc
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    invoke-static {v14}, Lcom/mediatek/ims/ImsUtStub;->-get0(Lcom/mediatek/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    .line 219
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    .line 218
    move/from16 v0, v16

    invoke-interface {v14, v15, v0, v6}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationCallForwardQueried(Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/ImsCallForwardInfo;)V
    :try_end_1e3
    .catch Landroid/os/RemoteException; {:try_start_1cc .. :try_end_1e3} :catch_1e5

    goto/16 :goto_58

    .line 220
    :catch_1e5
    move-exception v4

    .line 221
    .restart local v4    # "e":Landroid/os/RemoteException;
    const-string/jumbo v14, "ImsUtService"

    const-string/jumbo v15, "RemoteException in utConfigurationCallForwardQueried"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_58

    .line 225
    .end local v2    # "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_1f4
    iget-object v14, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v14, v14, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v14, :cond_230

    .line 226
    iget-object v13, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v13, Lcom/mediatek/simservs/xcap/XcapException;

    .line 228
    .restart local v13    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :try_start_1fe
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    invoke-static {v14}, Lcom/mediatek/ims/ImsUtStub;->-get0(Lcom/mediatek/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    .line 229
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/mediatek/ims/ImsUtStub;->xcapExceptionToImsReasonInfo(Lcom/mediatek/simservs/xcap/XcapException;)Lcom/android/ims/ImsReasonInfo;

    move-result-object v17

    .line 228
    invoke-interface/range {v14 .. v17}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_21f
    .catch Landroid/os/RemoteException; {:try_start_1fe .. :try_end_21f} :catch_221

    goto/16 :goto_58

    .line 231
    :catch_221
    move-exception v4

    .line 232
    .restart local v4    # "e":Landroid/os/RemoteException;
    const-string/jumbo v14, "ImsUtService"

    const-string/jumbo v15, "RemoteException in IMS_UT_EVENT_GET_CF: utConfigurationQueryFailed"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_58

    .line 236
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v13    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_230
    iget-object v14, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v14, v14, Ljava/net/UnknownHostException;

    if-eqz v14, :cond_26e

    .line 238
    const-string/jumbo v14, "ImsUtService"

    const-string/jumbo v15, "IMS_UT_EVENT_GET_CF: UnknownHostException."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :try_start_23f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    invoke-static {v14}, Lcom/mediatek/ims/ImsUtStub;->-get0(Lcom/mediatek/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    .line 242
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    .line 243
    new-instance v17, Lcom/android/ims/ImsReasonInfo;

    const/16 v18, 0x33f

    const/16 v19, 0x0

    invoke-direct/range {v17 .. v19}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    .line 241
    invoke-interface/range {v14 .. v17}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_25d
    .catch Landroid/os/RemoteException; {:try_start_23f .. :try_end_25d} :catch_25f

    goto/16 :goto_58

    .line 244
    :catch_25f
    move-exception v4

    .line 245
    .restart local v4    # "e":Landroid/os/RemoteException;
    const-string/jumbo v14, "ImsUtService"

    const-string/jumbo v15, "RemoteException in IMS_UT_EVENT_GET_CF: UnknownHostException utConfigurationQueryFailed"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_58

    .line 251
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_26e
    :try_start_26e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    invoke-static {v14}, Lcom/mediatek/ims/ImsUtStub;->-get0(Lcom/mediatek/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    .line 252
    new-instance v17, Lcom/android/ims/ImsReasonInfo;

    const/16 v18, 0x324

    .line 253
    const/16 v19, 0x0

    .line 252
    invoke-direct/range {v17 .. v19}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    .line 251
    invoke-interface/range {v14 .. v17}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_28c
    .catch Landroid/os/RemoteException; {:try_start_26e .. :try_end_28c} :catch_28e

    goto/16 :goto_58

    .line 254
    :catch_28e
    move-exception v4

    .line 255
    .restart local v4    # "e":Landroid/os/RemoteException;
    const-string/jumbo v14, "ImsUtService"

    const-string/jumbo v15, "RemoteException in IMS_UT_EVENT_GET_CF: utConfigurationQueryFailed"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_58

    .line 264
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "e":Landroid/os/RemoteException;
    :pswitch_29d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    invoke-static {v14}, Lcom/mediatek/ims/ImsUtStub;->-get0(Lcom/mediatek/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v14

    if-eqz v14, :cond_58

    .line 265
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 267
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v14, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v14, :cond_30e

    .line 268
    iget-object v11, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, [I

    .line 269
    .restart local v11    # "result":[I
    const/4 v14, 0x1

    new-array v10, v14, [Lcom/android/ims/ImsSsInfo;

    .line 270
    .restart local v10    # "info":[Lcom/android/ims/ImsSsInfo;
    new-instance v14, Lcom/android/ims/ImsSsInfo;

    invoke-direct {v14}, Lcom/android/ims/ImsSsInfo;-><init>()V

    const/4 v15, 0x0

    aput-object v14, v10, v15

    .line 271
    const/4 v14, 0x0

    aget-object v14, v10, v14

    const/4 v15, 0x0

    aget v15, v11, v15

    iput v15, v14, Lcom/android/ims/ImsSsInfo;->mStatus:I

    .line 274
    const-string/jumbo v14, "ImsUtService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "IMS_UT_EVENT_GET_CW: status = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    aget v16, v11, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :try_start_2e6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    invoke-static {v14}, Lcom/mediatek/ims/ImsUtStub;->-get0(Lcom/mediatek/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    .line 279
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    .line 278
    move/from16 v0, v16

    invoke-interface {v14, v15, v0, v10}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationCallWaitingQueried(Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/ImsSsInfo;)V
    :try_end_2fd
    .catch Landroid/os/RemoteException; {:try_start_2e6 .. :try_end_2fd} :catch_2ff

    goto/16 :goto_58

    .line 280
    :catch_2ff
    move-exception v4

    .line 281
    .restart local v4    # "e":Landroid/os/RemoteException;
    const-string/jumbo v14, "ImsUtService"

    const-string/jumbo v15, "RemoteException in utConfigurationCallWaitingQueried"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_58

    .line 284
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v10    # "info":[Lcom/android/ims/ImsSsInfo;
    .end local v11    # "result":[I
    :cond_30e
    iget-object v14, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v14, v14, Ljava/net/UnknownHostException;

    if-eqz v14, :cond_34c

    .line 286
    const-string/jumbo v14, "ImsUtService"

    const-string/jumbo v15, "IMS_UT_EVENT_GET_CW: UnknownHostException."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :try_start_31d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    invoke-static {v14}, Lcom/mediatek/ims/ImsUtStub;->-get0(Lcom/mediatek/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    .line 290
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    .line 291
    new-instance v17, Lcom/android/ims/ImsReasonInfo;

    const/16 v18, 0x33f

    const/16 v19, 0x0

    invoke-direct/range {v17 .. v19}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    .line 289
    invoke-interface/range {v14 .. v17}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_33b
    .catch Landroid/os/RemoteException; {:try_start_31d .. :try_end_33b} :catch_33d

    goto/16 :goto_58

    .line 292
    :catch_33d
    move-exception v4

    .line 293
    .restart local v4    # "e":Landroid/os/RemoteException;
    const-string/jumbo v14, "ImsUtService"

    const-string/jumbo v15, "RemoteException in IMS_UT_EVENT_GET_CW: UnknownHostException utConfigurationQueryFailed"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_58

    .line 297
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_34c
    iget-object v14, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v14, v14, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v14, :cond_388

    .line 298
    iget-object v13, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v13, Lcom/mediatek/simservs/xcap/XcapException;

    .line 300
    .restart local v13    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :try_start_356
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    invoke-static {v14}, Lcom/mediatek/ims/ImsUtStub;->-get0(Lcom/mediatek/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    .line 301
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/mediatek/ims/ImsUtStub;->xcapExceptionToImsReasonInfo(Lcom/mediatek/simservs/xcap/XcapException;)Lcom/android/ims/ImsReasonInfo;

    move-result-object v17

    .line 300
    invoke-interface/range {v14 .. v17}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_377
    .catch Landroid/os/RemoteException; {:try_start_356 .. :try_end_377} :catch_379

    goto/16 :goto_58

    .line 303
    :catch_379
    move-exception v4

    .line 304
    .restart local v4    # "e":Landroid/os/RemoteException;
    const-string/jumbo v14, "ImsUtService"

    const-string/jumbo v15, "RemoteException in IMS_UT_EVENT_GET_CW: utConfigurationQueryFailed"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_58

    .line 310
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v13    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_388
    :try_start_388
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    invoke-static {v14}, Lcom/mediatek/ims/ImsUtStub;->-get0(Lcom/mediatek/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    .line 311
    new-instance v17, Lcom/android/ims/ImsReasonInfo;

    const/16 v18, 0x324

    .line 312
    const/16 v19, 0x0

    .line 311
    invoke-direct/range {v17 .. v19}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    .line 310
    invoke-interface/range {v14 .. v17}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_3a6
    .catch Landroid/os/RemoteException; {:try_start_388 .. :try_end_3a6} :catch_3a8

    goto/16 :goto_58

    .line 313
    :catch_3a8
    move-exception v4

    .line 314
    .restart local v4    # "e":Landroid/os/RemoteException;
    const-string/jumbo v14, "ImsUtService"

    const-string/jumbo v15, "RemoteException in IMS_UT_EVENT_GET_CW: utConfigurationQueryFailed"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_58

    .line 322
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "e":Landroid/os/RemoteException;
    :pswitch_3b7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    invoke-static {v14}, Lcom/mediatek/ims/ImsUtStub;->-get0(Lcom/mediatek/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v14

    if-eqz v14, :cond_58

    .line 323
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 325
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v14, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v14, :cond_402

    .line 326
    iget-object v11, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, [I

    .line 327
    .restart local v11    # "result":[I
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 328
    .local v8, "info":Landroid/os/Bundle;
    const-string/jumbo v14, "queryClir"

    invoke-virtual {v8, v14, v11}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 331
    :try_start_3da
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    invoke-static {v14}, Lcom/mediatek/ims/ImsUtStub;->-get0(Lcom/mediatek/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-interface {v14, v15, v0, v8}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueried(Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V
    :try_end_3f1
    .catch Landroid/os/RemoteException; {:try_start_3da .. :try_end_3f1} :catch_3f3

    goto/16 :goto_58

    .line 332
    :catch_3f3
    move-exception v4

    .line 333
    .restart local v4    # "e":Landroid/os/RemoteException;
    const-string/jumbo v14, "ImsUtService"

    const-string/jumbo v15, "RemoteException in IMS_UT_EVENT_GET_CLIR: utConfigurationQueried"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_58

    .line 337
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v8    # "info":Landroid/os/Bundle;
    .end local v11    # "result":[I
    :cond_402
    iget-object v14, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v14, v14, Ljava/net/UnknownHostException;

    if-eqz v14, :cond_440

    .line 339
    const-string/jumbo v14, "ImsUtService"

    const-string/jumbo v15, "IMS_UT_EVENT_GET_CLIR: UnknownHostException."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :try_start_411
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    invoke-static {v14}, Lcom/mediatek/ims/ImsUtStub;->-get0(Lcom/mediatek/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    .line 343
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    .line 344
    new-instance v17, Lcom/android/ims/ImsReasonInfo;

    const/16 v18, 0x33f

    const/16 v19, 0x0

    invoke-direct/range {v17 .. v19}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    .line 342
    invoke-interface/range {v14 .. v17}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_42f
    .catch Landroid/os/RemoteException; {:try_start_411 .. :try_end_42f} :catch_431

    goto/16 :goto_58

    .line 345
    :catch_431
    move-exception v4

    .line 346
    .restart local v4    # "e":Landroid/os/RemoteException;
    const-string/jumbo v14, "ImsUtService"

    const-string/jumbo v15, "RemoteException in IMS_UT_EVENT_GET_CLIR: UnknownHostException utConfigurationQueryFailed"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_58

    .line 350
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_440
    iget-object v14, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v14, v14, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v14, :cond_47c

    .line 351
    iget-object v13, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v13, Lcom/mediatek/simservs/xcap/XcapException;

    .line 353
    .restart local v13    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :try_start_44a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    invoke-static {v14}, Lcom/mediatek/ims/ImsUtStub;->-get0(Lcom/mediatek/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    .line 354
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/mediatek/ims/ImsUtStub;->xcapExceptionToImsReasonInfo(Lcom/mediatek/simservs/xcap/XcapException;)Lcom/android/ims/ImsReasonInfo;

    move-result-object v17

    .line 353
    invoke-interface/range {v14 .. v17}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_46b
    .catch Landroid/os/RemoteException; {:try_start_44a .. :try_end_46b} :catch_46d

    goto/16 :goto_58

    .line 356
    :catch_46d
    move-exception v4

    .line 357
    .restart local v4    # "e":Landroid/os/RemoteException;
    const-string/jumbo v14, "ImsUtService"

    const-string/jumbo v15, "RemoteException in IMS_UT_EVENT_GET_CLIR: utConfigurationQueryFailed"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_58

    .line 363
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v13    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_47c
    :try_start_47c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    invoke-static {v14}, Lcom/mediatek/ims/ImsUtStub;->-get0(Lcom/mediatek/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    .line 364
    new-instance v17, Lcom/android/ims/ImsReasonInfo;

    const/16 v18, 0x324

    .line 365
    const/16 v19, 0x0

    .line 364
    invoke-direct/range {v17 .. v19}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    .line 363
    invoke-interface/range {v14 .. v17}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_49a
    .catch Landroid/os/RemoteException; {:try_start_47c .. :try_end_49a} :catch_49c

    goto/16 :goto_58

    .line 366
    :catch_49c
    move-exception v4

    .line 367
    .restart local v4    # "e":Landroid/os/RemoteException;
    const-string/jumbo v14, "ImsUtService"

    const-string/jumbo v15, "RemoteException in IMS_UT_EVENT_GET_CLIR: utConfigurationQueryFailed"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_58

    .line 377
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "e":Landroid/os/RemoteException;
    :pswitch_4ab
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    invoke-static {v14}, Lcom/mediatek/ims/ImsUtStub;->-get0(Lcom/mediatek/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v14

    if-eqz v14, :cond_58

    .line 378
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 380
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v14, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v14, :cond_517

    .line 381
    iget-object v11, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, [I

    .line 382
    .restart local v11    # "result":[I
    new-instance v12, Lcom/android/ims/ImsSsInfo;

    invoke-direct {v12}, Lcom/android/ims/ImsSsInfo;-><init>()V

    .line 383
    .local v12, "ssInfo":Lcom/android/ims/ImsSsInfo;
    const/4 v14, 0x0

    aget v14, v11, v14

    iput v14, v12, Lcom/android/ims/ImsSsInfo;->mStatus:I

    .line 384
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 385
    .restart local v8    # "info":Landroid/os/Bundle;
    const-string/jumbo v14, "imsSsInfo"

    invoke-virtual {v8, v14, v12}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 388
    :try_start_4d8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    invoke-static {v14}, Lcom/mediatek/ims/ImsUtStub;->-get0(Lcom/mediatek/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-interface {v14, v15, v0, v8}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueried(Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V
    :try_end_4ef
    .catch Landroid/os/RemoteException; {:try_start_4d8 .. :try_end_4ef} :catch_4f1

    goto/16 :goto_58

    .line 389
    :catch_4f1
    move-exception v4

    .line 390
    .restart local v4    # "e":Landroid/os/RemoteException;
    const-string/jumbo v14, "ImsUtService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "RemoteException in utConfigurationQueried, event = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 391
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    .line 390
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_58

    .line 395
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v8    # "info":Landroid/os/Bundle;
    .end local v11    # "result":[I
    .end local v12    # "ssInfo":Lcom/android/ims/ImsSsInfo;
    :cond_517
    iget-object v14, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v14, v14, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v14, :cond_56a

    .line 396
    iget-object v13, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v13, Lcom/mediatek/simservs/xcap/XcapException;

    .line 398
    .restart local v13    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :try_start_521
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    invoke-static {v14}, Lcom/mediatek/ims/ImsUtStub;->-get0(Lcom/mediatek/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    .line 399
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/mediatek/ims/ImsUtStub;->xcapExceptionToImsReasonInfo(Lcom/mediatek/simservs/xcap/XcapException;)Lcom/android/ims/ImsReasonInfo;

    move-result-object v17

    .line 398
    invoke-interface/range {v14 .. v17}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_542
    .catch Landroid/os/RemoteException; {:try_start_521 .. :try_end_542} :catch_544

    goto/16 :goto_58

    .line 401
    :catch_544
    move-exception v4

    .line 402
    .restart local v4    # "e":Landroid/os/RemoteException;
    const-string/jumbo v14, "ImsUtService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "RemoteException in utConfigurationQueryFailed, event = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 403
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    .line 402
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_58

    .line 406
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v13    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_56a
    iget-object v14, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v14, v14, Ljava/net/UnknownHostException;

    if-eqz v14, :cond_5d6

    .line 408
    const-string/jumbo v14, "ImsUtService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "UnknownHostException. event = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :try_start_590
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    invoke-static {v14}, Lcom/mediatek/ims/ImsUtStub;->-get0(Lcom/mediatek/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    .line 412
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    .line 413
    new-instance v17, Lcom/android/ims/ImsReasonInfo;

    const/16 v18, 0x33f

    const/16 v19, 0x0

    invoke-direct/range {v17 .. v19}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    .line 411
    invoke-interface/range {v14 .. v17}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_5ae
    .catch Landroid/os/RemoteException; {:try_start_590 .. :try_end_5ae} :catch_5b0

    goto/16 :goto_58

    .line 414
    :catch_5b0
    move-exception v4

    .line 415
    .restart local v4    # "e":Landroid/os/RemoteException;
    const-string/jumbo v14, "ImsUtService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "RemoteException UnknownHostException utConfigurationQueryFailed, event"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 416
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    .line 415
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_58

    .line 421
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_5d6
    :try_start_5d6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    invoke-static {v14}, Lcom/mediatek/ims/ImsUtStub;->-get0(Lcom/mediatek/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    .line 422
    new-instance v17, Lcom/android/ims/ImsReasonInfo;

    const/16 v18, 0x324

    .line 423
    const/16 v19, 0x0

    .line 422
    invoke-direct/range {v17 .. v19}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    .line 421
    invoke-interface/range {v14 .. v17}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_5f4
    .catch Landroid/os/RemoteException; {:try_start_5d6 .. :try_end_5f4} :catch_5f6

    goto/16 :goto_58

    .line 424
    :catch_5f6
    move-exception v4

    .line 425
    .restart local v4    # "e":Landroid/os/RemoteException;
    const-string/jumbo v14, "ImsUtService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "RemoteException in utConfigurationQueryFailed, event = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 426
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    .line 425
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_58

    .line 438
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "e":Landroid/os/RemoteException;
    :pswitch_61c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    invoke-static {v14}, Lcom/mediatek/ims/ImsUtStub;->-get0(Lcom/mediatek/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v14

    if-eqz v14, :cond_6a9

    .line 439
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 441
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v14, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v14, :cond_6a9

    iget-object v14, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v14, :cond_6a9

    .line 442
    iget-object v14, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v14, v14, [Lcom/android/internal/telephony/CallForwardInfo;

    if-eqz v14, :cond_6a9

    .line 443
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 444
    .restart local v2    # "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v6, 0x0

    .line 446
    .local v6, "imsCfInfo":[Lcom/android/ims/ImsCallForwardInfo;
    if-eqz v2, :cond_681

    array-length v14, v2

    if-eqz v14, :cond_681

    .line 447
    array-length v14, v2

    new-array v6, v14, [Lcom/android/ims/ImsCallForwardInfo;

    .line 448
    .local v6, "imsCfInfo":[Lcom/android/ims/ImsCallForwardInfo;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_648
    array-length v14, v2

    if-ge v5, v14, :cond_681

    .line 450
    const-string/jumbo v14, "ImsUtService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "IMS_UT_EVENT_SET_CF: cfInfo["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "] = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 451
    aget-object v16, v2, v5

    .line 450
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    aget-object v15, v2, v5

    invoke-static {v14, v15}, Lcom/mediatek/ims/ImsUtStub;->-wrap0(Lcom/mediatek/ims/ImsUtStub;Lcom/android/internal/telephony/CallForwardInfo;)Lcom/android/ims/ImsCallForwardInfo;

    move-result-object v14

    aput-object v14, v6, v5

    .line 448
    add-int/lit8 v5, v5, 0x1

    goto :goto_648

    .line 458
    .end local v5    # "i":I
    .end local v6    # "imsCfInfo":[Lcom/android/ims/ImsCallForwardInfo;
    :cond_681
    :try_start_681
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    invoke-static {v14}, Lcom/mediatek/ims/ImsUtStub;->-get0(Lcom/mediatek/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    .line 459
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    .line 458
    move/from16 v0, v16

    invoke-interface {v14, v15, v0, v6}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationCallForwardQueried(Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/ImsCallForwardInfo;)V
    :try_end_698
    .catch Landroid/os/RemoteException; {:try_start_681 .. :try_end_698} :catch_69a

    goto/16 :goto_58

    .line 460
    :catch_69a
    move-exception v4

    .line 461
    .restart local v4    # "e":Landroid/os/RemoteException;
    const-string/jumbo v14, "ImsUtService"

    const-string/jumbo v15, "RemoteException in utConfigurationCFUpdateAndQueried"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_58

    .line 475
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_6a9
    :pswitch_6a9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    invoke-static {v14}, Lcom/mediatek/ims/ImsUtStub;->-get0(Lcom/mediatek/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v14

    if-eqz v14, :cond_58

    .line 476
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 478
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v14, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v14, :cond_71a

    .line 480
    const-string/jumbo v14, "ImsUtService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "utConfigurationUpdated(): event = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 481
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    .line 480
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :try_start_6dd
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    invoke-static {v14}, Lcom/mediatek/ims/ImsUtStub;->-get0(Lcom/mediatek/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    invoke-interface/range {v14 .. v16}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V
    :try_end_6f2
    .catch Landroid/os/RemoteException; {:try_start_6dd .. :try_end_6f2} :catch_6f4

    goto/16 :goto_58

    .line 485
    :catch_6f4
    move-exception v4

    .line 486
    .restart local v4    # "e":Landroid/os/RemoteException;
    const-string/jumbo v14, "ImsUtService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "RemoteException in utConfigurationUpdated, event = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 487
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    .line 486
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_58

    .line 491
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_71a
    iget-object v14, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v14, v14, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v14, :cond_76d

    .line 492
    iget-object v13, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v13, Lcom/mediatek/simservs/xcap/XcapException;

    .line 494
    .restart local v13    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :try_start_724
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    invoke-static {v14}, Lcom/mediatek/ims/ImsUtStub;->-get0(Lcom/mediatek/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    .line 495
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/mediatek/ims/ImsUtStub;->xcapExceptionToImsReasonInfo(Lcom/mediatek/simservs/xcap/XcapException;)Lcom/android/ims/ImsReasonInfo;

    move-result-object v17

    .line 494
    invoke-interface/range {v14 .. v17}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_745
    .catch Landroid/os/RemoteException; {:try_start_724 .. :try_end_745} :catch_747

    goto/16 :goto_58

    .line 497
    :catch_747
    move-exception v4

    .line 498
    .restart local v4    # "e":Landroid/os/RemoteException;
    const-string/jumbo v14, "ImsUtService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "RemoteException in utConfigurationUpdateFailed, event = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 499
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    .line 498
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_58

    .line 502
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v13    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_76d
    iget-object v14, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v14, v14, Ljava/net/UnknownHostException;

    if-eqz v14, :cond_7d9

    .line 504
    const-string/jumbo v14, "ImsUtService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "UnknownHostException. event = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :try_start_793
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    invoke-static {v14}, Lcom/mediatek/ims/ImsUtStub;->-get0(Lcom/mediatek/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    .line 508
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    .line 509
    new-instance v17, Lcom/android/ims/ImsReasonInfo;

    const/16 v18, 0x33f

    const/16 v19, 0x0

    invoke-direct/range {v17 .. v19}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    .line 507
    invoke-interface/range {v14 .. v17}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_7b1
    .catch Landroid/os/RemoteException; {:try_start_793 .. :try_end_7b1} :catch_7b3

    goto/16 :goto_58

    .line 510
    :catch_7b3
    move-exception v4

    .line 511
    .restart local v4    # "e":Landroid/os/RemoteException;
    const-string/jumbo v14, "ImsUtService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "RemoteException UnknownHostException utConfigurationUpdateFailed, event"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 512
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    .line 511
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_58

    .line 517
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_7d9
    :try_start_7d9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    invoke-static {v14}, Lcom/mediatek/ims/ImsUtStub;->-get0(Lcom/mediatek/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    .line 518
    new-instance v17, Lcom/android/ims/ImsReasonInfo;

    const/16 v18, 0x324

    .line 519
    const/16 v19, 0x0

    .line 518
    invoke-direct/range {v17 .. v19}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    .line 517
    invoke-interface/range {v14 .. v17}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_7f7
    .catch Landroid/os/RemoteException; {:try_start_7d9 .. :try_end_7f7} :catch_7f9

    goto/16 :goto_58

    .line 520
    :catch_7f9
    move-exception v4

    .line 521
    .restart local v4    # "e":Landroid/os/RemoteException;
    const-string/jumbo v14, "ImsUtService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "RemoteException in utConfigurationUpdateFailed, event = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 522
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    .line 521
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_58

    .line 531
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "e":Landroid/os/RemoteException;
    :pswitch_81f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    invoke-static {v14}, Lcom/mediatek/ims/ImsUtStub;->-get0(Lcom/mediatek/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v14

    if-eqz v14, :cond_58

    .line 532
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 534
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v14, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v14, :cond_8a8

    .line 535
    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Lcom/android/internal/telephony/CallForwardInfoEx;

    .line 536
    .local v3, "cfInfo":[Lcom/android/internal/telephony/CallForwardInfoEx;
    const/4 v7, 0x0

    .line 538
    .local v7, "imsCfInfo":[Lcom/android/ims/ImsCallForwardInfoEx;
    if-eqz v3, :cond_880

    array-length v14, v3

    if-eqz v14, :cond_880

    .line 539
    array-length v14, v3

    new-array v7, v14, [Lcom/android/ims/ImsCallForwardInfoEx;

    .line 540
    .local v7, "imsCfInfo":[Lcom/android/ims/ImsCallForwardInfoEx;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_841
    array-length v14, v3

    if-ge v5, v14, :cond_880

    .line 541
    new-instance v9, Lcom/android/ims/ImsCallForwardInfoEx;

    invoke-direct {v9}, Lcom/android/ims/ImsCallForwardInfoEx;-><init>()V

    .line 543
    .local v9, "info":Lcom/android/ims/ImsCallForwardInfoEx;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    aget-object v15, v3, v5

    iget v15, v15, Lcom/android/internal/telephony/CallForwardInfoEx;->reason:I

    invoke-static {v14, v15}, Lcom/mediatek/ims/ImsUtStub;->-wrap1(Lcom/mediatek/ims/ImsUtStub;I)I

    move-result v14

    .line 542
    iput v14, v9, Lcom/android/ims/ImsCallForwardInfoEx;->mCondition:I

    .line 544
    aget-object v14, v3, v5

    iget v14, v14, Lcom/android/internal/telephony/CallForwardInfoEx;->status:I

    iput v14, v9, Lcom/android/ims/ImsCallForwardInfoEx;->mStatus:I

    .line 545
    aget-object v14, v3, v5

    iget v14, v14, Lcom/android/internal/telephony/CallForwardInfoEx;->serviceClass:I

    iput v14, v9, Lcom/android/ims/ImsCallForwardInfoEx;->mServiceClass:I

    .line 546
    aget-object v14, v3, v5

    iget v14, v14, Lcom/android/internal/telephony/CallForwardInfoEx;->toa:I

    iput v14, v9, Lcom/android/ims/ImsCallForwardInfoEx;->mToA:I

    .line 547
    aget-object v14, v3, v5

    iget-object v14, v14, Lcom/android/internal/telephony/CallForwardInfoEx;->number:Ljava/lang/String;

    iput-object v14, v9, Lcom/android/ims/ImsCallForwardInfoEx;->mNumber:Ljava/lang/String;

    .line 548
    aget-object v14, v3, v5

    iget v14, v14, Lcom/android/internal/telephony/CallForwardInfoEx;->timeSeconds:I

    iput v14, v9, Lcom/android/ims/ImsCallForwardInfoEx;->mTimeSeconds:I

    .line 549
    aget-object v14, v3, v5

    iget-object v14, v14, Lcom/android/internal/telephony/CallForwardInfoEx;->timeSlot:[J

    iput-object v14, v9, Lcom/android/ims/ImsCallForwardInfoEx;->mTimeSlot:[J

    .line 550
    aput-object v9, v7, v5

    .line 540
    add-int/lit8 v5, v5, 0x1

    goto :goto_841

    .line 555
    .end local v5    # "i":I
    .end local v7    # "imsCfInfo":[Lcom/android/ims/ImsCallForwardInfoEx;
    .end local v9    # "info":Lcom/android/ims/ImsCallForwardInfoEx;
    :cond_880
    :try_start_880
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    invoke-static {v14}, Lcom/mediatek/ims/ImsUtStub;->-get0(Lcom/mediatek/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v14

    .line 556
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    .line 555
    move/from16 v0, v16

    invoke-interface {v14, v15, v0, v7}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationCallForwardInTimeSlotQueried(Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/ImsCallForwardInfoEx;)V
    :try_end_897
    .catch Landroid/os/RemoteException; {:try_start_880 .. :try_end_897} :catch_899

    goto/16 :goto_58

    .line 557
    :catch_899
    move-exception v4

    .line 558
    .restart local v4    # "e":Landroid/os/RemoteException;
    const-string/jumbo v14, "ImsUtService"

    const-string/jumbo v15, "RemoteException in IMS_UT_EVENT_GET_CF_TIME_SLOT utConfigurationCallForwardInTimeSlotQueried"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_58

    .line 563
    .end local v3    # "cfInfo":[Lcom/android/internal/telephony/CallForwardInfoEx;
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_8a8
    iget-object v14, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v14, v14, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v14, :cond_8e4

    .line 564
    iget-object v13, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v13, Lcom/mediatek/simservs/xcap/XcapException;

    .line 566
    .restart local v13    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :try_start_8b2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    invoke-static {v14}, Lcom/mediatek/ims/ImsUtStub;->-get0(Lcom/mediatek/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v14

    .line 567
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/mediatek/ims/ImsUtStub;->xcapExceptionToImsReasonInfo(Lcom/mediatek/simservs/xcap/XcapException;)Lcom/android/ims/ImsReasonInfo;

    move-result-object v17

    .line 566
    invoke-interface/range {v14 .. v17}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_8d3
    .catch Landroid/os/RemoteException; {:try_start_8b2 .. :try_end_8d3} :catch_8d5

    goto/16 :goto_58

    .line 569
    :catch_8d5
    move-exception v4

    .line 570
    .restart local v4    # "e":Landroid/os/RemoteException;
    const-string/jumbo v14, "ImsUtService"

    const-string/jumbo v15, "RemoteException in IMS_UT_EVENT_GET_CF_TIME_SLOT utConfigurationQueryFailed"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_58

    .line 574
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v13    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_8e4
    iget-object v14, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v14, v14, Ljava/net/UnknownHostException;

    if-eqz v14, :cond_922

    .line 576
    const-string/jumbo v14, "ImsUtService"

    const-string/jumbo v15, "IMS_UT_EVENT_GET_CF_TIME_SLOT: UnknownHostException."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :try_start_8f3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    invoke-static {v14}, Lcom/mediatek/ims/ImsUtStub;->-get0(Lcom/mediatek/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    .line 581
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    .line 582
    new-instance v17, Lcom/android/ims/ImsReasonInfo;

    const/16 v18, 0x33f

    const/16 v19, 0x0

    invoke-direct/range {v17 .. v19}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    .line 580
    invoke-interface/range {v14 .. v17}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_911
    .catch Landroid/os/RemoteException; {:try_start_8f3 .. :try_end_911} :catch_913

    goto/16 :goto_58

    .line 583
    :catch_913
    move-exception v4

    .line 584
    .restart local v4    # "e":Landroid/os/RemoteException;
    const-string/jumbo v14, "ImsUtService"

    const-string/jumbo v15, "RemoteException in IMS_UT_EVENT_GET_CF_TIME_SLOT: UnknownHostException utConfigurationQueryFailed"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_58

    .line 590
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_922
    :try_start_922
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    invoke-static {v14}, Lcom/mediatek/ims/ImsUtStub;->-get0(Lcom/mediatek/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtStub;

    .line 591
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    .line 592
    new-instance v17, Lcom/android/ims/ImsReasonInfo;

    .line 593
    const/16 v18, 0x324

    const/16 v19, 0x0

    .line 592
    invoke-direct/range {v17 .. v19}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    .line 590
    invoke-interface/range {v14 .. v17}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_940
    .catch Landroid/os/RemoteException; {:try_start_922 .. :try_end_940} :catch_942

    goto/16 :goto_58

    .line 594
    :catch_942
    move-exception v4

    .line 595
    .restart local v4    # "e":Landroid/os/RemoteException;
    const-string/jumbo v14, "ImsUtService"

    const-string/jumbo v15, "RemoteException in IMS_UT_EVENT_GET_CF_TIME_SLOT utConfigurationQueryFailed"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_58

    .line 139
    nop

    :pswitch_data_952
    .packed-switch 0x3e8
        :pswitch_59
        :pswitch_171
        :pswitch_29d
        :pswitch_3b7
        :pswitch_4ab
        :pswitch_4ab
        :pswitch_4ab
        :pswitch_61c
        :pswitch_61c
        :pswitch_6a9
        :pswitch_6a9
        :pswitch_6a9
        :pswitch_6a9
        :pswitch_6a9
        :pswitch_81f
        :pswitch_6a9
    .end packed-switch
.end method
