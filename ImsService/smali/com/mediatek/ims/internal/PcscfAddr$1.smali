.class final Lcom/mediatek/ims/internal/PcscfAddr$1;
.super Ljava/lang/Object;
.source "PcscfAddr.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/PcscfAddr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/mediatek/ims/internal/PcscfAddr;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/ims/internal/PcscfAddr;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 69
    new-instance v0, Lcom/mediatek/ims/internal/PcscfAddr;

    invoke-direct {v0}, Lcom/mediatek/ims/internal/PcscfAddr;-><init>()V

    .line 70
    .local v0, "pcscfAddr":Lcom/mediatek/ims/internal/PcscfAddr;
    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/PcscfAddr;->readFrom(Landroid/os/Parcel;)V

    .line 71
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/internal/PcscfAddr$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/ims/internal/PcscfAddr;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/mediatek/ims/internal/PcscfAddr;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 76
    new-array v0, p1, [Lcom/mediatek/ims/internal/PcscfAddr;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/internal/PcscfAddr$1;->newArray(I)[Lcom/mediatek/ims/internal/PcscfAddr;

    move-result-object v0

    return-object v0
.end method
