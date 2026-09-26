.class final Lcom/mediatek/ims/internal/PcscfInfo$1;
.super Ljava/lang/Object;
.source "PcscfInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/PcscfInfo;
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
        "Lcom/mediatek/ims/internal/PcscfInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/ims/internal/PcscfInfo;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 150
    new-instance v0, Lcom/mediatek/ims/internal/PcscfInfo;

    invoke-direct {v0}, Lcom/mediatek/ims/internal/PcscfInfo;-><init>()V

    .line 151
    .local v0, "pcscfInfo":Lcom/mediatek/ims/internal/PcscfInfo;
    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/PcscfInfo;->readFrom(Landroid/os/Parcel;)V

    .line 152
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/internal/PcscfInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/ims/internal/PcscfInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/mediatek/ims/internal/PcscfInfo;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 157
    new-array v0, p1, [Lcom/mediatek/ims/internal/PcscfInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/internal/PcscfInfo$1;->newArray(I)[Lcom/mediatek/ims/internal/PcscfInfo;

    move-result-object v0

    return-object v0
.end method
