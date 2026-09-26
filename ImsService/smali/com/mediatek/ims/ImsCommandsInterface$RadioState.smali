.class public final enum Lcom/mediatek/ims/ImsCommandsInterface$RadioState;
.super Ljava/lang/Enum;
.source "ImsCommandsInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsCommandsInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RadioState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mediatek/ims/ImsCommandsInterface$RadioState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/ims/ImsCommandsInterface$RadioState;

.field public static final enum RADIO_OFF:Lcom/mediatek/ims/ImsCommandsInterface$RadioState;

.field public static final enum RADIO_ON:Lcom/mediatek/ims/ImsCommandsInterface$RadioState;

.field public static final enum RADIO_UNAVAILABLE:Lcom/mediatek/ims/ImsCommandsInterface$RadioState;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcom/mediatek/ims/ImsCommandsInterface$RadioState;

    const-string/jumbo v1, "RADIO_OFF"

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ims/ImsCommandsInterface$RadioState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/ims/ImsCommandsInterface$RadioState;->RADIO_OFF:Lcom/mediatek/ims/ImsCommandsInterface$RadioState;

    new-instance v0, Lcom/mediatek/ims/ImsCommandsInterface$RadioState;

    const-string/jumbo v1, "RADIO_UNAVAILABLE"

    invoke-direct {v0, v1, v3}, Lcom/mediatek/ims/ImsCommandsInterface$RadioState;-><init>(Ljava/lang/String;I)V

    .line 45
    sput-object v0, Lcom/mediatek/ims/ImsCommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/mediatek/ims/ImsCommandsInterface$RadioState;

    new-instance v0, Lcom/mediatek/ims/ImsCommandsInterface$RadioState;

    const-string/jumbo v1, "RADIO_ON"

    invoke-direct {v0, v1, v4}, Lcom/mediatek/ims/ImsCommandsInterface$RadioState;-><init>(Ljava/lang/String;I)V

    .line 46
    sput-object v0, Lcom/mediatek/ims/ImsCommandsInterface$RadioState;->RADIO_ON:Lcom/mediatek/ims/ImsCommandsInterface$RadioState;

    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mediatek/ims/ImsCommandsInterface$RadioState;

    sget-object v1, Lcom/mediatek/ims/ImsCommandsInterface$RadioState;->RADIO_OFF:Lcom/mediatek/ims/ImsCommandsInterface$RadioState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mediatek/ims/ImsCommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/mediatek/ims/ImsCommandsInterface$RadioState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mediatek/ims/ImsCommandsInterface$RadioState;->RADIO_ON:Lcom/mediatek/ims/ImsCommandsInterface$RadioState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mediatek/ims/ImsCommandsInterface$RadioState;->$VALUES:[Lcom/mediatek/ims/ImsCommandsInterface$RadioState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/ims/ImsCommandsInterface$RadioState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    const-class v0, Lcom/mediatek/ims/ImsCommandsInterface$RadioState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ImsCommandsInterface$RadioState;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/ims/ImsCommandsInterface$RadioState;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lcom/mediatek/ims/ImsCommandsInterface$RadioState;->$VALUES:[Lcom/mediatek/ims/ImsCommandsInterface$RadioState;

    return-object v0
.end method


# virtual methods
.method public isAvailable()Z
    .registers 2

    .prologue
    .line 53
    sget-object v0, Lcom/mediatek/ims/ImsCommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/mediatek/ims/ImsCommandsInterface$RadioState;

    if-eq p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isOn()Z
    .registers 2

    .prologue
    .line 49
    sget-object v0, Lcom/mediatek/ims/ImsCommandsInterface$RadioState;->RADIO_ON:Lcom/mediatek/ims/ImsCommandsInterface$RadioState;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
