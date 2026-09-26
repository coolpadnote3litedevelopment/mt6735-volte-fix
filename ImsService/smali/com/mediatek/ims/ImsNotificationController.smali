.class public Lcom/mediatek/ims/ImsNotificationController;
.super Ljava/lang/Object;
.source "ImsNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/ImsNotificationController$1;
    }
.end annotation


# static fields
.field private static final ACTION_LAUNCH_WFC_SETTINGS:Ljava/lang/String; = "android.settings.WIFI_CALLING_SETTINGS"

.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "ImsNotificationController"

.field private static final WFC_CALL_ICON:I = 0x8020006

.field private static final WFC_CALL_TITLE:I = 0x8050108

.field private static final WFC_NOTIFICATION:I = 0x10

.field private static final WFC_REGISTERED_ICON:I = 0x8020005

.field private static final WFC_REGISTERED_SUMMARY:I = 0x8050109

.field private static final WFC_REGISTERED_TITLE:I = 0x8050105


# instance fields
.field mBr:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mImsState:I

.field mImsnExt:Lcom/mediatek/common/wfc/IImsNotificationControllerExt;

.field private mIsScreenLock:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPhoneType:I

.field private mSubId:J

.field private mWfcCallOngoing:Z

.field private mWfcCapabilityPresent:Z


# direct methods
.method static synthetic -get0(Lcom/mediatek/ims/ImsNotificationController;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/mediatek/ims/ImsNotificationController;->mIsScreenLock:Z

    return v0
.end method

.method static synthetic -get1(Lcom/mediatek/ims/ImsNotificationController;)Landroid/app/KeyguardManager;
    .registers 2

    iget-object v0, p0, Lcom/mediatek/ims/ImsNotificationController;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/mediatek/ims/ImsNotificationController;)I
    .registers 2

    iget v0, p0, Lcom/mediatek/ims/ImsNotificationController;->mPhoneType:I

    return v0
.end method

.method static synthetic -set0(Lcom/mediatek/ims/ImsNotificationController;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/mediatek/ims/ImsNotificationController;->mIsScreenLock:Z

    return p1
.end method

.method static synthetic -set1(Lcom/mediatek/ims/ImsNotificationController;I)I
    .registers 2

    iput p1, p0, Lcom/mediatek/ims/ImsNotificationController;->mPhoneType:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/mediatek/ims/ImsNotificationController;Ljava/lang/String;I)V
    .registers 3
    .param p1, "state"    # Ljava/lang/String;
    .param p2, "phoneType"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsNotificationController;->handleCallIntent(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/mediatek/ims/ImsNotificationController;Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsNotificationController;->handleImsStateChange(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/mediatek/ims/ImsNotificationController;)V
    .registers 1

    invoke-direct {p0}, Lcom/mediatek/ims/ImsNotificationController;->handleScreenOff()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/mediatek/ims/ImsNotificationController;)V
    .registers 1

    invoke-direct {p0}, Lcom/mediatek/ims/ImsNotificationController;->handleScreenOn()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/mediatek/ims/ImsNotificationController;)V
    .registers 1

    invoke-direct {p0}, Lcom/mediatek/ims/ImsNotificationController;->handleScreenUnlock()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/mediatek/ims/ImsNotificationController;)V
    .registers 1

    invoke-direct {p0}, Lcom/mediatek/ims/ImsNotificationController;->removeWfcNotification()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # J

    .prologue
    const/4 v1, 0x0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/mediatek/ims/ImsNotificationController$1;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/ImsNotificationController$1;-><init>(Lcom/mediatek/ims/ImsNotificationController;)V

    iput-object v0, p0, Lcom/mediatek/ims/ImsNotificationController;->mBr:Landroid/content/BroadcastReceiver;

    .line 156
    const/16 v0, 0x64

    iput v0, p0, Lcom/mediatek/ims/ImsNotificationController;->mImsState:I

    .line 158
    iput-boolean v1, p0, Lcom/mediatek/ims/ImsNotificationController;->mWfcCapabilityPresent:Z

    .line 159
    iput-boolean v1, p0, Lcom/mediatek/ims/ImsNotificationController;->mWfcCallOngoing:Z

    .line 160
    iput-boolean v1, p0, Lcom/mediatek/ims/ImsNotificationController;->mIsScreenLock:Z

    .line 165
    iput v1, p0, Lcom/mediatek/ims/ImsNotificationController;->mPhoneType:I

    .line 179
    const-string/jumbo v0, "ImsNotificationController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "in constructor: subId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iput-object p1, p0, Lcom/mediatek/ims/ImsNotificationController;->mContext:Landroid/content/Context;

    .line 182
    iput-wide p2, p0, Lcom/mediatek/ims/ImsNotificationController;->mSubId:J

    .line 184
    iget-object v0, p0, Lcom/mediatek/ims/ImsNotificationController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 183
    iput-object v0, p0, Lcom/mediatek/ims/ImsNotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 185
    const-string/jumbo v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/mediatek/ims/ImsNotificationController;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 186
    iget-object v0, p0, Lcom/mediatek/ims/ImsNotificationController;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/ims/ImsNotificationController;->mIsScreenLock:Z

    .line 188
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsNotificationController;->getIMSNPlugin(Landroid/content/Context;)Lcom/mediatek/common/wfc/IImsNotificationControllerExt;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/ImsNotificationController;->mImsnExt:Lcom/mediatek/common/wfc/IImsNotificationControllerExt;

    .line 190
    invoke-direct {p0}, Lcom/mediatek/ims/ImsNotificationController;->registerReceiver()V

    .line 177
    return-void
.end method

.method private displayWfcCallNotification()V
    .registers 5

    .prologue
    .line 326
    const-string/jumbo v1, "ImsNotificationController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "in call handling, screen lock:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/ims/ImsNotificationController;->mIsScreenLock:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-boolean v1, p0, Lcom/mediatek/ims/ImsNotificationController;->mIsScreenLock:Z

    if-nez v1, :cond_67

    iget v1, p0, Lcom/mediatek/ims/ImsNotificationController;->mImsState:I

    const/16 v2, 0x63

    if-ne v1, v2, :cond_67

    .line 328
    iget-boolean v1, p0, Lcom/mediatek/ims/ImsNotificationController;->mWfcCapabilityPresent:Z

    .line 327
    if-eqz v1, :cond_67

    .line 331
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/mediatek/ims/ImsNotificationController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 332
    iget-object v2, p0, Lcom/mediatek/ims/ImsNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x8050108

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 331
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 333
    const v2, 0x8020006

    .line 331
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 334
    const/4 v2, 0x1

    .line 331
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 335
    const/4 v2, -0x1

    .line 331
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 337
    .local v0, "noti":Landroid/app/Notification;
    iget-object v1, p0, Lcom/mediatek/ims/ImsNotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v2, 0x10

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 338
    const-string/jumbo v1, "ImsNotificationController"

    const-string/jumbo v2, "showing wfc call notification"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    .end local v0    # "noti":Landroid/app/Notification;
    :cond_67
    return-void
.end method

.method private displayWfcRegistrationNotification(Z)V
    .registers 9
    .param p1, "showTicker"    # Z

    .prologue
    const v6, 0x8050105

    const/4 v5, 0x0

    .line 343
    const-string/jumbo v2, "ImsNotificationController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "in registration handling, screen lock:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/ims/ImsNotificationController;->mIsScreenLock:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-boolean v2, p0, Lcom/mediatek/ims/ImsNotificationController;->mIsScreenLock:Z

    if-nez v2, :cond_b1

    iget v2, p0, Lcom/mediatek/ims/ImsNotificationController;->mImsState:I

    const/16 v3, 0x63

    if-ne v2, v3, :cond_b1

    iget-boolean v2, p0, Lcom/mediatek/ims/ImsNotificationController;->mWfcCapabilityPresent:Z

    if-eqz v2, :cond_b1

    .line 345
    iget-boolean v2, p0, Lcom/mediatek/ims/ImsNotificationController;->mWfcCallOngoing:Z

    if-nez v2, :cond_b1

    .line 346
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/mediatek/ims/ImsNotificationController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 347
    iget-object v3, p0, Lcom/mediatek/ims/ImsNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 346
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 348
    iget-object v3, p0, Lcom/mediatek/ims/ImsNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x8050109

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 346
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 349
    const v3, 0x8020005

    .line 346
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 350
    const/4 v3, 0x1

    .line 346
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 351
    const/4 v3, -0x1

    .line 346
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 353
    .local v1, "noti":Landroid/app/Notification;
    if-eqz p1, :cond_7b

    .line 354
    iget-object v2, p0, Lcom/mediatek/ims/ImsNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 356
    :cond_7b
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.WIFI_CALLING_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 357
    .local v0, "intent":Landroid/content/Intent;
    const v2, 0x10008000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 358
    iget-object v2, p0, Lcom/mediatek/ims/ImsNotificationController;->mImsnExt:Lcom/mediatek/common/wfc/IImsNotificationControllerExt;

    if-eqz v2, :cond_93

    .line 359
    iget-object v2, p0, Lcom/mediatek/ims/ImsNotificationController;->mImsnExt:Lcom/mediatek/common/wfc/IImsNotificationControllerExt;

    invoke-interface {v2, v5, v0}, Lcom/mediatek/common/wfc/IImsNotificationControllerExt;->getIntent(ILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 361
    :cond_93
    iget-object v2, p0, Lcom/mediatek/ims/ImsNotificationController;->mContext:Landroid/content/Context;

    invoke-static {v2, v5, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 362
    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 363
    iget-object v2, p0, Lcom/mediatek/ims/ImsNotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v3, 0x10

    invoke-virtual {v2, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 364
    const-string/jumbo v2, "ImsNotificationController"

    const-string/jumbo v3, "showing wfc registration notification"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "noti":Landroid/app/Notification;
    :cond_b1
    return-void
.end method

.method private getIMSNPlugin(Landroid/content/Context;)Lcom/mediatek/common/wfc/IImsNotificationControllerExt;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 384
    const-class v1, Lcom/mediatek/common/wfc/IImsNotificationControllerExt;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 383
    invoke-static {v1, p1}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/wfc/IImsNotificationControllerExt;

    .line 385
    .local v0, "ext":Lcom/mediatek/common/wfc/IImsNotificationControllerExt;
    const-string/jumbo v1, "ImsNotificationController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IMSN plugin:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    return-object v0
.end method

.method private handleCallIntent(Ljava/lang/String;I)V
    .registers 8
    .param p1, "state"    # Ljava/lang/String;
    .param p2, "phoneType"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 225
    const-string/jumbo v0, "ImsNotificationController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "in handleCallIntent, phone state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const-string/jumbo v0, "ImsNotificationController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "in handleCallIntent, phone type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v0, 0x5

    if-ne p2, v0, :cond_55

    .line 228
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    .line 229
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 228
    if-eqz v0, :cond_4f

    .line 230
    :cond_49
    iput-boolean v4, p0, Lcom/mediatek/ims/ImsNotificationController;->mWfcCallOngoing:Z

    .line 231
    invoke-direct {p0}, Lcom/mediatek/ims/ImsNotificationController;->displayWfcCallNotification()V

    .line 222
    :cond_4e
    :goto_4e
    return-void

    .line 233
    :cond_4f
    iput-boolean v3, p0, Lcom/mediatek/ims/ImsNotificationController;->mWfcCallOngoing:Z

    .line 234
    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsNotificationController;->displayWfcRegistrationNotification(Z)V

    goto :goto_4e

    .line 236
    :cond_55
    if-ne p2, v4, :cond_4e

    iget-boolean v0, p0, Lcom/mediatek/ims/ImsNotificationController;->mWfcCallOngoing:Z

    if-eqz v0, :cond_4e

    .line 237
    iput-boolean v3, p0, Lcom/mediatek/ims/ImsNotificationController;->mWfcCallOngoing:Z

    .line 238
    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsNotificationController;->displayWfcRegistrationNotification(Z)V

    goto :goto_4e
.end method

.method private handleImsStateChange(Landroid/content/Intent;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 243
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.android.ims.IMS_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 244
    const-string/jumbo v0, "android:regState"

    .line 245
    const/4 v1, 0x1

    .line 244
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/ims/ImsNotificationController;->mImsState:I

    .line 246
    const-string/jumbo v0, "ImsNotificationController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "in handleImsStateChange, serviceState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/ims/ImsNotificationController;->mImsState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget v0, p0, Lcom/mediatek/ims/ImsNotificationController;->mImsState:I

    if-eqz v0, :cond_57

    .line 248
    invoke-direct {p0}, Lcom/mediatek/ims/ImsNotificationController;->removeWfcNotification()V

    .line 253
    :cond_3a
    :goto_3a
    const-string/jumbo v0, "ImsNotificationController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "exit handleImsStateChange, imsState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/ims/ImsNotificationController;->mImsState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    return-void

    .line 250
    :cond_57
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsNotificationController;->handleInStateService(Landroid/content/Intent;)V

    goto :goto_3a
.end method

.method private handleInStateService(Landroid/content/Intent;)V
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 257
    const-string/jumbo v2, "ImsNotificationController"

    const-string/jumbo v3, "in handleInStateService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const-string/jumbo v2, "android:enablecap"

    .line 259
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getBooleanArrayExtra(Ljava/lang/String;)[Z

    move-result-object v0

    .line 261
    .local v0, "enabledFeatures":[Z
    const-string/jumbo v2, "ImsNotificationController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wifi capability:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-boolean v4, v0, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    aget-boolean v2, v0, v6

    if-eqz v2, :cond_5e

    .line 264
    iput-boolean v5, p0, Lcom/mediatek/ims/ImsNotificationController;->mWfcCapabilityPresent:Z

    .line 269
    const/16 v2, 0x63

    iput v2, p0, Lcom/mediatek/ims/ImsNotificationController;->mImsState:I

    .line 274
    iget-object v2, p0, Lcom/mediatek/ims/ImsNotificationController;->mContext:Landroid/content/Context;

    .line 275
    const-string/jumbo v3, "phone"

    .line 274
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 278
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-eq v2, v6, :cond_4f

    .line 279
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-ne v2, v5, :cond_5a

    .line 280
    :cond_4f
    iget v2, p0, Lcom/mediatek/ims/ImsNotificationController;->mPhoneType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5a

    .line 281
    iput-boolean v5, p0, Lcom/mediatek/ims/ImsNotificationController;->mWfcCallOngoing:Z

    .line 282
    invoke-direct {p0}, Lcom/mediatek/ims/ImsNotificationController;->displayWfcCallNotification()V

    .line 256
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    :goto_59
    return-void

    .line 284
    .restart local v1    # "tm":Landroid/telephony/TelephonyManager;
    :cond_5a
    invoke-direct {p0, v5}, Lcom/mediatek/ims/ImsNotificationController;->displayWfcRegistrationNotification(Z)V

    goto :goto_59

    .line 287
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    :cond_5e
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/ims/ImsNotificationController;->mWfcCapabilityPresent:Z

    .line 289
    const/16 v2, 0x64

    iput v2, p0, Lcom/mediatek/ims/ImsNotificationController;->mImsState:I

    .line 290
    invoke-direct {p0}, Lcom/mediatek/ims/ImsNotificationController;->removeWfcNotification()V

    goto :goto_59
.end method

.method private handleScreenOff()V
    .registers 3

    .prologue
    .line 301
    iget-object v0, p0, Lcom/mediatek/ims/ImsNotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 300
    return-void
.end method

.method private handleScreenOn()V
    .registers 3

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsNotificationController;->mIsScreenLock:Z

    if-nez v0, :cond_10

    .line 307
    const-string/jumbo v0, "ImsNotificationController"

    const-string/jumbo v1, "screen not locked & screen on, show notification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-direct {p0}, Lcom/mediatek/ims/ImsNotificationController;->showNotification()V

    .line 305
    :cond_10
    return-void
.end method

.method private handleScreenUnlock()V
    .registers 1

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/mediatek/ims/ImsNotificationController;->showNotification()V

    .line 313
    return-void
.end method

.method private registerReceiver()V
    .registers 4

    .prologue
    .line 203
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.android.ims.IMS_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 204
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.SUBSCRIPTION_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    const-string/jumbo v1, "com.android.ims.IMS_SERVICE_DOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 207
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 208
    const-string/jumbo v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lcom/mediatek/ims/ImsNotificationController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/ims/ImsNotificationController;->mBr:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 210
    iget-object v1, p0, Lcom/mediatek/ims/ImsNotificationController;->mImsnExt:Lcom/mediatek/common/wfc/IImsNotificationControllerExt;

    if-eqz v1, :cond_38

    .line 211
    iget-object v1, p0, Lcom/mediatek/ims/ImsNotificationController;->mImsnExt:Lcom/mediatek/common/wfc/IImsNotificationControllerExt;

    iget-object v2, p0, Lcom/mediatek/ims/ImsNotificationController;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/mediatek/common/wfc/IImsNotificationControllerExt;->register(Landroid/content/Context;)V

    .line 202
    :cond_38
    return-void
.end method

.method private removeWfcNotification()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 370
    const-string/jumbo v0, "ImsNotificationController"

    const-string/jumbo v1, "removing wfc notification, if any"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v0, p0, Lcom/mediatek/ims/ImsNotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 372
    const/16 v0, 0x64

    iput v0, p0, Lcom/mediatek/ims/ImsNotificationController;->mImsState:I

    .line 373
    iput-boolean v2, p0, Lcom/mediatek/ims/ImsNotificationController;->mWfcCapabilityPresent:Z

    .line 374
    iput-boolean v2, p0, Lcom/mediatek/ims/ImsNotificationController;->mWfcCallOngoing:Z

    .line 369
    return-void
.end method

.method private showNotification()V
    .registers 2

    .prologue
    .line 318
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsNotificationController;->mWfcCallOngoing:Z

    if-eqz v0, :cond_8

    .line 319
    invoke-direct {p0}, Lcom/mediatek/ims/ImsNotificationController;->displayWfcCallNotification()V

    .line 317
    :cond_7
    :goto_7
    return-void

    .line 320
    :cond_8
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsNotificationController;->mWfcCapabilityPresent:Z

    if-eqz v0, :cond_7

    .line 321
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsNotificationController;->displayWfcRegistrationNotification(Z)V

    goto :goto_7
.end method

.method private unRegisterReceiver()V
    .registers 3

    .prologue
    .line 216
    iget-object v0, p0, Lcom/mediatek/ims/ImsNotificationController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/ims/ImsNotificationController;->mBr:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 217
    iget-object v0, p0, Lcom/mediatek/ims/ImsNotificationController;->mImsnExt:Lcom/mediatek/common/wfc/IImsNotificationControllerExt;

    if-eqz v0, :cond_12

    .line 218
    iget-object v0, p0, Lcom/mediatek/ims/ImsNotificationController;->mImsnExt:Lcom/mediatek/common/wfc/IImsNotificationControllerExt;

    iget-object v1, p0, Lcom/mediatek/ims/ImsNotificationController;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/mediatek/common/wfc/IImsNotificationControllerExt;->unRegister(Landroid/content/Context;)V

    .line 215
    :cond_12
    return-void
.end method


# virtual methods
.method public getRegistrationStatus()I
    .registers 2

    .prologue
    .line 378
    iget v0, p0, Lcom/mediatek/ims/ImsNotificationController;->mImsState:I

    return v0
.end method

.method public stop()V
    .registers 3

    .prologue
    .line 196
    const-string/jumbo v0, "ImsNotificationController"

    const-string/jumbo v1, "in destroy Instance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-direct {p0}, Lcom/mediatek/ims/ImsNotificationController;->unRegisterReceiver()V

    .line 199
    iget-object v0, p0, Lcom/mediatek/ims/ImsNotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 195
    return-void
.end method
