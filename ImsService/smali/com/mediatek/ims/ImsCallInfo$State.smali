.class final enum Lcom/mediatek/ims/ImsCallInfo$State;
.super Ljava/lang/Enum;
.source "ImsRILAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsCallInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mediatek/ims/ImsCallInfo$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/ims/ImsCallInfo$State;

.field public static final enum ACTIVE:Lcom/mediatek/ims/ImsCallInfo$State;

.field public static final enum ALERTING:Lcom/mediatek/ims/ImsCallInfo$State;

.field public static final enum HOLDING:Lcom/mediatek/ims/ImsCallInfo$State;

.field public static final enum INCOMING:Lcom/mediatek/ims/ImsCallInfo$State;

.field public static final enum INVALID:Lcom/mediatek/ims/ImsCallInfo$State;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 271
    new-instance v0, Lcom/mediatek/ims/ImsCallInfo$State;

    const-string/jumbo v1, "ACTIVE"

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ims/ImsCallInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/ims/ImsCallInfo$State;

    .line 272
    new-instance v0, Lcom/mediatek/ims/ImsCallInfo$State;

    const-string/jumbo v1, "HOLDING"

    invoke-direct {v0, v1, v3}, Lcom/mediatek/ims/ImsCallInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/ims/ImsCallInfo$State;->HOLDING:Lcom/mediatek/ims/ImsCallInfo$State;

    .line 273
    new-instance v0, Lcom/mediatek/ims/ImsCallInfo$State;

    const-string/jumbo v1, "ALERTING"

    invoke-direct {v0, v1, v4}, Lcom/mediatek/ims/ImsCallInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/ims/ImsCallInfo$State;->ALERTING:Lcom/mediatek/ims/ImsCallInfo$State;

    new-instance v0, Lcom/mediatek/ims/ImsCallInfo$State;

    const-string/jumbo v1, "INCOMING"

    invoke-direct {v0, v1, v5}, Lcom/mediatek/ims/ImsCallInfo$State;-><init>(Ljava/lang/String;I)V

    .line 274
    sput-object v0, Lcom/mediatek/ims/ImsCallInfo$State;->INCOMING:Lcom/mediatek/ims/ImsCallInfo$State;

    new-instance v0, Lcom/mediatek/ims/ImsCallInfo$State;

    const-string/jumbo v1, "INVALID"

    invoke-direct {v0, v1, v6}, Lcom/mediatek/ims/ImsCallInfo$State;-><init>(Ljava/lang/String;I)V

    .line 275
    sput-object v0, Lcom/mediatek/ims/ImsCallInfo$State;->INVALID:Lcom/mediatek/ims/ImsCallInfo$State;

    .line 270
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/mediatek/ims/ImsCallInfo$State;

    sget-object v1, Lcom/mediatek/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/ims/ImsCallInfo$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mediatek/ims/ImsCallInfo$State;->HOLDING:Lcom/mediatek/ims/ImsCallInfo$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mediatek/ims/ImsCallInfo$State;->ALERTING:Lcom/mediatek/ims/ImsCallInfo$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mediatek/ims/ImsCallInfo$State;->INCOMING:Lcom/mediatek/ims/ImsCallInfo$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mediatek/ims/ImsCallInfo$State;->INVALID:Lcom/mediatek/ims/ImsCallInfo$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/mediatek/ims/ImsCallInfo$State;->$VALUES:[Lcom/mediatek/ims/ImsCallInfo$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 270
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/ims/ImsCallInfo$State;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 270
    const-class v0, Lcom/mediatek/ims/ImsCallInfo$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ImsCallInfo$State;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/ims/ImsCallInfo$State;
    .registers 1

    .prologue
    .line 270
    sget-object v0, Lcom/mediatek/ims/ImsCallInfo$State;->$VALUES:[Lcom/mediatek/ims/ImsCallInfo$State;

    return-object v0
.end method
