.class Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;
.super Landroid/os/Handler;
.source "MMTelSSTransport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/MMTelSSTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MMTelSSTransmitter"
.end annotation


# instance fields
.field dataLength:[B

.field final synthetic this$0:Lcom/mediatek/ims/MMTelSSTransport;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/MMTelSSTransport;Landroid/os/Looper;)V
    .registers 4
    .param p1, "this$0"    # Lcom/mediatek/ims/MMTelSSTransport;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 497
    iput-object p1, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    .line 498
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 502
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->dataLength:[B

    .line 497
    return-void
.end method

.method private parseCFUInfoFromCD(Lcom/mediatek/simservs/client/CommunicationDiversion;III)[Lcom/android/internal/telephony/CallForwardInfo;
    .registers 31
    .param p1, "cd"    # Lcom/mediatek/simservs/client/CommunicationDiversion;
    .param p2, "cfReason"    # I
    .param p3, "cfServiceClass"    # I
    .param p4, "phoneId"    # I

    .prologue
    .line 3884
    const/4 v7, 0x0

    .line 3885
    .local v7, "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    move/from16 v22, p3

    .line 3886
    .local v22, "serviceClass":I
    move/from16 v15, v22

    .line 3887
    .local v15, "orgServiceClass":I
    const-string/jumbo v3, ""

    .line 3890
    .local v3, "CFPhoneNum":Ljava/lang/String;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 3891
    .local v16, "queriedCallForwardInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/CallForwardInfo;>;"
    const/16 v18, 0x0

    .line 3893
    .local v18, "queryStatus":I
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v21

    .line 3895
    .local v21, "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v20, 0x0

    .line 3897
    .local v20, "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    if-eqz v21, :cond_1f3

    .line 3898
    invoke-virtual/range {v21 .. v21}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v20

    .line 3904
    .end local v20    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :goto_1b
    const/4 v13, 0x1

    .line 3905
    .local v13, "numOfExpansion":I
    if-eqz v20, :cond_281

    .line 3907
    const/4 v13, 0x1

    .line 3908
    const/16 v23, 0x5

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_1fe

    .line 3911
    const/4 v13, 0x4

    .line 3918
    :cond_28
    :goto_28
    const/4 v12, 0x0

    .local v12, "n":I
    :goto_29
    if-ge v12, v13, :cond_267

    .line 3919
    const/16 v23, 0x1

    move/from16 v0, v23

    if-eq v13, v0, :cond_35

    .line 3920
    if-nez v12, :cond_209

    const/16 p2, 0x1

    .line 3927
    :cond_35
    :goto_35
    const-string/jumbo v23, "MMTelSS"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "parseCFUInfoFromCD(): numOfExpansion="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 3928
    const-string/jumbo v25, ": with round="

    .line 3927
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 3929
    add-int/lit8 v25, v12, 0x1

    .line 3927
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 3929
    const-string/jumbo v25, ",with reason="

    .line 3927
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3932
    const/16 v23, 0x210

    move/from16 v0, v23

    if-ne v15, v0, :cond_75

    .line 3934
    const/16 v22, 0x200

    .line 3941
    :cond_75
    const/4 v14, 0x0

    .line 3943
    .local v14, "num_of_comparision":I
    if-nez v15, :cond_231

    .line 3944
    const/16 v22, 0x1

    .line 3947
    const/4 v14, 0x2

    .line 3948
    const-string/jumbo v23, "MMTelSS"

    const-string/jumbo v24, "parseCFUInfoFromCD(): serviceClass==0, try to 1st match by using SERVICE_CLASS_VOICE"

    invoke-static/range {v23 .. v24}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3957
    :goto_84
    const/4 v9, 0x0

    .local v9, "it":I
    :goto_85
    if-ge v9, v14, :cond_263

    .line 3959
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v9, v0, :cond_a0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_a0

    .line 3961
    const/16 v22, 0x200

    .line 3962
    const-string/jumbo v23, "MMTelSS"

    const-string/jumbo v24, "parseCFUInfoFromCD(): serviceClass==0, try to 2nd match by using SERVICE_CLASS_VIDEO"

    invoke-static/range {v23 .. v24}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3967
    :cond_a0
    const-string/jumbo v23, "MMTelSS"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "parseCFUInfoFromCD: num_of_comparision="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 3968
    const-string/jumbo v25, ": with round="

    .line 3967
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 3968
    add-int/lit8 v25, v9, 0x1

    .line 3967
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 3968
    const-string/jumbo v25, ",with service class="

    .line 3967
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3973
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_d9
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v6, v0, :cond_18a

    .line 3974
    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/mediatek/simservs/client/policy/Rule;

    .line 3975
    .local v19, "r":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual/range {v19 .. v19}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v5

    .line 3976
    .local v5, "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual/range {v19 .. v19}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v4

    .line 3977
    .local v4, "action":Lcom/mediatek/simservs/client/policy/Actions;
    const/4 v11, 0x0

    .line 3979
    .local v11, "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_234

    .line 3980
    const-string/jumbo v23, "MMTelSS"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "parseCFUInfoFromCD():busy="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 3981
    const-string/jumbo v25, ",NoAnswer="

    .line 3980
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 3981
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v25

    .line 3980
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 3982
    const-string/jumbo v25, ",NoReachable="

    .line 3980
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 3982
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v25

    .line 3980
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 3983
    const-string/jumbo v25, ",NotRegistered="

    .line 3980
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 3983
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v25

    .line 3980
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3984
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v11

    .line 3991
    .end local v11    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_143
    if-nez p2, :cond_256

    .line 3992
    if-eqz v5, :cond_254

    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v23

    if-nez v23, :cond_254

    .line 3993
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v23

    if-nez v23, :cond_254

    .line 3994
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v23

    if-nez v23, :cond_254

    .line 3995
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v23

    if-nez v23, :cond_254

    .line 3996
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v23

    if-nez v23, :cond_254

    .line 3997
    :cond_165
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, p4

    invoke-virtual {v0, v11, v1, v2}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;II)Z

    move-result v23

    .line 3991
    if-eqz v23, :cond_256

    .line 3998
    const-string/jumbo v23, "MMTelSS"

    const-string/jumbo v24, "parseCFUInfoFromCD():CFU is enabled on server"

    invoke-static/range {v23 .. v24}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4000
    const/16 v18, 0x1

    .line 4001
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v23

    if-eqz v23, :cond_18a

    .line 4002
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/mediatek/simservs/client/policy/ForwardTo;->getTarget()Ljava/lang/String;

    move-result-object v3

    .line 4014
    .end local v4    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v5    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v19    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_18a
    new-instance v10, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v10}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    .line 4015
    .local v10, "item":Lcom/android/internal/telephony/CallForwardInfo;
    move/from16 v0, v18

    iput v0, v10, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 4016
    move/from16 v0, p2

    iput v0, v10, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 4017
    move/from16 v0, v22

    iput v0, v10, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 4018
    const/16 v23, 0x0

    move/from16 v0, v23

    iput v0, v10, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 4019
    iput-object v3, v10, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 4020
    const/16 v23, 0x0

    move/from16 v0, v23

    iput v0, v10, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 4021
    const-string/jumbo v23, "MMTelSS"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "parseCFUInfoFromCD():add one record with reason="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 4022
    const-string/jumbo v25, ",serviceClass="

    .line 4021
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 4022
    const-string/jumbo v25, ",queryStatus="

    .line 4021
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4024
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4027
    const/16 v18, 0x0

    .line 4028
    const-string/jumbo v3, ""

    .line 3957
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_85

    .line 3900
    .end local v6    # "i":I
    .end local v9    # "it":I
    .end local v10    # "item":Lcom/android/internal/telephony/CallForwardInfo;
    .end local v12    # "n":I
    .end local v13    # "numOfExpansion":I
    .end local v14    # "num_of_comparision":I
    .restart local v20    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :cond_1f3
    const-string/jumbo v23, "MMTelSS"

    const-string/jumbo v24, "parseCFUInfoFromCD: No CF related rules in remote server"

    invoke-static/range {v23 .. v24}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b

    .line 3912
    .end local v20    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v13    # "numOfExpansion":I
    :cond_1fe
    const/16 v23, 0x4

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_28

    .line 3915
    const/4 v13, 0x5

    goto/16 :goto_28

    .line 3921
    .restart local v12    # "n":I
    :cond_209
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v12, v0, :cond_213

    const/16 p2, 0x2

    goto/16 :goto_35

    .line 3922
    :cond_213
    const/16 v23, 0x2

    move/from16 v0, v23

    if-ne v12, v0, :cond_21d

    const/16 p2, 0x3

    goto/16 :goto_35

    .line 3923
    :cond_21d
    const/16 v23, 0x3

    move/from16 v0, v23

    if-ne v12, v0, :cond_227

    const/16 p2, 0x6

    goto/16 :goto_35

    .line 3924
    :cond_227
    const/16 v23, 0x4

    move/from16 v0, v23

    if-ne v12, v0, :cond_35

    const/16 p2, 0x0

    goto/16 :goto_35

    .line 3954
    .restart local v14    # "num_of_comparision":I
    :cond_231
    const/4 v14, 0x1

    goto/16 :goto_84

    .line 3986
    .restart local v4    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v5    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v6    # "i":I
    .restart local v9    # "it":I
    .restart local v11    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_234
    const-string/jumbo v23, "MMTelSS"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "handleGetCF():Empty cond (cond==null) for this rule="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_143

    .line 3996
    .end local v11    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_254
    if-eqz v5, :cond_165

    .line 4008
    :cond_256
    const-string/jumbo v23, "MMTelSS"

    const-string/jumbo v24, "parseCFUInfoFromCD()from xcap:Not matched this rule!"

    invoke-static/range {v23 .. v24}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3973
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_d9

    .line 3918
    .end local v4    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v5    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v6    # "i":I
    .end local v19    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_263
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_29

    .line 4032
    .end local v9    # "it":I
    .end local v14    # "num_of_comparision":I
    :cond_267
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 4034
    .local v17, "queriedSize":I
    move/from16 v0, v17

    new-array v7, v0, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 4035
    .local v7, "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v8, 0x0

    .local v8, "inx":I
    :goto_270
    move/from16 v0, v17

    if-ge v8, v0, :cond_292

    .line 4036
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/internal/telephony/CallForwardInfo;

    aput-object v23, v7, v8

    .line 4035
    add-int/lit8 v8, v8, 0x1

    goto :goto_270

    .line 4040
    .end local v8    # "inx":I
    .end local v12    # "n":I
    .end local v17    # "queriedSize":I
    .local v7, "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    :cond_281
    const-string/jumbo v23, "MMTelSS"

    const-string/jumbo v24, "parseCFUInfoFromCD():get null ruleList"

    invoke-static/range {v23 .. v24}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4041
    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v7, v0, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 4042
    .local v7, "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    const/16 v18, 0x0

    .line 4044
    :cond_292
    return-object v7
.end method


# virtual methods
.method public containSpecificMedia(Ljava/util/List;II)Z
    .registers 14
    .param p2, "serviceClass"    # I
    .param p3, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II)Z"
        }
    .end annotation

    .prologue
    .local p1, "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v9, 0x200

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 513
    if-nez p1, :cond_7

    return v7

    .line 514
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_e

    return v7

    .line 522
    :cond_e
    invoke-static {p3}, Lcom/mediatek/ims/MMTelSSUtils;->isOp19IccCard(I)Z

    move-result v4

    if-eqz v4, :cond_a5

    .line 523
    const/4 v2, 0x0

    .line 524
    .local v2, "isWithVideo":Z
    const/4 v1, 0x0

    .line 526
    .local v1, "isWithAudio":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_60

    .line 527
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 528
    .local v3, "mediaType":Ljava/lang/String;
    const-string/jumbo v4, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mediaType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",serviceClass="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const-string/jumbo v4, "video"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 531
    const/4 v2, 0x1

    .line 526
    :cond_52
    :goto_52
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 532
    :cond_55
    const-string/jumbo v4, "audio"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 533
    const/4 v1, 0x1

    goto :goto_52

    .line 537
    .end local v3    # "mediaType":Ljava/lang/String;
    :cond_60
    const-string/jumbo v4, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isWithVideo ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const-string/jumbo v4, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isWithAudio ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    if-eq p2, v9, :cond_98

    .line 541
    if-nez p2, :cond_9b

    .line 540
    :cond_98
    if-eqz v2, :cond_9b

    .line 543
    return v7

    .line 544
    :cond_9b
    if-eq p2, v7, :cond_9f

    .line 545
    if-nez p2, :cond_a4

    .line 546
    :cond_9f
    if-nez v2, :cond_a4

    .line 544
    if-eqz v1, :cond_a4

    .line 547
    return v7

    .line 550
    :cond_a4
    return v8

    .line 553
    .end local v0    # "i":I
    .end local v1    # "isWithAudio":Z
    .end local v2    # "isWithVideo":Z
    :cond_a5
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_a6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_f6

    .line 554
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 555
    .restart local v3    # "mediaType":Ljava/lang/String;
    const-string/jumbo v4, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mediaType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",serviceClass="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const-string/jumbo v4, "audio"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e5

    .line 557
    if-eq p2, v7, :cond_e4

    .line 558
    if-nez p2, :cond_e5

    .line 559
    :cond_e4
    return v7

    .line 560
    :cond_e5
    const-string/jumbo v4, "video"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f3

    .line 561
    if-eq p2, v9, :cond_f2

    .line 562
    if-nez p2, :cond_f3

    .line 563
    :cond_f2
    return v7

    .line 553
    :cond_f3
    add-int/lit8 v0, v0, 0x1

    goto :goto_a6

    .line 566
    .end local v3    # "mediaType":Ljava/lang/String;
    :cond_f6
    return v8
.end method

.method public convertToLocalTime(Ljava/lang/String;)[J
    .registers 12
    .param p1, "timeSlotString"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 5416
    const/4 v5, 0x0

    .line 5417
    .local v5, "timeSlot":[J
    if-eqz p1, :cond_3a

    .line 5418
    const-string/jumbo v6, ","

    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 5419
    .local v4, "timeArray":[Ljava/lang/String;
    array-length v6, v4

    if-ne v6, v8, :cond_3a

    .line 5420
    new-array v5, v8, [J

    .line 5421
    .local v5, "timeSlot":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_12
    if-ge v3, v8, :cond_3a

    .line 5422
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "HH:mm"

    invoke-direct {v1, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 5423
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string/jumbo v6, "GMT+8"

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 5425
    :try_start_26
    aget-object v6, v4, v3

    invoke-virtual {v1, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 5426
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    aput-wide v6, v5, v3
    :try_end_32
    .catch Ljava/text/ParseException; {:try_start_26 .. :try_end_32} :catch_35

    .line 5421
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 5427
    .end local v0    # "date":Ljava/util/Date;
    :catch_35
    move-exception v2

    .line 5428
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    .line 5429
    return-object v9

    .line 5434
    .end local v1    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v2    # "e":Ljava/text/ParseException;
    .end local v3    # "i":I
    .end local v4    # "timeArray":[Ljava/lang/String;
    .end local v5    # "timeSlot":[J
    :cond_3a
    return-object v5
.end method

.method public convertToSeverTime([J)Ljava/lang/String;
    .registers 9
    .param p1, "timeSlot"    # [J

    .prologue
    const/4 v6, 0x0

    .line 5438
    const/4 v3, 0x0

    .line 5439
    .local v3, "timeSlotString":Ljava/lang/String;
    if-eqz p1, :cond_8

    array-length v4, p1

    const/4 v5, 0x2

    if-eq v4, v5, :cond_9

    .line 5440
    :cond_8
    return-object v6

    .line 5442
    :cond_9
    const/4 v2, 0x0

    .end local v3    # "timeSlotString":Ljava/lang/String;
    .local v2, "i":I
    :goto_a
    array-length v4, p1

    if-ge v2, v4, :cond_4c

    .line 5443
    new-instance v0, Ljava/util/Date;

    aget-wide v4, p1, v2

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 5444
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "HH:mm"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 5445
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string/jumbo v4, "GMT+8"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 5446
    if-nez v2, :cond_2f

    .line 5447
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 5442
    .local v3, "timeSlotString":Ljava/lang/String;
    :goto_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 5449
    .end local v3    # "timeSlotString":Ljava/lang/String;
    :cond_2f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "timeSlotString":Ljava/lang/String;
    goto :goto_2c

    .line 5452
    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v3    # "timeSlotString":Ljava/lang/String;
    :cond_4c
    return-object v3
.end method

.method public copyOldRuleToNewRuleSet(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;II)Lcom/mediatek/simservs/client/policy/Rule;
    .registers 16
    .param p1, "oldRule"    # Lcom/mediatek/simservs/client/policy/Rule;
    .param p2, "newRuleSet"    # Lcom/mediatek/simservs/client/policy/RuleSet;
    .param p3, "cfAction"    # I
    .param p4, "cfReason"    # I

    .prologue
    .line 2418
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v5

    .line 2419
    .local v5, "oldCond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v4

    .line 2421
    .local v4, "oldAction":Lcom/mediatek/simservs/client/policy/Actions;
    iget-object v8, p1, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {p2, v8}, Lcom/mediatek/simservs/client/policy/RuleSet;->createNewRule(Ljava/lang/String;)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v3

    .line 2422
    .local v3, "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Rule;->createConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v2

    .line 2423
    .local v2, "newCond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Rule;->createActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v1

    .line 2425
    .local v1, "newAction":Lcom/mediatek/simservs/client/policy/Actions;
    if-eqz v5, :cond_92

    .line 2426
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v8

    if-eqz v8, :cond_21

    .line 2427
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addBusy()V

    .line 2429
    :cond_21
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendCommunicationDiverted()Z

    move-result v8

    if-eqz v8, :cond_2a

    .line 2430
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addCommunicationDiverted()V

    .line 2432
    :cond_2a
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v8

    if-eqz v8, :cond_33

    .line 2433
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternational()V

    .line 2435
    :cond_33
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternationalExHc()Z

    move-result v8

    if-eqz v8, :cond_3c

    .line 2436
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternationalExHc()V

    .line 2438
    :cond_3c
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v8

    if-eqz v8, :cond_45

    .line 2439
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addNoAnswer()V

    .line 2441
    :cond_45
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v8

    if-eqz v8, :cond_4e

    .line 2442
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotReachable()V

    .line 2444
    :cond_4e
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v8

    if-eqz v8, :cond_57

    .line 2445
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotRegistered()V

    .line 2447
    :cond_57
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendPresenceStatus()Z

    move-result v8

    if-eqz v8, :cond_60

    .line 2448
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addPresenceStatus()V

    .line 2450
    :cond_60
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v8

    if-eqz v8, :cond_69

    .line 2451
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addRoaming()V

    .line 2453
    :cond_69
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v8

    if-eqz v8, :cond_72

    .line 2454
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addRuleDeactivated()V

    .line 2457
    :cond_72
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v7

    .line 2458
    .local v7, "oldMediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_8b

    .line 2459
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_79
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_8b

    .line 2460
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 2459
    add-int/lit8 v0, v0, 0x1

    goto :goto_79

    .line 2464
    .end local v0    # "i":I
    :cond_8b
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendTime()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/mediatek/simservs/client/policy/Conditions;->addTime(Ljava/lang/String;)V

    .line 2467
    .end local v7    # "oldMediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_92
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v6

    .line 2468
    .local v6, "oldForward":Lcom/mediatek/simservs/client/policy/ForwardTo;
    if-eqz v6, :cond_da

    .line 2469
    const/4 v8, 0x4

    if-ne p3, v8, :cond_ce

    .line 2470
    if-nez p4, :cond_ce

    .line 2471
    const-string/jumbo v8, "MMTelSS"

    const-string/jumbo v9, "No need to append the original numebr in Erasure."

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2472
    const-string/jumbo v8, ""

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/ForwardTo;->isNotifyCaller()Z

    move-result v9

    invoke-virtual {v1, v8, v9}, Lcom/mediatek/simservs/client/policy/Actions;->setFowardTo(Ljava/lang/String;Z)V

    .line 2476
    :goto_b0
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v8

    .line 2477
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/ForwardTo;->isRevealIdentityToCaller()Z

    move-result v9

    .line 2476
    invoke-virtual {v8, v9}, Lcom/mediatek/simservs/client/policy/ForwardTo;->setRevealIdentityToCaller(Z)V

    .line 2478
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v8

    .line 2479
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/ForwardTo;->isRevealIdentityToTarget()Z

    move-result v9

    .line 2478
    invoke-virtual {v8, v9}, Lcom/mediatek/simservs/client/policy/ForwardTo;->setRevealIdentityToTarget(Z)V

    .line 2485
    :goto_c6
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v8

    invoke-virtual {v1, v8}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    .line 2486
    return-object v3

    .line 2474
    :cond_ce
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/ForwardTo;->getTarget()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/ForwardTo;->isNotifyCaller()Z

    move-result v9

    invoke-virtual {v1, v8, v9}, Lcom/mediatek/simservs/client/policy/Actions;->setFowardTo(Ljava/lang/String;Z)V

    goto :goto_b0

    .line 2481
    :cond_da
    const-string/jumbo v8, "MMTelSS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "No need to append the forward number, cfAction: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2482
    const-string/jumbo v10, ", cfReason: "

    .line 2481
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c6
.end method

.method public copyOldRuleToNewRuleSetExceptSpecificMedia(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;IIII)Lcom/mediatek/simservs/client/policy/Rule;
    .registers 19
    .param p1, "oldRule"    # Lcom/mediatek/simservs/client/policy/Rule;
    .param p2, "newRuleSet"    # Lcom/mediatek/simservs/client/policy/RuleSet;
    .param p3, "requestedServiceClass"    # I
    .param p4, "phoneId"    # I
    .param p5, "cfAction"    # I
    .param p6, "cfReason"    # I

    .prologue
    .line 2523
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    .line 2524
    .local v6, "oldCond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v5

    .line 2576
    .local v5, "oldAction":Lcom/mediatek/simservs/client/policy/Actions;
    if-eqz v6, :cond_18

    .line 2577
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v9

    move/from16 v0, p4

    invoke-virtual {p0, v9, p3, v0}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->hasExtraMedia(Ljava/util/List;II)Z

    move-result v9

    if-nez v9, :cond_18

    .line 2582
    const/4 v9, 0x0

    return-object v9

    .line 2585
    :cond_18
    iget-object v9, p1, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {p2, v9}, Lcom/mediatek/simservs/client/policy/RuleSet;->createNewRule(Ljava/lang/String;)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v4

    .line 2586
    .local v4, "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Rule;->createConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v3

    .line 2587
    .local v3, "newCond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Rule;->createActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v2

    .line 2589
    .local v2, "newAction":Lcom/mediatek/simservs/client/policy/Actions;
    if-eqz v6, :cond_ee

    .line 2590
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v9

    if-eqz v9, :cond_31

    .line 2591
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addBusy()V

    .line 2593
    :cond_31
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendCommunicationDiverted()Z

    move-result v9

    if-eqz v9, :cond_3a

    .line 2594
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addCommunicationDiverted()V

    .line 2596
    :cond_3a
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v9

    if-eqz v9, :cond_43

    .line 2597
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternational()V

    .line 2599
    :cond_43
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternationalExHc()Z

    move-result v9

    if-eqz v9, :cond_4c

    .line 2600
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternationalExHc()V

    .line 2602
    :cond_4c
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v9

    if-eqz v9, :cond_55

    .line 2603
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addNoAnswer()V

    .line 2605
    :cond_55
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v9

    if-eqz v9, :cond_5e

    .line 2606
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotReachable()V

    .line 2608
    :cond_5e
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v9

    if-eqz v9, :cond_67

    .line 2609
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotRegistered()V

    .line 2611
    :cond_67
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendPresenceStatus()Z

    move-result v9

    if-eqz v9, :cond_70

    .line 2612
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addPresenceStatus()V

    .line 2614
    :cond_70
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v9

    if-eqz v9, :cond_79

    .line 2615
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addRoaming()V

    .line 2617
    :cond_79
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v9

    if-eqz v9, :cond_82

    .line 2618
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addRuleDeactivated()V

    .line 2621
    :cond_82
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v8

    .line 2622
    .local v8, "oldMediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v8, :cond_a9

    .line 2623
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_89
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-ge v1, v9, :cond_a9

    .line 2624
    invoke-virtual {p0, p3}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->getMediaType(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a6

    .line 2625
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v3, v9}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 2623
    :cond_a6
    add-int/lit8 v1, v1, 0x1

    goto :goto_89

    .line 2630
    .end local v1    # "i":I
    :cond_a9
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendTime()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/mediatek/simservs/client/policy/Conditions;->addTime(Ljava/lang/String;)V

    .line 2656
    .end local v8    # "oldMediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_b0
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v7

    .line 2657
    .local v7, "oldForward":Lcom/mediatek/simservs/client/policy/ForwardTo;
    if-eqz v7, :cond_163

    .line 2658
    const/4 v9, 0x4

    move/from16 v0, p5

    if-ne v0, v9, :cond_156

    .line 2659
    if-nez p6, :cond_156

    .line 2660
    const-string/jumbo v9, "MMTelSS"

    const-string/jumbo v10, "No need to append the original numebr in Erasure."

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2661
    const-string/jumbo v9, ""

    invoke-virtual {v7}, Lcom/mediatek/simservs/client/policy/ForwardTo;->isNotifyCaller()Z

    move-result v10

    invoke-virtual {v2, v9, v10}, Lcom/mediatek/simservs/client/policy/Actions;->setFowardTo(Ljava/lang/String;Z)V

    .line 2665
    :goto_d0
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v9

    .line 2666
    invoke-virtual {v7}, Lcom/mediatek/simservs/client/policy/ForwardTo;->isRevealIdentityToCaller()Z

    move-result v10

    .line 2665
    invoke-virtual {v9, v10}, Lcom/mediatek/simservs/client/policy/ForwardTo;->setRevealIdentityToCaller(Z)V

    .line 2667
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v9

    .line 2668
    invoke-virtual {v7}, Lcom/mediatek/simservs/client/policy/ForwardTo;->isRevealIdentityToTarget()Z

    move-result v10

    .line 2667
    invoke-virtual {v9, v10}, Lcom/mediatek/simservs/client/policy/ForwardTo;->setRevealIdentityToTarget(Z)V

    .line 2673
    :goto_e6
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v9

    invoke-virtual {v2, v9}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    .line 2675
    return-object v4

    .line 2635
    .end local v7    # "oldForward":Lcom/mediatek/simservs/client/policy/ForwardTo;
    :cond_ee
    invoke-static/range {p4 .. p4}, Lcom/mediatek/ims/MMTelSSUtils;->isOp03IccCard(I)Z

    move-result v9

    if-nez v9, :cond_b0

    .line 2636
    invoke-static/range {p4 .. p4}, Lcom/mediatek/ims/MMTelSSUtils;->isOp05IccCard(I)Z

    move-result v9

    if-nez v9, :cond_b0

    .line 2637
    invoke-static/range {p4 .. p4}, Lcom/mediatek/ims/MMTelSSUtils;->isOp06IccCard(I)Z

    move-result v9

    if-nez v9, :cond_b0

    .line 2638
    invoke-static/range {p4 .. p4}, Lcom/mediatek/ims/MMTelSSUtils;->isOp06NetherlandsIccCard(I)Z

    move-result v9

    if-nez v9, :cond_b0

    .line 2639
    invoke-static/range {p4 .. p4}, Lcom/mediatek/ims/MMTelSSUtils;->isOp07IccCard(I)Z

    move-result v9

    if-nez v9, :cond_b0

    .line 2640
    invoke-static/range {p4 .. p4}, Lcom/mediatek/ims/MMTelSSUtils;->isOp08IccCard(I)Z

    move-result v9

    if-nez v9, :cond_b0

    .line 2641
    invoke-static/range {p4 .. p4}, Lcom/mediatek/ims/MMTelSSUtils;->isOp15IccCard(I)Z

    move-result v9

    if-nez v9, :cond_b0

    .line 2642
    invoke-static/range {p4 .. p4}, Lcom/mediatek/ims/MMTelSSUtils;->isOp124IccCard(I)Z

    move-result v9

    if-nez v9, :cond_b0

    .line 2643
    invoke-static/range {p4 .. p4}, Lcom/mediatek/ims/MMTelSSUtils;->isOp130IccCard(I)Z

    move-result v9

    if-nez v9, :cond_b0

    .line 2644
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2645
    .restart local v8    # "oldMediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v9, "audio"

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2646
    const-string/jumbo v9, "video"

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2647
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_136
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-ge v1, v9, :cond_b0

    .line 2648
    invoke-virtual {p0, p3}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->getMediaType(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_153

    .line 2650
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v3, v9}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 2647
    :cond_153
    add-int/lit8 v1, v1, 0x1

    goto :goto_136

    .line 2663
    .end local v1    # "i":I
    .end local v8    # "oldMediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "oldForward":Lcom/mediatek/simservs/client/policy/ForwardTo;
    :cond_156
    invoke-virtual {v7}, Lcom/mediatek/simservs/client/policy/ForwardTo;->getTarget()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lcom/mediatek/simservs/client/policy/ForwardTo;->isNotifyCaller()Z

    move-result v10

    invoke-virtual {v2, v9, v10}, Lcom/mediatek/simservs/client/policy/Actions;->setFowardTo(Ljava/lang/String;Z)V

    goto/16 :goto_d0

    .line 2670
    :cond_163
    const-string/jumbo v9, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "No need to append the forward number, cfAction: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p5

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2671
    const-string/jumbo v11, ", cfReason: "

    .line 2670
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p6

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e6
.end method

.method public copyOldRuleToNewRuleSetWithDisabledCB(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;ZII)V
    .registers 13
    .param p1, "oldRule"    # Lcom/mediatek/simservs/client/policy/Rule;
    .param p2, "newRuleSet"    # Lcom/mediatek/simservs/client/policy/RuleSet;
    .param p3, "allow"    # Z
    .param p4, "cfAction"    # I
    .param p5, "cfReason"    # I

    .prologue
    .line 2491
    const/4 v0, 0x0

    .line 2492
    .local v0, "newAction":Lcom/mediatek/simservs/client/policy/Actions;
    const/4 v1, 0x0

    .line 2493
    .local v1, "newCond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v3

    .line 2494
    .local v3, "oldAction":Lcom/mediatek/simservs/client/policy/Actions;
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v4

    .line 2496
    .local v4, "oldCond":Lcom/mediatek/simservs/client/policy/Conditions;
    iget-object v5, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    iget v5, v5, Lcom/mediatek/ims/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_22

    .line 2497
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v5

    if-nez v5, :cond_1e

    .line 2498
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v5

    if-nez v5, :cond_1e

    .line 2490
    .end local v0    # "newAction":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v1    # "newCond":Lcom/mediatek/simservs/client/policy/Conditions;
    :cond_1d
    :goto_1d
    return-void

    .line 2501
    .restart local v0    # "newAction":Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v1    # "newCond":Lcom/mediatek/simservs/client/policy/Conditions;
    :cond_1e
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSet(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;II)Lcom/mediatek/simservs/client/policy/Rule;

    goto :goto_1d

    .line 2503
    :cond_22
    iget-object v5, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    iget v5, v5, Lcom/mediatek/ims/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_43

    .line 2504
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSet(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;II)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v2

    .line 2505
    .local v2, "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    if-eqz v2, :cond_1d

    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v5

    if-nez v5, :cond_1d

    .line 2506
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v5

    if-nez v5, :cond_1d

    .line 2507
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Rule;->createConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v1

    .line 2508
    .local v1, "newCond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Conditions;->addRuleDeactivated()V

    goto :goto_1d

    .line 2510
    .end local v2    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    .local v1, "newCond":Lcom/mediatek/simservs/client/policy/Conditions;
    :cond_43
    iget-object v5, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    iget v5, v5, Lcom/mediatek/ims/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1d

    .line 2511
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSet(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;II)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v2

    .line 2512
    .restart local v2    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    if-eqz v2, :cond_1d

    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v5

    if-nez v5, :cond_1d

    .line 2513
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v5

    if-nez v5, :cond_1d

    .line 2514
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Rule;->createActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v0

    .line 2515
    .local v0, "newAction":Lcom/mediatek/simservs/client/policy/Actions;
    invoke-virtual {v0, p3}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    goto :goto_1d
.end method

.method public getMediaType(I)Ljava/lang/String;
    .registers 3
    .param p1, "serviceClass"    # I

    .prologue
    .line 580
    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    .line 581
    const-string/jumbo v0, "audio"

    return-object v0

    .line 582
    :cond_7
    const/16 v0, 0x200

    if-ne p1, v0, :cond_f

    .line 583
    const-string/jumbo v0, "video"

    return-object v0

    .line 585
    :cond_f
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public handleCreateNewRuleForCFInTimeSlot(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/simservs/client/policy/RuleSet;IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Z
    .registers 17
    .param p1, "cd"    # Lcom/mediatek/simservs/client/CommunicationDiversion;
    .param p2, "newRuleSet"    # Lcom/mediatek/simservs/client/policy/RuleSet;
    .param p3, "setCFReason"    # I
    .param p4, "setCFAction"    # I
    .param p5, "setCFServiceClass"    # I
    .param p6, "setCFNumber"    # Ljava/lang/String;
    .param p7, "setCFTimeSeconds"    # I
    .param p8, "timeSlot"    # Ljava/lang/String;
    .param p9, "ruleID"    # Ljava/lang/String;
    .param p10, "updateSingleRule"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 5372
    invoke-virtual {p2, p9}, Lcom/mediatek/simservs/client/policy/RuleSet;->createNewRule(Ljava/lang/String;)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v2

    .line 5373
    .local v2, "cfRule":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Rule;->createConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v1

    .line 5374
    .local v1, "cfCond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Rule;->createActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v0

    .line 5375
    .local v0, "cfAction":Lcom/mediatek/simservs/client/policy/Actions;
    const-string/jumbo v3, "MMTelSS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleCreateNewRuleForCFInTimeSlot(): reason = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 5376
    const-string/jumbo v5, ", serviceClass = "

    .line 5375
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 5376
    const-string/jumbo v5, ", number = "

    .line 5375
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 5377
    const-string/jumbo v5, ", cfTime = "

    .line 5375
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 5378
    const-string/jumbo v5, ", timeSlot = "

    .line 5375
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5380
    const/4 v3, 0x1

    if-ne p5, v3, :cond_85

    .line 5381
    const-string/jumbo v3, "audio"

    invoke-virtual {v1, v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 5389
    :cond_5b
    :goto_5b
    const/4 v3, 0x1

    if-ne p3, v3, :cond_a2

    .line 5390
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Conditions;->addBusy()V

    .line 5400
    :cond_61
    :goto_61
    invoke-virtual {v1, p8}, Lcom/mediatek/simservs/client/policy/Conditions;->addTime(Ljava/lang/String;)V

    .line 5401
    invoke-static {}, Lcom/mediatek/ims/MMTelSSUtils;->isNotifyCallerTest()Z

    move-result v3

    if-eqz v3, :cond_ba

    .line 5402
    const/4 v3, 0x0

    invoke-virtual {v0, p6, v3}, Lcom/mediatek/simservs/client/policy/Actions;->setFowardTo(Ljava/lang/String;Z)V

    .line 5406
    :goto_6e
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/mediatek/simservs/client/policy/ForwardTo;->setRevealIdentityToCaller(Z)V

    .line 5407
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/mediatek/simservs/client/policy/ForwardTo;->setRevealIdentityToTarget(Z)V

    .line 5409
    if-eqz p10, :cond_83

    .line 5410
    invoke-virtual {p1, p9}, Lcom/mediatek/simservs/client/CommunicationDiversion;->saveRule(Ljava/lang/String;)V

    .line 5412
    :cond_83
    const/4 v3, 0x1

    return v3

    .line 5382
    :cond_85
    const/16 v3, 0x200

    if-ne p5, v3, :cond_90

    .line 5383
    const-string/jumbo v3, "video"

    invoke-virtual {v1, v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    goto :goto_5b

    .line 5384
    :cond_90
    if-nez p5, :cond_5b

    .line 5385
    const-string/jumbo v3, "MMTelSS"

    const-string/jumbo v4, "if op01,do not add video!"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5386
    const-string/jumbo v3, "audio"

    invoke-virtual {v1, v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    goto :goto_5b

    .line 5391
    :cond_a2
    const/4 v3, 0x2

    if-ne p3, v3, :cond_a9

    .line 5392
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Conditions;->addNoAnswer()V

    goto :goto_61

    .line 5393
    :cond_a9
    const/4 v3, 0x3

    if-ne p3, v3, :cond_b0

    .line 5394
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotReachable()V

    goto :goto_61

    .line 5395
    :cond_b0
    const/4 v3, 0x6

    if-ne p3, v3, :cond_b7

    .line 5396
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotRegistered()V

    goto :goto_61

    .line 5397
    :cond_b7
    if-nez p3, :cond_61

    goto :goto_61

    .line 5404
    :cond_ba
    const/4 v3, 0x1

    invoke-virtual {v0, p6, v3}, Lcom/mediatek/simservs/client/policy/Actions;->setFowardTo(Ljava/lang/String;Z)V

    goto :goto_6e
.end method

.method public handleCreateNewRuleForExistingCB(Lcom/mediatek/simservs/client/SimservType;Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;Ljava/lang/String;IILjava/lang/String;ZII)Z
    .registers 26
    .param p1, "ssType"    # Lcom/mediatek/simservs/client/SimservType;
    .param p2, "newRuleSet"    # Lcom/mediatek/simservs/client/policy/RuleSet;
    .param p3, "r"    # Lcom/mediatek/simservs/client/policy/Rule;
    .param p4, "facility"    # Ljava/lang/String;
    .param p5, "lockState"    # I
    .param p6, "setCBServiceClass"    # I
    .param p7, "RuleID"    # Ljava/lang/String;
    .param p8, "updateSingleRule"    # Z
    .param p9, "num_of_expansion"    # I
    .param p10, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 2233
    invoke-virtual/range {p3 .. p3}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v8

    .line 2234
    .local v8, "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual/range {p3 .. p3}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v2

    .line 2235
    .local v2, "action":Lcom/mediatek/simservs/client/policy/Actions;
    const/4 v5, 0x1

    .line 2236
    .local v5, "cbAllow":Z
    const/4 v3, 0x0

    .line 2239
    .local v3, "addRuleDeactivatedNode":Z
    const-string/jumbo v12, "persist.radio.ss.xrdm"

    .line 2240
    const/4 v13, 0x2

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    .line 2239
    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2241
    .local v11, "sDisableRuleMode":Ljava/lang/String;
    const-string/jumbo v12, "MMTelSS"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "handleCreateNewRuleForExistingCB():sDisableRuleMode="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2243
    iget-object v12, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v12, Lcom/mediatek/ims/MMTelSSTransport;->mDisableRuleMode:I

    .line 2245
    const/4 v12, 0x1

    move/from16 v0, p5

    if-ne v0, v12, :cond_8f

    .line 2248
    const/4 v5, 0x0

    .line 2269
    :cond_3e
    :goto_3e
    move-object/from16 v0, p2

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/RuleSet;->createNewRule(Ljava/lang/String;)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v7

    .line 2270
    .local v7, "cbRule":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v7}, Lcom/mediatek/simservs/client/policy/Rule;->createConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    .line 2271
    .local v6, "cbCond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v7}, Lcom/mediatek/simservs/client/policy/Rule;->createActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v4

    .line 2275
    .local v4, "cbAction":Lcom/mediatek/simservs/client/policy/Actions;
    invoke-static/range {p10 .. p10}, Lcom/mediatek/ims/MMTelSSUtils;->isOp03IccCard(I)Z

    move-result v12

    if-nez v12, :cond_5a

    .line 2276
    invoke-static/range {p10 .. p10}, Lcom/mediatek/ims/MMTelSSUtils;->isOp05IccCard(I)Z

    move-result v12

    if-eqz v12, :cond_db

    .line 2300
    :cond_5a
    :goto_5a
    iget-object v12, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    iget v12, v12, Lcom/mediatek/ims/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_66

    .line 2301
    if-eqz v3, :cond_66

    .line 2302
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->addRuleDeactivated()V

    .line 2305
    :cond_66
    const-string/jumbo v12, "IR"

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_145

    .line 2306
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->addRoaming()V

    .line 2307
    invoke-virtual {v4, v5}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    .line 2322
    :cond_77
    :goto_77
    if-eqz p8, :cond_8d

    const/4 v12, 0x1

    move/from16 v0, p9

    if-ne v12, v0, :cond_8d

    .line 2323
    move-object/from16 v0, p1

    instance-of v12, v0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    if-eqz v12, :cond_18b

    move-object/from16 v10, p1

    .line 2324
    check-cast v10, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    .line 2325
    .local v10, "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    move-object/from16 v0, p7

    invoke-virtual {v10, v0}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    .line 2332
    .end local v10    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    :cond_8d
    :goto_8d
    const/4 v12, 0x1

    return v12

    .line 2251
    .end local v4    # "cbAction":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v6    # "cbCond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v7    # "cbRule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_8f
    iget-object v12, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    iget v12, v12, Lcom/mediatek/ims/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_c6

    .line 2252
    const-string/jumbo v12, "MMTelSS"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Disable CB for serviceClass="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p6

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2253
    const-string/jumbo v14, " ,not create new rule for it to put in the new rule set"

    .line 2252
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2254
    if-eqz p8, :cond_c4

    .line 2255
    const-string/jumbo v12, "MMTelSS"

    const-string/jumbo v13, "handleCreateNewRuleForExistingCB(): ERROR: DISABLE_MODE_DELETE_RULE but updateSingleRule"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2258
    :cond_c4
    const/4 v12, 0x0

    return v12

    .line 2259
    :cond_c6
    iget-object v12, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    iget v12, v12, Lcom/mediatek/ims/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_d1

    .line 2262
    const/4 v3, 0x1

    .line 2263
    const/4 v5, 0x0

    goto/16 :goto_3e

    .line 2264
    :cond_d1
    iget-object v12, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    iget v12, v12, Lcom/mediatek/ims/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_3e

    .line 2265
    const/4 v5, 0x1

    goto/16 :goto_3e

    .line 2277
    .restart local v4    # "cbAction":Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v6    # "cbCond":Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v7    # "cbRule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_db
    invoke-static/range {p10 .. p10}, Lcom/mediatek/ims/MMTelSSUtils;->isOp06IccCard(I)Z

    move-result v12

    if-nez v12, :cond_5a

    .line 2278
    invoke-static/range {p10 .. p10}, Lcom/mediatek/ims/MMTelSSUtils;->isOp06NetherlandsIccCard(I)Z

    move-result v12

    if-nez v12, :cond_5a

    .line 2279
    invoke-static/range {p10 .. p10}, Lcom/mediatek/ims/MMTelSSUtils;->isOp07IccCard(I)Z

    move-result v12

    if-nez v12, :cond_5a

    .line 2280
    invoke-static/range {p10 .. p10}, Lcom/mediatek/ims/MMTelSSUtils;->isOp08IccCard(I)Z

    move-result v12

    if-nez v12, :cond_5a

    .line 2281
    invoke-static/range {p10 .. p10}, Lcom/mediatek/ims/MMTelSSUtils;->isOp15IccCard(I)Z

    move-result v12

    if-nez v12, :cond_5a

    .line 2282
    invoke-static/range {p10 .. p10}, Lcom/mediatek/ims/MMTelSSUtils;->isOp19IccCard(I)Z

    move-result v12

    if-nez v12, :cond_5a

    .line 2283
    invoke-static/range {p10 .. p10}, Lcom/mediatek/ims/MMTelSSUtils;->isOp124IccCard(I)Z

    move-result v12

    if-nez v12, :cond_5a

    .line 2284
    invoke-static/range {p10 .. p10}, Lcom/mediatek/ims/MMTelSSUtils;->isOp130IccCard(I)Z

    move-result v12

    if-nez v12, :cond_5a

    .line 2285
    const/4 v12, 0x1

    move/from16 v0, p6

    if-ne v0, v12, :cond_118

    .line 2286
    const-string/jumbo v12, "audio"

    invoke-virtual {v6, v12}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    goto/16 :goto_5a

    .line 2287
    :cond_118
    const/16 v12, 0x200

    move/from16 v0, p6

    if-ne v0, v12, :cond_126

    .line 2288
    const-string/jumbo v12, "video"

    invoke-virtual {v6, v12}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    goto/16 :goto_5a

    .line 2289
    :cond_126
    if-nez p6, :cond_5a

    .line 2290
    const-string/jumbo v12, "MMTelSS"

    const-string/jumbo v13, "if op01,do not add video!"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2291
    const-string/jumbo v12, "audio"

    invoke-virtual {v6, v12}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 2292
    invoke-static/range {p10 .. p10}, Lcom/mediatek/ims/MMTelSSUtils;->isOp01IccCard(I)Z

    move-result v12

    if-nez v12, :cond_5a

    .line 2293
    const-string/jumbo v12, "video"

    invoke-virtual {v6, v12}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    goto/16 :goto_5a

    .line 2308
    :cond_145
    const-string/jumbo v12, "AI"

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_155

    .line 2310
    invoke-virtual {v4, v5}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    goto/16 :goto_77

    .line 2311
    :cond_155
    const-string/jumbo v12, "OI"

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_168

    .line 2312
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternational()V

    .line 2313
    invoke-virtual {v4, v5}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    goto/16 :goto_77

    .line 2314
    :cond_168
    const-string/jumbo v12, "OX"

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_17b

    .line 2315
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternationalExHc()V

    .line 2316
    invoke-virtual {v4, v5}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    goto/16 :goto_77

    .line 2317
    :cond_17b
    const-string/jumbo v12, "AO"

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_77

    .line 2319
    invoke-virtual {v4, v5}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    goto/16 :goto_77

    .line 2326
    :cond_18b
    move-object/from16 v0, p1

    instance-of v12, v0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    if-eqz v12, :cond_8d

    move-object/from16 v9, p1

    .line 2327
    check-cast v9, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    .line 2328
    .local v9, "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    move-object/from16 v0, p7

    invoke-virtual {v9, v0}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    goto/16 :goto_8d
.end method

.method public handleCreateNewRuleForExistingCF(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;IIILjava/lang/String;ILjava/lang/String;ZIILjava/util/List;)Z
    .registers 36
    .param p1, "cd"    # Lcom/mediatek/simservs/client/CommunicationDiversion;
    .param p2, "newRuleSet"    # Lcom/mediatek/simservs/client/policy/RuleSet;
    .param p3, "r"    # Lcom/mediatek/simservs/client/policy/Rule;
    .param p4, "setCFReason"    # I
    .param p5, "setCFAction"    # I
    .param p6, "setCFServiceClass"    # I
    .param p7, "setCFNumber"    # Ljava/lang/String;
    .param p8, "setCFTimeSeconds"    # I
    .param p9, "ruleID"    # Ljava/lang/String;
    .param p10, "updateSingleRule"    # Z
    .param p11, "numExpansion"    # I
    .param p12, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mediatek/simservs/client/CommunicationDiversion;",
            "Lcom/mediatek/simservs/client/policy/RuleSet;",
            "Lcom/mediatek/simservs/client/policy/Rule;",
            "III",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "ZII",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 2059
    .local p13, "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v16

    .line 2060
    .local v16, "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual/range {p3 .. p3}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v12

    .line 2063
    .local v12, "action":Lcom/mediatek/simservs/client/policy/Actions;
    const-string/jumbo v5, "persist.radio.ss.xrdm"

    .line 2064
    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 2063
    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 2065
    .local v21, "sDisableRuleMode":Ljava/lang/String;
    const-string/jumbo v5, "MMTelSS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleCreateNewRuleForExistingCF():sDisableRuleMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2067
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/mediatek/ims/MMTelSSTransport;->mDisableRuleMode:I

    .line 2070
    const/4 v5, 0x1

    move/from16 v0, p5

    if-eq v0, v5, :cond_44

    .line 2071
    const/4 v5, 0x3

    move/from16 v0, p5

    if-ne v0, v5, :cond_207

    .line 2073
    :cond_44
    move-object/from16 v0, p2

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/RuleSet;->createNewRule(Ljava/lang/String;)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v15

    .line 2074
    .local v15, "cfRule":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v15}, Lcom/mediatek/simservs/client/policy/Rule;->createConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v14

    .line 2075
    .local v14, "cfCond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v15}, Lcom/mediatek/simservs/client/policy/Rule;->createActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v13

    .line 2076
    .local v13, "cfAction":Lcom/mediatek/simservs/client/policy/Actions;
    const-string/jumbo v5, "MMTelSS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleCreateNewRuleForExistingCF():Enable CF with reason="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2077
    const-string/jumbo v7, ",serviceClass="

    .line 2076
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2077
    const-string/jumbo v7, ",number="

    .line 2076
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p7

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2078
    const-string/jumbo v7, ",cfTime="

    .line 2076
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p8

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    invoke-static/range {p12 .. p12}, Lcom/mediatek/ims/MMTelSSUtils;->isOp19IccCard(I)Z

    move-result v5

    if-eqz v5, :cond_dd

    .line 2081
    if-eqz p13, :cond_e9

    .line 2082
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_a1
    invoke-interface/range {p13 .. p13}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v0, v17

    if-ge v0, v5, :cond_e9

    .line 2083
    const-string/jumbo v6, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "add media tag: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p13

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2084
    move-object/from16 v0, p13

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v14, v5}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 2082
    add-int/lit8 v17, v17, 0x1

    goto :goto_a1

    .line 2087
    .end local v17    # "i":I
    :cond_dd
    invoke-static/range {p12 .. p12}, Lcom/mediatek/ims/MMTelSSUtils;->isOp03IccCard(I)Z

    move-result v5

    if-nez v5, :cond_e9

    .line 2088
    invoke-static/range {p12 .. p12}, Lcom/mediatek/ims/MMTelSSUtils;->isOp05IccCard(I)Z

    move-result v5

    if-eqz v5, :cond_15c

    .line 2109
    :cond_e9
    :goto_e9
    const/4 v5, 0x1

    move/from16 v0, p4

    if-ne v0, v5, :cond_1c0

    .line 2110
    invoke-virtual {v14}, Lcom/mediatek/simservs/client/policy/Conditions;->addBusy()V

    .line 2133
    :cond_f1
    :goto_f1
    if-eqz p7, :cond_f9

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_12a

    .line 2134
    :cond_f9
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/ForwardTo;->getTarget()Ljava/lang/String;

    move-result-object p7

    .line 2135
    const-string/jumbo v5, "MMTelSS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Reason: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2136
    const-string/jumbo v7, ", setCFNumber is empty or null, so update to: "

    .line 2135
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p7

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2140
    :cond_12a
    invoke-static/range {p12 .. p12}, Lcom/mediatek/ims/MMTelSSUtils;->isOp01IccCard(I)Z

    move-result v5

    if-eqz v5, :cond_1ff

    invoke-static {}, Lcom/mediatek/ims/MMTelSSUtils;->isNotifyCallerTest()Z

    move-result v5

    if-eqz v5, :cond_1ff

    .line 2141
    const/4 v5, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v13, v0, v5}, Lcom/mediatek/simservs/client/policy/Actions;->setFowardTo(Ljava/lang/String;Z)V

    .line 2145
    :goto_13c
    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/mediatek/simservs/client/policy/ForwardTo;->setRevealIdentityToCaller(Z)V

    .line 2146
    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/mediatek/simservs/client/policy/ForwardTo;->setRevealIdentityToTarget(Z)V

    .line 2147
    if-eqz p10, :cond_15a

    const/4 v5, 0x1

    move/from16 v0, p11

    if-ne v5, v0, :cond_15a

    .line 2148
    move-object/from16 v0, p1

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/CommunicationDiversion;->saveRule(Ljava/lang/String;)V

    .line 2150
    :cond_15a
    const/4 v5, 0x1

    return v5

    .line 2089
    :cond_15c
    invoke-static/range {p12 .. p12}, Lcom/mediatek/ims/MMTelSSUtils;->isOp06IccCard(I)Z

    move-result v5

    if-nez v5, :cond_e9

    .line 2090
    invoke-static/range {p12 .. p12}, Lcom/mediatek/ims/MMTelSSUtils;->isOp06NetherlandsIccCard(I)Z

    move-result v5

    if-nez v5, :cond_e9

    .line 2091
    invoke-static/range {p12 .. p12}, Lcom/mediatek/ims/MMTelSSUtils;->isOp07IccCard(I)Z

    move-result v5

    if-nez v5, :cond_e9

    .line 2092
    invoke-static/range {p12 .. p12}, Lcom/mediatek/ims/MMTelSSUtils;->isOp08IccCard(I)Z

    move-result v5

    if-nez v5, :cond_e9

    .line 2093
    invoke-static/range {p12 .. p12}, Lcom/mediatek/ims/MMTelSSUtils;->isOp15IccCard(I)Z

    move-result v5

    if-nez v5, :cond_e9

    .line 2094
    invoke-static/range {p12 .. p12}, Lcom/mediatek/ims/MMTelSSUtils;->isOp124IccCard(I)Z

    move-result v5

    if-nez v5, :cond_e9

    .line 2095
    invoke-static/range {p12 .. p12}, Lcom/mediatek/ims/MMTelSSUtils;->isOp130IccCard(I)Z

    move-result v5

    if-nez v5, :cond_e9

    .line 2096
    const/4 v5, 0x1

    move/from16 v0, p6

    if-ne v0, v5, :cond_193

    .line 2097
    const-string/jumbo v5, "audio"

    invoke-virtual {v14, v5}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    goto/16 :goto_e9

    .line 2098
    :cond_193
    const/16 v5, 0x200

    move/from16 v0, p6

    if-ne v0, v5, :cond_1a1

    .line 2099
    const-string/jumbo v5, "video"

    invoke-virtual {v14, v5}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    goto/16 :goto_e9

    .line 2100
    :cond_1a1
    if-nez p6, :cond_e9

    .line 2101
    const-string/jumbo v5, "MMTelSS"

    const-string/jumbo v6, "if op01,do not add video!"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2102
    const-string/jumbo v5, "audio"

    invoke-virtual {v14, v5}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 2103
    invoke-static/range {p12 .. p12}, Lcom/mediatek/ims/MMTelSSUtils;->isOp01IccCard(I)Z

    move-result v5

    if-nez v5, :cond_e9

    .line 2104
    const-string/jumbo v5, "video"

    invoke-virtual {v14, v5}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    goto/16 :goto_e9

    .line 2111
    :cond_1c0
    const/4 v5, 0x2

    move/from16 v0, p4

    if-ne v0, v5, :cond_1e7

    .line 2112
    invoke-virtual {v14}, Lcom/mediatek/simservs/client/policy/Conditions;->addNoAnswer()V

    .line 2114
    invoke-static/range {p12 .. p12}, Lcom/mediatek/ims/MMTelSSUtils;->isPortugalVdfIccCard(I)Z

    move-result v5

    if-eqz v5, :cond_f1

    .line 2115
    if-lez p8, :cond_1d7

    .line 2116
    move/from16 v0, p8

    invoke-virtual {v13, v0}, Lcom/mediatek/simservs/client/policy/Actions;->setNoReplyTimer(I)V

    goto/16 :goto_f1

    .line 2118
    :cond_1d7
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Actions;->getNoReplyTimer()I

    move-result v20

    .line 2119
    .local v20, "org_NoReplyTimer":I
    const/4 v5, -0x1

    move/from16 v0, v20

    if-le v0, v5, :cond_f1

    .line 2120
    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/mediatek/simservs/client/policy/Actions;->setNoReplyTimer(I)V

    goto/16 :goto_f1

    .line 2124
    .end local v20    # "org_NoReplyTimer":I
    :cond_1e7
    const/4 v5, 0x3

    move/from16 v0, p4

    if-ne v0, v5, :cond_1f1

    .line 2125
    invoke-virtual {v14}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotReachable()V

    goto/16 :goto_f1

    .line 2126
    :cond_1f1
    const/4 v5, 0x6

    move/from16 v0, p4

    if-ne v0, v5, :cond_1fb

    .line 2127
    invoke-virtual {v14}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotRegistered()V

    goto/16 :goto_f1

    .line 2128
    :cond_1fb
    if-nez p4, :cond_f1

    goto/16 :goto_f1

    .line 2143
    :cond_1ff
    const/4 v5, 0x1

    move-object/from16 v0, p7

    invoke-virtual {v13, v0, v5}, Lcom/mediatek/simservs/client/policy/Actions;->setFowardTo(Ljava/lang/String;Z)V

    goto/16 :goto_13c

    .line 2154
    .end local v13    # "cfAction":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v14    # "cfCond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v15    # "cfRule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_207
    if-nez p6, :cond_261

    .line 2155
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    iget v5, v5, Lcom/mediatek/ims/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_228

    .line 2156
    const-string/jumbo v5, "MMTelSS"

    const-string/jumbo v6, "Disable CF for serviceClass=0 (all media types):neither create new rule nor copy old rule to new rule set"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2158
    if-eqz p10, :cond_226

    .line 2159
    const-string/jumbo v5, "MMTelSS"

    const-string/jumbo v6, "handleCreateNewRuleForExistingCF(): ERROR: DISABLE_MODE_DELETE_RULE but updateSingleRule"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2162
    :cond_226
    const/4 v5, 0x0

    return v5

    .line 2163
    :cond_228
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    iget v5, v5, Lcom/mediatek/ims/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3a1

    .line 2164
    const-string/jumbo v5, "MMTelSS"

    const-string/jumbo v6, "Disable CF for serviceClass=0 (all media types):copy old rule with <rule-deactivated> into new rule set"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2166
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSet(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;II)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v19

    .line 2167
    .local v19, "nr":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual/range {v19 .. v19}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->addRuleDeactivated()V

    .line 2168
    if-eqz p10, :cond_25f

    const/4 v5, 0x1

    move/from16 v0, p11

    if-ne v5, v0, :cond_25f

    .line 2169
    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/mediatek/simservs/client/CommunicationDiversion;->saveRule(Ljava/lang/String;)V

    .line 2171
    :cond_25f
    const/4 v5, 0x1

    return v5

    .line 2173
    .end local v19    # "nr":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_261
    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    move/from16 v1, p6

    move/from16 v2, p12

    invoke-virtual {v0, v5, v1, v2}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->hasExtraMedia(Ljava/util/List;II)Z

    move-result v5

    if-eqz v5, :cond_315

    .line 2174
    if-eqz p10, :cond_297

    const/4 v5, 0x1

    move/from16 v0, p11

    if-ne v5, v0, :cond_297

    move-object/from16 v5, p0

    move-object/from16 v6, p3

    move-object/from16 v7, p2

    move/from16 v8, p6

    move/from16 v9, p12

    move/from16 v10, p5

    move/from16 v11, p4

    .line 2177
    invoke-virtual/range {v5 .. v11}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSetExceptSpecificMedia(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;IIII)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v18

    .line 2179
    .local v18, "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    if-eqz v18, :cond_295

    .line 2180
    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/mediatek/simservs/client/CommunicationDiversion;->saveRule(Ljava/lang/String;)V

    .line 2182
    :cond_295
    const/4 v5, 0x1

    return v5

    .line 2184
    .end local v18    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_297
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    iget v5, v5, Lcom/mediatek/ims/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2df

    .line 2185
    const-string/jumbo v5, "MMTelSS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Disable "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p9

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ":copy old rule with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2186
    const-string/jumbo v7, "<rule-deactivated> for this media types to new rule set"

    .line 2185
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2187
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSet(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;II)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v19

    .line 2188
    .restart local v19    # "nr":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual/range {v19 .. v19}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->addRuleDeactivated()V

    .line 2191
    .end local v19    # "nr":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_2df
    const-string/jumbo v5, "MMTelSS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Disable "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p9

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2192
    const-string/jumbo v7, ":copy old rule for remaining media types to new rule set"

    .line 2191
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v5, p0

    move-object/from16 v6, p3

    move-object/from16 v7, p2

    move/from16 v8, p6

    move/from16 v9, p12

    move/from16 v10, p5

    move/from16 v11, p4

    .line 2195
    invoke-virtual/range {v5 .. v11}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSetExceptSpecificMedia(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;IIII)Lcom/mediatek/simservs/client/policy/Rule;

    .line 2197
    const/4 v5, 0x1

    return v5

    .line 2200
    :cond_315
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    iget v5, v5, Lcom/mediatek/ims/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_34e

    .line 2201
    const-string/jumbo v5, "MMTelSS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Disable "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p9

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2202
    const-string/jumbo v7, ":not copy old rule to new rule set"

    .line 2201
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2203
    if-eqz p10, :cond_34c

    .line 2204
    const-string/jumbo v5, "MMTelSS"

    const-string/jumbo v6, "handleCreateNewRuleForExistingCF(): ERROR: DISABLE_MODE_DELETE_RULE but updateSingleRule"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2207
    :cond_34c
    const/4 v5, 0x0

    return v5

    .line 2208
    :cond_34e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    iget v5, v5, Lcom/mediatek/ims/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3a1

    .line 2209
    const-string/jumbo v5, "MMTelSS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Disable "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p9

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2210
    const-string/jumbo v7, ":copy old rule with <rule-deactivated> to new rule set"

    .line 2209
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSet(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;II)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v19

    .line 2212
    .restart local v19    # "nr":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual/range {v19 .. v19}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->addRuleDeactivated()V

    .line 2213
    if-eqz p10, :cond_39f

    const/4 v5, 0x1

    move/from16 v0, p11

    if-ne v5, v0, :cond_39f

    .line 2214
    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/mediatek/simservs/client/CommunicationDiversion;->saveRule(Ljava/lang/String;)V

    .line 2216
    :cond_39f
    const/4 v5, 0x1

    return v5

    .line 2219
    .end local v19    # "nr":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_3a1
    const/4 v5, 0x0

    return v5
.end method

.method public handleCreateNewRuleForReqCB(Lcom/mediatek/simservs/client/SimservType;Lcom/mediatek/simservs/client/policy/RuleSet;Ljava/lang/String;IILjava/lang/String;ZII)Z
    .registers 19
    .param p1, "ssType"    # Lcom/mediatek/simservs/client/SimservType;
    .param p2, "newRuleSet"    # Lcom/mediatek/simservs/client/policy/RuleSet;
    .param p3, "facility"    # Ljava/lang/String;
    .param p4, "lockState"    # I
    .param p5, "setCBServiceClass"    # I
    .param p6, "RuleID"    # Ljava/lang/String;
    .param p7, "updateSingleRule"    # Z
    .param p8, "num_of_expansion"    # I
    .param p9, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 2340
    const/4 v2, 0x1

    .line 2342
    .local v2, "cbAllow":Z
    const/4 v7, 0x1

    if-ne p4, v7, :cond_3f

    .line 2344
    const/4 v2, 0x0

    .line 2357
    invoke-virtual {p2, p6}, Lcom/mediatek/simservs/client/policy/RuleSet;->createNewRule(Ljava/lang/String;)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v4

    .line 2358
    .local v4, "cbRule":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Rule;->createConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v3

    .line 2359
    .local v3, "cbCond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Rule;->createActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v1

    .line 2362
    .local v1, "cbAction":Lcom/mediatek/simservs/client/policy/Actions;
    invoke-static/range {p9 .. p9}, Lcom/mediatek/ims/MMTelSSUtils;->isOp03IccCard(I)Z

    move-result v7

    if-nez v7, :cond_1d

    .line 2363
    invoke-static/range {p9 .. p9}, Lcom/mediatek/ims/MMTelSSUtils;->isOp05IccCard(I)Z

    move-result v7

    if-eqz v7, :cond_4b

    .line 2385
    :cond_1d
    :goto_1d
    const-string/jumbo v7, "IR"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_af

    .line 2386
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addRoaming()V

    .line 2387
    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    .line 2402
    :cond_2c
    :goto_2c
    if-eqz p7, :cond_3d

    const/4 v7, 0x1

    move/from16 v0, p8

    if-ne v7, v0, :cond_3d

    .line 2403
    instance-of v7, p1, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    if-eqz v7, :cond_ed

    move-object v6, p1

    .line 2404
    check-cast v6, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    .line 2405
    .local v6, "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-virtual {v6, p6}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    .line 2412
    .end local v6    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    :cond_3d
    :goto_3d
    const/4 v7, 0x1

    return v7

    .line 2351
    .end local v1    # "cbAction":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v3    # "cbCond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v4    # "cbRule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_3f
    const/4 v2, 0x1

    .line 2352
    const-string/jumbo v7, "MMTelSS"

    const-string/jumbo v8, "Disable one non-existed rule!Return from handleCreateNewRuleForReqCB() directly!"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2354
    const/4 v7, 0x0

    return v7

    .line 2364
    .restart local v1    # "cbAction":Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v3    # "cbCond":Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v4    # "cbRule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_4b
    invoke-static/range {p9 .. p9}, Lcom/mediatek/ims/MMTelSSUtils;->isOp06IccCard(I)Z

    move-result v7

    if-nez v7, :cond_1d

    .line 2365
    invoke-static/range {p9 .. p9}, Lcom/mediatek/ims/MMTelSSUtils;->isOp06NetherlandsIccCard(I)Z

    move-result v7

    if-nez v7, :cond_1d

    .line 2366
    invoke-static/range {p9 .. p9}, Lcom/mediatek/ims/MMTelSSUtils;->isOp07IccCard(I)Z

    move-result v7

    if-nez v7, :cond_1d

    .line 2367
    invoke-static/range {p9 .. p9}, Lcom/mediatek/ims/MMTelSSUtils;->isOp08IccCard(I)Z

    move-result v7

    if-nez v7, :cond_1d

    .line 2368
    invoke-static/range {p9 .. p9}, Lcom/mediatek/ims/MMTelSSUtils;->isOp15IccCard(I)Z

    move-result v7

    if-nez v7, :cond_1d

    .line 2369
    invoke-static/range {p9 .. p9}, Lcom/mediatek/ims/MMTelSSUtils;->isOp19IccCard(I)Z

    move-result v7

    if-nez v7, :cond_1d

    .line 2370
    invoke-static/range {p9 .. p9}, Lcom/mediatek/ims/MMTelSSUtils;->isOp124IccCard(I)Z

    move-result v7

    if-nez v7, :cond_1d

    .line 2371
    invoke-static/range {p9 .. p9}, Lcom/mediatek/ims/MMTelSSUtils;->isOp130IccCard(I)Z

    move-result v7

    if-nez v7, :cond_1d

    .line 2372
    const/4 v7, 0x1

    if-ne p5, v7, :cond_85

    .line 2373
    const-string/jumbo v7, "audio"

    invoke-virtual {v3, v7}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    goto :goto_1d

    .line 2374
    :cond_85
    const/16 v7, 0x200

    if-ne p5, v7, :cond_90

    .line 2375
    const-string/jumbo v7, "video"

    invoke-virtual {v3, v7}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    goto :goto_1d

    .line 2376
    :cond_90
    if-nez p5, :cond_1d

    .line 2377
    const-string/jumbo v7, "MMTelSS"

    const-string/jumbo v8, "if op01,do not add video!"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2378
    const-string/jumbo v7, "audio"

    invoke-virtual {v3, v7}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 2379
    invoke-static/range {p9 .. p9}, Lcom/mediatek/ims/MMTelSSUtils;->isOp01IccCard(I)Z

    move-result v7

    if-nez v7, :cond_1d

    .line 2380
    const-string/jumbo v7, "video"

    invoke-virtual {v3, v7}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    goto/16 :goto_1d

    .line 2388
    :cond_af
    const-string/jumbo v7, "AI"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_bd

    .line 2390
    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    goto/16 :goto_2c

    .line 2391
    :cond_bd
    const-string/jumbo v7, "OI"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ce

    .line 2392
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternational()V

    .line 2393
    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    goto/16 :goto_2c

    .line 2394
    :cond_ce
    const-string/jumbo v7, "OX"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_df

    .line 2395
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternationalExHc()V

    .line 2396
    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    goto/16 :goto_2c

    .line 2397
    :cond_df
    const-string/jumbo v7, "AO"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 2399
    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    goto/16 :goto_2c

    .line 2406
    :cond_ed
    instance-of v7, p1, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    if-eqz v7, :cond_3d

    move-object v5, p1

    .line 2407
    check-cast v5, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    .line 2408
    .local v5, "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-virtual {v5, p6}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    goto/16 :goto_3d
.end method

.method public handleGetCB(Lcom/mediatek/ims/MMTelSSRequest;)V
    .registers 34
    .param p1, "rr"    # Lcom/mediatek/ims/MMTelSSRequest;

    .prologue
    .line 1211
    const/16 v21, -0x1

    .line 1212
    .local v21, "reqNo":I
    const/16 v24, -0x1

    .line 1213
    .local v24, "serialNo":I
    const/4 v6, -0x1

    .line 1214
    .local v6, "cbServiceClass":I
    const/16 v19, 0x0

    .line 1215
    .local v19, "phoneId":I
    const-string/jumbo v5, ""

    .line 1216
    .local v5, "cBFacility":Ljava/lang/String;
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v12, v0, [I

    .line 1218
    .local v12, "get_cb_response":[I
    const/16 v27, 0x0

    const/16 v28, 0x0

    aput v27, v12, v28

    .line 1221
    :try_start_16
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1222
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 1223
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 1224
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1225
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1226
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1227
    const-string/jumbo v27, "MMTelSS"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Read GET_CB Facility="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, ",serviceClass="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    invoke-static/range {v19 .. v19}, Lcom/mediatek/ims/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v27

    if-nez v27, :cond_110

    .line 1231
    const-string/jumbo v27, "MMTelSS"

    const-string/jumbo v28, "handleGetCB(): !isPreferXcap()"

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    new-instance v27, Ljava/net/UnknownHostException;

    invoke-direct/range {v27 .. v27}, Ljava/net/UnknownHostException;-><init>()V

    throw v27
    :try_end_91
    .catch Ljava/net/UnknownHostException; {:try_start_16 .. :try_end_91} :catch_91
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_16 .. :try_end_91} :catch_223
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_91} :catch_47f

    .line 1520
    :catch_91
    move-exception v25

    .line 1521
    .local v25, "unknownHostException":Ljava/net/UnknownHostException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Lcom/mediatek/ims/MMTelSSTransport;->-set9(Lcom/mediatek/ims/MMTelSSTransport;Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    .line 1522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v27, v0

    const/16 v28, -0x1

    invoke-static/range {v27 .. v28}, Lcom/mediatek/ims/MMTelSSTransport;->-set11(Lcom/mediatek/ims/MMTelSSTransport;I)I

    .line 1523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v27, v0

    const-wide/16 v28, 0x0

    invoke-static/range {v27 .. v29}, Lcom/mediatek/ims/MMTelSSTransport;->-set10(Lcom/mediatek/ims/MMTelSSTransport;J)J

    .line 1524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Lcom/mediatek/ims/MMTelSSTransport;->-set6(Lcom/mediatek/ims/MMTelSSTransport;Lcom/mediatek/simservs/client/IncomingCommunicationBarring;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    .line 1525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v27, v0

    const/16 v28, -0x1

    invoke-static/range {v27 .. v28}, Lcom/mediatek/ims/MMTelSSTransport;->-set8(Lcom/mediatek/ims/MMTelSSTransport;I)I

    .line 1526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v27, v0

    const-wide/16 v28, 0x0

    invoke-static/range {v27 .. v29}, Lcom/mediatek/ims/MMTelSSTransport;->-set7(Lcom/mediatek/ims/MMTelSSTransport;J)J

    .line 1528
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    move-object/from16 v27, v0

    if-eqz v27, :cond_65f

    .line 1529
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1530
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/os/Message;->sendToTarget()V

    .line 1531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v27

    if-eqz v27, :cond_10f

    .line 1532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 1534
    :cond_10f
    return-void

    .line 1235
    .end local v25    # "unknownHostException":Ljava/net/UnknownHostException;
    :cond_110
    const/16 v17, 0x0

    .line 1238
    .local v17, "num_of_comparision":I
    const/16 v27, 0x210

    move/from16 v0, v27

    if-ne v6, v0, :cond_11a

    .line 1240
    const/16 v6, 0x200

    .line 1243
    :cond_11a
    if-nez v6, :cond_2c2

    .line 1244
    const/4 v6, 0x1

    .line 1247
    const/16 v17, 0x2

    .line 1248
    :try_start_11f
    const-string/jumbo v27, "MMTelSS"

    const-string/jumbo v28, "cbServiceClass==0, try to 1st match by using SERVICE_CLASS_VOICE"

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    :goto_128
    const-string/jumbo v27, "AO"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_149

    .line 1258
    const-string/jumbo v27, "OI"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    .line 1257
    if-nez v27, :cond_149

    .line 1259
    const-string/jumbo v27, "OX"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    .line 1257
    if-eqz v27, :cond_699

    .line 1261
    :cond_149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1262
    .local v10, "curTime":J
    const-string/jumbo v27, "MMTelSS"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "handleGetCB(): mOcbCache = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/mediatek/ims/MMTelSSTransport;->-get10(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, ", curTime = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 1263
    const-string/jumbo v29, ", mOcbCacheLastQueried = "

    .line 1262
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 1263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/mediatek/ims/MMTelSSTransport;->-get11(Lcom/mediatek/ims/MMTelSSTransport;)J

    move-result-wide v30

    .line 1262
    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/mediatek/ims/MMTelSSTransport;->-get10(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v27

    if-eqz v27, :cond_3d6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/mediatek/ims/MMTelSSTransport;->-get12(Lcom/mediatek/ims/MMTelSSTransport;)I

    move-result v27

    move/from16 v0, v19

    move/from16 v1, v27

    if-ne v0, v1, :cond_3d6

    .line 1265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/mediatek/ims/MMTelSSTransport;->-get10(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->isSupportEtag()Z

    move-result v27

    .line 1264
    if-eqz v27, :cond_3d6

    .line 1266
    const-string/jumbo v27, "MMTelSS"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "handleGetCB(): using ETAG mOcbCache: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/mediatek/ims/MMTelSSTransport;->-get10(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/mediatek/ims/MMTelSSTransport;->-wrap0(Lcom/mediatek/ims/MMTelSSTransport;I)Z

    move-result v27

    if-nez v27, :cond_2c6

    .line 1269
    const-string/jumbo v27, "MMTelSS"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "handleGetCB(): XcapRoot = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    new-instance v27, Ljava/net/UnknownHostException;

    invoke-direct/range {v27 .. v27}, Ljava/net/UnknownHostException;-><init>()V

    throw v27
    :try_end_223
    .catch Ljava/net/UnknownHostException; {:try_start_11f .. :try_end_223} :catch_91
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_11f .. :try_end_223} :catch_223
    .catch Ljava/lang/Exception; {:try_start_11f .. :try_end_223} :catch_47f

    .line 1536
    .end local v10    # "curTime":J
    .end local v17    # "num_of_comparision":I
    :catch_223
    move-exception v26

    .line 1537
    .local v26, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    const-string/jumbo v27, "MMTelSS"

    const-string/jumbo v28, "handleGetCB(): XcapException"

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Lcom/mediatek/ims/MMTelSSTransport;->-set9(Lcom/mediatek/ims/MMTelSSTransport;Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    .line 1539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v27, v0

    const/16 v28, -0x1

    invoke-static/range {v27 .. v28}, Lcom/mediatek/ims/MMTelSSTransport;->-set11(Lcom/mediatek/ims/MMTelSSTransport;I)I

    .line 1540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v27, v0

    const-wide/16 v28, 0x0

    invoke-static/range {v27 .. v29}, Lcom/mediatek/ims/MMTelSSTransport;->-set10(Lcom/mediatek/ims/MMTelSSTransport;J)J

    .line 1541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Lcom/mediatek/ims/MMTelSSTransport;->-set6(Lcom/mediatek/ims/MMTelSSTransport;Lcom/mediatek/simservs/client/IncomingCommunicationBarring;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    .line 1542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v27, v0

    const/16 v28, -0x1

    invoke-static/range {v27 .. v28}, Lcom/mediatek/ims/MMTelSSTransport;->-set8(Lcom/mediatek/ims/MMTelSSTransport;I)I

    .line 1543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v27, v0

    const-wide/16 v28, 0x0

    invoke-static/range {v27 .. v29}, Lcom/mediatek/ims/MMTelSSTransport;->-set7(Lcom/mediatek/ims/MMTelSSTransport;J)J

    .line 1545
    invoke-virtual/range {v26 .. v26}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 1546
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    move-object/from16 v27, v0

    if-eqz v27, :cond_65f

    .line 1547
    invoke-virtual/range {v26 .. v26}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v27

    if-eqz v27, :cond_a7c

    .line 1548
    const-string/jumbo v27, "MMTelSS"

    const-string/jumbo v28, "handleGetCB(): xcapException.isConnectionError()"

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    move-object/from16 v27, v0

    new-instance v28, Ljava/net/UnknownHostException;

    invoke-direct/range {v28 .. v28}, Ljava/net/UnknownHostException;-><init>()V

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1558
    :goto_29f
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/os/Message;->sendToTarget()V

    .line 1559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v27

    if-eqz v27, :cond_2c1

    .line 1560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 1562
    :cond_2c1
    return-void

    .line 1252
    .end local v26    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    .restart local v17    # "num_of_comparision":I
    :cond_2c2
    const/16 v17, 0x1

    goto/16 :goto_128

    .line 1273
    .restart local v10    # "curTime":J
    :cond_2c6
    :try_start_2c6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/mediatek/ims/MMTelSSTransport;->-get10(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v18

    .line 1274
    .local v18, "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/mediatek/ims/MMTelSSTransport;->-get9(Lcom/mediatek/ims/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v27

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->setNetwork(Landroid/net/Network;)V

    .line 1275
    invoke-virtual/range {v18 .. v18}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->refresh()V

    .line 1276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-static {v0, v10, v11}, Lcom/mediatek/ims/MMTelSSTransport;->-set10(Lcom/mediatek/ims/MMTelSSTransport;J)J

    .line 1296
    :goto_2ef
    invoke-virtual/range {v18 .. v18}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v23

    .line 1297
    .local v23, "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v22, 0x0

    .line 1299
    .local v22, "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    if-eqz v23, :cond_5a6

    .line 1300
    invoke-virtual/range {v23 .. v23}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v22

    .line 1301
    .local v22, "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    if-nez v22, :cond_586

    .line 1302
    const-string/jumbo v27, "MMTelSS"

    const-string/jumbo v28, "Dump Get MO CB XML: ruleset with empty rules"

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    .end local v22    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :goto_306
    if-eqz v22, :cond_650

    .line 1313
    const/4 v15, 0x0

    .local v15, "it":I
    :goto_309
    move/from16 v0, v17

    if-ge v15, v0, :cond_65f

    .line 1314
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v15, v0, :cond_324

    .line 1315
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v6, v0, :cond_324

    .line 1317
    const/16 v6, 0x200

    .line 1318
    const-string/jumbo v27, "MMTelSS"

    const-string/jumbo v28, "cbServiceClass==0, try to 2nd match by using SERVICE_CLASS_VIDEO"

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    :cond_324
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_325
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v13, v0, :cond_3d2

    .line 1323
    move-object/from16 v0, v22

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/mediatek/simservs/client/policy/Rule;

    .line 1324
    .local v20, "r":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v8

    .line 1325
    .local v8, "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v4

    .line 1326
    .local v4, "action":Lcom/mediatek/simservs/client/policy/Actions;
    const/16 v16, 0x0

    .line 1328
    .local v16, "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v27, "MMTelSS"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "handleGetCB():MO-facility="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 1329
    const-string/jumbo v29, ",action="

    .line 1328
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 1329
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v29

    .line 1328
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    if-eqz v8, :cond_5b1

    .line 1331
    const-string/jumbo v27, "MMTelSS"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "handleGetCB():MO-international="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 1332
    invoke-virtual {v8}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v29

    .line 1331
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 1332
    const-string/jumbo v29, ",roaming="

    .line 1331
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 1333
    invoke-virtual {v8}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v29

    .line 1331
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    invoke-virtual {v8}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v16

    .line 1340
    .end local v16    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_39d
    if-eqz v8, :cond_5d9

    invoke-virtual {v8}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v27

    if-eqz v27, :cond_5d9

    .line 1341
    const-string/jumbo v27, "OI"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    .line 1340
    if-eqz v27, :cond_5d9

    .line 1342
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v19

    invoke-virtual {v0, v1, v6, v2}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;II)Z

    move-result v27

    .line 1340
    if-eqz v27, :cond_5d9

    .line 1343
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v27

    if-nez v27, :cond_5d1

    if-eqz v8, :cond_5d1

    .line 1344
    invoke-virtual {v8}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v27

    if-nez v27, :cond_5d1

    .line 1346
    const/16 v27, 0x0

    aget v28, v12, v27

    or-int v28, v28, v6

    aput v28, v12, v27

    .line 1313
    .end local v4    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v8    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v20    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_3d2
    :goto_3d2
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_309

    .line 1277
    .end local v13    # "i":I
    .end local v15    # "it":I
    .end local v18    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .end local v23    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_3d6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/mediatek/ims/MMTelSSTransport;->-get10(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v27

    if-eqz v27, :cond_443

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/mediatek/ims/MMTelSSTransport;->-get12(Lcom/mediatek/ims/MMTelSSTransport;)I

    move-result v27

    move/from16 v0, v19

    move/from16 v1, v27

    if-ne v0, v1, :cond_443

    .line 1278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/mediatek/ims/MMTelSSTransport;->-get11(Lcom/mediatek/ims/MMTelSSTransport;)J

    move-result-wide v28

    cmp-long v27, v10, v28

    if-ltz v27, :cond_443

    .line 1279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/mediatek/ims/MMTelSSTransport;->-get11(Lcom/mediatek/ims/MMTelSSTransport;)J

    move-result-wide v28

    sub-long v28, v10, v28

    const-wide/32 v30, 0x1d4c0

    cmp-long v27, v28, v30

    if-gez v27, :cond_443

    .line 1280
    const-string/jumbo v27, "MMTelSS"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "handleGetCB(): using mOcbCache: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/mediatek/ims/MMTelSSTransport;->-get10(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/mediatek/ims/MMTelSSTransport;->-get10(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v18

    .restart local v18    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    goto/16 :goto_2ef

    .line 1283
    .end local v18    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    :cond_443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/mediatek/ims/MMTelSSTransport;->-wrap0(Lcom/mediatek/ims/MMTelSSTransport;I)Z

    move-result v27

    if-nez v27, :cond_514

    .line 1284
    const-string/jumbo v27, "MMTelSS"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "handleGetCB(): XcapRoot = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    new-instance v27, Ljava/net/UnknownHostException;

    invoke-direct/range {v27 .. v27}, Ljava/net/UnknownHostException;-><init>()V

    throw v27
    :try_end_47f
    .catch Ljava/net/UnknownHostException; {:try_start_2c6 .. :try_end_47f} :catch_91
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_2c6 .. :try_end_47f} :catch_223
    .catch Ljava/lang/Exception; {:try_start_2c6 .. :try_end_47f} :catch_47f

    .line 1564
    .end local v10    # "curTime":J
    .end local v17    # "num_of_comparision":I
    :catch_47f
    move-exception v9

    .line 1565
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v27, "MMTelSS"

    const-string/jumbo v28, "handleGetCB():Start to Print Stack Trace"

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Lcom/mediatek/ims/MMTelSSTransport;->-set9(Lcom/mediatek/ims/MMTelSSTransport;Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    .line 1567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v27, v0

    const/16 v28, -0x1

    invoke-static/range {v27 .. v28}, Lcom/mediatek/ims/MMTelSSTransport;->-set11(Lcom/mediatek/ims/MMTelSSTransport;I)I

    .line 1568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v27, v0

    const-wide/16 v28, 0x0

    invoke-static/range {v27 .. v29}, Lcom/mediatek/ims/MMTelSSTransport;->-set10(Lcom/mediatek/ims/MMTelSSTransport;J)J

    .line 1569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Lcom/mediatek/ims/MMTelSSTransport;->-set6(Lcom/mediatek/ims/MMTelSSTransport;Lcom/mediatek/simservs/client/IncomingCommunicationBarring;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    .line 1570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v27, v0

    const/16 v28, -0x1

    invoke-static/range {v27 .. v28}, Lcom/mediatek/ims/MMTelSSTransport;->-set8(Lcom/mediatek/ims/MMTelSSTransport;I)I

    .line 1571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v27, v0

    const-wide/16 v28, 0x0

    invoke-static/range {v27 .. v29}, Lcom/mediatek/ims/MMTelSSTransport;->-set7(Lcom/mediatek/ims/MMTelSSTransport;J)J

    .line 1573
    const/16 v27, 0x0

    const/16 v28, 0x0

    aput v27, v12, v28

    .line 1574
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 1575
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    move-object/from16 v27, v0

    if-eqz v27, :cond_65f

    .line 1577
    const/16 v27, 0x2

    invoke-static/range {v27 .. v27}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v7

    .line 1578
    .local v7, "ce":Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1579
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/os/Message;->sendToTarget()V

    .line 1580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v27

    if-eqz v27, :cond_513

    .line 1581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 1583
    :cond_513
    return-void

    .line 1288
    .end local v7    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v10    # "curTime":J
    .restart local v17    # "num_of_comparision":I
    :cond_514
    :try_start_514
    invoke-static {}, Lcom/mediatek/ims/MMTelSSTransport;->-get16()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/mediatek/ims/MMTelSSTransport;->-get9(Lcom/mediatek/ims/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v28

    const/16 v29, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v29

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/simservs/client/SimServs;->getOutgoingCommunicationBarring(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v18

    .line 1289
    .restart local v18    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/mediatek/ims/MMTelSSTransport;->-set9(Lcom/mediatek/ims/MMTelSSTransport;Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    .line 1290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/mediatek/ims/MMTelSSTransport;->-set11(Lcom/mediatek/ims/MMTelSSTransport;I)I

    .line 1291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-static {v0, v10, v11}, Lcom/mediatek/ims/MMTelSSTransport;->-set10(Lcom/mediatek/ims/MMTelSSTransport;J)J

    .line 1292
    const-string/jumbo v27, "MMTelSS"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "handleGetCB(): new mOcbCache = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/mediatek/ims/MMTelSSTransport;->-get10(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 1293
    const-string/jumbo v29, ", curTime = "

    .line 1292
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2ef

    .line 1304
    .restart local v22    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v23    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_586
    const-string/jumbo v27, "MMTelSS"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Dump Get MO CB XML:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v23 .. v23}, Lcom/mediatek/simservs/client/policy/RuleSet;->toXmlString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_306

    .line 1307
    .local v22, "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :cond_5a6
    const-string/jumbo v27, "MMTelSS"

    const-string/jumbo v28, "No MO related CB rules in remote server"

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_306

    .line 1336
    .end local v22    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v4    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v8    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v13    # "i":I
    .restart local v15    # "it":I
    .restart local v16    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_5b1
    const-string/jumbo v27, "MMTelSS"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "handleGetCB():Empty MO cond (cond==null) for this rule="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_39d

    .line 1348
    .end local v16    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5d1
    const/16 v27, 0x0

    const/16 v28, 0x0

    aput v27, v12, v28

    goto/16 :goto_3d2

    .line 1351
    :cond_5d9
    if-eqz v8, :cond_619

    invoke-virtual {v8}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternationalExHc()Z

    move-result v27

    if-eqz v27, :cond_619

    .line 1352
    const-string/jumbo v27, "OX"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    .line 1351
    if-eqz v27, :cond_619

    .line 1353
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v19

    invoke-virtual {v0, v1, v6, v2}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;II)Z

    move-result v27

    .line 1351
    if-eqz v27, :cond_619

    .line 1354
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v27

    if-nez v27, :cond_612

    if-eqz v8, :cond_612

    .line 1355
    invoke-virtual {v8}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v27

    if-nez v27, :cond_612

    .line 1357
    const/16 v27, 0x0

    aget v28, v12, v27

    or-int v28, v28, v6

    aput v28, v12, v27

    .line 1322
    :cond_60e
    :goto_60e
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_325

    .line 1359
    :cond_612
    const/16 v27, 0x0

    const/16 v28, 0x0

    aput v27, v12, v28

    goto :goto_60e

    .line 1361
    :cond_619
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v8, v6, v1}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->isBAOC(Lcom/mediatek/simservs/client/policy/Conditions;II)Z

    move-result v27

    if-eqz v27, :cond_60e

    .line 1362
    const-string/jumbo v27, "AO"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    .line 1361
    if-eqz v27, :cond_60e

    .line 1366
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v27

    if-nez v27, :cond_648

    if-eqz v8, :cond_63e

    .line 1367
    if-eqz v8, :cond_648

    .line 1368
    invoke-virtual {v8}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v27

    if-nez v27, :cond_648

    .line 1370
    :cond_63e
    const/16 v27, 0x0

    aget v28, v12, v27

    or-int v28, v28, v6

    aput v28, v12, v27

    goto/16 :goto_3d2

    .line 1372
    :cond_648
    const/16 v27, 0x0

    const/16 v28, 0x0

    aput v27, v12, v28

    goto/16 :goto_3d2

    .line 1380
    .end local v4    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v8    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v13    # "i":I
    .end local v15    # "it":I
    .end local v20    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_650
    const-string/jumbo v27, "MMTelSS"

    const-string/jumbo v28, "ruleList is null, MO CB is disabled"

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    const/16 v27, 0x0

    const/16 v28, 0x0

    aput v27, v12, v28
    :try_end_65f
    .catch Ljava/net/UnknownHostException; {:try_start_514 .. :try_end_65f} :catch_91
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_514 .. :try_end_65f} :catch_223
    .catch Ljava/lang/Exception; {:try_start_514 .. :try_end_65f} :catch_47f

    .line 1589
    .end local v10    # "curTime":J
    .end local v17    # "num_of_comparision":I
    .end local v18    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .end local v23    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_65f
    :goto_65f
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    move-object/from16 v27, v0

    if-eqz v27, :cond_67f

    .line 1611
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v12, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1612
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/os/Message;->sendToTarget()V

    .line 1615
    :cond_67f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v27

    if-eqz v27, :cond_698

    .line 1616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 1210
    :cond_698
    return-void

    .line 1384
    .restart local v17    # "num_of_comparision":I
    :cond_699
    :try_start_699
    const-string/jumbo v27, "AI"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_6af

    .line 1385
    const-string/jumbo v27, "IR"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    .line 1384
    if-eqz v27, :cond_a5e

    .line 1387
    :cond_6af
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1388
    .restart local v10    # "curTime":J
    const-string/jumbo v27, "MMTelSS"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "handleGetCB(): mIcbCache = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/mediatek/ims/MMTelSSTransport;->-get6(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, ", curTime = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 1389
    const-string/jumbo v29, ", mIcbCacheLastQueried = "

    .line 1388
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 1389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/mediatek/ims/MMTelSSTransport;->-get7(Lcom/mediatek/ims/MMTelSSTransport;)J

    move-result-wide v30

    .line 1388
    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/mediatek/ims/MMTelSSTransport;->-get6(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v27

    if-eqz v27, :cond_8a6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/mediatek/ims/MMTelSSTransport;->-get8(Lcom/mediatek/ims/MMTelSSTransport;)I

    move-result v27

    move/from16 v0, v19

    move/from16 v1, v27

    if-ne v0, v1, :cond_8a6

    .line 1391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/mediatek/ims/MMTelSSTransport;->-get6(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->isSupportEtag()Z

    move-result v27

    .line 1390
    if-eqz v27, :cond_8a6

    .line 1392
    const-string/jumbo v27, "MMTelSS"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "handleGetCB(): using ETAG mIcbCache: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/mediatek/ims/MMTelSSTransport;->-get6(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/mediatek/ims/MMTelSSTransport;->-wrap0(Lcom/mediatek/ims/MMTelSSTransport;I)Z

    move-result v27

    if-nez v27, :cond_789

    .line 1395
    const-string/jumbo v27, "MMTelSS"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "handleGetCB(): XcapRoot = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    new-instance v27, Ljava/net/UnknownHostException;

    invoke-direct/range {v27 .. v27}, Ljava/net/UnknownHostException;-><init>()V

    throw v27

    .line 1399
    :cond_789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/mediatek/ims/MMTelSSTransport;->-get6(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v14

    .line 1400
    .local v14, "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/mediatek/ims/MMTelSSTransport;->-get9(Lcom/mediatek/ims/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->setNetwork(Landroid/net/Network;)V

    .line 1401
    invoke-virtual {v14}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->refresh()V

    .line 1402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-static {v0, v10, v11}, Lcom/mediatek/ims/MMTelSSTransport;->-set7(Lcom/mediatek/ims/MMTelSSTransport;J)J

    .line 1422
    :goto_7b0
    invoke-virtual {v14}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v23

    .line 1423
    .restart local v23    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v22, 0x0

    .line 1425
    .restart local v22    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    if-eqz v23, :cond_9df

    .line 1426
    invoke-virtual/range {v23 .. v23}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v22

    .line 1427
    .local v22, "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    if-nez v22, :cond_9bf

    .line 1428
    const-string/jumbo v27, "MMTelSS"

    const-string/jumbo v28, "Dump Get MT CB XML: ruleset with empty rules"

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    .end local v22    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :goto_7c7
    if-eqz v22, :cond_a4d

    .line 1439
    const/4 v15, 0x0

    .restart local v15    # "it":I
    :goto_7ca
    move/from16 v0, v17

    if-ge v15, v0, :cond_65f

    .line 1440
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v15, v0, :cond_7e5

    .line 1441
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v6, v0, :cond_7e5

    .line 1443
    const/16 v6, 0x200

    .line 1444
    const-string/jumbo v27, "MMTelSS"

    const-string/jumbo v28, "cbServiceClass==0, try to 2nd match by using SERVICE_CLASS_VIDEO"

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    :cond_7e5
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_7e6
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v13, v0, :cond_a49

    .line 1448
    move-object/from16 v0, v22

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/mediatek/simservs/client/policy/Rule;

    .line 1449
    .restart local v20    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v8

    .line 1450
    .restart local v8    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v4

    .line 1451
    .restart local v4    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    const/16 v16, 0x0

    .line 1453
    .restart local v16    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v27, "MMTelSS"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "handleGetCB():MT-facility="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 1454
    const-string/jumbo v29, ",action="

    .line 1453
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 1454
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v29

    .line 1453
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    if-eqz v8, :cond_9ea

    .line 1456
    const-string/jumbo v27, "MMTelSS"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "handleGetCB():MT-international="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 1457
    invoke-virtual {v8}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v29

    .line 1456
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 1457
    const-string/jumbo v29, ",roaming="

    .line 1456
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 1458
    invoke-virtual {v8}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v29

    .line 1456
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 1458
    const-string/jumbo v29, ",anonymous="

    .line 1456
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 1459
    invoke-virtual {v8}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendAnonymous()Z

    move-result v29

    .line 1456
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    invoke-virtual {v8}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v16

    .line 1466
    .end local v16    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_86d
    if-eqz v8, :cond_a12

    invoke-virtual {v8}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v27

    if-eqz v27, :cond_a12

    .line 1467
    const-string/jumbo v27, "IR"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    .line 1466
    if-eqz v27, :cond_a12

    .line 1468
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v19

    invoke-virtual {v0, v1, v6, v2}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;II)Z

    move-result v27

    .line 1466
    if-eqz v27, :cond_a12

    .line 1469
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v27

    if-nez v27, :cond_a0a

    if-eqz v8, :cond_a0a

    .line 1470
    invoke-virtual {v8}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v27

    if-nez v27, :cond_a0a

    .line 1472
    const/16 v27, 0x0

    aget v28, v12, v27

    or-int v28, v28, v6

    aput v28, v12, v27

    .line 1447
    :cond_8a2
    :goto_8a2
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_7e6

    .line 1403
    .end local v4    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v8    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v13    # "i":I
    .end local v14    # "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    .end local v15    # "it":I
    .end local v20    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v23    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_8a6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/mediatek/ims/MMTelSSTransport;->-get6(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v27

    if-eqz v27, :cond_913

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/mediatek/ims/MMTelSSTransport;->-get8(Lcom/mediatek/ims/MMTelSSTransport;)I

    move-result v27

    move/from16 v0, v19

    move/from16 v1, v27

    if-ne v0, v1, :cond_913

    .line 1404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/mediatek/ims/MMTelSSTransport;->-get7(Lcom/mediatek/ims/MMTelSSTransport;)J

    move-result-wide v28

    cmp-long v27, v10, v28

    if-ltz v27, :cond_913

    .line 1405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/mediatek/ims/MMTelSSTransport;->-get7(Lcom/mediatek/ims/MMTelSSTransport;)J

    move-result-wide v28

    sub-long v28, v10, v28

    const-wide/32 v30, 0x1d4c0

    cmp-long v27, v28, v30

    if-gez v27, :cond_913

    .line 1406
    const-string/jumbo v27, "MMTelSS"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "handleGetCB(): using mIcbCache: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/mediatek/ims/MMTelSSTransport;->-get6(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/mediatek/ims/MMTelSSTransport;->-get6(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v14

    .restart local v14    # "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    goto/16 :goto_7b0

    .line 1409
    .end local v14    # "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    :cond_913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/mediatek/ims/MMTelSSTransport;->-wrap0(Lcom/mediatek/ims/MMTelSSTransport;I)Z

    move-result v27

    if-nez v27, :cond_94f

    .line 1410
    const-string/jumbo v27, "MMTelSS"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "handleGetCB(): XcapRoot = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    new-instance v27, Ljava/net/UnknownHostException;

    invoke-direct/range {v27 .. v27}, Ljava/net/UnknownHostException;-><init>()V

    throw v27

    .line 1414
    :cond_94f
    invoke-static {}, Lcom/mediatek/ims/MMTelSSTransport;->-get16()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/mediatek/ims/MMTelSSTransport;->-get9(Lcom/mediatek/ims/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v28

    const/16 v29, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v29

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/simservs/client/SimServs;->getIncomingCommunicationBarring(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v14

    .line 1415
    .restart local v14    # "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-static {v0, v14}, Lcom/mediatek/ims/MMTelSSTransport;->-set6(Lcom/mediatek/ims/MMTelSSTransport;Lcom/mediatek/simservs/client/IncomingCommunicationBarring;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    .line 1416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/mediatek/ims/MMTelSSTransport;->-set8(Lcom/mediatek/ims/MMTelSSTransport;I)I

    .line 1417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-static {v0, v10, v11}, Lcom/mediatek/ims/MMTelSSTransport;->-set7(Lcom/mediatek/ims/MMTelSSTransport;J)J

    .line 1418
    const-string/jumbo v27, "MMTelSS"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "handleGetCB(): new mIcbCache = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/mediatek/ims/MMTelSSTransport;->-get6(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 1419
    const-string/jumbo v29, ", curTime = "

    .line 1418
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7b0

    .line 1430
    .restart local v22    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v23    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_9bf
    const-string/jumbo v27, "MMTelSS"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Dump Get MT CB XML:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v23 .. v23}, Lcom/mediatek/simservs/client/policy/RuleSet;->toXmlString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7c7

    .line 1433
    .local v22, "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :cond_9df
    const-string/jumbo v27, "MMTelSS"

    const-string/jumbo v28, "No MT related CB rules in remote server"

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7c7

    .line 1462
    .end local v22    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v4    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v8    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v13    # "i":I
    .restart local v15    # "it":I
    .restart local v16    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_9ea
    const-string/jumbo v27, "MMTelSS"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "handleGetCB():Empty MT cond (cond==null) for this rule="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_86d

    .line 1474
    .end local v16    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_a0a
    const/16 v27, 0x0

    const/16 v28, 0x0

    aput v27, v12, v28

    goto/16 :goto_8a2

    .line 1476
    :cond_a12
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v8, v6, v1}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->isBAIC(Lcom/mediatek/simservs/client/policy/Conditions;II)Z

    move-result v27

    if-eqz v27, :cond_8a2

    .line 1477
    const-string/jumbo v27, "AI"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    .line 1476
    if-eqz v27, :cond_8a2

    .line 1481
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v27

    if-nez v27, :cond_a41

    if-eqz v8, :cond_a37

    if-eqz v8, :cond_a41

    .line 1482
    invoke-virtual {v8}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v27

    if-nez v27, :cond_a41

    .line 1484
    :cond_a37
    const/16 v27, 0x0

    aget v28, v12, v27

    or-int v28, v28, v6

    aput v28, v12, v27

    goto/16 :goto_8a2

    .line 1486
    :cond_a41
    const/16 v27, 0x0

    const/16 v28, 0x0

    aput v27, v12, v28

    goto/16 :goto_8a2

    .line 1439
    .end local v4    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v8    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v20    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_a49
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_7ca

    .line 1494
    .end local v13    # "i":I
    .end local v15    # "it":I
    :cond_a4d
    const-string/jumbo v27, "MMTelSS"

    const-string/jumbo v28, "ruleList is null, MT CB is disabled"

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    const/16 v27, 0x0

    const/16 v28, 0x0

    aput v27, v12, v28

    goto/16 :goto_65f

    .line 1516
    .end local v10    # "curTime":J
    .end local v14    # "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    .end local v23    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_a5e
    const-string/jumbo v27, "MMTelSS"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "handleGetCB(): Not support query for CB Facility="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a7a
    .catch Ljava/net/UnknownHostException; {:try_start_699 .. :try_end_a7a} :catch_91
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_699 .. :try_end_a7a} :catch_223
    .catch Ljava/lang/Exception; {:try_start_699 .. :try_end_a7a} :catch_47f

    goto/16 :goto_65f

    .line 1550
    .end local v17    # "num_of_comparision":I
    .restart local v26    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_a7c
    invoke-static/range {v19 .. v19}, Lcom/mediatek/ims/MMTelSSUtils;->isOp06IccCard(I)Z

    move-result v27

    if-eqz v27, :cond_abe

    .line 1551
    invoke-virtual/range {v26 .. v26}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v27

    if-eqz v27, :cond_abe

    .line 1552
    const-string/jumbo v27, "MMTelSS"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "handleGetCB(): OP06 with http Error: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 1553
    invoke-virtual/range {v26 .. v26}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v29

    .line 1552
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    move-object/from16 v27, v0

    new-instance v28, Ljava/net/UnknownHostException;

    invoke-direct/range {v28 .. v28}, Ljava/net/UnknownHostException;-><init>()V

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto/16 :goto_29f

    .line 1556
    :cond_abe
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto/16 :goto_29f
.end method

.method public handleGetCF(Lcom/mediatek/ims/MMTelSSRequest;)V
    .registers 46
    .param p1, "rr"    # Lcom/mediatek/ims/MMTelSSRequest;

    .prologue
    .line 1621
    const/16 v32, -0x1

    .line 1622
    .local v32, "reqNo":I
    const/16 v35, -0x1

    .line 1623
    .local v35, "serialNo":I
    const/16 v22, 0x1

    .line 1624
    .local v22, "numInfos":I
    const/4 v15, 0x0

    .line 1626
    .local v15, "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 1628
    .local v27, "queriedCallForwardInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/CallForwardInfo;>;"
    const/4 v8, -0x1

    .line 1629
    .local v8, "cfAction":I
    const/16 v31, -0x1

    .line 1630
    .local v31, "reason":I
    const/16 v36, -0x1

    .line 1631
    .local v36, "serviceClass":I
    const/16 v25, -0x1

    .line 1632
    .local v25, "orgServiceClass":I
    const-string/jumbo v9, ""

    .line 1633
    .local v9, "cfNumber":Ljava/lang/String;
    const-string/jumbo v4, ""

    .line 1634
    .local v4, "CFPhoneNum":Ljava/lang/String;
    const/16 v29, 0x0

    .line 1635
    .local v29, "queryStatus":I
    const/16 v21, 0x14

    .line 1636
    .local v21, "noReplyTimer":I
    const/16 v26, 0x0

    .line 1657
    .local v26, "phoneId":I
    :try_start_1f
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    invoke-virtual/range {v39 .. v40}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1658
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/os/Parcel;->readInt()I

    move-result v32

    .line 1659
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/os/Parcel;->readInt()I

    move-result v35

    .line 1660
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1661
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 1662
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 1663
    move/from16 v25, v36

    .line 1664
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1665
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 1667
    invoke-static/range {v26 .. v26}, Lcom/mediatek/ims/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v39

    if-nez v39, :cond_e5

    .line 1668
    const-string/jumbo v39, "MMTelSS"

    const-string/jumbo v40, "handleGetCF(): !isPreferXcap()"

    invoke-static/range {v39 .. v40}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    new-instance v39, Ljava/net/UnknownHostException;

    invoke-direct/range {v39 .. v39}, Ljava/net/UnknownHostException;-><init>()V

    throw v39
    :try_end_87
    .catch Ljava/net/UnknownHostException; {:try_start_1f .. :try_end_87} :catch_87
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_1f .. :try_end_87} :catch_215
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_87} :catch_582

    .line 1945
    .end local v15    # "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    :catch_87
    move-exception v37

    .line 1946
    .local v37, "unknownHostException":Ljava/net/UnknownHostException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    invoke-static/range {v39 .. v40}, Lcom/mediatek/ims/MMTelSSTransport;->-set0(Lcom/mediatek/ims/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationDiversion;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 1947
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v39, v0

    const/16 v40, -0x1

    invoke-static/range {v39 .. v40}, Lcom/mediatek/ims/MMTelSSTransport;->-set2(Lcom/mediatek/ims/MMTelSSTransport;I)I

    .line 1948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v39, v0

    const-wide/16 v40, 0x0

    invoke-static/range {v39 .. v41}, Lcom/mediatek/ims/MMTelSSTransport;->-set1(Lcom/mediatek/ims/MMTelSSTransport;J)J

    .line 1950
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    move-object/from16 v39, v0

    if-eqz v39, :cond_832

    .line 1951
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    move-object/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1952
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/os/Message;->sendToTarget()V

    .line 1953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v39

    if-eqz v39, :cond_e4

    .line 1954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 1956
    :cond_e4
    return-void

    .line 1672
    .end local v37    # "unknownHostException":Ljava/net/UnknownHostException;
    .restart local v15    # "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    :cond_e5
    :try_start_e5
    const-string/jumbo v39, "MMTelSS"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "Read from CF parcel:req="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-static/range {v32 .. v32}, Lcom/mediatek/ims/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string/jumbo v41, ",cfAction="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 1673
    const-string/jumbo v41, ",reason="

    .line 1672
    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 1673
    const-string/jumbo v41, ",serviceClass="

    .line 1672
    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 1674
    const-string/jumbo v41, ",number="

    .line 1672
    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1678
    .local v12, "curTime":J
    const-string/jumbo v39, "MMTelSS"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "handleGetCF(): mCdCache = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lcom/mediatek/ims/MMTelSSTransport;->-get0(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string/jumbo v41, ", curTime = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 1679
    const-string/jumbo v41, ", mCdCacheLastQueried = "

    .line 1678
    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 1679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lcom/mediatek/ims/MMTelSSTransport;->-get1(Lcom/mediatek/ims/MMTelSSTransport;)J

    move-result-wide v42

    .line 1678
    move-object/from16 v0, v40

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/mediatek/ims/MMTelSSTransport;->-get0(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v39

    if-eqz v39, :cond_4d9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/mediatek/ims/MMTelSSTransport;->-get2(Lcom/mediatek/ims/MMTelSSTransport;)I

    move-result v39

    move/from16 v0, v26

    move/from16 v1, v39

    if-ne v0, v1, :cond_4d9

    .line 1681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/mediatek/ims/MMTelSSTransport;->-get0(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lcom/mediatek/simservs/client/CommunicationDiversion;->isSupportEtag()Z

    move-result v39

    .line 1680
    if-eqz v39, :cond_4d9

    .line 1682
    const-string/jumbo v39, "MMTelSS"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "handleGetCF(): using ETAG mCdCache: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lcom/mediatek/ims/MMTelSSTransport;->-get0(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move/from16 v1, v26

    invoke-static {v0, v1}, Lcom/mediatek/ims/MMTelSSTransport;->-wrap0(Lcom/mediatek/ims/MMTelSSTransport;I)Z

    move-result v39

    if-nez v39, :cond_293

    .line 1685
    const-string/jumbo v39, "MMTelSS"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "handleGetCF(): XcapRoot = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    new-instance v39, Ljava/net/UnknownHostException;

    invoke-direct/range {v39 .. v39}, Ljava/net/UnknownHostException;-><init>()V

    throw v39
    :try_end_215
    .catch Ljava/net/UnknownHostException; {:try_start_e5 .. :try_end_215} :catch_87
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_e5 .. :try_end_215} :catch_215
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_215} :catch_582

    .line 1958
    .end local v12    # "curTime":J
    .end local v15    # "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    :catch_215
    move-exception v38

    .line 1959
    .local v38, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    const-string/jumbo v39, "MMTelSS"

    const-string/jumbo v40, "handleGetCF(): XcapException"

    invoke-static/range {v39 .. v40}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1960
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    invoke-static/range {v39 .. v40}, Lcom/mediatek/ims/MMTelSSTransport;->-set0(Lcom/mediatek/ims/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationDiversion;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 1961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v39, v0

    const/16 v40, -0x1

    invoke-static/range {v39 .. v40}, Lcom/mediatek/ims/MMTelSSTransport;->-set2(Lcom/mediatek/ims/MMTelSSTransport;I)I

    .line 1962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v39, v0

    const-wide/16 v40, 0x0

    invoke-static/range {v39 .. v41}, Lcom/mediatek/ims/MMTelSSTransport;->-set1(Lcom/mediatek/ims/MMTelSSTransport;J)J

    .line 1964
    invoke-virtual/range {v38 .. v38}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 1965
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    move-object/from16 v39, v0

    if-eqz v39, :cond_832

    .line 1966
    invoke-virtual/range {v38 .. v38}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v39

    if-eqz v39, :cond_86c

    .line 1967
    const-string/jumbo v39, "MMTelSS"

    const-string/jumbo v40, "handleGetCF(): xcapException.isConnectionError()"

    invoke-static/range {v39 .. v40}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    move-object/from16 v39, v0

    new-instance v40, Ljava/net/UnknownHostException;

    invoke-direct/range {v40 .. v40}, Ljava/net/UnknownHostException;-><init>()V

    const/16 v41, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, v41

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1977
    :goto_270
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/os/Message;->sendToTarget()V

    .line 1978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v39

    if-eqz v39, :cond_292

    .line 1979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 1981
    :cond_292
    return-void

    .line 1689
    .end local v38    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    .restart local v12    # "curTime":J
    .restart local v15    # "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    :cond_293
    :try_start_293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/mediatek/ims/MMTelSSTransport;->-get0(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v6

    .line 1690
    .local v6, "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/mediatek/ims/MMTelSSTransport;->-get9(Lcom/mediatek/ims/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Lcom/mediatek/simservs/client/CommunicationDiversion;->setNetwork(Landroid/net/Network;)V

    .line 1691
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/CommunicationDiversion;->refresh()V

    .line 1692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    invoke-static {v0, v12, v13}, Lcom/mediatek/ims/MMTelSSTransport;->-set1(Lcom/mediatek/ims/MMTelSSTransport;J)J

    .line 1720
    :goto_2ba
    const-string/jumbo v39, "MMTelSS"

    const-string/jumbo v40, "handleGetCF():GetRuleSet from cd"

    invoke-static/range {v39 .. v40}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v34

    .line 1725
    .local v34, "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v33, 0x0

    .line 1727
    .local v33, "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    if-eqz v34, :cond_660

    .line 1728
    invoke-virtual/range {v34 .. v34}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v33

    .line 1735
    .end local v33    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :goto_2cf
    if-eqz v33, :cond_821

    .line 1737
    const/16 v24, 0x1

    .line 1738
    .local v24, "num_of_expansion":I
    const/16 v39, 0x5

    move/from16 v0, v31

    move/from16 v1, v39

    if-ne v0, v1, :cond_66b

    .line 1741
    const/16 v24, 0x4

    .line 1748
    :cond_2dd
    :goto_2dd
    const/16 v20, 0x0

    .local v20, "n":I
    :goto_2df
    move/from16 v0, v20

    move/from16 v1, v24

    if-ge v0, v1, :cond_802

    .line 1749
    const/16 v39, 0x1

    move/from16 v0, v24

    move/from16 v1, v39

    if-eq v0, v1, :cond_2f1

    .line 1750
    if-nez v20, :cond_677

    const/16 v31, 0x1

    .line 1757
    :cond_2f1
    :goto_2f1
    const-string/jumbo v39, "MMTelSS"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "num_of_expansion="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string/jumbo v41, ": with round="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 1758
    add-int/lit8 v41, v20, 0x1

    .line 1757
    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 1758
    const-string/jumbo v41, ",with reason="

    .line 1757
    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    const/16 v39, 0x210

    move/from16 v0, v25

    move/from16 v1, v39

    if-ne v0, v1, :cond_335

    .line 1763
    const/16 v36, 0x200

    .line 1770
    :cond_335
    const/16 v23, 0x0

    .line 1772
    .local v23, "num_of_comparision":I
    if-nez v25, :cond_6a7

    .line 1773
    const/16 v36, 0x1

    .line 1776
    const/16 v23, 0x2

    .line 1777
    const-string/jumbo v39, "MMTelSS"

    const-string/jumbo v40, "serviceClass==0, try to 1st match by using SERVICE_CLASS_VOICE"

    invoke-static/range {v39 .. v40}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    :goto_346
    const/16 v17, 0x0

    .local v17, "it":I
    :goto_348
    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_7fe

    .line 1787
    const/16 v39, 0x1

    move/from16 v0, v17

    move/from16 v1, v39

    if-ne v0, v1, :cond_369

    const/16 v39, 0x1

    move/from16 v0, v36

    move/from16 v1, v39

    if-ne v0, v1, :cond_369

    .line 1789
    const/16 v36, 0x200

    .line 1790
    const-string/jumbo v39, "MMTelSS"

    const-string/jumbo v40, "serviceClass==0, try to 2nd match by using SERVICE_CLASS_VIDEO"

    invoke-static/range {v39 .. v40}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    :cond_369
    const-string/jumbo v39, "MMTelSS"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "num_of_comparision="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 1795
    const-string/jumbo v41, ": with round="

    .line 1794
    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 1795
    add-int/lit8 v41, v17, 0x1

    .line 1794
    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 1795
    const-string/jumbo v41, ",with service class="

    .line 1794
    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_3a4
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v39

    move/from16 v0, v39

    if-ge v14, v0, :cond_462

    .line 1800
    move-object/from16 v0, v33

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/mediatek/simservs/client/policy/Rule;

    .line 1801
    .local v30, "r":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual/range {v30 .. v30}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v10

    .line 1802
    .local v10, "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual/range {v30 .. v30}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v5

    .line 1803
    .local v5, "action":Lcom/mediatek/simservs/client/policy/Actions;
    const/16 v19, 0x0

    .line 1805
    .local v19, "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v10, :cond_6ab

    .line 1806
    const-string/jumbo v39, "MMTelSS"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "handleGetCF():busy="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual {v10}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 1807
    const-string/jumbo v41, ",NoAnswer="

    .line 1806
    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 1807
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v41

    .line 1806
    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 1808
    const-string/jumbo v41, ",NoReachable="

    .line 1806
    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 1808
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v41

    .line 1806
    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 1809
    const-string/jumbo v41, ",NotRegistered="

    .line 1806
    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 1809
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v41

    .line 1806
    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v19

    .line 1817
    .end local v19    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_40f
    const/16 v39, 0x2

    move/from16 v0, v39

    if-ne v8, v0, :cond_6cd

    .line 1818
    if-nez v31, :cond_6cd

    .line 1819
    if-eqz v10, :cond_6cb

    invoke-virtual {v10}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v39

    if-nez v39, :cond_6cb

    .line 1820
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v39

    if-nez v39, :cond_6cb

    .line 1821
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v39

    if-nez v39, :cond_6cb

    .line 1822
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v39

    if-nez v39, :cond_6cb

    .line 1823
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v39

    if-nez v39, :cond_6cb

    .line 1824
    :cond_437
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v36

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;II)Z

    move-result v39

    .line 1817
    if-eqz v39, :cond_6cd

    .line 1825
    const-string/jumbo v39, "MMTelSS"

    const-string/jumbo v40, "handleGetCF():CFU is enabled on server"

    invoke-static/range {v39 .. v40}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1827
    const/16 v29, 0x1

    .line 1828
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v39

    if-eqz v39, :cond_45e

    .line 1829
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lcom/mediatek/simservs/client/policy/ForwardTo;->getTarget()Ljava/lang/String;

    move-result-object v4

    .line 1833
    :cond_45e
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getNoReplyTimer()I

    move-result v21

    .line 1905
    .end local v5    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v10    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v30    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_462
    :goto_462
    new-instance v18, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct/range {v18 .. v18}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    .line 1906
    .local v18, "item":Lcom/android/internal/telephony/CallForwardInfo;
    move/from16 v0, v29

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 1907
    move/from16 v0, v31

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 1908
    move/from16 v0, v36

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 1909
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 1910
    move-object/from16 v0, v18

    iput-object v4, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 1911
    move/from16 v0, v21

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 1912
    const-string/jumbo v39, "MMTelSS"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "handleGetCF():add one record with reason="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 1913
    const-string/jumbo v41, ",serviceClass="

    .line 1912
    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 1913
    const-string/jumbo v41, ",queryStatus="

    .line 1912
    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1918
    const/16 v29, 0x0

    .line 1919
    const-string/jumbo v4, ""

    .line 1920
    const/16 v21, 0x14

    .line 1785
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_348

    .line 1693
    .end local v6    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v14    # "i":I
    .end local v17    # "it":I
    .end local v18    # "item":Lcom/android/internal/telephony/CallForwardInfo;
    .end local v20    # "n":I
    .end local v23    # "num_of_comparision":I
    .end local v24    # "num_of_expansion":I
    .end local v34    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_4d9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/mediatek/ims/MMTelSSTransport;->-get0(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v39

    if-eqz v39, :cond_546

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/mediatek/ims/MMTelSSTransport;->-get2(Lcom/mediatek/ims/MMTelSSTransport;)I

    move-result v39

    move/from16 v0, v26

    move/from16 v1, v39

    if-ne v0, v1, :cond_546

    .line 1694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/mediatek/ims/MMTelSSTransport;->-get1(Lcom/mediatek/ims/MMTelSSTransport;)J

    move-result-wide v40

    cmp-long v39, v12, v40

    if-ltz v39, :cond_546

    .line 1695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/mediatek/ims/MMTelSSTransport;->-get1(Lcom/mediatek/ims/MMTelSSTransport;)J

    move-result-wide v40

    sub-long v40, v12, v40

    const-wide/32 v42, 0x1d4c0

    cmp-long v39, v40, v42

    if-gez v39, :cond_546

    .line 1696
    const-string/jumbo v39, "MMTelSS"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "handleGetCF(): using mCdCache: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lcom/mediatek/ims/MMTelSSTransport;->-get0(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/mediatek/ims/MMTelSSTransport;->-get0(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v6

    .restart local v6    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    goto/16 :goto_2ba

    .line 1699
    .end local v6    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    :cond_546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move/from16 v1, v26

    invoke-static {v0, v1}, Lcom/mediatek/ims/MMTelSSTransport;->-wrap0(Lcom/mediatek/ims/MMTelSSTransport;I)Z

    move-result v39

    if-nez v39, :cond_5f0

    .line 1700
    const-string/jumbo v39, "MMTelSS"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "handleGetCF(): XcapRoot = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    new-instance v39, Ljava/net/UnknownHostException;

    invoke-direct/range {v39 .. v39}, Ljava/net/UnknownHostException;-><init>()V

    throw v39
    :try_end_582
    .catch Ljava/net/UnknownHostException; {:try_start_293 .. :try_end_582} :catch_87
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_293 .. :try_end_582} :catch_215
    .catch Ljava/lang/Exception; {:try_start_293 .. :try_end_582} :catch_582

    .line 1983
    .end local v12    # "curTime":J
    .end local v15    # "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    :catch_582
    move-exception v11

    .line 1984
    .local v11, "e":Ljava/lang/Exception;
    const-string/jumbo v39, "MMTelSS"

    const-string/jumbo v40, "handleGetCF():Start to Print Stack Trace"

    invoke-static/range {v39 .. v40}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    invoke-static/range {v39 .. v40}, Lcom/mediatek/ims/MMTelSSTransport;->-set0(Lcom/mediatek/ims/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationDiversion;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 1986
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v39, v0

    const/16 v40, -0x1

    invoke-static/range {v39 .. v40}, Lcom/mediatek/ims/MMTelSSTransport;->-set2(Lcom/mediatek/ims/MMTelSSTransport;I)I

    .line 1987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v39, v0

    const-wide/16 v40, 0x0

    invoke-static/range {v39 .. v41}, Lcom/mediatek/ims/MMTelSSTransport;->-set1(Lcom/mediatek/ims/MMTelSSTransport;J)J

    .line 1989
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 1995
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    move-object/from16 v39, v0

    if-eqz v39, :cond_832

    .line 1997
    const/16 v39, 0x2

    invoke-static/range {v39 .. v39}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v7

    .line 1998
    .local v7, "ce":Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-static {v0, v1, v7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1999
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/os/Message;->sendToTarget()V

    .line 2000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v39

    if-eqz v39, :cond_5ef

    .line 2001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 2003
    :cond_5ef
    return-void

    .line 1704
    .end local v7    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v12    # "curTime":J
    .restart local v15    # "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    :cond_5f0
    :try_start_5f0
    invoke-static {}, Lcom/mediatek/ims/MMTelSSTransport;->-get16()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/mediatek/ims/MMTelSSTransport;->-get9(Lcom/mediatek/ims/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v40

    const/16 v41, 0x1

    move-object/from16 v0, v39

    move/from16 v1, v41

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/simservs/client/SimServs;->getCommunicationDiversion(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v6

    .line 1705
    .restart local v6    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    invoke-static {v0, v6}, Lcom/mediatek/ims/MMTelSSTransport;->-set0(Lcom/mediatek/ims/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationDiversion;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 1706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move/from16 v1, v26

    invoke-static {v0, v1}, Lcom/mediatek/ims/MMTelSSTransport;->-set2(Lcom/mediatek/ims/MMTelSSTransport;I)I

    .line 1707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    invoke-static {v0, v12, v13}, Lcom/mediatek/ims/MMTelSSTransport;->-set1(Lcom/mediatek/ims/MMTelSSTransport;J)J

    .line 1708
    const-string/jumbo v39, "MMTelSS"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "handleGetCF(): new mCdCache = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lcom/mediatek/ims/MMTelSSTransport;->-get0(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 1709
    const-string/jumbo v41, ", curTime = "

    .line 1708
    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2ba

    .line 1730
    .restart local v33    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v34    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_660
    const-string/jumbo v39, "MMTelSS"

    const-string/jumbo v40, "No CF related rules in remote server"

    invoke-static/range {v39 .. v40}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2cf

    .line 1742
    .end local v33    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v24    # "num_of_expansion":I
    :cond_66b
    const/16 v39, 0x4

    move/from16 v0, v31

    move/from16 v1, v39

    if-ne v0, v1, :cond_2dd

    .line 1745
    const/16 v24, 0x5

    goto/16 :goto_2dd

    .line 1751
    .restart local v20    # "n":I
    :cond_677
    const/16 v39, 0x1

    move/from16 v0, v20

    move/from16 v1, v39

    if-ne v0, v1, :cond_683

    const/16 v31, 0x2

    goto/16 :goto_2f1

    .line 1752
    :cond_683
    const/16 v39, 0x2

    move/from16 v0, v20

    move/from16 v1, v39

    if-ne v0, v1, :cond_68f

    const/16 v31, 0x3

    goto/16 :goto_2f1

    .line 1753
    :cond_68f
    const/16 v39, 0x3

    move/from16 v0, v20

    move/from16 v1, v39

    if-ne v0, v1, :cond_69b

    const/16 v31, 0x6

    goto/16 :goto_2f1

    .line 1754
    :cond_69b
    const/16 v39, 0x4

    move/from16 v0, v20

    move/from16 v1, v39

    if-ne v0, v1, :cond_2f1

    const/16 v31, 0x0

    goto/16 :goto_2f1

    .line 1782
    .restart local v23    # "num_of_comparision":I
    :cond_6a7
    const/16 v23, 0x1

    goto/16 :goto_346

    .line 1812
    .restart local v5    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v10    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v14    # "i":I
    .restart local v17    # "it":I
    .restart local v19    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v30    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_6ab
    const-string/jumbo v39, "MMTelSS"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "handleGetCF():Empty cond (cond==null) for this rule="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_40f

    .line 1823
    .end local v19    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6cb
    if-eqz v10, :cond_437

    .line 1836
    :cond_6cd
    const/16 v39, 0x2

    move/from16 v0, v39

    if-ne v8, v0, :cond_716

    .line 1837
    const/16 v39, 0x1

    move/from16 v0, v31

    move/from16 v1, v39

    if-ne v0, v1, :cond_716

    .line 1838
    if-eqz v10, :cond_716

    invoke-virtual {v10}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v39

    if-eqz v39, :cond_716

    .line 1839
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v39

    if-nez v39, :cond_716

    .line 1840
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v36

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;II)Z

    move-result v39

    .line 1836
    if-eqz v39, :cond_716

    .line 1841
    const-string/jumbo v39, "MMTelSS"

    const-string/jumbo v40, "handleGetCF():CFB is enabled on server"

    invoke-static/range {v39 .. v40}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    const/16 v29, 0x1

    .line 1844
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v39

    if-eqz v39, :cond_710

    .line 1845
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lcom/mediatek/simservs/client/policy/ForwardTo;->getTarget()Ljava/lang/String;

    move-result-object v4

    .line 1847
    :cond_710
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getNoReplyTimer()I

    move-result v21

    goto/16 :goto_462

    .line 1850
    :cond_716
    const/16 v39, 0x2

    move/from16 v0, v39

    if-ne v8, v0, :cond_75f

    .line 1851
    const/16 v39, 0x2

    move/from16 v0, v31

    move/from16 v1, v39

    if-ne v0, v1, :cond_75f

    .line 1852
    if-eqz v10, :cond_75f

    invoke-virtual {v10}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v39

    if-eqz v39, :cond_75f

    .line 1853
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v39

    if-nez v39, :cond_75f

    .line 1854
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v36

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;II)Z

    move-result v39

    .line 1850
    if-eqz v39, :cond_75f

    .line 1855
    const-string/jumbo v39, "MMTelSS"

    const-string/jumbo v40, "handleGetCF():CFNoAnswer is enabled on server"

    invoke-static/range {v39 .. v40}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    const/16 v29, 0x1

    .line 1859
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v39

    if-eqz v39, :cond_759

    .line 1860
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lcom/mediatek/simservs/client/policy/ForwardTo;->getTarget()Ljava/lang/String;

    move-result-object v4

    .line 1862
    :cond_759
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getNoReplyTimer()I

    move-result v21

    goto/16 :goto_462

    .line 1865
    :cond_75f
    const/16 v39, 0x2

    move/from16 v0, v39

    if-ne v8, v0, :cond_7a8

    .line 1866
    const/16 v39, 0x3

    move/from16 v0, v31

    move/from16 v1, v39

    if-ne v0, v1, :cond_7a8

    .line 1867
    if-eqz v10, :cond_7a8

    invoke-virtual {v10}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v39

    if-eqz v39, :cond_7a8

    .line 1868
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v39

    if-nez v39, :cond_7a8

    .line 1869
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v36

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;II)Z

    move-result v39

    .line 1865
    if-eqz v39, :cond_7a8

    .line 1870
    const-string/jumbo v39, "MMTelSS"

    const-string/jumbo v40, "handleGetCF():CFNotReachable is enabled on server"

    invoke-static/range {v39 .. v40}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    const/16 v29, 0x1

    .line 1875
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v39

    if-eqz v39, :cond_7a2

    .line 1876
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lcom/mediatek/simservs/client/policy/ForwardTo;->getTarget()Ljava/lang/String;

    move-result-object v4

    .line 1878
    :cond_7a2
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getNoReplyTimer()I

    move-result v21

    goto/16 :goto_462

    .line 1881
    :cond_7a8
    const/16 v39, 0x2

    move/from16 v0, v39

    if-ne v8, v0, :cond_7f1

    .line 1882
    const/16 v39, 0x6

    move/from16 v0, v31

    move/from16 v1, v39

    if-ne v0, v1, :cond_7f1

    .line 1883
    if-eqz v10, :cond_7f1

    invoke-virtual {v10}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v39

    if-eqz v39, :cond_7f1

    .line 1884
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v39

    if-nez v39, :cond_7f1

    .line 1885
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v36

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;II)Z

    move-result v39

    .line 1881
    if-eqz v39, :cond_7f1

    .line 1886
    const-string/jumbo v39, "MMTelSS"

    const-string/jumbo v40, "handleGetCF():CFNotRegistered is enabled on server"

    invoke-static/range {v39 .. v40}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    const/16 v29, 0x1

    .line 1891
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v39

    if-eqz v39, :cond_7eb

    .line 1892
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lcom/mediatek/simservs/client/policy/ForwardTo;->getTarget()Ljava/lang/String;

    move-result-object v4

    .line 1894
    :cond_7eb
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getNoReplyTimer()I

    move-result v21

    goto/16 :goto_462

    .line 1899
    :cond_7f1
    const-string/jumbo v39, "MMTelSS"

    const-string/jumbo v40, "handleGetCF()from xcap:Not matched this rule!"

    invoke-static/range {v39 .. v40}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3a4

    .line 1748
    .end local v5    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v10    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v14    # "i":I
    .end local v30    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_7fe
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_2df

    .line 1931
    .end local v17    # "it":I
    .end local v23    # "num_of_comparision":I
    :cond_802
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v28

    .line 1933
    .local v28, "queriedSize":I
    move/from16 v0, v28

    new-array v15, v0, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 1934
    .local v15, "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    const/16 v16, 0x0

    .local v16, "inx":I
    :goto_80c
    move/from16 v0, v16

    move/from16 v1, v28

    if-ge v0, v1, :cond_832

    .line 1935
    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/android/internal/telephony/CallForwardInfo;

    aput-object v39, v15, v16

    .line 1934
    add-int/lit8 v16, v16, 0x1

    goto :goto_80c

    .line 1940
    .end local v16    # "inx":I
    .end local v20    # "n":I
    .end local v24    # "num_of_expansion":I
    .end local v28    # "queriedSize":I
    .local v15, "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    :cond_821
    const-string/jumbo v39, "MMTelSS"

    const-string/jumbo v40, "handleGetCF():get null ruleList"

    invoke-static/range {v39 .. v40}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    const/16 v39, 0x0

    move/from16 v0, v39

    new-array v15, v0, [Lcom/android/internal/telephony/CallForwardInfo;
    :try_end_830
    .catch Ljava/net/UnknownHostException; {:try_start_5f0 .. :try_end_830} :catch_87
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_5f0 .. :try_end_830} :catch_215
    .catch Ljava/lang/Exception; {:try_start_5f0 .. :try_end_830} :catch_582

    .line 1942
    .local v15, "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    const/16 v29, 0x0

    .line 2028
    .end local v6    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v12    # "curTime":J
    .end local v15    # "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v34    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_832
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    move-object/from16 v39, v0

    if-eqz v39, :cond_852

    .line 2039
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-static {v0, v15, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2040
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/os/Message;->sendToTarget()V

    .line 2043
    :cond_852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v39

    if-eqz v39, :cond_86b

    .line 2044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 1620
    :cond_86b
    return-void

    .line 1969
    .restart local v38    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_86c
    invoke-static/range {v26 .. v26}, Lcom/mediatek/ims/MMTelSSUtils;->isOp06IccCard(I)Z

    move-result v39

    if-eqz v39, :cond_8ae

    .line 1970
    invoke-virtual/range {v38 .. v38}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v39

    if-eqz v39, :cond_8ae

    .line 1971
    const-string/jumbo v39, "MMTelSS"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "handleGetCF(): OP06 with http Error: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 1972
    invoke-virtual/range {v38 .. v38}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v41

    .line 1971
    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    move-object/from16 v39, v0

    new-instance v40, Ljava/net/UnknownHostException;

    invoke-direct/range {v40 .. v40}, Ljava/net/UnknownHostException;-><init>()V

    const/16 v41, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, v41

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto/16 :goto_270

    .line 1975
    :cond_8ae
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    move-object/from16 v2, v38

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto/16 :goto_270
.end method

.method public handleGetCFInTimeSlot(Lcom/mediatek/ims/MMTelSSRequest;)V
    .registers 42
    .param p1, "rr"    # Lcom/mediatek/ims/MMTelSSRequest;

    .prologue
    .line 4832
    const/16 v27, -0x1

    .line 4833
    .local v27, "reqNo":I
    const/16 v30, -0x1

    .line 4834
    .local v30, "serialNo":I
    const/4 v13, 0x0

    .line 4836
    .local v13, "infos":[Lcom/android/internal/telephony/CallForwardInfoEx;
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 4838
    .local v22, "queriedCallForwardInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/CallForwardInfoEx;>;"
    const/16 v26, -0x1

    .line 4839
    .local v26, "reason":I
    const/16 v31, -0x1

    .line 4840
    .local v31, "serviceClass":I
    const/16 v20, -0x1

    .line 4841
    .local v20, "orgServiceClass":I
    const-string/jumbo v7, ""

    .line 4842
    .local v7, "cfPhoneNum":Ljava/lang/String;
    const/16 v24, 0x0

    .line 4843
    .local v24, "queryStatus":I
    const/16 v18, 0x14

    .line 4844
    .local v18, "noReplyTimer":I
    const/16 v32, 0x0

    .line 4845
    .local v32, "timeSlot":[J
    const/16 v21, 0x0

    .line 4848
    .local v21, "phoneId":I
    :try_start_1b
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 4849
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 4850
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/os/Parcel;->readInt()I

    move-result v30

    .line 4851
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 4852
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 4853
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 4854
    move/from16 v20, v31

    .line 4856
    const-string/jumbo v35, "MMTelSS"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "Read from CF parcel: req = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-static/range {v27 .. v27}, Lcom/mediatek/ims/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 4857
    const-string/jumbo v37, ", reason = "

    .line 4856
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 4857
    const-string/jumbo v37, ", serviceClass = "

    .line 4856
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4859
    invoke-static/range {v21 .. v21}, Lcom/mediatek/ims/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v35

    if-nez v35, :cond_109

    .line 4860
    const-string/jumbo v35, "MMTelSS"

    const-string/jumbo v36, "handleGetCFInTimeSlot(): !isPreferXcap()"

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4861
    new-instance v35, Ljava/net/UnknownHostException;

    invoke-direct/range {v35 .. v35}, Ljava/net/UnknownHostException;-><init>()V

    throw v35
    :try_end_ab
    .catch Ljava/net/UnknownHostException; {:try_start_1b .. :try_end_ab} :catch_ab
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_1b .. :try_end_ab} :catch_1e3
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_ab} :catch_510

    .line 5028
    .end local v13    # "infos":[Lcom/android/internal/telephony/CallForwardInfoEx;
    .end local v32    # "timeSlot":[J
    :catch_ab
    move-exception v33

    .line 5029
    .local v33, "unknownHostException":Ljava/net/UnknownHostException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-static/range {v35 .. v36}, Lcom/mediatek/ims/MMTelSSTransport;->-set0(Lcom/mediatek/ims/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationDiversion;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 5030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v35, v0

    const/16 v36, -0x1

    invoke-static/range {v35 .. v36}, Lcom/mediatek/ims/MMTelSSTransport;->-set2(Lcom/mediatek/ims/MMTelSSTransport;I)I

    .line 5031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v35, v0

    const-wide/16 v36, 0x0

    invoke-static/range {v35 .. v37}, Lcom/mediatek/ims/MMTelSSTransport;->-set1(Lcom/mediatek/ims/MMTelSSTransport;J)J

    .line 5033
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    move-object/from16 v35, v0

    if-eqz v35, :cond_657

    .line 5034
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 5035
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/os/Message;->sendToTarget()V

    .line 5036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v35

    if-eqz v35, :cond_108

    .line 5037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 5039
    :cond_108
    return-void

    .line 4865
    .end local v33    # "unknownHostException":Ljava/net/UnknownHostException;
    .restart local v13    # "infos":[Lcom/android/internal/telephony/CallForwardInfoEx;
    .restart local v32    # "timeSlot":[J
    :cond_109
    :try_start_109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 4866
    .local v10, "curTime":J
    const-string/jumbo v35, "MMTelSS"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "handleGetCFInTimeSlot(): mCdCache = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/mediatek/ims/MMTelSSTransport;->-get0(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, ", curTime = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 4867
    const-string/jumbo v37, ", mCdCacheLastQueried = "

    .line 4866
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 4867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/mediatek/ims/MMTelSSTransport;->-get1(Lcom/mediatek/ims/MMTelSSTransport;)J

    move-result-wide v38

    .line 4866
    move-object/from16 v0, v36

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/mediatek/ims/MMTelSSTransport;->-get0(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v35

    if-eqz v35, :cond_467

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/mediatek/ims/MMTelSSTransport;->-get2(Lcom/mediatek/ims/MMTelSSTransport;)I

    move-result v35

    move/from16 v0, v21

    move/from16 v1, v35

    if-ne v0, v1, :cond_467

    .line 4869
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/mediatek/ims/MMTelSSTransport;->-get0(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/mediatek/simservs/client/CommunicationDiversion;->isSupportEtag()Z

    move-result v35

    .line 4868
    if-eqz v35, :cond_467

    .line 4870
    const-string/jumbo v35, "MMTelSS"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "handleGetCFInTimeSlot(): using ETAG mCdCache: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/mediatek/ims/MMTelSSTransport;->-get0(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/mediatek/ims/MMTelSSTransport;->-wrap0(Lcom/mediatek/ims/MMTelSSTransport;I)Z

    move-result v35

    if-nez v35, :cond_261

    .line 4873
    const-string/jumbo v35, "MMTelSS"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "handleGetCFInTimeSlot(): XcapRoot = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4874
    new-instance v35, Ljava/net/UnknownHostException;

    invoke-direct/range {v35 .. v35}, Ljava/net/UnknownHostException;-><init>()V

    throw v35
    :try_end_1e3
    .catch Ljava/net/UnknownHostException; {:try_start_109 .. :try_end_1e3} :catch_ab
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_109 .. :try_end_1e3} :catch_1e3
    .catch Ljava/lang/Exception; {:try_start_109 .. :try_end_1e3} :catch_510

    .line 5041
    .end local v10    # "curTime":J
    .end local v13    # "infos":[Lcom/android/internal/telephony/CallForwardInfoEx;
    .end local v32    # "timeSlot":[J
    :catch_1e3
    move-exception v34

    .line 5042
    .local v34, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    const-string/jumbo v35, "MMTelSS"

    const-string/jumbo v36, "handleGetCFInTimeSlot(): XcapException"

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-static/range {v35 .. v36}, Lcom/mediatek/ims/MMTelSSTransport;->-set0(Lcom/mediatek/ims/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationDiversion;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 5044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v35, v0

    const/16 v36, -0x1

    invoke-static/range {v35 .. v36}, Lcom/mediatek/ims/MMTelSSTransport;->-set2(Lcom/mediatek/ims/MMTelSSTransport;I)I

    .line 5045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v35, v0

    const-wide/16 v36, 0x0

    invoke-static/range {v35 .. v37}, Lcom/mediatek/ims/MMTelSSTransport;->-set1(Lcom/mediatek/ims/MMTelSSTransport;J)J

    .line 5047
    invoke-virtual/range {v34 .. v34}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 5048
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    move-object/from16 v35, v0

    if-eqz v35, :cond_657

    .line 5049
    invoke-virtual/range {v34 .. v34}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v35

    if-eqz v35, :cond_691

    .line 5050
    const-string/jumbo v35, "MMTelSS"

    const-string/jumbo v36, "handleGetCFInTimeSlot(): isConnectionError()"

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5051
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    move-object/from16 v35, v0

    new-instance v36, Ljava/net/UnknownHostException;

    invoke-direct/range {v36 .. v36}, Ljava/net/UnknownHostException;-><init>()V

    const/16 v37, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    move-object/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 5060
    :goto_23e
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/os/Message;->sendToTarget()V

    .line 5061
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v35

    if-eqz v35, :cond_260

    .line 5062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 5064
    :cond_260
    return-void

    .line 4876
    .end local v34    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    .restart local v10    # "curTime":J
    .restart local v13    # "infos":[Lcom/android/internal/telephony/CallForwardInfoEx;
    .restart local v32    # "timeSlot":[J
    :cond_261
    :try_start_261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/mediatek/ims/MMTelSSTransport;->-get0(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v5

    .line 4877
    .local v5, "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/mediatek/ims/MMTelSSTransport;->-get9(Lcom/mediatek/ims/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Lcom/mediatek/simservs/client/CommunicationDiversion;->setNetwork(Landroid/net/Network;)V

    .line 4878
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/CommunicationDiversion;->refresh()V

    .line 4879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-static {v0, v10, v11}, Lcom/mediatek/ims/MMTelSSTransport;->-set1(Lcom/mediatek/ims/MMTelSSTransport;J)J

    .line 4899
    :goto_288
    const-string/jumbo v35, "MMTelSS"

    const-string/jumbo v36, "handleGetCFInTimeSlot(): GetRuleSet from cd"

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4901
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v29

    .line 4904
    .local v29, "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v28, 0x0

    .line 4906
    .local v28, "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    if-eqz v29, :cond_5ee

    .line 4907
    invoke-virtual/range {v29 .. v29}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v28

    .line 4914
    .end local v28    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :goto_29d
    if-eqz v28, :cond_646

    .line 4916
    const/16 v35, 0x210

    move/from16 v0, v20

    move/from16 v1, v35

    if-ne v0, v1, :cond_2a9

    .line 4918
    const/16 v31, 0x200

    .line 4921
    :cond_2a9
    const/16 v19, 0x0

    .line 4923
    .local v19, "numOfComparision":I
    if-nez v20, :cond_5f9

    .line 4924
    const/16 v31, 0x1

    .line 4927
    const/16 v19, 0x2

    .line 4928
    const-string/jumbo v35, "MMTelSS"

    const-string/jumbo v36, "serviceClass == 0, try to 1st match by using SERVICE_CLASS_VOICE"

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4936
    :goto_2ba
    const/4 v15, 0x0

    .local v15, "it":I
    :goto_2bb
    move/from16 v0, v19

    if-ge v15, v0, :cond_62c

    .line 4937
    const/16 v35, 0x1

    move/from16 v0, v35

    if-ne v15, v0, :cond_2d8

    const/16 v35, 0x1

    move/from16 v0, v31

    move/from16 v1, v35

    if-ne v0, v1, :cond_2d8

    .line 4939
    const/16 v31, 0x200

    .line 4940
    const-string/jumbo v35, "MMTelSS"

    const-string/jumbo v36, "serviceClass == 0, try to 2nd match by using SERVICE_CLASS_VIDEO"

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4944
    :cond_2d8
    const-string/jumbo v35, "MMTelSS"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "numOfComparision = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 4945
    const-string/jumbo v37, ": with round = "

    .line 4944
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 4945
    add-int/lit8 v37, v15, 0x1

    .line 4944
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 4946
    const-string/jumbo v37, ", with service class = "

    .line 4944
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4949
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_313
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v35

    move/from16 v0, v35

    if-ge v12, v0, :cond_3d9

    .line 4950
    move-object/from16 v0, v28

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/mediatek/simservs/client/policy/Rule;

    .line 4951
    .local v25, "r":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual/range {v25 .. v25}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v8

    .line 4952
    .local v8, "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual/range {v25 .. v25}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v4

    .line 4953
    .local v4, "action":Lcom/mediatek/simservs/client/policy/Actions;
    const/16 v17, 0x0

    .line 4955
    .local v17, "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v8, :cond_5fd

    .line 4956
    const-string/jumbo v35, "MMTelSS"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "handleGetCFInTimeSlot(): busy = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 4957
    invoke-virtual {v8}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v37

    .line 4956
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 4958
    const-string/jumbo v37, ", NoAnswer = "

    .line 4956
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 4958
    invoke-virtual {v8}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v37

    .line 4956
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 4959
    const-string/jumbo v37, ", NoReachable = "

    .line 4956
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 4959
    invoke-virtual {v8}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v37

    .line 4956
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 4960
    const-string/jumbo v37, ", NotRegistered = "

    .line 4956
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 4960
    invoke-virtual {v8}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v37

    .line 4956
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4961
    invoke-virtual {v8}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v17

    .line 4967
    .end local v17    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_37e
    if-nez v26, :cond_61f

    .line 4968
    if-eqz v8, :cond_61d

    invoke-virtual {v8}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v35

    if-nez v35, :cond_61d

    .line 4969
    invoke-virtual {v8}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v35

    if-nez v35, :cond_61d

    .line 4970
    invoke-virtual {v8}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v35

    if-nez v35, :cond_61d

    .line 4971
    invoke-virtual {v8}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v35

    if-nez v35, :cond_61d

    .line 4972
    invoke-virtual {v8}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v35

    if-nez v35, :cond_61d

    .line 4973
    :cond_3a0
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v31

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;II)Z

    move-result v35

    .line 4967
    if-eqz v35, :cond_61f

    .line 4974
    const-string/jumbo v35, "MMTelSS"

    const-string/jumbo v36, "handleGetCFInTimeSlot(): CFU is enabled on server"

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4977
    const/16 v24, 0x1

    .line 4978
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v35

    if-eqz v35, :cond_3c7

    .line 4979
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/mediatek/simservs/client/policy/ForwardTo;->getTarget()Ljava/lang/String;

    move-result-object v7

    .line 4983
    :cond_3c7
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getNoReplyTimer()I

    move-result v18

    .line 4984
    if-eqz v8, :cond_3d9

    .line 4985
    invoke-virtual {v8}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendTime()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->convertToLocalTime(Ljava/lang/String;)[J

    move-result-object v32

    .line 4993
    .end local v4    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v8    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v25    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v32    # "timeSlot":[J
    :cond_3d9
    new-instance v16, Lcom/android/internal/telephony/CallForwardInfoEx;

    invoke-direct/range {v16 .. v16}, Lcom/android/internal/telephony/CallForwardInfoEx;-><init>()V

    .line 4994
    .local v16, "item":Lcom/android/internal/telephony/CallForwardInfoEx;
    move/from16 v0, v24

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/internal/telephony/CallForwardInfoEx;->status:I

    .line 4995
    move/from16 v0, v26

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/internal/telephony/CallForwardInfoEx;->reason:I

    .line 4996
    move/from16 v0, v31

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/internal/telephony/CallForwardInfoEx;->serviceClass:I

    .line 4997
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/internal/telephony/CallForwardInfoEx;->toa:I

    .line 4998
    move-object/from16 v0, v16

    iput-object v7, v0, Lcom/android/internal/telephony/CallForwardInfoEx;->number:Ljava/lang/String;

    .line 4999
    move/from16 v0, v18

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/internal/telephony/CallForwardInfoEx;->timeSeconds:I

    .line 5000
    move-object/from16 v0, v32

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/internal/telephony/CallForwardInfoEx;->timeSlot:[J

    .line 5001
    const-string/jumbo v35, "MMTelSS"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "handleGetCFInTimeSlot(): add one record with reason = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 5003
    const-string/jumbo v37, ", serviceClass = "

    .line 5001
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 5004
    const-string/jumbo v37, ", queryStatus = "

    .line 5001
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 5005
    const-string/jumbo v37, ", timeSlot = "

    .line 5001
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 5005
    invoke-static/range {v32 .. v32}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v37

    .line 5001
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5006
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5009
    const/16 v24, 0x0

    .line 5010
    const-string/jumbo v7, ""

    .line 5011
    const/16 v18, 0x14

    .line 5012
    const/16 v32, 0x0

    .line 4936
    .restart local v32    # "timeSlot":[J
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2bb

    .line 4880
    .end local v5    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v12    # "i":I
    .end local v15    # "it":I
    .end local v16    # "item":Lcom/android/internal/telephony/CallForwardInfoEx;
    .end local v19    # "numOfComparision":I
    .end local v29    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/mediatek/ims/MMTelSSTransport;->-get0(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v35

    if-eqz v35, :cond_4d4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/mediatek/ims/MMTelSSTransport;->-get2(Lcom/mediatek/ims/MMTelSSTransport;)I

    move-result v35

    move/from16 v0, v21

    move/from16 v1, v35

    if-ne v0, v1, :cond_4d4

    .line 4881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/mediatek/ims/MMTelSSTransport;->-get1(Lcom/mediatek/ims/MMTelSSTransport;)J

    move-result-wide v36

    cmp-long v35, v10, v36

    if-ltz v35, :cond_4d4

    .line 4882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/mediatek/ims/MMTelSSTransport;->-get1(Lcom/mediatek/ims/MMTelSSTransport;)J

    move-result-wide v36

    sub-long v36, v10, v36

    const-wide/32 v38, 0x1d4c0

    cmp-long v35, v36, v38

    if-gez v35, :cond_4d4

    .line 4883
    const-string/jumbo v35, "MMTelSS"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "handleGetCFInTimeSlot(): using mCdCache: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/mediatek/ims/MMTelSSTransport;->-get0(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/mediatek/ims/MMTelSSTransport;->-get0(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v5

    .restart local v5    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    goto/16 :goto_288

    .line 4886
    .end local v5    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    :cond_4d4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/mediatek/ims/MMTelSSTransport;->-wrap0(Lcom/mediatek/ims/MMTelSSTransport;I)Z

    move-result v35

    if-nez v35, :cond_57e

    .line 4887
    const-string/jumbo v35, "MMTelSS"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "handleGetCFInTimeSlot(): XcapRoot = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4888
    new-instance v35, Ljava/net/UnknownHostException;

    invoke-direct/range {v35 .. v35}, Ljava/net/UnknownHostException;-><init>()V

    throw v35
    :try_end_510
    .catch Ljava/net/UnknownHostException; {:try_start_261 .. :try_end_510} :catch_ab
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_261 .. :try_end_510} :catch_1e3
    .catch Ljava/lang/Exception; {:try_start_261 .. :try_end_510} :catch_510

    .line 5066
    .end local v10    # "curTime":J
    .end local v13    # "infos":[Lcom/android/internal/telephony/CallForwardInfoEx;
    .end local v32    # "timeSlot":[J
    :catch_510
    move-exception v9

    .line 5067
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v35, "MMTelSS"

    const-string/jumbo v36, "handleGetCFInTimeSlot(): Start to Print Stack Trace"

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-static/range {v35 .. v36}, Lcom/mediatek/ims/MMTelSSTransport;->-set0(Lcom/mediatek/ims/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationDiversion;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 5069
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v35, v0

    const/16 v36, -0x1

    invoke-static/range {v35 .. v36}, Lcom/mediatek/ims/MMTelSSTransport;->-set2(Lcom/mediatek/ims/MMTelSSTransport;I)I

    .line 5070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v35, v0

    const-wide/16 v36, 0x0

    invoke-static/range {v35 .. v37}, Lcom/mediatek/ims/MMTelSSTransport;->-set1(Lcom/mediatek/ims/MMTelSSTransport;J)J

    .line 5072
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 5073
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    move-object/from16 v35, v0

    if-eqz v35, :cond_657

    .line 5075
    const/16 v35, 0x2

    invoke-static/range {v35 .. v35}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v6

    .line 5076
    .local v6, "ce":Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-static {v0, v1, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 5077
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/os/Message;->sendToTarget()V

    .line 5078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v35

    if-eqz v35, :cond_57d

    .line 5079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 5081
    :cond_57d
    return-void

    .line 4891
    .end local v6    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v10    # "curTime":J
    .restart local v13    # "infos":[Lcom/android/internal/telephony/CallForwardInfoEx;
    .restart local v32    # "timeSlot":[J
    :cond_57e
    :try_start_57e
    invoke-static {}, Lcom/mediatek/ims/MMTelSSTransport;->-get16()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/mediatek/ims/MMTelSSTransport;->-get9(Lcom/mediatek/ims/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v36

    const/16 v37, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v37

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/simservs/client/SimServs;->getCommunicationDiversion(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v5

    .line 4892
    .restart local v5    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-static {v0, v5}, Lcom/mediatek/ims/MMTelSSTransport;->-set0(Lcom/mediatek/ims/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationDiversion;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 4893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/mediatek/ims/MMTelSSTransport;->-set2(Lcom/mediatek/ims/MMTelSSTransport;I)I

    .line 4894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-static {v0, v10, v11}, Lcom/mediatek/ims/MMTelSSTransport;->-set1(Lcom/mediatek/ims/MMTelSSTransport;J)J

    .line 4895
    const-string/jumbo v35, "MMTelSS"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "handleGetCFInTimeSlot(): new mCdCache = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/mediatek/ims/MMTelSSTransport;->-get0(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 4896
    const-string/jumbo v37, ", curTime = "

    .line 4895
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_288

    .line 4909
    .restart local v28    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v29    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_5ee
    const-string/jumbo v35, "MMTelSS"

    const-string/jumbo v36, "No CF related rules in remote server"

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_29d

    .line 4933
    .end local v28    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v19    # "numOfComparision":I
    :cond_5f9
    const/16 v19, 0x1

    goto/16 :goto_2ba

    .line 4963
    .restart local v4    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v8    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v12    # "i":I
    .restart local v15    # "it":I
    .restart local v17    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v25    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_5fd
    const-string/jumbo v35, "MMTelSS"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "handleGetCFInTimeSlot(): Empty cond (cond==null) for this rule="

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_37e

    .line 4972
    .end local v17    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_61d
    if-eqz v8, :cond_3a0

    .line 4989
    :cond_61f
    const-string/jumbo v35, "MMTelSS"

    const-string/jumbo v36, "handleGetCFInTimeSlot()from xcap: Not matched this rule!"

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4949
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_313

    .line 5016
    .end local v4    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v8    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v12    # "i":I
    .end local v25    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_62c
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 5018
    .local v23, "queriedSize":I
    move/from16 v0, v23

    new-array v13, v0, [Lcom/android/internal/telephony/CallForwardInfoEx;

    .line 5019
    .local v13, "infos":[Lcom/android/internal/telephony/CallForwardInfoEx;
    const/4 v14, 0x0

    .local v14, "inx":I
    :goto_635
    move/from16 v0, v23

    if-ge v14, v0, :cond_657

    .line 5020
    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/internal/telephony/CallForwardInfoEx;

    aput-object v35, v13, v14

    .line 5019
    add-int/lit8 v14, v14, 0x1

    goto :goto_635

    .line 5024
    .end local v14    # "inx":I
    .end local v15    # "it":I
    .end local v19    # "numOfComparision":I
    .end local v23    # "queriedSize":I
    .local v13, "infos":[Lcom/android/internal/telephony/CallForwardInfoEx;
    :cond_646
    const-string/jumbo v35, "MMTelSS"

    const-string/jumbo v36, "handleGetCFInTimeSlot():get null ruleList"

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5025
    const/16 v35, 0x0

    move/from16 v0, v35

    new-array v13, v0, [Lcom/android/internal/telephony/CallForwardInfoEx;
    :try_end_655
    .catch Ljava/net/UnknownHostException; {:try_start_57e .. :try_end_655} :catch_ab
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_57e .. :try_end_655} :catch_1e3
    .catch Ljava/lang/Exception; {:try_start_57e .. :try_end_655} :catch_510

    .line 5026
    .local v13, "infos":[Lcom/android/internal/telephony/CallForwardInfoEx;
    const/16 v24, 0x0

    .line 5085
    .end local v5    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v10    # "curTime":J
    .end local v13    # "infos":[Lcom/android/internal/telephony/CallForwardInfoEx;
    .end local v29    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v32    # "timeSlot":[J
    :cond_657
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    move-object/from16 v35, v0

    if-eqz v35, :cond_677

    .line 5086
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-static {v0, v13, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 5087
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/os/Message;->sendToTarget()V

    .line 5089
    :cond_677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v35

    if-eqz v35, :cond_690

    .line 5090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 4831
    :cond_690
    return-void

    .line 5052
    .restart local v34    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_691
    invoke-static/range {v21 .. v21}, Lcom/mediatek/ims/MMTelSSUtils;->isOp06IccCard(I)Z

    move-result v35

    if-eqz v35, :cond_6d3

    .line 5053
    invoke-virtual/range {v34 .. v34}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v35

    if-eqz v35, :cond_6d3

    .line 5054
    const-string/jumbo v35, "MMTelSS"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "handleGetCFInTimeSlot(): OP06 with http Error: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 5055
    invoke-virtual/range {v34 .. v34}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v37

    .line 5054
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5056
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    move-object/from16 v35, v0

    new-instance v36, Ljava/net/UnknownHostException;

    invoke-direct/range {v36 .. v36}, Ljava/net/UnknownHostException;-><init>()V

    const/16 v37, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    move-object/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto/16 :goto_23e

    .line 5058
    :cond_6d3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto/16 :goto_23e
.end method

.method public handleGetCLIP(Lcom/mediatek/ims/MMTelSSRequest;)V
    .registers 14
    .param p1, "rr"    # Lcom/mediatek/ims/MMTelSSRequest;

    .prologue
    .line 761
    const/4 v6, -0x1

    .line 762
    .local v6, "reqNo":I
    const/4 v7, -0x1

    .line 763
    .local v7, "serialNo":I
    const/4 v3, 0x0

    .line 764
    .local v3, "get_clip_result":I
    iget-object v9, p1, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 766
    .local v5, "phoneId":I
    invoke-static {v5}, Lcom/mediatek/ims/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v9

    if-nez v9, :cond_2d

    .line 767
    const-string/jumbo v9, "MMTelSS"

    const-string/jumbo v10, "handleGetCLIP(): !isPreferXcap()"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    iget-object v9, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v9, :cond_2c

    .line 769
    iget-object v9, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    new-instance v10, Ljava/net/UnknownHostException;

    invoke-direct {v10}, Ljava/net/UnknownHostException;-><init>()V

    const/4 v11, 0x0

    invoke-static {v9, v11, v10}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 770
    iget-object v9, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    .line 772
    :cond_2c
    return-void

    .line 776
    :cond_2d
    :try_start_2d
    iget-object v9, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v9, v5}, Lcom/mediatek/ims/MMTelSSTransport;->-wrap0(Lcom/mediatek/ims/MMTelSSTransport;I)Z

    move-result v9

    if-nez v9, :cond_68

    .line 777
    const-string/jumbo v9, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "handleGetCLIP(): XcapRoot = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    iget-object v11, v11, Lcom/mediatek/ims/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    iget-object v9, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v9, :cond_67

    .line 779
    iget-object v9, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    new-instance v10, Ljava/net/UnknownHostException;

    invoke-direct {v10}, Ljava/net/UnknownHostException;-><init>()V

    const/4 v11, 0x0

    invoke-static {v9, v11, v10}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 780
    iget-object v9, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    .line 782
    :cond_67
    return-void

    .line 786
    :cond_68
    invoke-static {}, Lcom/mediatek/ims/MMTelSSTransport;->-get16()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v10}, Lcom/mediatek/ims/MMTelSSTransport;->-get9(Lcom/mediatek/ims/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v9, v11, v10}, Lcom/mediatek/simservs/client/SimServs;->getOriginatingIdentityPresentation(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;

    move-result-object v4

    .line 787
    .local v4, "oip":Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    const-string/jumbo v9, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "handleGetCLIP():active="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;->isActive()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;->isActive()Z
    :try_end_98
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_2d .. :try_end_98} :catch_f8
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_98} :catch_c5

    move-result v9

    if-eqz v9, :cond_c3

    .line 789
    const/4 v3, 0x1

    .line 831
    .end local v4    # "oip":Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    :cond_9c
    :goto_9c
    iget-object v9, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v9, :cond_b1

    .line 832
    const/4 v9, 0x1

    new-array v2, v9, [I

    .line 833
    .local v2, "get_clip_response":[I
    const/4 v9, 0x0

    aput v3, v2, v9

    .line 834
    iget-object v9, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v10, 0x0

    invoke-static {v9, v2, v10}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 835
    iget-object v9, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    .line 838
    .end local v2    # "get_clip_response":[I
    :cond_b1
    iget-object v9, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v9}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v9

    if-eqz v9, :cond_c2

    .line 839
    iget-object v9, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v9}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 759
    :cond_c2
    return-void

    .line 791
    .restart local v4    # "oip":Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    :cond_c3
    const/4 v3, 0x0

    goto :goto_9c

    .line 815
    .end local v4    # "oip":Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    :catch_c5
    move-exception v1

    .line 816
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "MMTelSS"

    const-string/jumbo v10, "handleGetCLIP():Start to Print Stack Trace"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 818
    iget-object v9, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v9, :cond_9c

    .line 820
    const/4 v9, 0x2

    invoke-static {v9}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 821
    .local v0, "ce":Lcom/android/internal/telephony/CommandException;
    iget-object v9, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v10, 0x0

    invoke-static {v9, v10, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 822
    iget-object v9, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    .line 823
    iget-object v9, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v9}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v9

    if-eqz v9, :cond_f7

    .line 824
    iget-object v9, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v9}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 826
    :cond_f7
    return-void

    .line 794
    .end local v0    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_f8
    move-exception v8

    .line 795
    .local v8, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    const-string/jumbo v9, "MMTelSS"

    const-string/jumbo v10, "handleGetCLIP(): XcapException"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    invoke-virtual {v8}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 797
    iget-object v9, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v9, :cond_9c

    .line 798
    invoke-virtual {v8}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v9

    if-eqz v9, :cond_13a

    .line 799
    const-string/jumbo v9, "MMTelSS"

    const-string/jumbo v10, "handleGetCLIP(): xcapException.isConnectionError()"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    iget-object v9, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    new-instance v10, Ljava/net/UnknownHostException;

    invoke-direct {v10}, Ljava/net/UnknownHostException;-><init>()V

    const/4 v11, 0x0

    invoke-static {v9, v11, v10}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 809
    :goto_123
    iget-object v9, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    .line 810
    iget-object v9, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v9}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v9

    if-eqz v9, :cond_139

    .line 811
    iget-object v9, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v9}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 813
    :cond_139
    return-void

    .line 801
    :cond_13a
    invoke-static {v5}, Lcom/mediatek/ims/MMTelSSUtils;->isOp06IccCard(I)Z

    move-result v9

    if-eqz v9, :cond_170

    .line 802
    invoke-virtual {v8}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v9

    if-eqz v9, :cond_170

    .line 803
    const-string/jumbo v9, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "handleGetCLIP(): OP06 with http Error: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 804
    invoke-virtual {v8}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v11

    .line 803
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    iget-object v9, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    new-instance v10, Ljava/net/UnknownHostException;

    invoke-direct {v10}, Ljava/net/UnknownHostException;-><init>()V

    const/4 v11, 0x0

    invoke-static {v9, v11, v10}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_123

    .line 807
    :cond_170
    iget-object v9, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v10, 0x0

    invoke-static {v9, v10, v8}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_123
.end method

.method public handleGetCLIR(Lcom/mediatek/ims/MMTelSSRequest;)V
    .registers 20
    .param p1, "rr"    # Lcom/mediatek/ims/MMTelSSRequest;

    .prologue
    .line 622
    const/4 v10, 0x1

    .line 623
    .local v10, "presentation_mode":I
    const/4 v7, 0x0

    .line 624
    .local v7, "get_clir_result":I
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 626
    .local v9, "phoneId":I
    invoke-static {v9}, Lcom/mediatek/ims/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v13

    if-nez v13, :cond_34

    .line 627
    const-string/jumbo v13, "MMTelSS"

    const-string/jumbo v14, "handleGetCLIR(): !isPreferXcap()"

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v13, :cond_33

    .line 629
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    new-instance v14, Ljava/net/UnknownHostException;

    invoke-direct {v14}, Ljava/net/UnknownHostException;-><init>()V

    const/4 v15, 0x0

    invoke-static {v13, v15, v14}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 630
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v13}, Landroid/os/Message;->sendToTarget()V

    .line 632
    :cond_33
    return-void

    .line 638
    :cond_34
    :try_start_34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 639
    .local v4, "curTime":J
    const-string/jumbo v13, "MMTelSS"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "handleGetCLIR(): mOirCache = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v15}, Lcom/mediatek/ims/MMTelSSTransport;->-get13(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", curTime = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 640
    const-string/jumbo v15, ", mOirCacheLastQueried = "

    .line 639
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 640
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v15}, Lcom/mediatek/ims/MMTelSSTransport;->-get14(Lcom/mediatek/ims/MMTelSSTransport;)J

    move-result-wide v16

    .line 639
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v13}, Lcom/mediatek/ims/MMTelSSTransport;->-get13(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v13

    if-eqz v13, :cond_15c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v13}, Lcom/mediatek/ims/MMTelSSTransport;->-get15(Lcom/mediatek/ims/MMTelSSTransport;)I

    move-result v13

    if-ne v9, v13, :cond_15c

    .line 642
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v13}, Lcom/mediatek/ims/MMTelSSTransport;->-get13(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v13

    invoke-virtual {v13}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->isSupportEtag()Z

    move-result v13

    .line 641
    if-eqz v13, :cond_15c

    .line 643
    const-string/jumbo v13, "MMTelSS"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "handleGetCLIR(): using ETAG mOirCache: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v15}, Lcom/mediatek/ims/MMTelSSTransport;->-get13(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v13, v9}, Lcom/mediatek/ims/MMTelSSTransport;->-wrap0(Lcom/mediatek/ims/MMTelSSTransport;I)Z

    move-result v13

    if-nez v13, :cond_103

    .line 646
    const-string/jumbo v13, "MMTelSS"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "handleGetCLIR(): XcapRoot = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    iget-object v15, v15, Lcom/mediatek/ims/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v13, :cond_102

    .line 648
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    new-instance v14, Ljava/net/UnknownHostException;

    invoke-direct {v14}, Ljava/net/UnknownHostException;-><init>()V

    const/4 v15, 0x0

    invoke-static {v13, v15, v14}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 649
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v13}, Landroid/os/Message;->sendToTarget()V

    .line 651
    :cond_102
    return-void

    .line 654
    :cond_103
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v13}, Lcom/mediatek/ims/MMTelSSTransport;->-get13(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v8

    .line 655
    .local v8, "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v13}, Lcom/mediatek/ims/MMTelSSTransport;->-get9(Lcom/mediatek/ims/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->setNetwork(Landroid/net/Network;)V

    .line 656
    invoke-virtual {v8}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->refresh()V

    .line 657
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v13, v4, v5}, Lcom/mediatek/ims/MMTelSSTransport;->-set13(Lcom/mediatek/ims/MMTelSSTransport;J)J

    .line 681
    :goto_120
    invoke-virtual {v8}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->isDefaultPresentationRestricted()Z
    :try_end_123
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_34 .. :try_end_123} :catch_253
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_123} :catch_2bc

    move-result v11

    .line 682
    .local v11, "restricted":Z
    if-eqz v11, :cond_2b8

    .line 684
    const/4 v10, 0x3

    .line 685
    const/4 v7, 0x1

    .line 743
    .end local v4    # "curTime":J
    .end local v8    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    .end local v11    # "restricted":Z
    :cond_128
    :goto_128
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v13, :cond_146

    .line 744
    const/4 v13, 0x2

    new-array v6, v13, [I

    .line 745
    .local v6, "get_clir_response":[I
    const/4 v13, 0x0

    aput v7, v6, v13

    .line 746
    const/4 v13, 0x1

    aput v10, v6, v13

    .line 750
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v14, 0x0

    invoke-static {v13, v6, v14}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 751
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v13}, Landroid/os/Message;->sendToTarget()V

    .line 754
    .end local v6    # "get_clir_response":[I
    :cond_146
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v13}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v13

    if-eqz v13, :cond_15b

    .line 755
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v13}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 618
    :cond_15b
    return-void

    .line 658
    .restart local v4    # "curTime":J
    :cond_15c
    :try_start_15c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v13}, Lcom/mediatek/ims/MMTelSSTransport;->-get13(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v13

    if-eqz v13, :cond_1b9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v13}, Lcom/mediatek/ims/MMTelSSTransport;->-get15(Lcom/mediatek/ims/MMTelSSTransport;)I

    move-result v13

    if-ne v9, v13, :cond_1b9

    .line 659
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v13}, Lcom/mediatek/ims/MMTelSSTransport;->-get14(Lcom/mediatek/ims/MMTelSSTransport;)J

    move-result-wide v14

    cmp-long v13, v4, v14

    if-ltz v13, :cond_1b9

    .line 660
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v13}, Lcom/mediatek/ims/MMTelSSTransport;->-get14(Lcom/mediatek/ims/MMTelSSTransport;)J

    move-result-wide v14

    sub-long v14, v4, v14

    const-wide/32 v16, 0x1d4c0

    cmp-long v13, v14, v16

    if-gez v13, :cond_1b9

    .line 661
    const-string/jumbo v13, "MMTelSS"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "handleGetCLIR(): using mOirCache: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v15}, Lcom/mediatek/ims/MMTelSSTransport;->-get13(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v13}, Lcom/mediatek/ims/MMTelSSTransport;->-get13(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v8

    .restart local v8    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    goto/16 :goto_120

    .line 664
    .end local v8    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    :cond_1b9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v13, v9}, Lcom/mediatek/ims/MMTelSSTransport;->-wrap0(Lcom/mediatek/ims/MMTelSSTransport;I)Z

    move-result v13

    if-nez v13, :cond_1fe

    .line 665
    const-string/jumbo v13, "MMTelSS"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "handleGetCLIR(): XcapRoot = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    iget-object v15, v15, Lcom/mediatek/ims/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v13, :cond_1fd

    .line 667
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    new-instance v14, Ljava/net/UnknownHostException;

    invoke-direct {v14}, Ljava/net/UnknownHostException;-><init>()V

    const/4 v15, 0x0

    invoke-static {v13, v15, v14}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 668
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v13}, Landroid/os/Message;->sendToTarget()V

    .line 670
    :cond_1fd
    return-void

    .line 673
    :cond_1fe
    invoke-static {}, Lcom/mediatek/ims/MMTelSSTransport;->-get16()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v14}, Lcom/mediatek/ims/MMTelSSTransport;->-get9(Lcom/mediatek/ims/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v13, v15, v14}, Lcom/mediatek/simservs/client/SimServs;->getOriginatingIdentityPresentationRestriction(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v8

    .line 674
    .restart local v8    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v13, v8}, Lcom/mediatek/ims/MMTelSSTransport;->-set12(Lcom/mediatek/ims/MMTelSSTransport;Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    .line 675
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v13, v9}, Lcom/mediatek/ims/MMTelSSTransport;->-set14(Lcom/mediatek/ims/MMTelSSTransport;I)I

    .line 676
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v13, v4, v5}, Lcom/mediatek/ims/MMTelSSTransport;->-set13(Lcom/mediatek/ims/MMTelSSTransport;J)J

    .line 677
    const-string/jumbo v13, "MMTelSS"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "handleGetCLIR(): new mOirCache = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v15}, Lcom/mediatek/ims/MMTelSSTransport;->-get13(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 678
    const-string/jumbo v15, ", curTime = "

    .line 677
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_251
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_15c .. :try_end_251} :catch_253
    .catch Ljava/lang/Exception; {:try_start_15c .. :try_end_251} :catch_2bc

    goto/16 :goto_120

    .line 692
    .end local v4    # "curTime":J
    .end local v8    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    :catch_253
    move-exception v12

    .line 693
    .local v12, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    const-string/jumbo v13, "MMTelSS"

    const-string/jumbo v14, "handleGetCLIR(): XcapException"

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/mediatek/ims/MMTelSSTransport;->-set12(Lcom/mediatek/ims/MMTelSSTransport;Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    .line 695
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const/4 v14, -0x1

    invoke-static {v13, v14}, Lcom/mediatek/ims/MMTelSSTransport;->-set14(Lcom/mediatek/ims/MMTelSSTransport;I)I

    .line 696
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const-wide/16 v14, 0x0

    invoke-static {v13, v14, v15}, Lcom/mediatek/ims/MMTelSSTransport;->-set13(Lcom/mediatek/ims/MMTelSSTransport;J)J

    .line 698
    invoke-virtual {v12}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 699
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v13, :cond_128

    .line 700
    invoke-virtual {v12}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v13

    if-eqz v13, :cond_313

    .line 701
    const-string/jumbo v13, "MMTelSS"

    const-string/jumbo v14, "handleGetCLIR(): xcapException.isConnectionError()"

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    new-instance v14, Ljava/net/UnknownHostException;

    invoke-direct {v14}, Ljava/net/UnknownHostException;-><init>()V

    const/4 v15, 0x0

    invoke-static {v13, v15, v14}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 711
    :goto_29b
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v13}, Landroid/os/Message;->sendToTarget()V

    .line 712
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v13}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v13

    if-eqz v13, :cond_2b7

    .line 713
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v13}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 715
    :cond_2b7
    return-void

    .line 688
    .end local v12    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    .restart local v4    # "curTime":J
    .restart local v8    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    .restart local v11    # "restricted":Z
    :cond_2b8
    const/4 v10, 0x4

    .line 689
    const/4 v7, 0x2

    goto/16 :goto_128

    .line 717
    .end local v4    # "curTime":J
    .end local v8    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    .end local v11    # "restricted":Z
    :catch_2bc
    move-exception v3

    .line 719
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v13, "MMTelSS"

    const-string/jumbo v14, "handleGetCLIR():Start to Print Stack Trace"

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/mediatek/ims/MMTelSSTransport;->-set12(Lcom/mediatek/ims/MMTelSSTransport;Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    .line 721
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const/4 v14, -0x1

    invoke-static {v13, v14}, Lcom/mediatek/ims/MMTelSSTransport;->-set14(Lcom/mediatek/ims/MMTelSSTransport;I)I

    .line 722
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const-wide/16 v14, 0x0

    invoke-static {v13, v14, v15}, Lcom/mediatek/ims/MMTelSSTransport;->-set13(Lcom/mediatek/ims/MMTelSSTransport;J)J

    .line 724
    const/4 v10, 0x2

    .line 725
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 726
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v13, :cond_128

    .line 728
    const/4 v13, 0x2

    invoke-static {v13}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v2

    .line 729
    .local v2, "ce":Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v14, 0x0

    invoke-static {v13, v14, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 730
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v13}, Landroid/os/Message;->sendToTarget()V

    .line 731
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v13}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v13

    if-eqz v13, :cond_312

    .line 732
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v13}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 734
    :cond_312
    return-void

    .line 703
    .end local v2    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v12    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_313
    invoke-static {v9}, Lcom/mediatek/ims/MMTelSSUtils;->isOp06IccCard(I)Z

    move-result v13

    if-eqz v13, :cond_34c

    .line 704
    invoke-virtual {v12}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v13

    if-eqz v13, :cond_34c

    .line 705
    const-string/jumbo v13, "MMTelSS"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "handleGetCLIR(): OP06 with http Error: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 706
    invoke-virtual {v12}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v15

    .line 705
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    new-instance v14, Ljava/net/UnknownHostException;

    invoke-direct {v14}, Ljava/net/UnknownHostException;-><init>()V

    const/4 v15, 0x0

    invoke-static {v13, v15, v14}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto/16 :goto_29b

    .line 709
    :cond_34c
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v14, 0x0

    invoke-static {v13, v14, v12}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto/16 :goto_29b
.end method

.method public handleGetCOLP(Lcom/mediatek/ims/MMTelSSRequest;)V
    .registers 15
    .param p1, "rr"    # Lcom/mediatek/ims/MMTelSSRequest;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    .line 850
    const/4 v4, -0x1

    .line 851
    .local v4, "reqNo":I
    const/4 v5, -0x1

    .line 852
    .local v5, "serialNo":I
    new-array v2, v12, [I

    .line 853
    .local v2, "get_colp_response":[I
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 855
    .local v3, "phoneId":I
    invoke-static {v3}, Lcom/mediatek/ims/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v8

    if-nez v8, :cond_2f

    .line 856
    const-string/jumbo v8, "MMTelSS"

    const-string/jumbo v9, "handleGetCOLP(): !isPreferXcap()"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v8, :cond_2e

    .line 858
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    new-instance v9, Ljava/net/UnknownHostException;

    invoke-direct {v9}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v8, v11, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 859
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 861
    :cond_2e
    return-void

    .line 865
    :cond_2f
    :try_start_2f
    iget-object v8, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v8, v3}, Lcom/mediatek/ims/MMTelSSTransport;->-wrap0(Lcom/mediatek/ims/MMTelSSTransport;I)Z

    move-result v8

    if-nez v8, :cond_6a

    .line 866
    const-string/jumbo v8, "MMTelSS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "handleGetCOLP(): XcapRoot = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    iget-object v10, v10, Lcom/mediatek/ims/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v8, :cond_69

    .line 868
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    new-instance v9, Ljava/net/UnknownHostException;

    invoke-direct {v9}, Ljava/net/UnknownHostException;-><init>()V

    const/4 v10, 0x0

    invoke-static {v8, v10, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 869
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 871
    :cond_69
    return-void

    .line 875
    :cond_6a
    invoke-static {}, Lcom/mediatek/ims/MMTelSSTransport;->-get16()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v9}, Lcom/mediatek/ims/MMTelSSTransport;->-get9(Lcom/mediatek/ims/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v8, v10, v9}, Lcom/mediatek/simservs/client/SimServs;->getTerminatingIdentityPresentation(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;

    move-result-object v6

    .line 876
    .local v6, "tip":Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    const-string/jumbo v8, "MMTelSS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "handleGetCOLP():active="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;->isActive()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;->isActive()Z

    move-result v8

    if-eqz v8, :cond_c5

    .line 880
    const/4 v8, 0x1

    const/4 v9, 0x0

    aput v8, v2, v9

    .line 881
    const/4 v8, 0x1

    const/4 v9, 0x1

    aput v8, v2, v9
    :try_end_a5
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_2f .. :try_end_a5} :catch_ce
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_a5} :catch_10f

    .line 923
    .end local v6    # "tip":Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    :cond_a5
    :goto_a5
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v8, :cond_b3

    .line 929
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-static {v8, v2, v11}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 930
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 933
    :cond_b3
    iget-object v8, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v8}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v8

    if-eqz v8, :cond_c4

    .line 934
    iget-object v8, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v8}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 843
    :cond_c4
    return-void

    .line 883
    .restart local v6    # "tip":Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    :cond_c5
    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_c7
    aput v8, v2, v9

    .line 884
    const/4 v8, 0x0

    const/4 v9, 0x1

    aput v8, v2, v9
    :try_end_cd
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_c7 .. :try_end_cd} :catch_ce
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_cd} :catch_10f

    goto :goto_a5

    .line 887
    .end local v6    # "tip":Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    :catch_ce
    move-exception v7

    .line 888
    .local v7, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    const-string/jumbo v8, "MMTelSS"

    const-string/jumbo v9, "handleGetCOLP(): XcapException"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    invoke-virtual {v7}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 890
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v8, :cond_a5

    .line 891
    invoke-virtual {v7}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v8

    if-eqz v8, :cond_140

    .line 892
    const-string/jumbo v8, "MMTelSS"

    const-string/jumbo v9, "handleGetCOLP(): xcapException.isConnectionError()"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    new-instance v9, Ljava/net/UnknownHostException;

    invoke-direct {v9}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v8, v11, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 902
    :goto_f8
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 903
    iget-object v8, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v8}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v8

    if-eqz v8, :cond_10e

    .line 904
    iget-object v8, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v8}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 906
    :cond_10e
    return-void

    .line 908
    .end local v7    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :catch_10f
    move-exception v1

    .line 909
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "MMTelSS"

    const-string/jumbo v9, "handleGetCOLP():Start to Print Stack Trace"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 911
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v8, :cond_a5

    .line 913
    invoke-static {v12}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 914
    .local v0, "ce":Lcom/android/internal/telephony/CommandException;
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-static {v8, v11, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 915
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 916
    iget-object v8, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v8}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v8

    if-eqz v8, :cond_13f

    .line 917
    iget-object v8, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v8}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 919
    :cond_13f
    return-void

    .line 894
    .end local v0    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v7    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_140
    invoke-static {v3}, Lcom/mediatek/ims/MMTelSSUtils;->isOp06IccCard(I)Z

    move-result v8

    if-eqz v8, :cond_175

    .line 895
    invoke-virtual {v7}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v8

    if-eqz v8, :cond_175

    .line 896
    const-string/jumbo v8, "MMTelSS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "handleGetCOLP(): OP06 with http Error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 897
    invoke-virtual {v7}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v10

    .line 896
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    new-instance v9, Ljava/net/UnknownHostException;

    invoke-direct {v9}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v8, v11, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_f8

    .line 900
    :cond_175
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-static {v8, v11, v7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto/16 :goto_f8
.end method

.method public handleGetCOLR(Lcom/mediatek/ims/MMTelSSRequest;)V
    .registers 14
    .param p1, "rr"    # Lcom/mediatek/ims/MMTelSSRequest;

    .prologue
    const/4 v8, 0x1

    const/4 v11, 0x0

    .line 941
    const/4 v4, -0x1

    .line 942
    .local v4, "reqNo":I
    const/4 v5, -0x1

    .line 943
    .local v5, "serialNo":I
    new-array v2, v8, [I

    .line 944
    .local v2, "get_colr_response":[I
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 946
    .local v3, "phoneId":I
    invoke-static {v3}, Lcom/mediatek/ims/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v8

    if-nez v8, :cond_2f

    .line 947
    const-string/jumbo v8, "MMTelSS"

    const-string/jumbo v9, "handleGetCOLR(): !isPreferXcap()"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v8, :cond_2e

    .line 949
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    new-instance v9, Ljava/net/UnknownHostException;

    invoke-direct {v9}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v8, v11, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 950
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 952
    :cond_2e
    return-void

    .line 956
    :cond_2f
    :try_start_2f
    iget-object v8, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v8, v3}, Lcom/mediatek/ims/MMTelSSTransport;->-wrap0(Lcom/mediatek/ims/MMTelSSTransport;I)Z

    move-result v8

    if-nez v8, :cond_6a

    .line 957
    const-string/jumbo v8, "MMTelSS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "handleGetCOLR(): XcapRoot = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    iget-object v10, v10, Lcom/mediatek/ims/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v8, :cond_69

    .line 959
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    new-instance v9, Ljava/net/UnknownHostException;

    invoke-direct {v9}, Ljava/net/UnknownHostException;-><init>()V

    const/4 v10, 0x0

    invoke-static {v8, v10, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 960
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 962
    :cond_69
    return-void

    .line 966
    :cond_6a
    invoke-static {}, Lcom/mediatek/ims/MMTelSSTransport;->-get16()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v9}, Lcom/mediatek/ims/MMTelSSTransport;->-get9(Lcom/mediatek/ims/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v8, v10, v9}, Lcom/mediatek/simservs/client/SimServs;->getTerminatingIdentityPresentationRestriction(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;

    move-result-object v6

    .line 967
    .local v6, "tir":Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    const-string/jumbo v8, "MMTelSS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "handleGetCOLR():active="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->isActive()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->isActive()Z

    move-result v8

    if-eqz v8, :cond_c1

    .line 971
    const/4 v8, 0x1

    const/4 v9, 0x0

    aput v8, v2, v9
    :try_end_a1
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_2f .. :try_end_a1} :catch_c6
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_a1} :catch_107

    .line 1014
    .end local v6    # "tir":Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    :cond_a1
    :goto_a1
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v8, :cond_af

    .line 1019
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-static {v8, v2, v11}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1020
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 1023
    :cond_af
    iget-object v8, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v8}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v8

    if-eqz v8, :cond_c0

    .line 1024
    iget-object v8, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v8}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 938
    :cond_c0
    return-void

    .line 974
    .restart local v6    # "tir":Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    :cond_c1
    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_c3
    aput v8, v2, v9
    :try_end_c5
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_c3 .. :try_end_c5} :catch_c6
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_c5} :catch_107

    goto :goto_a1

    .line 977
    .end local v6    # "tir":Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    :catch_c6
    move-exception v7

    .line 978
    .local v7, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    const-string/jumbo v8, "MMTelSS"

    const-string/jumbo v9, "handleGetCOLR(): XcapException"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    invoke-virtual {v7}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 980
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v8, :cond_a1

    .line 981
    invoke-virtual {v7}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v8

    if-eqz v8, :cond_139

    .line 982
    const-string/jumbo v8, "MMTelSS"

    const-string/jumbo v9, "handleGetCOLR(): xcapException.isConnectionError()"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    new-instance v9, Ljava/net/UnknownHostException;

    invoke-direct {v9}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v8, v11, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 992
    :goto_f0
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 993
    iget-object v8, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v8}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v8

    if-eqz v8, :cond_106

    .line 994
    iget-object v8, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v8}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 996
    :cond_106
    return-void

    .line 998
    .end local v7    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :catch_107
    move-exception v1

    .line 999
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "MMTelSS"

    const-string/jumbo v9, "handleGetCOLR():Start to Print Stack Trace"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1001
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v8, :cond_a1

    .line 1003
    const/4 v8, 0x2

    invoke-static {v8}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 1004
    .local v0, "ce":Lcom/android/internal/telephony/CommandException;
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-static {v8, v11, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1005
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 1006
    iget-object v8, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v8}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v8

    if-eqz v8, :cond_138

    .line 1007
    iget-object v8, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v8}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 1009
    :cond_138
    return-void

    .line 984
    .end local v0    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v7    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_139
    invoke-static {v3}, Lcom/mediatek/ims/MMTelSSUtils;->isOp06IccCard(I)Z

    move-result v8

    if-eqz v8, :cond_16e

    .line 985
    invoke-virtual {v7}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v8

    if-eqz v8, :cond_16e

    .line 986
    const-string/jumbo v8, "MMTelSS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "handleGetCOLR(): OP06 with http Error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 987
    invoke-virtual {v7}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v10

    .line 986
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    new-instance v9, Ljava/net/UnknownHostException;

    invoke-direct {v9}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v8, v11, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_f0

    .line 990
    :cond_16e
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-static {v8, v11, v7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto/16 :goto_f0
.end method

.method public handleGetCW(Lcom/mediatek/ims/MMTelSSRequest;)V
    .registers 20
    .param p1, "rr"    # Lcom/mediatek/ims/MMTelSSRequest;

    .prologue
    .line 1030
    const/4 v10, -0x1

    .line 1031
    .local v10, "reqNo":I
    const/4 v11, -0x1

    .line 1032
    .local v11, "serialNo":I
    const/4 v6, -0x1

    .line 1033
    .local v6, "cwServiceClass":I
    const/4 v14, 0x2

    new-array v8, v14, [I

    .line 1034
    .local v8, "get_cw_response":[I
    const/4 v9, 0x0

    .line 1043
    .local v9, "phoneId":I
    :try_start_7
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1044
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1045
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1046
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1047
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1048
    const-string/jumbo v14, "MMTelSS"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Read GET_CW serviceClass="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    invoke-static {v9}, Lcom/mediatek/ims/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v14

    if-nez v14, :cond_a5

    .line 1051
    const-string/jumbo v14, "MMTelSS"

    const-string/jumbo v15, "handleGetCW(): !isPreferXcap()"

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    new-instance v14, Ljava/net/UnknownHostException;

    invoke-direct {v14}, Ljava/net/UnknownHostException;-><init>()V

    throw v14
    :try_end_5e
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_5e} :catch_5e
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_7 .. :try_end_5e} :catch_16f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_5e} :catch_312

    .line 1105
    :catch_5e
    move-exception v12

    .line 1106
    .local v12, "unknownHostException":Ljava/net/UnknownHostException;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/mediatek/ims/MMTelSSTransport;->-set3(Lcom/mediatek/ims/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationWaiting;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    .line 1107
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const/4 v15, -0x1

    invoke-static {v14, v15}, Lcom/mediatek/ims/MMTelSSTransport;->-set5(Lcom/mediatek/ims/MMTelSSTransport;I)I

    .line 1108
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-static {v14, v0, v1}, Lcom/mediatek/ims/MMTelSSTransport;->-set4(Lcom/mediatek/ims/MMTelSSTransport;J)J

    .line 1109
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v14, :cond_21e

    .line 1110
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v15, 0x0

    invoke-static {v14, v15, v12}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1111
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    .line 1112
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v14}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v14

    if-eqz v14, :cond_a4

    .line 1113
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v14}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 1115
    :cond_a4
    return-void

    .line 1056
    .end local v12    # "unknownHostException":Ljava/net/UnknownHostException;
    :cond_a5
    const/16 v14, 0x210

    if-ne v6, v14, :cond_ab

    .line 1058
    const/16 v6, 0x200

    .line 1062
    :cond_ab
    :try_start_ab
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1063
    .local v4, "curTime":J
    const-string/jumbo v14, "MMTelSS"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "handleGetCW(): mCwCache = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/mediatek/ims/MMTelSSTransport;->-get3(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", curTime = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1064
    const-string/jumbo v16, ", mCwCacheLastQueried = "

    .line 1063
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1064
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/mediatek/ims/MMTelSSTransport;->-get4(Lcom/mediatek/ims/MMTelSSTransport;)J

    move-result-wide v16

    .line 1063
    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v14}, Lcom/mediatek/ims/MMTelSSTransport;->-get3(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v14

    if-eqz v14, :cond_27d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v14}, Lcom/mediatek/ims/MMTelSSTransport;->-get5(Lcom/mediatek/ims/MMTelSSTransport;)I

    move-result v14

    if-ne v9, v14, :cond_27d

    .line 1066
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v14}, Lcom/mediatek/ims/MMTelSSTransport;->-get3(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v14

    invoke-virtual {v14}, Lcom/mediatek/simservs/client/CommunicationWaiting;->isSupportEtag()Z

    move-result v14

    .line 1065
    if-eqz v14, :cond_27d

    .line 1067
    const-string/jumbo v14, "MMTelSS"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "handleGetCW(): using ETAG mCwCache: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/mediatek/ims/MMTelSSTransport;->-get3(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v14, v9}, Lcom/mediatek/ims/MMTelSSTransport;->-wrap0(Lcom/mediatek/ims/MMTelSSTransport;I)Z

    move-result v14

    if-nez v14, :cond_1d9

    .line 1070
    const-string/jumbo v14, "MMTelSS"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "handleGetCW(): XcapRoot = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    new-instance v14, Ljava/net/UnknownHostException;

    invoke-direct {v14}, Ljava/net/UnknownHostException;-><init>()V

    throw v14
    :try_end_16f
    .catch Ljava/net/UnknownHostException; {:try_start_ab .. :try_end_16f} :catch_5e
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_ab .. :try_end_16f} :catch_16f
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_16f} :catch_312

    .line 1117
    .end local v4    # "curTime":J
    :catch_16f
    move-exception v13

    .line 1118
    .local v13, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    const-string/jumbo v14, "MMTelSS"

    const-string/jumbo v15, "handleGetCW(): XcapException"

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/mediatek/ims/MMTelSSTransport;->-set3(Lcom/mediatek/ims/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationWaiting;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    .line 1120
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const/4 v15, -0x1

    invoke-static {v14, v15}, Lcom/mediatek/ims/MMTelSSTransport;->-set5(Lcom/mediatek/ims/MMTelSSTransport;I)I

    .line 1121
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-static {v14, v0, v1}, Lcom/mediatek/ims/MMTelSSTransport;->-set4(Lcom/mediatek/ims/MMTelSSTransport;J)J

    .line 1123
    invoke-virtual {v13}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 1124
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v14, :cond_21e

    .line 1125
    invoke-virtual {v13}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v14

    if-eqz v14, :cond_3ca

    .line 1126
    const-string/jumbo v14, "MMTelSS"

    const-string/jumbo v15, "handleGetCW(): xcapException.isConnectionError()"

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    new-instance v15, Ljava/net/UnknownHostException;

    invoke-direct {v15}, Ljava/net/UnknownHostException;-><init>()V

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-static {v14, v0, v15}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1136
    :goto_1bc
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    .line 1137
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v14}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v14

    if-eqz v14, :cond_1d8

    .line 1138
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v14}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 1140
    :cond_1d8
    return-void

    .line 1074
    .end local v13    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    .restart local v4    # "curTime":J
    :cond_1d9
    :try_start_1d9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v14}, Lcom/mediatek/ims/MMTelSSTransport;->-get3(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v3

    .line 1075
    .local v3, "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v14}, Lcom/mediatek/ims/MMTelSSTransport;->-get9(Lcom/mediatek/ims/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v14

    invoke-virtual {v3, v14}, Lcom/mediatek/simservs/client/CommunicationWaiting;->setNetwork(Landroid/net/Network;)V

    .line 1076
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/CommunicationWaiting;->refresh()V

    .line 1077
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v14, v4, v5}, Lcom/mediatek/ims/MMTelSSTransport;->-set4(Lcom/mediatek/ims/MMTelSSTransport;J)J

    .line 1097
    :goto_1f6
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/CommunicationWaiting;->isActive()Z

    move-result v14

    if-eqz v14, :cond_3c4

    .line 1098
    const/4 v14, 0x1

    const/4 v15, 0x0

    aput v14, v8, v15

    .line 1103
    :goto_200
    const-string/jumbo v14, "MMTelSS"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "handleGetCW(): isActive = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    aget v16, v8, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21e
    .catch Ljava/net/UnknownHostException; {:try_start_1d9 .. :try_end_21e} :catch_5e
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_1d9 .. :try_end_21e} :catch_16f
    .catch Ljava/lang/Exception; {:try_start_1d9 .. :try_end_21e} :catch_312

    .line 1164
    .end local v3    # "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    .end local v4    # "curTime":J
    :cond_21e
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v14, :cond_267

    .line 1167
    const/4 v14, 0x0

    aget v14, v8, v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_258

    .line 1181
    if-nez v6, :cond_410

    .line 1187
    const/4 v14, 0x1

    aget v15, v8, v14

    or-int/lit8 v15, v15, 0x1

    aput v15, v8, v14

    .line 1188
    const/4 v14, 0x1

    aget v15, v8, v14

    or-int/lit16 v15, v15, 0x200

    aput v15, v8, v14

    .line 1199
    :cond_23a
    :goto_23a
    const-string/jumbo v14, "MMTelSS"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "handleGetCW(): class = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    aget v16, v8, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    :cond_258
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v15, 0x0

    invoke-static {v14, v8, v15}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1202
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    .line 1205
    :cond_267
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v14}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v14

    if-eqz v14, :cond_27c

    .line 1206
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v14}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 1029
    :cond_27c
    return-void

    .line 1078
    .restart local v4    # "curTime":J
    :cond_27d
    :try_start_27d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v14}, Lcom/mediatek/ims/MMTelSSTransport;->-get3(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v14

    if-eqz v14, :cond_2dc

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v14}, Lcom/mediatek/ims/MMTelSSTransport;->-get5(Lcom/mediatek/ims/MMTelSSTransport;)I

    move-result v14

    if-ne v9, v14, :cond_2dc

    .line 1079
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v14}, Lcom/mediatek/ims/MMTelSSTransport;->-get4(Lcom/mediatek/ims/MMTelSSTransport;)J

    move-result-wide v14

    cmp-long v14, v4, v14

    if-ltz v14, :cond_2dc

    .line 1080
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v14}, Lcom/mediatek/ims/MMTelSSTransport;->-get4(Lcom/mediatek/ims/MMTelSSTransport;)J

    move-result-wide v14

    sub-long v14, v4, v14

    const-wide/32 v16, 0x1d4c0

    cmp-long v14, v14, v16

    if-gez v14, :cond_2dc

    .line 1081
    const-string/jumbo v14, "MMTelSS"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "handleGetCW(): using mCwCache: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/mediatek/ims/MMTelSSTransport;->-get3(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v14}, Lcom/mediatek/ims/MMTelSSTransport;->-get3(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v3

    .restart local v3    # "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    goto/16 :goto_1f6

    .line 1084
    .end local v3    # "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    :cond_2dc
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v14, v9}, Lcom/mediatek/ims/MMTelSSTransport;->-wrap0(Lcom/mediatek/ims/MMTelSSTransport;I)Z

    move-result v14

    if-nez v14, :cond_36a

    .line 1085
    const-string/jumbo v14, "MMTelSS"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "handleGetCW(): XcapRoot = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    new-instance v14, Ljava/net/UnknownHostException;

    invoke-direct {v14}, Ljava/net/UnknownHostException;-><init>()V

    throw v14
    :try_end_312
    .catch Ljava/net/UnknownHostException; {:try_start_27d .. :try_end_312} :catch_5e
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_27d .. :try_end_312} :catch_16f
    .catch Ljava/lang/Exception; {:try_start_27d .. :try_end_312} :catch_312

    .line 1142
    .end local v4    # "curTime":J
    :catch_312
    move-exception v7

    .line 1143
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v14, "MMTelSS"

    const-string/jumbo v15, "handleGetCW():Start to Print Stack Trace"

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/mediatek/ims/MMTelSSTransport;->-set3(Lcom/mediatek/ims/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationWaiting;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    .line 1145
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const/4 v15, -0x1

    invoke-static {v14, v15}, Lcom/mediatek/ims/MMTelSSTransport;->-set5(Lcom/mediatek/ims/MMTelSSTransport;I)I

    .line 1146
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-static {v14, v0, v1}, Lcom/mediatek/ims/MMTelSSTransport;->-set4(Lcom/mediatek/ims/MMTelSSTransport;J)J

    .line 1148
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 1149
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v14, :cond_21e

    .line 1151
    const/4 v14, 0x2

    invoke-static {v14}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v2

    .line 1152
    .local v2, "ce":Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v15, 0x0

    invoke-static {v14, v15, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1153
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    .line 1154
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v14}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v14

    if-eqz v14, :cond_369

    .line 1155
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v14}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 1157
    :cond_369
    return-void

    .line 1089
    .end local v2    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v4    # "curTime":J
    :cond_36a
    :try_start_36a
    invoke-static {}, Lcom/mediatek/ims/MMTelSSTransport;->-get16()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v15}, Lcom/mediatek/ims/MMTelSSTransport;->-get9(Lcom/mediatek/ims/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v14, v0, v15}, Lcom/mediatek/simservs/client/SimServs;->getCommunicationWaiting(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v3

    .line 1090
    .restart local v3    # "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v14, v3}, Lcom/mediatek/ims/MMTelSSTransport;->-set3(Lcom/mediatek/ims/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationWaiting;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    .line 1091
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v14, v9}, Lcom/mediatek/ims/MMTelSSTransport;->-set5(Lcom/mediatek/ims/MMTelSSTransport;I)I

    .line 1092
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v14, v4, v5}, Lcom/mediatek/ims/MMTelSSTransport;->-set4(Lcom/mediatek/ims/MMTelSSTransport;J)J

    .line 1093
    const-string/jumbo v14, "MMTelSS"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "handleGetCW(): new mCwCache = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/mediatek/ims/MMTelSSTransport;->-get3(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1094
    const-string/jumbo v16, ", curTime = "

    .line 1093
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f6

    .line 1101
    :cond_3c4
    const/4 v14, 0x0

    const/4 v15, 0x0

    aput v14, v8, v15
    :try_end_3c8
    .catch Ljava/net/UnknownHostException; {:try_start_36a .. :try_end_3c8} :catch_5e
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_36a .. :try_end_3c8} :catch_16f
    .catch Ljava/lang/Exception; {:try_start_36a .. :try_end_3c8} :catch_312

    goto/16 :goto_200

    .line 1128
    .end local v3    # "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    .end local v4    # "curTime":J
    .restart local v13    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_3ca
    invoke-static {v9}, Lcom/mediatek/ims/MMTelSSUtils;->isOp06IccCard(I)Z

    move-result v14

    if-eqz v14, :cond_406

    .line 1129
    invoke-virtual {v13}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v14

    if-eqz v14, :cond_406

    .line 1130
    const-string/jumbo v14, "MMTelSS"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "handleGetCW(): OP06 with http Error: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1131
    invoke-virtual {v13}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v16

    .line 1130
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    new-instance v15, Ljava/net/UnknownHostException;

    invoke-direct {v15}, Ljava/net/UnknownHostException;-><init>()V

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-static {v14, v0, v15}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto/16 :goto_1bc

    .line 1134
    :cond_406
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v15, 0x0

    invoke-static {v14, v15, v13}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto/16 :goto_1bc

    .line 1190
    .end local v13    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_410
    const/4 v14, 0x1

    aget v15, v8, v14

    or-int/2addr v15, v6

    aput v15, v8, v14

    .line 1191
    const/16 v14, 0x200

    if-ne v6, v14, :cond_23a

    .line 1196
    const/4 v14, 0x1

    aget v15, v8, v14

    or-int/lit8 v15, v15, 0x1

    aput v15, v8, v14

    goto/16 :goto_23a
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v13, 0x0

    const/16 v12, 0x19c

    .line 5459
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/mediatek/ims/MMTelSSRequest;

    .line 5460
    .local v7, "rr":Lcom/mediatek/ims/MMTelSSRequest;
    const/4 v5, 0x0

    .line 5462
    .local v5, "req":Lcom/mediatek/ims/MMTelSSRequest;
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_2d0

    .line 5458
    .end local v5    # "req":Lcom/mediatek/ims/MMTelSSRequest;
    :cond_d
    :goto_d
    return-void

    .line 5469
    .restart local v5    # "req":Lcom/mediatek/ims/MMTelSSRequest;
    :pswitch_e
    const/4 v1, 0x0

    .line 5470
    .local v1, "alreadySubtracted":Z
    const/4 v6, -0x1

    .line 5471
    .local v6, "reqNo":I
    const/4 v8, -0x1

    .line 5473
    .local v8, "serialNo":I
    const-string/jumbo v9, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "handleMessage(): EVENT_SEND:mRequestMessagesPending = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 5474
    iget-object v11, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    iget v11, v11, Lcom/mediatek/ims/MMTelSSTransport;->mRequestMessagesPending:I

    .line 5473
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 5475
    const-string/jumbo v11, ", mRequestsList.size() = "

    .line 5473
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 5475
    iget-object v11, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    iget-object v11, v11, Lcom/mediatek/ims/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 5473
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5477
    :try_start_42
    iget-object v9, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    iget-object v10, v9, Lcom/mediatek/ims/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v10
    :try_end_47
    .catch Ljava/lang/RuntimeException; {:try_start_42 .. :try_end_47} :catch_bc
    .catchall {:try_start_42 .. :try_end_47} :catchall_194

    .line 5478
    :try_start_47
    iget-object v9, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    iget-object v9, v9, Lcom/mediatek/ims/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4e
    .catchall {:try_start_47 .. :try_end_4e} :catchall_191

    :try_start_4e
    monitor-exit v10

    .line 5481
    iget-object v9, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    iget v10, v9, Lcom/mediatek/ims/MMTelSSTransport;->mRequestMessagesPending:I

    add-int/lit8 v10, v10, -0x1

    iput v10, v9, Lcom/mediatek/ims/MMTelSSTransport;->mRequestMessagesPending:I

    .line 5482
    const/4 v1, 0x1

    .line 5489
    iget-object v9, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    iget v10, v7, Lcom/mediatek/ims/MMTelSSRequest;->mSerial:I

    invoke-static {v9, v10}, Lcom/mediatek/ims/MMTelSSTransport;->-wrap1(Lcom/mediatek/ims/MMTelSSTransport;I)Lcom/mediatek/ims/MMTelSSRequest;

    .line 5493
    const-string/jumbo v9, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Receive MMTelSS Request:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v7, Lcom/mediatek/ims/MMTelSSRequest;->mRequest:I

    invoke-static {v11}, Lcom/mediatek/ims/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5495
    iget v9, v7, Lcom/mediatek/ims/MMTelSSRequest;->mRequest:I

    packed-switch v9, :pswitch_data_2d8

    .line 5563
    const-string/jumbo v9, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Invalid MMTelSS Request:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v7, Lcom/mediatek/ims/MMTelSSRequest;->mRequest:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5564
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unrecognized MMTelSS Request: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 5565
    iget v11, v7, Lcom/mediatek/ims/MMTelSSRequest;->mRequest:I

    .line 5564
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_bc
    .catch Ljava/lang/RuntimeException; {:try_start_4e .. :try_end_bc} :catch_bc
    .catchall {:try_start_4e .. :try_end_bc} :catchall_194

    .line 5570
    :catch_bc
    move-exception v3

    .line 5571
    .local v3, "exc":Ljava/lang/RuntimeException;
    :try_start_bd
    const-string/jumbo v9, "MMTelSS"

    const-string/jumbo v10, "Uncaught exception "

    invoke-static {v9, v10, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5572
    iget-object v9, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    iget v10, v7, Lcom/mediatek/ims/MMTelSSRequest;->mSerial:I

    invoke-static {v9, v10}, Lcom/mediatek/ims/MMTelSSTransport;->-wrap1(Lcom/mediatek/ims/MMTelSSTransport;I)Lcom/mediatek/ims/MMTelSSRequest;

    move-result-object v5

    .line 5575
    .local v5, "req":Lcom/mediatek/ims/MMTelSSRequest;
    const-string/jumbo v9, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "handleMessage(): RuntimeException:mRequestMessagesPending = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 5576
    iget-object v11, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    iget v11, v11, Lcom/mediatek/ims/MMTelSSTransport;->mRequestMessagesPending:I

    .line 5575
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 5577
    const-string/jumbo v11, ", mRequestsList.size() = "

    .line 5575
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 5577
    iget-object v11, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    iget-object v11, v11, Lcom/mediatek/ims/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 5575
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ff
    .catchall {:try_start_bd .. :try_end_ff} :catchall_194

    .line 5578
    if-nez v5, :cond_22c

    if-eqz v1, :cond_22c

    .line 5586
    :goto_103
    iget-object v9, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v9}, Lcom/mediatek/ims/MMTelSSTransport;->-wrap2(Lcom/mediatek/ims/MMTelSSTransport;)V

    .line 5590
    .end local v3    # "exc":Ljava/lang/RuntimeException;
    .end local v5    # "req":Lcom/mediatek/ims/MMTelSSRequest;
    :goto_108
    if-nez v1, :cond_143

    .line 5591
    const-string/jumbo v9, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "handleMessage(): !alreadySubtracted:mRequestMessagesPending = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 5592
    iget-object v11, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    iget v11, v11, Lcom/mediatek/ims/MMTelSSTransport;->mRequestMessagesPending:I

    .line 5591
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 5593
    const-string/jumbo v11, ", mRequestsList.size() = "

    .line 5591
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 5593
    iget-object v11, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    iget-object v11, v11, Lcom/mediatek/ims/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 5591
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5594
    iget-object v9, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    iget v10, v9, Lcom/mediatek/ims/MMTelSSTransport;->mRequestMessagesPending:I

    add-int/lit8 v10, v10, -0x1

    iput v10, v9, Lcom/mediatek/ims/MMTelSSTransport;->mRequestMessagesPending:I

    .line 5599
    :cond_143
    iget-object v9, v7, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    if-eqz v9, :cond_14e

    .line 5600
    iget-object v9, v7, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 5601
    iput-object v13, v7, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    .line 5604
    :cond_14e
    iget-object v9, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    iget v9, v9, Lcom/mediatek/ims/MMTelSSTransport;->mRequestMessagesPending:I

    if-nez v9, :cond_15e

    iget-object v9, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    iget-object v9, v9, Lcom/mediatek/ims/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eqz v9, :cond_d

    .line 5605
    :cond_15e
    const-string/jumbo v9, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "handleMessage(): ERROR wakeLock:mRequestMessagesPending = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 5606
    iget-object v11, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    iget v11, v11, Lcom/mediatek/ims/MMTelSSTransport;->mRequestMessagesPending:I

    .line 5605
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 5607
    const-string/jumbo v11, ", mRequestsList.size() = "

    .line 5605
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 5607
    iget-object v11, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    iget-object v11, v11, Lcom/mediatek/ims/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 5605
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 5477
    .local v5, "req":Lcom/mediatek/ims/MMTelSSRequest;
    :catchall_191
    move-exception v9

    :try_start_192
    monitor-exit v10

    throw v9
    :try_end_194
    .catch Ljava/lang/RuntimeException; {:try_start_192 .. :try_end_194} :catch_bc
    .catchall {:try_start_192 .. :try_end_194} :catchall_194

    .line 5582
    .end local v5    # "req":Lcom/mediatek/ims/MMTelSSRequest;
    :catchall_194
    move-exception v9

    .line 5586
    iget-object v10, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v10}, Lcom/mediatek/ims/MMTelSSTransport;->-wrap2(Lcom/mediatek/ims/MMTelSSTransport;)V

    .line 5582
    throw v9

    .line 5497
    .restart local v5    # "req":Lcom/mediatek/ims/MMTelSSRequest;
    :pswitch_19b
    :try_start_19b
    invoke-virtual {p0, v7}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->handleSetCLIR(Lcom/mediatek/ims/MMTelSSRequest;)I

    move-result v9

    if-ne v12, v9, :cond_1ad

    .line 5498
    const-string/jumbo v9, "MMTelSS"

    const-string/jumbo v10, "Cache out of date, handleSetCLIR() again"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5499
    invoke-virtual {p0, v7}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->handleSetCLIR(Lcom/mediatek/ims/MMTelSSRequest;)I
    :try_end_1ad
    .catch Ljava/lang/RuntimeException; {:try_start_19b .. :try_end_1ad} :catch_bc
    .catchall {:try_start_19b .. :try_end_1ad} :catchall_194

    .line 5586
    :cond_1ad
    :goto_1ad
    iget-object v9, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v9}, Lcom/mediatek/ims/MMTelSSTransport;->-wrap2(Lcom/mediatek/ims/MMTelSSTransport;)V

    goto/16 :goto_108

    .line 5503
    :pswitch_1b4
    :try_start_1b4
    invoke-virtual {p0, v7}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->handleGetCLIR(Lcom/mediatek/ims/MMTelSSRequest;)V

    goto :goto_1ad

    .line 5506
    :pswitch_1b8
    invoke-virtual {p0, v7}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->handleGetCLIP(Lcom/mediatek/ims/MMTelSSRequest;)V

    goto :goto_1ad

    .line 5509
    :pswitch_1bc
    invoke-virtual {p0, v7}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->handleGetCOLP(Lcom/mediatek/ims/MMTelSSRequest;)V

    goto :goto_1ad

    .line 5512
    :pswitch_1c0
    invoke-virtual {p0, v7}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->handleGetCOLR(Lcom/mediatek/ims/MMTelSSRequest;)V

    goto :goto_1ad

    .line 5515
    :pswitch_1c4
    invoke-virtual {p0, v7}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->handleSetCW(Lcom/mediatek/ims/MMTelSSRequest;)I

    move-result v9

    if-ne v12, v9, :cond_1ad

    .line 5516
    const-string/jumbo v9, "MMTelSS"

    const-string/jumbo v10, "Cache out of date, handleSetCW() again"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5517
    invoke-virtual {p0, v7}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->handleSetCW(Lcom/mediatek/ims/MMTelSSRequest;)I

    goto :goto_1ad

    .line 5521
    :pswitch_1d7
    invoke-virtual {p0, v7}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->handleGetCW(Lcom/mediatek/ims/MMTelSSRequest;)V

    goto :goto_1ad

    .line 5524
    :pswitch_1db
    invoke-virtual {p0, v7}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->handleSetCB(Lcom/mediatek/ims/MMTelSSRequest;)I

    move-result v9

    if-ne v12, v9, :cond_1ad

    .line 5525
    const-string/jumbo v9, "MMTelSS"

    const-string/jumbo v10, "Cache out of date, handleSetCB() again"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5526
    invoke-virtual {p0, v7}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->handleSetCB(Lcom/mediatek/ims/MMTelSSRequest;)I

    goto :goto_1ad

    .line 5530
    :pswitch_1ee
    invoke-virtual {p0, v7}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->handleGetCB(Lcom/mediatek/ims/MMTelSSRequest;)V

    goto :goto_1ad

    .line 5533
    :pswitch_1f2
    invoke-virtual {p0, v7}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->handleSetCF(Lcom/mediatek/ims/MMTelSSRequest;)I

    move-result v9

    if-ne v12, v9, :cond_1ad

    .line 5534
    const-string/jumbo v9, "MMTelSS"

    const-string/jumbo v10, "Cache out of date, handleSetCF() again"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5535
    invoke-virtual {p0, v7}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->handleSetCF(Lcom/mediatek/ims/MMTelSSRequest;)I

    goto :goto_1ad

    .line 5539
    :pswitch_205
    invoke-virtual {p0, v7}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->handleGetCF(Lcom/mediatek/ims/MMTelSSRequest;)V

    goto :goto_1ad

    .line 5542
    :pswitch_209
    invoke-virtual {p0, v7}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->handleSetCLIP(Lcom/mediatek/ims/MMTelSSRequest;)V

    goto :goto_1ad

    .line 5545
    :pswitch_20d
    invoke-virtual {p0, v7}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->handleSetCOLP(Lcom/mediatek/ims/MMTelSSRequest;)V

    goto :goto_1ad

    .line 5548
    :pswitch_211
    invoke-virtual {p0, v7}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->handleSetCOLR(Lcom/mediatek/ims/MMTelSSRequest;)V

    goto :goto_1ad

    .line 5552
    :pswitch_215
    invoke-virtual {p0, v7}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->handleSetCFInTimeSlot(Lcom/mediatek/ims/MMTelSSRequest;)I

    move-result v9

    if-ne v12, v9, :cond_1ad

    .line 5553
    const-string/jumbo v9, "MMTelSS"

    const-string/jumbo v10, "Cache out of date, handleSetCFInTimeSlot() again"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5555
    invoke-virtual {p0, v7}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->handleSetCFInTimeSlot(Lcom/mediatek/ims/MMTelSSRequest;)I

    goto :goto_1ad

    .line 5559
    :pswitch_228
    invoke-virtual {p0, v7}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->handleGetCFInTimeSlot(Lcom/mediatek/ims/MMTelSSRequest;)V
    :try_end_22b
    .catch Ljava/lang/RuntimeException; {:try_start_1b4 .. :try_end_22b} :catch_bc
    .catchall {:try_start_1b4 .. :try_end_22b} :catchall_194

    goto :goto_1ad

    .line 5579
    .restart local v3    # "exc":Ljava/lang/RuntimeException;
    .local v5, "req":Lcom/mediatek/ims/MMTelSSRequest;
    :cond_22c
    const/4 v9, 0x2

    const/4 v10, 0x0

    :try_start_22e
    invoke-virtual {v7, v9, v10}, Lcom/mediatek/ims/MMTelSSRequest;->onError(ILjava/lang/Object;)V

    .line 5580
    invoke-virtual {v7}, Lcom/mediatek/ims/MMTelSSRequest;->release()V
    :try_end_234
    .catchall {:try_start_22e .. :try_end_234} :catchall_194

    goto/16 :goto_103

    .line 5615
    .end local v1    # "alreadySubtracted":Z
    .end local v3    # "exc":Ljava/lang/RuntimeException;
    .end local v6    # "reqNo":I
    .end local v8    # "serialNo":I
    .local v5, "req":Lcom/mediatek/ims/MMTelSSRequest;
    :pswitch_236
    iget-object v9, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    iget-object v10, v9, Lcom/mediatek/ims/MMTelSSTransport;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v10

    .line 5616
    :try_start_23b
    iget-object v9, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    iget-object v9, v9, Lcom/mediatek/ims/MMTelSSTransport;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v9

    if-eqz v9, :cond_2c6

    .line 5618
    iget-object v9, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    iget-object v11, v9, Lcom/mediatek/ims/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v11
    :try_end_24a
    .catchall {:try_start_23b .. :try_end_24a} :catchall_2cc

    .line 5619
    :try_start_24a
    iget-object v9, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    iget-object v9, v9, Lcom/mediatek/ims/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 5620
    .local v2, "count":I
    const-string/jumbo v9, "MMTelSS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "WAKE_LOCK_TIMEOUT  mReqPending="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 5621
    iget-object v13, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    iget v13, v13, Lcom/mediatek/ims/MMTelSSTransport;->mRequestMessagesPending:I

    .line 5620
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 5622
    const-string/jumbo v13, " mRequestList="

    .line 5620
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5624
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_27c
    if-ge v4, v2, :cond_2be

    .line 5625
    iget-object v9, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    iget-object v9, v9, Lcom/mediatek/ims/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/mediatek/ims/MMTelSSRequest;

    move-object v7, v0

    .line 5626
    const-string/jumbo v9, "MMTelSS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ": ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v7, Lcom/mediatek/ims/MMTelSSRequest;->mSerial:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "] "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 5627
    iget v13, v7, Lcom/mediatek/ims/MMTelSSRequest;->mRequest:I

    invoke-static {v13}, Lcom/mediatek/ims/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v13

    .line 5626
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2bb
    .catchall {:try_start_24a .. :try_end_2bb} :catchall_2c9

    .line 5624
    add-int/lit8 v4, v4, 0x1

    goto :goto_27c

    :cond_2be
    :try_start_2be
    monitor-exit v11

    .line 5632
    iget-object v9, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    iget-object v9, v9, Lcom/mediatek/ims/MMTelSSTransport;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2c6
    .catchall {:try_start_2be .. :try_end_2c6} :catchall_2cc

    .end local v2    # "count":I
    .end local v4    # "i":I
    :cond_2c6
    monitor-exit v10

    goto/16 :goto_d

    .line 5618
    :catchall_2c9
    move-exception v9

    :try_start_2ca
    monitor-exit v11

    throw v9
    :try_end_2cc
    .catchall {:try_start_2ca .. :try_end_2cc} :catchall_2cc

    .line 5615
    :catchall_2cc
    move-exception v9

    monitor-exit v10

    throw v9

    .line 5462
    nop

    :pswitch_data_2d0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_236
    .end packed-switch

    .line 5495
    :pswitch_data_2d8
    .packed-switch 0x1
        :pswitch_19b
        :pswitch_1b4
        :pswitch_1b8
        :pswitch_1bc
        :pswitch_1c0
        :pswitch_1db
        :pswitch_1ee
        :pswitch_1f2
        :pswitch_205
        :pswitch_1c4
        :pswitch_1d7
        :pswitch_209
        :pswitch_20d
        :pswitch_211
        :pswitch_215
        :pswitch_228
    .end packed-switch
.end method

.method public handleSetCB(Lcom/mediatek/ims/MMTelSSRequest;)I
    .registers 83
    .param p1, "rr"    # Lcom/mediatek/ims/MMTelSSRequest;

    .prologue
    .line 4048
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 4049
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v77

    .line 4050
    .local v77, "reqNo":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v79

    .line 4051
    .local v79, "serialNo":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 4052
    .local v6, "facility":Ljava/lang/String;
    move-object/from16 v76, v6

    .line 4053
    .local v76, "original_facility":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 4054
    .local v7, "lockState":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 4055
    .local v8, "setCBServiceClass":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 4057
    .local v12, "phoneId":I
    const/16 v57, 0x0

    .line 4058
    .local v57, "AddRuleForBAOCWithAllMediaType":Z
    const/16 v58, 0x0

    .line 4059
    .local v58, "AddRuleForBAOICWithAllMediaType":Z
    const/16 v59, 0x0

    .line 4060
    .local v59, "AddRuleForBAOICxHWithAllMediaType":Z
    const/16 v55, 0x0

    .line 4061
    .local v55, "AddRuleForBAICWithAllMediaType":Z
    const/16 v56, 0x0

    .line 4063
    .local v56, "AddRuleForBAICrWithAllMediaType":Z
    const-string/jumbo v28, "AO"

    .line 4064
    .local v28, "BAOC_RuleID":Ljava/lang/String;
    const-string/jumbo v9, "OI"

    .line 4065
    .local v9, "BAOIC_RuleID":Ljava/lang/String;
    const-string/jumbo v20, "OX"

    .line 4066
    .local v20, "BAOICExHC_RuleID":Ljava/lang/String;
    const-string/jumbo v51, "AI"

    .line 4067
    .local v51, "BAIC_RuleID":Ljava/lang/String;
    const-string/jumbo v43, "IR"

    .line 4069
    .local v43, "BAICR_RuleID":Ljava/lang/String;
    const-string/jumbo v2, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Read from CB parcel:req="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static/range {v77 .. v77}, Lcom/mediatek/ims/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v13, ",facility="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4070
    const-string/jumbo v13, ",serviceClass="

    .line 4069
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4070
    const-string/jumbo v13, ",lockState(enabled)="

    .line 4069
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4074
    const/16 v2, 0x210

    if-ne v8, v2, :cond_98

    .line 4076
    const/16 v8, 0x200

    .line 4079
    :cond_98
    invoke-static {v12}, Lcom/mediatek/ims/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v2

    if-nez v2, :cond_c3

    .line 4080
    const-string/jumbo v2, "MMTelSS"

    const-string/jumbo v10, "handleSetCB(): !isPreferXcap()"

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4081
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_c1

    .line 4082
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    new-instance v10, Ljava/net/UnknownHostException;

    invoke-direct {v10}, Ljava/net/UnknownHostException;-><init>()V

    const/4 v13, 0x0

    invoke-static {v2, v13, v10}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4083
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 4085
    :cond_c1
    const/4 v2, 0x0

    return v2

    .line 4107
    :cond_c3
    const/4 v11, 0x1

    .line 4108
    .local v11, "num_of_expansion":I
    :try_start_c4
    const-string/jumbo v2, "AB"

    move-object/from16 v0, v76

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_116

    .line 4109
    if-nez v7, :cond_116

    .line 4110
    const/4 v11, 0x5

    .line 4119
    :cond_d2
    :goto_d2
    const-string/jumbo v2, "AB"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ed

    .line 4120
    const-string/jumbo v2, "AG"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 4119
    if-nez v2, :cond_ed

    .line 4121
    const-string/jumbo v2, "AC"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 4119
    if-eqz v2, :cond_134

    .line 4122
    :cond_ed
    if-eqz v7, :cond_134

    .line 4125
    const-string/jumbo v2, "MMTelSS"

    const-string/jumbo v10, "Not allow lockState=1 for AB(330)/AG(333)/AC(353)"

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4132
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_134

    .line 4134
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v62

    .line 4135
    .local v62, "ce":Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v10, 0x0

    move-object/from16 v0, v62

    invoke-static {v2, v10, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4136
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 4137
    const/4 v2, 0x0

    return v2

    .line 4111
    .end local v62    # "ce":Lcom/android/internal/telephony/CommandException;
    :cond_116
    const-string/jumbo v2, "AG"

    move-object/from16 v0, v76

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_125

    .line 4112
    if-nez v7, :cond_125

    .line 4113
    const/4 v11, 0x3

    .line 4112
    goto :goto_d2

    .line 4114
    :cond_125
    const-string/jumbo v2, "AC"

    move-object/from16 v0, v76

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d2

    .line 4115
    if-nez v7, :cond_d2

    .line 4116
    const/4 v11, 0x2

    goto :goto_d2

    .line 4142
    :cond_134
    const/4 v3, 0x0

    .line 4143
    .local v3, "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    const/16 v69, 0x0

    .line 4144
    .local v69, "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v64

    .line 4145
    .local v64, "curTime":J
    const-string/jumbo v2, "AO"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15f

    .line 4146
    const-string/jumbo v2, "OI"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 4145
    if-nez v2, :cond_15f

    .line 4147
    const-string/jumbo v2, "OX"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 4145
    if-nez v2, :cond_15f

    .line 4148
    const-string/jumbo v2, "AB"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 4145
    if-eqz v2, :cond_262

    .line 4149
    :cond_15f
    const-string/jumbo v2, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "handleSetCB(): mOcbCache = "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v13}, Lcom/mediatek/ims/MMTelSSTransport;->-get10(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v13, ", curTime = "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, v64

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4150
    const-string/jumbo v13, ", mOcbCacheLastQueried = "

    .line 4149
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4150
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v13}, Lcom/mediatek/ims/MMTelSSTransport;->-get11(Lcom/mediatek/ims/MMTelSSTransport;)J

    move-result-wide v16

    .line 4149
    move-wide/from16 v0, v16

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4151
    const-string/jumbo v13, ", facility = "

    .line 4149
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4151
    const-string/jumbo v13, ", phoneId = "

    .line 4149
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2, v12}, Lcom/mediatek/ims/MMTelSSTransport;->-wrap0(Lcom/mediatek/ims/MMTelSSTransport;I)Z

    move-result v2

    if-nez v2, :cond_1ff

    .line 4154
    const-string/jumbo v2, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "handleSetCB(): OCB XcapRoot = "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    iget-object v13, v13, Lcom/mediatek/ims/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4155
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_1fd

    .line 4156
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    .line 4157
    new-instance v10, Ljava/net/UnknownHostException;

    invoke-direct {v10}, Ljava/net/UnknownHostException;-><init>()V

    .line 4156
    const/4 v13, 0x0

    invoke-static {v2, v13, v10}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4158
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 4160
    :cond_1fd
    const/4 v2, 0x0

    return v2

    .line 4163
    :cond_1ff
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get10(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v2

    if-eqz v2, :cond_31d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get12(Lcom/mediatek/ims/MMTelSSTransport;)I

    move-result v2

    if-ne v12, v2, :cond_31d

    .line 4164
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get10(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->isSupportEtag()Z

    move-result v2

    .line 4163
    if-eqz v2, :cond_31d

    .line 4165
    const-string/jumbo v2, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "handleSetCB(): using ETAG mOcbCache: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v13}, Lcom/mediatek/ims/MMTelSSTransport;->-get10(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4166
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get10(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v3

    .line 4167
    .local v3, "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get9(Lcom/mediatek/ims/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->setNetwork(Landroid/net/Network;)V

    .line 4168
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->refresh()V

    .line 4169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-wide/from16 v0, v64

    invoke-static {v2, v0, v1}, Lcom/mediatek/ims/MMTelSSTransport;->-set10(Lcom/mediatek/ims/MMTelSSTransport;J)J

    .line 4186
    .end local v3    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    :cond_262
    :goto_262
    const-string/jumbo v2, "AI"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27d

    .line 4187
    const-string/jumbo v2, "IR"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 4186
    if-nez v2, :cond_27d

    .line 4188
    const-string/jumbo v2, "AB"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 4186
    if-eqz v2, :cond_504

    .line 4189
    :cond_27d
    const-string/jumbo v2, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "handleSetCB(): mIcbCache = "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v13}, Lcom/mediatek/ims/MMTelSSTransport;->-get6(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v13, ", curTime = "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, v64

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4190
    const-string/jumbo v13, ", mIcbCacheLastQueried = "

    .line 4189
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4190
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v13}, Lcom/mediatek/ims/MMTelSSTransport;->-get7(Lcom/mediatek/ims/MMTelSSTransport;)J

    move-result-wide v16

    .line 4189
    move-wide/from16 v0, v16

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4191
    const-string/jumbo v13, ", facility = "

    .line 4189
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4191
    const-string/jumbo v13, ", phoneId = "

    .line 4189
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2, v12}, Lcom/mediatek/ims/MMTelSSTransport;->-wrap0(Lcom/mediatek/ims/MMTelSSTransport;I)Z

    move-result v2

    if-nez v2, :cond_49f

    .line 4195
    const-string/jumbo v2, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "handleSetCB(): ICB XcapRoot = "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    iget-object v13, v13, Lcom/mediatek/ims/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4196
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_31b

    .line 4197
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    .line 4198
    new-instance v10, Ljava/net/UnknownHostException;

    invoke-direct {v10}, Ljava/net/UnknownHostException;-><init>()V

    .line 4197
    const/4 v13, 0x0

    invoke-static {v2, v13, v10}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4199
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 4201
    :cond_31b
    const/4 v2, 0x0

    return v2

    .line 4170
    .local v3, "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    :cond_31d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get10(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v2

    if-eqz v2, :cond_3d0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get12(Lcom/mediatek/ims/MMTelSSTransport;)I

    move-result v2

    if-ne v12, v2, :cond_3d0

    .line 4171
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get11(Lcom/mediatek/ims/MMTelSSTransport;)J

    move-result-wide v16

    cmp-long v2, v64, v16

    if-ltz v2, :cond_3d0

    .line 4172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get11(Lcom/mediatek/ims/MMTelSSTransport;)J

    move-result-wide v16

    sub-long v16, v64, v16

    const-wide/32 v18, 0x1d4c0

    cmp-long v2, v16, v18

    if-gez v2, :cond_3d0

    .line 4173
    const-string/jumbo v2, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "handleSetCB(): using mOcbCache: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v13}, Lcom/mediatek/ims/MMTelSSTransport;->-get10(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get10(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v3

    .line 4175
    .local v3, "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get9(Lcom/mediatek/ims/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->setNetwork(Landroid/net/Network;)V
    :try_end_383
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_c4 .. :try_end_383} :catch_385
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_383} :catch_429

    goto/16 :goto_262

    .line 4753
    .end local v3    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .end local v64    # "curTime":J
    .end local v69    # "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    :catch_385
    move-exception v80

    .line 4754
    .local v80, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const/4 v10, 0x0

    invoke-static {v2, v10}, Lcom/mediatek/ims/MMTelSSTransport;->-set9(Lcom/mediatek/ims/MMTelSSTransport;Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    .line 4755
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const/4 v10, -0x1

    invoke-static {v2, v10}, Lcom/mediatek/ims/MMTelSSTransport;->-set11(Lcom/mediatek/ims/MMTelSSTransport;I)I

    .line 4756
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-static {v2, v0, v1}, Lcom/mediatek/ims/MMTelSSTransport;->-set10(Lcom/mediatek/ims/MMTelSSTransport;J)J

    .line 4757
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const/4 v10, 0x0

    invoke-static {v2, v10}, Lcom/mediatek/ims/MMTelSSTransport;->-set6(Lcom/mediatek/ims/MMTelSSTransport;Lcom/mediatek/simservs/client/IncomingCommunicationBarring;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    .line 4758
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const/4 v10, -0x1

    invoke-static {v2, v10}, Lcom/mediatek/ims/MMTelSSTransport;->-set8(Lcom/mediatek/ims/MMTelSSTransport;I)I

    .line 4759
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-static {v2, v0, v1}, Lcom/mediatek/ims/MMTelSSTransport;->-set7(Lcom/mediatek/ims/MMTelSSTransport;J)J

    .line 4761
    invoke-virtual/range {v80 .. v80}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v2

    const/16 v10, 0x19c

    if-ne v2, v10, :cond_1043

    .line 4762
    const-string/jumbo v2, "MMTelSS"

    const-string/jumbo v10, "handleSetCB(): HTTP_ERROR_CODE_412"

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4763
    const/16 v2, 0x19c

    return v2

    .line 4177
    .end local v80    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    .local v3, "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .restart local v64    # "curTime":J
    .restart local v69    # "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    :cond_3d0
    :try_start_3d0
    invoke-static {}, Lcom/mediatek/ims/MMTelSSTransport;->-get16()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v10}, Lcom/mediatek/ims/MMTelSSTransport;->-get9(Lcom/mediatek/ims/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v10

    const/4 v13, 0x1

    invoke-virtual {v2, v13, v10}, Lcom/mediatek/simservs/client/SimServs;->getOutgoingCommunicationBarring(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v3

    .line 4178
    .local v3, "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2, v3}, Lcom/mediatek/ims/MMTelSSTransport;->-set9(Lcom/mediatek/ims/MMTelSSTransport;Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    .line 4179
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2, v12}, Lcom/mediatek/ims/MMTelSSTransport;->-set11(Lcom/mediatek/ims/MMTelSSTransport;I)I

    .line 4180
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-wide/from16 v0, v64

    invoke-static {v2, v0, v1}, Lcom/mediatek/ims/MMTelSSTransport;->-set10(Lcom/mediatek/ims/MMTelSSTransport;J)J

    .line 4181
    const-string/jumbo v2, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "handleSetCB(): new mOcbCache = "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v13}, Lcom/mediatek/ims/MMTelSSTransport;->-get10(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4182
    const-string/jumbo v13, ", curTime = "

    .line 4181
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, v64

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_427
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_3d0 .. :try_end_427} :catch_385
    .catch Ljava/lang/Exception; {:try_start_3d0 .. :try_end_427} :catch_429

    goto/16 :goto_262

    .line 4785
    .end local v3    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .end local v64    # "curTime":J
    .end local v69    # "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    :catch_429
    move-exception v66

    .line 4789
    .local v66, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "MMTelSS"

    const-string/jumbo v10, "handleSetCB():Start to Print Stack Trace"

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4790
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const/4 v10, 0x0

    invoke-static {v2, v10}, Lcom/mediatek/ims/MMTelSSTransport;->-set9(Lcom/mediatek/ims/MMTelSSTransport;Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    .line 4791
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const/4 v10, -0x1

    invoke-static {v2, v10}, Lcom/mediatek/ims/MMTelSSTransport;->-set11(Lcom/mediatek/ims/MMTelSSTransport;I)I

    .line 4792
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-static {v2, v0, v1}, Lcom/mediatek/ims/MMTelSSTransport;->-set10(Lcom/mediatek/ims/MMTelSSTransport;J)J

    .line 4793
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const/4 v10, 0x0

    invoke-static {v2, v10}, Lcom/mediatek/ims/MMTelSSTransport;->-set6(Lcom/mediatek/ims/MMTelSSTransport;Lcom/mediatek/simservs/client/IncomingCommunicationBarring;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    .line 4794
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const/4 v10, -0x1

    invoke-static {v2, v10}, Lcom/mediatek/ims/MMTelSSTransport;->-set8(Lcom/mediatek/ims/MMTelSSTransport;I)I

    .line 4795
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-static {v2, v0, v1}, Lcom/mediatek/ims/MMTelSSTransport;->-set7(Lcom/mediatek/ims/MMTelSSTransport;J)J

    .line 4797
    invoke-virtual/range {v66 .. v66}, Ljava/lang/Exception;->printStackTrace()V

    .line 4804
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_1016

    .line 4806
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v62

    .line 4807
    .restart local v62    # "ce":Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v10, 0x0

    move-object/from16 v0, v62

    invoke-static {v2, v10, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4808
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 4809
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_49d

    .line 4810
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 4812
    :cond_49d
    const/4 v2, 0x0

    return v2

    .line 4204
    .end local v62    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v66    # "e":Ljava/lang/Exception;
    .restart local v64    # "curTime":J
    .restart local v69    # "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    :cond_49f
    :try_start_49f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get6(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v2

    if-eqz v2, :cond_68d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get8(Lcom/mediatek/ims/MMTelSSTransport;)I

    move-result v2

    if-ne v12, v2, :cond_68d

    .line 4205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get6(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->isSupportEtag()Z

    move-result v2

    .line 4204
    if-eqz v2, :cond_68d

    .line 4206
    const-string/jumbo v2, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "handleSetCB(): using ETAG mIcbCache: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v13}, Lcom/mediatek/ims/MMTelSSTransport;->-get6(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4207
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get6(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v69

    .line 4208
    .local v69, "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get9(Lcom/mediatek/ims/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    move-object/from16 v0, v69

    invoke-virtual {v0, v2}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->setNetwork(Landroid/net/Network;)V

    .line 4209
    invoke-virtual/range {v69 .. v69}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->refresh()V

    .line 4210
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-wide/from16 v0, v64

    invoke-static {v2, v0, v1}, Lcom/mediatek/ims/MMTelSSTransport;->-set7(Lcom/mediatek/ims/MMTelSSTransport;J)J

    .line 4228
    .end local v69    # "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    :cond_504
    :goto_504
    const/16 v70, 0x0

    .local v70, "it":I
    :goto_506
    move/from16 v0, v70

    if-ge v0, v11, :cond_fe0

    .line 4229
    const/4 v2, 0x1

    if-eq v11, v2, :cond_51d

    .line 4230
    const-string/jumbo v2, "AG"

    move-object/from16 v0, v76

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_766

    .line 4231
    if-nez v70, :cond_752

    const-string/jumbo v6, "OI"

    .line 4248
    :cond_51d
    :goto_51d
    const-string/jumbo v2, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "handleSetCB():num_of_expansion="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4249
    const-string/jumbo v13, ", round="

    .line 4248
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v70

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4249
    const-string/jumbo v13, ",for facility="

    .line 4248
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4249
    const-string/jumbo v13, ",with lockState="

    .line 4248
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4252
    const-string/jumbo v2, "AO"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_575

    .line 4253
    const-string/jumbo v2, "OI"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 4252
    if-nez v2, :cond_575

    .line 4254
    const-string/jumbo v2, "OX"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 4252
    if-eqz v2, :cond_afd

    .line 4255
    :cond_575
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v74

    .line 4256
    .local v74, "oRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v78, 0x0

    .line 4257
    .local v78, "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->createNewRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v4

    .line 4258
    .local v4, "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v61, 0x0

    .line 4260
    .local v61, "addedNewRule":Z
    if-eqz v74, :cond_7bc

    .line 4261
    invoke-virtual/range {v74 .. v74}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v78

    .line 4268
    .end local v78    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :goto_587
    if-eqz v78, :cond_a06

    .line 4269
    const/16 v67, 0x0

    .end local v61    # "addedNewRule":Z
    .local v67, "i":I
    :goto_58b
    invoke-interface/range {v78 .. v78}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v67

    if-ge v0, v2, :cond_a06

    .line 4270
    move-object/from16 v0, v78

    move/from16 v1, v67

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/simservs/client/policy/Rule;

    .line 4271
    .local v5, "r":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v63

    .line 4272
    .local v63, "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v60

    .line 4273
    .local v60, "action":Lcom/mediatek/simservs/client/policy/Actions;
    const/16 v71, 0x0

    .line 4275
    .local v71, "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v63, :cond_811

    .line 4276
    const-string/jumbo v2, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "handleSetCB():MO-facility="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4277
    const-string/jumbo v13, ",action="

    .line 4276
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4277
    invoke-virtual/range {v60 .. v60}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v13

    .line 4276
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4277
    const-string/jumbo v13, ",international="

    .line 4276
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4278
    invoke-virtual/range {v63 .. v63}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v13

    .line 4276
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4279
    const-string/jumbo v13, ",internationalExHC="

    .line 4276
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4280
    invoke-virtual/range {v63 .. v63}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternationalExHc()Z

    move-result v13

    .line 4276
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4281
    invoke-virtual/range {v63 .. v63}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v71

    .line 4282
    .local v71, "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {v63 .. v63}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v2

    if-eqz v2, :cond_7c7

    .line 4283
    iget-object v9, v5, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    .line 4284
    const-string/jumbo v2, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Update BAOIC_RuleID="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4316
    .end local v71    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_616
    :goto_616
    const-string/jumbo v2, "OI"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8ce

    .line 4317
    if-eqz v63, :cond_8ce

    invoke-virtual/range {v63 .. v63}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v2

    .line 4316
    if-eqz v2, :cond_8ce

    .line 4318
    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v1, v8, v12}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;II)Z

    move-result v2

    .line 4316
    if-eqz v2, :cond_8ce

    .line 4320
    if-nez v8, :cond_637

    .line 4321
    if-nez v8, :cond_8bf

    .line 4323
    if-nez v58, :cond_8bf

    .line 4326
    :cond_637
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get17(Lcom/mediatek/ims/MMTelSSTransport;)Z

    move-result v10

    move-object/from16 v2, p0

    .line 4324
    invoke-virtual/range {v2 .. v12}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForExistingCB(Lcom/mediatek/simservs/client/SimservType;Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;Ljava/lang/String;IILjava/lang/String;ZII)Z

    move-result v61

    .line 4328
    .local v61, "addedNewRule":Z
    const-string/jumbo v2, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "handleSetCB():OI-addedNewRule="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v61

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4333
    if-eqz v8, :cond_8bb

    .line 4337
    const/16 v18, -0x1

    const/16 v19, -0x1

    move-object/from16 v13, p0

    move-object v14, v5

    move-object v15, v4

    move/from16 v16, v8

    move/from16 v17, v12

    .line 4336
    invoke-virtual/range {v13 .. v19}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSetExceptSpecificMedia(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;IIII)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v72

    .line 4338
    .local v72, "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    if-eqz v72, :cond_689

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get17(Lcom/mediatek/ims/MMTelSSTransport;)Z

    move-result v2

    if-eqz v2, :cond_689

    .line 4339
    const/4 v2, 0x1

    if-ne v2, v11, :cond_689

    .line 4340
    move-object/from16 v0, v72

    iget-object v2, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    .line 4269
    .end local v61    # "addedNewRule":Z
    .end local v72    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_689
    :goto_689
    add-int/lit8 v67, v67, 0x1

    goto/16 :goto_58b

    .line 4211
    .end local v4    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v5    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v60    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v63    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v67    # "i":I
    .end local v70    # "it":I
    .end local v74    # "oRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .local v69, "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    :cond_68d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get6(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v2

    if-eqz v2, :cond_6f7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get8(Lcom/mediatek/ims/MMTelSSTransport;)I

    move-result v2

    if-ne v12, v2, :cond_6f7

    .line 4212
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get7(Lcom/mediatek/ims/MMTelSSTransport;)J

    move-result-wide v16

    cmp-long v2, v64, v16

    if-ltz v2, :cond_6f7

    .line 4213
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get7(Lcom/mediatek/ims/MMTelSSTransport;)J

    move-result-wide v16

    sub-long v16, v64, v16

    const-wide/32 v18, 0x1d4c0

    cmp-long v2, v16, v18

    if-gez v2, :cond_6f7

    .line 4214
    const-string/jumbo v2, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "handleSetCB(): using mIcbCache: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v13}, Lcom/mediatek/ims/MMTelSSTransport;->-get6(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4215
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get6(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v69

    .line 4216
    .local v69, "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get9(Lcom/mediatek/ims/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    move-object/from16 v0, v69

    invoke-virtual {v0, v2}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->setNetwork(Landroid/net/Network;)V

    goto/16 :goto_504

    .line 4218
    .local v69, "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    :cond_6f7
    invoke-static {}, Lcom/mediatek/ims/MMTelSSTransport;->-get16()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v10}, Lcom/mediatek/ims/MMTelSSTransport;->-get9(Lcom/mediatek/ims/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v10

    const/4 v13, 0x1

    invoke-virtual {v2, v13, v10}, Lcom/mediatek/simservs/client/SimServs;->getIncomingCommunicationBarring(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v69

    .line 4219
    .local v69, "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v0, v69

    invoke-static {v2, v0}, Lcom/mediatek/ims/MMTelSSTransport;->-set6(Lcom/mediatek/ims/MMTelSSTransport;Lcom/mediatek/simservs/client/IncomingCommunicationBarring;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    .line 4220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2, v12}, Lcom/mediatek/ims/MMTelSSTransport;->-set8(Lcom/mediatek/ims/MMTelSSTransport;I)I

    .line 4221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-wide/from16 v0, v64

    invoke-static {v2, v0, v1}, Lcom/mediatek/ims/MMTelSSTransport;->-set7(Lcom/mediatek/ims/MMTelSSTransport;J)J

    .line 4222
    const-string/jumbo v2, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "handleSetCB(): new mIcbCache = "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v13}, Lcom/mediatek/ims/MMTelSSTransport;->-get6(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4223
    const-string/jumbo v13, ", curTime = "

    .line 4222
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, v64

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_504

    .line 4232
    .end local v69    # "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    .restart local v70    # "it":I
    :cond_752
    const/4 v2, 0x1

    move/from16 v0, v70

    if-ne v0, v2, :cond_75c

    const-string/jumbo v6, "OX"

    goto/16 :goto_51d

    .line 4233
    :cond_75c
    const/4 v2, 0x2

    move/from16 v0, v70

    if-ne v0, v2, :cond_51d

    const-string/jumbo v6, "AO"

    goto/16 :goto_51d

    .line 4235
    :cond_766
    const-string/jumbo v2, "AC"

    move-object/from16 v0, v76

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_782

    .line 4236
    if-nez v70, :cond_778

    const-string/jumbo v6, "IR"

    goto/16 :goto_51d

    .line 4237
    :cond_778
    const/4 v2, 0x1

    move/from16 v0, v70

    if-ne v0, v2, :cond_51d

    const-string/jumbo v6, "AI"

    goto/16 :goto_51d

    .line 4239
    :cond_782
    const-string/jumbo v2, "AB"

    move-object/from16 v0, v76

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51d

    .line 4240
    if-nez v70, :cond_794

    const-string/jumbo v6, "OI"

    goto/16 :goto_51d

    .line 4241
    :cond_794
    const/4 v2, 0x1

    move/from16 v0, v70

    if-ne v0, v2, :cond_79e

    const-string/jumbo v6, "OX"

    goto/16 :goto_51d

    .line 4242
    :cond_79e
    const/4 v2, 0x2

    move/from16 v0, v70

    if-ne v0, v2, :cond_7a8

    const-string/jumbo v6, "AO"

    goto/16 :goto_51d

    .line 4243
    :cond_7a8
    const/4 v2, 0x3

    move/from16 v0, v70

    if-ne v0, v2, :cond_7b2

    const-string/jumbo v6, "IR"

    goto/16 :goto_51d

    .line 4244
    :cond_7b2
    const/4 v2, 0x4

    move/from16 v0, v70

    if-ne v0, v2, :cond_51d

    const-string/jumbo v6, "AI"

    goto/16 :goto_51d

    .line 4263
    .restart local v4    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .local v61, "addedNewRule":Z
    .restart local v74    # "oRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .restart local v78    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :cond_7bc
    const-string/jumbo v2, "MMTelSS"

    const-string/jumbo v10, "No MO related CB rules in remote server"

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_587

    .line 4285
    .end local v61    # "addedNewRule":Z
    .end local v78    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v5    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .restart local v60    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v63    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v67    # "i":I
    .restart local v71    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7c7
    invoke-virtual/range {v63 .. v63}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternationalExHc()Z

    move-result v2

    if-eqz v2, :cond_7ef

    .line 4286
    iget-object v0, v5, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 4287
    const-string/jumbo v2, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Update BAOICExHC_RuleID="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_616

    .line 4290
    :cond_7ef
    iget-object v0, v5, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v28, v0

    .line 4291
    const-string/jumbo v2, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Update BAOC_RuleID="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_616

    .line 4295
    .local v71, "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_811
    if-nez v63, :cond_874

    .line 4297
    const-string/jumbo v2, "AO"

    .line 4296
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 4295
    if-eqz v2, :cond_874

    .line 4298
    const-string/jumbo v2, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "handleSetCB():cond=null but AO case!MO-facility="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4300
    const-string/jumbo v13, ",action="

    .line 4298
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4300
    invoke-virtual/range {v60 .. v60}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v13

    .line 4298
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4301
    const/16 v71, 0x0

    .line 4302
    const-string/jumbo v2, "AO"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_616

    .line 4303
    iget-object v0, v5, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v28, v0

    .line 4304
    const-string/jumbo v2, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Update BAOC_RuleID="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_616

    .line 4307
    :cond_874
    const-string/jumbo v2, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "handleSetCB():Empty MO cond (cond==null) for this rule="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4309
    const-string/jumbo v2, "AO"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_616

    .line 4310
    iget-object v0, v5, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v28, v0

    .line 4311
    const-string/jumbo v2, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Update BAOC_RuleID="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_616

    .line 4343
    .end local v71    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v61, "addedNewRule":Z
    :cond_8bb
    const/16 v58, 0x1

    goto/16 :goto_689

    .line 4345
    .end local v61    # "addedNewRule":Z
    :cond_8bf
    if-nez v8, :cond_689

    .line 4347
    if-eqz v58, :cond_689

    .line 4348
    const-string/jumbo v2, "MMTelSS"

    const-string/jumbo v10, "Already add rule for BAOIC with serviceClass=0 case previously"

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_689

    .line 4352
    :cond_8ce
    const-string/jumbo v2, "OX"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_964

    .line 4353
    if-eqz v63, :cond_964

    invoke-virtual/range {v63 .. v63}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternationalExHc()Z

    move-result v2

    .line 4352
    if-eqz v2, :cond_964

    .line 4354
    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v1, v8, v12}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;II)Z

    move-result v2

    .line 4352
    if-eqz v2, :cond_964

    .line 4356
    if-nez v8, :cond_8ef

    .line 4357
    if-nez v8, :cond_955

    .line 4359
    if-nez v59, :cond_955

    .line 4363
    :cond_8ef
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get17(Lcom/mediatek/ims/MMTelSSTransport;)Z

    move-result v21

    move-object/from16 v13, p0

    move-object v14, v3

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v22, v11

    move/from16 v23, v12

    .line 4360
    invoke-virtual/range {v13 .. v23}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForExistingCB(Lcom/mediatek/simservs/client/SimservType;Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;Ljava/lang/String;IILjava/lang/String;ZII)Z

    move-result v61

    .line 4364
    .restart local v61    # "addedNewRule":Z
    const-string/jumbo v2, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "handleSetCB():OX-addedNewRule="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v61

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4369
    if-eqz v8, :cond_951

    .line 4373
    const/16 v18, -0x1

    const/16 v19, -0x1

    move-object/from16 v13, p0

    move-object v14, v5

    move-object v15, v4

    move/from16 v16, v8

    move/from16 v17, v12

    .line 4372
    invoke-virtual/range {v13 .. v19}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSetExceptSpecificMedia(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;IIII)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v72

    .line 4374
    .restart local v72    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    if-eqz v72, :cond_689

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get17(Lcom/mediatek/ims/MMTelSSTransport;)Z

    move-result v2

    if-eqz v2, :cond_689

    .line 4375
    const/4 v2, 0x1

    if-ne v2, v11, :cond_689

    .line 4376
    move-object/from16 v0, v72

    iget-object v2, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    goto/16 :goto_689

    .line 4379
    .end local v72    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_951
    const/16 v59, 0x1

    goto/16 :goto_689

    .line 4381
    .end local v61    # "addedNewRule":Z
    :cond_955
    if-nez v8, :cond_689

    .line 4383
    if-eqz v59, :cond_689

    .line 4384
    const-string/jumbo v2, "MMTelSS"

    const-string/jumbo v10, "Already add rule for BAOICxH with serviceClass=0 case previously"

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_689

    .line 4388
    :cond_964
    const-string/jumbo v2, "AO"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9f4

    .line 4389
    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1, v8, v12}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->isBAOC(Lcom/mediatek/simservs/client/policy/Conditions;II)Z

    move-result v2

    .line 4388
    if-eqz v2, :cond_9f4

    .line 4391
    if-nez v8, :cond_97d

    .line 4392
    if-nez v8, :cond_9e5

    .line 4394
    if-nez v57, :cond_9e5

    .line 4397
    :cond_97d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get17(Lcom/mediatek/ims/MMTelSSTransport;)Z

    move-result v29

    move-object/from16 v21, p0

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move/from16 v26, v7

    move/from16 v27, v8

    move/from16 v30, v11

    move/from16 v31, v12

    .line 4395
    invoke-virtual/range {v21 .. v31}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForExistingCB(Lcom/mediatek/simservs/client/SimservType;Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;Ljava/lang/String;IILjava/lang/String;ZII)Z

    move-result v61

    .line 4399
    .restart local v61    # "addedNewRule":Z
    const-string/jumbo v2, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "handleSetCB():AO-addedNewRule="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v61

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4404
    if-eqz v8, :cond_9e1

    .line 4408
    const/16 v18, -0x1

    const/16 v19, -0x1

    move-object/from16 v13, p0

    move-object v14, v5

    move-object v15, v4

    move/from16 v16, v8

    move/from16 v17, v12

    .line 4407
    invoke-virtual/range {v13 .. v19}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSetExceptSpecificMedia(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;IIII)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v72

    .line 4409
    .restart local v72    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    if-eqz v72, :cond_689

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get17(Lcom/mediatek/ims/MMTelSSTransport;)Z

    move-result v2

    if-eqz v2, :cond_689

    .line 4410
    const/4 v2, 0x1

    if-ne v2, v11, :cond_689

    .line 4411
    move-object/from16 v0, v72

    iget-object v2, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    goto/16 :goto_689

    .line 4414
    .end local v72    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_9e1
    const/16 v57, 0x1

    goto/16 :goto_689

    .line 4416
    .end local v61    # "addedNewRule":Z
    :cond_9e5
    if-nez v8, :cond_689

    .line 4418
    if-eqz v57, :cond_689

    .line 4419
    const-string/jumbo v2, "MMTelSS"

    const-string/jumbo v10, "Already add rule for BAOC with serviceClass=0 case previously"

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_689

    .line 4425
    :cond_9f4
    const-string/jumbo v2, "MMTelSS"

    const-string/jumbo v10, "handleSetCB():MO Copy old rule inot newRuleSet"

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4427
    const/4 v2, -0x1

    const/4 v10, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4, v2, v10}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSet(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;II)Lcom/mediatek/simservs/client/policy/Rule;

    goto/16 :goto_689

    .line 4441
    .end local v5    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v60    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v63    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v67    # "i":I
    :cond_a06
    if-nez v61, :cond_a7e

    .line 4446
    const-string/jumbo v2, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "handleSetCB():MO add new rule for this time\'s request-facility="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4447
    const-string/jumbo v13, ",lockState="

    .line 4446
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4448
    const-string/jumbo v13, ",serviceClass="

    .line 4446
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4449
    const-string/jumbo v35, ""

    .line 4451
    .local v35, "newRuleID":Ljava/lang/String;
    const-string/jumbo v2, "AO"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ab3

    .line 4452
    move-object/from16 v35, v28

    .line 4458
    :cond_a46
    :goto_a46
    const-string/jumbo v2, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "handleSetCB():MO add new rule with id="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v35

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4460
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get17(Lcom/mediatek/ims/MMTelSSTransport;)Z

    move-result v36

    move-object/from16 v29, p0

    move-object/from16 v30, v3

    move-object/from16 v31, v4

    move-object/from16 v32, v6

    move/from16 v33, v7

    move/from16 v34, v8

    move/from16 v37, v11

    move/from16 v38, v12

    .line 4459
    invoke-virtual/range {v29 .. v38}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForReqCB(Lcom/mediatek/simservs/client/SimservType;Lcom/mediatek/simservs/client/policy/RuleSet;Ljava/lang/String;IILjava/lang/String;ZII)Z

    move-result v61

    .line 4466
    .end local v35    # "newRuleID":Ljava/lang/String;
    :cond_a7e
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_acc

    .line 4467
    const-string/jumbo v2, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Dump MO SetCB  XML:"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/RuleSet;->toXmlString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4472
    :goto_aa2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get17(Lcom/mediatek/ims/MMTelSSTransport;)Z

    move-result v2

    if-nez v2, :cond_ad6

    .line 4473
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->saveRuleSet()V

    .line 4228
    .end local v4    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v74    # "oRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_aaf
    :goto_aaf
    add-int/lit8 v70, v70, 0x1

    goto/16 :goto_506

    .line 4453
    .restart local v4    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .restart local v35    # "newRuleID":Ljava/lang/String;
    .restart local v74    # "oRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_ab3
    const-string/jumbo v2, "OI"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_abf

    .line 4454
    move-object/from16 v35, v9

    goto :goto_a46

    .line 4455
    :cond_abf
    const-string/jumbo v2, "OX"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a46

    .line 4456
    move-object/from16 v35, v20

    goto/16 :goto_a46

    .line 4469
    .end local v35    # "newRuleID":Ljava/lang/String;
    :cond_acc
    const-string/jumbo v2, "MMTelSS"

    const-string/jumbo v10, "Dump MO SetCB XML: ruleset with empty rules"

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_aa2

    .line 4475
    :cond_ad6
    const/4 v2, 0x1

    if-le v11, v2, :cond_aaf

    .line 4476
    const/16 v73, 0x0

    .line 4477
    .local v73, "newRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v73

    .line 4478
    .local v73, "newRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    const/16 v67, 0x0

    .restart local v67    # "i":I
    :goto_ae1
    invoke-interface/range {v73 .. v73}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v67

    if-ge v0, v2, :cond_aaf

    .line 4479
    move-object/from16 v0, v73

    move/from16 v1, v67

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Lcom/mediatek/simservs/client/policy/Rule;

    .line 4480
    .restart local v72    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    move-object/from16 v0, v72

    iget-object v2, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    .line 4478
    add-int/lit8 v67, v67, 0x1

    goto :goto_ae1

    .line 4484
    .end local v4    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v67    # "i":I
    .end local v72    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v73    # "newRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v74    # "oRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_afd
    const-string/jumbo v2, "AI"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b0f

    .line 4485
    const-string/jumbo v2, "IR"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 4484
    if-eqz v2, :cond_e5b

    .line 4487
    :cond_b0f
    invoke-virtual/range {v69 .. v69}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v68

    .line 4488
    .local v68, "iRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v78, 0x0

    .line 4489
    .restart local v78    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-virtual/range {v69 .. v69}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->createNewRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v4

    .line 4490
    .restart local v4    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v61, 0x0

    .line 4492
    .local v61, "addedNewRule":Z
    if-eqz v68, :cond_c3d

    .line 4493
    invoke-virtual/range {v68 .. v68}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v78

    .line 4500
    .end local v78    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :goto_b21
    if-eqz v78, :cond_d71

    .line 4501
    const/16 v67, 0x0

    .end local v61    # "addedNewRule":Z
    .restart local v67    # "i":I
    :goto_b25
    invoke-interface/range {v78 .. v78}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v67

    if-ge v0, v2, :cond_d71

    .line 4502
    move-object/from16 v0, v78

    move/from16 v1, v67

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/simservs/client/policy/Rule;

    .line 4503
    .restart local v5    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v63

    .line 4504
    .restart local v63    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v60

    .line 4505
    .restart local v60    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    const/16 v71, 0x0

    .line 4507
    .restart local v71    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v63, :cond_c6a

    .line 4508
    const-string/jumbo v2, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "handleSetCB():MT-facility="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4509
    const-string/jumbo v13, ",action="

    .line 4508
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4509
    invoke-virtual/range {v60 .. v60}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v13

    .line 4508
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4509
    const-string/jumbo v13, ",international="

    .line 4508
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4510
    invoke-virtual/range {v63 .. v63}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v13

    .line 4508
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4510
    const-string/jumbo v13, ",roaming="

    .line 4508
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4511
    invoke-virtual/range {v63 .. v63}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v13

    .line 4508
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4512
    invoke-virtual/range {v63 .. v63}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v71

    .line 4513
    .local v71, "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {v63 .. v63}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v2

    if-eqz v2, :cond_c48

    .line 4514
    iget-object v0, v5, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v43, v0

    .line 4515
    const-string/jumbo v2, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Update BAICR_RuleID="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v43

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4529
    .end local v71    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_bb4
    :goto_bb4
    const-string/jumbo v2, "IR"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cc3

    .line 4530
    if-eqz v63, :cond_cc3

    invoke-virtual/range {v63 .. v63}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v2

    if-eqz v2, :cond_cc3

    .line 4531
    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v1, v8, v12}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;II)Z

    move-result v2

    .line 4529
    if-eqz v2, :cond_cc3

    .line 4533
    if-nez v8, :cond_bd5

    .line 4534
    if-nez v8, :cond_cb4

    .line 4536
    if-nez v56, :cond_cb4

    .line 4540
    :cond_bd5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get17(Lcom/mediatek/ims/MMTelSSTransport;)Z

    move-result v44

    move-object/from16 v36, p0

    move-object/from16 v37, v69

    move-object/from16 v38, v4

    move-object/from16 v39, v5

    move-object/from16 v40, v6

    move/from16 v41, v7

    move/from16 v42, v8

    move/from16 v45, v11

    move/from16 v46, v12

    .line 4538
    invoke-virtual/range {v36 .. v46}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForExistingCB(Lcom/mediatek/simservs/client/SimservType;Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;Ljava/lang/String;IILjava/lang/String;ZII)Z

    move-result v61

    .line 4542
    .local v61, "addedNewRule":Z
    const-string/jumbo v2, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "handleSetCB():IR-addedNewRule="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v61

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4547
    if-eqz v8, :cond_cb1

    .line 4551
    const/16 v18, -0x1

    const/16 v19, -0x1

    move-object/from16 v13, p0

    move-object v14, v5

    move-object v15, v4

    move/from16 v16, v8

    move/from16 v17, v12

    .line 4550
    invoke-virtual/range {v13 .. v19}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSetExceptSpecificMedia(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;IIII)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v72

    .line 4552
    .restart local v72    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    if-eqz v72, :cond_c39

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get17(Lcom/mediatek/ims/MMTelSSTransport;)Z

    move-result v2

    if-eqz v2, :cond_c39

    .line 4553
    const/4 v2, 0x1

    if-ne v2, v11, :cond_c39

    .line 4554
    move-object/from16 v0, v72

    iget-object v2, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v0, v69

    invoke-virtual {v0, v2}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    .line 4501
    .end local v61    # "addedNewRule":Z
    .end local v72    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_c39
    :goto_c39
    add-int/lit8 v67, v67, 0x1

    goto/16 :goto_b25

    .line 4495
    .end local v5    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v60    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v63    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v67    # "i":I
    .local v61, "addedNewRule":Z
    .restart local v78    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :cond_c3d
    const-string/jumbo v2, "MMTelSS"

    const-string/jumbo v10, "No MT related CB rules in remote server"

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b21

    .line 4517
    .end local v61    # "addedNewRule":Z
    .end local v78    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v5    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .restart local v60    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v63    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v67    # "i":I
    .restart local v71    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_c48
    iget-object v0, v5, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v51, v0

    .line 4518
    const-string/jumbo v2, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Update BAIC_RuleID="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v51

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_bb4

    .line 4521
    .local v71, "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_c6a
    const-string/jumbo v2, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "handleSetCB():Empty MT cond (cond==null) for this rule="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4523
    const-string/jumbo v2, "AI"

    move-object/from16 v0, v51

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bb4

    .line 4524
    iget-object v0, v5, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v51, v0

    .line 4525
    const-string/jumbo v2, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Update BAIC_RuleID="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v51

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_bb4

    .line 4557
    .end local v71    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v61, "addedNewRule":Z
    :cond_cb1
    const/16 v56, 0x1

    goto :goto_c39

    .line 4559
    .end local v61    # "addedNewRule":Z
    :cond_cb4
    if-nez v8, :cond_c39

    .line 4561
    if-eqz v56, :cond_c39

    .line 4562
    const-string/jumbo v2, "MMTelSS"

    const-string/jumbo v10, "Already add rule for BAICr with serviceClass=0 case previously"

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c39

    .line 4566
    :cond_cc3
    const-string/jumbo v2, "AI"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d5f

    .line 4567
    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1, v8, v12}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->isBAIC(Lcom/mediatek/simservs/client/policy/Conditions;II)Z

    move-result v2

    .line 4566
    if-eqz v2, :cond_d5f

    .line 4568
    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v1, v8, v12}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;II)Z

    move-result v2

    .line 4566
    if-eqz v2, :cond_d5f

    .line 4570
    if-nez v8, :cond_ce6

    .line 4571
    if-nez v8, :cond_d50

    .line 4573
    if-nez v55, :cond_d50

    .line 4576
    :cond_ce6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get17(Lcom/mediatek/ims/MMTelSSTransport;)Z

    move-result v52

    move-object/from16 v44, p0

    move-object/from16 v45, v69

    move-object/from16 v46, v4

    move-object/from16 v47, v5

    move-object/from16 v48, v6

    move/from16 v49, v7

    move/from16 v50, v8

    move/from16 v53, v11

    move/from16 v54, v12

    .line 4574
    invoke-virtual/range {v44 .. v54}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForExistingCB(Lcom/mediatek/simservs/client/SimservType;Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;Ljava/lang/String;IILjava/lang/String;ZII)Z

    move-result v61

    .line 4578
    .restart local v61    # "addedNewRule":Z
    const-string/jumbo v2, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "handleSetCB():AI-addedNewRule="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v61

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4583
    if-eqz v8, :cond_d4c

    .line 4588
    const/16 v18, -0x1

    const/16 v19, -0x1

    move-object/from16 v13, p0

    move-object v14, v5

    move-object v15, v4

    move/from16 v16, v8

    move/from16 v17, v12

    .line 4586
    invoke-virtual/range {v13 .. v19}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSetExceptSpecificMedia(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;IIII)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v72

    .line 4589
    .restart local v72    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    if-eqz v72, :cond_c39

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get17(Lcom/mediatek/ims/MMTelSSTransport;)Z

    move-result v2

    if-eqz v2, :cond_c39

    .line 4590
    const/4 v2, 0x1

    if-ne v2, v11, :cond_c39

    .line 4591
    move-object/from16 v0, v72

    iget-object v2, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v0, v69

    invoke-virtual {v0, v2}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    goto/16 :goto_c39

    .line 4594
    .end local v72    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_d4c
    const/16 v55, 0x1

    goto/16 :goto_c39

    .line 4596
    .end local v61    # "addedNewRule":Z
    :cond_d50
    if-nez v8, :cond_c39

    .line 4598
    if-eqz v55, :cond_c39

    .line 4599
    const-string/jumbo v2, "MMTelSS"

    const-string/jumbo v10, "Already add rule for BAIC with serviceClass=0 case previously"

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c39

    .line 4605
    :cond_d5f
    const-string/jumbo v2, "MMTelSS"

    const-string/jumbo v10, "handleSetCB():MT Copy old rule inot newRuleSet"

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4607
    const/4 v2, -0x1

    const/4 v10, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4, v2, v10}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSet(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;II)Lcom/mediatek/simservs/client/policy/Rule;

    goto/16 :goto_c39

    .line 4614
    .end local v5    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v60    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v63    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v67    # "i":I
    :cond_d71
    if-nez v61, :cond_de9

    .line 4619
    const-string/jumbo v2, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "handleSetCB():MT add new rule for this time\'s request-facility="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4620
    const-string/jumbo v13, ",lockState="

    .line 4619
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4621
    const-string/jumbo v13, ",serviceClass="

    .line 4619
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4622
    const-string/jumbo v35, ""

    .line 4624
    .restart local v35    # "newRuleID":Ljava/lang/String;
    const-string/jumbo v2, "AI"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e1c

    .line 4625
    move-object/from16 v35, v51

    .line 4629
    :cond_db1
    :goto_db1
    const-string/jumbo v2, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "handleSetCB():MT add new rule with id="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v35

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4631
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get17(Lcom/mediatek/ims/MMTelSSTransport;)Z

    move-result v36

    move-object/from16 v29, p0

    move-object/from16 v30, v69

    move-object/from16 v31, v4

    move-object/from16 v32, v6

    move/from16 v33, v7

    move/from16 v34, v8

    move/from16 v37, v11

    move/from16 v38, v12

    .line 4630
    invoke-virtual/range {v29 .. v38}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForReqCB(Lcom/mediatek/simservs/client/SimservType;Lcom/mediatek/simservs/client/policy/RuleSet;Ljava/lang/String;IILjava/lang/String;ZII)Z

    move-result v61

    .line 4637
    .end local v35    # "newRuleID":Ljava/lang/String;
    :cond_de9
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_e28

    .line 4638
    const-string/jumbo v2, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Dump MT SetCB XML:"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/RuleSet;->toXmlString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4643
    :goto_e0d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get17(Lcom/mediatek/ims/MMTelSSTransport;)Z

    move-result v2

    if-nez v2, :cond_e32

    .line 4644
    invoke-virtual/range {v69 .. v69}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->saveRuleSet()V

    goto/16 :goto_aaf

    .line 4626
    .restart local v35    # "newRuleID":Ljava/lang/String;
    :cond_e1c
    const-string/jumbo v2, "IR"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_db1

    .line 4627
    move-object/from16 v35, v43

    goto :goto_db1

    .line 4640
    .end local v35    # "newRuleID":Ljava/lang/String;
    :cond_e28
    const-string/jumbo v2, "MMTelSS"

    const-string/jumbo v10, "Dump MT SetCB XML: ruleset with empty rules"

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e0d

    .line 4646
    :cond_e32
    const/4 v2, 0x1

    if-le v11, v2, :cond_aaf

    .line 4647
    const/16 v73, 0x0

    .line 4648
    .local v73, "newRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v73

    .line 4649
    .local v73, "newRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    const/16 v67, 0x0

    .restart local v67    # "i":I
    :goto_e3d
    invoke-interface/range {v73 .. v73}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v67

    if-ge v0, v2, :cond_aaf

    .line 4650
    move-object/from16 v0, v73

    move/from16 v1, v67

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Lcom/mediatek/simservs/client/policy/Rule;

    .line 4651
    .restart local v72    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    move-object/from16 v0, v72

    iget-object v2, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v0, v69

    invoke-virtual {v0, v2}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    .line 4649
    add-int/lit8 v67, v67, 0x1

    goto :goto_e3d

    .line 4655
    .end local v4    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v67    # "i":I
    .end local v68    # "iRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v72    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v73    # "newRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :cond_e5b
    const-string/jumbo v2, "AB"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fbf

    .line 4656
    if-nez v7, :cond_fbf

    .line 4660
    const/16 v23, 0x0

    .line 4661
    .local v23, "iNewRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/4 v15, 0x0

    .line 4662
    .local v15, "oNewRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v75, 0x0

    .line 4663
    .local v75, "oldRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v78, 0x0

    .line 4669
    .restart local v78    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v75

    .line 4670
    .local v75, "oldRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    if-eqz v75, :cond_ea0

    .line 4671
    invoke-virtual/range {v75 .. v75}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v78

    .line 4676
    .end local v78    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :goto_e77
    if-eqz v78, :cond_f3d

    .line 4677
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->createNewRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v15

    .line 4678
    .local v15, "oNewRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v67, 0x0

    .restart local v67    # "i":I
    :goto_e7f
    invoke-interface/range {v78 .. v78}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v67

    if-ge v0, v2, :cond_eaa

    .line 4679
    move-object/from16 v0, v78

    move/from16 v1, v67

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/simservs/client/policy/Rule;

    .line 4680
    .restart local v5    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    const/16 v16, 0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    move-object/from16 v13, p0

    move-object v14, v5

    invoke-virtual/range {v13 .. v18}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSetWithDisabledCB(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;ZII)V

    .line 4678
    add-int/lit8 v67, v67, 0x1

    goto :goto_e7f

    .line 4673
    .end local v5    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v67    # "i":I
    .local v15, "oNewRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .restart local v78    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :cond_ea0
    const-string/jumbo v2, "MMTelSS"

    const-string/jumbo v10, "No MO related CB rules in remote server"

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e77

    .line 4683
    .end local v78    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .local v15, "oNewRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .restart local v67    # "i":I
    :cond_eaa
    invoke-virtual {v15}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_f0f

    .line 4684
    const-string/jumbo v2, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Dump MO Disable All CB XML:"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4685
    invoke-virtual {v15}, Lcom/mediatek/simservs/client/policy/RuleSet;->toXmlString()Ljava/lang/String;

    move-result-object v13

    .line 4684
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4690
    :goto_ece
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get17(Lcom/mediatek/ims/MMTelSSTransport;)Z

    move-result v2

    if-nez v2, :cond_f19

    .line 4691
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->saveRuleSet()V

    .line 4704
    .end local v15    # "oNewRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v67    # "i":I
    :cond_edb
    :goto_edb
    invoke-virtual/range {v69 .. v69}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v75

    .line 4705
    if-eqz v75, :cond_f47

    .line 4706
    invoke-virtual/range {v75 .. v75}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v78

    .line 4711
    :goto_ee5
    if-eqz v78, :cond_fb4

    .line 4712
    invoke-virtual/range {v69 .. v69}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->createNewRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v23

    .line 4713
    .local v23, "iNewRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v67, 0x0

    .restart local v67    # "i":I
    :goto_eed
    invoke-interface/range {v78 .. v78}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v67

    if-ge v0, v2, :cond_f51

    .line 4714
    move-object/from16 v0, v78

    move/from16 v1, v67

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/simservs/client/policy/Rule;

    .line 4715
    .restart local v5    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    const/16 v24, 0x1

    const/16 v25, -0x1

    const/16 v26, -0x1

    move-object/from16 v21, p0

    move-object/from16 v22, v5

    invoke-virtual/range {v21 .. v26}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSetWithDisabledCB(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;ZII)V

    .line 4713
    add-int/lit8 v67, v67, 0x1

    goto :goto_eed

    .line 4687
    .end local v5    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .restart local v15    # "oNewRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .local v23, "iNewRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_f0f
    const-string/jumbo v2, "MMTelSS"

    const-string/jumbo v10, "Dump MO Disable All CB XML: ruleset with empty rules"

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ece

    .line 4693
    :cond_f19
    const/16 v73, 0x0

    .line 4694
    .local v73, "newRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-virtual {v15}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v73

    .line 4695
    .local v73, "newRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    const/16 v67, 0x0

    :goto_f21
    invoke-interface/range {v73 .. v73}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v67

    if-ge v0, v2, :cond_edb

    .line 4696
    move-object/from16 v0, v73

    move/from16 v1, v67

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Lcom/mediatek/simservs/client/policy/Rule;

    .line 4697
    .restart local v72    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    move-object/from16 v0, v72

    iget-object v2, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    .line 4695
    add-int/lit8 v67, v67, 0x1

    goto :goto_f21

    .line 4701
    .end local v67    # "i":I
    .end local v72    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v73    # "newRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .local v15, "oNewRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_f3d
    const-string/jumbo v2, "MMTelSS"

    const-string/jumbo v10, "No MO related CB rules in remote server"

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_edb

    .line 4708
    .end local v15    # "oNewRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_f47
    const-string/jumbo v2, "MMTelSS"

    const-string/jumbo v10, "No MT related CB rules in remote server"

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ee5

    .line 4718
    .local v23, "iNewRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .restart local v67    # "i":I
    :cond_f51
    invoke-virtual/range {v23 .. v23}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_f84

    .line 4719
    const-string/jumbo v2, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Dump MT Disable All CB XML:"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4720
    invoke-virtual/range {v23 .. v23}, Lcom/mediatek/simservs/client/policy/RuleSet;->toXmlString()Ljava/lang/String;

    move-result-object v13

    .line 4719
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4725
    :goto_f75
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get17(Lcom/mediatek/ims/MMTelSSTransport;)Z

    move-result v2

    if-nez v2, :cond_f8e

    .line 4726
    invoke-virtual/range {v69 .. v69}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->saveRuleSet()V

    goto/16 :goto_aaf

    .line 4722
    :cond_f84
    const-string/jumbo v2, "MMTelSS"

    const-string/jumbo v10, "Dump MT Disable All CB XML: ruleset with empty rules"

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f75

    .line 4728
    :cond_f8e
    const/16 v73, 0x0

    .line 4729
    .local v73, "newRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-virtual/range {v23 .. v23}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v73

    .line 4730
    .local v73, "newRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    const/16 v67, 0x0

    :goto_f96
    invoke-interface/range {v73 .. v73}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v67

    if-ge v0, v2, :cond_aaf

    .line 4731
    move-object/from16 v0, v73

    move/from16 v1, v67

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Lcom/mediatek/simservs/client/policy/Rule;

    .line 4732
    .restart local v72    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    move-object/from16 v0, v72

    iget-object v2, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v0, v69

    invoke-virtual {v0, v2}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    .line 4730
    add-int/lit8 v67, v67, 0x1

    goto :goto_f96

    .line 4736
    .end local v67    # "i":I
    .end local v72    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v73    # "newRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .local v23, "iNewRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_fb4
    const-string/jumbo v2, "MMTelSS"

    const-string/jumbo v10, "No MT related CB rules in remote server"

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_aaf

    .line 4741
    .end local v23    # "iNewRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v75    # "oldRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_fbf
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Unrecognized SET_CB facility= "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4742
    const-string/jumbo v13, " and its parameters"

    .line 4741
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4746
    :cond_fe0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const/4 v10, 0x0

    invoke-static {v2, v10}, Lcom/mediatek/ims/MMTelSSTransport;->-set9(Lcom/mediatek/ims/MMTelSSTransport;Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    .line 4747
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const/4 v10, -0x1

    invoke-static {v2, v10}, Lcom/mediatek/ims/MMTelSSTransport;->-set11(Lcom/mediatek/ims/MMTelSSTransport;I)I

    .line 4748
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-static {v2, v0, v1}, Lcom/mediatek/ims/MMTelSSTransport;->-set10(Lcom/mediatek/ims/MMTelSSTransport;J)J

    .line 4749
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const/4 v10, 0x0

    invoke-static {v2, v10}, Lcom/mediatek/ims/MMTelSSTransport;->-set6(Lcom/mediatek/ims/MMTelSSTransport;Lcom/mediatek/simservs/client/IncomingCommunicationBarring;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    .line 4750
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const/4 v10, -0x1

    invoke-static {v2, v10}, Lcom/mediatek/ims/MMTelSSTransport;->-set8(Lcom/mediatek/ims/MMTelSSTransport;I)I

    .line 4751
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-static {v2, v0, v1}, Lcom/mediatek/ims/MMTelSSTransport;->-set7(Lcom/mediatek/ims/MMTelSSTransport;J)J
    :try_end_1016
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_49f .. :try_end_1016} :catch_385
    .catch Ljava/lang/Exception; {:try_start_49f .. :try_end_1016} :catch_429

    .line 4818
    .end local v64    # "curTime":J
    .end local v70    # "it":I
    :cond_1016
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_102c

    .line 4819
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v10, 0x0

    const/4 v13, 0x0

    invoke-static {v2, v10, v13}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4820
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 4823
    :cond_102c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_1041

    .line 4824
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 4827
    :cond_1041
    const/4 v2, 0x0

    return v2

    .line 4765
    .restart local v80    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_1043
    const-string/jumbo v2, "MMTelSS"

    const-string/jumbo v10, "handleSetCB(): XcapException"

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4766
    invoke-virtual/range {v80 .. v80}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 4767
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_1016

    .line 4768
    invoke-virtual/range {v80 .. v80}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v2

    if-eqz v2, :cond_108f

    .line 4769
    const-string/jumbo v2, "MMTelSS"

    const-string/jumbo v10, "handleSetCB(): xcapException.isConnectionError()"

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4770
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    new-instance v10, Ljava/net/UnknownHostException;

    invoke-direct {v10}, Ljava/net/UnknownHostException;-><init>()V

    const/4 v13, 0x0

    invoke-static {v2, v13, v10}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4779
    :goto_1071
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 4780
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_108d

    .line 4781
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 4783
    :cond_108d
    const/4 v2, 0x0

    return v2

    .line 4771
    :cond_108f
    invoke-static {v12}, Lcom/mediatek/ims/MMTelSSUtils;->isOp06IccCard(I)Z

    move-result v2

    if-eqz v2, :cond_10c7

    .line 4772
    invoke-virtual/range {v80 .. v80}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v2

    if-eqz v2, :cond_10c7

    .line 4773
    const-string/jumbo v2, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "handleSetCB(): OP06 with http Error: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4774
    invoke-virtual/range {v80 .. v80}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v13

    .line 4773
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4775
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    new-instance v10, Ljava/net/UnknownHostException;

    invoke-direct {v10}, Ljava/net/UnknownHostException;-><init>()V

    const/4 v13, 0x0

    invoke-static {v2, v13, v10}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_1071

    .line 4777
    :cond_10c7
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v10, 0x0

    move-object/from16 v0, v80

    invoke-static {v2, v10, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_1071
.end method

.method public handleSetCF(Lcom/mediatek/ims/MMTelSSRequest;)I
    .registers 96
    .param p1, "rr"    # Lcom/mediatek/ims/MMTelSSRequest;

    .prologue
    .line 3205
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3206
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v87

    .line 3207
    .local v87, "reqNo":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v91

    .line 3209
    .local v91, "serialNo":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 3210
    .local v7, "setCFAction":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3211
    .local v6, "setCFReason":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 3212
    .local v8, "setCFServiceClass":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 3213
    .local v9, "setCFNumber":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 3214
    .local v10, "setCFTimeSeconds":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 3215
    .local v14, "phoneId":I
    const/16 v86, 0x0

    .line 3217
    .local v86, "reportFlag":I
    const/16 v79, 0x0

    .line 3219
    .local v79, "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    const/16 v64, 0x0

    .line 3220
    .local v64, "AddRuleForCFUWithAllMediaType":Z
    const/16 v60, 0x0

    .line 3221
    .local v60, "AddRuleForCFBWithAllMediaType":Z
    const/16 v61, 0x0

    .line 3222
    .local v61, "AddRuleForCFNoAnswerWithAllMediaType":Z
    const/16 v62, 0x0

    .line 3223
    .local v62, "AddRuleForCFNotReachableWithAllMediaType":Z
    const/16 v63, 0x0

    .line 3225
    .local v63, "AddRuleForCFNotRegisteredWithAllMediaType":Z
    const-string/jumbo v55, "CFU"

    .line 3226
    .local v55, "CFU_RuleID":Ljava/lang/String;
    const-string/jumbo v11, "CFB"

    .line 3227
    .local v11, "CFB_RuleID":Ljava/lang/String;
    const-string/jumbo v25, "CFNoAnswer"

    .line 3228
    .local v25, "CFNoAnswer_RuleID":Ljava/lang/String;
    const-string/jumbo v35, "CFNotReachable"

    .line 3229
    .local v35, "CFNotReachable_RuleID":Ljava/lang/String;
    const-string/jumbo v45, "CFNotReachable"

    .line 3231
    .local v45, "CFNotRegistered_RuleID":Ljava/lang/String;
    const-string/jumbo v69, "call-diversion-unconditional"

    .line 3232
    .local v69, "CFU_RuleID_OP124":Ljava/lang/String;
    const-string/jumbo v65, "call-diversion-busy"

    .line 3233
    .local v65, "CFB_RuleID_OP124":Ljava/lang/String;
    const-string/jumbo v66, "call-diversion-no-reply"

    .line 3234
    .local v66, "CFNoAnswer_RuleID_OP124":Ljava/lang/String;
    const-string/jumbo v67, "call-diversion-not-reahable"

    .line 3235
    .local v67, "CFNotReachable_RuleID_OP124":Ljava/lang/String;
    const-string/jumbo v68, "call-diversion-not-logged-in"

    .line 3239
    .local v68, "CFNotRegistered_RuleID_OP124":Ljava/lang/String;
    if-eqz v9, :cond_7f

    const-string/jumbo v2, "sip:"

    invoke-virtual {v9, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d8

    .line 3246
    :cond_7f
    if-eqz v9, :cond_c3

    .line 3247
    invoke-static {v14}, Lcom/mediatek/ims/MMTelSSUtils;->isNeedAppendCountryCode(I)Z

    move-result v2

    .line 3246
    if-eqz v2, :cond_c3

    .line 3248
    const-string/jumbo v2, "sip:"

    invoke-virtual {v9, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_99

    const-string/jumbo v2, "tel:"

    invoke-virtual {v9, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20a

    .line 3249
    :cond_99
    const/4 v2, 0x0

    const/4 v12, 0x4

    invoke-virtual {v9, v2, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v85

    .line 3250
    .local v85, "prefix":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v12, 0x4

    invoke-virtual {v9, v12, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v83

    .line 3251
    .local v83, "onlyNumber":Ljava/lang/String;
    move-object/from16 v0, v83

    invoke-static {v0, v14}, Lcom/mediatek/ims/MMTelSSUtils;->appendCountryCode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v84

    .line 3252
    .local v84, "onlyNumberWithCountry":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v85

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v84

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3262
    .end local v83    # "onlyNumber":Ljava/lang/String;
    .end local v84    # "onlyNumberWithCountry":Ljava/lang/String;
    .end local v85    # "prefix":Ljava/lang/String;
    :cond_c3
    :goto_c3
    const-string/jumbo v2, "MMTelSS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Read from CF parcel:req="

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static/range {v87 .. v87}, Lcom/mediatek/ims/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v16, ",cfAction="

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 3263
    const-string/jumbo v16, ",reason="

    .line 3262
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 3263
    const-string/jumbo v16, ",serviceClass="

    .line 3262
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 3264
    const-string/jumbo v16, ",number="

    .line 3262
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 3264
    const-string/jumbo v16, ",timeSec="

    .line 3262
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3267
    const-string/jumbo v2, "persist.radio.xcap.cfn"

    const-string/jumbo v12, ""

    invoke-static {v2, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v70

    .line 3268
    .local v70, "XcapCFNum":Ljava/lang/String;
    const-string/jumbo v2, "sip:"

    move-object/from16 v0, v70

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_151

    const-string/jumbo v2, "sips:"

    move-object/from16 v0, v70

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_151

    .line 3269
    const-string/jumbo v2, "tel:"

    move-object/from16 v0, v70

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .line 3268
    if-eqz v2, :cond_1a4

    .line 3270
    :cond_151
    const-string/jumbo v2, "MMTelSS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "handleSetCF():get call forwarding num from EM setting:"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v70

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3272
    const-string/jumbo v2, "persist.radio.ss.mode"

    const-string/jumbo v12, "Prefer XCAP"

    invoke-static {v2, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v92

    .line 3273
    .local v92, "ss_mode":Ljava/lang/String;
    const-string/jumbo v2, "MMTelSS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "handleSetCF():ss_mode="

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v92

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3274
    const-string/jumbo v2, "Prefer XCAP"

    move-object/from16 v0, v92

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a4

    .line 3275
    move-object/from16 v9, v70

    .line 3280
    .end local v92    # "ss_mode":Ljava/lang/String;
    :cond_1a4
    const/16 v2, 0x210

    if-ne v8, v2, :cond_1aa

    .line 3282
    const/16 v8, 0x200

    .line 3285
    :cond_1aa
    invoke-static {v14}, Lcom/mediatek/ims/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v2

    if-nez v2, :cond_23f

    .line 3286
    const-string/jumbo v2, "MMTelSS"

    const-string/jumbo v12, "handleSetCF(): !isPreferXcap()"

    invoke-static {v2, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3287
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_1d6

    .line 3288
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    new-instance v12, Ljava/net/UnknownHostException;

    invoke-direct {v12}, Ljava/net/UnknownHostException;-><init>()V

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-static {v2, v0, v12}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3289
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 3291
    :cond_1d6
    const/4 v2, 0x0

    return v2

    .line 3239
    .end local v70    # "XcapCFNum":Ljava/lang/String;
    :cond_1d8
    const-string/jumbo v2, "sips:"

    invoke-virtual {v9, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7f

    .line 3240
    const-string/jumbo v2, "tel:"

    invoke-virtual {v9, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7f

    .line 3241
    invoke-static {v14}, Lcom/mediatek/ims/MMTelSSUtils;->isNeedAppendCountryCode(I)Z

    move-result v2

    if-eqz v2, :cond_1f4

    .line 3242
    invoke-static {v9, v14}, Lcom/mediatek/ims/MMTelSSUtils;->appendCountryCode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 3244
    :cond_1f4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "tel:"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_c3

    .line 3253
    :cond_20a
    const-string/jumbo v2, "sips:"

    invoke-virtual {v9, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c3

    .line 3254
    const/4 v2, 0x0

    const/4 v12, 0x5

    invoke-virtual {v9, v2, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v85

    .line 3255
    .restart local v85    # "prefix":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v12, 0x5

    invoke-virtual {v9, v12, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v83

    .line 3256
    .restart local v83    # "onlyNumber":Ljava/lang/String;
    move-object/from16 v0, v83

    invoke-static {v0, v14}, Lcom/mediatek/ims/MMTelSSUtils;->appendCountryCode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v84

    .line 3257
    .restart local v84    # "onlyNumberWithCountry":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v85

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v84

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_c3

    .line 3296
    .end local v83    # "onlyNumber":Ljava/lang/String;
    .end local v84    # "onlyNumberWithCountry":Ljava/lang/String;
    .end local v85    # "prefix":Ljava/lang/String;
    .restart local v70    # "XcapCFNum":Ljava/lang/String;
    :cond_23f
    const/4 v13, 0x1

    .line 3298
    .local v13, "num_of_expansion":I
    const/4 v2, 0x5

    if-ne v6, v2, :cond_2f8

    .line 3301
    const/4 v13, 0x4

    .line 3310
    :cond_244
    :goto_244
    :try_start_244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v76

    .line 3311
    .local v76, "curTime":J
    const-string/jumbo v2, "MMTelSS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "handleSetCF(): mCdCache = "

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/mediatek/ims/MMTelSSTransport;->-get0(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v16, ", curTime = "

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, v76

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 3312
    const-string/jumbo v16, ", mCdCacheLastQueried = "

    .line 3311
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 3312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/mediatek/ims/MMTelSSTransport;->-get1(Lcom/mediatek/ims/MMTelSSTransport;)J

    move-result-wide v16

    .line 3311
    move-wide/from16 v0, v16

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 3313
    const-string/jumbo v16, ", phoneId = "

    .line 3311
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3315
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2, v14}, Lcom/mediatek/ims/MMTelSSTransport;->-wrap0(Lcom/mediatek/ims/MMTelSSTransport;I)Z

    move-result v2

    if-nez v2, :cond_2fe

    .line 3316
    const-string/jumbo v2, "MMTelSS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "handleSetCF(): XcapRoot = "

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3317
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_2f6

    .line 3318
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    new-instance v12, Ljava/net/UnknownHostException;

    invoke-direct {v12}, Ljava/net/UnknownHostException;-><init>()V

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-static {v2, v0, v12}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3319
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 3321
    :cond_2f6
    const/4 v2, 0x0

    return v2

    .line 3302
    .end local v76    # "curTime":J
    :cond_2f8
    const/4 v2, 0x4

    if-ne v6, v2, :cond_244

    .line 3306
    const/4 v13, 0x5

    goto/16 :goto_244

    .line 3324
    .restart local v76    # "curTime":J
    :cond_2fe
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get0(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v2

    if-eqz v2, :cond_4c8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get2(Lcom/mediatek/ims/MMTelSSTransport;)I

    move-result v2

    if-ne v14, v2, :cond_4c8

    .line 3325
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get0(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/simservs/client/CommunicationDiversion;->isSupportEtag()Z

    move-result v2

    .line 3324
    if-eqz v2, :cond_4c8

    .line 3326
    const-string/jumbo v2, "MMTelSS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "handleSetCF(): using ETAG mCdCache: "

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/mediatek/ims/MMTelSSTransport;->-get0(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3327
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get0(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v3

    .line 3328
    .local v3, "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get9(Lcom/mediatek/ims/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion;->setNetwork(Landroid/net/Network;)V

    .line 3329
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/CommunicationDiversion;->refresh()V

    .line 3330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-wide/from16 v0, v76

    invoke-static {v2, v0, v1}, Lcom/mediatek/ims/MMTelSSTransport;->-set1(Lcom/mediatek/ims/MMTelSSTransport;J)J

    .line 3346
    :goto_367
    const/16 v80, 0x0

    .local v80, "it":I
    :goto_369
    move/from16 v0, v80

    if-ge v0, v13, :cond_cef

    .line 3347
    const/4 v2, 0x1

    if-eq v13, v2, :cond_373

    .line 3348
    if-nez v80, :cond_62a

    const/4 v6, 0x1

    .line 3356
    :cond_373
    :goto_373
    add-int/lit8 v2, v13, -0x1

    move/from16 v0, v80

    if-ne v0, v2, :cond_37b

    .line 3357
    const/16 v86, 0x1

    .line 3360
    :cond_37b
    const-string/jumbo v2, "MMTelSS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "handleSetCF():it="

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, v80

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v16, ", num_of_expansion="

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 3361
    const-string/jumbo v16, ",cfReason="

    .line 3360
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3363
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v90

    .line 3364
    .local v90, "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v89, 0x0

    .line 3365
    .local v89, "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/CommunicationDiversion;->createNewRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v4

    .line 3366
    .local v4, "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v72, 0x0

    .line 3369
    .local v72, "addedNewRule":Z
    if-eqz v90, :cond_64a

    .line 3370
    invoke-virtual/range {v90 .. v90}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v89

    .line 3377
    .end local v89    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :goto_3c5
    if-eqz v89, :cond_ae7

    .line 3379
    const/16 v78, 0x0

    .end local v72    # "addedNewRule":Z
    .local v78, "i":I
    :goto_3c9
    invoke-interface/range {v89 .. v89}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v78

    if-ge v0, v2, :cond_ae7

    .line 3380
    move-object/from16 v0, v89

    move/from16 v1, v78

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/simservs/client/policy/Rule;

    .line 3381
    .local v5, "r":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v74

    .line 3382
    .local v74, "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v71

    .line 3383
    .local v71, "action":Lcom/mediatek/simservs/client/policy/Actions;
    const/4 v15, 0x0

    .line 3385
    .local v15, "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v74, :cond_73f

    .line 3386
    invoke-virtual/range {v74 .. v74}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v15

    .line 3387
    .local v15, "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v2, "MMTelSS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "handleSetCF():busy="

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {v74 .. v74}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 3388
    const-string/jumbo v16, ",NoAnswer="

    .line 3387
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 3388
    invoke-virtual/range {v74 .. v74}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v16

    .line 3387
    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 3389
    const-string/jumbo v16, ",NoReachable="

    .line 3387
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 3390
    invoke-virtual/range {v74 .. v74}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v16

    .line 3387
    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 3390
    const-string/jumbo v16, ",NotRegistered="

    .line 3387
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 3391
    invoke-virtual/range {v74 .. v74}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v16

    .line 3387
    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3392
    invoke-virtual/range {v74 .. v74}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v2

    if-eqz v2, :cond_655

    .line 3393
    iget-object v2, v5, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_45d

    .line 3394
    invoke-static {v14}, Lcom/mediatek/ims/MMTelSSUtils;->isOp124IccCard(I)Z

    move-result v2

    if-eqz v2, :cond_45d

    .line 3395
    move-object/from16 v0, v65

    iput-object v0, v5, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    .line 3398
    :cond_45d
    iget-object v11, v5, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    .line 3399
    const-string/jumbo v2, "MMTelSS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Update CFB_RuleID="

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3448
    .end local v15    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_47b
    :goto_47b
    const/4 v2, 0x1

    if-ne v6, v2, :cond_799

    .line 3449
    if-eqz v74, :cond_799

    invoke-virtual/range {v74 .. v74}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v2

    if-eqz v2, :cond_799

    .line 3450
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v8, v14}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;II)Z

    move-result v2

    .line 3448
    if-eqz v2, :cond_799

    .line 3452
    if-nez v8, :cond_494

    .line 3453
    if-nez v8, :cond_78a

    .line 3454
    if-nez v60, :cond_78a

    .line 3458
    :cond_494
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get17(Lcom/mediatek/ims/MMTelSSTransport;)Z

    move-result v12

    move-object/from16 v2, p0

    .line 3455
    invoke-virtual/range {v2 .. v15}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForExistingCF(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;IIILjava/lang/String;ILjava/lang/String;ZIILjava/util/List;)Z

    move-result v72

    .line 3459
    .local v72, "addedNewRule":Z
    const-string/jumbo v2, "MMTelSS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "handleSetCF():CFB-addedNewRule="

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, v72

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3461
    if-nez v8, :cond_4c4

    .line 3462
    const/16 v60, 0x1

    .line 3379
    .end local v72    # "addedNewRule":Z
    :cond_4c4
    :goto_4c4
    add-int/lit8 v78, v78, 0x1

    goto/16 :goto_3c9

    .line 3331
    .end local v3    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v4    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v5    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v71    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v74    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v78    # "i":I
    .end local v80    # "it":I
    .end local v90    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_4c8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get0(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v2

    if-eqz v2, :cond_566

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get2(Lcom/mediatek/ims/MMTelSSTransport;)I

    move-result v2

    if-ne v14, v2, :cond_566

    .line 3332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get1(Lcom/mediatek/ims/MMTelSSTransport;)J

    move-result-wide v16

    cmp-long v2, v76, v16

    if-ltz v2, :cond_566

    .line 3333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get1(Lcom/mediatek/ims/MMTelSSTransport;)J

    move-result-wide v16

    sub-long v16, v76, v16

    const-wide/32 v18, 0x1d4c0

    cmp-long v2, v16, v18

    if-gez v2, :cond_566

    .line 3334
    const-string/jumbo v2, "MMTelSS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "handleSetCF(): using mCdCache: "

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/mediatek/ims/MMTelSSTransport;->-get0(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get0(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v3

    .line 3336
    .restart local v3    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get9(Lcom/mediatek/ims/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion;->setNetwork(Landroid/net/Network;)V
    :try_end_534
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_244 .. :try_end_534} :catch_536
    .catch Ljava/lang/Exception; {:try_start_244 .. :try_end_534} :catch_5ca

    goto/16 :goto_367

    .line 3819
    .end local v3    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v76    # "curTime":J
    .end local v79    # "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    :catch_536
    move-exception v93

    .line 3820
    .local v93, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const/4 v12, 0x0

    invoke-static {v2, v12}, Lcom/mediatek/ims/MMTelSSTransport;->-set0(Lcom/mediatek/ims/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationDiversion;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 3821
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const/4 v12, -0x1

    invoke-static {v2, v12}, Lcom/mediatek/ims/MMTelSSTransport;->-set2(Lcom/mediatek/ims/MMTelSSTransport;I)I

    .line 3822
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-static {v2, v0, v1}, Lcom/mediatek/ims/MMTelSSTransport;->-set1(Lcom/mediatek/ims/MMTelSSTransport;J)J

    .line 3823
    invoke-virtual/range {v93 .. v93}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v2

    const/16 v12, 0x19c

    if-ne v2, v12, :cond_d4e

    .line 3824
    const-string/jumbo v2, "MMTelSS"

    const-string/jumbo v12, "handleSetCF(): HTTP_ERROR_CODE_412"

    invoke-static {v2, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3825
    const/16 v2, 0x19c

    return v2

    .line 3338
    .end local v93    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    .restart local v76    # "curTime":J
    .restart local v79    # "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    :cond_566
    :try_start_566
    invoke-static {}, Lcom/mediatek/ims/MMTelSSTransport;->-get16()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v12}, Lcom/mediatek/ims/MMTelSSTransport;->-get9(Lcom/mediatek/ims/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v12

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v2, v0, v12}, Lcom/mediatek/simservs/client/SimServs;->getCommunicationDiversion(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v3

    .line 3339
    .restart local v3    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2, v3}, Lcom/mediatek/ims/MMTelSSTransport;->-set0(Lcom/mediatek/ims/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationDiversion;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 3340
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2, v14}, Lcom/mediatek/ims/MMTelSSTransport;->-set2(Lcom/mediatek/ims/MMTelSSTransport;I)I

    .line 3341
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-wide/from16 v0, v76

    invoke-static {v2, v0, v1}, Lcom/mediatek/ims/MMTelSSTransport;->-set1(Lcom/mediatek/ims/MMTelSSTransport;J)J

    .line 3342
    const-string/jumbo v2, "MMTelSS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "handleSetCF(): new mCdCache = "

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/mediatek/ims/MMTelSSTransport;->-get0(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 3343
    const-string/jumbo v16, ", curTime = "

    .line 3342
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, v76

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c8
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_566 .. :try_end_5c8} :catch_536
    .catch Ljava/lang/Exception; {:try_start_566 .. :try_end_5c8} :catch_5ca

    goto/16 :goto_367

    .line 3847
    .end local v3    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v76    # "curTime":J
    .end local v79    # "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    :catch_5ca
    move-exception v75

    .line 3850
    .local v75, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "MMTelSS"

    const-string/jumbo v12, "handleSetCF():Start to Print Stack Trace"

    invoke-static {v2, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3851
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const/4 v12, 0x0

    invoke-static {v2, v12}, Lcom/mediatek/ims/MMTelSSTransport;->-set0(Lcom/mediatek/ims/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationDiversion;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 3852
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const/4 v12, -0x1

    invoke-static {v2, v12}, Lcom/mediatek/ims/MMTelSSTransport;->-set2(Lcom/mediatek/ims/MMTelSSTransport;I)I

    .line 3853
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-static {v2, v0, v1}, Lcom/mediatek/ims/MMTelSSTransport;->-set1(Lcom/mediatek/ims/MMTelSSTransport;J)J

    .line 3855
    invoke-virtual/range {v75 .. v75}, Ljava/lang/Exception;->printStackTrace()V

    .line 3856
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_d1b

    const/4 v2, 0x1

    move/from16 v0, v86

    if-ne v0, v2, :cond_d1b

    .line 3858
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v73

    .line 3859
    .local v73, "ce":Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v12, 0x0

    move-object/from16 v0, v73

    invoke-static {v2, v12, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3860
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 3861
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_628

    .line 3862
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 3864
    :cond_628
    const/4 v2, 0x0

    return v2

    .line 3349
    .end local v73    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v75    # "e":Ljava/lang/Exception;
    .restart local v3    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .restart local v76    # "curTime":J
    .restart local v79    # "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    .restart local v80    # "it":I
    :cond_62a
    const/4 v2, 0x1

    move/from16 v0, v80

    if-ne v0, v2, :cond_632

    const/4 v6, 0x2

    goto/16 :goto_373

    .line 3350
    :cond_632
    const/4 v2, 0x2

    move/from16 v0, v80

    if-ne v0, v2, :cond_63a

    const/4 v6, 0x3

    goto/16 :goto_373

    .line 3351
    :cond_63a
    const/4 v2, 0x3

    move/from16 v0, v80

    if-ne v0, v2, :cond_642

    const/4 v6, 0x6

    goto/16 :goto_373

    .line 3352
    :cond_642
    const/4 v2, 0x4

    move/from16 v0, v80

    if-ne v0, v2, :cond_373

    const/4 v6, 0x0

    goto/16 :goto_373

    .line 3372
    .restart local v4    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .local v72, "addedNewRule":Z
    .restart local v89    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v90    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_64a
    :try_start_64a
    const-string/jumbo v2, "MMTelSS"

    const-string/jumbo v12, "No CF related rules in remote server"

    invoke-static {v2, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3c5

    .line 3400
    .end local v72    # "addedNewRule":Z
    .end local v89    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v5    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .restart local v15    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v71    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v74    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v78    # "i":I
    :cond_655
    invoke-virtual/range {v74 .. v74}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v2

    if-eqz v2, :cond_691

    .line 3401
    iget-object v2, v5, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_66d

    .line 3402
    invoke-static {v14}, Lcom/mediatek/ims/MMTelSSUtils;->isOp124IccCard(I)Z

    move-result v2

    if-eqz v2, :cond_66d

    .line 3403
    move-object/from16 v0, v66

    iput-object v0, v5, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    .line 3406
    :cond_66d
    iget-object v0, v5, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 3407
    const-string/jumbo v2, "MMTelSS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Update CFNoAnswer_RuleID="

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_47b

    .line 3409
    :cond_691
    invoke-virtual/range {v74 .. v74}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v2

    if-eqz v2, :cond_6cd

    .line 3410
    iget-object v2, v5, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6a9

    .line 3411
    invoke-static {v14}, Lcom/mediatek/ims/MMTelSSUtils;->isOp124IccCard(I)Z

    move-result v2

    if-eqz v2, :cond_6a9

    .line 3412
    move-object/from16 v0, v67

    iput-object v0, v5, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    .line 3415
    :cond_6a9
    iget-object v0, v5, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v35, v0

    .line 3416
    const-string/jumbo v2, "MMTelSS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Update CFNotReachable_RuleID="

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v35

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_47b

    .line 3418
    :cond_6cd
    invoke-virtual/range {v74 .. v74}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v2

    if-eqz v2, :cond_709

    .line 3419
    iget-object v2, v5, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6e5

    .line 3420
    invoke-static {v14}, Lcom/mediatek/ims/MMTelSSUtils;->isOp124IccCard(I)Z

    move-result v2

    if-eqz v2, :cond_6e5

    .line 3421
    move-object/from16 v0, v68

    iput-object v0, v5, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    .line 3424
    :cond_6e5
    iget-object v0, v5, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v45, v0

    .line 3425
    const-string/jumbo v2, "MMTelSS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Update CFNotRegistered_RuleID="

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v45

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_47b

    .line 3428
    :cond_709
    iget-object v2, v5, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_71b

    .line 3429
    invoke-static {v14}, Lcom/mediatek/ims/MMTelSSUtils;->isOp124IccCard(I)Z

    move-result v2

    if-eqz v2, :cond_71b

    .line 3430
    move-object/from16 v0, v69

    iput-object v0, v5, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    .line 3433
    :cond_71b
    iget-object v0, v5, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v55, v0

    .line 3434
    const-string/jumbo v2, "MMTelSS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Update CFU_RuleID="

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v55

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_47b

    .line 3437
    .local v15, "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_73f
    const-string/jumbo v2, "MMTelSS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "handleSetCF():Empty cond (cond==null) for this rule="

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3439
    const-string/jumbo v2, "CFU"

    move-object/from16 v0, v55

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47b

    .line 3441
    iget-object v0, v5, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v55, v0

    .line 3442
    const-string/jumbo v2, "MMTelSS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Update CFU_RuleID="

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v55

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_47b

    .line 3464
    .end local v15    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_78a
    if-nez v8, :cond_4c4

    .line 3466
    if-eqz v60, :cond_4c4

    .line 3467
    const-string/jumbo v2, "MMTelSS"

    const-string/jumbo v12, "Already add rule for CFB with serviceClass=0 case previously"

    invoke-static {v2, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4c4

    .line 3471
    :cond_799
    const/4 v2, 0x2

    if-ne v6, v2, :cond_870

    .line 3472
    if-eqz v74, :cond_870

    invoke-virtual/range {v74 .. v74}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v2

    if-eqz v2, :cond_870

    .line 3473
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v8, v14}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;II)Z

    move-result v2

    .line 3471
    if-eqz v2, :cond_870

    .line 3475
    if-nez v8, :cond_7b2

    .line 3476
    if-nez v8, :cond_861

    .line 3478
    if-nez v61, :cond_861

    .line 3482
    :cond_7b2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get17(Lcom/mediatek/ims/MMTelSSTransport;)Z

    move-result v26

    move-object/from16 v16, p0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move/from16 v20, v6

    move/from16 v21, v7

    move/from16 v22, v8

    move-object/from16 v23, v9

    move/from16 v24, v10

    move/from16 v27, v13

    move/from16 v28, v14

    move-object/from16 v29, v15

    .line 3479
    invoke-virtual/range {v16 .. v29}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForExistingCF(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;IIILjava/lang/String;ILjava/lang/String;ZIILjava/util/List;)Z

    move-result v72

    .line 3483
    .local v72, "addedNewRule":Z
    const-string/jumbo v2, "MMTelSS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "handleSetCF():CFNoAnswer-addedNewRule="

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, v72

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3487
    if-eqz v72, :cond_802

    .line 3488
    const/4 v2, 0x1

    if-eq v7, v2, :cond_7fc

    .line 3490
    const/4 v2, 0x3

    .line 3489
    if-ne v7, v2, :cond_802

    .line 3491
    :cond_7fc
    invoke-static {v14}, Lcom/mediatek/ims/MMTelSSUtils;->isPortugalVdfIccCard(I)Z

    move-result v2

    if-eqz v2, :cond_808

    .line 3503
    :cond_802
    :goto_802
    if-nez v8, :cond_4c4

    .line 3505
    const/16 v61, 0x1

    goto/16 :goto_4c4

    .line 3492
    :cond_808
    const-string/jumbo v2, "MMTelSS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "handleSetCF():[C1]Enable CFNoAnswer with new_NoReplyTimer="

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 3494
    const-string/jumbo v16, "org_NoReplyTimer="

    .line 3492
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 3494
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getNoReplyTimer()I

    move-result v16

    .line 3492
    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3495
    if-lez v10, :cond_844

    invoke-virtual {v3}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getNoReplyTimer()I

    move-result v2

    const/4 v12, -0x1

    if-le v2, v12, :cond_844

    .line 3496
    invoke-virtual {v3, v10}, Lcom/mediatek/simservs/client/CommunicationDiversion;->setNoReplyTimer(I)V

    goto :goto_802

    .line 3498
    :cond_844
    const-string/jumbo v2, "MMTelSS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "No need to append setCFTimeSeconds: "

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_802

    .line 3507
    .end local v72    # "addedNewRule":Z
    :cond_861
    if-nez v8, :cond_4c4

    .line 3509
    if-eqz v61, :cond_4c4

    .line 3510
    const-string/jumbo v2, "MMTelSS"

    const-string/jumbo v12, "Already add rule for CFNoAnswer with serviceClass=0 case previously"

    invoke-static {v2, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4c4

    .line 3514
    :cond_870
    const/4 v2, 0x3

    if-ne v6, v2, :cond_8e0

    .line 3515
    if-eqz v74, :cond_8e0

    invoke-virtual/range {v74 .. v74}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v2

    if-eqz v2, :cond_8e0

    .line 3516
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v8, v14}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;II)Z

    move-result v2

    .line 3514
    if-eqz v2, :cond_8e0

    .line 3518
    if-nez v8, :cond_889

    .line 3519
    if-nez v8, :cond_8d1

    .line 3521
    if-nez v62, :cond_8d1

    .line 3525
    :cond_889
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get17(Lcom/mediatek/ims/MMTelSSTransport;)Z

    move-result v36

    move-object/from16 v26, p0

    move-object/from16 v27, v3

    move-object/from16 v28, v4

    move-object/from16 v29, v5

    move/from16 v30, v6

    move/from16 v31, v7

    move/from16 v32, v8

    move-object/from16 v33, v9

    move/from16 v34, v10

    move/from16 v37, v13

    move/from16 v38, v14

    move-object/from16 v39, v15

    .line 3522
    invoke-virtual/range {v26 .. v39}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForExistingCF(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;IIILjava/lang/String;ILjava/lang/String;ZIILjava/util/List;)Z

    move-result v72

    .line 3526
    .restart local v72    # "addedNewRule":Z
    const-string/jumbo v2, "MMTelSS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "handleSetCF():CFNoReachable-addedNewRule="

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, v72

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3528
    if-nez v8, :cond_4c4

    .line 3530
    const/16 v62, 0x1

    goto/16 :goto_4c4

    .line 3532
    .end local v72    # "addedNewRule":Z
    :cond_8d1
    if-nez v8, :cond_4c4

    .line 3534
    if-eqz v62, :cond_4c4

    .line 3535
    const-string/jumbo v2, "MMTelSS"

    const-string/jumbo v12, "Already add rule for CFNoReachable with serviceClass=0 case previously"

    invoke-static {v2, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4c4

    .line 3539
    :cond_8e0
    const/4 v2, 0x6

    if-ne v6, v2, :cond_95f

    .line 3540
    if-eqz v74, :cond_95f

    invoke-virtual/range {v74 .. v74}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v2

    if-eqz v2, :cond_95f

    .line 3541
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v8, v14}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;II)Z

    move-result v2

    .line 3539
    if-eqz v2, :cond_95f

    .line 3542
    invoke-static {v14}, Lcom/mediatek/ims/MMTelSSUtils;->isOp06IccCard(I)Z

    move-result v2

    .line 3539
    if-eqz v2, :cond_95f

    .line 3544
    const-string/jumbo v2, "MMTelSS"

    const-string/jumbo v12, "handleSetCF(): Set CFNRc as CFNL for OP06"

    invoke-static {v2, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3545
    if-nez v8, :cond_908

    .line 3546
    if-nez v8, :cond_950

    .line 3548
    if-nez v62, :cond_950

    .line 3553
    :cond_908
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get17(Lcom/mediatek/ims/MMTelSSTransport;)Z

    move-result v36

    .line 3550
    const/16 v30, 0x3

    move-object/from16 v26, p0

    move-object/from16 v27, v3

    move-object/from16 v28, v4

    move-object/from16 v29, v5

    move/from16 v31, v7

    move/from16 v32, v8

    move-object/from16 v33, v9

    move/from16 v34, v10

    move/from16 v37, v13

    move/from16 v38, v14

    move-object/from16 v39, v15

    .line 3549
    invoke-virtual/range {v26 .. v39}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForExistingCF(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;IIILjava/lang/String;ILjava/lang/String;ZIILjava/util/List;)Z

    move-result v72

    .line 3554
    .restart local v72    # "addedNewRule":Z
    const-string/jumbo v2, "MMTelSS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "handleSetCF():CFNoReachable-addedNewRule="

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, v72

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3556
    if-nez v8, :cond_4c4

    .line 3558
    const/16 v62, 0x1

    goto/16 :goto_4c4

    .line 3560
    .end local v72    # "addedNewRule":Z
    :cond_950
    if-nez v8, :cond_4c4

    .line 3562
    if-eqz v62, :cond_4c4

    .line 3563
    const-string/jumbo v2, "MMTelSS"

    const-string/jumbo v12, "Already add rule for CFNoReachable with serviceClass=0 case previously"

    invoke-static {v2, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4c4

    .line 3566
    :cond_95f
    const/4 v2, 0x6

    if-ne v6, v2, :cond_9cf

    .line 3567
    if-eqz v74, :cond_9cf

    invoke-virtual/range {v74 .. v74}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v2

    if-eqz v2, :cond_9cf

    .line 3568
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v8, v14}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;II)Z

    move-result v2

    .line 3566
    if-eqz v2, :cond_9cf

    .line 3570
    if-nez v8, :cond_978

    .line 3571
    if-nez v8, :cond_9c0

    .line 3573
    if-nez v63, :cond_9c0

    .line 3577
    :cond_978
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get17(Lcom/mediatek/ims/MMTelSSTransport;)Z

    move-result v46

    move-object/from16 v36, p0

    move-object/from16 v37, v3

    move-object/from16 v38, v4

    move-object/from16 v39, v5

    move/from16 v40, v6

    move/from16 v41, v7

    move/from16 v42, v8

    move-object/from16 v43, v9

    move/from16 v44, v10

    move/from16 v47, v13

    move/from16 v48, v14

    move-object/from16 v49, v15

    .line 3574
    invoke-virtual/range {v36 .. v49}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForExistingCF(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;IIILjava/lang/String;ILjava/lang/String;ZIILjava/util/List;)Z

    move-result v72

    .line 3578
    .restart local v72    # "addedNewRule":Z
    const-string/jumbo v2, "MMTelSS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "handleSetCF():CFNoRegistered-addedNewRule="

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, v72

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3580
    if-nez v8, :cond_4c4

    .line 3582
    const/16 v63, 0x1

    goto/16 :goto_4c4

    .line 3584
    .end local v72    # "addedNewRule":Z
    :cond_9c0
    if-nez v8, :cond_4c4

    .line 3586
    if-eqz v63, :cond_4c4

    .line 3587
    const-string/jumbo v2, "MMTelSS"

    const-string/jumbo v12, "Already add rule for CFNoRegistered with serviceClass=0 case previously"

    invoke-static {v2, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4c4

    .line 3590
    :cond_9cf
    const/4 v2, 0x3

    if-ne v6, v2, :cond_a4e

    .line 3591
    if-eqz v74, :cond_a4e

    invoke-virtual/range {v74 .. v74}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v2

    if-eqz v2, :cond_a4e

    .line 3592
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v8, v14}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;II)Z

    move-result v2

    .line 3590
    if-eqz v2, :cond_a4e

    .line 3593
    invoke-static {v14}, Lcom/mediatek/ims/MMTelSSUtils;->isOp06IccCard(I)Z

    move-result v2

    .line 3590
    if-eqz v2, :cond_a4e

    .line 3595
    const-string/jumbo v2, "MMTelSS"

    const-string/jumbo v12, "handleSetCF(): Set CFNL as CFNRc for OP06"

    invoke-static {v2, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3596
    if-nez v8, :cond_9f7

    .line 3597
    if-nez v8, :cond_a3f

    .line 3599
    if-nez v63, :cond_a3f

    .line 3604
    :cond_9f7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get17(Lcom/mediatek/ims/MMTelSSTransport;)Z

    move-result v46

    .line 3601
    const/16 v40, 0x6

    move-object/from16 v36, p0

    move-object/from16 v37, v3

    move-object/from16 v38, v4

    move-object/from16 v39, v5

    move/from16 v41, v7

    move/from16 v42, v8

    move-object/from16 v43, v9

    move/from16 v44, v10

    move/from16 v47, v13

    move/from16 v48, v14

    move-object/from16 v49, v15

    .line 3600
    invoke-virtual/range {v36 .. v49}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForExistingCF(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;IIILjava/lang/String;ILjava/lang/String;ZIILjava/util/List;)Z

    move-result v72

    .line 3605
    .restart local v72    # "addedNewRule":Z
    const-string/jumbo v2, "MMTelSS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "handleSetCF():CFNoRegistered-addedNewRule="

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, v72

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3607
    if-nez v8, :cond_4c4

    .line 3609
    const/16 v63, 0x1

    goto/16 :goto_4c4

    .line 3611
    .end local v72    # "addedNewRule":Z
    :cond_a3f
    if-nez v8, :cond_4c4

    .line 3613
    if-eqz v63, :cond_4c4

    .line 3614
    const-string/jumbo v2, "MMTelSS"

    const-string/jumbo v12, "Already add rule for CFNoRegistered with serviceClass=0 case previously"

    invoke-static {v2, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4c4

    .line 3617
    :cond_a4e
    if-nez v6, :cond_ac8

    .line 3618
    if-eqz v74, :cond_ac6

    invoke-virtual/range {v74 .. v74}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v2

    if-nez v2, :cond_ac6

    .line 3619
    invoke-virtual/range {v74 .. v74}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v2

    if-nez v2, :cond_ac6

    .line 3620
    invoke-virtual/range {v74 .. v74}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v2

    if-nez v2, :cond_ac6

    .line 3621
    invoke-virtual/range {v74 .. v74}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v2

    if-nez v2, :cond_ac6

    .line 3622
    :cond_a6a
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v8, v14}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;II)Z

    move-result v2

    .line 3617
    if-eqz v2, :cond_ac8

    .line 3624
    if-nez v8, :cond_a78

    .line 3625
    if-nez v8, :cond_ad8

    .line 3627
    if-nez v64, :cond_ad8

    .line 3631
    :cond_a78
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get17(Lcom/mediatek/ims/MMTelSSTransport;)Z

    move-result v56

    move-object/from16 v46, p0

    move-object/from16 v47, v3

    move-object/from16 v48, v4

    move-object/from16 v49, v5

    move/from16 v50, v6

    move/from16 v51, v7

    move/from16 v52, v8

    move-object/from16 v53, v9

    move/from16 v54, v10

    move/from16 v57, v13

    move/from16 v58, v14

    move-object/from16 v59, v15

    .line 3628
    invoke-virtual/range {v46 .. v59}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForExistingCF(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;IIILjava/lang/String;ILjava/lang/String;ZIILjava/util/List;)Z

    move-result v72

    .line 3632
    .restart local v72    # "addedNewRule":Z
    const-string/jumbo v2, "MMTelSS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "handleSetCF():CFU-addedNewRule="

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, v72

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3634
    if-nez v8, :cond_4c4

    .line 3636
    invoke-static {v14}, Lcom/mediatek/ims/MMTelSSUtils;->isOp01IccCard(I)Z

    move-result v2

    if-nez v2, :cond_4c4

    .line 3637
    const/16 v64, 0x1

    goto/16 :goto_4c4

    .line 3621
    .end local v72    # "addedNewRule":Z
    :cond_ac6
    if-eqz v74, :cond_a6a

    .line 3648
    :cond_ac8
    const-string/jumbo v2, "MMTelSS"

    const-string/jumbo v12, "handleSetCF():Copy old rule to newRuleSet"

    invoke-static {v2, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3649
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4, v7, v6}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSet(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;II)Lcom/mediatek/simservs/client/policy/Rule;

    goto/16 :goto_4c4

    .line 3639
    :cond_ad8
    if-nez v8, :cond_4c4

    .line 3641
    if-eqz v64, :cond_4c4

    .line 3642
    const-string/jumbo v2, "MMTelSS"

    const-string/jumbo v12, "Already add rule for CFU with serviceClass=0 case previously"

    invoke-static {v2, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4c4

    .line 3660
    .end local v5    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v71    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v74    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v78    # "i":I
    :cond_ae7
    if-nez v72, :cond_b82

    const/4 v2, 0x1

    if-eq v7, v2, :cond_aef

    .line 3661
    const/4 v2, 0x3

    if-ne v7, v2, :cond_b82

    .line 3664
    :cond_aef
    const/16 v72, 0x1

    .line 3665
    .local v72, "addedNewRule":Z
    const-string/jumbo v2, ""

    invoke-virtual {v4, v2}, Lcom/mediatek/simservs/client/policy/RuleSet;->createNewRule(Ljava/lang/String;)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v88

    .line 3666
    .local v88, "rule":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual/range {v88 .. v88}, Lcom/mediatek/simservs/client/policy/Rule;->createConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v74

    .line 3667
    .restart local v74    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual/range {v88 .. v88}, Lcom/mediatek/simservs/client/policy/Rule;->createActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v71

    .line 3668
    .restart local v71    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    invoke-static {v14}, Lcom/mediatek/ims/MMTelSSUtils;->isOp01IccCard(I)Z

    move-result v2

    if-eqz v2, :cond_bbb

    .line 3669
    invoke-static {}, Lcom/mediatek/ims/MMTelSSUtils;->isNotifyCallerTest()Z

    move-result v2

    .line 3668
    if-eqz v2, :cond_bbb

    .line 3670
    const/4 v2, 0x0

    move-object/from16 v0, v71

    invoke-virtual {v0, v9, v2}, Lcom/mediatek/simservs/client/policy/Actions;->setFowardTo(Ljava/lang/String;Z)V

    .line 3674
    :goto_b12
    invoke-virtual/range {v71 .. v71}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v2

    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Lcom/mediatek/simservs/client/policy/ForwardTo;->setRevealIdentityToCaller(Z)V

    .line 3675
    invoke-virtual/range {v71 .. v71}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v2

    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Lcom/mediatek/simservs/client/policy/ForwardTo;->setRevealIdentityToTarget(Z)V

    .line 3677
    const-string/jumbo v2, "MMTelSS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "handleSetCF():Add rule for this time\'s enable reason="

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 3678
    const-string/jumbo v16, ",serviceClass="

    .line 3677
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3680
    const/4 v2, 0x1

    if-ne v6, v2, :cond_bc3

    .line 3681
    move-object/from16 v0, v88

    invoke-virtual {v0, v11}, Lcom/mediatek/simservs/client/policy/Rule;->setId(Ljava/lang/String;)V

    .line 3682
    invoke-virtual/range {v74 .. v74}, Lcom/mediatek/simservs/client/policy/Conditions;->addBusy()V

    .line 3712
    :cond_b56
    :goto_b56
    invoke-static {v14}, Lcom/mediatek/ims/MMTelSSUtils;->isOp03IccCard(I)Z

    move-result v2

    if-nez v2, :cond_b62

    .line 3713
    invoke-static {v14}, Lcom/mediatek/ims/MMTelSSUtils;->isOp05IccCard(I)Z

    move-result v2

    if-eqz v2, :cond_c61

    .line 3732
    :cond_b62
    :goto_b62
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get17(Lcom/mediatek/ims/MMTelSSTransport;)Z

    move-result v2

    if-eqz v2, :cond_b82

    const/4 v2, 0x1

    if-ne v13, v2, :cond_b82

    .line 3733
    invoke-static {v14}, Lcom/mediatek/ims/MMTelSSUtils;->isOp130IccCard(I)Z

    move-result v2

    if-eqz v2, :cond_cb4

    .line 3734
    const-string/jumbo v2, "MMTelSS"

    const-string/jumbo v12, "Save rule for TIM."

    invoke-static {v2, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3735
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion;->save(Z)V

    .line 3744
    .end local v71    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v72    # "addedNewRule":Z
    .end local v74    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v88    # "rule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_b82
    :goto_b82
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_cbd

    .line 3745
    const-string/jumbo v2, "MMTelSS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Dump SetCF XML:"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/RuleSet;->toXmlString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3750
    :goto_baa
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get17(Lcom/mediatek/ims/MMTelSSTransport;)Z

    move-result v2

    if-nez v2, :cond_cc8

    .line 3751
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/CommunicationDiversion;->saveRuleSet()V

    .line 3346
    :cond_bb7
    add-int/lit8 v80, v80, 0x1

    goto/16 :goto_369

    .line 3672
    .restart local v71    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v72    # "addedNewRule":Z
    .restart local v74    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v88    # "rule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_bbb
    const/4 v2, 0x1

    move-object/from16 v0, v71

    invoke-virtual {v0, v9, v2}, Lcom/mediatek/simservs/client/policy/Actions;->setFowardTo(Ljava/lang/String;Z)V

    goto/16 :goto_b12

    .line 3683
    :cond_bc3
    const/4 v2, 0x2

    if-ne v6, v2, :cond_c38

    .line 3685
    const-string/jumbo v2, "MMTelSS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "handleSetCF():[C2]Enable CFNoAnswer with new_NoReplyTimer="

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 3686
    const-string/jumbo v16, ",org_NoReplyTimer="

    .line 3685
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 3687
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getNoReplyTimer()I

    move-result v16

    .line 3685
    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3688
    invoke-static {v14}, Lcom/mediatek/ims/MMTelSSUtils;->isPortugalVdfIccCard(I)Z

    move-result v2

    if-eqz v2, :cond_c0e

    .line 3691
    if-lez v10, :cond_c02

    .line 3692
    move-object/from16 v0, v71

    invoke-virtual {v0, v10}, Lcom/mediatek/simservs/client/policy/Actions;->setNoReplyTimer(I)V

    .line 3700
    :cond_c02
    :goto_c02
    move-object/from16 v0, v88

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/Rule;->setId(Ljava/lang/String;)V

    .line 3701
    invoke-virtual/range {v74 .. v74}, Lcom/mediatek/simservs/client/policy/Conditions;->addNoAnswer()V

    goto/16 :goto_b56

    .line 3694
    :cond_c0e
    if-lez v10, :cond_c1b

    invoke-virtual {v3}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getNoReplyTimer()I

    move-result v2

    const/4 v12, -0x1

    if-le v2, v12, :cond_c1b

    .line 3695
    invoke-virtual {v3, v10}, Lcom/mediatek/simservs/client/CommunicationDiversion;->setNoReplyTimer(I)V

    goto :goto_c02

    .line 3697
    :cond_c1b
    const-string/jumbo v2, "MMTelSS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "No need to append setCFTimeSeconds: "

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c02

    .line 3702
    :cond_c38
    const/4 v2, 0x3

    if-ne v6, v2, :cond_c47

    .line 3703
    move-object/from16 v0, v88

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/Rule;->setId(Ljava/lang/String;)V

    .line 3704
    invoke-virtual/range {v74 .. v74}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotReachable()V

    goto/16 :goto_b56

    .line 3705
    :cond_c47
    const/4 v2, 0x6

    if-ne v6, v2, :cond_c56

    .line 3706
    move-object/from16 v0, v88

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/Rule;->setId(Ljava/lang/String;)V

    .line 3707
    invoke-virtual/range {v74 .. v74}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotRegistered()V

    goto/16 :goto_b56

    .line 3708
    :cond_c56
    if-nez v6, :cond_b56

    .line 3709
    move-object/from16 v0, v88

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/Rule;->setId(Ljava/lang/String;)V

    goto/16 :goto_b56

    .line 3714
    :cond_c61
    invoke-static {v14}, Lcom/mediatek/ims/MMTelSSUtils;->isOp06IccCard(I)Z

    move-result v2

    if-nez v2, :cond_b62

    .line 3715
    invoke-static {v14}, Lcom/mediatek/ims/MMTelSSUtils;->isOp06NetherlandsIccCard(I)Z

    move-result v2

    if-nez v2, :cond_b62

    .line 3716
    invoke-static {v14}, Lcom/mediatek/ims/MMTelSSUtils;->isOp07IccCard(I)Z

    move-result v2

    if-nez v2, :cond_b62

    .line 3717
    invoke-static {v14}, Lcom/mediatek/ims/MMTelSSUtils;->isOp08IccCard(I)Z

    move-result v2

    if-nez v2, :cond_b62

    .line 3718
    invoke-static {v14}, Lcom/mediatek/ims/MMTelSSUtils;->isOp15IccCard(I)Z

    move-result v2

    if-nez v2, :cond_b62

    .line 3719
    invoke-static {v14}, Lcom/mediatek/ims/MMTelSSUtils;->isOp124IccCard(I)Z

    move-result v2

    if-nez v2, :cond_b62

    .line 3720
    invoke-static {v14}, Lcom/mediatek/ims/MMTelSSUtils;->isOp130IccCard(I)Z

    move-result v2

    if-nez v2, :cond_b62

    .line 3721
    const/4 v2, 0x1

    if-ne v8, v2, :cond_c98

    .line 3722
    const-string/jumbo v2, "audio"

    move-object/from16 v0, v74

    invoke-virtual {v0, v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    goto/16 :goto_b62

    .line 3724
    :cond_c98
    const/16 v2, 0x200

    .line 3723
    if-ne v8, v2, :cond_b62

    .line 3725
    const-string/jumbo v2, "video"

    move-object/from16 v0, v74

    invoke-virtual {v0, v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 3726
    invoke-static {v14}, Lcom/mediatek/ims/MMTelSSUtils;->isOp19IccCard(I)Z

    move-result v2

    if-eqz v2, :cond_b62

    .line 3727
    const-string/jumbo v2, "audio"

    move-object/from16 v0, v74

    invoke-virtual {v0, v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    goto/16 :goto_b62

    .line 3737
    :cond_cb4
    move-object/from16 v0, v88

    iget-object v2, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion;->saveRule(Ljava/lang/String;)V

    goto/16 :goto_b82

    .line 3747
    .end local v71    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v72    # "addedNewRule":Z
    .end local v74    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v88    # "rule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_cbd
    const-string/jumbo v2, "MMTelSS"

    const-string/jumbo v12, "Dump SetCF XML: ruleset with empty rules"

    invoke-static {v2, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_baa

    .line 3753
    :cond_cc8
    const/4 v2, 0x1

    if-le v13, v2, :cond_bb7

    .line 3754
    const/16 v82, 0x0

    .line 3755
    .local v82, "newRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v82

    .line 3756
    .local v82, "newRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    const/16 v78, 0x0

    .restart local v78    # "i":I
    :goto_cd3
    invoke-interface/range {v82 .. v82}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v78

    if-ge v0, v2, :cond_bb7

    .line 3757
    move-object/from16 v0, v82

    move/from16 v1, v78

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v81

    check-cast v81, Lcom/mediatek/simservs/client/policy/Rule;

    .line 3758
    .local v81, "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    move-object/from16 v0, v81

    iget-object v2, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion;->saveRule(Ljava/lang/String;)V

    .line 3756
    add-int/lit8 v78, v78, 0x1

    goto :goto_cd3

    .line 3766
    .end local v4    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v78    # "i":I
    .end local v81    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v82    # "newRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v90    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_cef
    invoke-static {v14}, Lcom/mediatek/ims/MMTelSSUtils;->queryCFUAgainAfterSet(I)Z

    move-result v2

    if-eqz v2, :cond_d00

    .line 3767
    if-nez v6, :cond_d00

    .line 3768
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/CommunicationDiversion;->refresh()V

    .line 3770
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v6, v8, v14}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->parseCFUInfoFromCD(Lcom/mediatek/simservs/client/CommunicationDiversion;III)[Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v79

    .line 3815
    .end local v79    # "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    :cond_d00
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const/4 v12, 0x0

    invoke-static {v2, v12}, Lcom/mediatek/ims/MMTelSSTransport;->-set0(Lcom/mediatek/ims/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationDiversion;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 3816
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const/4 v12, -0x1

    invoke-static {v2, v12}, Lcom/mediatek/ims/MMTelSSTransport;->-set2(Lcom/mediatek/ims/MMTelSSTransport;I)I

    .line 3817
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-static {v2, v0, v1}, Lcom/mediatek/ims/MMTelSSTransport;->-set1(Lcom/mediatek/ims/MMTelSSTransport;J)J
    :try_end_d1b
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_64a .. :try_end_d1b} :catch_536
    .catch Ljava/lang/Exception; {:try_start_64a .. :try_end_d1b} :catch_5ca

    .line 3869
    .end local v3    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v76    # "curTime":J
    .end local v80    # "it":I
    :cond_d1b
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_d37

    const/4 v2, 0x1

    move/from16 v0, v86

    if-ne v0, v2, :cond_d37

    .line 3870
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v12, 0x0

    move-object/from16 v0, v79

    invoke-static {v2, v0, v12}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3871
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 3874
    :cond_d37
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_d4c

    .line 3875
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 3878
    :cond_d4c
    const/4 v2, 0x0

    return v2

    .line 3827
    .restart local v93    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_d4e
    const-string/jumbo v2, "MMTelSS"

    const-string/jumbo v12, "handleSetCF(): XcapException"

    invoke-static {v2, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3828
    invoke-virtual/range {v93 .. v93}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 3829
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_d1b

    .line 3830
    invoke-virtual/range {v93 .. v93}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v2

    if-eqz v2, :cond_d9d

    .line 3831
    const-string/jumbo v2, "MMTelSS"

    const-string/jumbo v12, "handleSetCF(): xcapException.isConnectionError()"

    invoke-static {v2, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3832
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    new-instance v12, Ljava/net/UnknownHostException;

    invoke-direct {v12}, Ljava/net/UnknownHostException;-><init>()V

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-static {v2, v0, v12}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3841
    :goto_d7f
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 3842
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_d9b

    .line 3843
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v2}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 3845
    :cond_d9b
    const/4 v2, 0x0

    return v2

    .line 3833
    :cond_d9d
    invoke-static {v14}, Lcom/mediatek/ims/MMTelSSUtils;->isOp06IccCard(I)Z

    move-result v2

    if-eqz v2, :cond_ddc

    .line 3834
    invoke-virtual/range {v93 .. v93}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v2

    if-eqz v2, :cond_ddc

    .line 3835
    const-string/jumbo v2, "MMTelSS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "handleSetCF(): OP06 with http Error: "

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 3836
    invoke-virtual/range {v93 .. v93}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v16

    .line 3835
    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3837
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    new-instance v12, Ljava/net/UnknownHostException;

    invoke-direct {v12}, Ljava/net/UnknownHostException;-><init>()V

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-static {v2, v0, v12}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_d7f

    .line 3839
    :cond_ddc
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v12, 0x0

    move-object/from16 v0, v93

    invoke-static {v2, v12, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_d7f
.end method

.method public handleSetCFInTimeSlot(Lcom/mediatek/ims/MMTelSSRequest;)I
    .registers 47
    .param p1, "rr"    # Lcom/mediatek/ims/MMTelSSRequest;

    .prologue
    .line 5095
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 5096
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .line 5097
    .local v37, "reqNo":I
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 5099
    .local v40, "serialNo":I
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 5100
    .local v8, "setCFAction":I
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 5101
    .local v7, "setCFReason":I
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 5102
    .local v9, "setCFServiceClass":I
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 5103
    .local v10, "setCFNumber":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 5104
    .local v11, "setCFTimeSeconds":I
    const/4 v4, 0x2

    new-array v0, v4, [J

    move-object/from16 v42, v0

    .line 5106
    .local v42, "timeSlot":[J
    :try_start_45
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Landroid/os/Parcel;->readLongArray([J)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4e} :catch_16e

    .line 5110
    .end local v42    # "timeSlot":[J
    :goto_4e
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->convertToSeverTime([J)Ljava/lang/String;

    move-result-object v12

    .line 5111
    .local v12, "timeSlotString":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 5113
    .local v26, "phoneId":I
    const/16 v29, 0x0

    .line 5114
    .local v29, "addRuleForCFUWithAllMediaType":Z
    const-string/jumbo v13, "CFU"

    .line 5116
    .local v13, "cfuRuleID":Ljava/lang/String;
    const-string/jumbo v4, "MMTelSS"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Read from CF parcel: req = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static/range {v37 .. v37}, Lcom/mediatek/ims/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 5117
    const-string/jumbo v15, ", cfAction = "

    .line 5116
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 5117
    const-string/jumbo v15, ", reason = "

    .line 5116
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 5118
    const-string/jumbo v15, ", serviceClass = "

    .line 5116
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 5118
    const-string/jumbo v15, ", number = "

    .line 5116
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 5119
    const-string/jumbo v15, ", timeSec = "

    .line 5116
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 5120
    const-string/jumbo v15, ", timsSlot = "

    .line 5116
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5122
    const-string/jumbo v4, "persist.radio.xcap.cfn"

    const-string/jumbo v14, ""

    invoke-static {v4, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 5123
    .local v43, "xcapCFNum":Ljava/lang/String;
    const-string/jumbo v4, "sip:"

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_ee

    .line 5124
    const-string/jumbo v4, "sips:"

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    .line 5123
    if-nez v4, :cond_ee

    .line 5125
    const-string/jumbo v4, "tel:"

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    .line 5123
    if-eqz v4, :cond_13d

    .line 5126
    :cond_ee
    const-string/jumbo v4, "MMTelSS"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "handleSetCFInTimeSlot(): get call forwarding num from EM setting: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, v43

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5128
    const-string/jumbo v4, "persist.radio.ss.mode"

    const-string/jumbo v14, "Prefer XCAP"

    invoke-static {v4, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 5129
    .local v41, "ssMode":Ljava/lang/String;
    const-string/jumbo v4, "MMTelSS"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "handleSetCFInTimeSlot(): ssMode = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, v41

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5130
    const-string/jumbo v4, "Prefer XCAP"

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13d

    .line 5131
    move-object/from16 v10, v43

    .line 5136
    .end local v41    # "ssMode":Ljava/lang/String;
    :cond_13d
    const/16 v4, 0x210

    if-ne v9, v4, :cond_143

    .line 5138
    const/16 v9, 0x200

    .line 5141
    :cond_143
    invoke-static/range {v26 .. v26}, Lcom/mediatek/ims/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v4

    if-nez v4, :cond_173

    .line 5142
    const-string/jumbo v4, "MMTelSS"

    const-string/jumbo v14, "handleSetCFInTimeSlot(): !isPreferXcap()"

    invoke-static {v4, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5143
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v4, :cond_16c

    .line 5144
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    new-instance v14, Ljava/net/UnknownHostException;

    invoke-direct {v14}, Ljava/net/UnknownHostException;-><init>()V

    const/4 v15, 0x0

    invoke-static {v4, v15, v14}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 5145
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 5147
    :cond_16c
    const/4 v4, 0x0

    return v4

    .line 5107
    .end local v12    # "timeSlotString":Ljava/lang/String;
    .end local v13    # "cfuRuleID":Ljava/lang/String;
    .end local v26    # "phoneId":I
    .end local v29    # "addRuleForCFUWithAllMediaType":Z
    .end local v43    # "xcapCFNum":Ljava/lang/String;
    .restart local v42    # "timeSlot":[J
    :catch_16e
    move-exception v33

    .line 5108
    .local v33, "e":Ljava/lang/Exception;
    const/16 v42, 0x0

    .local v42, "timeSlot":[J
    goto/16 :goto_4e

    .line 5152
    .end local v33    # "e":Ljava/lang/Exception;
    .end local v42    # "timeSlot":[J
    .restart local v12    # "timeSlotString":Ljava/lang/String;
    .restart local v13    # "cfuRuleID":Ljava/lang/String;
    .restart local v26    # "phoneId":I
    .restart local v29    # "addRuleForCFUWithAllMediaType":Z
    .restart local v43    # "xcapCFNum":Ljava/lang/String;
    :cond_173
    :try_start_173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    .line 5153
    .local v34, "curTime":J
    const-string/jumbo v4, "MMTelSS"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "handleSetCFInTimeSlot(): mCdCache = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v15}, Lcom/mediatek/ims/MMTelSSTransport;->-get0(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", curTime = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-wide/from16 v0, v34

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 5154
    const-string/jumbo v15, ", mCdCacheLastQueried = "

    .line 5153
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 5154
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v15}, Lcom/mediatek/ims/MMTelSSTransport;->-get1(Lcom/mediatek/ims/MMTelSSTransport;)J

    move-result-wide v18

    .line 5153
    move-wide/from16 v0, v18

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 5155
    const-string/jumbo v15, ", phoneId = "

    .line 5153
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, v26

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5157
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move/from16 v0, v26

    invoke-static {v4, v0}, Lcom/mediatek/ims/MMTelSSTransport;->-wrap0(Lcom/mediatek/ims/MMTelSSTransport;I)Z

    move-result v4

    if-nez v4, :cond_210

    .line 5158
    const-string/jumbo v4, "MMTelSS"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "handleSetCFInTimeSlot(): XcapRoot = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    iget-object v15, v15, Lcom/mediatek/ims/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5159
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v4, :cond_20e

    .line 5160
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    new-instance v14, Ljava/net/UnknownHostException;

    invoke-direct {v14}, Ljava/net/UnknownHostException;-><init>()V

    const/4 v15, 0x0

    invoke-static {v4, v15, v14}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 5161
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 5163
    :cond_20e
    const/4 v4, 0x0

    return v4

    .line 5166
    :cond_210
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v4}, Lcom/mediatek/ims/MMTelSSTransport;->-get0(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v4

    if-eqz v4, :cond_371

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v4}, Lcom/mediatek/ims/MMTelSSTransport;->-get2(Lcom/mediatek/ims/MMTelSSTransport;)I

    move-result v4

    move/from16 v0, v26

    if-ne v0, v4, :cond_371

    .line 5167
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v4}, Lcom/mediatek/ims/MMTelSSTransport;->-get0(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/simservs/client/CommunicationDiversion;->isSupportEtag()Z

    move-result v4

    .line 5166
    if-eqz v4, :cond_371

    .line 5168
    const-string/jumbo v4, "MMTelSS"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "handleSetCFInTimeSlot(): using ETAG mCdCache: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v15}, Lcom/mediatek/ims/MMTelSSTransport;->-get0(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5169
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v4}, Lcom/mediatek/ims/MMTelSSTransport;->-get0(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v5

    .line 5170
    .local v5, "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v4}, Lcom/mediatek/ims/MMTelSSTransport;->-get9(Lcom/mediatek/ims/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/mediatek/simservs/client/CommunicationDiversion;->setNetwork(Landroid/net/Network;)V

    .line 5171
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/CommunicationDiversion;->refresh()V

    .line 5172
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-wide/from16 v0, v34

    invoke-static {v4, v0, v1}, Lcom/mediatek/ims/MMTelSSTransport;->-set1(Lcom/mediatek/ims/MMTelSSTransport;J)J

    .line 5188
    :goto_275
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v39

    .line 5189
    .local v39, "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v38, 0x0

    .line 5190
    .local v38, "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/CommunicationDiversion;->createNewRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v6

    .line 5191
    .local v6, "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v30, 0x0

    .line 5193
    .local v30, "addedNewRule":Z
    if-eqz v39, :cond_4bd

    .line 5194
    invoke-virtual/range {v39 .. v39}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v38

    .line 5201
    .end local v38    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :goto_287
    if-eqz v38, :cond_5a8

    .line 5203
    const/16 v36, 0x0

    .end local v30    # "addedNewRule":Z
    .local v36, "i":I
    :goto_28b
    invoke-interface/range {v38 .. v38}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v36

    if-ge v0, v4, :cond_5a8

    .line 5204
    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/mediatek/simservs/client/policy/Rule;

    .line 5205
    .local v17, "r":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v32

    .line 5206
    .local v32, "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v28

    .line 5207
    .local v28, "action":Lcom/mediatek/simservs/client/policy/Actions;
    const/16 v27, 0x0

    .line 5209
    .local v27, "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v32, :cond_51b

    .line 5210
    invoke-virtual/range {v32 .. v32}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v27

    .line 5211
    .local v27, "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v4, "MMTelSS"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "handleSetCFInTimeSlot(): busy = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 5212
    invoke-virtual/range {v32 .. v32}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v15

    .line 5211
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 5213
    const-string/jumbo v15, ", NoAnswer = "

    .line 5211
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 5213
    invoke-virtual/range {v32 .. v32}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v15

    .line 5211
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 5214
    const-string/jumbo v15, ", NoReachable = "

    .line 5211
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 5214
    invoke-virtual/range {v32 .. v32}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v15

    .line 5211
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 5215
    const-string/jumbo v15, ", NotRegistered = "

    .line 5211
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 5215
    invoke-virtual/range {v32 .. v32}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v15

    .line 5211
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5216
    invoke-virtual/range {v32 .. v32}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v4

    if-eqz v4, :cond_4c8

    .line 5217
    const-string/jumbo v4, "MMTelSS"

    const-string/jumbo v14, "The rule is CFB"

    invoke-static {v4, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5238
    .end local v27    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_307
    :goto_307
    if-nez v7, :cond_562

    .line 5239
    if-eqz v32, :cond_560

    invoke-virtual/range {v32 .. v32}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v4

    if-nez v4, :cond_560

    .line 5240
    invoke-virtual/range {v32 .. v32}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v4

    if-nez v4, :cond_560

    .line 5241
    invoke-virtual/range {v32 .. v32}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v4

    if-nez v4, :cond_560

    .line 5242
    invoke-virtual/range {v32 .. v32}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v4

    if-nez v4, :cond_560

    .line 5243
    :cond_323
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v26

    invoke-virtual {v0, v1, v9, v2}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;II)Z

    move-result v4

    .line 5238
    if-eqz v4, :cond_562

    .line 5245
    if-nez v9, :cond_335

    .line 5246
    if-nez v9, :cond_599

    .line 5247
    if-nez v29, :cond_599

    .line 5248
    :cond_335
    const/4 v4, 0x1

    if-eq v8, v4, :cond_33b

    .line 5249
    const/4 v4, 0x3

    if-ne v8, v4, :cond_574

    .line 5253
    :cond_33b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v4}, Lcom/mediatek/ims/MMTelSSTransport;->-get17(Lcom/mediatek/ims/MMTelSSTransport;)Z

    move-result v14

    move-object/from16 v4, p0

    .line 5250
    invoke-virtual/range {v4 .. v14}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForCFInTimeSlot(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/simservs/client/policy/RuleSet;IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v30

    .line 5260
    .local v30, "addedNewRule":Z
    :goto_349
    const-string/jumbo v4, "MMTelSS"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "handleSetCFInTimeSlot(): CFU-addedNewRule = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, v30

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5262
    if-nez v9, :cond_36d

    .line 5263
    invoke-static/range {v26 .. v26}, Lcom/mediatek/ims/MMTelSSUtils;->isOp01IccCard(I)Z

    move-result v4

    if-eqz v4, :cond_595

    .line 5203
    .end local v30    # "addedNewRule":Z
    :cond_36d
    :goto_36d
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_28b

    .line 5173
    .end local v5    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v6    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v17    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v28    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v32    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v36    # "i":I
    .end local v39    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_371
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v4}, Lcom/mediatek/ims/MMTelSSTransport;->-get0(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v4

    if-eqz v4, :cond_409

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v4}, Lcom/mediatek/ims/MMTelSSTransport;->-get2(Lcom/mediatek/ims/MMTelSSTransport;)I

    move-result v4

    move/from16 v0, v26

    if-ne v0, v4, :cond_409

    .line 5174
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v4}, Lcom/mediatek/ims/MMTelSSTransport;->-get1(Lcom/mediatek/ims/MMTelSSTransport;)J

    move-result-wide v14

    cmp-long v4, v34, v14

    if-ltz v4, :cond_409

    .line 5175
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v4}, Lcom/mediatek/ims/MMTelSSTransport;->-get1(Lcom/mediatek/ims/MMTelSSTransport;)J

    move-result-wide v14

    sub-long v14, v34, v14

    const-wide/32 v18, 0x1d4c0

    cmp-long v4, v14, v18

    if-gez v4, :cond_409

    .line 5176
    const-string/jumbo v4, "MMTelSS"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "handleSetCFInTimeSlot(): using mCdCache: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v15}, Lcom/mediatek/ims/MMTelSSTransport;->-get0(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5177
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v4}, Lcom/mediatek/ims/MMTelSSTransport;->-get0(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v5

    .line 5178
    .restart local v5    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v4}, Lcom/mediatek/ims/MMTelSSTransport;->-get9(Lcom/mediatek/ims/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/mediatek/simservs/client/CommunicationDiversion;->setNetwork(Landroid/net/Network;)V
    :try_end_3d9
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_173 .. :try_end_3d9} :catch_3db
    .catch Ljava/lang/Exception; {:try_start_173 .. :try_end_3d9} :catch_464

    goto/16 :goto_275

    .line 5306
    .end local v5    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v34    # "curTime":J
    :catch_3db
    move-exception v44

    .line 5307
    .local v44, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const/4 v14, 0x0

    invoke-static {v4, v14}, Lcom/mediatek/ims/MMTelSSTransport;->-set0(Lcom/mediatek/ims/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationDiversion;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 5308
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const/4 v14, -0x1

    invoke-static {v4, v14}, Lcom/mediatek/ims/MMTelSSTransport;->-set2(Lcom/mediatek/ims/MMTelSSTransport;I)I

    .line 5309
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const-wide/16 v14, 0x0

    invoke-static {v4, v14, v15}, Lcom/mediatek/ims/MMTelSSTransport;->-set1(Lcom/mediatek/ims/MMTelSSTransport;J)J

    .line 5310
    invoke-virtual/range {v44 .. v44}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v4

    const/16 v14, 0x19c

    if-ne v4, v14, :cond_640

    .line 5311
    const-string/jumbo v4, "MMTelSS"

    const-string/jumbo v14, "handleSetCFInTimeSlot(): HTTP_ERROR_CODE_412"

    invoke-static {v4, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5312
    const/16 v4, 0x19c

    return v4

    .line 5180
    .end local v44    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    .restart local v34    # "curTime":J
    :cond_409
    :try_start_409
    invoke-static {}, Lcom/mediatek/ims/MMTelSSTransport;->-get16()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v14}, Lcom/mediatek/ims/MMTelSSTransport;->-get9(Lcom/mediatek/ims/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v4, v15, v14}, Lcom/mediatek/simservs/client/SimServs;->getCommunicationDiversion(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v5

    .line 5181
    .restart local v5    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v4, v5}, Lcom/mediatek/ims/MMTelSSTransport;->-set0(Lcom/mediatek/ims/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationDiversion;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 5182
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move/from16 v0, v26

    invoke-static {v4, v0}, Lcom/mediatek/ims/MMTelSSTransport;->-set2(Lcom/mediatek/ims/MMTelSSTransport;I)I

    .line 5183
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    move-wide/from16 v0, v34

    invoke-static {v4, v0, v1}, Lcom/mediatek/ims/MMTelSSTransport;->-set1(Lcom/mediatek/ims/MMTelSSTransport;J)J

    .line 5184
    const-string/jumbo v4, "MMTelSS"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "handleSetCFInTimeSlot(): new mCdCache = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v15}, Lcom/mediatek/ims/MMTelSSTransport;->-get0(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 5185
    const-string/jumbo v15, ", curTime = "

    .line 5184
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-wide/from16 v0, v34

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_462
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_409 .. :try_end_462} :catch_3db
    .catch Ljava/lang/Exception; {:try_start_409 .. :try_end_462} :catch_464

    goto/16 :goto_275

    .line 5334
    .end local v5    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v34    # "curTime":J
    :catch_464
    move-exception v33

    .line 5337
    .restart local v33    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, "MMTelSS"

    const-string/jumbo v14, "handleSetCFInTimeSlot(): Start to Print Stack Trace"

    invoke-static {v4, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5338
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const/4 v14, 0x0

    invoke-static {v4, v14}, Lcom/mediatek/ims/MMTelSSTransport;->-set0(Lcom/mediatek/ims/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationDiversion;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 5339
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const/4 v14, -0x1

    invoke-static {v4, v14}, Lcom/mediatek/ims/MMTelSSTransport;->-set2(Lcom/mediatek/ims/MMTelSSTransport;I)I

    .line 5340
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const-wide/16 v14, 0x0

    invoke-static {v4, v14, v15}, Lcom/mediatek/ims/MMTelSSTransport;->-set1(Lcom/mediatek/ims/MMTelSSTransport;J)J

    .line 5342
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Exception;->printStackTrace()V

    .line 5343
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v4, :cond_609

    .line 5345
    const/4 v4, 0x2

    invoke-static {v4}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v31

    .line 5346
    .local v31, "ce":Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v14, 0x0

    move-object/from16 v0, v31

    invoke-static {v4, v14, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 5347
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 5348
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v4}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v4

    if-eqz v4, :cond_4bb

    .line 5349
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v4}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 5351
    :cond_4bb
    const/4 v4, 0x0

    return v4

    .line 5196
    .end local v31    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v33    # "e":Ljava/lang/Exception;
    .restart local v5    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .restart local v6    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .local v30, "addedNewRule":Z
    .restart local v34    # "curTime":J
    .restart local v38    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v39    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_4bd
    :try_start_4bd
    const-string/jumbo v4, "MMTelSS"

    const-string/jumbo v14, "No CF related rules in remote server"

    invoke-static {v4, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_287

    .line 5218
    .end local v30    # "addedNewRule":Z
    .end local v38    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v17    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .restart local v27    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v28    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v32    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v36    # "i":I
    :cond_4c8
    invoke-virtual/range {v32 .. v32}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v4

    if-eqz v4, :cond_4d9

    .line 5219
    const-string/jumbo v4, "MMTelSS"

    const-string/jumbo v14, "The rule is CFNoAnswer"

    invoke-static {v4, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_307

    .line 5220
    :cond_4d9
    invoke-virtual/range {v32 .. v32}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v4

    if-eqz v4, :cond_4ea

    .line 5221
    const-string/jumbo v4, "MMTelSS"

    const-string/jumbo v14, "The rule is CFNotReachable"

    invoke-static {v4, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_307

    .line 5222
    :cond_4ea
    invoke-virtual/range {v32 .. v32}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v4

    if-eqz v4, :cond_4fb

    .line 5223
    const-string/jumbo v4, "MMTelSS"

    const-string/jumbo v14, "The rule is CFNotRegistered"

    invoke-static {v4, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_307

    .line 5225
    :cond_4fb
    move-object/from16 v0, v17

    iget-object v13, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    .line 5226
    const-string/jumbo v4, "MMTelSS"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Update cfuRuleID = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_307

    .line 5229
    .local v27, "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_51b
    const-string/jumbo v4, "MMTelSS"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "handleSetCFInTimeSlot(): Empty cond (cond==null) for this rule = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5231
    const-string/jumbo v4, "CFU"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_307

    .line 5233
    move-object/from16 v0, v17

    iget-object v13, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    .line 5234
    const-string/jumbo v4, "MMTelSS"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Update cfuRuleID = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_307

    .line 5242
    .end local v27    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_560
    if-eqz v32, :cond_323

    .line 5272
    :cond_562
    const-string/jumbo v4, "MMTelSS"

    const-string/jumbo v14, "handleSetCFInTimeSlot(): Copy old rule to newRuleSet"

    invoke-static {v4, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5274
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v6, v8, v7}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSet(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;II)Lcom/mediatek/simservs/client/policy/Rule;

    goto/16 :goto_36d

    .line 5258
    :cond_574
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v4}, Lcom/mediatek/ims/MMTelSSTransport;->-get17(Lcom/mediatek/ims/MMTelSSTransport;)Z

    move-result v24

    const/16 v25, 0x1

    move-object/from16 v14, p0

    move-object v15, v5

    move-object/from16 v16, v6

    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v9

    move-object/from16 v21, v10

    move/from16 v22, v11

    move-object/from16 v23, v13

    .line 5255
    invoke-virtual/range {v14 .. v27}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForExistingCF(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;IIILjava/lang/String;ILjava/lang/String;ZIILjava/util/List;)Z

    move-result v30

    .local v30, "addedNewRule":Z
    goto/16 :goto_349

    .line 5264
    :cond_595
    const/16 v29, 0x1

    goto/16 :goto_36d

    .line 5266
    .end local v30    # "addedNewRule":Z
    :cond_599
    if-nez v9, :cond_36d

    .line 5267
    if-eqz v29, :cond_36d

    .line 5268
    const-string/jumbo v4, "MMTelSS"

    const-string/jumbo v14, "Already add rule for CFU previously"

    invoke-static {v4, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_36d

    .line 5281
    .end local v17    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v28    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v32    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v36    # "i":I
    :cond_5a8
    if-nez v30, :cond_5bf

    .line 5282
    const/4 v4, 0x1

    if-eq v8, v4, :cond_5b0

    .line 5283
    const/4 v4, 0x3

    if-ne v8, v4, :cond_5bf

    .line 5284
    :cond_5b0
    const/16 v30, 0x1

    .line 5288
    .local v30, "addedNewRule":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v4}, Lcom/mediatek/ims/MMTelSSTransport;->-get17(Lcom/mediatek/ims/MMTelSSTransport;)Z

    move-result v14

    move-object/from16 v4, p0

    .line 5285
    invoke-virtual/range {v4 .. v14}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForCFInTimeSlot(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/simservs/client/policy/RuleSet;IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 5293
    .end local v30    # "addedNewRule":Z
    :cond_5bf
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_636

    .line 5294
    const-string/jumbo v4, "MMTelSS"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Dump SetCF XML: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/RuleSet;->toXmlString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5299
    :goto_5e3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v4}, Lcom/mediatek/ims/MMTelSSTransport;->-get17(Lcom/mediatek/ims/MMTelSSTransport;)Z

    move-result v4

    if-nez v4, :cond_5f0

    .line 5300
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/CommunicationDiversion;->saveRuleSet()V

    .line 5303
    :cond_5f0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const/4 v14, 0x0

    invoke-static {v4, v14}, Lcom/mediatek/ims/MMTelSSTransport;->-set0(Lcom/mediatek/ims/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationDiversion;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 5304
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const/4 v14, -0x1

    invoke-static {v4, v14}, Lcom/mediatek/ims/MMTelSSTransport;->-set2(Lcom/mediatek/ims/MMTelSSTransport;I)I

    .line 5305
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const-wide/16 v14, 0x0

    invoke-static {v4, v14, v15}, Lcom/mediatek/ims/MMTelSSTransport;->-set1(Lcom/mediatek/ims/MMTelSSTransport;J)J
    :try_end_609
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_4bd .. :try_end_609} :catch_3db
    .catch Ljava/lang/Exception; {:try_start_4bd .. :try_end_609} :catch_464

    .line 5356
    .end local v5    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v6    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v34    # "curTime":J
    .end local v39    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_609
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v4, :cond_61f

    .line 5357
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v4, v14, v15}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 5358
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 5360
    :cond_61f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v4}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v4

    if-eqz v4, :cond_634

    .line 5361
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v4}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 5364
    :cond_634
    const/4 v4, 0x0

    return v4

    .line 5296
    .restart local v5    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .restart local v6    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .restart local v34    # "curTime":J
    .restart local v39    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_636
    :try_start_636
    const-string/jumbo v4, "MMTelSS"

    const-string/jumbo v14, "Dump SetCF XML: ruleset with empty rules"

    invoke-static {v4, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63f
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_636 .. :try_end_63f} :catch_3db
    .catch Ljava/lang/Exception; {:try_start_636 .. :try_end_63f} :catch_464

    goto :goto_5e3

    .line 5314
    .end local v5    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v6    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v34    # "curTime":J
    .end local v39    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .restart local v44    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_640
    const-string/jumbo v4, "MMTelSS"

    const-string/jumbo v14, "handleSetCFInTimeSlot(): XcapException"

    invoke-static {v4, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5315
    invoke-virtual/range {v44 .. v44}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 5316
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v4, :cond_609

    .line 5317
    invoke-virtual/range {v44 .. v44}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v4

    if-eqz v4, :cond_68c

    .line 5318
    const-string/jumbo v4, "MMTelSS"

    const-string/jumbo v14, "handleSetCFInTimeSlot(): isConnectionError()"

    invoke-static {v4, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5319
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    new-instance v14, Ljava/net/UnknownHostException;

    invoke-direct {v14}, Ljava/net/UnknownHostException;-><init>()V

    const/4 v15, 0x0

    invoke-static {v4, v15, v14}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 5328
    :goto_66e
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 5329
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v4}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v4

    if-eqz v4, :cond_68a

    .line 5330
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v4}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 5332
    :cond_68a
    const/4 v4, 0x0

    return v4

    .line 5320
    :cond_68c
    invoke-static/range {v26 .. v26}, Lcom/mediatek/ims/MMTelSSUtils;->isOp06IccCard(I)Z

    move-result v4

    if-eqz v4, :cond_6c4

    .line 5321
    invoke-virtual/range {v44 .. v44}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v4

    if-eqz v4, :cond_6c4

    .line 5322
    const-string/jumbo v4, "MMTelSS"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "handleSetCFInTimeSlot(): OP06 with http Error: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 5323
    invoke-virtual/range {v44 .. v44}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v15

    .line 5322
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5324
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    new-instance v14, Ljava/net/UnknownHostException;

    invoke-direct {v14}, Ljava/net/UnknownHostException;-><init>()V

    const/4 v15, 0x0

    invoke-static {v4, v15, v14}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_66e

    .line 5326
    :cond_6c4
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v14, 0x0

    move-object/from16 v0, v44

    invoke-static {v4, v14, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_66e
.end method

.method public handleSetCLIP(Lcom/mediatek/ims/MMTelSSRequest;)V
    .registers 15
    .param p1, "rr"    # Lcom/mediatek/ims/MMTelSSRequest;

    .prologue
    const/4 v12, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 2822
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2823
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2824
    .local v5, "reqNo":I
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2826
    .local v6, "serialNo":I
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2827
    .local v1, "clipEnable":I
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2828
    .local v4, "phoneId":I
    const-string/jumbo v8, "MMTelSS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Read from CLIP parcel:clipMode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2830
    invoke-static {v4}, Lcom/mediatek/ims/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v8

    if-nez v8, :cond_5d

    .line 2831
    const-string/jumbo v8, "MMTelSS"

    const-string/jumbo v9, "handleSetCLIP(): !isPreferXcap()"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2832
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v8, :cond_5c

    .line 2833
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    new-instance v9, Ljava/net/UnknownHostException;

    invoke-direct {v9}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v8, v11, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2834
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 2836
    :cond_5c
    return-void

    .line 2840
    :cond_5d
    :try_start_5d
    iget-object v8, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v8, v4}, Lcom/mediatek/ims/MMTelSSTransport;->-wrap0(Lcom/mediatek/ims/MMTelSSTransport;I)Z

    move-result v8

    if-nez v8, :cond_98

    .line 2841
    const-string/jumbo v8, "MMTelSS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "handleSetCLIP(): XcapRoot = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    iget-object v10, v10, Lcom/mediatek/ims/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2842
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v8, :cond_97

    .line 2843
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    new-instance v9, Ljava/net/UnknownHostException;

    invoke-direct {v9}, Ljava/net/UnknownHostException;-><init>()V

    const/4 v10, 0x0

    invoke-static {v8, v10, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2844
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 2846
    :cond_97
    return-void

    .line 2850
    :cond_98
    invoke-static {}, Lcom/mediatek/ims/MMTelSSTransport;->-get16()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v9}, Lcom/mediatek/ims/MMTelSSTransport;->-get9(Lcom/mediatek/ims/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v8, v10, v9}, Lcom/mediatek/simservs/client/SimServs;->getOriginatingIdentityPresentation(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;

    move-result-object v3

    .line 2851
    .local v3, "oip":Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    if-ne v1, v12, :cond_cd

    .line 2852
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;->setActive(Z)V
    :try_end_ad
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_5d .. :try_end_ad} :catch_d2
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_ad} :catch_113

    .line 2896
    .end local v3    # "oip":Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    :cond_ad
    :goto_ad
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v8, :cond_bb

    .line 2897
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-static {v8, v11, v11}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2898
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 2900
    :cond_bb
    iget-object v8, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v8}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v8

    if-eqz v8, :cond_cc

    .line 2901
    iget-object v8, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v8}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 2821
    :cond_cc
    return-void

    .line 2854
    .restart local v3    # "oip":Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    :cond_cd
    const/4 v8, 0x0

    :try_start_ce
    invoke-virtual {v3, v8}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;->setActive(Z)V
    :try_end_d1
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_ce .. :try_end_d1} :catch_d2
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_d1} :catch_113

    goto :goto_ad

    .line 2856
    .end local v3    # "oip":Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    :catch_d2
    move-exception v7

    .line 2857
    .local v7, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    const-string/jumbo v8, "MMTelSS"

    const-string/jumbo v9, "handleSetCLIP(): XcapException"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2858
    invoke-virtual {v7}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 2859
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v8, :cond_ad

    .line 2860
    invoke-virtual {v7}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v8

    if-eqz v8, :cond_145

    .line 2861
    const-string/jumbo v8, "MMTelSS"

    const-string/jumbo v9, "handleSetCLIP(): xcapException.isConnectionError()"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2862
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    new-instance v9, Ljava/net/UnknownHostException;

    invoke-direct {v9}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v8, v11, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2871
    :goto_fc
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 2872
    iget-object v8, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v8}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v8

    if-eqz v8, :cond_112

    .line 2873
    iget-object v8, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v8}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 2875
    :cond_112
    return-void

    .line 2877
    .end local v7    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :catch_113
    move-exception v2

    .line 2880
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "MMTelSS"

    const-string/jumbo v9, "handleSetCLIP():Start to Print Stack Trace"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2881
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 2882
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v8, :cond_ad

    .line 2884
    const/4 v8, 0x2

    invoke-static {v8}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 2885
    .local v0, "ce":Lcom/android/internal/telephony/CommandException;
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-static {v8, v11, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2886
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 2887
    iget-object v8, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v8}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v8

    if-eqz v8, :cond_144

    .line 2888
    iget-object v8, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v8}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 2890
    :cond_144
    return-void

    .line 2863
    .end local v0    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v7    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_145
    invoke-static {v4}, Lcom/mediatek/ims/MMTelSSUtils;->isOp06IccCard(I)Z

    move-result v8

    if-eqz v8, :cond_17a

    .line 2864
    invoke-virtual {v7}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v8

    if-eqz v8, :cond_17a

    .line 2865
    const-string/jumbo v8, "MMTelSS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "handleSetCLIP(): OP06 with http Error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2866
    invoke-virtual {v7}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v10

    .line 2865
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2867
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    new-instance v9, Ljava/net/UnknownHostException;

    invoke-direct {v9}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v8, v11, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_fc

    .line 2869
    :cond_17a
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-static {v8, v11, v7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto/16 :goto_fc
.end method

.method public handleSetCLIR(Lcom/mediatek/ims/MMTelSSRequest;)I
    .registers 16
    .param p1, "rr"    # Lcom/mediatek/ims/MMTelSSRequest;

    .prologue
    .line 2680
    iget-object v10, p1, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2681
    iget-object v10, p1, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2682
    .local v7, "reqNo":I
    iget-object v10, p1, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2684
    .local v8, "serialNo":I
    iget-object v10, p1, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2685
    .local v1, "clirMode":I
    iget-object v10, p1, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2686
    .local v6, "phoneId":I
    const-string/jumbo v10, "MMTelSS"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Read from CLIR parcel:clirMode="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2688
    invoke-static {v6}, Lcom/mediatek/ims/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v10

    if-nez v10, :cond_5d

    .line 2689
    const-string/jumbo v10, "MMTelSS"

    const-string/jumbo v11, "handleSetCLIR(): !isPreferXcap()"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2690
    iget-object v10, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v10, :cond_5b

    .line 2691
    iget-object v10, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    new-instance v11, Ljava/net/UnknownHostException;

    invoke-direct {v11}, Ljava/net/UnknownHostException;-><init>()V

    const/4 v12, 0x0

    invoke-static {v10, v12, v11}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2692
    iget-object v10, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    .line 2694
    :cond_5b
    const/4 v10, 0x0

    return v10

    .line 2699
    :cond_5d
    :try_start_5d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2700
    .local v2, "curTime":J
    const-string/jumbo v10, "MMTelSS"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "handleSetCLIR(): mOirCache = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v12}, Lcom/mediatek/ims/MMTelSSTransport;->-get13(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", curTime = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2701
    const-string/jumbo v12, ", mOirCacheLastQueried = "

    .line 2700
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2701
    iget-object v12, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v12}, Lcom/mediatek/ims/MMTelSSTransport;->-get14(Lcom/mediatek/ims/MMTelSSTransport;)J

    move-result-wide v12

    .line 2700
    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2702
    const-string/jumbo v12, ", phoneId = "

    .line 2700
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2704
    iget-object v10, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v10, v6}, Lcom/mediatek/ims/MMTelSSTransport;->-wrap0(Lcom/mediatek/ims/MMTelSSTransport;I)Z

    move-result v10

    if-nez v10, :cond_e4

    .line 2705
    const-string/jumbo v10, "MMTelSS"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "handleSetCLIR(): XcapRoot = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    iget-object v12, v12, Lcom/mediatek/ims/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2706
    iget-object v10, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v10, :cond_e2

    .line 2707
    iget-object v10, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    new-instance v11, Ljava/net/UnknownHostException;

    invoke-direct {v11}, Ljava/net/UnknownHostException;-><init>()V

    const/4 v12, 0x0

    invoke-static {v10, v12, v11}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2708
    iget-object v10, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    .line 2710
    :cond_e2
    const/4 v10, 0x0

    return v10

    .line 2713
    :cond_e4
    iget-object v10, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v10}, Lcom/mediatek/ims/MMTelSSTransport;->-get13(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v10

    if-eqz v10, :cond_17e

    iget-object v10, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v10}, Lcom/mediatek/ims/MMTelSSTransport;->-get15(Lcom/mediatek/ims/MMTelSSTransport;)I

    move-result v10

    if-ne v6, v10, :cond_17e

    .line 2714
    iget-object v10, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v10}, Lcom/mediatek/ims/MMTelSSTransport;->-get13(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->isSupportEtag()Z

    move-result v10

    .line 2713
    if-eqz v10, :cond_17e

    .line 2715
    const-string/jumbo v10, "MMTelSS"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "handleSetCLIR(): using ETAG mOirCache: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v12}, Lcom/mediatek/ims/MMTelSSTransport;->-get13(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2716
    iget-object v10, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v10}, Lcom/mediatek/ims/MMTelSSTransport;->-get13(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v5

    .line 2717
    .local v5, "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    iget-object v10, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v10}, Lcom/mediatek/ims/MMTelSSTransport;->-get9(Lcom/mediatek/ims/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->setNetwork(Landroid/net/Network;)V

    .line 2718
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->refresh()V

    .line 2719
    iget-object v10, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v10, v2, v3}, Lcom/mediatek/ims/MMTelSSTransport;->-set13(Lcom/mediatek/ims/MMTelSSTransport;J)J

    .line 2735
    :goto_137
    const/4 v10, 0x1

    if-ne v1, v10, :cond_298

    .line 2736
    invoke-static {v6}, Lcom/mediatek/ims/MMTelSSUtils;->isOp124IccCard(I)Z

    move-result v10

    if-eqz v10, :cond_292

    .line 2737
    sget v10, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->NODE_ROOT_FULL_CHILD:I

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-virtual {v5, v11, v12, v10, v13}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->setDefaultPresentationRestricted(ZZIZ)V

    .line 2755
    :goto_148
    iget-object v10, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/mediatek/ims/MMTelSSTransport;->-set12(Lcom/mediatek/ims/MMTelSSTransport;Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    .line 2756
    iget-object v10, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const/4 v11, -0x1

    invoke-static {v10, v11}, Lcom/mediatek/ims/MMTelSSTransport;->-set14(Lcom/mediatek/ims/MMTelSSTransport;I)I

    .line 2757
    iget-object v10, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const-wide/16 v12, 0x0

    invoke-static {v10, v12, v13}, Lcom/mediatek/ims/MMTelSSTransport;->-set13(Lcom/mediatek/ims/MMTelSSTransport;J)J
    :try_end_15b
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_5d .. :try_end_15b} :catch_1d8
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_15b} :catch_24b

    .line 2810
    .end local v2    # "curTime":J
    .end local v5    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    :cond_15b
    iget-object v10, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v10, :cond_16b

    .line 2811
    iget-object v10, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2812
    iget-object v10, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    .line 2814
    :cond_16b
    iget-object v10, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v10}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v10

    if-eqz v10, :cond_17c

    .line 2815
    iget-object v10, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v10}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 2818
    :cond_17c
    const/4 v10, 0x0

    return v10

    .line 2720
    .restart local v2    # "curTime":J
    :cond_17e
    :try_start_17e
    iget-object v10, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v10}, Lcom/mediatek/ims/MMTelSSTransport;->-get13(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v10

    if-eqz v10, :cond_200

    iget-object v10, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v10}, Lcom/mediatek/ims/MMTelSSTransport;->-get15(Lcom/mediatek/ims/MMTelSSTransport;)I

    move-result v10

    if-ne v6, v10, :cond_200

    .line 2721
    iget-object v10, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v10}, Lcom/mediatek/ims/MMTelSSTransport;->-get14(Lcom/mediatek/ims/MMTelSSTransport;)J

    move-result-wide v10

    cmp-long v10, v2, v10

    if-ltz v10, :cond_200

    .line 2722
    iget-object v10, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v10}, Lcom/mediatek/ims/MMTelSSTransport;->-get14(Lcom/mediatek/ims/MMTelSSTransport;)J

    move-result-wide v10

    sub-long v10, v2, v10

    const-wide/32 v12, 0x1d4c0

    cmp-long v10, v10, v12

    if-gez v10, :cond_200

    .line 2723
    const-string/jumbo v10, "MMTelSS"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "handleSetCLIR(): using mOirCache: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v12}, Lcom/mediatek/ims/MMTelSSTransport;->-get13(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2724
    iget-object v10, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v10}, Lcom/mediatek/ims/MMTelSSTransport;->-get13(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v5

    .line 2725
    .restart local v5    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    iget-object v10, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v10}, Lcom/mediatek/ims/MMTelSSTransport;->-get9(Lcom/mediatek/ims/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->setNetwork(Landroid/net/Network;)V
    :try_end_1d6
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_17e .. :try_end_1d6} :catch_1d8
    .catch Ljava/lang/Exception; {:try_start_17e .. :try_end_1d6} :catch_24b

    goto/16 :goto_137

    .line 2758
    .end local v2    # "curTime":J
    .end local v5    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    :catch_1d8
    move-exception v9

    .line 2759
    .local v9, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    iget-object v10, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/mediatek/ims/MMTelSSTransport;->-set12(Lcom/mediatek/ims/MMTelSSTransport;Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    .line 2760
    iget-object v10, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const/4 v11, -0x1

    invoke-static {v10, v11}, Lcom/mediatek/ims/MMTelSSTransport;->-set14(Lcom/mediatek/ims/MMTelSSTransport;I)I

    .line 2761
    iget-object v10, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const-wide/16 v12, 0x0

    invoke-static {v10, v12, v13}, Lcom/mediatek/ims/MMTelSSTransport;->-set13(Lcom/mediatek/ims/MMTelSSTransport;J)J

    .line 2763
    invoke-virtual {v9}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v10

    const/16 v11, 0x19c

    if-ne v10, v11, :cond_2c7

    .line 2764
    const-string/jumbo v10, "MMTelSS"

    const-string/jumbo v11, "handleSetCLIR(): HTTP_ERROR_CODE_412"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2765
    const/16 v10, 0x19c

    return v10

    .line 2727
    .end local v9    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    .restart local v2    # "curTime":J
    :cond_200
    :try_start_200
    invoke-static {}, Lcom/mediatek/ims/MMTelSSTransport;->-get16()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v11}, Lcom/mediatek/ims/MMTelSSTransport;->-get9(Lcom/mediatek/ims/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v10, v12, v11}, Lcom/mediatek/simservs/client/SimServs;->getOriginatingIdentityPresentationRestriction(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v5

    .line 2728
    .restart local v5    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    iget-object v10, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v10, v5}, Lcom/mediatek/ims/MMTelSSTransport;->-set12(Lcom/mediatek/ims/MMTelSSTransport;Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    .line 2729
    iget-object v10, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v10, v6}, Lcom/mediatek/ims/MMTelSSTransport;->-set14(Lcom/mediatek/ims/MMTelSSTransport;I)I

    .line 2730
    iget-object v10, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v10, v2, v3}, Lcom/mediatek/ims/MMTelSSTransport;->-set13(Lcom/mediatek/ims/MMTelSSTransport;J)J

    .line 2731
    const-string/jumbo v10, "MMTelSS"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "handleSetCLIR(): new mOirCache = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v12}, Lcom/mediatek/ims/MMTelSSTransport;->-get13(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2732
    const-string/jumbo v12, ", curTime = "

    .line 2731
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_249
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_200 .. :try_end_249} :catch_1d8
    .catch Ljava/lang/Exception; {:try_start_200 .. :try_end_249} :catch_24b

    goto/16 :goto_137

    .line 2787
    .end local v2    # "curTime":J
    .end local v5    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    :catch_24b
    move-exception v4

    .line 2790
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "MMTelSS"

    const-string/jumbo v11, "handleSetCLIR():Start to Print Stack Trace"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2791
    iget-object v10, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/mediatek/ims/MMTelSSTransport;->-set12(Lcom/mediatek/ims/MMTelSSTransport;Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    .line 2792
    iget-object v10, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const/4 v11, -0x1

    invoke-static {v10, v11}, Lcom/mediatek/ims/MMTelSSTransport;->-set14(Lcom/mediatek/ims/MMTelSSTransport;I)I

    .line 2793
    iget-object v10, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const-wide/16 v12, 0x0

    invoke-static {v10, v12, v13}, Lcom/mediatek/ims/MMTelSSTransport;->-set13(Lcom/mediatek/ims/MMTelSSTransport;J)J

    .line 2795
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 2796
    iget-object v10, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v10, :cond_15b

    .line 2798
    const/4 v10, 0x2

    invoke-static {v10}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 2799
    .local v0, "ce":Lcom/android/internal/telephony/CommandException;
    iget-object v10, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v11, 0x0

    invoke-static {v10, v11, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2800
    iget-object v10, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    .line 2801
    iget-object v10, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v10}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v10

    if-eqz v10, :cond_290

    .line 2802
    iget-object v10, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v10}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 2804
    :cond_290
    const/4 v10, 0x0

    return v10

    .line 2739
    .end local v0    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "curTime":J
    .restart local v5    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    :cond_292
    const/4 v10, 0x1

    :try_start_293
    invoke-virtual {v5, v10}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->setDefaultPresentationRestricted(Z)V

    goto/16 :goto_148

    .line 2741
    :cond_298
    const/4 v10, 0x2

    if-ne v1, v10, :cond_2b1

    .line 2742
    invoke-static {v6}, Lcom/mediatek/ims/MMTelSSUtils;->isOp124IccCard(I)Z

    move-result v10

    if-eqz v10, :cond_2ab

    .line 2743
    sget v10, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->NODE_ROOT_FULL_CHILD:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v5, v11, v12, v10, v13}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->setDefaultPresentationRestricted(ZZIZ)V

    goto/16 :goto_148

    .line 2745
    :cond_2ab
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->setDefaultPresentationRestricted(Z)V

    goto/16 :goto_148

    .line 2748
    :cond_2b1
    invoke-static {v6}, Lcom/mediatek/ims/MMTelSSUtils;->isOp124IccCard(I)Z

    move-result v10

    if-eqz v10, :cond_2c1

    .line 2749
    sget v10, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->NODE_ROOT_FULL_CHILD:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v5, v11, v12, v10, v13}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->setDefaultPresentationRestricted(ZZIZ)V

    goto/16 :goto_148

    .line 2751
    :cond_2c1
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->setDefaultPresentationRestricted(Z)V
    :try_end_2c5
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_293 .. :try_end_2c5} :catch_1d8
    .catch Ljava/lang/Exception; {:try_start_293 .. :try_end_2c5} :catch_24b

    goto/16 :goto_148

    .line 2767
    .end local v2    # "curTime":J
    .end local v5    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    .restart local v9    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_2c7
    const-string/jumbo v10, "MMTelSS"

    const-string/jumbo v11, "handleSetCLIR(): XcapException"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2768
    invoke-virtual {v9}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 2769
    iget-object v10, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v10, :cond_15b

    .line 2770
    invoke-virtual {v9}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v10

    if-eqz v10, :cond_309

    .line 2771
    const-string/jumbo v10, "MMTelSS"

    const-string/jumbo v11, "handleSetCLIR(): xcapException.isConnectionError()"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2772
    iget-object v10, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    new-instance v11, Ljava/net/UnknownHostException;

    invoke-direct {v11}, Ljava/net/UnknownHostException;-><init>()V

    const/4 v12, 0x0

    invoke-static {v10, v12, v11}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2781
    :goto_2f1
    iget-object v10, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    .line 2782
    iget-object v10, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v10}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v10

    if-eqz v10, :cond_307

    .line 2783
    iget-object v10, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v10}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 2785
    :cond_307
    const/4 v10, 0x0

    return v10

    .line 2773
    :cond_309
    invoke-static {v6}, Lcom/mediatek/ims/MMTelSSUtils;->isOp06IccCard(I)Z

    move-result v10

    if-eqz v10, :cond_33f

    .line 2774
    invoke-virtual {v9}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v10

    if-eqz v10, :cond_33f

    .line 2775
    const-string/jumbo v10, "MMTelSS"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "handleSetCLIR(): OP06 with http Error: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2776
    invoke-virtual {v9}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v12

    .line 2775
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2777
    iget-object v10, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    new-instance v11, Ljava/net/UnknownHostException;

    invoke-direct {v11}, Ljava/net/UnknownHostException;-><init>()V

    const/4 v12, 0x0

    invoke-static {v10, v12, v11}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_2f1

    .line 2779
    :cond_33f
    iget-object v10, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v11, 0x0

    invoke-static {v10, v11, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_2f1
.end method

.method public handleSetCOLP(Lcom/mediatek/ims/MMTelSSRequest;)V
    .registers 15
    .param p1, "rr"    # Lcom/mediatek/ims/MMTelSSRequest;

    .prologue
    const/4 v12, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 2993
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2994
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2995
    .local v4, "reqNo":I
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2997
    .local v5, "serialNo":I
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2998
    .local v1, "colpEnable":I
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2999
    .local v3, "phoneId":I
    const-string/jumbo v8, "MMTelSS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Read from COLP parcel:colpEnable="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3001
    invoke-static {v3}, Lcom/mediatek/ims/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v8

    if-nez v8, :cond_5d

    .line 3002
    const-string/jumbo v8, "MMTelSS"

    const-string/jumbo v9, "handleSetCOLP(): !isPreferXcap()"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3003
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v8, :cond_5c

    .line 3004
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    new-instance v9, Ljava/net/UnknownHostException;

    invoke-direct {v9}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v8, v11, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3005
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 3007
    :cond_5c
    return-void

    .line 3011
    :cond_5d
    :try_start_5d
    iget-object v8, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v8, v3}, Lcom/mediatek/ims/MMTelSSTransport;->-wrap0(Lcom/mediatek/ims/MMTelSSTransport;I)Z

    move-result v8

    if-nez v8, :cond_98

    .line 3012
    const-string/jumbo v8, "MMTelSS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "handleSetCOLP(): XcapRoot = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    iget-object v10, v10, Lcom/mediatek/ims/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3013
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v8, :cond_97

    .line 3014
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    new-instance v9, Ljava/net/UnknownHostException;

    invoke-direct {v9}, Ljava/net/UnknownHostException;-><init>()V

    const/4 v10, 0x0

    invoke-static {v8, v10, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3015
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 3017
    :cond_97
    return-void

    .line 3021
    :cond_98
    invoke-static {}, Lcom/mediatek/ims/MMTelSSTransport;->-get16()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v9}, Lcom/mediatek/ims/MMTelSSTransport;->-get9(Lcom/mediatek/ims/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v8, v10, v9}, Lcom/mediatek/simservs/client/SimServs;->getTerminatingIdentityPresentation(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;

    move-result-object v6

    .line 3022
    .local v6, "tip":Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    if-ne v1, v12, :cond_cd

    .line 3023
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;->setActive(Z)V
    :try_end_ad
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_5d .. :try_end_ad} :catch_d2
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_ad} :catch_113

    .line 3067
    .end local v6    # "tip":Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    :cond_ad
    :goto_ad
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v8, :cond_bb

    .line 3068
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-static {v8, v11, v11}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3069
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 3071
    :cond_bb
    iget-object v8, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v8}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v8

    if-eqz v8, :cond_cc

    .line 3072
    iget-object v8, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v8}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 2992
    :cond_cc
    return-void

    .line 3025
    .restart local v6    # "tip":Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    :cond_cd
    const/4 v8, 0x0

    :try_start_ce
    invoke-virtual {v6, v8}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;->setActive(Z)V
    :try_end_d1
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_ce .. :try_end_d1} :catch_d2
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_d1} :catch_113

    goto :goto_ad

    .line 3027
    .end local v6    # "tip":Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    :catch_d2
    move-exception v7

    .line 3028
    .local v7, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    const-string/jumbo v8, "MMTelSS"

    const-string/jumbo v9, "handleSetCOLP(): XcapException"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3029
    invoke-virtual {v7}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 3030
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v8, :cond_ad

    .line 3031
    invoke-virtual {v7}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v8

    if-eqz v8, :cond_145

    .line 3032
    const-string/jumbo v8, "MMTelSS"

    const-string/jumbo v9, "handleSetCOLP(): xcapException.isConnectionError()"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3033
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    new-instance v9, Ljava/net/UnknownHostException;

    invoke-direct {v9}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v8, v11, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3042
    :goto_fc
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 3043
    iget-object v8, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v8}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v8

    if-eqz v8, :cond_112

    .line 3044
    iget-object v8, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v8}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 3046
    :cond_112
    return-void

    .line 3048
    .end local v7    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :catch_113
    move-exception v2

    .line 3051
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "MMTelSS"

    const-string/jumbo v9, "handleSetCOLP():Start to Print Stack Trace"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3052
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 3053
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v8, :cond_ad

    .line 3055
    const/4 v8, 0x2

    invoke-static {v8}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 3056
    .local v0, "ce":Lcom/android/internal/telephony/CommandException;
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-static {v8, v11, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3057
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 3058
    iget-object v8, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v8}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v8

    if-eqz v8, :cond_144

    .line 3059
    iget-object v8, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v8}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 3061
    :cond_144
    return-void

    .line 3034
    .end local v0    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v7    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_145
    invoke-static {v3}, Lcom/mediatek/ims/MMTelSSUtils;->isOp06IccCard(I)Z

    move-result v8

    if-eqz v8, :cond_17a

    .line 3035
    invoke-virtual {v7}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v8

    if-eqz v8, :cond_17a

    .line 3036
    const-string/jumbo v8, "MMTelSS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "handleSetCOLP(): OP06 with http Error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3037
    invoke-virtual {v7}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v10

    .line 3036
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3038
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    new-instance v9, Ljava/net/UnknownHostException;

    invoke-direct {v9}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v8, v11, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_fc

    .line 3040
    :cond_17a
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-static {v8, v11, v7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto/16 :goto_fc
.end method

.method public handleSetCOLR(Lcom/mediatek/ims/MMTelSSRequest;)V
    .registers 16
    .param p1, "rr"    # Lcom/mediatek/ims/MMTelSSRequest;

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 2907
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2908
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2909
    .local v4, "reqNo":I
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2911
    .local v5, "serialNo":I
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2912
    .local v1, "colrMode":I
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2913
    .local v3, "phoneId":I
    const-string/jumbo v8, "MMTelSS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Read from COLR parcel:clirMode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2915
    invoke-static {v3}, Lcom/mediatek/ims/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v8

    if-nez v8, :cond_5e

    .line 2916
    const-string/jumbo v8, "MMTelSS"

    const-string/jumbo v9, "handleSetCOLR(): !isPreferXcap()"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2917
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v8, :cond_5d

    .line 2918
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    new-instance v9, Ljava/net/UnknownHostException;

    invoke-direct {v9}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v8, v11, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2919
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 2921
    :cond_5d
    return-void

    .line 2925
    :cond_5e
    :try_start_5e
    iget-object v8, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v8, v3}, Lcom/mediatek/ims/MMTelSSTransport;->-wrap0(Lcom/mediatek/ims/MMTelSSTransport;I)Z

    move-result v8

    if-nez v8, :cond_99

    .line 2926
    const-string/jumbo v8, "MMTelSS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "handleSetCOLR(): XcapRoot = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    iget-object v10, v10, Lcom/mediatek/ims/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2927
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v8, :cond_98

    .line 2928
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    new-instance v9, Ljava/net/UnknownHostException;

    invoke-direct {v9}, Ljava/net/UnknownHostException;-><init>()V

    const/4 v10, 0x0

    invoke-static {v8, v10, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2929
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 2931
    :cond_98
    return-void

    .line 2935
    :cond_99
    invoke-static {}, Lcom/mediatek/ims/MMTelSSTransport;->-get16()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v9}, Lcom/mediatek/ims/MMTelSSTransport;->-get9(Lcom/mediatek/ims/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v8, v10, v9}, Lcom/mediatek/simservs/client/SimServs;->getTerminatingIdentityPresentationRestriction(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;

    move-result-object v6

    .line 2936
    .local v6, "tir":Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    if-ne v1, v12, :cond_ce

    .line 2937
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->setDefaultPresentationRestricted(Z)V
    :try_end_ae
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_5e .. :try_end_ae} :catch_d5
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_ae} :catch_11b

    .line 2983
    .end local v6    # "tir":Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    :cond_ae
    :goto_ae
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v8, :cond_bc

    .line 2984
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-static {v8, v11, v11}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2985
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 2987
    :cond_bc
    iget-object v8, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v8}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v8

    if-eqz v8, :cond_cd

    .line 2988
    iget-object v8, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v8}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 2906
    :cond_cd
    return-void

    .line 2938
    .restart local v6    # "tir":Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    :cond_ce
    if-ne v1, v13, :cond_116

    .line 2939
    const/4 v8, 0x0

    :try_start_d1
    invoke-virtual {v6, v8}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->setDefaultPresentationRestricted(Z)V
    :try_end_d4
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_d1 .. :try_end_d4} :catch_d5
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_d4} :catch_11b

    goto :goto_ae

    .line 2943
    .end local v6    # "tir":Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    :catch_d5
    move-exception v7

    .line 2944
    .local v7, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    const-string/jumbo v8, "MMTelSS"

    const-string/jumbo v9, "handleSetCOLR(): XcapException"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2945
    invoke-virtual {v7}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 2946
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v8, :cond_ae

    .line 2947
    invoke-virtual {v7}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v8

    if-eqz v8, :cond_14c

    .line 2948
    const-string/jumbo v8, "MMTelSS"

    const-string/jumbo v9, "handleSetCOLR(): xcapException.isConnectionError()"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2949
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    new-instance v9, Ljava/net/UnknownHostException;

    invoke-direct {v9}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v8, v11, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2958
    :goto_ff
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 2959
    iget-object v8, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v8}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v8

    if-eqz v8, :cond_115

    .line 2960
    iget-object v8, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v8}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 2962
    :cond_115
    return-void

    .line 2941
    .end local v7    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    .restart local v6    # "tir":Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    :cond_116
    const/4 v8, 0x0

    :try_start_117
    invoke-virtual {v6, v8}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->setDefaultPresentationRestricted(Z)V
    :try_end_11a
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_117 .. :try_end_11a} :catch_d5
    .catch Ljava/lang/Exception; {:try_start_117 .. :try_end_11a} :catch_11b

    goto :goto_ae

    .line 2964
    .end local v6    # "tir":Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    :catch_11b
    move-exception v2

    .line 2967
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "MMTelSS"

    const-string/jumbo v9, "handleSetCOLR():Start to Print Stack Trace"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2968
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 2969
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v8, :cond_ae

    .line 2971
    invoke-static {v13}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 2972
    .local v0, "ce":Lcom/android/internal/telephony/CommandException;
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-static {v8, v11, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2973
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 2974
    iget-object v8, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v8}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v8

    if-eqz v8, :cond_14b

    .line 2975
    iget-object v8, p0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v8}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 2977
    :cond_14b
    return-void

    .line 2950
    .end local v0    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v7    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_14c
    invoke-static {v3}, Lcom/mediatek/ims/MMTelSSUtils;->isOp06IccCard(I)Z

    move-result v8

    if-eqz v8, :cond_182

    .line 2951
    invoke-virtual {v7}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v8

    if-eqz v8, :cond_182

    .line 2952
    const-string/jumbo v8, "MMTelSS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "handleSetCOLR(): OP06 with http Error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2953
    invoke-virtual {v7}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v10

    .line 2952
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2954
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    new-instance v9, Ljava/net/UnknownHostException;

    invoke-direct {v9}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v8, v11, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto/16 :goto_ff

    .line 2956
    :cond_182
    iget-object v8, p1, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-static {v8, v11, v7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto/16 :goto_ff
.end method

.method public handleSetCW(Lcom/mediatek/ims/MMTelSSRequest;)I
    .registers 20
    .param p1, "rr"    # Lcom/mediatek/ims/MMTelSSRequest;

    .prologue
    .line 3079
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3080
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 3081
    .local v9, "reqNo":I
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 3082
    .local v10, "serialNo":I
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 3083
    .local v7, "enabled":I
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 3084
    .local v11, "serviceClass":I
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 3086
    .local v8, "phoneId":I
    invoke-static {v8}, Lcom/mediatek/ims/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v13

    if-nez v13, :cond_5b

    .line 3087
    const-string/jumbo v13, "MMTelSS"

    const-string/jumbo v14, "handleSetCW(): !isPreferXcap()"

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3088
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v13, :cond_59

    .line 3089
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    new-instance v14, Ljava/net/UnknownHostException;

    invoke-direct {v14}, Ljava/net/UnknownHostException;-><init>()V

    const/4 v15, 0x0

    invoke-static {v13, v15, v14}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3090
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v13}, Landroid/os/Message;->sendToTarget()V

    .line 3092
    :cond_59
    const/4 v13, 0x0

    return v13

    .line 3097
    :cond_5b
    :try_start_5b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 3098
    .local v4, "curTime":J
    const-string/jumbo v13, "MMTelSS"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "handleSetCW(): mCwCache = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v15}, Lcom/mediatek/ims/MMTelSSTransport;->-get3(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", curTime = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 3099
    const-string/jumbo v15, ", mCwCacheLastQueried = "

    .line 3098
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 3099
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v15}, Lcom/mediatek/ims/MMTelSSTransport;->-get4(Lcom/mediatek/ims/MMTelSSTransport;)J

    move-result-wide v16

    .line 3098
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 3100
    const-string/jumbo v15, ", phoneId = "

    .line 3098
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3101
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v13, v8}, Lcom/mediatek/ims/MMTelSSTransport;->-wrap0(Lcom/mediatek/ims/MMTelSSTransport;I)Z

    move-result v13

    if-nez v13, :cond_f2

    .line 3102
    const-string/jumbo v13, "MMTelSS"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "handleSetCW(): XcapRoot = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    iget-object v15, v15, Lcom/mediatek/ims/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3103
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v13, :cond_f0

    .line 3104
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    new-instance v14, Ljava/net/UnknownHostException;

    invoke-direct {v14}, Ljava/net/UnknownHostException;-><init>()V

    const/4 v15, 0x0

    invoke-static {v13, v15, v14}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3105
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v13}, Landroid/os/Message;->sendToTarget()V

    .line 3107
    :cond_f0
    const/4 v13, 0x0

    return v13

    .line 3110
    :cond_f2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v13}, Lcom/mediatek/ims/MMTelSSTransport;->-get3(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v13

    if-eqz v13, :cond_1ba

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v13}, Lcom/mediatek/ims/MMTelSSTransport;->-get5(Lcom/mediatek/ims/MMTelSSTransport;)I

    move-result v13

    if-ne v8, v13, :cond_1ba

    .line 3111
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v13}, Lcom/mediatek/ims/MMTelSSTransport;->-get3(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v13

    invoke-virtual {v13}, Lcom/mediatek/simservs/client/CommunicationWaiting;->isSupportEtag()Z

    move-result v13

    .line 3110
    if-eqz v13, :cond_1ba

    .line 3112
    const-string/jumbo v13, "MMTelSS"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "handleSetCW(): using ETAG mCwCache: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v15}, Lcom/mediatek/ims/MMTelSSTransport;->-get3(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3113
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v13}, Lcom/mediatek/ims/MMTelSSTransport;->-get3(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v3

    .line 3114
    .local v3, "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v13}, Lcom/mediatek/ims/MMTelSSTransport;->-get9(Lcom/mediatek/ims/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v13

    invoke-virtual {v3, v13}, Lcom/mediatek/simservs/client/CommunicationWaiting;->setNetwork(Landroid/net/Network;)V

    .line 3115
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/CommunicationWaiting;->refresh()V

    .line 3116
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v13, v4, v5}, Lcom/mediatek/ims/MMTelSSTransport;->-set4(Lcom/mediatek/ims/MMTelSSTransport;J)J

    .line 3131
    :goto_153
    const-string/jumbo v13, "MMTelSS"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "handleSetCW(): enabled = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3132
    const/4 v13, 0x1

    if-ne v7, v13, :cond_2fc

    .line 3133
    const/4 v13, 0x1

    invoke-virtual {v3, v13}, Lcom/mediatek/simservs/client/CommunicationWaiting;->setActive(Z)V

    .line 3138
    :goto_174
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/mediatek/ims/MMTelSSTransport;->-set3(Lcom/mediatek/ims/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationWaiting;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    .line 3139
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const/4 v14, -0x1

    invoke-static {v13, v14}, Lcom/mediatek/ims/MMTelSSTransport;->-set5(Lcom/mediatek/ims/MMTelSSTransport;I)I

    .line 3140
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const-wide/16 v14, 0x0

    invoke-static {v13, v14, v15}, Lcom/mediatek/ims/MMTelSSTransport;->-set4(Lcom/mediatek/ims/MMTelSSTransport;J)J
    :try_end_18d
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_5b .. :try_end_18d} :catch_222
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_18d} :catch_2a5

    .line 3192
    .end local v3    # "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    .end local v4    # "curTime":J
    :cond_18d
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v13, :cond_1a3

    .line 3193
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3194
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v13}, Landroid/os/Message;->sendToTarget()V

    .line 3197
    :cond_1a3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v13}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v13

    if-eqz v13, :cond_1b8

    .line 3198
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v13}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 3201
    :cond_1b8
    const/4 v13, 0x0

    return v13

    .line 3117
    .restart local v4    # "curTime":J
    :cond_1ba
    :try_start_1ba
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v13}, Lcom/mediatek/ims/MMTelSSTransport;->-get3(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v13

    if-eqz v13, :cond_250

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v13}, Lcom/mediatek/ims/MMTelSSTransport;->-get5(Lcom/mediatek/ims/MMTelSSTransport;)I

    move-result v13

    if-ne v8, v13, :cond_250

    .line 3118
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v13}, Lcom/mediatek/ims/MMTelSSTransport;->-get4(Lcom/mediatek/ims/MMTelSSTransport;)J

    move-result-wide v14

    cmp-long v13, v4, v14

    if-ltz v13, :cond_250

    .line 3119
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v13}, Lcom/mediatek/ims/MMTelSSTransport;->-get4(Lcom/mediatek/ims/MMTelSSTransport;)J

    move-result-wide v14

    sub-long v14, v4, v14

    const-wide/32 v16, 0x1d4c0

    cmp-long v13, v14, v16

    if-gez v13, :cond_250

    .line 3120
    const-string/jumbo v13, "MMTelSS"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "handleSetCW(): using mCwCache: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v15}, Lcom/mediatek/ims/MMTelSSTransport;->-get3(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3121
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v13}, Lcom/mediatek/ims/MMTelSSTransport;->-get3(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v3

    .line 3122
    .restart local v3    # "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v13}, Lcom/mediatek/ims/MMTelSSTransport;->-get9(Lcom/mediatek/ims/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v13

    invoke-virtual {v3, v13}, Lcom/mediatek/simservs/client/CommunicationWaiting;->setNetwork(Landroid/net/Network;)V
    :try_end_220
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_1ba .. :try_end_220} :catch_222
    .catch Ljava/lang/Exception; {:try_start_1ba .. :try_end_220} :catch_2a5

    goto/16 :goto_153

    .line 3141
    .end local v3    # "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    .end local v4    # "curTime":J
    :catch_222
    move-exception v12

    .line 3142
    .local v12, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/mediatek/ims/MMTelSSTransport;->-set3(Lcom/mediatek/ims/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationWaiting;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    .line 3143
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const/4 v14, -0x1

    invoke-static {v13, v14}, Lcom/mediatek/ims/MMTelSSTransport;->-set5(Lcom/mediatek/ims/MMTelSSTransport;I)I

    .line 3144
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const-wide/16 v14, 0x0

    invoke-static {v13, v14, v15}, Lcom/mediatek/ims/MMTelSSTransport;->-set4(Lcom/mediatek/ims/MMTelSSTransport;J)J

    .line 3145
    invoke-virtual {v12}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v13

    const/16 v14, 0x19c

    if-ne v13, v14, :cond_302

    .line 3146
    const-string/jumbo v13, "MMTelSS"

    const-string/jumbo v14, "handleSetCW(): HTTP_ERROR_CODE_412"

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3147
    const/16 v13, 0x19c

    return v13

    .line 3124
    .end local v12    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    .restart local v4    # "curTime":J
    :cond_250
    :try_start_250
    invoke-static {}, Lcom/mediatek/ims/MMTelSSTransport;->-get16()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v14}, Lcom/mediatek/ims/MMTelSSTransport;->-get9(Lcom/mediatek/ims/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v13, v15, v14}, Lcom/mediatek/simservs/client/SimServs;->getCommunicationWaiting(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v3

    .line 3125
    .restart local v3    # "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v13, v3}, Lcom/mediatek/ims/MMTelSSTransport;->-set3(Lcom/mediatek/ims/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationWaiting;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    .line 3126
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v13, v8}, Lcom/mediatek/ims/MMTelSSTransport;->-set5(Lcom/mediatek/ims/MMTelSSTransport;I)I

    .line 3127
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v13, v4, v5}, Lcom/mediatek/ims/MMTelSSTransport;->-set4(Lcom/mediatek/ims/MMTelSSTransport;J)J

    .line 3128
    const-string/jumbo v13, "MMTelSS"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "handleSetCW(): new mCwCache = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v15}, Lcom/mediatek/ims/MMTelSSTransport;->-get3(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 3129
    const-string/jumbo v15, ", curTime = "

    .line 3128
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a3
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_250 .. :try_end_2a3} :catch_222
    .catch Ljava/lang/Exception; {:try_start_250 .. :try_end_2a3} :catch_2a5

    goto/16 :goto_153

    .line 3169
    .end local v3    # "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    .end local v4    # "curTime":J
    :catch_2a5
    move-exception v6

    .line 3172
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v13, "MMTelSS"

    const-string/jumbo v14, "handleSetCW():Start to Print Stack Trace"

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3173
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/mediatek/ims/MMTelSSTransport;->-set3(Lcom/mediatek/ims/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationWaiting;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    .line 3174
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const/4 v14, -0x1

    invoke-static {v13, v14}, Lcom/mediatek/ims/MMTelSSTransport;->-set5(Lcom/mediatek/ims/MMTelSSTransport;I)I

    .line 3175
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    const-wide/16 v14, 0x0

    invoke-static {v13, v14, v15}, Lcom/mediatek/ims/MMTelSSTransport;->-set4(Lcom/mediatek/ims/MMTelSSTransport;J)J

    .line 3177
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 3178
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v13, :cond_18d

    .line 3180
    const/4 v13, 0x2

    invoke-static {v13}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v2

    .line 3181
    .local v2, "ce":Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v14, 0x0

    invoke-static {v13, v14, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3182
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v13}, Landroid/os/Message;->sendToTarget()V

    .line 3183
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v13}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v13

    if-eqz v13, :cond_2fa

    .line 3184
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v13}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 3186
    :cond_2fa
    const/4 v13, 0x0

    return v13

    .line 3135
    .end local v2    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v3    # "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    .restart local v4    # "curTime":J
    :cond_2fc
    const/4 v13, 0x0

    :try_start_2fd
    invoke-virtual {v3, v13}, Lcom/mediatek/simservs/client/CommunicationWaiting;->setActive(Z)V
    :try_end_300
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_2fd .. :try_end_300} :catch_222
    .catch Ljava/lang/Exception; {:try_start_2fd .. :try_end_300} :catch_2a5

    goto/16 :goto_174

    .line 3149
    .end local v3    # "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    .end local v4    # "curTime":J
    .restart local v12    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_302
    const-string/jumbo v13, "MMTelSS"

    const-string/jumbo v14, "handleSetCW(): XcapException"

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3150
    invoke-virtual {v12}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 3151
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v13, :cond_18d

    .line 3152
    invoke-virtual {v12}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v13

    if-eqz v13, :cond_34e

    .line 3153
    const-string/jumbo v13, "MMTelSS"

    const-string/jumbo v14, "handleSetCW(): xcapException.isConnectionError()"

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3154
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    new-instance v14, Ljava/net/UnknownHostException;

    invoke-direct {v14}, Ljava/net/UnknownHostException;-><init>()V

    const/4 v15, 0x0

    invoke-static {v13, v15, v14}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3163
    :goto_330
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v13}, Landroid/os/Message;->sendToTarget()V

    .line 3164
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v13}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v13

    if-eqz v13, :cond_34c

    .line 3165
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-static {v13}, Lcom/mediatek/ims/MMTelSSTransport;->-get18(Lcom/mediatek/ims/MMTelSSTransport;)Lcom/mediatek/ims/XcapMobileDataNetworkManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/mediatek/ims/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 3167
    :cond_34c
    const/4 v13, 0x0

    return v13

    .line 3155
    :cond_34e
    invoke-static {v8}, Lcom/mediatek/ims/MMTelSSUtils;->isOp06IccCard(I)Z

    move-result v13

    if-eqz v13, :cond_386

    .line 3156
    invoke-virtual {v12}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v13

    if-eqz v13, :cond_386

    .line 3157
    const-string/jumbo v13, "MMTelSS"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "handleSetCW(): OP06 with http Error: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 3158
    invoke-virtual {v12}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v15

    .line 3157
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3159
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    new-instance v14, Ljava/net/UnknownHostException;

    invoke-direct {v14}, Ljava/net/UnknownHostException;-><init>()V

    const/4 v15, 0x0

    invoke-static {v13, v15, v14}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_330

    .line 3161
    :cond_386
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/mediatek/ims/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v14, 0x0

    invoke-static {v13, v14, v12}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_330
.end method

.method public hasExtraMedia(Ljava/util/List;II)Z
    .registers 7
    .param p2, "serviceClass"    # I
    .param p3, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II)Z"
        }
    .end annotation

    .prologue
    .local p1, "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 570
    const/4 v0, 0x0

    .line 571
    .local v0, "found":Z
    invoke-virtual {p0, p1, p2, p3}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;II)Z

    move-result v0

    .line 572
    .local v0, "found":Z
    if-eqz v0, :cond_11

    if-eqz p1, :cond_11

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_11

    .line 573
    return v2

    .line 575
    :cond_11
    const/4 v1, 0x0

    return v1
.end method

.method public isBAIC(Lcom/mediatek/simservs/client/policy/Conditions;II)Z
    .registers 6
    .param p1, "cond"    # Lcom/mediatek/simservs/client/policy/Conditions;
    .param p2, "serviceClass"    # I
    .param p3, "phoneId"    # I

    .prologue
    const/4 v1, 0x1

    .line 605
    if-nez p1, :cond_4

    .line 606
    return v1

    .line 607
    :cond_4
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v0

    if-nez v0, :cond_21

    .line 608
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v0

    if-nez v0, :cond_21

    .line 609
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendAnonymous()Z

    move-result v0

    if-nez v0, :cond_21

    .line 610
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;II)Z

    move-result v0

    .line 607
    if-eqz v0, :cond_21

    .line 611
    return v1

    .line 613
    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method public isBAOC(Lcom/mediatek/simservs/client/policy/Conditions;II)Z
    .registers 6
    .param p1, "cond"    # Lcom/mediatek/simservs/client/policy/Conditions;
    .param p2, "serviceClass"    # I
    .param p3, "phoneId"    # I

    .prologue
    const/4 v1, 0x1

    .line 591
    if-nez p1, :cond_4

    .line 592
    return v1

    .line 593
    :cond_4
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 594
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 595
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/mediatek/ims/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;II)Z

    move-result v0

    .line 593
    if-eqz v0, :cond_1b

    .line 596
    return v1

    .line 598
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method public run()V
    .registers 1

    .prologue
    .line 506
    return-void
.end method
