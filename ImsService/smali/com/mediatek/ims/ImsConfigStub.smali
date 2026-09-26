.class public Lcom/mediatek/ims/ImsConfigStub;
.super Lcom/android/ims/internal/IImsConfig$Stub;
.source "ImsConfigStub.java"


# static fields
.field private static final MAX_BYTE_COUNT:I = 0x100

.field private static final PROPERTY_IMS_VIDEO_ENALBE:Ljava/lang/String; = "persist.mtk.ims.video.enable"

.field private static final PROPERTY_VOLTE_ENALBE:Ljava/lang/String; = "persist.mtk.volte.enable"

.field private static final PROPERTY_WFC_ENALBE:Ljava/lang/String; = "persist.mtk.wfc.enable"

.field private static final TAG:Ljava/lang/String; = "ImsConfigService"

.field private static mVilteCapability:Z

.field private static mVolteCapability:Z

.field private static mWfcCapability:Z

.field private static sTelephonyManager:Landroid/telephony/TelephonyManager;


# instance fields
.field private mAtCmdResult:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mImsCapabilityArr:[Z

.field private mPcscf:Ljava/lang/String;

.field private mPhoneId:I

.field private mRilAdapter:Lcom/mediatek/ims/ImsRILAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/ims/ImsConfigStub;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 41
    sput-boolean v1, Lcom/mediatek/ims/ImsConfigStub;->mVolteCapability:Z

    .line 42
    sput-boolean v1, Lcom/mediatek/ims/ImsConfigStub;->mVilteCapability:Z

    .line 43
    sput-boolean v1, Lcom/mediatek/ims/ImsConfigStub;->mWfcCapability:Z

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/ims/ImsRILAdapter;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imsRilAdapter"    # Lcom/mediatek/ims/ImsRILAdapter;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/ims/internal/IImsConfig$Stub;-><init>()V

    .line 35
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/mediatek/ims/ImsConfigStub;->mAtCmdResult:Ljava/lang/String;

    .line 44
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/mediatek/ims/ImsConfigStub;->mImsCapabilityArr:[Z

    .line 54
    iput-object p1, p0, Lcom/mediatek/ims/ImsConfigStub;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/mediatek/ims/ImsConfigStub;->mRilAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    .line 56
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/mediatek/ims/ImsConfigStub;->mPcscf:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/ims/ImsRILAdapter;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imsRilAdapter"    # Lcom/mediatek/ims/ImsRILAdapter;
    .param p3, "phoneId"    # I

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Lcom/android/ims/internal/IImsConfig$Stub;-><init>()V

    .line 35
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/mediatek/ims/ImsConfigStub;->mAtCmdResult:Ljava/lang/String;

    .line 44
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/mediatek/ims/ImsConfigStub;->mImsCapabilityArr:[Z

    .line 60
    iput-object p1, p0, Lcom/mediatek/ims/ImsConfigStub;->mContext:Landroid/content/Context;

    .line 61
    iput p3, p0, Lcom/mediatek/ims/ImsConfigStub;->mPhoneId:I

    .line 62
    iput-object p2, p0, Lcom/mediatek/ims/ImsConfigStub;->mRilAdapter:Lcom/mediatek/ims/ImsRILAdapter;

    .line 63
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/mediatek/ims/ImsConfigStub;->mPcscf:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/mediatek/ims/ImsConfigStub;->mImsCapabilityArr:[Z

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([ZZ)V

    .line 66
    iget-object v0, p0, Lcom/mediatek/ims/ImsConfigStub;->mImsCapabilityArr:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 59
    return-void
.end method

.method private declared-synchronized executeCommandResponse(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "atCmdLine"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 326
    :try_start_1
    const-string/jumbo v0, ""

    .line 328
    .local v0, "atCmdResult":Ljava/lang/String;
    sget-object v4, Lcom/mediatek/ims/ImsConfigStub;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v4, :cond_15

    .line 330
    iget-object v4, p0, Lcom/mediatek/ims/ImsConfigStub;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 329
    check-cast v4, Landroid/telephony/TelephonyManager;

    sput-object v4, Lcom/mediatek/ims/ImsConfigStub;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 333
    :cond_15
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 334
    .local v2, "rawData":[B
    array-length v4, v2

    add-int/lit8 v4, v4, 0x1

    new-array v1, v4, [B

    .line 335
    .local v1, "cmdByte":[B
    const/16 v4, 0x101

    new-array v3, v4, [B

    .line 336
    .local v3, "respByte":[B
    array-length v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v5, v1, v6, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 337
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    aput-byte v5, v1, v4

    .line 339
    sget-object v4, Lcom/mediatek/ims/ImsConfigStub;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4, v1, v3}, Landroid/telephony/TelephonyManager;->invokeOemRilRequestRaw([B[B)I

    move-result v4

    if-lez v4, :cond_3b

    .line 340
    new-instance v0, Ljava/lang/String;

    .end local v0    # "atCmdResult":Ljava/lang/String;
    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 344
    .restart local v0    # "atCmdResult":Ljava/lang/String;
    :cond_3b
    const-string/jumbo v4, "+CME ERROR"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_48

    .line 345
    const-string/jumbo v0, ""
    :try_end_48
    .catchall {:try_start_1 .. :try_end_48} :catchall_4a

    :cond_48
    monitor-exit p0

    .line 347
    return-object v0

    .end local v0    # "atCmdResult":Ljava/lang/String;
    .end local v1    # "cmdByte":[B
    .end local v2    # "rawData":[B
    .end local v3    # "respByte":[B
    :catchall_4a
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private getAtCmdLine(I)Ljava/lang/String;
    .registers 6
    .param p1, "item"    # I

    .prologue
    .line 291
    const-string/jumbo v0, ""

    .line 292
    .local v0, "atCmdString":Ljava/lang/String;
    const-string/jumbo v1, "ImsConfigService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAtCmdLine:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    return-object v0
.end method

.method private getAtCmdSetLine(II)Ljava/lang/String;
    .registers 7
    .param p1, "item"    # I
    .param p2, "value"    # I

    .prologue
    .line 297
    const-string/jumbo v0, ""

    .line 298
    .local v0, "atCmdString":Ljava/lang/String;
    const-string/jumbo v1, "ImsConfigService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAtCmdLine:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    return-object v0
.end method

.method private declared-synchronized handleGetMasterValue(I)I
    .registers 8
    .param p1, "item"    # I

    .prologue
    const/4 v5, 0x0

    monitor-enter p0

    .line 303
    :try_start_2
    const-string/jumbo v2, "ImsConfigService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleGetMasterValue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsConfigStub;->getAtCmdLine(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsConfigStub;->executeCommandResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 307
    .local v1, "retValue":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_27
    .catchall {:try_start_2 .. :try_end_27} :catchall_36

    move-result v2

    if-lez v2, :cond_34

    .line 309
    :try_start_2a
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_2d} :catch_30
    .catchall {:try_start_2a .. :try_end_2d} :catchall_36

    move-result v2

    monitor-exit p0

    return v2

    .line 310
    :catch_30
    move-exception v0

    .line 311
    .local v0, "ne":Ljava/lang/NumberFormatException;
    :try_start_31
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_36

    .end local v0    # "ne":Ljava/lang/NumberFormatException;
    :cond_34
    monitor-exit p0

    .line 315
    return v5

    .end local v1    # "retValue":Ljava/lang/String;
    :catchall_36
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized handleProvisionedValue(II)I
    .registers 6
    .param p1, "item"    # I
    .param p2, "value"    # I

    .prologue
    monitor-enter p0

    .line 319
    :try_start_1
    const-string/jumbo v0, "ImsConfigService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleProvisionedValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_2a

    .line 322
    const/16 v0, 0x18

    monitor-exit p0

    return v0

    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getFeatureValue(IILcom/android/ims/ImsConfigListener;)V
    .registers 11
    .param p1, "feature"    # I
    .param p2, "network"    # I
    .param p3, "listener"    # Lcom/android/ims/ImsConfigListener;

    .prologue
    const/4 v6, 0x0

    .line 138
    packed-switch p1, :pswitch_data_62

    .line 137
    :cond_4
    :goto_4
    return-void

    .line 141
    :pswitch_5
    iget-object v4, p0, Lcom/mediatek/ims/ImsConfigStub;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 142
    const-string/jumbo v5, "volte_vt_enabled"

    .line 140
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 144
    .local v2, "volteValue":I
    if-eqz p3, :cond_4

    .line 147
    const/4 v4, 0x0

    .line 146
    :try_start_15
    invoke-interface {p3, p1, p2, v2, v4}, Lcom/android/ims/ImsConfigListener;->onGetFeatureResponse(IIII)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_18} :catch_19

    goto :goto_4

    .line 148
    :catch_19
    move-exception v0

    .line 149
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "ImsConfigService"

    const-string/jumbo v5, "RemoteException occurs when onGetFeatureResponse."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 155
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "volteValue":I
    :pswitch_24
    iget-object v4, p0, Lcom/mediatek/ims/ImsConfigStub;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 156
    const-string/jumbo v5, "wfc_ims_enabled"

    .line 154
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 158
    .local v3, "wfcValue":I
    if-eqz p3, :cond_4

    .line 161
    const/4 v4, 0x0

    .line 160
    :try_start_34
    invoke-interface {p3, p1, p2, v3, v4}, Lcom/android/ims/ImsConfigListener;->onGetFeatureResponse(IIII)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_37} :catch_38

    goto :goto_4

    .line 162
    :catch_38
    move-exception v0

    .line 163
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "ImsConfigService"

    const-string/jumbo v5, "RemoteException occurs when onGetFeatureResponse."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 170
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v3    # "wfcValue":I
    :pswitch_43
    iget-object v4, p0, Lcom/mediatek/ims/ImsConfigStub;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 171
    const-string/jumbo v5, "vt_ims_enabled"

    .line 169
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 173
    .local v1, "videoValue":I
    if-eqz p3, :cond_4

    .line 176
    const/4 v4, 0x0

    .line 175
    :try_start_53
    invoke-interface {p3, p1, p2, v1, v4}, Lcom/android/ims/ImsConfigListener;->onGetFeatureResponse(IIII)V
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_56} :catch_57

    goto :goto_4

    .line 177
    :catch_57
    move-exception v0

    .line 178
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "ImsConfigService"

    const-string/jumbo v5, "RemoteException occurs when onGetFeatureResponse."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 138
    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_5
        :pswitch_43
        :pswitch_24
        :pswitch_43
    .end packed-switch
.end method

.method public getImsCapability(I)Z
    .registers 3
    .param p1, "capability"    # I

    .prologue
    .line 373
    iget-object v0, p0, Lcom/mediatek/ims/ImsConfigStub;->mImsCapabilityArr:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public getProvisionedStringValue(I)Ljava/lang/String;
    .registers 4
    .param p1, "item"    # I

    .prologue
    .line 91
    sget-object v0, Lcom/mediatek/ims/ImsConfigStub;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_11

    .line 92
    iget-object v0, p0, Lcom/mediatek/ims/ImsConfigStub;->mContext:Landroid/content/Context;

    .line 93
    const-string/jumbo v1, "phone"

    .line 92
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/mediatek/ims/ImsConfigStub;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 96
    :cond_11
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getProvisionedValue(I)I
    .registers 3
    .param p1, "item"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsConfigStub;->handleGetMasterValue(I)I

    move-result v0

    return v0
.end method

.method public getVideoQuality(Lcom/android/ims/ImsConfigListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/android/ims/ImsConfigListener;

    .prologue
    .line 275
    return-void
.end method

.method public getVolteProvisioned()Z
    .registers 2

    .prologue
    .line 266
    const/4 v0, 0x1

    return v0
.end method

.method public setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V
    .registers 13
    .param p1, "feature"    # I
    .param p2, "network"    # I
    .param p3, "value"    # I
    .param p4, "listener"    # Lcom/android/ims/ImsConfigListener;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 200
    packed-switch p1, :pswitch_data_7a

    .line 198
    :cond_5
    :goto_5
    return-void

    .line 203
    :pswitch_6
    const-string/jumbo v5, "persist.mtk.ims.video.enable"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 204
    .local v0, "oldVideoValue":I
    if-eq p3, v0, :cond_5

    .line 205
    if-ne p3, v7, :cond_1b

    .line 206
    const-string/jumbo v5, "persist.mtk.ims.video.enable"

    const-string/jumbo v6, "1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 209
    :cond_1b
    const-string/jumbo v5, "persist.mtk.ims.video.enable"

    const-string/jumbo v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 215
    .end local v0    # "oldVideoValue":I
    :pswitch_25
    const-string/jumbo v5, "persist.mtk.wfc.enable"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 216
    .local v2, "oldWfcValue":I
    const-string/jumbo v5, "persist.mtk.volte.enable"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 217
    .local v3, "volteEnable":I
    if-eq p3, v2, :cond_5

    .line 218
    if-ne p3, v7, :cond_43

    .line 219
    const-string/jumbo v5, "persist.mtk.wfc.enable"

    const-string/jumbo v6, "1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    if-nez v3, :cond_5

    goto :goto_5

    .line 225
    :cond_43
    const-string/jumbo v5, "persist.mtk.wfc.enable"

    const-string/jumbo v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    if-nez v3, :cond_5

    goto :goto_5

    .line 234
    .end local v2    # "oldWfcValue":I
    .end local v3    # "volteEnable":I
    :pswitch_4f
    const-string/jumbo v5, "persist.mtk.volte.enable"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 235
    .local v1, "oldVoLTEValue":I
    const-string/jumbo v5, "persist.mtk.wfc.enable"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 237
    .local v4, "wfcEnable":I
    if-eq p3, v1, :cond_5

    .line 238
    if-ne p3, v7, :cond_6d

    .line 239
    const-string/jumbo v5, "persist.mtk.volte.enable"

    const-string/jumbo v6, "1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    if-nez v4, :cond_5

    goto :goto_5

    .line 245
    :cond_6d
    const-string/jumbo v5, "persist.mtk.volte.enable"

    const-string/jumbo v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    if-nez v4, :cond_5

    goto :goto_5

    .line 200
    nop

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_4f
        :pswitch_6
        :pswitch_25
        :pswitch_6
    .end packed-switch
.end method

.method public setImsCapability(ZZZ)V
    .registers 6
    .param p1, "volte"    # Z
    .param p2, "vilte"    # Z
    .param p3, "wfc"    # Z

    .prologue
    .line 360
    iget-object v0, p0, Lcom/mediatek/ims/ImsConfigStub;->mImsCapabilityArr:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 361
    iget-object v0, p0, Lcom/mediatek/ims/ImsConfigStub;->mImsCapabilityArr:[Z

    const/4 v1, 0x1

    aput-boolean p2, v0, v1

    .line 362
    iget-object v0, p0, Lcom/mediatek/ims/ImsConfigStub;->mImsCapabilityArr:[Z

    const/4 v1, 0x2

    aput-boolean p3, v0, v1

    .line 359
    return-void
.end method

.method public setProvisionedStringValue(ILjava/lang/String;)I
    .registers 4
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public setProvisionedValue(II)I
    .registers 4
    .param p1, "item"    # I
    .param p2, "value"    # I

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsConfigStub;->handleProvisionedValue(II)I

    move-result v0

    return v0
.end method

.method public setVideoQuality(ILcom/android/ims/ImsConfigListener;)V
    .registers 3
    .param p1, "quality"    # I
    .param p2, "listener"    # Lcom/android/ims/ImsConfigListener;

    .prologue
    .line 286
    return-void
.end method
