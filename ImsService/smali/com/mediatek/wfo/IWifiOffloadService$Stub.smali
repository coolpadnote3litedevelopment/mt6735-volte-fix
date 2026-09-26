.class public abstract Lcom/mediatek/wfo/IWifiOffloadService$Stub;
.super Landroid/os/Binder;
.source "IWifiOffloadService.java"

# interfaces
.implements Lcom/mediatek/wfo/IWifiOffloadService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfo/IWifiOffloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/wfo/IWifiOffloadService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.wfo.IWifiOffloadService"

.field static final TRANSACTION_getDisconnectCause:I = 0x4

.field static final TRANSACTION_getRatType:I = 0x3

.field static final TRANSACTION_isWifiConnected:I = 0x7

.field static final TRANSACTION_registerForHandoverEvent:I = 0x1

.field static final TRANSACTION_setEpdgFqdn:I = 0x5

.field static final TRANSACTION_unregisterForHandoverEvent:I = 0x2

.field static final TRANSACTION_updateCallState:I = 0x6

.field static final TRANSACTION_updateRadioState:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "com.mediatek.wfo.IWifiOffloadService"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/wfo/IWifiOffloadService;
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
    const-string/jumbo v1, "com.mediatek.wfo.IWifiOffloadService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mediatek/wfo/IWifiOffloadService;

    if-eqz v1, :cond_14

    .line 28
    check-cast v0, Lcom/mediatek/wfo/IWifiOffloadService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/mediatek/wfo/IWifiOffloadService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/wfo/IWifiOffloadService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 15
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
    .line 38
    sparse-switch p1, :sswitch_data_d4

    .line 129
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    return v9

    .line 42
    :sswitch_8
    const-string/jumbo v9, "com.mediatek.wfo.IWifiOffloadService"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v9, 0x1

    return v9

    .line 47
    :sswitch_10
    const-string/jumbo v9, "com.mediatek.wfo.IWifiOffloadService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/wfo/IWifiOffloadListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/wfo/IWifiOffloadListener;

    move-result-object v1

    .line 50
    .local v1, "_arg0":Lcom/mediatek/wfo/IWifiOffloadListener;
    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->registerForHandoverEvent(Lcom/mediatek/wfo/IWifiOffloadListener;)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    const/4 v9, 0x1

    return v9

    .line 56
    .end local v1    # "_arg0":Lcom/mediatek/wfo/IWifiOffloadListener;
    :sswitch_26
    const-string/jumbo v9, "com.mediatek.wfo.IWifiOffloadService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/wfo/IWifiOffloadListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/wfo/IWifiOffloadListener;

    move-result-object v1

    .line 59
    .restart local v1    # "_arg0":Lcom/mediatek/wfo/IWifiOffloadListener;
    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->unregisterForHandoverEvent(Lcom/mediatek/wfo/IWifiOffloadListener;)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    const/4 v9, 0x1

    return v9

    .line 65
    .end local v1    # "_arg0":Lcom/mediatek/wfo/IWifiOffloadListener;
    :sswitch_3c
    const-string/jumbo v9, "com.mediatek.wfo.IWifiOffloadService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->getRatType()I

    move-result v6

    .line 67
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    const/4 v9, 0x1

    return v9

    .line 73
    .end local v6    # "_result":I
    :sswitch_4e
    const-string/jumbo v9, "com.mediatek.wfo.IWifiOffloadService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->getDisconnectCause()Lcom/mediatek/wfo/DisconnectCause;

    move-result-object v7

    .line 75
    .local v7, "_result":Lcom/mediatek/wfo/DisconnectCause;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    if-eqz v7, :cond_67

    .line 77
    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    const/4 v9, 0x1

    invoke-virtual {v7, p3, v9}, Lcom/mediatek/wfo/DisconnectCause;->writeToParcel(Landroid/os/Parcel;I)V

    .line 83
    :goto_65
    const/4 v9, 0x1

    return v9

    .line 81
    :cond_67
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_65

    .line 87
    .end local v7    # "_result":Lcom/mediatek/wfo/DisconnectCause;
    :sswitch_6c
    const-string/jumbo v9, "com.mediatek.wfo.IWifiOffloadService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_85

    const/4 v4, 0x1

    .line 92
    .local v4, "_arg1":Z
    :goto_7d
    invoke-virtual {p0, v2, v4}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->setEpdgFqdn(Ljava/lang/String;Z)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    const/4 v9, 0x1

    return v9

    .line 91
    .end local v4    # "_arg1":Z
    :cond_85
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Z
    goto :goto_7d

    .line 98
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Z
    :sswitch_87
    const-string/jumbo v9, "com.mediatek.wfo.IWifiOffloadService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 102
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 104
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 105
    .local v5, "_arg2":I
    invoke-virtual {p0, v0, v3, v5}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->updateCallState(III)V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    const/4 v9, 0x1

    return v9

    .line 111
    .end local v0    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v5    # "_arg2":I
    :sswitch_a1
    const-string/jumbo v9, "com.mediatek.wfo.IWifiOffloadService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->isWifiConnected()Z

    move-result v8

    .line 113
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    if-eqz v8, :cond_b6

    const/4 v9, 0x1

    :goto_b1
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    const/4 v9, 0x1

    return v9

    .line 114
    :cond_b6
    const/4 v9, 0x0

    goto :goto_b1

    .line 119
    .end local v8    # "_result":Z
    :sswitch_b8
    const-string/jumbo v9, "com.mediatek.wfo.IWifiOffloadService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 123
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_d1

    const/4 v4, 0x1

    .line 124
    .restart local v4    # "_arg1":Z
    :goto_c9
    invoke-virtual {p0, v0, v4}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->updateRadioState(IZ)V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    const/4 v9, 0x1

    return v9

    .line 123
    .end local v4    # "_arg1":Z
    :cond_d1
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Z
    goto :goto_c9

    .line 38
    nop

    :sswitch_data_d4
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_26
        0x3 -> :sswitch_3c
        0x4 -> :sswitch_4e
        0x5 -> :sswitch_6c
        0x6 -> :sswitch_87
        0x7 -> :sswitch_a1
        0x8 -> :sswitch_b8
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
