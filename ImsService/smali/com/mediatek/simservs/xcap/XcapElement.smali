.class public abstract Lcom/mediatek/simservs/xcap/XcapElement;
.super Ljava/lang/Object;
.source "XcapElement.java"

# interfaces
.implements Lcom/mediatek/simservs/xcap/Attributable;


# static fields
.field protected static final AUTH_XCAP_3GPP_INTENDED:Ljava/lang/String; = "X-3GPP-Intended-Identity"

.field protected static final COMMON_POLICY_ALIAS:Ljava/lang/String; = "cp"

.field protected static final COMMON_POLICY_NAMESPACE:Ljava/lang/String; = "urn:ietf:params:xml:ns:common-policy"

.field public static final FALSE:Ljava/lang/String; = "false"

.field public static final TAG:Ljava/lang/String; = "XcapElement"

.field public static final TRUE:Ljava/lang/String; = "true"

.field protected static final XCAP_ALIAS:Ljava/lang/String; = "ss"

.field protected static final XCAP_NAMESPACE:Ljava/lang/String; = "http://uri.etsi.org/ngn/params/xml/simservs/xcap"


# instance fields
.field protected mContext:Landroid/content/Context;

.field public mDebugParams:Lcom/mediatek/xcap/client/XcapDebugParam;

.field protected mEtag:Ljava/lang/String;

.field public mIntendedId:Ljava/lang/String;

.field protected mIsSupportEtag:Z

.field protected mNetwork:Landroid/net/Network;

.field protected mNodeUri:Ljava/lang/String;

.field public mParentUri:Ljava/lang/String;

.field public mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v0, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mNodeUri:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    .line 64
    iput-object v0, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mParentUri:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mEtag:Ljava/lang/String;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIsSupportEtag:Z

    .line 68
    invoke-static {}, Lcom/mediatek/xcap/client/XcapDebugParam;->getInstance()Lcom/mediatek/xcap/client/XcapDebugParam;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mDebugParams:Lcom/mediatek/xcap/client/XcapDebugParam;

    .line 80
    iput-object p1, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    .line 81
    iput-object p2, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mParentUri:Ljava/lang/String;

    .line 82
    iput-object p3, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    .line 79
    return-void
.end method

.method private getAttributeUri(Ljava/lang/String;)Ljava/net/URI;
    .registers 6
    .param p1, "attribute"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 153
    new-instance v2, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;

    const-string/jumbo v3, "simservs"

    invoke-direct {v2, v3}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;-><init>(Ljava/lang/String;)V

    .line 154
    iget-object v3, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mParentUri:Ljava/lang/String;

    .line 153
    invoke-virtual {v2, v3}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->queryByNodeName(Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;

    move-result-object v2

    .line 155
    invoke-virtual {p0}, Lcom/mediatek/simservs/xcap/XcapElement;->getNodeName()Ljava/lang/String;

    move-result-object v3

    .line 153
    invoke-virtual {v2, v3, p1}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->queryByNodeName(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;

    move-result-object v0

    .line 157
    .local v0, "elementSelector":Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;
    iget-object v2, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    invoke-virtual {v2, v0}, Lcom/mediatek/xcap/client/uri/XcapUri;->setNodeSelector(Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;)Lcom/mediatek/xcap/client/uri/XcapUri;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/xcap/client/uri/XcapUri;->toURI()Ljava/net/URI;

    move-result-object v1

    .line 158
    .local v1, "elementURI":Ljava/net/URI;
    return-object v1
.end method


# virtual methods
.method public convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 6
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 505
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 506
    .local v1, "r":Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 508
    .local v2, "total":Ljava/lang/StringBuilder;
    :goto_f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, "line":Ljava/lang/String;
    if-eqz v0, :cond_19

    .line 509
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 511
    :cond_19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public deleteByAttrName(Ljava/lang/String;)V
    .registers 12
    .param p1, "attribute"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 287
    iget-object v7, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mNetwork:Landroid/net/Network;

    if-eqz v7, :cond_72

    .line 288
    new-instance v6, Lcom/mediatek/xcap/client/XcapClient;

    iget-object v7, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mNetwork:Landroid/net/Network;

    invoke-direct {v6, v7}, Lcom/mediatek/xcap/client/XcapClient;-><init>(Landroid/net/Network;)V

    .line 293
    .local v6, "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :goto_b
    const/4 v0, 0x0

    .line 294
    .local v0, "conn":Ljava/net/HttpURLConnection;
    new-instance v5, Lcom/android/okhttp/Headers$Builder;

    invoke-direct {v5}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    .line 297
    .local v5, "headers":Lcom/android/okhttp/Headers$Builder;
    :try_start_11
    iget-object v7, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    if-eqz v7, :cond_78

    iget-object v7, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mEtag:Ljava/lang/String;

    if-eqz v7, :cond_78

    .line 298
    const-string/jumbo v7, "X-3GPP-Intended-Identity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    .line 299
    const-string/jumbo v7, "If-Match"

    iget-object v8, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mEtag:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    .line 304
    :cond_44
    :goto_44
    invoke-direct {p0, p1}, Lcom/mediatek/simservs/xcap/XcapElement;->getAttributeUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/mediatek/xcap/client/XcapClient;->delete(Ljava/net/URI;Lcom/android/okhttp/Headers;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 306
    .local v0, "conn":Ljava/net/HttpURLConnection;
    if-eqz v0, :cond_6e

    .line 307
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_a8

    .line 308
    const-string/jumbo v7, "ETag"

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 310
    .local v4, "etagValue":Ljava/lang/String;
    if-eqz v4, :cond_65

    .line 311
    iput-object v4, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mEtag:Ljava/lang/String;

    .line 314
    :cond_65
    const-string/jumbo v7, "info"

    const-string/jumbo v8, "document deleted in xcap server..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_6e} :catch_a0
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_6e} :catch_b2
    .catch Ljava/net/URISyntaxException; {:try_start_11 .. :try_end_6e} :catch_c1
    .catchall {:try_start_11 .. :try_end_6e} :catchall_bc

    .line 327
    .end local v4    # "etagValue":Ljava/lang/String;
    :cond_6e
    invoke-virtual {v6}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    .line 284
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    :goto_71
    return-void

    .line 290
    .end local v5    # "headers":Lcom/android/okhttp/Headers$Builder;
    .end local v6    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :cond_72
    new-instance v6, Lcom/mediatek/xcap/client/XcapClient;

    invoke-direct {v6}, Lcom/mediatek/xcap/client/XcapClient;-><init>()V

    .restart local v6    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    goto :goto_b

    .line 300
    .local v0, "conn":Ljava/net/HttpURLConnection;
    .restart local v5    # "headers":Lcom/android/okhttp/Headers$Builder;
    :cond_78
    :try_start_78
    iget-object v7, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    if-eqz v7, :cond_44

    .line 301
    const-string/jumbo v7, "X-3GPP-Intended-Identity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;
    :try_end_9f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_78 .. :try_end_9f} :catch_a0
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_9f} :catch_b2
    .catch Ljava/net/URISyntaxException; {:try_start_78 .. :try_end_9f} :catch_c1
    .catchall {:try_start_78 .. :try_end_9f} :catchall_bc

    goto :goto_44

    .line 319
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    :catch_a0
    move-exception v2

    .line 320
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    :try_start_a1
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_a4
    .catchall {:try_start_a1 .. :try_end_a4} :catchall_bc

    .line 327
    invoke-virtual {v6}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    goto :goto_71

    .line 316
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .local v0, "conn":Ljava/net/HttpURLConnection;
    :cond_a8
    :try_start_a8
    new-instance v7, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    invoke-direct {v7, v8}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v7
    :try_end_b2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a8 .. :try_end_b2} :catch_a0
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_b2} :catch_b2
    .catch Ljava/net/URISyntaxException; {:try_start_a8 .. :try_end_b2} :catch_c1
    .catchall {:try_start_a8 .. :try_end_b2} :catchall_bc

    .line 321
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    :catch_b2
    move-exception v1

    .line 322
    .local v1, "e":Ljava/io/IOException;
    :try_start_b3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 323
    new-instance v7, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-direct {v7, v1}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(Ljava/io/IOException;)V

    throw v7
    :try_end_bc
    .catchall {:try_start_b3 .. :try_end_bc} :catchall_bc

    .line 326
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_bc
    move-exception v7

    .line 327
    invoke-virtual {v6}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    .line 326
    throw v7

    .line 324
    :catch_c1
    move-exception v3

    .line 325
    .local v3, "e":Ljava/net/URISyntaxException;
    :try_start_c2
    invoke-virtual {v3}, Ljava/net/URISyntaxException;->printStackTrace()V
    :try_end_c5
    .catchall {:try_start_c2 .. :try_end_c5} :catchall_bc

    .line 327
    invoke-virtual {v6}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    goto :goto_71
.end method

.method public domToXmlText(Lorg/w3c/dom/Element;)Ljava/lang/String;
    .registers 7
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 488
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v1

    .line 489
    .local v1, "transFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual {v1}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v2

    .line 490
    .local v2, "transformer":Ljavax/xml/transform/Transformer;
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 491
    .local v0, "buffer":Ljava/io/StringWriter;
    const-string/jumbo v3, "omit-xml-declaration"

    const-string/jumbo v4, "yes"

    invoke-virtual {v2, v3, v4}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    new-instance v3, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v3, p1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 493
    new-instance v4, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v4, v0}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    .line 492
    invoke-virtual {v2, v3, v4}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 494
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getByAttrName(Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p1, "attribute"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 172
    iget-object v9, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mNetwork:Landroid/net/Network;

    if-eqz v9, :cond_72

    .line 173
    new-instance v8, Lcom/mediatek/xcap/client/XcapClient;

    iget-object v9, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mNetwork:Landroid/net/Network;

    invoke-direct {v8, v9}, Lcom/mediatek/xcap/client/XcapClient;-><init>(Landroid/net/Network;)V

    .line 178
    .local v8, "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :goto_b
    const/4 v0, 0x0

    .line 179
    .local v0, "conn":Ljava/net/HttpURLConnection;
    const/4 v7, 0x0

    .line 180
    .local v7, "ret":Ljava/lang/String;
    new-instance v5, Lcom/android/okhttp/Headers$Builder;

    invoke-direct {v5}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    .line 183
    .local v5, "headers":Lcom/android/okhttp/Headers$Builder;
    :try_start_12
    iget-object v9, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    if-eqz v9, :cond_78

    iget-object v9, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mEtag:Ljava/lang/String;

    if-eqz v9, :cond_78

    .line 184
    const-string/jumbo v9, "X-3GPP-Intended-Identity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    .line 185
    const-string/jumbo v9, "If-None-Match"

    iget-object v10, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mEtag:Ljava/lang/String;

    invoke-virtual {v5, v9, v10}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    .line 190
    :cond_45
    :goto_45
    invoke-direct {p0, p1}, Lcom/mediatek/simservs/xcap/XcapElement;->getAttributeUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v9

    invoke-virtual {v5}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/mediatek/xcap/client/XcapClient;->get(Ljava/net/URI;Lcom/android/okhttp/Headers;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 191
    .local v0, "conn":Ljava/net/HttpURLConnection;
    if-eqz v0, :cond_6e

    .line 192
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    const/16 v10, 0xc8

    if-ne v9, v10, :cond_a8

    .line 193
    const-string/jumbo v9, "ETag"

    invoke-virtual {v0, v9}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 195
    .local v4, "etagValue":Ljava/lang/String;
    if-eqz v4, :cond_66

    .line 196
    iput-object v4, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mEtag:Ljava/lang/String;

    .line 199
    :cond_66
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 201
    .local v6, "is":Ljava/io/InputStream;
    invoke-virtual {p0, v6}, Lcom/mediatek/simservs/xcap/XcapElement;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_6d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_6d} :catch_a0
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_6d} :catch_b3
    .catch Ljava/net/URISyntaxException; {:try_start_12 .. :try_end_6d} :catch_c2
    .catchall {:try_start_12 .. :try_end_6d} :catchall_bd

    move-result-object v7

    .line 215
    .end local v4    # "etagValue":Ljava/lang/String;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "ret":Ljava/lang/String;
    :cond_6e
    invoke-virtual {v8}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    .line 217
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    :goto_71
    return-object v7

    .line 175
    .end local v5    # "headers":Lcom/android/okhttp/Headers$Builder;
    .end local v8    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :cond_72
    new-instance v8, Lcom/mediatek/xcap/client/XcapClient;

    invoke-direct {v8}, Lcom/mediatek/xcap/client/XcapClient;-><init>()V

    .restart local v8    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    goto :goto_b

    .line 186
    .local v0, "conn":Ljava/net/HttpURLConnection;
    .restart local v5    # "headers":Lcom/android/okhttp/Headers$Builder;
    .restart local v7    # "ret":Ljava/lang/String;
    :cond_78
    :try_start_78
    iget-object v9, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    if-eqz v9, :cond_45

    .line 187
    const-string/jumbo v9, "X-3GPP-Intended-Identity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;
    :try_end_9f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_78 .. :try_end_9f} :catch_a0
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_9f} :catch_b3
    .catch Ljava/net/URISyntaxException; {:try_start_78 .. :try_end_9f} :catch_c2
    .catchall {:try_start_78 .. :try_end_9f} :catchall_bd

    goto :goto_45

    .line 207
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    :catch_a0
    move-exception v2

    .line 208
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    :try_start_a1
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_a4
    .catchall {:try_start_a1 .. :try_end_a4} :catchall_bd

    .line 215
    invoke-virtual {v8}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    goto :goto_71

    .line 203
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .local v0, "conn":Ljava/net/HttpURLConnection;
    :cond_a8
    const/4 v7, 0x0

    .line 204
    :try_start_a9
    new-instance v9, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    invoke-direct {v9, v10}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v9
    :try_end_b3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a9 .. :try_end_b3} :catch_a0
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_b3} :catch_b3
    .catch Ljava/net/URISyntaxException; {:try_start_a9 .. :try_end_b3} :catch_c2
    .catchall {:try_start_a9 .. :try_end_b3} :catchall_bd

    .line 209
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    :catch_b3
    move-exception v1

    .line 210
    .local v1, "e":Ljava/io/IOException;
    :try_start_b4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 211
    new-instance v9, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-direct {v9, v1}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(Ljava/io/IOException;)V

    throw v9
    :try_end_bd
    .catchall {:try_start_b4 .. :try_end_bd} :catchall_bd

    .line 214
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_bd
    move-exception v9

    .line 215
    invoke-virtual {v8}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    .line 214
    throw v9

    .line 212
    :catch_c2
    move-exception v3

    .line 213
    .local v3, "e":Ljava/net/URISyntaxException;
    :try_start_c3
    invoke-virtual {v3}, Ljava/net/URISyntaxException;->printStackTrace()V
    :try_end_c6
    .catchall {:try_start_c3 .. :try_end_c6} :catchall_bd

    .line 215
    invoke-virtual {v8}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    goto :goto_71
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 440
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEtag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mEtag:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getNodeName()Ljava/lang/String;
.end method

.method public getNodeSelector()Ljava/lang/String;
    .registers 2

    .prologue
    .line 476
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNodeUri()Ljava/net/URI;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 136
    new-instance v2, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;

    const-string/jumbo v3, "simservs"

    invoke-direct {v2, v3}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;-><init>(Ljava/lang/String;)V

    .line 137
    iget-object v3, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mParentUri:Ljava/lang/String;

    .line 136
    invoke-virtual {v2, v3}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->queryByNodeName(Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;

    move-result-object v2

    .line 138
    invoke-virtual {p0}, Lcom/mediatek/simservs/xcap/XcapElement;->getNodeName()Ljava/lang/String;

    move-result-object v3

    .line 136
    invoke-virtual {v2, v3}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->queryByNodeName(Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;

    move-result-object v0

    .line 140
    .local v0, "elementSelector":Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;
    iget-object v2, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    invoke-virtual {v2, v0}, Lcom/mediatek/xcap/client/uri/XcapUri;->setNodeSelector(Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;)Lcom/mediatek/xcap/client/uri/XcapUri;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/xcap/client/uri/XcapUri;->toURI()Ljava/net/URI;

    move-result-object v1

    .line 141
    .local v1, "elementURI":Ljava/net/URI;
    return-object v1
.end method

.method public getParent()Lcom/mediatek/simservs/xcap/XcapElement;
    .registers 2

    .prologue
    .line 467
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .registers 4

    .prologue
    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 451
    .local v0, "pathUri":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mParentUri:Ljava/lang/String;

    if-eqz v1, :cond_22

    .line 452
    iget-object v1, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mParentUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 453
    const-string/jumbo v2, "\\"

    .line 452
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 454
    invoke-virtual {p0}, Lcom/mediatek/simservs/xcap/XcapElement;->getNodeName()Ljava/lang/String;

    move-result-object v2

    .line 452
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 457
    :cond_22
    invoke-virtual {p0}, Lcom/mediatek/simservs/xcap/XcapElement;->getNodeName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected parse409ErrorMessage(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;
    .registers 16
    .param p1, "xmlErrorTag"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 546
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v7

    .line 547
    .local v7, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 548
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 549
    .local v2, "db":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v8, Lorg/xml/sax/InputSource;

    invoke-direct {v8}, Lorg/xml/sax/InputSource;-><init>()V

    .line 550
    .local v8, "is":Lorg/xml/sax/InputSource;
    new-instance v10, Ljava/io/StringReader;

    invoke-virtual {p0, p2}, Lcom/mediatek/simservs/xcap/XcapElement;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 552
    invoke-virtual {v2, v8}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 554
    .local v3, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v3, p1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 556
    .local v1, "currentNode":Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-lez v10, :cond_7c

    .line 557
    const/4 v10, 0x0

    invoke-interface {v1, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 558
    .local v0, "activeElement":Lorg/w3c/dom/Element;
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v9

    .line 559
    .local v9, "textContent":Ljava/lang/String;
    const-string/jumbo v10, "XcapElement"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "parse409ErrorMessage:["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_57} :catch_70
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_57} :catch_64
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_57} :catch_58

    .line 560
    return-object v9

    .line 568
    .end local v0    # "activeElement":Lorg/w3c/dom/Element;
    .end local v1    # "currentNode":Lorg/w3c/dom/NodeList;
    .end local v2    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v7    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v8    # "is":Lorg/xml/sax/InputSource;
    .end local v9    # "textContent":Ljava/lang/String;
    :catch_58
    move-exception v6

    .line 569
    .local v6, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v6}, Lorg/xml/sax/SAXException;->printStackTrace()V

    .line 570
    new-instance v10, Lcom/mediatek/simservs/xcap/XcapException;

    const/16 v11, 0x1f4

    invoke-direct {v10, v11}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v10

    .line 565
    .end local v6    # "e":Lorg/xml/sax/SAXException;
    :catch_64
    move-exception v4

    .line 566
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 567
    new-instance v10, Lcom/mediatek/simservs/xcap/XcapException;

    const/16 v11, 0x1f4

    invoke-direct {v10, v11}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v10

    .line 562
    .end local v4    # "e":Ljava/io/IOException;
    :catch_70
    move-exception v5

    .line 563
    .local v5, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v5}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    .line 564
    new-instance v10, Lcom/mediatek/simservs/xcap/XcapException;

    const/16 v11, 0x1f4

    invoke-direct {v10, v11}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v10

    .line 573
    .end local v5    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v1    # "currentNode":Lorg/w3c/dom/NodeList;
    .restart local v2    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3    # "doc":Lorg/w3c/dom/Document;
    .restart local v7    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v8    # "is":Lorg/xml/sax/InputSource;
    :cond_7c
    const/4 v10, 0x0

    return-object v10
.end method

.method protected readXmlFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 517
    const-string/jumbo v5, ""

    .line 520
    .local v5, "text":Ljava/lang/String;
    :try_start_3
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 521
    .local v4, "fis":Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 522
    .local v0, "bis":Ljava/io/BufferedInputStream;
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 525
    .local v2, "dis":Ljava/io/DataInputStream;
    :goto_12
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "buf":Ljava/lang/String;
    if-eqz v1, :cond_48

    .line 526
    const-string/jumbo v6, "XcapElement"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Read:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_42} :catch_44

    move-result-object v5

    goto :goto_12

    .line 529
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v1    # "buf":Ljava/lang/String;
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    :catch_44
    move-exception v3

    .line 530
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 533
    .end local v3    # "e":Ljava/io/IOException;
    :cond_48
    return-object v5
.end method

.method protected saveContent(Ljava/lang/String;)V
    .registers 16
    .param p1, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 353
    const/4 v9, 0x0

    .line 354
    .local v9, "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    const/4 v0, 0x0

    .line 355
    .local v0, "conn":Ljava/net/HttpURLConnection;
    new-instance v4, Lcom/android/okhttp/Headers$Builder;

    invoke-direct {v4}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    .line 358
    .local v4, "headers":Lcom/android/okhttp/Headers$Builder;
    :try_start_7
    new-instance v7, Ljava/net/URI;

    iget-object v11, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mNodeUri:Ljava/lang/String;

    invoke-direct {v7, v11}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 360
    .local v7, "uri":Ljava/net/URI;
    iget-object v11, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mNetwork:Landroid/net/Network;

    if-eqz v11, :cond_33

    .line 361
    new-instance v10, Lcom/mediatek/xcap/client/XcapClient;

    iget-object v11, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mNetwork:Landroid/net/Network;

    invoke-direct {v10, v11}, Lcom/mediatek/xcap/client/XcapClient;-><init>(Landroid/net/Network;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_19} :catch_10c
    .catch Ljava/net/URISyntaxException; {:try_start_7 .. :try_end_19} :catch_150
    .catchall {:try_start_7 .. :try_end_19} :catchall_2e

    .line 363
    .local v10, "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    if-nez v10, :cond_179

    .line 364
    .end local v9    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :try_start_1b
    new-instance v11, Lcom/mediatek/simservs/xcap/XcapException;

    const/16 v12, 0x1f4

    invoke-direct {v11, v12}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v11
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_23} :catch_23
    .catch Ljava/net/URISyntaxException; {:try_start_1b .. :try_end_23} :catch_176
    .catchall {:try_start_1b .. :try_end_23} :catchall_172

    .line 424
    :catch_23
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    move-object v9, v10

    .line 425
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v7    # "uri":Ljava/net/URI;
    .end local v10    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :goto_25
    :try_start_25
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 426
    new-instance v11, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-direct {v11, v1}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(Ljava/io/IOException;)V

    throw v11
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_2e

    .line 429
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_2e
    move-exception v11

    .line 430
    :goto_2f
    invoke-virtual {v9}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    .line 429
    throw v11

    .line 367
    .restart local v0    # "conn":Ljava/net/HttpURLConnection;
    .restart local v7    # "uri":Ljava/net/URI;
    .restart local v9    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :cond_33
    :try_start_33
    new-instance v10, Lcom/mediatek/xcap/client/XcapClient;

    invoke-direct {v10}, Lcom/mediatek/xcap/client/XcapClient;-><init>()V

    .restart local v10    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    move-object v9, v10

    .line 370
    .end local v10    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .local v9, "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :goto_39
    iget-object v11, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    if-eqz v11, :cond_e3

    iget-object v11, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mEtag:Ljava/lang/String;

    if-eqz v11, :cond_e3

    .line 371
    const-string/jumbo v11, "X-3GPP-Intended-Identity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    .line 372
    const-string/jumbo v11, "If-Match"

    iget-object v12, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mEtag:Ljava/lang/String;

    invoke-virtual {v4, v11, v12}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    .line 377
    :cond_6c
    :goto_6c
    iget-object v11, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mDebugParams:Lcom/mediatek/xcap/client/XcapDebugParam;

    invoke-virtual {v11}, Lcom/mediatek/xcap/client/XcapDebugParam;->getEnablePredefinedSimservSetting()Z

    move-result v11

    if-eqz v11, :cond_81

    .line 378
    invoke-virtual {p0}, Lcom/mediatek/simservs/xcap/XcapElement;->getNodeName()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "NoReplyTimer"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10f

    .line 386
    :cond_81
    :goto_81
    const/4 v6, 0x0

    .line 388
    .local v6, "putElementMime":Ljava/lang/String;
    iget-object v11, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mDebugParams:Lcom/mediatek/xcap/client/XcapDebugParam;

    invoke-virtual {v11}, Lcom/mediatek/xcap/client/XcapDebugParam;->getXcapPutElementMime()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_96

    .line 389
    iget-object v11, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mDebugParams:Lcom/mediatek/xcap/client/XcapDebugParam;

    invoke-virtual {v11}, Lcom/mediatek/xcap/client/XcapDebugParam;->getXcapPutElementMime()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_11b

    .line 392
    :cond_96
    const-string/jumbo v11, "xcap.putelcontenttype"

    .line 393
    const-string/jumbo v12, "application/xcap-el+xml"

    .line 392
    invoke-static {v11, v12}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 396
    .local v6, "putElementMime":Ljava/lang/String;
    :goto_a0
    invoke-virtual {v4}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v11

    invoke-virtual {v9, v7, v6, p1, v11}, Lcom/mediatek/xcap/client/XcapClient;->put(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Lcom/android/okhttp/Headers;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 398
    .local v0, "conn":Ljava/net/HttpURLConnection;
    if-eqz v0, :cond_df

    .line 399
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11

    const/16 v12, 0xc8

    if-eq v11, v12, :cond_ba

    .line 400
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11

    const/16 v12, 0xc9

    if-ne v11, v12, :cond_123

    .line 401
    :cond_ba
    const-string/jumbo v11, "ETag"

    invoke-virtual {v0, v11}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 403
    .local v3, "etagValue":Ljava/lang/String;
    if-eqz v3, :cond_c5

    .line 404
    iput-object v3, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mEtag:Ljava/lang/String;

    .line 407
    :cond_c5
    const-string/jumbo v11, "info"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "document created in xcap server... etagValue="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_df
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_df} :catch_10c
    .catch Ljava/net/URISyntaxException; {:try_start_33 .. :try_end_df} :catch_150
    .catchall {:try_start_33 .. :try_end_df} :catchall_2e

    .line 430
    .end local v3    # "etagValue":Ljava/lang/String;
    :cond_df
    invoke-virtual {v9}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    .line 352
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v6    # "putElementMime":Ljava/lang/String;
    .end local v7    # "uri":Ljava/net/URI;
    .end local v9    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :goto_e2
    return-void

    .line 373
    .local v0, "conn":Ljava/net/HttpURLConnection;
    .restart local v7    # "uri":Ljava/net/URI;
    .restart local v9    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :cond_e3
    :try_start_e3
    iget-object v11, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    if-eqz v11, :cond_6c

    .line 374
    const-string/jumbo v11, "X-3GPP-Intended-Identity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    goto/16 :goto_6c

    .line 424
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v7    # "uri":Ljava/net/URI;
    .end local v9    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :catch_10c
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto/16 :goto_25

    .line 379
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "conn":Ljava/net/HttpURLConnection;
    .restart local v7    # "uri":Ljava/net/URI;
    .restart local v9    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :cond_10f
    const-string/jumbo v11, "/data/simservs.xml"

    invoke-virtual {p0, v11}, Lcom/mediatek/simservs/xcap/XcapElement;->readXmlFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 381
    .local v8, "xMl":Ljava/lang/String;
    if-eqz v8, :cond_81

    .line 382
    move-object p1, v8

    goto/16 :goto_81

    .line 390
    .end local v8    # "xMl":Ljava/lang/String;
    .local v6, "putElementMime":Ljava/lang/String;
    :cond_11b
    iget-object v11, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mDebugParams:Lcom/mediatek/xcap/client/XcapDebugParam;

    invoke-virtual {v11}, Lcom/mediatek/xcap/client/XcapDebugParam;->getXcapPutElementMime()Ljava/lang/String;

    move-result-object v6

    .local v6, "putElementMime":Ljava/lang/String;
    goto/16 :goto_a0

    .line 408
    .local v0, "conn":Ljava/net/HttpURLConnection;
    :cond_123
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11

    const/16 v12, 0x199

    if-ne v11, v12, :cond_168

    .line 409
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 411
    .local v5, "is":Ljava/io/InputStream;
    if-eqz v5, :cond_160

    .line 412
    const-string/jumbo v11, "true"

    const-string/jumbo v12, "xcap.handl409"

    invoke-static {v12}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_158

    .line 413
    new-instance v11, Lcom/mediatek/simservs/xcap/XcapException;

    const-string/jumbo v12, "phrase"

    invoke-virtual {p0, v12, v5}, Lcom/mediatek/simservs/xcap/XcapElement;->parse409ErrorMessage(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x199

    invoke-direct {v11, v13, v12}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(ILjava/lang/String;)V

    throw v11
    :try_end_150
    .catch Ljava/io/IOException; {:try_start_e3 .. :try_end_150} :catch_10c
    .catch Ljava/net/URISyntaxException; {:try_start_e3 .. :try_end_150} :catch_150
    .catchall {:try_start_e3 .. :try_end_150} :catchall_2e

    .line 427
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "putElementMime":Ljava/lang/String;
    .end local v7    # "uri":Ljava/net/URI;
    .end local v9    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :catch_150
    move-exception v2

    .line 428
    .local v2, "e":Ljava/net/URISyntaxException;
    :goto_151
    :try_start_151
    invoke-virtual {v2}, Ljava/net/URISyntaxException;->printStackTrace()V
    :try_end_154
    .catchall {:try_start_151 .. :try_end_154} :catchall_2e

    .line 430
    invoke-virtual {v9}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    goto :goto_e2

    .line 415
    .end local v2    # "e":Ljava/net/URISyntaxException;
    .restart local v0    # "conn":Ljava/net/HttpURLConnection;
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "putElementMime":Ljava/lang/String;
    .restart local v7    # "uri":Ljava/net/URI;
    .restart local v9    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :cond_158
    :try_start_158
    new-instance v11, Lcom/mediatek/simservs/xcap/XcapException;

    const/16 v12, 0x199

    invoke-direct {v11, v12}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v11

    .line 418
    :cond_160
    new-instance v11, Lcom/mediatek/simservs/xcap/XcapException;

    const/16 v12, 0x199

    invoke-direct {v11, v12}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v11

    .line 421
    .end local v5    # "is":Ljava/io/InputStream;
    :cond_168
    new-instance v11, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v12

    invoke-direct {v11, v12}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v11
    :try_end_172
    .catch Ljava/io/IOException; {:try_start_158 .. :try_end_172} :catch_10c
    .catch Ljava/net/URISyntaxException; {:try_start_158 .. :try_end_172} :catch_150
    .catchall {:try_start_158 .. :try_end_172} :catchall_2e

    .line 429
    .end local v6    # "putElementMime":Ljava/lang/String;
    .end local v9    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .local v0, "conn":Ljava/net/HttpURLConnection;
    .restart local v10    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :catchall_172
    move-exception v11

    move-object v9, v10

    .end local v10    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v9    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    goto/16 :goto_2f

    .line 427
    .end local v9    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v10    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :catch_176
    move-exception v2

    .restart local v2    # "e":Ljava/net/URISyntaxException;
    move-object v9, v10

    .end local v10    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v9    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    goto :goto_151

    .end local v2    # "e":Ljava/net/URISyntaxException;
    .end local v9    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v10    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :cond_179
    move-object v9, v10

    .end local v10    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v9    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    goto/16 :goto_39
.end method

.method public setByAttrName(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "attrName"    # Ljava/lang/String;
    .param p2, "attrValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 231
    iget-object v7, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mNetwork:Landroid/net/Network;

    if-eqz v7, :cond_8e

    .line 232
    new-instance v6, Lcom/mediatek/xcap/client/XcapClient;

    iget-object v7, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mNetwork:Landroid/net/Network;

    invoke-direct {v6, v7}, Lcom/mediatek/xcap/client/XcapClient;-><init>(Landroid/net/Network;)V

    .line 237
    .local v6, "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :goto_b
    const/4 v0, 0x0

    .line 238
    .local v0, "conn":Ljava/net/HttpURLConnection;
    new-instance v5, Lcom/android/okhttp/Headers$Builder;

    invoke-direct {v5}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    .line 241
    .local v5, "headers":Lcom/android/okhttp/Headers$Builder;
    :try_start_11
    iget-object v7, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    if-eqz v7, :cond_95

    iget-object v7, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mEtag:Ljava/lang/String;

    if-eqz v7, :cond_95

    .line 242
    const-string/jumbo v7, "X-3GPP-Intended-Identity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    .line 243
    const-string/jumbo v7, "If-Match"

    iget-object v8, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mEtag:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    .line 248
    :cond_44
    :goto_44
    invoke-direct {p0, p1}, Lcom/mediatek/simservs/xcap/XcapElement;->getAttributeUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v7

    const-string/jumbo v8, "application/xcap-att+xml"

    .line 249
    invoke-virtual {v5}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v9

    .line 248
    invoke-virtual {v6, v7, v8, p2, v9}, Lcom/mediatek/xcap/client/XcapClient;->put(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Lcom/android/okhttp/Headers;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 251
    .local v0, "conn":Ljava/net/HttpURLConnection;
    if-eqz v0, :cond_8a

    .line 252
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    const/16 v8, 0xc8

    if-eq v7, v8, :cond_65

    .line 253
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    const/16 v8, 0xc9

    if-ne v7, v8, :cond_c5

    .line 254
    :cond_65
    const-string/jumbo v7, "ETag"

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 256
    .local v4, "etagValue":Ljava/lang/String;
    if-eqz v4, :cond_70

    .line 257
    iput-object v4, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mEtag:Ljava/lang/String;

    .line 260
    :cond_70
    const-string/jumbo v7, "info"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "document created in xcap server... etagValue="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_8a} :catch_bd
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_8a} :catch_cf
    .catch Ljava/net/URISyntaxException; {:try_start_11 .. :try_end_8a} :catch_de
    .catchall {:try_start_11 .. :try_end_8a} :catchall_d9

    .line 273
    .end local v4    # "etagValue":Ljava/lang/String;
    :cond_8a
    invoke-virtual {v6}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    .line 228
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    :goto_8d
    return-void

    .line 234
    .end local v5    # "headers":Lcom/android/okhttp/Headers$Builder;
    .end local v6    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :cond_8e
    new-instance v6, Lcom/mediatek/xcap/client/XcapClient;

    invoke-direct {v6}, Lcom/mediatek/xcap/client/XcapClient;-><init>()V

    .restart local v6    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    goto/16 :goto_b

    .line 244
    .local v0, "conn":Ljava/net/HttpURLConnection;
    .restart local v5    # "headers":Lcom/android/okhttp/Headers$Builder;
    :cond_95
    :try_start_95
    iget-object v7, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    if-eqz v7, :cond_44

    .line 245
    const-string/jumbo v7, "X-3GPP-Intended-Identity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;
    :try_end_bc
    .catch Ljava/lang/IllegalArgumentException; {:try_start_95 .. :try_end_bc} :catch_bd
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_bc} :catch_cf
    .catch Ljava/net/URISyntaxException; {:try_start_95 .. :try_end_bc} :catch_de
    .catchall {:try_start_95 .. :try_end_bc} :catchall_d9

    goto :goto_44

    .line 265
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    :catch_bd
    move-exception v2

    .line 266
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    :try_start_be
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_c1
    .catchall {:try_start_be .. :try_end_c1} :catchall_d9

    .line 273
    invoke-virtual {v6}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    goto :goto_8d

    .line 262
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .local v0, "conn":Ljava/net/HttpURLConnection;
    :cond_c5
    :try_start_c5
    new-instance v7, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    invoke-direct {v7, v8}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v7
    :try_end_cf
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c5 .. :try_end_cf} :catch_bd
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_cf} :catch_cf
    .catch Ljava/net/URISyntaxException; {:try_start_c5 .. :try_end_cf} :catch_de
    .catchall {:try_start_c5 .. :try_end_cf} :catchall_d9

    .line 267
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    :catch_cf
    move-exception v1

    .line 268
    .local v1, "e":Ljava/io/IOException;
    :try_start_d0
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 269
    new-instance v7, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-direct {v7, v1}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(Ljava/io/IOException;)V

    throw v7
    :try_end_d9
    .catchall {:try_start_d0 .. :try_end_d9} :catchall_d9

    .line 272
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_d9
    move-exception v7

    .line 273
    invoke-virtual {v6}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    .line 272
    throw v7

    .line 270
    :catch_de
    move-exception v3

    .line 271
    .local v3, "e":Ljava/net/URISyntaxException;
    :try_start_df
    invoke-virtual {v3}, Ljava/net/URISyntaxException;->printStackTrace()V
    :try_end_e2
    .catchall {:try_start_df .. :try_end_e2} :catchall_d9

    .line 273
    invoke-virtual {v6}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    goto :goto_8d
.end method

.method public setContent(Ljava/lang/String;)V
    .registers 4
    .param p1, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 339
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/simservs/xcap/XcapElement;->getNodeUri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mNodeUri:Ljava/lang/String;

    .line 340
    invoke-virtual {p0, p1}, Lcom/mediatek/simservs/xcap/XcapElement;->saveContent(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_d} :catch_e

    .line 337
    :goto_d
    return-void

    .line 341
    :catch_e
    move-exception v0

    .line 342
    .local v0, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_d
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 2
    .param p1, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 103
    if-eqz p1, :cond_4

    .line 104
    iput-object p1, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mContext:Landroid/content/Context;

    .line 102
    :cond_4
    return-void
.end method

.method public setEtag(Ljava/lang/String;)V
    .registers 2
    .param p1, "etag"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mEtag:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setNetwork(Landroid/net/Network;)V
    .registers 5
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 91
    if-eqz p1, :cond_1e

    .line 92
    const-string/jumbo v0, "XcapElement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "XCAP dedicated network netid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iput-object p1, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mNetwork:Landroid/net/Network;

    .line 90
    :cond_1e
    return-void
.end method
