.class public Lcom/mediatek/ims/internal/CallControlDispatcher;
.super Ljava/lang/Object;
.source "CallControlDispatcher.java"

# interfaces
.implements Lcom/mediatek/ims/ImsEventDispatcher$VaEventDispatcher;


# static fields
.field public static final ACTION_IMS_CONFERENCE_CALL_INDICATION:Ljava/lang/String; = "android.intent.action.ims.conference"

.field public static final ACTION_LTE_MESSAGE_WAITING_INDICATION:Ljava/lang/String; = "android.intent.action.lte.mwi"

.field public static final EXTRA_CALL_ID:Ljava/lang/String; = "call.id"

.field public static final EXTRA_LTE_MWI_BODY:Ljava/lang/String; = "lte_mwi_body"

.field public static final EXTRA_MESSAGE_CONTENT:Ljava/lang/String; = "message.content"

.field public static final EXTRA_PHONE_ID:Ljava/lang/String; = "phone.id"

.field private static final IMC_PROGRESS_NOTIFY_CONFERENCE:I = 0x101

.field private static final IMC_PROGRESS_NOTIFY_MWI:I = 0x102

.field private static final TAG:Ljava/lang/String; = "[CallControlDispatcher]"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/ims/ImsAdapter$VaSocketIO;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "IO"    # Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/mediatek/ims/internal/CallControlDispatcher;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/mediatek/ims/internal/CallControlDispatcher;->mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    .line 29
    return-void
.end method

.method private getDataLength([BI)I
    .registers 5
    .param p1, "data"    # [B
    .param p2, "originLen"    # I

    .prologue
    .line 96
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_b

    .line 97
    aget-byte v1, p1, v0

    if-nez v1, :cond_8

    .line 98
    return v0

    .line 96
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 102
    :cond_b
    return v0
.end method


# virtual methods
.method public disableRequest()V
    .registers 3

    .prologue
    .line 39
    const-string/jumbo v0, "[CallControlDispatcher]"

    const-string/jumbo v1, "disableRequest()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return-void
.end method

.method public enableRequest()V
    .registers 3

    .prologue
    .line 35
    const-string/jumbo v0, "[CallControlDispatcher]"

    const-string/jumbo v1, "enableRequest()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-void
.end method

.method public vaEventCallback(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .registers 15
    .param p1, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .prologue
    .line 52
    :try_start_0
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getRequestID()I

    move-result v8

    .line 53
    .local v8, "requestId":I
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getDataLen()I

    move-result v6

    .line 54
    .local v6, "len":I
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getInt()I

    move-result v1

    .line 55
    .local v1, "callId":I
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getPhoneId()I

    move-result v7

    .line 56
    .local v7, "phoneId":I
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getInt()I

    move-result v9

    .line 57
    .local v9, "serviceId":I
    const/16 v10, 0xfa0

    invoke-virtual {p1, v10}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getBytes(I)[B

    move-result-object v0

    .line 58
    .local v0, "byteData":[B
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 59
    .local v2, "data":Ljava/lang/String;
    const/16 v10, 0xfa0

    invoke-direct {p0, v0, v10}, Lcom/mediatek/ims/internal/CallControlDispatcher;->getDataLength([BI)I

    move-result v6

    .line 60
    const-string/jumbo v10, "[CallControlDispatcher]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "requestId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", length = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 61
    const-string/jumbo v12, ", callId = "

    .line 60
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 61
    const-string/jumbo v12, ", phoneId = "

    .line 60
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 62
    const-string/jumbo v12, ", serviceId = "

    .line 60
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 62
    const-string/jumbo v12, ", data = "

    .line 60
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 62
    const/4 v12, 0x0

    invoke-virtual {v2, v12, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 60
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    packed-switch v9, :pswitch_data_f0

    .line 83
    const-string/jumbo v10, "[CallControlDispatcher]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unkonwn serviceId: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .end local v0    # "byteData":[B
    .end local v1    # "callId":I
    .end local v2    # "data":Ljava/lang/String;
    .end local v6    # "len":I
    .end local v7    # "phoneId":I
    .end local v8    # "requestId":I
    .end local v9    # "serviceId":I
    :goto_98
    return-void

    .line 67
    .restart local v0    # "byteData":[B
    .restart local v1    # "callId":I
    .restart local v2    # "data":Ljava/lang/String;
    .restart local v6    # "len":I
    .restart local v7    # "phoneId":I
    .restart local v8    # "requestId":I
    .restart local v9    # "serviceId":I
    :pswitch_99
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v10, "android.intent.action.lte.mwi"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    .local v4, "intent":Landroid/content/Intent;
    const-string/jumbo v10, "lte_mwi_body"

    invoke-virtual {v4, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    const-string/jumbo v10, "phone.id"

    invoke-virtual {v4, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    iget-object v10, p0, Lcom/mediatek/ims/internal/CallControlDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 71
    const-string/jumbo v10, "[CallControlDispatcher]"

    const-string/jumbo v11, "Message Waiting Message is sent."

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_bb} :catch_bc

    goto :goto_98

    .line 88
    .end local v0    # "byteData":[B
    .end local v1    # "callId":I
    .end local v2    # "data":Ljava/lang/String;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v6    # "len":I
    .end local v7    # "phoneId":I
    .end local v8    # "requestId":I
    .end local v9    # "serviceId":I
    :catch_bc
    move-exception v3

    .line 89
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_98

    .line 75
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "byteData":[B
    .restart local v1    # "callId":I
    .restart local v2    # "data":Ljava/lang/String;
    .restart local v6    # "len":I
    .restart local v7    # "phoneId":I
    .restart local v8    # "requestId":I
    .restart local v9    # "serviceId":I
    :pswitch_c1
    :try_start_c1
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v10, "android.intent.action.ims.conference"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    .local v5, "intent1":Landroid/content/Intent;
    const-string/jumbo v10, "message.content"

    const/4 v11, 0x0

    invoke-virtual {v2, v11, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    const-string/jumbo v10, "call.id"

    invoke-virtual {v5, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 78
    const-string/jumbo v10, "phone.id"

    invoke-virtual {v5, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 79
    iget-object v10, p0, Lcom/mediatek/ims/internal/CallControlDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 80
    const-string/jumbo v10, "[CallControlDispatcher]"

    const-string/jumbo v11, "Conference call XML message is sent."

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_ee} :catch_bc

    goto :goto_98

    .line 64
    nop

    :pswitch_data_f0
    .packed-switch 0x101
        :pswitch_c1
        :pswitch_99
    .end packed-switch
.end method
