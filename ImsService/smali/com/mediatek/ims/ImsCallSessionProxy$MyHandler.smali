.class Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;
.super Landroid/os/Handler;
.source "ImsCallSessionProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsCallSessionProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field private static synthetic -com_mediatek_ims_ImsCallSessionProxy$CallErrorStateSwitchesValues:[I = null

.field private static final PAU_END_FLAG_FIELD:Ljava/lang/String; = ">"

.field private static final PAU_NAME_FIELD:Ljava/lang/String; = "<name:"

.field private static final PAU_NUMBER_FIELD:Ljava/lang/String; = "<tel:"

.field private static final PAU_SIP_NUMBER_FIELD:Ljava/lang/String; = "<sip:"


# instance fields
.field final synthetic $SWITCH_TABLE$com$mediatek$ims$ImsCallSessionProxy$CallErrorState:[I

.field final synthetic this$0:Lcom/mediatek/ims/ImsCallSessionProxy;


# direct methods
.method private static synthetic -getcom_mediatek_ims_ImsCallSessionProxy$CallErrorStateSwitchesValues()[I
    .registers 3

    sget-object v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->-com_mediatek_ims_ImsCallSessionProxy$CallErrorStateSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->-com_mediatek_ims_ImsCallSessionProxy$CallErrorStateSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;->values()[Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;->DIAL:Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    invoke-virtual {v1}, Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_30

    :goto_17
    :try_start_17
    sget-object v1, Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;->DISCONNECT:Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    invoke-virtual {v1}, Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_2e

    :goto_20
    :try_start_20
    sget-object v1, Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;->IDLE:Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    invoke-virtual {v1}, Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_2c

    :goto_29
    sput-object v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->-com_mediatek_ims_ImsCallSessionProxy$CallErrorStateSwitchesValues:[I

    return-object v0

    :catch_2c
    move-exception v1

    goto :goto_29

    :catch_2e
    move-exception v1

    goto :goto_20

    :catch_30
    move-exception v1

    goto :goto_17
.end method

.method public constructor <init>(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/Looper;)V
    .registers 5
    .param p1, "this$0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 974
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 975
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 974
    return-void
.end method

.method private getDisplayNameFromPau(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "pau"    # Ljava/lang/String;

    .prologue
    .line 980
    const-string/jumbo v2, ""

    .line 981
    .local v2, "value":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 982
    const-string/jumbo v3, "ImsCallSessionProxy"

    const-string/jumbo v4, "getDisplayNameFromPau()... pau is null !"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    return-object v2

    .line 985
    :cond_13
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_29

    .line 986
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 987
    .local v0, "aChar":C
    const/16 v3, 0x22

    if-ne v0, v3, :cond_25

    .line 985
    :goto_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 990
    :cond_25
    const/16 v3, 0x3c

    if-ne v0, v3, :cond_2a

    .line 995
    .end local v0    # "aChar":C
    :cond_29
    return-object v2

    .line 993
    .restart local v0    # "aChar":C
    :cond_2a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_22
.end method

.method private getFieldValueFromPau(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "pau"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/String;

    .prologue
    .line 1036
    const-string/jumbo v2, ""

    .line 1037
    .local v2, "value":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1038
    :cond_f
    const-string/jumbo v3, "ImsCallSessionProxy"

    const-string/jumbo v4, "getFieldValueFromPau()... pau or field is null !"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    return-object v2

    .line 1042
    :cond_19
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_45

    .line 1043
    const-string/jumbo v3, "ImsCallSessionProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getFieldValueFromPau()... There is no such field in pau ! field / pau :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1044
    const-string/jumbo v5, " / "

    .line 1043
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    return-object v2

    .line 1048
    :cond_45
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1049
    .local v1, "startIndex":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    .line 1050
    const-string/jumbo v3, ">"

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 1051
    .local v0, "endIndex":I
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1052
    return-object v2
.end method

.method private getWfcDisconnectCause(I)I
    .registers 9
    .param p1, "causeCode"    # I

    .prologue
    const/4 v6, -0x1

    .line 2154
    const-string/jumbo v3, "ImsCallSessionProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[WFC] getWfcDisconnectCause mRatType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get26(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2155
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get33(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v3

    if-eqz v3, :cond_32

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get26(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_33

    .line 2157
    :cond_32
    return v6

    .line 2156
    :cond_33
    const/16 v3, 0x10

    if-eq p1, v3, :cond_32

    .line 2160
    const/4 v0, 0x0

    .line 2162
    .local v0, "disconnectCause":Lcom/mediatek/wfo/DisconnectCause;
    :try_start_38
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get33(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/wfo/IWifiOffloadService;->getDisconnectCause()Lcom/mediatek/wfo/DisconnectCause;
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_41} :catch_45

    move-result-object v0

    .line 2166
    .end local v0    # "disconnectCause":Lcom/mediatek/wfo/DisconnectCause;
    :goto_42
    if-nez v0, :cond_50

    .line 2167
    return v6

    .line 2163
    .restart local v0    # "disconnectCause":Lcom/mediatek/wfo/DisconnectCause;
    :catch_45
    move-exception v1

    .line 2164
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "ImsCallSessionProxy"

    const-string/jumbo v4, "RemoteException in getWfcDisconnectCause()"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    .line 2169
    .end local v0    # "disconnectCause":Lcom/mediatek/wfo/DisconnectCause;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_50
    invoke-virtual {v0}, Lcom/mediatek/wfo/DisconnectCause;->getErrorCause()I

    move-result v2

    .line 2170
    .local v2, "wfcErrorCause":I
    const-string/jumbo v3, "ImsCallSessionProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[WFC] wfcErrorCause = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2171
    const/16 v3, 0x7d1

    if-ne v2, v3, :cond_75

    .line 2172
    const/16 v3, 0x389

    return v3

    .line 2173
    :cond_75
    const/16 v3, 0x7d3

    if-eq v2, v3, :cond_7d

    .line 2174
    const/16 v3, 0x7d5

    if-ne v2, v3, :cond_80

    .line 2175
    :cond_7d
    const/16 v3, 0x38b

    return v3

    .line 2177
    :cond_80
    const/16 v3, 0x7d4

    .line 2176
    if-ne v2, v3, :cond_87

    .line 2178
    const/16 v3, 0x38c

    return v3

    .line 2180
    :cond_87
    return v6
.end method

.method private handleEconfIndication([Ljava/lang/String;)V
    .registers 10
    .param p1, "result"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x3

    const/4 v6, 0x0

    .line 2015
    const-string/jumbo v1, "ImsCallSessionProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "receive EVENT_ECONF_RESULT_INDICATION mCallId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get1(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2016
    const-string/jumbo v3, ", conf_call_id:"

    .line 2015
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2016
    aget-object v3, p1, v6

    .line 2015
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2016
    const-string/jumbo v3, "joined_call_id:"

    .line 2015
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2016
    aget-object v3, p1, v7

    .line 2015
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get1(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_65

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get1(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v1

    aget-object v2, p1, v7

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    aget-object v1, p1, v4

    const-string/jumbo v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 2023
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v2, 0x7

    invoke-static {v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-set13(Lcom/mediatek/ims/ImsCallSessionProxy;I)I

    .line 2026
    :cond_65
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get16(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v1

    if-nez v1, :cond_6e

    .line 2027
    return-void

    .line 2030
    :cond_6e
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get22(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v1

    if-eqz v1, :cond_109

    .line 2032
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get9(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-set6(Lcom/mediatek/ims/ImsCallSessionProxy;I)I

    .line 2033
    aget-object v1, p1, v4

    const-string/jumbo v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_92

    .line 2034
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-set15(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 2036
    :cond_92
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get9(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v1

    if-ne v1, v5, :cond_c7

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get31(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v1

    if-eqz v1, :cond_c7

    .line 2038
    const-string/jumbo v1, "ImsCallSessionProxy"

    const-string/jumbo v2, "3 way conference merge succeeded"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2042
    const-string/jumbo v2, "CC"

    const-string/jumbo v3, "ConfCreated"

    const-string/jumbo v4, "conferenceCall"

    const-string/jumbo v5, " successed"

    .line 2041
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->logDebugMessagesWithNotifyFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2044
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->-wrap2(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 2045
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1, v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->-set10(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 2012
    :cond_c6
    :goto_c6
    return-void

    .line 2046
    :cond_c7
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get9(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v1

    if-ne v1, v5, :cond_c6

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get31(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v1

    if-nez v1, :cond_c6

    .line 2048
    const-string/jumbo v1, "ImsCallSessionProxy"

    const-string/jumbo v2, "3 way conference merge failed!!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2052
    const-string/jumbo v2, "CC"

    const-string/jumbo v3, "ConfCreated"

    const-string/jumbo v4, "conferenceCall"

    const-string/jumbo v5, " failed"

    .line 2051
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->logDebugMessagesWithNotifyFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2054
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->retrieveMergeFail()V

    .line 2056
    aget-object v1, p1, v6

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2057
    .local v0, "confCallId":I
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get12(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsRILAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/ImsRILAdapter;->terminate(I)V

    .line 2059
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1, v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->-set10(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    goto :goto_c6

    .line 2063
    .end local v0    # "confCallId":I
    :cond_109
    aget-object v1, p1, v4

    const-string/jumbo v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_134

    .line 2065
    const-string/jumbo v1, "ImsCallSessionProxy"

    const-string/jumbo v2, "conference call merge normal call successed"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2069
    const-string/jumbo v2, "CC"

    const-string/jumbo v3, "ConfCreated"

    const-string/jumbo v4, "conferenceCall"

    const-string/jumbo v5, " successed"

    .line 2068
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->logDebugMessagesWithNotifyFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2071
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->-wrap2(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    goto :goto_c6

    .line 2074
    :cond_134
    const-string/jumbo v1, "ImsCallSessionProxy"

    const-string/jumbo v2, "conference call merge normal call failed!!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2077
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2078
    const-string/jumbo v2, "CC"

    const-string/jumbo v3, "ConfCreated"

    const-string/jumbo v4, "conferenceCall"

    const-string/jumbo v5, " failed"

    .line 2077
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->logDebugMessagesWithNotifyFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2080
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->retrieveMergeFail()V

    goto/16 :goto_c6
.end method

.method private handlePau(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "pau"    # Ljava/lang/String;

    .prologue
    .line 1003
    const-string/jumbo v1, "<sip:"

    invoke-direct {p0, p1, v1}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->parseField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1004
    const-string/jumbo v1, "<tel:"

    invoke-direct {p0, p1, v1}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->parseField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1005
    const-string/jumbo v1, "ImsCallSessionProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updated pau: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->getDisplayNameFromPau(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1008
    .local v0, "displayName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6f

    .line 1010
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "<name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1011
    const-string/jumbo v1, "ImsCallSessionProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Add display name to pau: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    :cond_6f
    return-object p1
.end method

.method private isCallModeUpdated(II)Z
    .registers 9
    .param p1, "callMode"    # I
    .param p2, "videoState"    # I

    .prologue
    const/4 v5, 0x4

    .line 1180
    const-string/jumbo v2, "ImsCallSessionProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateCallMode- callMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "videoState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    const/4 v0, 0x0

    .line 1182
    .local v0, "isChanged":Z
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get3(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v2

    iget v1, v2, Lcom/android/ims/ImsCallProfile;->mCallType:I

    .line 1184
    .local v1, "oldCallMode":I
    const/16 v2, 0x15

    if-eq p1, v2, :cond_37

    const/16 v2, 0x17

    if-ne p1, v2, :cond_4e

    .line 1186
    :cond_37
    packed-switch p2, :pswitch_data_9c

    .line 1200
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get3(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v2

    iput v5, v2, Lcom/android/ims/ImsCallProfile;->mCallType:I

    .line 1204
    :goto_42
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get3(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v2

    iget v2, v2, Lcom/android/ims/ImsCallProfile;->mCallType:I

    if-eq v2, v1, :cond_4d

    .line 1205
    const/4 v0, 0x1

    .line 1215
    :cond_4d
    :goto_4d
    return v0

    .line 1185
    :cond_4e
    const/16 v2, 0x19

    if-eq p1, v2, :cond_37

    .line 1207
    const/16 v2, 0x14

    if-eq p1, v2, :cond_5a

    const/16 v2, 0x16

    if-ne p1, v2, :cond_96

    .line 1209
    :cond_5a
    :goto_5a
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get3(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v2

    const/4 v3, 0x2

    iput v3, v2, Lcom/android/ims/ImsCallProfile;->mCallType:I

    .line 1210
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get3(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v2

    iget v2, v2, Lcom/android/ims/ImsCallProfile;->mCallType:I

    if-eq v2, v1, :cond_4d

    .line 1211
    const/4 v0, 0x1

    goto :goto_4d

    .line 1188
    :pswitch_6f
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get3(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v2

    const/4 v3, 0x7

    iput v3, v2, Lcom/android/ims/ImsCallProfile;->mCallType:I

    goto :goto_42

    .line 1191
    :pswitch_79
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get3(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v2

    const/4 v3, 0x5

    iput v3, v2, Lcom/android/ims/ImsCallProfile;->mCallType:I

    goto :goto_42

    .line 1194
    :pswitch_83
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get3(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v2

    const/4 v3, 0x6

    iput v3, v2, Lcom/android/ims/ImsCallProfile;->mCallType:I

    goto :goto_42

    .line 1197
    :pswitch_8d
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get3(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v2

    iput v5, v2, Lcom/android/ims/ImsCallProfile;->mCallType:I

    goto :goto_42

    .line 1208
    :cond_96
    const/16 v2, 0x18

    if-ne p1, v2, :cond_4d

    goto :goto_5a

    .line 1186
    nop

    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_6f
        :pswitch_79
        :pswitch_83
        :pswitch_8d
    .end packed-switch
.end method

.method private notifyMultipartyStateChanged(I)V
    .registers 7
    .param p1, "callMode"    # I

    .prologue
    .line 2101
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->updateMultipartyState(I)Z

    move-result v1

    .line 2102
    .local v1, "stateChanged":Z
    if-nez v1, :cond_7

    .line 2103
    return-void

    .line 2106
    :cond_7
    const-string/jumbo v2, "ImsCallSessionProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyMultipartyStateChanged isMultiparty(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->isMultiparty()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2108
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get18(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v2

    if-eqz v2, :cond_40

    .line 2110
    :try_start_2f
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get18(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2111
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->isMultiparty()Z

    move-result v4

    .line 2110
    invoke-interface {v2, v3, v4}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionMultipartyStateChanged(Lcom/android/ims/internal/IImsCallSession;Z)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_40} :catch_41

    .line 2100
    :cond_40
    :goto_40
    return-void

    .line 2112
    :catch_41
    move-exception v0

    .line 2113
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "ImsCallSessionProxy"

    const-string/jumbo v3, "RemoteException callSessionMultipartyStateChanged()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40
.end method

.method private notifyPauInfoChanged(Ljava/lang/String;)V
    .registers 6
    .param p1, "pau"    # Ljava/lang/String;

    .prologue
    .line 2138
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->updatePau(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 2139
    return-void

    .line 2142
    :cond_7
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get18(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v1

    if-nez v1, :cond_10

    .line 2143
    return-void

    .line 2146
    :cond_10
    :try_start_10
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get18(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get3(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionPauInfoChanged(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_21} :catch_22

    .line 2137
    :goto_21
    return-void

    .line 2147
    :catch_22
    move-exception v0

    .line 2148
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ImsCallSessionProxy"

    .line 2149
    const-string/jumbo v2, "RemoteException callSessionPauInfoChanged"

    .line 2148
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method private parseField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "pau"    # Ljava/lang/String;
    .param p2, "targetField"    # Ljava/lang/String;

    .prologue
    .line 1018
    const-string/jumbo v2, ""

    .line 1019
    .local v2, "val":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_27

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 1023
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->getFieldValueFromPau(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1025
    .local v0, "field":Ljava/lang/String;
    const-string/jumbo v3, "[;@]+"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1026
    .local v1, "split":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v2, v1, v3

    .line 1028
    const-string/jumbo v3, ""

    if-eq v2, v3, :cond_26

    .line 1029
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1031
    :cond_26
    return-object p1

    .line 1020
    .end local v0    # "field":Ljava/lang/String;
    .end local v1    # "split":[Ljava/lang/String;
    :cond_27
    const-string/jumbo v3, "ImsCallSessionProxy"

    const-string/jumbo v4, "parseTelTagFromPau()... pau or field is null !"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    return-object p1
.end method

.method private retrieveMergeFail()V
    .registers 9

    .prologue
    const/16 v7, 0xd3

    .line 1220
    const/4 v1, 0x0

    .line 1221
    .local v1, "mergeCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    const/4 v2, 0x0

    .line 1222
    .local v2, "mergedCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    const/4 v0, 0x0

    .line 1224
    .local v0, "isNotifyMergeFail":Z
    const-string/jumbo v4, "ImsCallSessionProxy"

    const-string/jumbo v5, "retrieveMergeFail"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get20(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_25

    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get20(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_98

    .line 1229
    .end local v1    # "mergeCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    :cond_25
    :goto_25
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get21(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3c

    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get21(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_aa

    .line 1233
    .end local v2    # "mergedCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    :cond_3c
    :goto_3c
    if-eqz v1, :cond_140

    if-eqz v2, :cond_140

    .line 1234
    const-string/jumbo v4, "ImsCallSessionProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "retrieveMergeFail- MergeCallInfo: callId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/mediatek/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1235
    const-string/jumbo v6, " call status="

    .line 1234
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1235
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    .line 1234
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1235
    const-string/jumbo v6, " MergedCallInfo: callId="

    .line 1234
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1236
    iget-object v6, v2, Lcom/mediatek/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    .line 1234
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1236
    const-string/jumbo v6, " call status="

    .line 1234
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1236
    iget-object v6, v2, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    .line 1234
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    iget-object v4, v1, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    sget-object v5, Lcom/mediatek/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/ims/ImsCallInfo$State;

    if-ne v4, v5, :cond_bb

    .line 1238
    iget-object v4, v2, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    sget-object v5, Lcom/mediatek/ims/ImsCallInfo$State;->HOLDING:Lcom/mediatek/ims/ImsCallInfo$State;

    if-ne v4, v5, :cond_bb

    .line 1240
    const/4 v0, 0x1

    .line 1288
    :cond_90
    :goto_90
    if-eqz v0, :cond_97

    .line 1289
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->-wrap3(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 1218
    :cond_97
    return-void

    .line 1226
    .restart local v1    # "mergeCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    .restart local v2    # "mergedCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    :cond_98
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get12(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsRILAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get20(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/ims/ImsRILAdapter;->getCallInfo(Ljava/lang/String;)Lcom/mediatek/ims/ImsCallInfo;

    move-result-object v1

    .local v1, "mergeCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    goto/16 :goto_25

    .line 1230
    .end local v1    # "mergeCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    :cond_aa
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get12(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsRILAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get21(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/ims/ImsRILAdapter;->getCallInfo(Ljava/lang/String;)Lcom/mediatek/ims/ImsCallInfo;

    move-result-object v2

    .local v2, "mergedCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    goto :goto_3c

    .line 1241
    .end local v2    # "mergedCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    :cond_bb
    iget-object v4, v1, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    sget-object v5, Lcom/mediatek/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/ims/ImsCallInfo$State;

    if-ne v4, v5, :cond_ee

    .line 1242
    iget-object v4, v2, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    sget-object v5, Lcom/mediatek/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/ims/ImsCallInfo$State;

    if-ne v4, v5, :cond_ee

    .line 1244
    const-string/jumbo v4, "ImsCallSessionProxy"

    const-string/jumbo v5, "retrieveMergeFail- two active call and hold merged call"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get10(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1246
    .local v3, "result":Landroid/os/Message;
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get12(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsRILAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get21(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5, v3}, Lcom/mediatek/ims/ImsRILAdapter;->hold(ILandroid/os/Message;)V

    goto :goto_90

    .line 1247
    .end local v3    # "result":Landroid/os/Message;
    :cond_ee
    iget-object v4, v1, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    sget-object v5, Lcom/mediatek/ims/ImsCallInfo$State;->HOLDING:Lcom/mediatek/ims/ImsCallInfo$State;

    if-ne v4, v5, :cond_122

    .line 1248
    iget-object v4, v2, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    sget-object v5, Lcom/mediatek/ims/ImsCallInfo$State;->HOLDING:Lcom/mediatek/ims/ImsCallInfo$State;

    if-ne v4, v5, :cond_122

    .line 1250
    const-string/jumbo v4, "ImsCallSessionProxy"

    const-string/jumbo v5, "retrieveMergeFail- two hold call and resume merge call"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get10(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1252
    .restart local v3    # "result":Landroid/os/Message;
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get12(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsRILAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get20(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5, v3}, Lcom/mediatek/ims/ImsRILAdapter;->resume(ILandroid/os/Message;)V

    goto/16 :goto_90

    .line 1258
    .end local v3    # "result":Landroid/os/Message;
    :cond_122
    const-string/jumbo v4, "ImsCallSessionProxy"

    const-string/jumbo v5, "retrieveMergeFail- swap two calls"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get10(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1260
    .restart local v3    # "result":Landroid/os/Message;
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get12(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsRILAdapter;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/mediatek/ims/ImsRILAdapter;->swap(Landroid/os/Message;)V

    goto/16 :goto_90

    .line 1262
    .end local v3    # "result":Landroid/os/Message;
    :cond_140
    if-eqz v1, :cond_144

    if-nez v2, :cond_90

    .line 1264
    :cond_144
    if-eqz v1, :cond_177

    .line 1265
    const-string/jumbo v4, "ImsCallSessionProxy"

    const-string/jumbo v5, "retrieveMergeFail- only merge call is left"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    iget-object v4, v1, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    sget-object v5, Lcom/mediatek/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/ims/ImsCallInfo$State;

    if-eq v4, v5, :cond_174

    .line 1267
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get10(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1268
    .restart local v3    # "result":Landroid/os/Message;
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get12(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsRILAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get20(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5, v3}, Lcom/mediatek/ims/ImsRILAdapter;->resume(ILandroid/os/Message;)V

    goto/16 :goto_90

    .line 1270
    .end local v3    # "result":Landroid/os/Message;
    :cond_174
    const/4 v0, 0x1

    goto/16 :goto_90

    .line 1272
    :cond_177
    if-eqz v2, :cond_1aa

    .line 1273
    const-string/jumbo v4, "ImsCallSessionProxy"

    const-string/jumbo v5, "retrieveMergeFail- only merged call is left"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    iget-object v4, v2, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    sget-object v5, Lcom/mediatek/ims/ImsCallInfo$State;->HOLDING:Lcom/mediatek/ims/ImsCallInfo$State;

    if-eq v4, v5, :cond_1a7

    .line 1275
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get10(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1276
    .restart local v3    # "result":Landroid/os/Message;
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get12(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsRILAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get21(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5, v3}, Lcom/mediatek/ims/ImsRILAdapter;->hold(ILandroid/os/Message;)V

    goto/16 :goto_90

    .line 1278
    .end local v3    # "result":Landroid/os/Message;
    :cond_1a7
    const/4 v0, 0x1

    goto/16 :goto_90

    .line 1284
    :cond_1aa
    const/4 v0, 0x1

    goto/16 :goto_90
.end method

.method private sipCauseFromCode(I)I
    .registers 11
    .param p1, "causeCode"    # I

    .prologue
    const/16 v8, 0x1fe

    const/16 v7, 0x162

    const/16 v6, 0x154

    .line 1056
    const-string/jumbo v3, "ImsCallSessionProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sipCauseFromCode: causeCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    sparse-switch p1, :sswitch_data_ca

    .line 1156
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->getWfcDisconnectCause(I)I

    move-result v2

    .line 1157
    .local v2, "wfcReason":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_93

    .line 1158
    return v2

    .line 1060
    .end local v2    # "wfcReason":I
    :sswitch_2b
    const/16 v3, 0x152

    return v3

    .line 1064
    :sswitch_2e
    const/16 v3, 0x150

    return v3

    .line 1067
    :sswitch_31
    return v6

    .line 1072
    :sswitch_32
    const/16 v3, 0x15f

    return v3

    .line 1075
    :sswitch_35
    const/16 v3, 0x8d

    return v3

    .line 1079
    :sswitch_38
    const/16 v3, 0x66

    return v3

    .line 1082
    :sswitch_3b
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get33(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v3

    if-eqz v3, :cond_6e

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get26(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6e

    .line 1084
    :try_start_4c
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get33(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/wfo/IWifiOffloadService;->isWifiConnected()Z

    move-result v3

    if-nez v3, :cond_6e

    .line 1085
    const-string/jumbo v3, "ImsCallSessionProxy"

    .line 1086
    const-string/jumbo v4, "Rat is Wifi, Wifi is disconnected, ret=SIGNAL_LOST"

    .line 1085
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_61} :catch_64

    .line 1087
    const/16 v3, 0x389

    return v3

    .line 1089
    :catch_64
    move-exception v0

    .line 1090
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "ImsCallSessionProxy"

    const-string/jumbo v4, "RemoteException in isWifiConnected()"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_6e
    return v7

    .line 1101
    :sswitch_6f
    return v7

    .line 1104
    :sswitch_70
    const/16 v3, 0xca

    return v3

    .line 1107
    :sswitch_73
    const/16 v3, 0x1f6

    return v3

    .line 1110
    :sswitch_76
    const/16 v3, 0x169

    return v3

    .line 1113
    :sswitch_79
    return v8

    .line 1117
    :sswitch_7a
    const/16 v3, 0x151

    return v3

    .line 1124
    :sswitch_7d
    const/16 v3, 0x160

    return v3

    .line 1128
    :sswitch_80
    const/16 v3, 0x14c

    return v3

    .line 1132
    :sswitch_83
    return v6

    .line 1135
    :sswitch_84
    const/16 v3, 0x14d

    return v3

    .line 1138
    :sswitch_87
    const/16 v3, 0x153

    return v3

    .line 1141
    :sswitch_8a
    const/16 v3, 0x14f

    return v3

    .line 1145
    :sswitch_8d
    const/16 v3, 0x156

    return v3

    .line 1149
    :sswitch_90
    const/16 v3, 0x149

    return v3

    .line 1161
    .restart local v2    # "wfcReason":I
    :cond_93
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get13(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/ims/ImsService;->getImsServiceState()I

    move-result v1

    .line 1163
    .local v1, "serviceState":I
    const-string/jumbo v3, "ImsCallSessionProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "serviceState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    const/4 v3, 0x3

    if-ne v1, v3, :cond_bd

    .line 1166
    const/16 v3, 0x6f

    return v3

    .line 1167
    :cond_bd
    const/4 v3, 0x1

    if-ne v1, v3, :cond_c3

    .line 1168
    const/16 v3, 0x6a

    return v3

    .line 1169
    :cond_c3
    const/16 v3, 0x10

    if-ne p1, v3, :cond_c8

    .line 1170
    return v8

    .line 1174
    :cond_c8
    const/4 v3, 0x0

    return v3

    .line 1058
    :sswitch_data_ca
    .sparse-switch
        0x1 -> :sswitch_7a
        0x3 -> :sswitch_84
        0x6 -> :sswitch_83
        0x8 -> :sswitch_87
        0x11 -> :sswitch_2b
        0x12 -> :sswitch_70
        0x13 -> :sswitch_73
        0x15 -> :sswitch_76
        0x1c -> :sswitch_7a
        0x1d -> :sswitch_6f
        0x1f -> :sswitch_79
        0x22 -> :sswitch_32
        0x26 -> :sswitch_7d
        0x29 -> :sswitch_2e
        0x2a -> :sswitch_7d
        0x2b -> :sswitch_6f
        0x2c -> :sswitch_2e
        0x2f -> :sswitch_7d
        0x31 -> :sswitch_31
        0x37 -> :sswitch_80
        0x39 -> :sswitch_80
        0x3a -> :sswitch_3b
        0x3f -> :sswitch_7d
        0x41 -> :sswitch_83
        0x44 -> :sswitch_35
        0x45 -> :sswitch_32
        0x51 -> :sswitch_8d
        0x58 -> :sswitch_7d
        0x66 -> :sswitch_8a
        0x6f -> :sswitch_32
        0x7f -> :sswitch_6f
        0xf0 -> :sswitch_38
        0xf1 -> :sswitch_38
        0x17c -> :sswitch_90
    .end sparse-switch
.end method

.method private updateMultipartyState(I)Z
    .registers 7
    .param p1, "callMode"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2086
    const/16 v1, 0x16

    if-eq p1, v1, :cond_a

    const/16 v1, 0x17

    if-ne p1, v1, :cond_14

    :cond_a
    const/4 v0, 0x1

    .line 2088
    .local v0, "isMultipartyMode":Z
    :goto_b
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->isMultiparty()Z

    move-result v1

    if-ne v1, v0, :cond_20

    .line 2089
    return v3

    .line 2087
    .end local v0    # "isMultipartyMode":Z
    :cond_14
    const/16 v1, 0x18

    if-eq p1, v1, :cond_a

    const/16 v1, 0x19

    if-ne p1, v1, :cond_1e

    const/4 v0, 0x1

    .restart local v0    # "isMultipartyMode":Z
    goto :goto_b

    .end local v0    # "isMultipartyMode":Z
    :cond_1e
    const/4 v0, 0x0

    .restart local v0    # "isMultipartyMode":Z
    goto :goto_b

    .line 2090
    :cond_20
    if-eqz v0, :cond_37

    .line 2091
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get3(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v1

    const-string/jumbo v2, "mpty"

    invoke-virtual {v1, v2, v4}, Lcom/android/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2092
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string/jumbo v2, "conferenceCall"

    invoke-static {v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-set2(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    .line 2097
    :goto_36
    return v4

    .line 2094
    :cond_37
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get3(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v1

    .line 2095
    const-string/jumbo v2, "mpty"

    .line 2094
    invoke-virtual {v1, v2, v3}, Lcom/android/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    goto :goto_36
.end method

.method private updatePau(Ljava/lang/String;)Z
    .registers 7
    .param p1, "pau"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 2119
    if-eqz p1, :cond_c

    const-string/jumbo v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2120
    :cond_c
    return v4

    .line 2122
    :cond_d
    const-string/jumbo v1, "<sip:"

    invoke-direct {p0, p1, v1}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->getFieldValueFromPau(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2123
    .local v0, "sipNumber":Ljava/lang/String;
    const-string/jumbo v1, "ImsCallSessionProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updatePau()... sipNumber: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2124
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get3(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v1

    const-string/jumbo v2, "remote_uri"

    invoke-virtual {v1, v2}, Lcom/android/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4d

    .line 2125
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get3(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v1

    const-string/jumbo v2, "remote_uri"

    invoke-virtual {v1, v2, v0}, Lcom/android/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 2128
    :cond_4d
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->handlePau(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2130
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get3(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v1

    const-string/jumbo v2, "pau"

    invoke-virtual {v1, v2}, Lcom/android/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 2131
    return v4

    .line 2133
    :cond_65
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get3(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v1

    const-string/jumbo v2, "pau"

    invoke-virtual {v1, v2, p1}, Lcom/android/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 2134
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 37
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1296
    const/16 v13, 0xff

    .line 1298
    .local v13, "callMode":I
    const-string/jumbo v2, "ImsCallSessionProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "receive message by ImsCallSessionProxy - CallId:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get1(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_d7c

    .line 1294
    :cond_2b
    :goto_2b
    return-void

    .line 1325
    :sswitch_2c
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1326
    .local v10, "ar":Landroid/os/AsyncResult;
    iget-object v12, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v12, [Ljava/lang/String;

    .line 1327
    .local v12, "callInfo":[Ljava/lang/String;
    const/16 v25, 0x0

    .line 1328
    .local v25, "msgType":I
    const/16 v22, 0x0

    .line 1330
    .local v22, "isCallProfileUpdated":Z
    const-string/jumbo v2, "ImsCallSessionProxy"

    const-string/jumbo v3, "receive EVENT_CALL_INFO_INDICATION"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    const/4 v2, 0x1

    aget-object v2, v12, v2

    if-eqz v2, :cond_54

    const/4 v2, 0x1

    aget-object v2, v12, v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19d

    .line 1335
    :cond_54
    :goto_54
    const/4 v2, 0x5

    aget-object v2, v12, v2

    if-eqz v2, :cond_65

    const/4 v2, 0x5

    aget-object v2, v12, v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a6

    .line 1339
    :cond_65
    :goto_65
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get16(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v2

    if-eqz v2, :cond_80

    const/4 v2, 0x0

    aget-object v2, v12, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get1(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1af

    .line 1384
    :cond_80
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get1(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5b4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get1(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v12, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b4

    .line 1385
    sparse-switch v25, :sswitch_data_dc2

    goto :goto_2b

    .line 1387
    :sswitch_9f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-set13(Lcom/mediatek/ims/ImsCallSessionProxy;I)I

    .line 1388
    const-string/jumbo v2, "ImsCallSessionProxy"

    const-string/jumbo v3, "IMS: +ECPI : incoming call"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    const/4 v2, 0x5

    aget-object v2, v12, v2

    if-eqz v2, :cond_c1

    const/4 v2, 0x5

    aget-object v2, v12, v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_284

    .line 1393
    :cond_c1
    :goto_c1
    const/16 v2, 0x15

    if-eq v13, v2, :cond_c9

    const/16 v2, 0x17

    if-ne v13, v2, :cond_28d

    .line 1395
    :cond_c9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get3(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v2

    const/4 v3, 0x4

    iput v3, v2, Lcom/android/ims/ImsCallProfile;->mCallType:I

    .line 1400
    :goto_d4
    const/16 v2, 0x16

    if-eq v13, v2, :cond_dc

    .line 1401
    const/16 v2, 0x17

    if-ne v13, v2, :cond_29e

    .line 1404
    :cond_dc
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get3(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v2

    .line 1405
    const-string/jumbo v3, "incoming_mpty"

    const/4 v5, 0x1

    .line 1404
    invoke-virtual {v2, v3, v5}, Lcom/android/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1408
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string/jumbo v3, "conferenceCall"

    invoke-static {v2, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-set2(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    .line 1417
    :goto_f5
    const/4 v2, 0x6

    aget-object v2, v12, v2

    if-eqz v2, :cond_106

    const/4 v2, 0x6

    aget-object v2, v12, v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c1

    .line 1426
    :cond_106
    :goto_106
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get3(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v2

    const-string/jumbo v3, "oir"

    .line 1427
    const/4 v5, 0x2

    .line 1426
    invoke-virtual {v2, v3, v5}, Lcom/android/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1429
    const/16 v29, 0x1

    .line 1431
    .local v29, "serviceId":I
    const-string/jumbo v2, "ImsCallSessionProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IMS: sendIncomingCallIntent() call_id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1432
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get1(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    .line 1431
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1432
    const-string/jumbo v5, " dialString = "

    .line 1431
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1432
    const/4 v5, 0x6

    aget-object v5, v12, v5

    .line 1431
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string/jumbo v3, "CC"

    const-string/jumbo v5, "MT"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get2(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-virtual {v2, v3, v5, v6, v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->logDebugMessagesWithNotifyFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    new-instance v21, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.ims.IMS_INCOMING_CALL"

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1438
    .local v21, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "android:imsCallID"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get1(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1439
    const-string/jumbo v2, "android:imsDialString"

    const/4 v3, 0x6

    aget-object v3, v12, v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1440
    const-string/jumbo v2, "android:imsServiceId"

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get6(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2b

    .line 1332
    .end local v21    # "intent":Landroid/content/Intent;
    .end local v29    # "serviceId":I
    :cond_19d
    const/4 v2, 0x1

    aget-object v2, v12, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    goto/16 :goto_54

    .line 1336
    :cond_1a6
    const/4 v2, 0x5

    aget-object v2, v12, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    goto/16 :goto_65

    .line 1340
    :cond_1af
    packed-switch v25, :pswitch_data_ddc

    goto/16 :goto_2b

    .line 1342
    :pswitch_1b4
    const-string/jumbo v2, "ImsCallSessionProxy"

    const-string/jumbo v3, "IMS: +ECPI : conference assign call id"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    new-instance v4, Lcom/android/ims/ImsCallProfile;

    invoke-direct {v4}, Lcom/android/ims/ImsCallProfile;-><init>()V

    .line 1345
    .local v4, "imsCallProfile":Lcom/android/ims/ImsCallProfile;
    const/4 v2, 0x5

    aget-object v2, v12, v2

    if-eqz v2, :cond_1d3

    const/4 v2, 0x5

    aget-object v2, v12, v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_257

    .line 1349
    :cond_1d3
    :goto_1d3
    const/16 v2, 0x15

    if-eq v13, v2, :cond_1db

    const/16 v2, 0x17

    if-ne v13, v2, :cond_260

    .line 1351
    :cond_1db
    const/4 v2, 0x4

    iput v2, v4, Lcom/android/ims/ImsCallProfile;->mCallType:I

    .line 1356
    :goto_1de
    const/4 v2, 0x6

    aget-object v2, v12, v2

    if-eqz v2, :cond_1ef

    const/4 v2, 0x6

    aget-object v2, v12, v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_269

    .line 1368
    :cond_1ef
    const-string/jumbo v2, "oir"

    .line 1369
    const/4 v3, 0x2

    .line 1368
    invoke-virtual {v4, v2, v3}, Lcom/android/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1372
    :goto_1f6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    move-object/from16 v34, v0

    new-instance v2, Lcom/mediatek/ims/ImsCallSessionProxy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get6(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/content/Context;

    move-result-object v3

    .line 1373
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get13(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsService;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get28(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get12(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsRILAdapter;

    move-result-object v8

    const/4 v5, 0x0

    aget-object v9, v12, v5

    const/4 v5, 0x0

    .line 1372
    invoke-direct/range {v2 .. v9}, Lcom/mediatek/ims/ImsCallSessionProxy;-><init>(Landroid/content/Context;Lcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;Lcom/mediatek/ims/ImsService;Landroid/os/Handler;Lcom/mediatek/ims/ImsRILAdapter;Ljava/lang/String;)V

    move-object/from16 v0, v34

    invoke-static {v0, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-set3(Lcom/mediatek/ims/ImsCallSessionProxy;Lcom/android/ims/internal/IImsCallSession;)Lcom/android/ims/internal/IImsCallSession;

    .line 1375
    :try_start_22a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get18(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 1376
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get5(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get3(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v6

    .line 1375
    invoke-interface {v2, v3, v5, v6}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionMergeStarted(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    :try_end_249
    .catch Landroid/os/RemoteException; {:try_start_22a .. :try_end_249} :catch_24b

    goto/16 :goto_2b

    .line 1377
    :catch_24b
    move-exception v16

    .line 1378
    .local v16, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "ImsCallSessionProxy"

    const-string/jumbo v3, "RemoteException when session merged started"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2b

    .line 1346
    .end local v16    # "e":Landroid/os/RemoteException;
    :cond_257
    const/4 v2, 0x5

    aget-object v2, v12, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    goto/16 :goto_1d3

    .line 1350
    :cond_260
    const/16 v2, 0x19

    if-eq v13, v2, :cond_1db

    .line 1353
    const/4 v2, 0x2

    iput v2, v4, Lcom/android/ims/ImsCallProfile;->mCallType:I

    goto/16 :goto_1de

    .line 1357
    :cond_269
    const-string/jumbo v2, "oi"

    .line 1358
    const/4 v3, 0x6

    aget-object v3, v12, v3

    .line 1357
    invoke-virtual {v4, v2, v3}, Lcom/android/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1363
    const-string/jumbo v2, "remote_uri"

    .line 1364
    const/4 v3, 0x6

    aget-object v3, v12, v3

    .line 1363
    invoke-virtual {v4, v2, v3}, Lcom/android/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    const-string/jumbo v2, "oir"

    .line 1366
    const/4 v3, 0x2

    .line 1365
    invoke-virtual {v4, v2, v3}, Lcom/android/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    goto/16 :goto_1f6

    .line 1390
    .end local v4    # "imsCallProfile":Lcom/android/ims/ImsCallProfile;
    :cond_284
    const/4 v2, 0x5

    aget-object v2, v12, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    goto/16 :goto_c1

    .line 1394
    :cond_28d
    const/16 v2, 0x19

    if-eq v13, v2, :cond_c9

    .line 1397
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get3(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v2

    const/4 v3, 0x2

    iput v3, v2, Lcom/android/ims/ImsCallProfile;->mCallType:I

    goto/16 :goto_d4

    .line 1402
    :cond_29e
    const/16 v2, 0x18

    if-eq v13, v2, :cond_dc

    .line 1403
    const/16 v2, 0x19

    if-eq v13, v2, :cond_dc

    .line 1410
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get3(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v2

    .line 1411
    const-string/jumbo v3, "incoming_mpty"

    const/4 v5, 0x0

    .line 1410
    invoke-virtual {v2, v3, v5}, Lcom/android/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1414
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v3, 0x6

    aget-object v3, v12, v3

    invoke-static {v2, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-set2(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_f5

    .line 1418
    :cond_2c1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get3(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v2

    const-string/jumbo v3, "oi"

    const/4 v5, 0x6

    aget-object v5, v12, v5

    invoke-virtual {v2, v3, v5}, Lcom/android/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1423
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get3(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v2

    const-string/jumbo v3, "remote_uri"

    .line 1424
    const/4 v5, 0x6

    aget-object v5, v12, v5

    .line 1423
    invoke-virtual {v2, v3, v5}, Lcom/android/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_106

    .line 1444
    :sswitch_2e5
    const/16 v23, 0x1

    .line 1446
    .local v23, "isIbt":I
    const/4 v2, 0x2

    aget-object v2, v12, v2

    if-eqz v2, :cond_2f3

    .line 1447
    const/4 v2, 0x2

    aget-object v2, v12, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 1451
    :cond_2f3
    const/16 v2, 0x16

    if-eq v13, v2, :cond_2fb

    .line 1452
    const/16 v2, 0x17

    if-ne v13, v2, :cond_375

    .line 1455
    :cond_2fb
    :goto_2fb
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string/jumbo v3, "conferenceCall"

    invoke-static {v2, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-set2(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    .line 1457
    :cond_305
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 1458
    const-string/jumbo v3, "CC"

    const-string/jumbo v5, "Alerting"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get2(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " isIbt="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1457
    invoke-virtual {v2, v3, v5, v6, v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->logDebugMessagesWithNotifyFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1460
    if-nez v23, :cond_37f

    .line 1461
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get3(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v2

    iget-object v2, v2, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    .line 1462
    const/4 v3, 0x0

    .line 1461
    iput v3, v2, Lcom/android/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 1468
    :goto_33f
    const/16 v2, 0x8

    aget-object v2, v12, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->updatePau(Ljava/lang/String;)Z

    .line 1470
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get18(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v2

    if-eqz v2, :cond_36b

    .line 1472
    :try_start_352
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get18(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 1473
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get3(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v5

    iget-object v5, v5, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    .line 1472
    invoke-interface {v2, v3, v5}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionProgressing(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsStreamMediaProfile;)V
    :try_end_36b
    .catch Landroid/os/RemoteException; {:try_start_352 .. :try_end_36b} :catch_38d

    .line 1478
    :cond_36b
    :goto_36b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-set7(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    goto/16 :goto_2b

    .line 1453
    :cond_375
    const/16 v2, 0x18

    if-eq v13, v2, :cond_2fb

    .line 1454
    const/16 v2, 0x19

    if-ne v13, v2, :cond_305

    goto/16 :goto_2fb

    .line 1464
    :cond_37f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get3(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v2

    iget-object v2, v2, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    .line 1465
    const/4 v3, 0x1

    .line 1464
    iput v3, v2, Lcom/android/ims/ImsStreamMediaProfile;->mAudioDirection:I

    goto :goto_33f

    .line 1474
    :catch_38d
    move-exception v16

    .line 1475
    .restart local v16    # "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "ImsCallSessionProxy"

    const-string/jumbo v3, "RemoteException callSessionProgressing"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36b

    .line 1481
    .end local v16    # "e":Landroid/os/RemoteException;
    .end local v23    # "isIbt":I
    :sswitch_398
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-set13(Lcom/mediatek/ims/ImsCallSessionProxy;I)I

    .line 1482
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get3(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v2

    iget-object v2, v2, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    .line 1483
    const/4 v3, 0x3

    .line 1482
    iput v3, v2, Lcom/android/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 1485
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->updateMultipartyState(I)Z

    .line 1488
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string/jumbo v3, "CC"

    const-string/jumbo v5, "Active"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get2(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-virtual {v2, v3, v5, v6, v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->logDebugMessagesWithNotifyFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1490
    const/16 v2, 0x8

    aget-object v2, v12, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->updatePau(Ljava/lang/String;)Z

    .line 1492
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get18(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v2

    if-eqz v2, :cond_417

    .line 1497
    :try_start_3dd
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get11(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v2

    if-eqz v2, :cond_400

    .line 1498
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get18(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v2

    .line 1499
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 1500
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get3(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v5

    iget-object v5, v5, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    .line 1498
    invoke-interface {v2, v3, v5}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionProgressing(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsStreamMediaProfile;)V

    .line 1502
    :cond_400
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get18(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 1503
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get3(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v5

    .line 1502
    invoke-interface {v2, v3, v5}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionStarted(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    :try_end_417
    .catch Landroid/os/RemoteException; {:try_start_3dd .. :try_end_417} :catch_430

    .line 1508
    :cond_417
    :goto_417
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-set7(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 1511
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get29(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-wrap4(Lcom/mediatek/ims/ImsCallSessionProxy;I)V

    goto/16 :goto_2b

    .line 1504
    :catch_430
    move-exception v16

    .line 1505
    .restart local v16    # "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "ImsCallSessionProxy"

    const-string/jumbo v3, "RemoteException callSessionStarted()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_417

    .line 1515
    .end local v16    # "e":Landroid/os/RemoteException;
    :sswitch_43b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string/jumbo v3, "CC"

    const-string/jumbo v5, "Onhold"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get2(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-virtual {v2, v3, v5, v6, v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->logDebugMessagesWithNotifyFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1517
    const/16 v2, 0x8

    aget-object v2, v12, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->updatePau(Ljava/lang/String;)Z

    .line 1519
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get18(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 1520
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get15(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v2

    if-nez v2, :cond_495

    .line 1522
    :try_start_470
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get18(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 1523
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get3(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v5

    .line 1522
    invoke-interface {v2, v3, v5}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionHeld(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    :try_end_487
    .catch Landroid/os/RemoteException; {:try_start_470 .. :try_end_487} :catch_489

    goto/16 :goto_2b

    .line 1524
    :catch_489
    move-exception v16

    .line 1525
    .restart local v16    # "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "ImsCallSessionProxy"

    const-string/jumbo v3, "RemoteException callSessionHeld"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2b

    .line 1529
    .end local v16    # "e":Landroid/os/RemoteException;
    :cond_495
    :try_start_495
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get18(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v2

    .line 1530
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get3(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v5

    .line 1529
    invoke-interface {v2, v3, v5}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionPauInfoChanged(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    :try_end_4ac
    .catch Landroid/os/RemoteException; {:try_start_495 .. :try_end_4ac} :catch_4ae

    goto/16 :goto_2b

    .line 1531
    :catch_4ae
    move-exception v16

    .line 1532
    .restart local v16    # "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "ImsCallSessionProxy"

    .line 1533
    const-string/jumbo v3, "RemoteException callSessionPauInfoChanged"

    .line 1532
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2b

    .line 1539
    .end local v16    # "e":Landroid/os/RemoteException;
    :sswitch_4ba
    const/16 v2, 0x8

    aget-object v2, v12, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->updatePau(Ljava/lang/String;)Z

    .line 1541
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get18(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 1542
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get29(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_515

    .line 1545
    :try_start_4d8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string/jumbo v3, "CC"

    const-string/jumbo v5, "Active"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get2(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-virtual {v2, v3, v5, v6, v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->logDebugMessagesWithNotifyFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1547
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get18(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v2

    .line 1548
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get3(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v5

    .line 1547
    invoke-interface {v2, v3, v5}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionResumed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    :try_end_507
    .catch Landroid/os/RemoteException; {:try_start_4d8 .. :try_end_507} :catch_509

    goto/16 :goto_2b

    .line 1549
    :catch_509
    move-exception v16

    .line 1550
    .restart local v16    # "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "ImsCallSessionProxy"

    const-string/jumbo v3, "RemoteException SessionResumed"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2b

    .line 1554
    .end local v16    # "e":Landroid/os/RemoteException;
    :cond_515
    :try_start_515
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get18(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v2

    .line 1555
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get3(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v5

    .line 1554
    invoke-interface {v2, v3, v5}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionPauInfoChanged(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    :try_end_52c
    .catch Landroid/os/RemoteException; {:try_start_515 .. :try_end_52c} :catch_52e

    goto/16 :goto_2b

    .line 1556
    :catch_52e
    move-exception v16

    .line 1557
    .restart local v16    # "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "ImsCallSessionProxy"

    .line 1558
    const-string/jumbo v3, "RemoteException callSessionPauInfoChanged"

    .line 1557
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2b

    .line 1565
    .end local v16    # "e":Landroid/os/RemoteException;
    :sswitch_53a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string/jumbo v3, "CC"

    const-string/jumbo v5, "Disconnected"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get2(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-virtual {v2, v3, v5, v6, v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->logDebugMessagesWithNotifyFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1567
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-set9(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 1568
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-set13(Lcom/mediatek/ims/ImsCallSessionProxy;I)I

    .line 1569
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get11(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v2

    if-eqz v2, :cond_5aa

    .line 1570
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-set7(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 1571
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    sget-object v3, Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;->DIAL:Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    invoke-static {v2, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-set0(Lcom/mediatek/ims/ImsCallSessionProxy;Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;)Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    .line 1575
    :goto_57e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get10(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v2

    .line 1576
    const/16 v3, 0x69

    .line 1575
    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v28

    .line 1577
    .local v28, "result":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get12(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsRILAdapter;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lcom/mediatek/ims/ImsRILAdapter;->getLastCallFailCause(Landroid/os/Message;)V

    .line 1580
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get29(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-wrap4(Lcom/mediatek/ims/ImsCallSessionProxy;I)V

    goto/16 :goto_2b

    .line 1573
    .end local v28    # "result":Landroid/os/Message;
    :cond_5aa
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    sget-object v3, Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;->DISCONNECT:Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    invoke-static {v2, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-set0(Lcom/mediatek/ims/ImsCallSessionProxy;Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;)Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    goto :goto_57e

    .line 1585
    :cond_5b4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get1(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2b

    const/16 v2, 0x82

    move/from16 v0, v25

    if-ne v0, v2, :cond_2b

    .line 1586
    const-string/jumbo v2, "ImsCallSessionProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IMS: receive 130 URC, call_id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x0

    aget-object v5, v12, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-set13(Lcom/mediatek/ims/ImsCallSessionProxy;I)I

    .line 1588
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v3, 0x0

    aget-object v3, v12, v3

    invoke-static {v2, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-set1(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    .line 1589
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get32(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/internal/ImsVTProvider;

    move-result-object v2

    if-eqz v2, :cond_614

    .line 1590
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get32(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/internal/ImsVTProvider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get1(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->setId(I)V

    .line 1594
    :cond_614
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-wrap4(Lcom/mediatek/ims/ImsCallSessionProxy;I)V

    goto/16 :goto_2b

    .line 1598
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v12    # "callInfo":[Ljava/lang/String;
    .end local v22    # "isCallProfileUpdated":Z
    .end local v25    # "msgType":I
    :sswitch_61e
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1600
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    const-string/jumbo v2, "ImsCallSessionProxy"

    const-string/jumbo v3, "receive EVENT_RINGBACK_TONE"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2b

    .line 1604
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :sswitch_62f
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1605
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->handleEconfIndication([Ljava/lang/String;)V

    goto/16 :goto_2b

    .line 1609
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :sswitch_640
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1611
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    const-string/jumbo v2, "ImsCallSessionProxy"

    const-string/jumbo v3, "receive DIAL_RESULT or DIAL_CONFERENCE_RESULT"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2b

    .line 1615
    const-string/jumbo v2, "ImsCallSessionProxy"

    const-string/jumbo v3, "dial call failed!!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get18(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 1619
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get10(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v2

    .line 1620
    const/16 v3, 0x69

    .line 1619
    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v28

    .line 1621
    .restart local v28    # "result":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    sget-object v3, Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;->DIAL:Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    invoke-static {v2, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-set0(Lcom/mediatek/ims/ImsCallSessionProxy;Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;)Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    .line 1622
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get12(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsRILAdapter;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lcom/mediatek/ims/ImsRILAdapter;->getLastCallFailCause(Landroid/os/Message;)V

    .line 1623
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-set7(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    goto/16 :goto_2b

    .line 1628
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v28    # "result":Landroid/os/Message;
    :sswitch_694
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1630
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    const-string/jumbo v2, "ImsCallSessionProxy"

    const-string/jumbo v3, "receive EVENT_HOLD_RESULT"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get18(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 1633
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_701

    .line 1635
    const-string/jumbo v2, "ImsCallSessionProxy"

    const-string/jumbo v3, "hold call failed!!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    const/16 v19, 0x0

    .line 1639
    .local v19, "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    :try_start_6bc
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_6f9

    .line 1640
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    .line 1641
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->CC_CALL_HOLD_FAILED_CAUSED_BY_TERMINATED:Lcom/android/internal/telephony/CommandException$Error;

    .line 1640
    if-ne v2, v3, :cond_6f9

    .line 1642
    new-instance v20, Lcom/android/ims/ImsReasonInfo;

    .line 1643
    const/16 v2, 0x94

    const/4 v3, 0x0

    .line 1642
    move-object/from16 v0, v20

    invoke-direct {v0, v2, v3}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    .end local v19    # "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    .local v20, "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    move-object/from16 v19, v20

    .line 1647
    .end local v20    # "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    .local v19, "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    :goto_6da
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get18(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    move-object/from16 v0, v19

    invoke-interface {v2, v3, v0}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionHoldFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_6eb
    .catch Landroid/os/RemoteException; {:try_start_6bc .. :try_end_6eb} :catch_6ed

    goto/16 :goto_2b

    .line 1649
    .end local v19    # "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    :catch_6ed
    move-exception v16

    .line 1650
    .restart local v16    # "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "ImsCallSessionProxy"

    const-string/jumbo v3, "RemoteException callSessionHoldFailed()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2b

    .line 1645
    .end local v16    # "e":Landroid/os/RemoteException;
    .local v19, "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    :cond_6f9
    :try_start_6f9
    new-instance v20, Lcom/android/ims/ImsReasonInfo;

    invoke-direct/range {v20 .. v20}, Lcom/android/ims/ImsReasonInfo;-><init>()V
    :try_end_6fe
    .catch Landroid/os/RemoteException; {:try_start_6f9 .. :try_end_6fe} :catch_6ed

    .restart local v20    # "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    move-object/from16 v19, v20

    .end local v20    # "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    .local v19, "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    goto :goto_6da

    .line 1654
    .end local v19    # "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    :cond_701
    const-string/jumbo v2, "ImsCallSessionProxy"

    const-string/jumbo v3, "hold call successed!!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2b

    .line 1660
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :sswitch_70c
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1662
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    const-string/jumbo v2, "ImsCallSessionProxy"

    const-string/jumbo v3, "receive EVENT_RESUME_RESULT"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get18(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 1665
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_754

    .line 1667
    const-string/jumbo v2, "ImsCallSessionProxy"

    const-string/jumbo v3, "resume call failed!!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    :try_start_732
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get18(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 1671
    new-instance v5, Lcom/android/ims/ImsReasonInfo;

    invoke-direct {v5}, Lcom/android/ims/ImsReasonInfo;-><init>()V

    .line 1670
    invoke-interface {v2, v3, v5}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionResumeFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_746
    .catch Landroid/os/RemoteException; {:try_start_732 .. :try_end_746} :catch_748

    goto/16 :goto_2b

    .line 1672
    :catch_748
    move-exception v16

    .line 1673
    .restart local v16    # "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "ImsCallSessionProxy"

    const-string/jumbo v3, "RemoteException callSessionResumeFailed()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2b

    .line 1677
    .end local v16    # "e":Landroid/os/RemoteException;
    :cond_754
    const-string/jumbo v2, "ImsCallSessionProxy"

    const-string/jumbo v3, "resume call successed"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2b

    .line 1683
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :sswitch_75f
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1685
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    const-string/jumbo v2, "ImsCallSessionProxy"

    const-string/jumbo v3, "receive EVENT_MERGE_RESULT"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get18(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 1688
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2b

    .line 1690
    const-string/jumbo v2, "ImsCallSessionProxy"

    const-string/jumbo v3, "merge call failed!!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 1694
    const-string/jumbo v3, "CC"

    const-string/jumbo v5, "ConfCreated"

    const-string/jumbo v6, "conferenceCall"

    const-string/jumbo v7, " failed"

    .line 1693
    invoke-virtual {v2, v3, v5, v6, v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->logDebugMessagesWithNotifyFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1696
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->retrieveMergeFail()V

    goto/16 :goto_2b

    .line 1701
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :sswitch_79d
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1703
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    const-string/jumbo v2, "ImsCallSessionProxy"

    const-string/jumbo v3, "receive EVENT_SWAP_BEFORE_MERGE_RESULT"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_7be

    .line 1707
    const-string/jumbo v2, "ImsCallSessionProxy"

    const-string/jumbo v3, "swap call failed!!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->retrieveMergeFail()V

    goto/16 :goto_2b

    .line 1712
    :cond_7be
    const-string/jumbo v2, "ImsCallSessionProxy"

    const-string/jumbo v3, "swap call successed"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get12(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsRILAdapter;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get1(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/ImsRILAdapter;->getCallInfo(Ljava/lang/String;)Lcom/mediatek/ims/ImsCallInfo;

    move-result-object v26

    .line 1718
    .local v26, "myCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get12(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsRILAdapter;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get21(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/ImsRILAdapter;->getCallInfo(Ljava/lang/String;)Lcom/mediatek/ims/ImsCallInfo;

    move-result-object v11

    .line 1719
    .local v11, "beMergedCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    if-nez v11, :cond_7f6

    .line 1720
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->retrieveMergeFail()V

    goto/16 :goto_2b

    .line 1724
    :cond_7f6
    move-object/from16 v0, v26

    iget-boolean v2, v0, Lcom/mediatek/ims/ImsCallInfo;->mIsConference:Z

    if-eqz v2, :cond_830

    .line 1725
    const-string/jumbo v2, "ImsCallSessionProxy"

    const-string/jumbo v3, "myCallI is conference, merge normal call"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get10(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xce

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v28

    .line 1727
    .restart local v28    # "result":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get12(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsRILAdapter;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get1(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1728
    iget-object v5, v11, Lcom/mediatek/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    .line 1727
    move-object/from16 v0, v28

    invoke-virtual {v2, v3, v5, v0}, Lcom/mediatek/ims/ImsRILAdapter;->inviteParticipantsByCallId(ILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_2b

    .line 1730
    .end local v28    # "result":Landroid/os/Message;
    :cond_830
    const-string/jumbo v2, "ImsCallSessionProxy"

    const-string/jumbo v3, "bg conference is foreground now, merge normal call"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get10(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xce

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v28

    .line 1732
    .restart local v28    # "result":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get12(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsRILAdapter;

    move-result-object v2

    .line 1733
    iget-object v3, v11, Lcom/mediatek/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1734
    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/mediatek/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    .line 1732
    move-object/from16 v0, v28

    invoke-virtual {v2, v3, v5, v0}, Lcom/mediatek/ims/ImsRILAdapter;->inviteParticipantsByCallId(ILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_2b

    .line 1741
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v11    # "beMergedCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    .end local v26    # "myCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    .end local v28    # "result":Landroid/os/Message;
    :sswitch_860
    const-string/jumbo v2, "ImsCallSessionProxy"

    const-string/jumbo v3, "receive EVENT_RETRIEVE_MERGE_FAIL_RESULT"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-wrap3(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    goto/16 :goto_2b

    .line 1747
    :sswitch_872
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1749
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    const-string/jumbo v2, "ImsCallSessionProxy"

    const-string/jumbo v3, "receive EVENT_ADD_CONFERENCE_RESULT"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get16(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v2

    if-eqz v2, :cond_894

    .line 1753
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2b

    .line 1754
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->retrieveMergeFail()V

    goto/16 :goto_2b

    .line 1762
    :cond_894
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get17(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 1766
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_8aa

    .line 1767
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-set8(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 1769
    :cond_8aa
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get24(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-set11(Lcom/mediatek/ims/ImsCallSessionProxy;I)I

    .line 1771
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get24(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get25(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v3

    if-ge v2, v3, :cond_904

    .line 1772
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get10(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xce

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v28

    .line 1774
    .restart local v28    # "result":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get12(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsRILAdapter;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get1(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1775
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get23(Lcom/mediatek/ims/ImsCallSessionProxy;)[Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get24(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v6

    aget-object v5, v5, v6

    .line 1774
    move-object/from16 v0, v28

    invoke-virtual {v2, v3, v5, v0}, Lcom/mediatek/ims/ImsRILAdapter;->inviteParticipants(ILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_2b

    .line 1778
    .end local v28    # "result":Landroid/os/Message;
    :cond_904
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get18(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v2

    if-eqz v2, :cond_92c

    .line 1779
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get14(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v2

    if-nez v2, :cond_941

    .line 1781
    :try_start_918
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get18(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v2

    .line 1782
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v5, Lcom/android/ims/ImsReasonInfo;

    invoke-direct {v5}, Lcom/android/ims/ImsReasonInfo;-><init>()V

    .line 1781
    invoke-interface {v2, v3, v5}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionInviteParticipantsRequestFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_92c
    .catch Landroid/os/RemoteException; {:try_start_918 .. :try_end_92c} :catch_936

    .line 1795
    :cond_92c
    :goto_92c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-set8(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    goto/16 :goto_2b

    .line 1783
    :catch_936
    move-exception v16

    .line 1784
    .restart local v16    # "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "ImsCallSessionProxy"

    const-string/jumbo v3, "RemoteException InviteFailed()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_92c

    .line 1788
    .end local v16    # "e":Landroid/os/RemoteException;
    :cond_941
    :try_start_941
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get18(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v2

    .line 1789
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 1788
    invoke-interface {v2, v3}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionInviteParticipantsRequestDelivered(Lcom/android/ims/internal/IImsCallSession;)V
    :try_end_950
    .catch Landroid/os/RemoteException; {:try_start_941 .. :try_end_950} :catch_951

    goto :goto_92c

    .line 1790
    :catch_951
    move-exception v16

    .line 1791
    .restart local v16    # "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "ImsCallSessionProxy"

    const-string/jumbo v3, "RemoteException InviteDelivered()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_92c

    .line 1800
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v16    # "e":Landroid/os/RemoteException;
    :sswitch_95c
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1802
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    const-string/jumbo v2, "ImsCallSessionProxy"

    const-string/jumbo v3, "receive EVENT_REMOVE_CONFERENCE_RESULT"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get17(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 1809
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_981

    .line 1810
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-set8(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 1813
    :cond_981
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get24(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-set11(Lcom/mediatek/ims/ImsCallSessionProxy;I)I

    .line 1814
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get24(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get25(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v3

    if-ge v2, v3, :cond_9db

    .line 1815
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get10(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xce

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v28

    .line 1817
    .restart local v28    # "result":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get12(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsRILAdapter;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get1(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1818
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get23(Lcom/mediatek/ims/ImsCallSessionProxy;)[Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get24(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v6

    aget-object v5, v5, v6

    .line 1817
    move-object/from16 v0, v28

    invoke-virtual {v2, v3, v5, v0}, Lcom/mediatek/ims/ImsRILAdapter;->removeParticipants(ILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_2b

    .line 1820
    .end local v28    # "result":Landroid/os/Message;
    :cond_9db
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get18(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v2

    if-eqz v2, :cond_a03

    .line 1821
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get14(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v2

    if-nez v2, :cond_a18

    .line 1823
    :try_start_9ef
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get18(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v2

    .line 1824
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v5, Lcom/android/ims/ImsReasonInfo;

    invoke-direct {v5}, Lcom/android/ims/ImsReasonInfo;-><init>()V

    .line 1823
    invoke-interface {v2, v3, v5}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionRemoveParticipantsRequestFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_a03
    .catch Landroid/os/RemoteException; {:try_start_9ef .. :try_end_a03} :catch_a0d

    .line 1837
    :cond_a03
    :goto_a03
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-set8(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    goto/16 :goto_2b

    .line 1825
    :catch_a0d
    move-exception v16

    .line 1826
    .restart local v16    # "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "ImsCallSessionProxy"

    const-string/jumbo v3, "RemoteException RemoveFailed()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a03

    .line 1830
    .end local v16    # "e":Landroid/os/RemoteException;
    :cond_a18
    :try_start_a18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get18(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v2

    .line 1831
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 1830
    invoke-interface {v2, v3}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionRemoveParticipantsRequestDelivered(Lcom/android/ims/internal/IImsCallSession;)V
    :try_end_a27
    .catch Landroid/os/RemoteException; {:try_start_a18 .. :try_end_a27} :catch_a28

    goto :goto_a03

    .line 1832
    :catch_a28
    move-exception v16

    .line 1833
    .restart local v16    # "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "ImsCallSessionProxy"

    const-string/jumbo v3, "RemoteException RemoveDelivered()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a03

    .line 1841
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v16    # "e":Landroid/os/RemoteException;
    :sswitch_a33
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1843
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    const/16 v30, 0x0

    .line 1845
    .local v30, "sipCauseCode":I
    const-string/jumbo v2, "ImsCallSessionProxy"

    const-string/jumbo v3, "receive EVENT_GET_LAST_CALL_FAIL_CAUSE"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_a8d

    .line 1849
    new-instance v19, Lcom/android/ims/ImsReasonInfo;

    invoke-direct/range {v19 .. v19}, Lcom/android/ims/ImsReasonInfo;-><init>()V

    .line 1873
    .restart local v19    # "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    :goto_a4d
    invoke-static {}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->-getcom_mediatek_ims_ImsCallSessionProxy$CallErrorStateSwitchesValues()[I

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get0(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_de2

    goto/16 :goto_2b

    .line 1875
    :pswitch_a64
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get18(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 1877
    :try_start_a6e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get18(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    move-object/from16 v0, v19

    invoke-interface {v2, v3, v0}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionStartFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_a7f
    .catch Landroid/os/RemoteException; {:try_start_a6e .. :try_end_a7f} :catch_a81

    goto/16 :goto_2b

    .line 1879
    :catch_a81
    move-exception v16

    .line 1880
    .restart local v16    # "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "ImsCallSessionProxy"

    const-string/jumbo v3, "RemoteException callSessionStartFailed()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2b

    .line 1851
    .end local v16    # "e":Landroid/os/RemoteException;
    .end local v19    # "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    :cond_a8d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get30(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v2

    const/16 v3, 0x66

    if-ne v2, v3, :cond_abb

    .line 1852
    const-string/jumbo v2, "ImsCallSessionProxy"

    const-string/jumbo v3, "Terminate conference due to mMergeHost is null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1853
    new-instance v19, Lcom/android/ims/ImsReasonInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get30(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v3}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    .line 1854
    .restart local v19    # "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-set14(Lcom/mediatek/ims/ImsCallSessionProxy;I)I

    goto :goto_a4d

    .line 1857
    .end local v19    # "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    :cond_abb
    iget-object v0, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/LastCallFailCause;

    .line 1858
    .local v18, "failCause":Lcom/android/internal/telephony/LastCallFailCause;
    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/internal/telephony/LastCallFailCause;->causeCode:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->sipCauseFromCode(I)I

    move-result v30

    .line 1860
    const/16 v2, 0x149

    move/from16 v0, v30

    if-ne v0, v2, :cond_ae0

    .line 1862
    :try_start_ad1
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/internal/telephony/LastCallFailCause;->vendorCause:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 1863
    .local v15, "cat":I
    invoke-static {v15}, Landroid/telephony/PhoneNumberUtils;->setSpecificEccCategory(I)V
    :try_end_ae0
    .catch Ljava/lang/NumberFormatException; {:try_start_ad1 .. :try_end_ae0} :catch_aec

    .line 1870
    .end local v15    # "cat":I
    :cond_ae0
    :goto_ae0
    new-instance v19, Lcom/android/ims/ImsReasonInfo;

    const/4 v2, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v30

    invoke-direct {v0, v1, v2}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    .restart local v19    # "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    goto/16 :goto_a4d

    .line 1864
    .end local v19    # "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    :catch_aec
    move-exception v17

    .line 1865
    .local v17, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v2, "ImsCallSessionProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ECC redirect report is not a number: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1866
    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/internal/telephony/LastCallFailCause;->vendorCause:Ljava/lang/String;

    .line 1865
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ae0

    .line 1885
    .end local v17    # "e":Ljava/lang/NumberFormatException;
    .end local v18    # "failCause":Lcom/android/internal/telephony/LastCallFailCause;
    .restart local v19    # "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    :pswitch_b0c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get18(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 1887
    :try_start_b16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get18(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    move-object/from16 v0, v19

    invoke-interface {v2, v3, v0}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionTerminated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_b27
    .catch Landroid/os/RemoteException; {:try_start_b16 .. :try_end_b27} :catch_b29

    goto/16 :goto_2b

    .line 1889
    :catch_b29
    move-exception v16

    .line 1890
    .restart local v16    # "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "ImsCallSessionProxy"

    const-string/jumbo v3, "RemoteException callSessionTerminated()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2b

    .line 1899
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v16    # "e":Landroid/os/RemoteException;
    .end local v19    # "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    .end local v30    # "sipCauseCode":I
    :sswitch_b35
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1900
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, [I

    .line 1903
    .local v31, "sipMessage":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get1(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 1904
    if-eqz v31, :cond_2b

    const/4 v2, 0x0

    aget v2, v31, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get1(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_2b

    .line 1905
    const-string/jumbo v2, "ImsCallSessionProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "receive sip cause ="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x4

    aget v5, v31, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2b

    .line 1911
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v31    # "sipMessage":[I
    :sswitch_b7d
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1912
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v14, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, [Ljava/lang/String;

    .line 1915
    .local v14, "callModeInfo":[Ljava/lang/String;
    if-eqz v14, :cond_2b

    const/4 v2, 0x0

    aget-object v2, v14, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get1(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1916
    const/16 v33, 0x2

    .line 1917
    .local v33, "videoState":I
    const/4 v2, 0x1

    aget-object v2, v14, v2

    if-eqz v2, :cond_bad

    const/4 v2, 0x1

    aget-object v2, v14, v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c32

    .line 1920
    :cond_bad
    :goto_bad
    const/4 v2, 0x2

    aget-object v2, v14, v2

    if-eqz v2, :cond_bbe

    const/4 v2, 0x2

    aget-object v2, v14, v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c3b

    .line 1925
    :cond_bbe
    :goto_bbe
    const-string/jumbo v2, "ImsCallSessionProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "receive EVENT_CALL_MODE_CHANGE_INDICATION mode="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1926
    const-string/jumbo v5, "video state:"

    .line 1925
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v13, v1}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->isCallModeUpdated(II)Z

    move-result v2

    if-eqz v2, :cond_c1f

    .line 1929
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get18(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v2

    if-eqz v2, :cond_c10

    .line 1931
    :try_start_bf9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get18(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 1932
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get3(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v5

    .line 1931
    invoke-interface {v2, v3, v5}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionUpdated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    :try_end_c10
    .catch Landroid/os/RemoteException; {:try_start_bf9 .. :try_end_c10} :catch_c44

    .line 1941
    :cond_c10
    :goto_c10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get29(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-wrap4(Lcom/mediatek/ims/ImsCallSessionProxy;I)V

    .line 1943
    :cond_c1f
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->notifyMultipartyStateChanged(I)V

    .line 1944
    array-length v2, v14

    const/4 v3, 0x5

    if-lt v2, v3, :cond_2b

    .line 1945
    const/4 v2, 0x4

    aget-object v2, v14, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->notifyPauInfoChanged(Ljava/lang/String;)V

    goto/16 :goto_2b

    .line 1918
    :cond_c32
    const/4 v2, 0x1

    aget-object v2, v14, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    goto/16 :goto_bad

    .line 1921
    :cond_c3b
    const/4 v2, 0x2

    aget-object v2, v14, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    goto/16 :goto_bbe

    .line 1933
    :catch_c44
    move-exception v16

    .line 1935
    .restart local v16    # "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "ImsCallSessionProxy"

    const-string/jumbo v3, "RemoteException callSessionUpdated()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c10

    .line 1950
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v14    # "callModeInfo":[Ljava/lang/String;
    .end local v16    # "e":Landroid/os/RemoteException;
    .end local v33    # "videoState":I
    :sswitch_c4f
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1951
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, [Ljava/lang/String;

    .line 1953
    .local v32, "videoCapabilityInfo":[Ljava/lang/String;
    const/16 v24, 0x0

    .line 1954
    .local v24, "lVideoCapability":I
    const/16 v27, 0x0

    .line 1955
    .local v27, "rVideoCapability":I
    if-eqz v32, :cond_2b

    .line 1956
    const/4 v2, 0x0

    aget-object v2, v32, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get1(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1955
    if-eqz v2, :cond_2b

    .line 1957
    const/4 v2, 0x1

    aget-object v2, v32, v2

    if-eqz v2, :cond_c83

    .line 1958
    const/4 v2, 0x1

    aget-object v2, v32, v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cec

    .line 1967
    :cond_c83
    :goto_c83
    const/4 v2, 0x2

    aget-object v2, v32, v2

    if-eqz v2, :cond_c94

    .line 1968
    const/4 v2, 0x2

    aget-object v2, v32, v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d11

    .line 1978
    :cond_c94
    :goto_c94
    const-string/jumbo v2, "ImsCallSessionProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "receive EVENT_VIDEO_CAPABILITY_INDICATION local video capability:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1980
    const-string/jumbo v5, " remote video capability:"

    .line 1978
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1983
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get18(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 1985
    :try_start_cc7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get18(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 1986
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get3(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v5

    .line 1985
    invoke-interface {v2, v3, v5}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionUpdated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    :try_end_cde
    .catch Landroid/os/RemoteException; {:try_start_cc7 .. :try_end_cde} :catch_ce0

    goto/16 :goto_2b

    .line 1987
    :catch_ce0
    move-exception v16

    .line 1989
    .restart local v16    # "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "ImsCallSessionProxy"

    const-string/jumbo v3, "RemoteException callSessionUpdated()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2b

    .line 1959
    .end local v16    # "e":Landroid/os/RemoteException;
    :cond_cec
    const/4 v2, 0x1

    aget-object v2, v32, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .line 1960
    const/4 v2, 0x1

    move/from16 v0, v24

    if-ne v0, v2, :cond_d04

    .line 1961
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get19(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v2

    const/4 v3, 0x4

    iput v3, v2, Lcom/android/ims/ImsCallProfile;->mCallType:I

    goto :goto_c83

    .line 1963
    :cond_d04
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get19(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v2

    const/4 v3, 0x2

    iput v3, v2, Lcom/android/ims/ImsCallProfile;->mCallType:I

    goto/16 :goto_c83

    .line 1969
    :cond_d11
    const/4 v2, 0x2

    aget-object v2, v32, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    .line 1970
    const/4 v2, 0x1

    move/from16 v0, v27

    if-ne v0, v2, :cond_d2a

    .line 1971
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get27(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v2

    const/4 v3, 0x4

    iput v3, v2, Lcom/android/ims/ImsCallProfile;->mCallType:I

    goto/16 :goto_c94

    .line 1973
    :cond_d2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get27(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/android/ims/ImsCallProfile;

    move-result-object v2

    const/4 v3, 0x2

    iput v3, v2, Lcom/android/ims/ImsCallProfile;->mCallType:I

    goto/16 :goto_c94

    .line 1997
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v24    # "lVideoCapability":I
    .end local v27    # "rVideoCapability":I
    .end local v32    # "videoCapabilityInfo":[Ljava/lang/String;
    :sswitch_d37
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get8(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Messenger;

    move-result-object v2

    if-eqz v2, :cond_d5e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get7(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Message;

    move-result-object v2

    if-eqz v2, :cond_d5e

    .line 1999
    :try_start_d4b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get8(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Messenger;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-get7(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_d5e
    .catch Landroid/os/RemoteException; {:try_start_d4b .. :try_end_d5e} :catch_d70

    .line 2004
    :cond_d5e
    :goto_d5e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-set5(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 2005
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->-set4(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/Message;)Landroid/os/Message;

    goto/16 :goto_2b

    .line 2000
    :catch_d70
    move-exception v16

    .line 2001
    .restart local v16    # "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "ImsCallSessionProxy"

    const-string/jumbo v3, "RemoteException handleMessge() for DTMF"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d5e

    .line 1301
    nop

    :sswitch_data_d7c
    .sparse-switch
        0x66 -> :sswitch_2c
        0x67 -> :sswitch_61e
        0x68 -> :sswitch_62f
        0x69 -> :sswitch_a33
        0x6a -> :sswitch_b7d
        0x6b -> :sswitch_c4f
        0xc9 -> :sswitch_640
        0xcb -> :sswitch_694
        0xcc -> :sswitch_70c
        0xcd -> :sswitch_75f
        0xce -> :sswitch_872
        0xcf -> :sswitch_95c
        0xd0 -> :sswitch_b35
        0xd1 -> :sswitch_640
        0xd2 -> :sswitch_79d
        0xd3 -> :sswitch_860
        0xd4 -> :sswitch_d37
    .end sparse-switch

    .line 1385
    :sswitch_data_dc2
    .sparse-switch
        0x0 -> :sswitch_9f
        0x2 -> :sswitch_2e5
        0x6 -> :sswitch_398
        0x83 -> :sswitch_43b
        0x84 -> :sswitch_4ba
        0x85 -> :sswitch_53a
    .end sparse-switch

    .line 1340
    :pswitch_data_ddc
    .packed-switch 0x82
        :pswitch_1b4
    .end packed-switch

    .line 1873
    :pswitch_data_de2
    .packed-switch 0x1
        :pswitch_a64
        :pswitch_b0c
    .end packed-switch
.end method
