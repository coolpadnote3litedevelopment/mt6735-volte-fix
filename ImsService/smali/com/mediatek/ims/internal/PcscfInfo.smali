.class public Lcom/mediatek/ims/internal/PcscfInfo;
.super Ljava/lang/Object;
.source "PcscfInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/PcscfInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mediatek/ims/internal/PcscfInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final IMC_PCSCF_ACQUIRE_BY_DHCPv4:I = 0x4

.field public static final IMC_PCSCF_ACQUIRE_BY_DHCPv6:I = 0x5

.field public static final IMC_PCSCF_ACQUIRE_BY_MANUAL:I = 0x6

.field public static final IMC_PCSCF_ACQUIRE_BY_MO:I = 0x2

.field public static final IMC_PCSCF_ACQUIRE_BY_NONE:I = 0x0

.field public static final IMC_PCSCF_ACQUIRE_BY_PCO:I = 0x3

.field public static final IMC_PCSCF_ACQUIRE_BY_SIM:I = 0x1


# instance fields
.field public source:I

.field public v4AddrList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/ims/internal/PcscfAddr;",
            ">;"
        }
    .end annotation
.end field

.field public v6AddrList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/ims/internal/PcscfAddr;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 147
    new-instance v0, Lcom/mediatek/ims/internal/PcscfInfo$1;

    invoke-direct {v0}, Lcom/mediatek/ims/internal/PcscfInfo$1;-><init>()V

    .line 146
    sput-object v0, Lcom/mediatek/ims/internal/PcscfInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ims/internal/PcscfInfo;->source:I

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/internal/PcscfInfo;->v4AddrList:Ljava/util/ArrayList;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/internal/PcscfInfo;->v6AddrList:Ljava/util/ArrayList;

    .line 22
    return-void
.end method

.method public constructor <init>(I[BI)V
    .registers 5
    .param p1, "sourceNum"    # I
    .param p2, "pcscfBytes"    # [B
    .param p3, "port"    # I

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ims/internal/PcscfInfo;->source:I

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/internal/PcscfInfo;->v4AddrList:Ljava/util/ArrayList;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/internal/PcscfInfo;->v6AddrList:Ljava/util/ArrayList;

    .line 34
    iput p1, p0, Lcom/mediatek/ims/internal/PcscfInfo;->source:I

    .line 35
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v0, p3}, Lcom/mediatek/ims/internal/PcscfInfo;->add(Ljava/lang/String;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(I[Ljava/lang/String;)V
    .registers 7
    .param p1, "sourceNum"    # I
    .param p2, "pcscfArray"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v2, p0, Lcom/mediatek/ims/internal/PcscfInfo;->source:I

    .line 19
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ims/internal/PcscfInfo;->v4AddrList:Ljava/util/ArrayList;

    .line 20
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ims/internal/PcscfInfo;->v6AddrList:Ljava/util/ArrayList;

    .line 26
    if-eqz p2, :cond_27

    array-length v1, p2

    if-lez v1, :cond_27

    .line 27
    iput p1, p0, Lcom/mediatek/ims/internal/PcscfInfo;->source:I

    .line 28
    array-length v3, p2

    move v1, v2

    :goto_1d
    if-ge v1, v3, :cond_27

    aget-object v0, p2, v1

    .line 29
    .local v0, "pcscf":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lcom/mediatek/ims/internal/PcscfInfo;->add(Ljava/lang/String;I)V

    .line 28
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 25
    .end local v0    # "pcscf":Ljava/lang/String;
    :cond_27
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;I)V
    .registers 6
    .param p1, "pcscf"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 39
    new-instance v0, Lcom/mediatek/ims/internal/PcscfAddr;

    invoke-direct {v0, p1}, Lcom/mediatek/ims/internal/PcscfAddr;-><init>(Ljava/lang/String;)V

    .line 40
    .local v0, "pcscfAddr":Lcom/mediatek/ims/internal/PcscfAddr;
    iput p2, v0, Lcom/mediatek/ims/internal/PcscfAddr;->port:I

    .line 42
    iget v1, v0, Lcom/mediatek/ims/internal/PcscfAddr;->protocol:I

    const/16 v2, 0x21

    if-ne v1, v2, :cond_13

    .line 43
    iget-object v1, p0, Lcom/mediatek/ims/internal/PcscfInfo;->v4AddrList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    :goto_12
    return-void

    .line 45
    :cond_13
    iget-object v1, p0, Lcom/mediatek/ims/internal/PcscfInfo;->v6AddrList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12
.end method

.method public copyFrom(Lcom/mediatek/ims/internal/PcscfInfo;)V
    .registers 3
    .param p1, "pcscfInfo"    # Lcom/mediatek/ims/internal/PcscfInfo;

    .prologue
    .line 113
    iget v0, p1, Lcom/mediatek/ims/internal/PcscfInfo;->source:I

    iput v0, p0, Lcom/mediatek/ims/internal/PcscfInfo;->source:I

    .line 114
    iget-object v0, p1, Lcom/mediatek/ims/internal/PcscfInfo;->v4AddrList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/mediatek/ims/internal/PcscfInfo;->v4AddrList:Ljava/util/ArrayList;

    .line 115
    iget-object v0, p1, Lcom/mediatek/ims/internal/PcscfInfo;->v6AddrList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/mediatek/ims/internal/PcscfInfo;->v6AddrList:Ljava/util/ArrayList;

    .line 112
    return-void
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public getPcscfAddressCount()I
    .registers 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/mediatek/ims/internal/PcscfInfo;->v4AddrList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/mediatek/ims/internal/PcscfInfo;->v6AddrList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public readAddressFrom(ILandroid/os/Parcel;)V
    .registers 9
    .param p1, "sourceNum"    # I
    .param p2, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x0

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "pcscfStr":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 83
    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "pcscfArray":[Ljava/lang/String;
    if-eqz v1, :cond_23

    array-length v3, v1

    if-lez v3, :cond_23

    .line 85
    array-length v5, v1

    move v3, v4

    :goto_19
    if-ge v3, v5, :cond_23

    aget-object v0, v1, v3

    .line 86
    .local v0, "pcscf":Ljava/lang/String;
    invoke-virtual {p0, v0, v4}, Lcom/mediatek/ims/internal/PcscfInfo;->add(Ljava/lang/String;I)V

    .line 85
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 80
    .end local v0    # "pcscf":Ljava/lang/String;
    .end local v1    # "pcscfArray":[Ljava/lang/String;
    :cond_23
    return-void
.end method

.method public readFrom(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/mediatek/ims/internal/PcscfInfo;->source:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 55
    .local v2, "v4AddrNumber":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v2, :cond_1d

    .line 56
    new-instance v0, Lcom/mediatek/ims/internal/PcscfAddr;

    invoke-direct {v0}, Lcom/mediatek/ims/internal/PcscfAddr;-><init>()V

    .line 57
    .local v0, "addr":Lcom/mediatek/ims/internal/PcscfAddr;
    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/PcscfAddr;->readFrom(Landroid/os/Parcel;)V

    .line 58
    iget-object v4, p0, Lcom/mediatek/ims/internal/PcscfInfo;->v4AddrList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 61
    .end local v0    # "addr":Lcom/mediatek/ims/internal/PcscfAddr;
    :cond_1d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 62
    .local v3, "v6AddrNumber":I
    const/4 v1, 0x0

    :goto_22
    if-ge v1, v3, :cond_34

    .line 63
    new-instance v0, Lcom/mediatek/ims/internal/PcscfAddr;

    invoke-direct {v0}, Lcom/mediatek/ims/internal/PcscfAddr;-><init>()V

    .line 64
    .restart local v0    # "addr":Lcom/mediatek/ims/internal/PcscfAddr;
    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/PcscfAddr;->readFrom(Landroid/os/Parcel;)V

    .line 65
    iget-object v4, p0, Lcom/mediatek/ims/internal/PcscfInfo;->v6AddrList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 52
    .end local v0    # "addr":Lcom/mediatek/ims/internal/PcscfAddr;
    :cond_34
    return-void
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 119
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ims/internal/PcscfInfo;->source:I

    .line 120
    iget-object v0, p0, Lcom/mediatek/ims/internal/PcscfInfo;->v4AddrList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 121
    iget-object v0, p0, Lcom/mediatek/ims/internal/PcscfInfo;->v6AddrList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 118
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 126
    new-instance v2, Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[source="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/ims/internal/PcscfInfo;->source:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", V4["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 127
    .local v2, "buf":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lcom/mediatek/ims/internal/PcscfInfo;->v4AddrList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "addr$iterator":Ljava/util/Iterator;
    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/PcscfAddr;

    .line 128
    .local v0, "addr":Lcom/mediatek/ims/internal/PcscfAddr;
    invoke-virtual {v0}, Lcom/mediatek/ims/internal/PcscfAddr;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_28

    .line 129
    .end local v0    # "addr":Lcom/mediatek/ims/internal/PcscfAddr;
    :cond_3c
    const-string/jumbo v3, "] V6["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    iget-object v3, p0, Lcom/mediatek/ims/internal/PcscfInfo;->v6AddrList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_48
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/PcscfAddr;

    .line 131
    .restart local v0    # "addr":Lcom/mediatek/ims/internal/PcscfAddr;
    invoke-virtual {v0}, Lcom/mediatek/ims/internal/PcscfAddr;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_48

    .line 132
    .end local v0    # "addr":Lcom/mediatek/ims/internal/PcscfAddr;
    :cond_5c
    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeAddressTo(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 92
    const/4 v2, 0x0

    .line 93
    .local v2, "count":I
    iget-object v3, p0, Lcom/mediatek/ims/internal/PcscfInfo;->v4AddrList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "addr$iterator":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/PcscfAddr;

    .line 94
    .local v0, "addr":Lcom/mediatek/ims/internal/PcscfAddr;
    if-nez v2, :cond_1d

    .line 95
    iget-object v3, v0, Lcom/mediatek/ims/internal/PcscfAddr;->address:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    :goto_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 97
    :cond_1d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/mediatek/ims/internal/PcscfAddr;->address:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1a

    .line 101
    .end local v0    # "addr":Lcom/mediatek/ims/internal/PcscfAddr;
    :cond_37
    iget-object v3, p0, Lcom/mediatek/ims/internal/PcscfInfo;->v6AddrList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/PcscfAddr;

    .line 102
    .restart local v0    # "addr":Lcom/mediatek/ims/internal/PcscfAddr;
    if-nez v2, :cond_53

    .line 103
    iget-object v3, v0, Lcom/mediatek/ims/internal/PcscfAddr;->address:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    :goto_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 105
    :cond_53
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/mediatek/ims/internal/PcscfAddr;->address:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_50

    .line 91
    .end local v0    # "addr":Lcom/mediatek/ims/internal/PcscfAddr;
    :cond_6d
    return-void
.end method

.method public writeTo(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 70
    iget v2, p0, Lcom/mediatek/ims/internal/PcscfInfo;->source:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget-object v2, p0, Lcom/mediatek/ims/internal/PcscfInfo;->v4AddrList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget-object v2, p0, Lcom/mediatek/ims/internal/PcscfInfo;->v4AddrList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "addr$iterator":Ljava/util/Iterator;
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/PcscfAddr;

    .line 73
    .local v0, "addr":Lcom/mediatek/ims/internal/PcscfAddr;
    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/PcscfAddr;->writeTo(Landroid/os/Parcel;)V

    goto :goto_14

    .line 75
    .end local v0    # "addr":Lcom/mediatek/ims/internal/PcscfAddr;
    :cond_24
    iget-object v2, p0, Lcom/mediatek/ims/internal/PcscfInfo;->v6AddrList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget-object v2, p0, Lcom/mediatek/ims/internal/PcscfInfo;->v6AddrList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/PcscfAddr;

    .line 77
    .restart local v0    # "addr":Lcom/mediatek/ims/internal/PcscfAddr;
    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/PcscfAddr;->writeTo(Landroid/os/Parcel;)V

    goto :goto_33

    .line 69
    .end local v0    # "addr":Lcom/mediatek/ims/internal/PcscfAddr;
    :cond_43
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/internal/PcscfInfo;->writeTo(Landroid/os/Parcel;)V

    .line 142
    return-void
.end method
