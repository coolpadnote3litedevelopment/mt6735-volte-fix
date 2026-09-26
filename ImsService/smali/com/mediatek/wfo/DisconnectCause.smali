.class public Lcom/mediatek/wfo/DisconnectCause;
.super Ljava/lang/Object;
.source "DisconnectCause.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/wfo/DisconnectCause$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mediatek/wfo/DisconnectCause;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private errorCause:I

.field private subErrorCause:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    new-instance v0, Lcom/mediatek/wfo/DisconnectCause$1;

    invoke-direct {v0}, Lcom/mediatek/wfo/DisconnectCause$1;-><init>()V

    sput-object v0, Lcom/mediatek/wfo/DisconnectCause;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6
    return-void
.end method

.method public constructor <init>(II)V
    .registers 3
    .param p1, "error"    # I
    .param p2, "subError"    # I

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/mediatek/wfo/DisconnectCause;->errorCause:I

    .line 12
    iput p2, p0, Lcom/mediatek/wfo/DisconnectCause;->subErrorCause:I

    .line 10
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public getErrorCause()I
    .registers 2

    .prologue
    .line 16
    iget v0, p0, Lcom/mediatek/wfo/DisconnectCause;->errorCause:I

    return v0
.end method

.method public getSubErrorCause()I
    .registers 2

    .prologue
    .line 20
    iget v0, p0, Lcom/mediatek/wfo/DisconnectCause;->subErrorCause:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DisconnectCause {errorCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/wfo/DisconnectCause;->errorCause:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", subErrorCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/wfo/DisconnectCause;->subErrorCause:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 48
    const-string/jumbo v1, "}"

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 30
    iget v0, p0, Lcom/mediatek/wfo/DisconnectCause;->errorCause:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    iget v0, p0, Lcom/mediatek/wfo/DisconnectCause;->subErrorCause:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    return-void
.end method
