.class public Lcom/mediatek/ims/internal/ImsVTProviderUtil;
.super Ljava/lang/Object;
.source "ImsVTProviderUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;,
        Lcom/mediatek/ims/internal/ImsVTProviderUtil$ParameterSet;,
        Lcom/mediatek/ims/internal/ImsVTProviderUtil$ImsVTMessagePacker;
    }
.end annotation


# static fields
.field public static final HIDE_ME_TYPE_DISABLE:I = 0x1

.field public static final HIDE_ME_TYPE_FREEZE:I = 0x2

.field public static final HIDE_ME_TYPE_NONE:I = 0x0

.field public static final HIDE_ME_TYPE_PICTURE:I = 0x3

.field public static final HIDE_YOU_TYPE_DISABLE:I = 0x0

.field public static final HIDE_YOU_TYPE_ENABLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ImsVTProviderUtil"

.field public static final TURN_OFF_CAMERA:I = -0x1

.field public static final UI_MODE_BG:I = 0x1

.field public static final UI_MODE_DESTROY:I = 0x10000

.field public static final UI_MODE_FG:I

.field private static mPacker:Lcom/mediatek/ims/internal/ImsVTProviderUtil$ImsVTMessagePacker;

.field private static mParamSet:Lcom/mediatek/ims/internal/ImsVTProviderUtil$ParameterSet;

.field private static mProviderById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static mSurfaceStatusById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 479
    new-instance v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$ImsVTMessagePacker;

    invoke-direct {v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil$ImsVTMessagePacker;-><init>()V

    sput-object v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mPacker:Lcom/mediatek/ims/internal/ImsVTProviderUtil$ImsVTMessagePacker;

    .line 480
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    .line 481
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mSurfaceStatusById:Ljava/util/Map;

    .line 58
    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 484
    new-instance v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$ParameterSet;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil$ParameterSet;-><init>(Lcom/mediatek/ims/internal/ImsVTProviderUtil;)V

    sput-object v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mParamSet:Lcom/mediatek/ims/internal/ImsVTProviderUtil$ParameterSet;

    .line 483
    return-void
.end method

.method public static getSetting()Lcom/mediatek/ims/internal/ImsVTProviderUtil$ParameterSet;
    .registers 1

    .prologue
    .line 488
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mParamSet:Lcom/mediatek/ims/internal/ImsVTProviderUtil$ParameterSet;

    return-object v0
.end method

.method public static packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;
    .registers 2
    .param p0, "VideoProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 492
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mPacker:Lcom/mediatek/ims/internal/ImsVTProviderUtil$ImsVTMessagePacker;

    invoke-virtual {v0, p0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil$ImsVTMessagePacker;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static recordAdd(ILcom/mediatek/ims/internal/ImsVTProvider;)V
    .registers 5
    .param p0, "Id"    # I
    .param p1, "p"    # Lcom/mediatek/ims/internal/ImsVTProvider;

    .prologue
    .line 555
    const-string/jumbo v0, "ImsVTProviderUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "recordAdd id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    return-void
.end method

.method public static recordContain(I)Z
    .registers 3
    .param p0, "Id"    # I

    .prologue
    .line 582
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static recordGet(I)Lcom/mediatek/ims/internal/ImsVTProvider;
    .registers 4
    .param p0, "Id"    # I

    .prologue
    .line 567
    const-string/jumbo v0, "ImsVTProviderUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "recordGet id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/ImsVTProvider;

    return-object v0
.end method

.method public static recordPopId()I
    .registers 3

    .prologue
    .line 573
    sget-object v2, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-eqz v2, :cond_23

    .line 574
    sget-object v2, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "p$iterator":Ljava/util/Iterator;
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 575
    .local v0, "p":Ljava/lang/Object;
    check-cast v0, Lcom/mediatek/ims/internal/ImsVTProvider;

    .end local v0    # "p":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->getId()I

    move-result v2

    return v2

    .line 578
    :cond_23
    const/16 v2, -0x2710

    return v2
.end method

.method public static recordRemove(I)V
    .registers 4
    .param p0, "Id"    # I

    .prologue
    .line 561
    const-string/jumbo v0, "ImsVTProviderUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "recordRemove id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    return-void
.end method

.method public static recordSize()I
    .registers 1

    .prologue
    .line 586
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public static surfaceGet(I)I
    .registers 5
    .param p0, "Id"    # I

    .prologue
    .line 544
    sget-object v1, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mSurfaceStatusById:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 545
    .local v0, "status":Ljava/lang/Integer;
    if-eqz v0, :cond_4c

    .line 546
    const-string/jumbo v1, "ImsVTProviderUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[surfaceGet] state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", Id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 549
    :cond_4c
    const-string/jumbo v1, "ImsVTProviderUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[surfaceGet] state = 0, Id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const/4 v1, 0x0

    return v1
.end method

.method public static surfaceSet(IZZ)V
    .registers 8
    .param p0, "Id"    # I
    .param p1, "isLocal"    # Z
    .param p2, "isSet"    # Z

    .prologue
    .line 500
    sget-object v2, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mSurfaceStatusById:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 503
    .local v0, "status":Ljava/lang/Integer;
    const-string/jumbo v2, "ImsVTProviderUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[surfaceSet] isLocal = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", isSet = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    if-eqz v0, :cond_b6

    .line 506
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 507
    .local v1, "statusInt":I
    const-string/jumbo v2, "ImsVTProviderUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[surfaceSet] state (before) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    if-eqz p1, :cond_ae

    .line 509
    if-nez p2, :cond_ab

    .line 510
    and-int/lit8 v1, v1, -0x2

    .line 537
    :goto_67
    const-string/jumbo v2, "ImsVTProviderUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[surfaceSet] state (after) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", Id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    sget-object v2, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mSurfaceStatusById:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    return-void

    .line 512
    :cond_ab
    or-int/lit8 v1, v1, 0x1

    goto :goto_67

    .line 515
    :cond_ae
    if-nez p2, :cond_b3

    .line 516
    and-int/lit8 v1, v1, -0x3

    goto :goto_67

    .line 518
    :cond_b3
    or-int/lit8 v1, v1, 0x2

    goto :goto_67

    .line 522
    .end local v1    # "statusInt":I
    :cond_b6
    const-string/jumbo v2, "ImsVTProviderUtil"

    const-string/jumbo v3, "[surfaceSet] state (before) = null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    if-eqz p1, :cond_c7

    .line 524
    if-nez p2, :cond_c5

    .line 525
    const/4 v1, 0x0

    .restart local v1    # "statusInt":I
    goto :goto_67

    .line 527
    .end local v1    # "statusInt":I
    :cond_c5
    const/4 v1, 0x1

    .restart local v1    # "statusInt":I
    goto :goto_67

    .line 530
    .end local v1    # "statusInt":I
    :cond_c7
    if-nez p2, :cond_cb

    .line 531
    const/4 v1, 0x0

    .restart local v1    # "statusInt":I
    goto :goto_67

    .line 533
    .end local v1    # "statusInt":I
    :cond_cb
    const/4 v1, 0x2

    .restart local v1    # "statusInt":I
    goto :goto_67
.end method

.method public static unPackToVdoProfile(Ljava/lang/String;)Landroid/telecom/VideoProfile;
    .registers 2
    .param p0, "flattened"    # Ljava/lang/String;

    .prologue
    .line 496
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mPacker:Lcom/mediatek/ims/internal/ImsVTProviderUtil$ImsVTMessagePacker;

    invoke-virtual {v0, p0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil$ImsVTMessagePacker;->unPackToVdoProfile(Ljava/lang/String;)Landroid/telecom/VideoProfile;

    move-result-object v0

    return-object v0
.end method
