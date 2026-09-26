.class public Lcom/mediatek/xcap/client/XcapDebugParam;
.super Ljava/lang/Object;
.source "XcapDebugParam.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "XcapDebugParam"

.field private static final TAG_ROOT:Ljava/lang/String; = "DebugParam"

.field private static final TAG_XCAP_AUID:Ljava/lang/String; = "XcapAUID"

.field private static final TAG_XCAP_DOCUMENT_NAME:Ljava/lang/String; = "XcapDocumentName"

.field private static final TAG_XCAP_ENABLE_HTTP_LOG:Ljava/lang/String; = "EnableHttpLog"

.field private static final TAG_XCAP_ENABLE_PREDEFINED_SIMSERV_QUERY_RESULT:Ljava/lang/String; = "EnablePredefinedSimservQueryResult"

.field private static final TAG_XCAP_ENABLE_PREDEFINED_SIMSERV_SETTING:Ljava/lang/String; = "EnablePredefinedSimservSetting"

.field private static final TAG_XCAP_ENABLE_SIMSERV_QUERY_WHOLE:Ljava/lang/String; = "EnableSimservQueryWhole"

.field private static final TAG_XCAP_ENABLE_TRUST_ALL:Ljava/lang/String; = "EnableXcapTrustAll"

.field private static final TAG_XCAP_HTTP_DIGEST_PASSWORD:Ljava/lang/String; = "HttpDigestPassword"

.field private static final TAG_XCAP_HTTP_DIGEST_USERNAME:Ljava/lang/String; = "HttpDigestUsername"

.field private static final TAG_XCAP_PUT_ELEMENT_MIME:Ljava/lang/String; = "XcapPutElementMime"

.field private static final TAG_XCAP_ROOT:Ljava/lang/String; = "XcapRoot"

.field private static final TAG_XCAP_USER_AGENT:Ljava/lang/String; = "XcapUserAgent"

.field private static final TAG_XCAP_XUI:Ljava/lang/String; = "XcapXui"

.field private static sInstance:Lcom/mediatek/xcap/client/XcapDebugParam;


# instance fields
.field private mEnableHttpLog:Z

.field private mEnablePredefinedSimservQueryResult:Z

.field private mEnablePredefinedSimservSetting:Z

.field private mEnableSimservQueryWhole:Z

.field private mEnableXcapTrustAll:Z

.field private mHttpDigestPassword:Ljava/lang/String;

.field private mHttpDigestUsername:Ljava/lang/String;

.field private mXcapAUID:Ljava/lang/String;

.field private mXcapDocumentName:Ljava/lang/String;

.field private mXcapPutElementMime:Ljava/lang/String;

.field private mXcapRoot:Ljava/lang/String;

.field private mXcapUserAgent:Ljava/lang/String;

.field private mXcapXui:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-boolean v0, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnablePredefinedSimservQueryResult:Z

    .line 95
    iput-boolean v0, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnablePredefinedSimservSetting:Z

    .line 96
    iput-boolean v0, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnableSimservQueryWhole:Z

    .line 97
    iput-boolean v0, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnableHttpLog:Z

    .line 98
    iput-boolean v0, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnableXcapTrustAll:Z

    .line 65
    return-void
.end method

.method public static getInstance()Lcom/mediatek/xcap/client/XcapDebugParam;
    .registers 1

    .prologue
    .line 109
    sget-object v0, Lcom/mediatek/xcap/client/XcapDebugParam;->sInstance:Lcom/mediatek/xcap/client/XcapDebugParam;

    if-nez v0, :cond_b

    .line 110
    new-instance v0, Lcom/mediatek/xcap/client/XcapDebugParam;

    invoke-direct {v0}, Lcom/mediatek/xcap/client/XcapDebugParam;-><init>()V

    sput-object v0, Lcom/mediatek/xcap/client/XcapDebugParam;->sInstance:Lcom/mediatek/xcap/client/XcapDebugParam;

    .line 112
    :cond_b
    sget-object v0, Lcom/mediatek/xcap/client/XcapDebugParam;->sInstance:Lcom/mediatek/xcap/client/XcapDebugParam;

    return-object v0
.end method

.method private instantiateFromXmlNode(Lorg/w3c/dom/Node;)V
    .registers 8
    .param p1, "domNode"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    move-object v0, p1

    .line 221
    check-cast v0, Lorg/w3c/dom/Element;

    .line 223
    .local v0, "domElement":Lorg/w3c/dom/Element;
    const-string/jumbo v3, "XcapRoot"

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 224
    .local v1, "node":Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lez v3, :cond_1e

    .line 225
    invoke-interface {v1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapRoot:Ljava/lang/String;

    .line 228
    :cond_1e
    const-string/jumbo v3, "XcapUserAgent"

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 229
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lez v3, :cond_37

    .line 230
    invoke-interface {v1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapUserAgent:Ljava/lang/String;

    .line 233
    :cond_37
    const-string/jumbo v3, "XcapXui"

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 234
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lez v3, :cond_50

    .line 235
    invoke-interface {v1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapXui:Ljava/lang/String;

    .line 238
    :cond_50
    const-string/jumbo v3, "HttpDigestUsername"

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 239
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lez v3, :cond_69

    .line 240
    invoke-interface {v1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mHttpDigestUsername:Ljava/lang/String;

    .line 243
    :cond_69
    const-string/jumbo v3, "HttpDigestPassword"

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 244
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lez v3, :cond_82

    .line 245
    invoke-interface {v1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mHttpDigestPassword:Ljava/lang/String;

    .line 248
    :cond_82
    const-string/jumbo v3, "EnablePredefinedSimservQueryResult"

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 249
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lez v3, :cond_a4

    .line 250
    invoke-interface {v1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v2

    .line 251
    .local v2, "str":Ljava/lang/String;
    const-string/jumbo v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_178

    .line 252
    iput-boolean v5, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnablePredefinedSimservQueryResult:Z

    .line 258
    .end local v2    # "str":Ljava/lang/String;
    :cond_a4
    :goto_a4
    const-string/jumbo v3, "EnablePredefinedSimservSetting"

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 259
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lez v3, :cond_c6

    .line 260
    invoke-interface {v1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v2

    .line 261
    .restart local v2    # "str":Ljava/lang/String;
    const-string/jumbo v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17c

    .line 262
    iput-boolean v5, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnablePredefinedSimservSetting:Z

    .line 268
    .end local v2    # "str":Ljava/lang/String;
    :cond_c6
    :goto_c6
    const-string/jumbo v3, "EnableSimservQueryWhole"

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 269
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lez v3, :cond_e8

    .line 270
    invoke-interface {v1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v2

    .line 271
    .restart local v2    # "str":Ljava/lang/String;
    const-string/jumbo v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_180

    .line 272
    iput-boolean v5, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnableSimservQueryWhole:Z

    .line 278
    .end local v2    # "str":Ljava/lang/String;
    :cond_e8
    :goto_e8
    const-string/jumbo v3, "EnableHttpLog"

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 279
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lez v3, :cond_10a

    .line 280
    invoke-interface {v1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v2

    .line 281
    .restart local v2    # "str":Ljava/lang/String;
    const-string/jumbo v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_184

    .line 282
    iput-boolean v5, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnableHttpLog:Z

    .line 288
    .end local v2    # "str":Ljava/lang/String;
    :cond_10a
    :goto_10a
    const-string/jumbo v3, "EnableXcapTrustAll"

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 289
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lez v3, :cond_12c

    .line 290
    invoke-interface {v1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v2

    .line 291
    .restart local v2    # "str":Ljava/lang/String;
    const-string/jumbo v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_187

    .line 292
    iput-boolean v5, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnableXcapTrustAll:Z

    .line 298
    .end local v2    # "str":Ljava/lang/String;
    :cond_12c
    :goto_12c
    const-string/jumbo v3, "XcapDocumentName"

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 299
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lez v3, :cond_145

    .line 300
    invoke-interface {v1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapDocumentName:Ljava/lang/String;

    .line 303
    :cond_145
    const-string/jumbo v3, "XcapPutElementMime"

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 304
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lez v3, :cond_15e

    .line 305
    invoke-interface {v1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapPutElementMime:Ljava/lang/String;

    .line 308
    :cond_15e
    const-string/jumbo v3, "XcapAUID"

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 309
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lez v3, :cond_177

    .line 310
    invoke-interface {v1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapAUID:Ljava/lang/String;

    .line 220
    :cond_177
    return-void

    .line 254
    .restart local v2    # "str":Ljava/lang/String;
    :cond_178
    iput-boolean v4, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnablePredefinedSimservQueryResult:Z

    goto/16 :goto_a4

    .line 264
    :cond_17c
    iput-boolean v4, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnablePredefinedSimservSetting:Z

    goto/16 :goto_c6

    .line 274
    :cond_180
    iput-boolean v4, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnableSimservQueryWhole:Z

    goto/16 :goto_e8

    .line 284
    :cond_184
    iput-boolean v4, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnableHttpLog:Z

    goto :goto_10a

    .line 294
    :cond_187
    iput-boolean v4, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnableXcapTrustAll:Z

    goto :goto_12c
.end method

.method private reset()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 205
    iput-object v1, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapRoot:Ljava/lang/String;

    .line 206
    iput-object v1, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapUserAgent:Ljava/lang/String;

    .line 207
    iput-object v1, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapXui:Ljava/lang/String;

    .line 208
    iput-object v1, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mHttpDigestUsername:Ljava/lang/String;

    .line 209
    iput-object v1, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mHttpDigestPassword:Ljava/lang/String;

    .line 210
    iput-boolean v0, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnablePredefinedSimservQueryResult:Z

    .line 211
    iput-boolean v0, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnablePredefinedSimservSetting:Z

    .line 212
    iput-boolean v0, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnableSimservQueryWhole:Z

    .line 213
    iput-boolean v0, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnableHttpLog:Z

    .line 214
    iput-boolean v0, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnableXcapTrustAll:Z

    .line 215
    const-string/jumbo v0, "simservs.xml"

    iput-object v0, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapDocumentName:Ljava/lang/String;

    .line 216
    iput-object v1, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapPutElementMime:Ljava/lang/String;

    .line 217
    iput-object v1, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapAUID:Ljava/lang/String;

    .line 204
    return-void
.end method


# virtual methods
.method public getEnableHttpLog()Z
    .registers 2

    .prologue
    .line 348
    iget-boolean v0, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnableHttpLog:Z

    return v0
.end method

.method public getEnablePredefinedSimservQueryResult()Z
    .registers 2

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnablePredefinedSimservQueryResult:Z

    return v0
.end method

.method public getEnablePredefinedSimservSetting()Z
    .registers 2

    .prologue
    .line 340
    iget-boolean v0, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnablePredefinedSimservSetting:Z

    return v0
.end method

.method public getEnableSimservQueryWhole()Z
    .registers 2

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnableSimservQueryWhole:Z

    return v0
.end method

.method public getEnableXcapTrustAll()Z
    .registers 2

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnableXcapTrustAll:Z

    return v0
.end method

.method public getHttpDigestPassword()Ljava/lang/String;
    .registers 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mHttpDigestPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpDigestUsername()Ljava/lang/String;
    .registers 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mHttpDigestUsername:Ljava/lang/String;

    return-object v0
.end method

.method public getXcapAUID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapAUID:Ljava/lang/String;

    return-object v0
.end method

.method public getXcapDocumentName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapDocumentName:Ljava/lang/String;

    return-object v0
.end method

.method public getXcapPutElementMime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapPutElementMime:Ljava/lang/String;

    return-object v0
.end method

.method public getXcapRoot()Ljava/lang/String;
    .registers 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapRoot:Ljava/lang/String;

    return-object v0
.end method

.method public getXcapUserAgent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method public getXcapXui()Ljava/lang/String;
    .registers 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapXui:Ljava/lang/String;

    return-object v0
.end method

.method public load()V
    .registers 11

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/mediatek/xcap/client/XcapDebugParam;->readProperty()V

    .line 123
    const-string/jumbo v9, "/data/misc/xcapconfig.xml"

    invoke-virtual {p0, v9}, Lcom/mediatek/xcap/client/XcapDebugParam;->readXmlFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 124
    .local v8, "xmlContent":Ljava/lang/String;
    if-nez v8, :cond_d

    .line 125
    return-void

    .line 129
    :cond_d
    :try_start_d
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v6

    .line 130
    .local v6, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 131
    .local v0, "db":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v7, Lorg/xml/sax/InputSource;

    invoke-direct {v7}, Lorg/xml/sax/InputSource;-><init>()V

    .line 132
    .local v7, "is":Lorg/xml/sax/InputSource;
    new-instance v9, Ljava/io/StringReader;

    invoke-direct {v9, v8}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 134
    invoke-virtual {v0, v7}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 136
    .local v2, "doc":Lorg/w3c/dom/Document;
    const-string/jumbo v9, "DebugParam"

    invoke-interface {v2, v9}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 137
    .local v1, "debugParamNode":Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-lez v9, :cond_3b

    .line 138
    const/4 v9, 0x0

    invoke-interface {v1, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/mediatek/xcap/client/XcapDebugParam;->instantiateFromXmlNode(Lorg/w3c/dom/Node;)V
    :try_end_3b
    .catch Lorg/xml/sax/SAXException; {:try_start_d .. :try_end_3b} :catch_46
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_3b} :catch_41
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_d .. :try_end_3b} :catch_3c

    .line 119
    .end local v0    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "debugParamNode":Lorg/w3c/dom/NodeList;
    .end local v2    # "doc":Lorg/w3c/dom/Document;
    .end local v6    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v7    # "is":Lorg/xml/sax/InputSource;
    :cond_3b
    :goto_3b
    return-void

    .line 144
    :catch_3c
    move-exception v4

    .line 145
    .local v4, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v4}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_3b

    .line 142
    .end local v4    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_41
    move-exception v3

    .line 143
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3b

    .line 140
    .end local v3    # "e":Ljava/io/IOException;
    :catch_46
    move-exception v5

    .line 141
    .local v5, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v5}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_3b
.end method

.method public readProperty()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 176
    const/4 v0, 0x0

    .line 177
    .local v0, "val":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "persist.xcap."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "XcapRoot"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2b

    :cond_2a
    move-object v0, v1

    .end local v0    # "val":Ljava/lang/String;
    :cond_2b
    iput-object v0, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapRoot:Ljava/lang/String;

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "persist.xcap."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "XcapUserAgent"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    .restart local v0    # "val":Ljava/lang/String;
    if-eqz v0, :cond_54

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_55

    :cond_54
    move-object v0, v1

    .end local v0    # "val":Ljava/lang/String;
    :cond_55
    iput-object v0, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapUserAgent:Ljava/lang/String;

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "persist.xcap."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "XcapXui"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    .restart local v0    # "val":Ljava/lang/String;
    if-eqz v0, :cond_7e

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7f

    :cond_7e
    move-object v0, v1

    .end local v0    # "val":Ljava/lang/String;
    :cond_7f
    iput-object v0, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapXui:Ljava/lang/String;

    .line 184
    const-string/jumbo v2, "persist.xcap.simservquerywhole"

    .line 183
    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnableSimservQueryWhole:Z

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "persist.xcap."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "EnableXcapTrustAll"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 185
    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnableXcapTrustAll:Z

    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "persist.xcap."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "XcapDocumentName"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    .restart local v0    # "val":Ljava/lang/String;
    if-eqz v0, :cond_d2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d3

    :cond_d2
    move-object v0, v1

    .end local v0    # "val":Ljava/lang/String;
    :cond_d3
    iput-object v0, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapDocumentName:Ljava/lang/String;

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "persist.xcap."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "XcapPutElementMime"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    .restart local v0    # "val":Ljava/lang/String;
    if-eqz v0, :cond_fc

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_fd

    :cond_fc
    move-object v0, v1

    .end local v0    # "val":Ljava/lang/String;
    :cond_fd
    iput-object v0, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapPutElementMime:Ljava/lang/String;

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "persist.xcap."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "XcapAUID"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    .restart local v0    # "val":Ljava/lang/String;
    if-eqz v0, :cond_126

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_127

    :cond_126
    move-object v0, v1

    .end local v0    # "val":Ljava/lang/String;
    :cond_127
    iput-object v0, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapAUID:Ljava/lang/String;

    .line 194
    const-string/jumbo v1, "XcapDebugParam"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mXcapRoot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapRoot:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 195
    const-string/jumbo v3, "mXcapUserAgent: "

    .line 194
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 195
    iget-object v3, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapUserAgent:Ljava/lang/String;

    .line 194
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 195
    const-string/jumbo v3, "\n"

    .line 194
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 196
    const-string/jumbo v3, "mXcapXui: "

    .line 194
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 196
    iget-object v3, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapXui:Ljava/lang/String;

    .line 194
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 196
    const-string/jumbo v3, "\n"

    .line 194
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 197
    const-string/jumbo v3, "mEnableSimservQueryWhole: "

    .line 194
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 197
    iget-boolean v3, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnableSimservQueryWhole:Z

    .line 194
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 197
    const-string/jumbo v3, "\n"

    .line 194
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 198
    const-string/jumbo v3, "mEnableXcapTrustAll: "

    .line 194
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 198
    iget-boolean v3, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnableXcapTrustAll:Z

    .line 194
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 198
    const-string/jumbo v3, "\n"

    .line 194
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 199
    const-string/jumbo v3, "mXcapDocumentName: "

    .line 194
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 199
    iget-object v3, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapDocumentName:Ljava/lang/String;

    .line 194
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 199
    const-string/jumbo v3, "\n"

    .line 194
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 200
    const-string/jumbo v3, "mXcapPutElementMime: "

    .line 194
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 200
    iget-object v3, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapPutElementMime:Ljava/lang/String;

    .line 194
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 200
    const-string/jumbo v3, "\n"

    .line 194
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 201
    const-string/jumbo v3, "mXcapAUID: "

    .line 194
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 201
    iget-object v3, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapAUID:Ljava/lang/String;

    .line 194
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 201
    const-string/jumbo v3, "\n"

    .line 194
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-void
.end method

.method public readXmlFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 156
    const-string/jumbo v4, ""

    .line 159
    .local v4, "text":Ljava/lang/String;
    :try_start_4
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 160
    .local v3, "fis":Ljava/io/FileInputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 163
    .local v1, "dis":Ljava/io/DataInputStream;
    :goto_e
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, "buf":Ljava/lang/String;
    if-eqz v0, :cond_26

    .line 164
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_e

    .line 166
    :cond_26
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_29} :catch_2a

    .line 172
    return-object v4

    .line 167
    .end local v0    # "buf":Ljava/lang/String;
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    :catch_2a
    move-exception v2

    .line 168
    .local v2, "e":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/mediatek/xcap/client/XcapDebugParam;->reset()V

    .line 169
    return-object v6
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mXcapRoot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapRoot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 374
    const-string/jumbo v1, "mXcapUserAgent: "

    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 374
    iget-object v1, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapUserAgent:Ljava/lang/String;

    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 374
    const-string/jumbo v1, "\n"

    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 375
    const-string/jumbo v1, "mXcapXui: "

    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 375
    iget-object v1, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapXui:Ljava/lang/String;

    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 375
    const-string/jumbo v1, "\n"

    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 376
    const-string/jumbo v1, "mHttpDigestUsername: "

    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 376
    iget-object v1, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mHttpDigestUsername:Ljava/lang/String;

    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 376
    const-string/jumbo v1, "\n"

    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 377
    const-string/jumbo v1, "mHttpDigestPassword: "

    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 377
    iget-object v1, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mHttpDigestPassword:Ljava/lang/String;

    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 377
    const-string/jumbo v1, "\n"

    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 378
    const-string/jumbo v1, "mEnablePredefinedSimservQueryResult: "

    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 379
    iget-boolean v1, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnablePredefinedSimservQueryResult:Z

    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 379
    const-string/jumbo v1, "\n"

    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 380
    const-string/jumbo v1, "mEnablePredefinedSimservSetting: "

    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 381
    iget-boolean v1, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnablePredefinedSimservSetting:Z

    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 381
    const-string/jumbo v1, "\n"

    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 382
    const-string/jumbo v1, "mEnableSimservQueryWhole: "

    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 382
    iget-boolean v1, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnableSimservQueryWhole:Z

    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 382
    const-string/jumbo v1, "\n"

    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 383
    const-string/jumbo v1, "mEnableHttpLog: "

    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 383
    iget-boolean v1, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnableHttpLog:Z

    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 383
    const-string/jumbo v1, "\n"

    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 384
    const-string/jumbo v1, "mEnableXcapTrustAll: "

    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 384
    iget-boolean v1, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnableXcapTrustAll:Z

    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 384
    const-string/jumbo v1, "\n"

    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 385
    const-string/jumbo v1, "mXcapDocumentName: "

    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 385
    iget-object v1, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapDocumentName:Ljava/lang/String;

    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 385
    const-string/jumbo v1, "\n"

    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 386
    const-string/jumbo v1, "mXcapPutElementMime: "

    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 386
    iget-object v1, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapPutElementMime:Ljava/lang/String;

    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 386
    const-string/jumbo v1, "\n"

    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 387
    const-string/jumbo v1, "mXcapAUID: "

    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 387
    iget-object v1, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapAUID:Ljava/lang/String;

    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 387
    const-string/jumbo v1, "\n"

    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
