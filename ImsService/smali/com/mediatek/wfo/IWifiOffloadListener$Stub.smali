.class public abstract Lcom/mediatek/wfo/IWifiOffloadListener$Stub;
.super Landroid/os/Binder;
.source "IWifiOffloadListener.java"

# interfaces
.implements Lcom/mediatek/wfo/IWifiOffloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfo/IWifiOffloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/wfo/IWifiOffloadListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.wfo.IWifiOffloadListener"

.field static final TRANSACTION_onHandover:I = 0x1

.field static final TRANSACTION_onRequestImsSwitch:I = 0x3

.field static final TRANSACTION_onRoveOut:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "com.mediatek.wfo.IWifiOffloadListener"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/wfo/IWifiOffloadListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/wfo/IWifiOffloadListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 23
    if-nez p0, :cond_4

    .line 24
    return-object v1

    .line 26
    :cond_4
    const-string/jumbo v1, "com.mediatek.wfo.IWifiOffloadListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mediatek/wfo/IWifiOffloadListener;

    if-eqz v1, :cond_14

    .line 28
    check-cast v0, Lcom/mediatek/wfo/IWifiOffloadListener;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/mediatek/wfo/IWifiOffloadListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/wfo/IWifiOffloadListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_5a

    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 42
    :sswitch_9
    const-string/jumbo v4, "com.mediatek.wfo.IWifiOffloadListener"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    return v5

    .line 47
    :sswitch_10
    const-string/jumbo v4, "com.mediatek.wfo.IWifiOffloadListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 51
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 52
    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/mediatek/wfo/IWifiOffloadListener$Stub;->onHandover(II)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    return v5

    .line 58
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_25
    const-string/jumbo v4, "com.mediatek.wfo.IWifiOffloadListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3d

    const/4 v1, 0x1

    .line 62
    .local v1, "_arg0":Z
    :goto_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 63
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/wfo/IWifiOffloadListener$Stub;->onRoveOut(ZI)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    return v5

    .line 60
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":I
    :cond_3d
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Z
    goto :goto_32

    .line 69
    .end local v1    # "_arg0":Z
    :sswitch_3f
    const-string/jumbo v4, "com.mediatek.wfo.IWifiOffloadListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 73
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_57

    const/4 v3, 0x1

    .line 74
    .local v3, "_arg1":Z
    :goto_50
    invoke-virtual {p0, v0, v3}, Lcom/mediatek/wfo/IWifiOffloadListener$Stub;->onRequestImsSwitch(IZ)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    return v5

    .line 73
    .end local v3    # "_arg1":Z
    :cond_57
    const/4 v3, 0x0

    .restart local v3    # "_arg1":Z
    goto :goto_50

    .line 38
    nop

    :sswitch_data_5a
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_25
        0x3 -> :sswitch_3f
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
