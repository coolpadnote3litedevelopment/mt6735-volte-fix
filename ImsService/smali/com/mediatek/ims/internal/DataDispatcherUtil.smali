.class public Lcom/mediatek/ims/internal/DataDispatcherUtil;
.super Ljava/lang/Object;
.source "DataDispatcherUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnActivationInd;,
        Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactivationInd;
    }
.end annotation


# static fields
.field static final DBG:Z = true

.field static final IMC_IPV4_ADDR_LEN:I = 0x4

.field static final IMC_IPV6_ADDR_LEN:I = 0x10

.field static final IMC_MAXIMUM_NW_IF_NAME_STRING_SIZE:I = 0x64

.field static final IMC_PCSCF_MAX_NUM:I = 0xa

.field protected static final TAG:Ljava/lang/String; = "GSM"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static log(Ljava/lang/String;)V
    .registers 4
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 71
    const-string/jumbo v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[dedicate] DataDispatcherUtil "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method


# virtual methods
.method extractDeactInd(Lcom/mediatek/ims/ImsAdapter$VaEvent;)Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactivationInd;
    .registers 6
    .param p1, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 33
    new-instance v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactivationInd;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactivationInd;-><init>(Lcom/mediatek/ims/internal/DataDispatcherUtil;)V

    .line 34
    .local v0, "deact":Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactivationInd;
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v1

    iput v1, v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactivationInd;->transactionId:I

    .line 35
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v1

    iput v1, v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactivationInd;->abortTransactionId:I

    .line 36
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v1

    if-ne v1, v2, :cond_3c

    move v1, v2

    :goto_1a
    iput-boolean v1, v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactivationInd;->isValid:Z

    .line 37
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v1

    if-ne v1, v2, :cond_3e

    :goto_22
    iput-boolean v2, v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnDeactivationInd;->isEmergency:Z

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "extractDeactInd PdnDeactivationInd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->log(Ljava/lang/String;)V

    .line 40
    return-object v0

    :cond_3c
    move v1, v3

    .line 36
    goto :goto_1a

    :cond_3e
    move v2, v3

    .line 37
    goto :goto_22
.end method

.method extractDefaultPdnActInd(Lcom/mediatek/ims/ImsAdapter$VaEvent;)Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnActivationInd;
    .registers 5
    .param p1, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .prologue
    const/4 v1, 0x1

    .line 21
    new-instance v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnActivationInd;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnActivationInd;-><init>(Lcom/mediatek/ims/internal/DataDispatcherUtil;)V

    .line 23
    .local v0, "defaultPdnActInd":Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnActivationInd;
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v2

    iput v2, v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnActivationInd;->transactionId:I

    .line 24
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v2

    iput v2, v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnActivationInd;->rat_type:I

    .line 25
    invoke-virtual {p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getByte()I

    move-result v2

    if-ne v2, v1, :cond_3b

    :goto_18
    iput-boolean v1, v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnActivationInd;->isEmergency:Z

    .line 26
    iget-object v1, v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnActivationInd;->pad:[B

    array-length v1, v1

    invoke-virtual {p1, v1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getBytes(I)[B

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/ims/internal/DataDispatcherUtil$PdnActivationInd;->pad:[B

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "extractDefaultPdnActInd DefaultPdnActInd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ims/internal/DataDispatcherUtil;->log(Ljava/lang/String;)V

    .line 29
    return-object v0

    .line 25
    :cond_3b
    const/4 v1, 0x0

    goto :goto_18
.end method
