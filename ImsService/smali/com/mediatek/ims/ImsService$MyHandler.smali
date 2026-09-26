.class Lcom/mediatek/ims/ImsService$MyHandler;
.super Landroid/os/Handler;
.source "ImsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/ImsService;


# direct methods
.method private constructor <init>(Lcom/mediatek/ims/ImsService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/ims/ImsService;

    .prologue
    .line 1097
    iput-object p1, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/ims/ImsService;Lcom/mediatek/ims/ImsService$MyHandler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/mediatek/ims/ImsService;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsService$MyHandler;-><init>(Lcom/mediatek/ims/ImsService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1103
    iget-object v8, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->-wrap2(Lcom/mediatek/ims/ImsService;)I

    move-result v5

    .line 1104
    .local v5, "phoneId":I
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_404

    .line 1100
    :cond_b
    :goto_b
    return-void

    .line 1106
    :sswitch_c
    const-string/jumbo v8, "ImsService"

    const-string/jumbo v9, "receive EVENT_IMS_REGISTRATION_INFO"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1125
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [I

    const/4 v9, 0x2

    aget v7, v8, v9

    .line 1126
    .local v7, "socketId":I
    iget-object v8, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->-get0(Lcom/mediatek/ims/ImsService;)I

    move-result v8

    if-eq v7, v8, :cond_54

    .line 1127
    const-string/jumbo v8, "ImsService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "IMS: drop IMS reg info, socketId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1128
    const-string/jumbo v10, " mActivePhoneId = "

    .line 1127
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1128
    iget-object v10, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->-get0(Lcom/mediatek/ims/ImsService;)I

    move-result v10

    .line 1127
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 1133
    :cond_54
    const/4 v4, 0x3

    .line 1134
    .local v4, "newImsRegInfo":I
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [I

    const/4 v9, 0x0

    aget v8, v8, v9

    const/4 v9, 0x1

    if-ne v8, v9, :cond_115

    .line 1135
    const/4 v4, 0x0

    .line 1140
    :goto_60
    const-string/jumbo v8, "persist.ims.simulate"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_8e

    .line 1141
    iget-object v8, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->-get7(Lcom/mediatek/ims/ImsService;)Z

    move-result v8

    if-eqz v8, :cond_118

    .line 1142
    const/4 v4, 0x0

    .line 1143
    :goto_74
    const-string/jumbo v8, "ImsService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Override EVENT_IMS_REGISTRATION_INFO: newImsRegInfo="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    :cond_8e
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [I

    const/4 v9, 0x1

    aget v3, v8, v9

    .line 1151
    .local v3, "newImsExtInfo":I
    const-string/jumbo v8, "ImsService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "newReg:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " oldReg:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->-get6(Lcom/mediatek/ims/ImsService;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    iget-object v8, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v8, v4}, Lcom/mediatek/ims/ImsService;->-set2(Lcom/mediatek/ims/ImsService;I)I

    .line 1155
    iget-object v8, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget-object v9, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v9}, Lcom/mediatek/ims/ImsService;->-get6(Lcom/mediatek/ims/ImsService;)I

    move-result v9

    invoke-static {v8, v9}, Lcom/mediatek/ims/ImsService;->-wrap8(Lcom/mediatek/ims/ImsService;I)V

    .line 1159
    const-string/jumbo v8, "ImsService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "newRegExt:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "oldRegExt:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->-get4(Lcom/mediatek/ims/ImsService;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    iget-object v8, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->-get6(Lcom/mediatek/ims/ImsService;)I

    move-result v8

    if-nez v8, :cond_11b

    .line 1163
    iget-object v8, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v8, v3}, Lcom/mediatek/ims/ImsService;->-set1(Lcom/mediatek/ims/ImsService;I)I

    .line 1167
    :goto_108
    iget-object v8, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget-object v9, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v9}, Lcom/mediatek/ims/ImsService;->-get4(Lcom/mediatek/ims/ImsService;)I

    move-result v9

    invoke-static {v8, v9}, Lcom/mediatek/ims/ImsService;->-wrap7(Lcom/mediatek/ims/ImsService;I)V

    goto/16 :goto_b

    .line 1137
    .end local v3    # "newImsExtInfo":I
    :cond_115
    const/4 v4, 0x1

    goto/16 :goto_60

    .line 1142
    :cond_118
    const/4 v4, 0x1

    goto/16 :goto_74

    .line 1165
    .restart local v3    # "newImsExtInfo":I
    :cond_11b
    iget-object v8, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/mediatek/ims/ImsService;->-set1(Lcom/mediatek/ims/ImsService;I)I

    goto :goto_108

    .line 1173
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "newImsExtInfo":I
    .end local v4    # "newImsRegInfo":I
    .end local v7    # "socketId":I
    :sswitch_122
    const-string/jumbo v8, "ImsService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "EVENT_IMS_ENABLING_URC: mActivePhoneId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1174
    iget-object v10, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->-get0(Lcom/mediatek/ims/ImsService;)I

    move-result v10

    .line 1173
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1174
    const-string/jumbo v10, " phoneId = "

    .line 1173
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    iget-object v8, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->-get0(Lcom/mediatek/ims/ImsService;)I

    move-result v8

    if-eq v8, v5, :cond_15a

    .line 1178
    iget-object v8, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v8, v5}, Lcom/mediatek/ims/ImsService;->-set0(Lcom/mediatek/ims/ImsService;I)I

    .line 1181
    :cond_15a
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v8, "com.android.ims.IMS_SERVICE_UP"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1182
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v8, "android:phone_id"

    iget-object v9, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v9}, Lcom/mediatek/ims/ImsService;->-get0(Lcom/mediatek/ims/ImsService;)I

    move-result v9

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1183
    iget-object v8, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->-get1(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1185
    iget-object v8, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-virtual {v8}, Lcom/mediatek/ims/ImsService;->enableImsAdapter()V

    .line 1186
    iget-object v8, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/mediatek/ims/ImsService;->-set4(Lcom/mediatek/ims/ImsService;I)I

    .line 1187
    const-string/jumbo v8, "ro.mtk_wfc_support"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1188
    iget-object v8, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->-wrap10(Lcom/mediatek/ims/ImsService;)V

    goto/16 :goto_b

    .line 1194
    .end local v2    # "intent":Landroid/content/Intent;
    :sswitch_199
    const-string/jumbo v8, "ImsService"

    const-string/jumbo v9, "receive EVENT_IMS_ENABLED_URC"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 1200
    :sswitch_1a4
    const-string/jumbo v8, "ImsService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "EVENT_IMS_DISABLING_URC: mActivePhoneId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1201
    iget-object v10, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->-get0(Lcom/mediatek/ims/ImsService;)I

    move-result v10

    .line 1200
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1201
    const-string/jumbo v10, " phoneId = "

    .line 1200
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    iget-object v8, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->-get0(Lcom/mediatek/ims/ImsService;)I

    move-result v8

    if-eq v8, v5, :cond_b

    .line 1205
    iget-object v8, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v8, v5}, Lcom/mediatek/ims/ImsService;->-set0(Lcom/mediatek/ims/ImsService;I)I

    goto/16 :goto_b

    .line 1210
    :sswitch_1de
    const-string/jumbo v8, "ImsService"

    const-string/jumbo v9, "receive EVENT_IMS_DISABLED_URC"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    const-string/jumbo v8, "ImsService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "IMS: phoneId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    iget-object v8, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/mediatek/ims/ImsService;->-wrap6(Lcom/mediatek/ims/ImsService;Z)V

    goto/16 :goto_b

    .line 1217
    :sswitch_209
    const-string/jumbo v8, "ImsService"

    const-string/jumbo v9, "receive EVENT_SET_IMS_ENABLED_DONE"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    :try_start_212
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1222
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_2b0

    iget-object v8, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->-get11(Lcom/mediatek/ims/ImsService;)I

    move-result v8

    const/4 v9, 0x3

    if-gt v8, v9, :cond_2b0

    .line 1223
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v8, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v8, v9, :cond_2b0

    .line 1224
    const-string/jumbo v8, "ImsService"

    const-string/jumbo v9, "zzj send ims enable fail, retrying after 1s "

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    const-string/jumbo v8, "ImsService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "zzj ar.exception =  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v10}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    const-string/jumbo v8, "ImsService"

    const-string/jumbo v9, "turnOnIms failed, return to disabled state!"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    iget-object v8, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/mediatek/ims/ImsService;->-wrap6(Lcom/mediatek/ims/ImsService;Z)V

    .line 1231
    const/16 v8, 0x64

    invoke-virtual {p0, v8}, Lcom/mediatek/ims/ImsService$MyHandler;->removeMessages(I)V

    .line 1232
    const/16 v8, 0x64

    invoke-virtual {p0, v8}, Lcom/mediatek/ims/ImsService$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    const-wide/16 v10, 0x3e8

    invoke-virtual {p0, v8, v10, v11}, Lcom/mediatek/ims/ImsService$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1233
    iget-object v8, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->-get11(Lcom/mediatek/ims/ImsService;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v8, v9}, Lcom/mediatek/ims/ImsService;->-set8(Lcom/mediatek/ims/ImsService;I)I

    .line 1238
    :goto_282
    const-string/jumbo v8, "ImsService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "zzj set ims enable, retry number = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->-get11(Lcom/mediatek/ims/ImsService;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a2
    .catch Ljava/lang/Exception; {:try_start_212 .. :try_end_2a2} :catch_2a4

    goto/16 :goto_b

    .line 1240
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :catch_2a4
    move-exception v1

    .line 1241
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "ImsService"

    const-string/jumbo v9, "zzj set ims enable retry error"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 1235
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    :cond_2b0
    :try_start_2b0
    iget-object v8, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/mediatek/ims/ImsService;->-set8(Lcom/mediatek/ims/ImsService;I)I
    :try_end_2b6
    .catch Ljava/lang/Exception; {:try_start_2b0 .. :try_end_2b6} :catch_2a4

    goto :goto_282

    .line 1248
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_2b7
    const-string/jumbo v8, "ImsService"

    const-string/jumbo v9, "zzj receive EVENT_SET_IMS_ENABLED_RETRY"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    iget-object v8, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->-get5(Lcom/mediatek/ims/ImsService;)Lcom/mediatek/ims/ImsRILAdapter;

    move-result-object v8

    if-nez v8, :cond_2d3

    .line 1251
    const-string/jumbo v8, "ImsService"

    const-string/jumbo v9, "zzj mImsRILAdapter is null"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 1253
    :cond_2d3
    iget-object v8, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->-get5(Lcom/mediatek/ims/ImsService;)Lcom/mediatek/ims/ImsRILAdapter;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v9}, Lcom/mediatek/ims/ImsService;->-get2(Lcom/mediatek/ims/ImsService;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/mediatek/ims/ImsRILAdapter;->turnOnIms(Landroid/os/Message;)V

    goto/16 :goto_b

    .line 1260
    :sswitch_2e9
    const-string/jumbo v8, "ImsService"

    const-string/jumbo v9, "receive EVENT_SET_IMS_DISABLE_DONE"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1263
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_b

    .line 1265
    const-string/jumbo v8, "ImsService"

    const-string/jumbo v9, "turnOffIms failed, return to disabled state!"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    iget-object v8, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/mediatek/ims/ImsService;->-wrap6(Lcom/mediatek/ims/ImsService;Z)V

    goto/16 :goto_b

    .line 1271
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_30b
    const-string/jumbo v8, "ImsService"

    const-string/jumbo v9, "receive EVENT_INCOMING_CALL_INDICATION"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1273
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v8, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v8, v0}, Lcom/mediatek/ims/ImsService;->-wrap9(Lcom/mediatek/ims/ImsService;Landroid/os/AsyncResult;)V

    goto/16 :goto_b

    .line 1276
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_31f
    const-string/jumbo v8, "ImsService"

    const-string/jumbo v9, "receive EVENT_CALL_RING"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 1279
    :sswitch_32a
    const-string/jumbo v8, "ImsService"

    const-string/jumbo v9, "receive EVENT_RADIO_NOT_AVAILABLE"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    iget-object v8, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget-object v9, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v9}, Lcom/mediatek/ims/ImsService;->-get0(Lcom/mediatek/ims/ImsService;)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v8, v10, v9}, Lcom/mediatek/ims/ImsService;->updateRadioState(ZI)V

    .line 1281
    iget-object v8, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/mediatek/ims/ImsService;->-wrap6(Lcom/mediatek/ims/ImsService;Z)V

    goto/16 :goto_b

    .line 1284
    :sswitch_347
    const-string/jumbo v8, "ImsService"

    const-string/jumbo v9, "receive EVENT_RADIO_OFF"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    iget-object v8, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget-object v9, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v9}, Lcom/mediatek/ims/ImsService;->-get0(Lcom/mediatek/ims/ImsService;)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v8, v10, v9}, Lcom/mediatek/ims/ImsService;->updateRadioState(ZI)V

    goto/16 :goto_b

    .line 1288
    :sswitch_35e
    const-string/jumbo v8, "ImsService"

    const-string/jumbo v9, "receive EVENT_RADIO_ON"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    iget-object v8, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget-object v9, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v9}, Lcom/mediatek/ims/ImsService;->-get0(Lcom/mediatek/ims/ImsService;)I

    move-result v9

    const/4 v10, 0x1

    invoke-virtual {v8, v10, v9}, Lcom/mediatek/ims/ImsService;->updateRadioState(ZI)V

    goto/16 :goto_b

    .line 1292
    :sswitch_375
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1293
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [I

    .line 1295
    .local v6, "sipMessage":[I
    if-eqz v6, :cond_b

    .line 1296
    const-string/jumbo v8, "ImsService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Method ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x3

    aget v10, v6, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "Reg cause ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x4

    aget v10, v6, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    const/4 v8, 0x3

    aget v8, v6, v8

    if-eqz v8, :cond_3b6

    .line 1298
    const/4 v8, 0x3

    aget v8, v6, v8

    const/16 v9, 0x9

    if-ne v8, v9, :cond_b

    .line 1299
    :cond_3b6
    iget-object v8, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->-get9(Lcom/mediatek/ims/ImsService;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3d2

    .line 1300
    iget-object v8, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget-object v9, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const/4 v10, 0x4

    aget v10, v6, v10

    const/4 v11, 0x3

    aget v11, v6, v11

    invoke-static {v9, v10, v11}, Lcom/mediatek/ims/ImsService;->-wrap4(Lcom/mediatek/ims/ImsService;II)I

    move-result v9

    invoke-static {v8, v9}, Lcom/mediatek/ims/ImsService;->-set6(Lcom/mediatek/ims/ImsService;I)I

    goto/16 :goto_b

    .line 1302
    :cond_3d2
    iget-object v8, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const/4 v9, 0x4

    aget v9, v6, v9

    invoke-static {v8, v9}, Lcom/mediatek/ims/ImsService;->-set6(Lcom/mediatek/ims/ImsService;I)I

    goto/16 :goto_b

    .line 1310
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v6    # "sipMessage":[I
    :sswitch_3dc
    const-string/jumbo v8, "ImsService"

    const-string/jumbo v9, "receive EVENT_IMS_DEREG_DONE"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 1315
    :sswitch_3e7
    const-string/jumbo v8, "ImsService"

    const-string/jumbo v9, "receive EVENT_IMS_DEREG_URC"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v8, "com.android.ims.IMS_SERVICE_DEREGISTERED"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1317
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->-get1(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_b

    .line 1104
    nop

    :sswitch_data_404
    .sparse-switch
        0x1 -> :sswitch_c
        0x2 -> :sswitch_32a
        0x3 -> :sswitch_209
        0x4 -> :sswitch_2e9
        0x5 -> :sswitch_1de
        0x7 -> :sswitch_30b
        0x9 -> :sswitch_31f
        0xa -> :sswitch_122
        0xb -> :sswitch_199
        0xc -> :sswitch_1a4
        0xd -> :sswitch_375
        0xf -> :sswitch_3dc
        0x10 -> :sswitch_3e7
        0x11 -> :sswitch_347
        0x12 -> :sswitch_35e
        0x64 -> :sswitch_2b7
    .end sparse-switch
.end method
