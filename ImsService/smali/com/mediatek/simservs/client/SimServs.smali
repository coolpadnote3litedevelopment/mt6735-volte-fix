.class public Lcom/mediatek/simservs/client/SimServs;
.super Ljava/lang/Object;
.source "SimServs.java"


# static fields
.field public static AUID_SIMSERVS:Ljava/lang/String; = null

.field public static final CARDTYPE_ISIM:I = 0x2

.field public static final CARDTYPE_UNSPECIFIED:I = 0x0

.field public static final CARDTYPE_USIM:I = 0x1

.field public static final LIB_CONFIG_MULTIPLE_RULE_CONDITIONS:Z = true

.field public static final OPERATOR_DEFAULT:I = 0x0

.field public static final OPERATOR_OP01:I = 0x1

.field public static final OPERATOR_OP07:I = 0x2

.field public static final SIMSERVS_FILENAME:Ljava/lang/String; = "simservs.xml"

.field public static final TAG:Ljava/lang/String; = "SimServs"

.field public static sDebug:Z

.field public static sInstance:Lcom/mediatek/simservs/client/SimServs;

.field private static sXcapDebugParam:Lcom/mediatek/xcap/client/XcapDebugParam;

.field private static sXcapRoot:Ljava/lang/String;

.field private static sXui:Ljava/lang/String;


# instance fields
.field private mCardType:I

.field private mContext:Landroid/content/Context;

.field public mDocumentSelector:Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;

.field public mDocumentUri:Ljava/net/URI;

.field private mImpi:Ljava/lang/String;

.field private mImpu:Ljava/lang/String;

.field private mImsi:Ljava/lang/String;

.field private mIntendedId:Ljava/lang/String;

.field private mMcc:Ljava/lang/String;

.field private mMnc:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mUsername:Ljava/lang/String;

.field public mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/simservs/client/SimServs;->sDebug:Z

    .line 36
    const-string/jumbo v0, "simservs.ngn.etsi.org"

    sput-object v0, Lcom/mediatek/simservs/client/SimServs;->AUID_SIMSERVS:Ljava/lang/String;

    .line 38
    sput-object v1, Lcom/mediatek/simservs/client/SimServs;->sInstance:Lcom/mediatek/simservs/client/SimServs;

    .line 40
    sput-object v1, Lcom/mediatek/simservs/client/SimServs;->sXcapRoot:Ljava/lang/String;

    .line 41
    sput-object v1, Lcom/mediatek/simservs/client/SimServs;->sXui:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/simservs/client/SimServs;->mCardType:I

    .line 42
    iput-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    .line 43
    iput-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mImsi:Ljava/lang/String;

    .line 44
    iput-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mMnc:Ljava/lang/String;

    .line 45
    iput-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mMcc:Ljava/lang/String;

    .line 46
    iput-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mImpi:Ljava/lang/String;

    .line 47
    iput-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mImpu:Ljava/lang/String;

    .line 48
    iput-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mUsername:Ljava/lang/String;

    .line 49
    iput-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mPassword:Ljava/lang/String;

    .line 60
    const-string/jumbo v1, "mediatek.simserv.debug"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "debugProperty":Ljava/lang/String;
    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 62
    const/4 v1, 0x1

    sput-boolean v1, Lcom/mediatek/simservs/client/SimServs;->sDebug:Z

    .line 63
    const-string/jumbo v1, "SimServs"

    const-string/jumbo v2, "sDebug enabled."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_36
    return-void
.end method

.method private buildRootUri()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 354
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 355
    .local v2, "xcapRoot":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "Simservs"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "xcap.protocol="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "xcap.protocol"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const-string/jumbo v3, "xcap.protocol"

    const-string/jumbo v4, "https"

    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 359
    .local v1, "protocol":Ljava/lang/String;
    iget v3, p0, Lcom/mediatek/simservs/client/SimServs;->mCardType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_69

    .line 360
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "://xcap.ims.mnc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 361
    iget-object v4, p0, Lcom/mediatek/simservs/client/SimServs;->mMnc:Ljava/lang/String;

    .line 360
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 362
    const-string/jumbo v4, ".mcc"

    .line 360
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 363
    iget-object v4, p0, Lcom/mediatek/simservs/client/SimServs;->mMcc:Ljava/lang/String;

    .line 360
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 364
    const-string/jumbo v4, ".pub.3gppnetwork.org"

    .line 360
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    :goto_59
    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/mediatek/simservs/client/SimServs;->sXcapRoot:Ljava/lang/String;

    .line 389
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/SimServs;->buildDocumentUri()V

    .line 353
    return-void

    .line 365
    :cond_69
    iget v3, p0, Lcom/mediatek/simservs/client/SimServs;->mCardType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_c9

    .line 366
    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mImpi:Ljava/lang/String;

    if-eqz v3, :cond_b3

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mImpi:Ljava/lang/String;

    const-string/jumbo v4, "3gppnetwork.org"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b3

    .line 367
    invoke-direct {p0}, Lcom/mediatek/simservs/client/SimServs;->getImpiDomain()Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "domain":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "://xcap."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    const-string/jumbo v3, ".3gppnetwork.org"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mImpi:Ljava/lang/String;

    const-string/jumbo v4, ".pub"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_ac

    .line 371
    const-string/jumbo v3, ".3gppnetwork.org"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_59

    .line 373
    :cond_ac
    const-string/jumbo v3, ".pub.3gppnetwork.org"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_59

    .line 376
    .end local v0    # "domain":Ljava/lang/String;
    :cond_b3
    invoke-direct {p0}, Lcom/mediatek/simservs/client/SimServs;->getImpiDomain()Ljava/lang/String;

    move-result-object v0

    .line 377
    .restart local v0    # "domain":Ljava/lang/String;
    if-nez v0, :cond_ba

    .line 378
    return-void

    .line 380
    :cond_ba
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "://xcap."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_59

    .line 384
    .end local v0    # "domain":Ljava/lang/String;
    :cond_c9
    return-void
.end method

.method private getImpiDomain()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 338
    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mImpi:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mImpi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 344
    :cond_d
    return-object v4

    .line 338
    :cond_e
    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mImpi:Ljava/lang/String;

    const-string/jumbo v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 340
    const-string/jumbo v0, "@"

    .line 341
    .local v0, "delimiter":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mImpi:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 342
    .local v1, "temp":[Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v1, v2

    return-object v2
.end method

.method public static getInstance()Lcom/mediatek/simservs/client/SimServs;
    .registers 1

    .prologue
    .line 73
    sget-object v0, Lcom/mediatek/simservs/client/SimServs;->sInstance:Lcom/mediatek/simservs/client/SimServs;

    if-nez v0, :cond_b

    .line 74
    new-instance v0, Lcom/mediatek/simservs/client/SimServs;

    invoke-direct {v0}, Lcom/mediatek/simservs/client/SimServs;-><init>()V

    sput-object v0, Lcom/mediatek/simservs/client/SimServs;->sInstance:Lcom/mediatek/simservs/client/SimServs;

    .line 77
    :cond_b
    invoke-static {}, Lcom/mediatek/simservs/client/SimServs;->initializeDebugParam()V

    .line 78
    sget-object v0, Lcom/mediatek/simservs/client/SimServs;->sInstance:Lcom/mediatek/simservs/client/SimServs;

    return-object v0
.end method

.method private static initializeDebugParam()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 315
    invoke-static {}, Lcom/mediatek/xcap/client/XcapDebugParam;->getInstance()Lcom/mediatek/xcap/client/XcapDebugParam;

    move-result-object v2

    sput-object v2, Lcom/mediatek/simservs/client/SimServs;->sXcapDebugParam:Lcom/mediatek/xcap/client/XcapDebugParam;

    .line 316
    sget-object v2, Lcom/mediatek/simservs/client/SimServs;->sXcapDebugParam:Lcom/mediatek/xcap/client/XcapDebugParam;

    invoke-virtual {v2}, Lcom/mediatek/xcap/client/XcapDebugParam;->load()V

    .line 317
    sput-object v3, Lcom/mediatek/simservs/client/SimServs;->sXcapRoot:Ljava/lang/String;

    .line 318
    sput-object v3, Lcom/mediatek/simservs/client/SimServs;->sXui:Ljava/lang/String;

    .line 320
    sget-object v2, Lcom/mediatek/simservs/client/SimServs;->sXcapDebugParam:Lcom/mediatek/xcap/client/XcapDebugParam;

    invoke-virtual {v2}, Lcom/mediatek/xcap/client/XcapDebugParam;->getXcapRoot()Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, "xcapRoot":Ljava/lang/String;
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 327
    :cond_1e
    :goto_1e
    sget-object v2, Lcom/mediatek/simservs/client/SimServs;->sXcapDebugParam:Lcom/mediatek/xcap/client/XcapDebugParam;

    invoke-virtual {v2}, Lcom/mediatek/xcap/client/XcapDebugParam;->getXcapXui()Ljava/lang/String;

    move-result-object v1

    .line 329
    .local v1, "xui":Ljava/lang/String;
    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 314
    :cond_2c
    :goto_2c
    return-void

    .line 324
    .end local v1    # "xui":Ljava/lang/String;
    :cond_2d
    sput-object v0, Lcom/mediatek/simservs/client/SimServs;->sXcapRoot:Ljava/lang/String;

    goto :goto_1e

    .line 330
    .restart local v1    # "xui":Ljava/lang/String;
    :cond_30
    sput-object v1, Lcom/mediatek/simservs/client/SimServs;->sXui:Ljava/lang/String;

    goto :goto_2c
.end method


# virtual methods
.method public buildDocumentUri()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 398
    sget-object v2, Lcom/mediatek/simservs/client/SimServs;->sXcapDebugParam:Lcom/mediatek/xcap/client/XcapDebugParam;

    invoke-virtual {v2}, Lcom/mediatek/xcap/client/XcapDebugParam;->getXcapDocumentName()Ljava/lang/String;

    move-result-object v1

    .line 399
    .local v1, "xcapDocumentName":Ljava/lang/String;
    sget-object v2, Lcom/mediatek/simservs/client/SimServs;->sXcapDebugParam:Lcom/mediatek/xcap/client/XcapDebugParam;

    invoke-virtual {v2}, Lcom/mediatek/xcap/client/XcapDebugParam;->getXcapAUID()Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, "xcapAUID":Ljava/lang/String;
    new-instance v2, Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;

    .line 401
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_18

    :cond_16
    sget-object v0, Lcom/mediatek/simservs/client/SimServs;->AUID_SIMSERVS:Ljava/lang/String;

    .line 402
    .end local v0    # "xcapAUID":Ljava/lang/String;
    :cond_18
    sget-object v3, Lcom/mediatek/simservs/client/SimServs;->sXui:Ljava/lang/String;

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 403
    :cond_22
    const-string/jumbo v1, "simservs.xml"

    .line 400
    .end local v1    # "xcapDocumentName":Ljava/lang/String;
    :cond_25
    invoke-direct {v2, v0, v3, v1}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mDocumentSelector:Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;

    .line 404
    const-string/jumbo v2, "SimServs"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "document selector is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/simservs/client/SimServs;->mDocumentSelector:Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;

    invoke-virtual {v4}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    new-instance v2, Lcom/mediatek/xcap/client/uri/XcapUri;

    invoke-direct {v2}, Lcom/mediatek/xcap/client/uri/XcapUri;-><init>()V

    iput-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    .line 409
    const-string/jumbo v2, "SimServs"

    const-string/jumbo v3, "buildDocumentUri():Create instance for mXcapUri"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    sget-object v3, Lcom/mediatek/simservs/client/SimServs;->sXcapRoot:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mediatek/xcap/client/uri/XcapUri;->setXcapRoot(Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mDocumentSelector:Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;

    invoke-virtual {v2, v3}, Lcom/mediatek/xcap/client/uri/XcapUri;->setDocumentSelector(Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;)Lcom/mediatek/xcap/client/uri/XcapUri;

    .line 412
    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    invoke-virtual {v2}, Lcom/mediatek/xcap/client/uri/XcapUri;->toURI()Ljava/net/URI;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mDocumentUri:Ljava/net/URI;

    .line 397
    return-void
.end method

.method public getBarringServiceCapability(Lcom/mediatek/xcap/client/uri/XcapUri;)Lcom/mediatek/simservs/capability/BarringServiceCapability;
    .registers 5
    .param p1, "documentUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 913
    new-instance v0, Lcom/mediatek/simservs/capability/BarringServiceCapability;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Lcom/mediatek/simservs/capability/BarringServiceCapability;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getBarringServiceCapability(Z)Lcom/mediatek/simservs/capability/BarringServiceCapability;
    .registers 6
    .param p1, "syncInstance"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 900
    new-instance v0, Lcom/mediatek/simservs/capability/BarringServiceCapability;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/mediatek/simservs/capability/BarringServiceCapability;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getCommunicationDiversion(Lcom/mediatek/xcap/client/uri/XcapUri;)Lcom/mediatek/simservs/client/CommunicationDiversion;
    .registers 5
    .param p1, "documentUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 749
    new-instance v0, Lcom/mediatek/simservs/client/CommunicationDiversion;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Lcom/mediatek/simservs/client/CommunicationDiversion;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getCommunicationDiversion(Z)Lcom/mediatek/simservs/client/CommunicationDiversion;
    .registers 6
    .param p1, "syncInstance"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 707
    new-instance v0, Lcom/mediatek/simservs/client/CommunicationDiversion;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    invoke-direct {v0, v1, v3, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    .local v0, "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_13

    .line 710
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/CommunicationDiversion;->setContext(Landroid/content/Context;)V

    .line 713
    :cond_13
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/CommunicationDiversion;->loadConfiguration()V

    .line 714
    return-object v0
.end method

.method public getCommunicationDiversion(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/CommunicationDiversion;
    .registers 7
    .param p1, "syncInstance"    # Z
    .param p2, "network"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 727
    new-instance v0, Lcom/mediatek/simservs/client/CommunicationDiversion;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    invoke-direct {v0, v1, v3, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    .local v0, "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    if-eqz p2, :cond_f

    .line 729
    invoke-virtual {v0, p2}, Lcom/mediatek/simservs/client/CommunicationDiversion;->setNetwork(Landroid/net/Network;)V

    .line 732
    :cond_f
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_18

    .line 733
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/CommunicationDiversion;->setContext(Landroid/content/Context;)V

    .line 735
    :cond_18
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/CommunicationDiversion;->loadConfiguration()V

    .line 736
    return-object v0
.end method

.method public getCommunicationWaiting(Lcom/mediatek/xcap/client/uri/XcapUri;)Lcom/mediatek/simservs/client/CommunicationWaiting;
    .registers 5
    .param p1, "documentUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 468
    new-instance v0, Lcom/mediatek/simservs/client/CommunicationWaiting;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Lcom/mediatek/simservs/client/CommunicationWaiting;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getCommunicationWaiting(Z)Lcom/mediatek/simservs/client/CommunicationWaiting;
    .registers 6
    .param p1, "syncInstance"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 427
    new-instance v0, Lcom/mediatek/simservs/client/CommunicationWaiting;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    invoke-direct {v0, v1, v3, v2}, Lcom/mediatek/simservs/client/CommunicationWaiting;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    .local v0, "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_13

    .line 429
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/CommunicationWaiting;->setContext(Landroid/content/Context;)V

    .line 432
    :cond_13
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/CommunicationWaiting;->loadConfiguration()V

    .line 433
    return-object v0
.end method

.method public getCommunicationWaiting(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/CommunicationWaiting;
    .registers 7
    .param p1, "syncInstance"    # Z
    .param p2, "network"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 446
    new-instance v0, Lcom/mediatek/simservs/client/CommunicationWaiting;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    invoke-direct {v0, v1, v3, v2}, Lcom/mediatek/simservs/client/CommunicationWaiting;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    .local v0, "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    if-eqz p2, :cond_f

    .line 448
    invoke-virtual {v0, p2}, Lcom/mediatek/simservs/client/CommunicationWaiting;->setNetwork(Landroid/net/Network;)V

    .line 451
    :cond_f
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_18

    .line 452
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/CommunicationWaiting;->setContext(Landroid/content/Context;)V

    .line 455
    :cond_18
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/CommunicationWaiting;->loadConfiguration()V

    .line 456
    return-object v0
.end method

.method public getDiversionServiceCapability(Lcom/mediatek/xcap/client/uri/XcapUri;)Lcom/mediatek/simservs/capability/DiversionServiceCapability;
    .registers 5
    .param p1, "documentUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 888
    new-instance v0, Lcom/mediatek/simservs/capability/DiversionServiceCapability;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Lcom/mediatek/simservs/capability/DiversionServiceCapability;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDiversionServiceCapability(Z)Lcom/mediatek/simservs/capability/DiversionServiceCapability;
    .registers 6
    .param p1, "syncInstance"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 875
    new-instance v0, Lcom/mediatek/simservs/capability/DiversionServiceCapability;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/mediatek/simservs/capability/DiversionServiceCapability;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDocumentUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 416
    iget-object v0, p0, Lcom/mediatek/simservs/client/SimServs;->mDocumentUri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIncomingCommunicationBarring(Lcom/mediatek/xcap/client/uri/XcapUri;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    .registers 5
    .param p1, "documentUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 762
    new-instance v0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getIncomingCommunicationBarring(Z)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    .registers 6
    .param p1, "syncInstance"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 774
    new-instance v0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    .line 775
    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    .line 774
    invoke-direct {v0, v1, v3, v2}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    .local v0, "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_13

    .line 778
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->setContext(Landroid/content/Context;)V

    .line 781
    :cond_13
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->loadConfiguration()V

    .line 782
    return-object v0
.end method

.method public getIncomingCommunicationBarring(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    .registers 7
    .param p1, "syncInstance"    # Z
    .param p2, "network"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 795
    new-instance v0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    .line 796
    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    .line 795
    invoke-direct {v0, v1, v3, v2}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    .local v0, "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    if-eqz p2, :cond_f

    .line 798
    invoke-virtual {v0, p2}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->setNetwork(Landroid/net/Network;)V

    .line 801
    :cond_f
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_18

    .line 802
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->setContext(Landroid/content/Context;)V

    .line 805
    :cond_18
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->loadConfiguration()V

    .line 806
    return-object v0
.end method

.method public getIntendedId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginatingIdentityPresentation(Lcom/mediatek/xcap/client/uri/XcapUri;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    .registers 5
    .param p1, "documentUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 569
    new-instance v0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getOriginatingIdentityPresentation(Z)Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    .registers 6
    .param p1, "syncInstance"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 480
    new-instance v0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    .line 481
    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    .line 480
    invoke-direct {v0, v1, v3, v2}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    .local v0, "oip":Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_13

    .line 483
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;->setContext(Landroid/content/Context;)V

    .line 486
    :cond_13
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;->loadConfiguration()V

    .line 487
    return-object v0
.end method

.method public getOriginatingIdentityPresentation(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    .registers 7
    .param p1, "syncInstance"    # Z
    .param p2, "network"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 500
    new-instance v0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    .line 501
    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    .line 500
    invoke-direct {v0, v1, v3, v2}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    .local v0, "oip":Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    if-eqz p2, :cond_f

    .line 503
    invoke-virtual {v0, p2}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;->setNetwork(Landroid/net/Network;)V

    .line 506
    :cond_f
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_18

    .line 507
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;->setContext(Landroid/content/Context;)V

    .line 510
    :cond_18
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;->loadConfiguration()V

    .line 511
    return-object v0
.end method

.method public getOriginatingIdentityPresentationRestriction(Lcom/mediatek/xcap/client/uri/XcapUri;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    .registers 5
    .param p1, "documentUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 682
    new-instance v0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getOriginatingIdentityPresentationRestriction(Z)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    .registers 6
    .param p1, "syncInstance"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 595
    new-instance v0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    invoke-direct {v0, v1, v3, v2}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    .local v0, "oip":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_13

    .line 597
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->setContext(Landroid/content/Context;)V

    .line 600
    :cond_13
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->loadConfiguration()V

    .line 601
    return-object v0
.end method

.method public getOriginatingIdentityPresentationRestriction(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    .registers 7
    .param p1, "syncInstance"    # Z
    .param p2, "network"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 615
    new-instance v0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    invoke-direct {v0, v1, v3, v2}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    .local v0, "oipr":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    if-eqz p2, :cond_f

    .line 617
    invoke-virtual {v0, p2}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->setNetwork(Landroid/net/Network;)V

    .line 620
    :cond_f
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_18

    .line 621
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->setContext(Landroid/content/Context;)V

    .line 624
    :cond_18
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->loadConfiguration()V

    .line 625
    return-object v0
.end method

.method public getOutgoingCommunicationBarring(Lcom/mediatek/xcap/client/uri/XcapUri;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .registers 5
    .param p1, "documentUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 819
    new-instance v0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getOutgoingCommunicationBarring(Z)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .registers 6
    .param p1, "syncInstance"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 831
    new-instance v0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    .line 832
    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    .line 831
    invoke-direct {v0, v1, v3, v2}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    .local v0, "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_13

    .line 835
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->setContext(Landroid/content/Context;)V

    .line 838
    :cond_13
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->loadConfiguration()V

    .line 839
    return-object v0
.end method

.method public getOutgoingCommunicationBarring(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .registers 7
    .param p1, "syncInstance"    # Z
    .param p2, "network"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 852
    new-instance v0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    .line 853
    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    .line 852
    invoke-direct {v0, v1, v3, v2}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    .local v0, "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    if-eqz p2, :cond_f

    .line 855
    invoke-virtual {v0, p2}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->setNetwork(Landroid/net/Network;)V

    .line 858
    :cond_f
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_18

    .line 859
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->setContext(Landroid/content/Context;)V

    .line 862
    :cond_18
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->loadConfiguration()V

    .line 863
    return-object v0
.end method

.method public getTerminatingIdentityPresentation(Lcom/mediatek/xcap/client/uri/XcapUri;)Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    .registers 5
    .param p1, "documentUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 582
    new-instance v0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getTerminatingIdentityPresentation(Z)Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    .registers 6
    .param p1, "syncInstance"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 523
    new-instance v0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    .line 524
    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    .line 523
    invoke-direct {v0, v1, v3, v2}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    .local v0, "tip":Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_13

    .line 527
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;->setContext(Landroid/content/Context;)V

    .line 530
    :cond_13
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;->loadConfiguration()V

    .line 531
    return-object v0
.end method

.method public getTerminatingIdentityPresentation(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    .registers 7
    .param p1, "syncInstance"    # Z
    .param p2, "network"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 544
    new-instance v0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    .line 545
    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    .line 544
    invoke-direct {v0, v1, v3, v2}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    .local v0, "tip":Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    if-eqz p2, :cond_f

    .line 547
    invoke-virtual {v0, p2}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;->setNetwork(Landroid/net/Network;)V

    .line 550
    :cond_f
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_18

    .line 551
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;->setContext(Landroid/content/Context;)V

    .line 554
    :cond_18
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;->loadConfiguration()V

    .line 555
    return-object v0
.end method

.method public getTerminatingIdentityPresentationRestriction(Lcom/mediatek/xcap/client/uri/XcapUri;)Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    .registers 5
    .param p1, "documentUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 695
    new-instance v0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getTerminatingIdentityPresentationRestriction(Z)Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    .registers 6
    .param p1, "syncInstance"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 638
    new-instance v0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    invoke-direct {v0, v1, v3, v2}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    .local v0, "tipr":Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_13

    .line 641
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->setContext(Landroid/content/Context;)V

    .line 644
    :cond_13
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->loadConfiguration()V

    .line 645
    return-object v0
.end method

.method public getTerminatingIdentityPresentationRestriction(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    .registers 7
    .param p1, "syncInstance"    # Z
    .param p2, "network"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 659
    new-instance v0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    invoke-direct {v0, v1, v3, v2}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    .local v0, "tipr":Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    if-eqz p2, :cond_f

    .line 661
    invoke-virtual {v0, p2}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->setNetwork(Landroid/net/Network;)V

    .line 664
    :cond_f
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_18

    .line 665
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->setContext(Landroid/content/Context;)V

    .line 668
    :cond_18
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->loadConfiguration()V

    .line 669
    return-object v0
.end method

.method public getXcapDebugParam()Lcom/mediatek/xcap/client/XcapDebugParam;
    .registers 2

    .prologue
    .line 87
    sget-object v0, Lcom/mediatek/simservs/client/SimServs;->sXcapDebugParam:Lcom/mediatek/xcap/client/XcapDebugParam;

    return-object v0
.end method

.method public getXcapRoot()Ljava/lang/String;
    .registers 2

    .prologue
    .line 262
    sget-object v0, Lcom/mediatek/simservs/client/SimServs;->sXcapRoot:Ljava/lang/String;

    return-object v0
.end method

.method public getXui()Ljava/lang/String;
    .registers 2

    .prologue
    .line 266
    sget-object v0, Lcom/mediatek/simservs/client/SimServs;->sXui:Ljava/lang/String;

    return-object v0
.end method

.method public setAUID(Ljava/lang/String;)V
    .registers 5
    .param p1, "auid"    # Ljava/lang/String;

    .prologue
    .line 257
    sput-object p1, Lcom/mediatek/simservs/client/SimServs;->AUID_SIMSERVS:Ljava/lang/String;

    .line 258
    const-string/jumbo v0, "SimServs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAUID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 2
    .param p1, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    .line 278
    return-void
.end method

.method public setElementUpdateContentType(ZLjava/lang/String;)V
    .registers 5
    .param p1, "specdefined"    # Z
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 201
    if-eqz p1, :cond_c

    .line 202
    const-string/jumbo v0, "xcap.putelcontenttype"

    const-string/jumbo v1, "application/xcap-el+xml"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 200
    :goto_b
    return-void

    .line 204
    :cond_c
    const-string/jumbo v0, "xcap.putelcontenttype"

    invoke-static {v0, p2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_b
.end method

.method public setFillCompleteForwardTo(Z)V
    .registers 4
    .param p1, "value"    # Z

    .prologue
    .line 230
    if-eqz p1, :cond_c

    .line 231
    const-string/jumbo v0, "xcap.completeforwardto"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 229
    :goto_b
    return-void

    .line 233
    :cond_c
    const-string/jumbo v0, "xcap.completeforwardto"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_b
.end method

.method public setHandleError409(Z)V
    .registers 4
    .param p1, "value"    # Z

    .prologue
    .line 214
    if-eqz p1, :cond_c

    .line 215
    const-string/jumbo v0, "xcap.handl409"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 213
    :goto_b
    return-void

    .line 217
    :cond_c
    const-string/jumbo v0, "xcap.handl409"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_b
.end method

.method public setHttpCredential(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 173
    return-void
.end method

.method public setIntendedId(Ljava/lang/String;)V
    .registers 2
    .param p1, "intendedId"    # Ljava/lang/String;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setOperator(I)V
    .registers 4
    .param p1, "operator"    # I

    .prologue
    .line 288
    packed-switch p1, :pswitch_data_72

    .line 303
    const-string/jumbo v0, "xcap.op"

    const-string/jumbo v1, "00"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 304
    const-string/jumbo v0, "xcap.protocol"

    const-string/jumbo v1, "https"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 305
    const-string/jumbo v0, "xcap.putelcontenttype"

    const-string/jumbo v1, "application/xcap-el+xml"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 306
    const-string/jumbo v0, "xcap.handl409"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 287
    :goto_27
    return-void

    .line 290
    :pswitch_28
    const-string/jumbo v0, "xcap.op"

    const-string/jumbo v1, "01"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 291
    const-string/jumbo v0, "xcap.protocol"

    const-string/jumbo v1, "http"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 292
    const-string/jumbo v0, "xcap.putelcontenttype"

    const-string/jumbo v1, "application/vnd.etsi.simservs+xml"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 293
    const-string/jumbo v0, "xcap.handl409"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_27

    .line 296
    :pswitch_4d
    const-string/jumbo v0, "xcap.op"

    const-string/jumbo v1, "07"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 297
    const-string/jumbo v0, "xcap.protocol"

    const-string/jumbo v1, "https"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 298
    const-string/jumbo v0, "xcap.putelcontenttype"

    const-string/jumbo v1, "application/xcap-el+xml"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 299
    const-string/jumbo v0, "xcap.handl409"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_27

    .line 288
    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_28
        :pswitch_4d
    .end packed-switch
.end method

.method public setUseHttpProtocolScheme(Z)V
    .registers 4
    .param p1, "value"    # Z

    .prologue
    .line 183
    if-eqz p1, :cond_c

    .line 184
    const-string/jumbo v0, "xcap.protocol"

    const-string/jumbo v1, "http"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 182
    :goto_b
    return-void

    .line 186
    :cond_c
    const-string/jumbo v0, "xcap.protocol"

    const-string/jumbo v1, "https"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_b
.end method

.method public setXcapNSPrefixSS(Z)V
    .registers 4
    .param p1, "value"    # Z

    .prologue
    .line 244
    if-eqz p1, :cond_c

    .line 245
    const-string/jumbo v0, "xcap.ns.ss"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 243
    :goto_b
    return-void

    .line 247
    :cond_c
    const-string/jumbo v0, "xcap.ns.ss"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_b
.end method

.method public setXcapRoot(Ljava/lang/String;)V
    .registers 4
    .param p1, "xcapRoot"    # Ljava/lang/String;

    .prologue
    .line 96
    sput-object p1, Lcom/mediatek/simservs/client/SimServs;->sXcapRoot:Ljava/lang/String;

    .line 98
    :try_start_2
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/SimServs;->buildDocumentUri()V
    :try_end_5
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_5} :catch_6

    .line 95
    :goto_5
    return-void

    .line 99
    :catch_6
    move-exception v0

    .line 100
    .local v0, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 101
    const/4 v1, 0x0

    sput-object v1, Lcom/mediatek/simservs/client/SimServs;->sXcapRoot:Ljava/lang/String;

    goto :goto_5
.end method

.method public setXcapRootByImpi(Ljava/lang/String;)V
    .registers 4
    .param p1, "impi"    # Ljava/lang/String;

    .prologue
    .line 111
    const/4 v1, 0x2

    iput v1, p0, Lcom/mediatek/simservs/client/SimServs;->mCardType:I

    .line 112
    iput-object p1, p0, Lcom/mediatek/simservs/client/SimServs;->mImpi:Ljava/lang/String;

    .line 114
    :try_start_5
    invoke-direct {p0}, Lcom/mediatek/simservs/client/SimServs;->buildRootUri()V
    :try_end_8
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_8} :catch_9

    .line 110
    :goto_8
    return-void

    .line 115
    :catch_9
    move-exception v0

    .line 116
    .local v0, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_8
.end method

.method public setXcapRootByMccMnc(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "mcc"    # Ljava/lang/String;
    .param p2, "mnc"    # Ljava/lang/String;

    .prologue
    .line 127
    const/4 v1, 0x1

    iput v1, p0, Lcom/mediatek/simservs/client/SimServs;->mCardType:I

    .line 128
    iput-object p1, p0, Lcom/mediatek/simservs/client/SimServs;->mMcc:Ljava/lang/String;

    .line 129
    iput-object p2, p0, Lcom/mediatek/simservs/client/SimServs;->mMnc:Ljava/lang/String;

    .line 131
    :try_start_7
    invoke-direct {p0}, Lcom/mediatek/simservs/client/SimServs;->buildRootUri()V
    :try_end_a
    .catch Ljava/net/URISyntaxException; {:try_start_7 .. :try_end_a} :catch_b

    .line 126
    :goto_a
    return-void

    .line 132
    :catch_b
    move-exception v0

    .line 133
    .local v0, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_a
.end method

.method public setXui(Ljava/lang/String;)V
    .registers 2
    .param p1, "xui"    # Ljava/lang/String;

    .prologue
    .line 138
    sput-object p1, Lcom/mediatek/simservs/client/SimServs;->sXui:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setXuiByImpu(Ljava/lang/String;)V
    .registers 3
    .param p1, "impu"    # Ljava/lang/String;

    .prologue
    .line 147
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/simservs/client/SimServs;->mCardType:I

    .line 148
    iput-object p1, p0, Lcom/mediatek/simservs/client/SimServs;->mImpu:Ljava/lang/String;

    .line 149
    sput-object p1, Lcom/mediatek/simservs/client/SimServs;->sXui:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setXuiByImsiMccMnc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "imsi"    # Ljava/lang/String;
    .param p2, "mcc"    # Ljava/lang/String;
    .param p3, "mnc"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 160
    iput v3, p0, Lcom/mediatek/simservs/client/SimServs;->mCardType:I

    .line 161
    iput-object p1, p0, Lcom/mediatek/simservs/client/SimServs;->mImsi:Ljava/lang/String;

    .line 162
    iput-object p2, p0, Lcom/mediatek/simservs/client/SimServs;->mMcc:Ljava/lang/String;

    .line 163
    iput-object p3, p0, Lcom/mediatek/simservs/client/SimServs;->mMnc:Ljava/lang/String;

    .line 165
    const-string/jumbo v0, "sip:%s@ims.mnc%03d.mcc%03d.3gppnetwork.org"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 166
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 165
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/simservs/client/SimServs;->sXui:Ljava/lang/String;

    .line 159
    return-void
.end method
