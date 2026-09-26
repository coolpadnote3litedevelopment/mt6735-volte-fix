.class public Lcom/mediatek/xcap/client/XcapClient;
.super Ljava/lang/Object;
.source "XcapClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/xcap/client/XcapClient$1;
    }
.end annotation


# static fields
.field private static final MAX_SOCKET_CONNECTION:I = 0x1e

.field public static final METHOD_DELETE:Ljava/lang/String; = "DELETE"

.field public static final METHOD_GET:Ljava/lang/String; = "GET"

.field public static final METHOD_PUT:Ljava/lang/String; = "PUT"

.field private static final SOCKET_OPERATION_TIMEOUT:I = 0x7530

.field private static final TAG:Ljava/lang/String; = "XcapClient"


# instance fields
.field private mConnection:Ljava/net/HttpURLConnection;

.field private mContext:Landroid/content/Context;

.field private mDebugParam:Lcom/mediatek/xcap/client/XcapDebugParam;

.field private mNetwork:Landroid/net/Network;

.field private mTrustAllCerts:[Ljavax/net/ssl/TrustManager;

.field private mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mConnection:Ljava/net/HttpURLConnection;

    .line 92
    invoke-static {}, Lcom/mediatek/xcap/client/XcapDebugParam;->getInstance()Lcom/mediatek/xcap/client/XcapDebugParam;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mDebugParam:Lcom/mediatek/xcap/client/XcapDebugParam;

    .line 96
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    new-instance v1, Lcom/mediatek/xcap/client/XcapClient$1;

    invoke-direct {v1, p0}, Lcom/mediatek/xcap/client/XcapClient$1;-><init>(Lcom/mediatek/xcap/client/XcapClient;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mTrustAllCerts:[Ljavax/net/ssl/TrustManager;

    .line 119
    invoke-direct {p0}, Lcom/mediatek/xcap/client/XcapClient;->composeUserAgent()V

    .line 120
    invoke-direct {p0}, Lcom/mediatek/xcap/client/XcapClient;->initialize()V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/net/Network;)V
    .registers 5
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    const/4 v0, 0x0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mConnection:Ljava/net/HttpURLConnection;

    .line 92
    invoke-static {}, Lcom/mediatek/xcap/client/XcapDebugParam;->getInstance()Lcom/mediatek/xcap/client/XcapDebugParam;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mDebugParam:Lcom/mediatek/xcap/client/XcapDebugParam;

    .line 96
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    new-instance v1, Lcom/mediatek/xcap/client/XcapClient$1;

    invoke-direct {v1, p0}, Lcom/mediatek/xcap/client/XcapClient$1;-><init>(Lcom/mediatek/xcap/client/XcapClient;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mTrustAllCerts:[Ljavax/net/ssl/TrustManager;

    .line 139
    invoke-direct {p0}, Lcom/mediatek/xcap/client/XcapClient;->composeUserAgent()V

    .line 141
    if-eqz p1, :cond_20

    .line 142
    iput-object p1, p0, Lcom/mediatek/xcap/client/XcapClient;->mNetwork:Landroid/net/Network;

    .line 145
    :cond_20
    invoke-direct {p0}, Lcom/mediatek/xcap/client/XcapClient;->initialize()V

    .line 138
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mConnection:Ljava/net/HttpURLConnection;

    .line 92
    invoke-static {}, Lcom/mediatek/xcap/client/XcapDebugParam;->getInstance()Lcom/mediatek/xcap/client/XcapDebugParam;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mDebugParam:Lcom/mediatek/xcap/client/XcapDebugParam;

    .line 96
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    new-instance v1, Lcom/mediatek/xcap/client/XcapClient$1;

    invoke-direct {v1, p0}, Lcom/mediatek/xcap/client/XcapClient$1;-><init>(Lcom/mediatek/xcap/client/XcapClient;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mTrustAllCerts:[Ljavax/net/ssl/TrustManager;

    .line 129
    iput-object p1, p0, Lcom/mediatek/xcap/client/XcapClient;->mUserAgent:Ljava/lang/String;

    .line 130
    invoke-direct {p0}, Lcom/mediatek/xcap/client/XcapClient;->initialize()V

    .line 128
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Network;)V
    .registers 6
    .param p1, "userAgent"    # Ljava/lang/String;
    .param p2, "network"    # Landroid/net/Network;

    .prologue
    const/4 v0, 0x0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mConnection:Ljava/net/HttpURLConnection;

    .line 92
    invoke-static {}, Lcom/mediatek/xcap/client/XcapDebugParam;->getInstance()Lcom/mediatek/xcap/client/XcapDebugParam;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mDebugParam:Lcom/mediatek/xcap/client/XcapDebugParam;

    .line 96
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    new-instance v1, Lcom/mediatek/xcap/client/XcapClient$1;

    invoke-direct {v1, p0}, Lcom/mediatek/xcap/client/XcapClient$1;-><init>(Lcom/mediatek/xcap/client/XcapClient;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mTrustAllCerts:[Ljavax/net/ssl/TrustManager;

    .line 155
    iput-object p1, p0, Lcom/mediatek/xcap/client/XcapClient;->mUserAgent:Ljava/lang/String;

    .line 157
    if-eqz p2, :cond_1f

    .line 158
    iput-object p2, p0, Lcom/mediatek/xcap/client/XcapClient;->mNetwork:Landroid/net/Network;

    .line 161
    :cond_1f
    invoke-direct {p0}, Lcom/mediatek/xcap/client/XcapClient;->initialize()V

    .line 154
    return-void
.end method

.method private addExtraHeaders(Ljava/net/HttpURLConnection;Lcom/android/okhttp/Headers;)V
    .registers 10
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "rawHeaders"    # Lcom/android/okhttp/Headers;

    .prologue
    .line 202
    invoke-virtual {p2}, Lcom/android/okhttp/Headers;->names()Ljava/util/Set;

    move-result-object v2

    .line 203
    .local v2, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "name$iterator":Ljava/util/Iterator;
    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 204
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p2, v0}, Lcom/android/okhttp/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 205
    .local v5, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "value$iterator":Ljava/util/Iterator;
    :cond_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 206
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1c

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1c

    .line 208
    invoke-virtual {p1, v0, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 201
    .end local v0    # "name":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    .end local v4    # "value$iterator":Ljava/util/Iterator;
    .end local v5    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_38
    return-void
.end method

.method private composeUserAgent()V
    .registers 5

    .prologue
    .line 174
    const/4 v1, 0x0

    .line 175
    .local v1, "isGbaEnabled":Z
    const-string/jumbo v2, "GbaService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 176
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_14

    .line 177
    const-string/jumbo v2, "XcapClient"

    const-string/jumbo v3, "GbaService Enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v1, 0x1

    .line 181
    :cond_14
    iget-object v2, p0, Lcom/mediatek/xcap/client/XcapClient;->mDebugParam:Lcom/mediatek/xcap/client/XcapDebugParam;

    invoke-virtual {v2}, Lcom/mediatek/xcap/client/XcapDebugParam;->getXcapUserAgent()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/mediatek/xcap/client/XcapClient;->mDebugParam:Lcom/mediatek/xcap/client/XcapDebugParam;

    invoke-virtual {v2}, Lcom/mediatek/xcap/client/XcapDebugParam;->getXcapUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 184
    :cond_28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "XCAP Client"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_4d

    const-string/jumbo v2, " 3gpp-gba"

    :goto_39
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/xcap/client/XcapClient;->mUserAgent:Ljava/lang/String;

    .line 173
    :goto_43
    return-void

    .line 182
    :cond_44
    iget-object v2, p0, Lcom/mediatek/xcap/client/XcapClient;->mDebugParam:Lcom/mediatek/xcap/client/XcapDebugParam;

    invoke-virtual {v2}, Lcom/mediatek/xcap/client/XcapDebugParam;->getXcapUserAgent()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/xcap/client/XcapClient;->mUserAgent:Ljava/lang/String;

    goto :goto_43

    .line 184
    :cond_4d
    const-string/jumbo v2, ""

    goto :goto_39
.end method

.method private execute(Ljava/net/URL;Ljava/lang/String;[BLcom/android/okhttp/Headers;)Ljava/net/HttpURLConnection;
    .registers 23
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "xml"    # [B
    .param p4, "additionalRequestHeaders"    # Lcom/android/okhttp/Headers;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    const/4 v14, 0x3

    .line 250
    .local v14, "tryCount":I
    const/4 v13, 0x0

    .line 252
    .local v13, "success":Z
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/mediatek/xcap/client/XcapClient;->mConnection:Ljava/net/HttpURLConnection;

    .line 254
    const-string/jumbo v15, "xcap.req"

    const-string/jumbo v16, "true"

    invoke-static/range {v15 .. v16}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 255
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/xcap/client/XcapClient;->mDebugParam:Lcom/mediatek/xcap/client/XcapDebugParam;

    invoke-virtual {v15}, Lcom/mediatek/xcap/client/XcapDebugParam;->getEnableXcapTrustAll()Z

    move-result v7

    .line 257
    .local v7, "isTrustAll":Z
    if-eqz v7, :cond_44

    .line 260
    :try_start_1a
    const-string/jumbo v15, "SSL"

    invoke-static {v15}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v11

    .line 261
    .local v11, "sc":Ljavax/net/ssl/SSLContext;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/xcap/client/XcapClient;->mTrustAllCerts:[Ljavax/net/ssl/TrustManager;

    new-instance v16, Ljava/security/SecureRandom;

    invoke-direct/range {v16 .. v16}, Ljava/security/SecureRandom;-><init>()V

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v11, v0, v15, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 262
    invoke-virtual {v11}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v15

    invoke-static {v15}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_3a
    .catch Ljava/security/GeneralSecurityException; {:try_start_1a .. :try_end_3a} :catch_4d

    .line 268
    .end local v11    # "sc":Ljavax/net/ssl/SSLContext;
    :goto_3a
    new-instance v2, Lcom/mediatek/xcap/client/XcapClient$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/mediatek/xcap/client/XcapClient$2;-><init>(Lcom/mediatek/xcap/client/XcapClient;)V

    .line 275
    .local v2, "allHostsValid":Ljavax/net/ssl/HostnameVerifier;
    invoke-static {v2}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 278
    .end local v2    # "allHostsValid":Ljavax/net/ssl/HostnameVerifier;
    :cond_44
    :goto_44
    if-lez v14, :cond_48

    if-eqz v13, :cond_52

    .line 368
    :cond_48
    :goto_48
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/xcap/client/XcapClient;->mConnection:Ljava/net/HttpURLConnection;

    return-object v15

    .line 263
    :catch_4d
    move-exception v12

    .line 264
    .local v12, "se":Ljava/security/GeneralSecurityException;
    invoke-virtual {v12}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    goto :goto_3a

    .line 280
    .end local v12    # "se":Ljava/security/GeneralSecurityException;
    :cond_52
    :try_start_52
    const-string/jumbo v15, "XcapClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " :"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/xcap/client/XcapClient;->mNetwork:Landroid/net/Network;

    if-eqz v15, :cond_189

    .line 283
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/xcap/client/XcapClient;->mNetwork:Landroid/net/Network;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v15

    check-cast v15, Ljava/net/HttpURLConnection;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/mediatek/xcap/client/XcapClient;->mConnection:Ljava/net/HttpURLConnection;

    .line 287
    :goto_8e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/xcap/client/XcapClient;->mConnection:Ljava/net/HttpURLConnection;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 288
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/xcap/client/XcapClient;->mConnection:Ljava/net/HttpURLConnection;

    const/16 v16, 0x7530

    invoke-virtual/range {v15 .. v16}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 289
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/xcap/client/XcapClient;->mConnection:Ljava/net/HttpURLConnection;

    const/16 v16, 0x7530

    invoke-virtual/range {v15 .. v16}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 290
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/xcap/client/XcapClient;->mConnection:Ljava/net/HttpURLConnection;

    const/16 v16, 0x7530

    invoke-virtual/range {v15 .. v16}, Ljava/net/HttpURLConnection;->setWriteTimeout(I)V

    .line 292
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/xcap/client/XcapClient;->mConnection:Ljava/net/HttpURLConnection;

    const-string/jumbo v16, "User-Agent"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/xcap/client/XcapClient;->mUserAgent:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/xcap/client/XcapClient;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v15, v1}, Lcom/mediatek/xcap/client/XcapClient;->addExtraHeaders(Ljava/net/HttpURLConnection;Lcom/android/okhttp/Headers;)V

    .line 295
    const-string/jumbo v15, "PUT"

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1b0

    .line 296
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/xcap/client/XcapClient;->mConnection:Ljava/net/HttpURLConnection;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 297
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/xcap/client/XcapClient;->mConnection:Ljava/net/HttpURLConnection;

    const-string/jumbo v16, "PUT"

    invoke-virtual/range {v15 .. v16}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 298
    const-string/jumbo v15, "XcapClient"

    const/16 v16, 0x3

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v15

    if-eqz v15, :cond_ff

    .line 299
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/xcap/client/XcapClient;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/xcap/client/XcapClient;->logRequestHeaders(Ljava/net/HttpURLConnection;)V

    .line 303
    :cond_ff
    new-instance v8, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/xcap/client/XcapClient;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v15

    invoke-direct {v8, v15}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 304
    .local v8, "out":Ljava/io/OutputStream;
    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/io/OutputStream;->write([B)V

    .line 305
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V

    .line 306
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 316
    .end local v8    # "out":Ljava/io/OutputStream;
    :cond_117
    :goto_117
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/xcap/client/XcapClient;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    .line 317
    .local v9, "responseCode":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/xcap/client/XcapClient;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v10

    .line 318
    .local v10, "responseMessage":Ljava/lang/String;
    const-string/jumbo v15, "XcapClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "HTTP: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const-string/jumbo v15, "XcapClient"

    const/16 v16, 0x3

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v15

    if-eqz v15, :cond_164

    .line 320
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/xcap/client/XcapClient;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/xcap/client/XcapClient;->logResponseHeaders(Ljava/net/HttpURLConnection;)V
    :try_end_164
    .catch Ljava/net/MalformedURLException; {:try_start_52 .. :try_end_164} :catch_195
    .catch Ljava/net/ProtocolException; {:try_start_52 .. :try_end_164} :catch_1db
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_164} :catch_248
    .catchall {:try_start_52 .. :try_end_164} :catchall_19a

    .line 323
    :cond_164
    const/16 v15, 0xc8

    if-eq v9, v15, :cond_16c

    const/16 v15, 0x193

    if-ne v9, v15, :cond_1e0

    .line 325
    :cond_16c
    const/4 v13, 0x1

    .line 354
    if-nez v13, :cond_48

    .line 356
    add-int/lit8 v14, v14, -0x1

    .line 357
    if-lez v14, :cond_48

    .line 358
    const-wide/16 v16, 0x1388

    :try_start_175
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V

    .line 359
    const-string/jumbo v15, "XcapClient"

    const-string/jumbo v16, "retry once"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_181
    .catch Ljava/lang/InterruptedException; {:try_start_175 .. :try_end_181} :catch_183

    goto/16 :goto_48

    .line 361
    :catch_183
    move-exception v4

    .line 362
    .local v4, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_48

    .line 285
    .end local v4    # "e":Ljava/lang/InterruptedException;
    .end local v9    # "responseCode":I
    .end local v10    # "responseMessage":Ljava/lang/String;
    :cond_189
    :try_start_189
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v15

    check-cast v15, Ljava/net/HttpURLConnection;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/mediatek/xcap/client/XcapClient;->mConnection:Ljava/net/HttpURLConnection;
    :try_end_193
    .catch Ljava/net/MalformedURLException; {:try_start_189 .. :try_end_193} :catch_195
    .catch Ljava/net/ProtocolException; {:try_start_189 .. :try_end_193} :catch_1db
    .catch Ljava/io/IOException; {:try_start_189 .. :try_end_193} :catch_248
    .catchall {:try_start_189 .. :try_end_193} :catchall_19a

    goto/16 :goto_8e

    .line 337
    :catch_195
    move-exception v5

    .line 338
    .local v5, "e":Ljava/net/MalformedURLException;
    :try_start_196
    invoke-virtual {v5}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 339
    throw v5
    :try_end_19a
    .catchall {:try_start_196 .. :try_end_19a} :catchall_19a

    .line 353
    .end local v5    # "e":Ljava/net/MalformedURLException;
    :catchall_19a
    move-exception v15

    .line 354
    if-nez v13, :cond_1af

    .line 356
    add-int/lit8 v14, v14, -0x1

    .line 357
    if-lez v14, :cond_1af

    .line 358
    const-wide/16 v16, 0x1388

    :try_start_1a3
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V

    .line 359
    const-string/jumbo v16, "XcapClient"

    const-string/jumbo v17, "retry once"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1af
    .catch Ljava/lang/InterruptedException; {:try_start_1a3 .. :try_end_1af} :catch_291

    .line 353
    :cond_1af
    :goto_1af
    throw v15

    .line 307
    :cond_1b0
    :try_start_1b0
    const-string/jumbo v15, "GET"

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_117

    .line 308
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/xcap/client/XcapClient;->mConnection:Ljava/net/HttpURLConnection;

    const-string/jumbo v16, "GET"

    invoke-virtual/range {v15 .. v16}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 309
    const-string/jumbo v15, "XcapClient"

    const/16 v16, 0x3

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v15

    if-eqz v15, :cond_117

    .line 310
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/xcap/client/XcapClient;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/xcap/client/XcapClient;->logRequestHeaders(Ljava/net/HttpURLConnection;)V
    :try_end_1d9
    .catch Ljava/net/MalformedURLException; {:try_start_1b0 .. :try_end_1d9} :catch_195
    .catch Ljava/net/ProtocolException; {:try_start_1b0 .. :try_end_1d9} :catch_1db
    .catch Ljava/io/IOException; {:try_start_1b0 .. :try_end_1d9} :catch_248
    .catchall {:try_start_1b0 .. :try_end_1d9} :catchall_19a

    goto/16 :goto_117

    .line 340
    :catch_1db
    move-exception v6

    .line 341
    .local v6, "e":Ljava/net/ProtocolException;
    :try_start_1dc
    invoke-virtual {v6}, Ljava/net/ProtocolException;->printStackTrace()V

    .line 342
    throw v6
    :try_end_1e0
    .catchall {:try_start_1dc .. :try_end_1e0} :catchall_19a

    .line 323
    .end local v6    # "e":Ljava/net/ProtocolException;
    .restart local v9    # "responseCode":I
    .restart local v10    # "responseMessage":Ljava/lang/String;
    :cond_1e0
    const/16 v15, 0x130

    if-eq v9, v15, :cond_16c

    .line 324
    const/16 v15, 0x19c

    if-eq v9, v15, :cond_16c

    .line 327
    const/16 v15, 0x199

    if-ne v9, v15, :cond_23e

    .line 328
    :try_start_1ec
    const-string/jumbo v15, "true"

    const-string/jumbo v16, "xcap.handl409"

    invoke-static/range {v16 .. v16}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1f9
    .catch Ljava/net/MalformedURLException; {:try_start_1ec .. :try_end_1f9} :catch_195
    .catch Ljava/net/ProtocolException; {:try_start_1ec .. :try_end_1f9} :catch_1db
    .catch Ljava/io/IOException; {:try_start_1ec .. :try_end_1f9} :catch_248
    .catchall {:try_start_1ec .. :try_end_1f9} :catchall_19a

    move-result v15

    if-eqz v15, :cond_219

    .line 329
    const/4 v13, 0x1

    .line 354
    if-nez v13, :cond_48

    .line 356
    add-int/lit8 v14, v14, -0x1

    .line 357
    if-lez v14, :cond_48

    .line 358
    const-wide/16 v16, 0x1388

    :try_start_205
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V

    .line 359
    const-string/jumbo v15, "XcapClient"

    const-string/jumbo v16, "retry once"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_211
    .catch Ljava/lang/InterruptedException; {:try_start_205 .. :try_end_211} :catch_213

    goto/16 :goto_48

    .line 361
    :catch_213
    move-exception v4

    .line 362
    .restart local v4    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_48

    .line 332
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :cond_219
    :try_start_219
    const-string/jumbo v15, "XcapClient"

    const-string/jumbo v16, "HTTP status code is not 200 or 403"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_222
    .catch Ljava/net/MalformedURLException; {:try_start_219 .. :try_end_222} :catch_195
    .catch Ljava/net/ProtocolException; {:try_start_219 .. :try_end_222} :catch_1db
    .catch Ljava/io/IOException; {:try_start_219 .. :try_end_222} :catch_248
    .catchall {:try_start_219 .. :try_end_222} :catchall_19a

    .line 354
    :goto_222
    if-nez v13, :cond_44

    .line 356
    add-int/lit8 v14, v14, -0x1

    .line 357
    if-lez v14, :cond_44

    .line 358
    const-wide/16 v16, 0x1388

    :try_start_22a
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V

    .line 359
    const-string/jumbo v15, "XcapClient"

    const-string/jumbo v16, "retry once"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_236
    .catch Ljava/lang/InterruptedException; {:try_start_22a .. :try_end_236} :catch_238

    goto/16 :goto_44

    .line 361
    :catch_238
    move-exception v4

    .line 362
    .restart local v4    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_44

    .line 335
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :cond_23e
    :try_start_23e
    const-string/jumbo v15, "XcapClient"

    const-string/jumbo v16, "HTTP status code is not 200 or 403 or 409"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_247
    .catch Ljava/net/MalformedURLException; {:try_start_23e .. :try_end_247} :catch_195
    .catch Ljava/net/ProtocolException; {:try_start_23e .. :try_end_247} :catch_1db
    .catch Ljava/io/IOException; {:try_start_23e .. :try_end_247} :catch_248
    .catchall {:try_start_23e .. :try_end_247} :catchall_19a

    goto :goto_222

    .line 343
    .end local v9    # "responseCode":I
    .end local v10    # "responseMessage":Ljava/lang/String;
    :catch_248
    move-exception v3

    .line 344
    .local v3, "e":Ljava/io/IOException;
    :try_start_249
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 345
    const-string/jumbo v15, "XcapClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "gba.auth:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "gba.auth"

    invoke-static/range {v17 .. v17}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const-string/jumbo v15, "403"

    const-string/jumbo v16, "gba.auth"

    invoke-static/range {v16 .. v16}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_290

    .line 347
    const/4 v13, 0x1

    .line 348
    const-string/jumbo v15, "gba.auth"

    const-string/jumbo v16, ""

    invoke-static/range {v15 .. v16}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 349
    new-instance v15, Ljava/io/IOException;

    const-string/jumbo v16, "GBA Authentication hit HTTP 403 Forbidden"

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 351
    :cond_290
    throw v3
    :try_end_291
    .catchall {:try_start_249 .. :try_end_291} :catchall_19a

    .line 361
    .end local v3    # "e":Ljava/io/IOException;
    :catch_291
    move-exception v4

    .line 362
    .restart local v4    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1af
.end method

.method private initialize()V
    .registers 1

    .prologue
    .line 188
    return-void
.end method

.method private logRequestHeaders(Ljava/net/HttpURLConnection;)V
    .registers 12
    .param p1, "connection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 216
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v2

    .line 218
    .local v2, "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string/jumbo v7, "XcapClient"

    const-string/jumbo v8, "Request Headers:"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 221
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 222
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 223
    .local v6, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v6, :cond_15

    .line 224
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "value$iterator":Ljava/util/Iterator;
    :goto_33
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 225
    .local v4, "value":Ljava/lang/String;
    const-string/jumbo v7, "XcapClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 215
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "value$iterator":Ljava/util/Iterator;
    .end local v6    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5e
    return-void
.end method

.method private logResponseHeaders(Ljava/net/HttpURLConnection;)V
    .registers 12
    .param p1, "connection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 232
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    .line 234
    .local v2, "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string/jumbo v7, "XcapClient"

    const-string/jumbo v8, "Response Headers:"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 237
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 238
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 239
    .local v6, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v6, :cond_15

    .line 240
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "value$iterator":Ljava/util/Iterator;
    :goto_33
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 241
    .local v4, "value":Ljava/lang/String;
    const-string/jumbo v7, "XcapClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 231
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "value$iterator":Ljava/util/Iterator;
    .end local v6    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5e
    return-void
.end method


# virtual methods
.method public delete(Ljava/net/URI;)Ljava/net/HttpURLConnection;
    .registers 3
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 463
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/mediatek/xcap/client/XcapClient;->delete(Ljava/net/URI;Lcom/android/okhttp/Headers;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public delete(Ljava/net/URI;Lcom/android/okhttp/Headers;)Ljava/net/HttpURLConnection;
    .registers 4
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "additionalRequestHeaders"    # Lcom/android/okhttp/Headers;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 475
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/mediatek/xcap/client/XcapClient;->delete(Ljava/net/URI;Lcom/android/okhttp/Headers;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public delete(Ljava/net/URI;Lcom/android/okhttp/Headers;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .registers 8
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "additionalRequestHeaders"    # Lcom/android/okhttp/Headers;
    .param p3, "eTag"    # Ljava/lang/String;
    .param p4, "condition"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 490
    invoke-virtual {p1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    const-string/jumbo v1, "DELETE"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/mediatek/xcap/client/XcapClient;->execute(Ljava/net/URL;Ljava/lang/String;[BLcom/android/okhttp/Headers;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/net/URI;Lcom/android/okhttp/Headers;)Ljava/net/HttpURLConnection;
    .registers 6
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "additionalRequestHeaders"    # Lcom/android/okhttp/Headers;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 381
    invoke-virtual {p1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    const-string/jumbo v1, "GET"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/mediatek/xcap/client/XcapClient;->execute(Ljava/net/URL;Ljava/lang/String;[BLcom/android/okhttp/Headers;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .registers 11
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "mimetype"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 394
    const-string/jumbo v0, "XcapClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PUT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/xcap/client/XcapClient;->put(Ljava/net/URI;Ljava/lang/String;[BLcom/android/okhttp/Headers;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Lcom/android/okhttp/Headers;)Ljava/net/HttpURLConnection;
    .registers 12
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "mimetype"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "additionalRequestHeaders"    # Lcom/android/okhttp/Headers;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 411
    const-string/jumbo v0, "XcapClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PUT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/xcap/client/XcapClient;->put(Ljava/net/URI;Ljava/lang/String;[BLcom/android/okhttp/Headers;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Lcom/android/okhttp/Headers;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .registers 14
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "mimetype"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "additionalRequestHeaders"    # Lcom/android/okhttp/Headers;
    .param p5, "eTag"    # Ljava/lang/String;
    .param p6, "condition"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 430
    const-string/jumbo v0, "XcapClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PUT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/xcap/client/XcapClient;->put(Ljava/net/URI;Ljava/lang/String;[BLcom/android/okhttp/Headers;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/net/URI;Ljava/lang/String;[BLcom/android/okhttp/Headers;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .registers 11
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "mimetype"    # Ljava/lang/String;
    .param p3, "content"    # [B
    .param p4, "additionalRequestHeaders"    # Lcom/android/okhttp/Headers;
    .param p5, "eTag"    # Ljava/lang/String;
    .param p6, "condition"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 450
    invoke-virtual {p4}, Lcom/android/okhttp/Headers;->newBuilder()Lcom/android/okhttp/Headers$Builder;

    move-result-object v0

    .line 451
    .local v0, "headers":Lcom/android/okhttp/Headers$Builder;
    const-string/jumbo v1, "Content-Type"

    invoke-virtual {v0, v1, p2}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    .line 452
    invoke-virtual {p1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v1

    const-string/jumbo v2, "PUT"

    invoke-virtual {v0}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v3

    invoke-direct {p0, v1, v2, p3, v3}, Lcom/mediatek/xcap/client/XcapClient;->execute(Ljava/net/URL;Ljava/lang/String;[BLcom/android/okhttp/Headers;)Ljava/net/HttpURLConnection;

    move-result-object v1

    return-object v1
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 2
    .param p1, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/mediatek/xcap/client/XcapClient;->mContext:Landroid/content/Context;

    .line 169
    return-void
.end method

.method public shutdown()V
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_9

    .line 197
    iget-object v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 195
    :cond_9
    return-void
.end method
