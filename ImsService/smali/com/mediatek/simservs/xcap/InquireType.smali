.class public abstract Lcom/mediatek/simservs/xcap/InquireType;
.super Lcom/mediatek/simservs/xcap/XcapElement;
.source "InquireType.java"


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 48
    const/4 v10, 0x0

    .line 49
    .local v10, "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    const/4 v0, 0x0

    .line 50
    .local v0, "conn":Ljava/net/HttpURLConnection;
    const/4 v8, 0x0

    .line 51
    .local v8, "ret":Ljava/lang/String;
    new-instance v5, Lcom/android/okhttp/Headers$Builder;

    invoke-direct {v5}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    .line 54
    .local v5, "headers":Lcom/android/okhttp/Headers$Builder;
    :try_start_8
    invoke-virtual {p0}, Lcom/mediatek/simservs/xcap/InquireType;->getNodeUri()Ljava/net/URI;

    move-result-object v12

    invoke-virtual {v12}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v7

    .line 55
    .local v7, "nodeUri":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/xcap/client/XcapDebugParam;->getInstance()Lcom/mediatek/xcap/client/XcapDebugParam;

    move-result-object v1

    .line 57
    .local v1, "debugParam":Lcom/mediatek/xcap/client/XcapDebugParam;
    invoke-virtual {v1}, Lcom/mediatek/xcap/client/XcapDebugParam;->getEnableSimservQueryWhole()Z

    move-result v12

    if-eqz v12, :cond_2e

    .line 58
    const-string/jumbo v12, "simservs"

    invoke-virtual {v7, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    .line 59
    const-string/jumbo v13, "simservs"

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    .line 58
    add-int/2addr v12, v13

    const/4 v13, 0x0

    invoke-virtual {v7, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 62
    :cond_2e
    new-instance v9, Ljava/net/URI;

    invoke-direct {v9, v7}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 64
    .local v9, "uri":Ljava/net/URI;
    iget-object v12, p0, Lcom/mediatek/simservs/xcap/InquireType;->mNetwork:Landroid/net/Network;

    if-eqz v12, :cond_58

    .line 65
    new-instance v11, Lcom/mediatek/xcap/client/XcapClient;

    iget-object v12, p0, Lcom/mediatek/simservs/xcap/InquireType;->mNetwork:Landroid/net/Network;

    invoke-direct {v11, v12}, Lcom/mediatek/xcap/client/XcapClient;-><init>(Landroid/net/Network;)V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_3e} :catch_11f
    .catch Ljava/net/URISyntaxException; {:try_start_8 .. :try_end_3e} :catch_129
    .catchall {:try_start_8 .. :try_end_3e} :catchall_53

    .line 67
    .local v11, "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    if-nez v11, :cond_18a

    .line 68
    .end local v10    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :try_start_40
    new-instance v12, Lcom/mediatek/simservs/xcap/XcapException;

    const/16 v13, 0x1f4

    invoke-direct {v12, v13}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v12
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_48} :catch_48
    .catch Ljava/net/URISyntaxException; {:try_start_40 .. :try_end_48} :catch_187
    .catchall {:try_start_40 .. :try_end_48} :catchall_183

    .line 133
    :catch_48
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    move-object v10, v11

    .line 134
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v1    # "debugParam":Lcom/mediatek/xcap/client/XcapDebugParam;
    .end local v7    # "nodeUri":Ljava/lang/String;
    .end local v8    # "ret":Ljava/lang/String;
    .end local v9    # "uri":Ljava/net/URI;
    .end local v11    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :goto_4a
    :try_start_4a
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 135
    new-instance v12, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-direct {v12, v2}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(Ljava/io/IOException;)V

    throw v12
    :try_end_53
    .catchall {:try_start_4a .. :try_end_53} :catchall_53

    .line 138
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_53
    move-exception v12

    .line 139
    :goto_54
    invoke-virtual {v10}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    .line 138
    throw v12

    .line 71
    .restart local v0    # "conn":Ljava/net/HttpURLConnection;
    .restart local v1    # "debugParam":Lcom/mediatek/xcap/client/XcapDebugParam;
    .restart local v7    # "nodeUri":Ljava/lang/String;
    .restart local v8    # "ret":Ljava/lang/String;
    .restart local v9    # "uri":Ljava/net/URI;
    .restart local v10    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :cond_58
    :try_start_58
    new-instance v11, Lcom/mediatek/xcap/client/XcapClient;

    invoke-direct {v11}, Lcom/mediatek/xcap/client/XcapClient;-><init>()V

    .restart local v11    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    move-object v10, v11

    .line 74
    .end local v11    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .local v10, "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :goto_5e
    iget-object v12, p0, Lcom/mediatek/simservs/xcap/InquireType;->mIntendedId:Ljava/lang/String;

    if-eqz v12, :cond_f6

    iget-object v12, p0, Lcom/mediatek/simservs/xcap/InquireType;->mEtag:Ljava/lang/String;

    if-eqz v12, :cond_f6

    .line 75
    const-string/jumbo v12, "X-3GPP-Intended-Identity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "\""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/mediatek/simservs/xcap/InquireType;->mIntendedId:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    .line 76
    const-string/jumbo v12, "If-None-Match"

    iget-object v13, p0, Lcom/mediatek/simservs/xcap/InquireType;->mEtag:Ljava/lang/String;

    invoke-virtual {v5, v12, v13}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    .line 81
    :cond_91
    :goto_91
    iget-object v12, p0, Lcom/mediatek/simservs/xcap/InquireType;->mContext:Landroid/content/Context;

    if-eqz v12, :cond_9a

    .line 82
    iget-object v12, p0, Lcom/mediatek/simservs/xcap/InquireType;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v12}, Lcom/mediatek/xcap/client/XcapClient;->setContext(Landroid/content/Context;)V

    .line 84
    :cond_9a
    invoke-virtual {v5}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v12

    invoke-virtual {v10, v9, v12}, Lcom/mediatek/xcap/client/XcapClient;->get(Ljava/net/URI;Lcom/android/okhttp/Headers;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 86
    .local v0, "conn":Ljava/net/HttpURLConnection;
    if-eqz v0, :cond_d8

    .line 87
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v12

    const/16 v13, 0xc8

    if-eq v12, v13, :cond_b4

    .line 88
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v12

    const/16 v13, 0x130

    if-ne v12, v13, :cond_138

    .line 89
    :cond_b4
    const-string/jumbo v12, "ETag"

    invoke-virtual {v0, v12}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 91
    .local v4, "etagValue":Ljava/lang/String;
    if-eqz v4, :cond_122

    .line 92
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/mediatek/simservs/xcap/InquireType;->mIsSupportEtag:Z

    .line 93
    iput-object v4, p0, Lcom/mediatek/simservs/xcap/InquireType;->mEtag:Ljava/lang/String;

    .line 99
    :goto_c2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_c5} :catch_11f
    .catch Ljava/net/URISyntaxException; {:try_start_58 .. :try_end_c5} :catch_129
    .catchall {:try_start_58 .. :try_end_c5} :catchall_53

    move-result v12

    const/16 v13, 0xc8

    if-ne v12, v13, :cond_d8

    .line 100
    const/4 v6, 0x0

    .line 102
    .local v6, "is":Ljava/io/InputStream;
    :try_start_cb
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 104
    .local v6, "is":Ljava/io/InputStream;
    invoke-virtual {p0, v6}, Lcom/mediatek/simservs/xcap/InquireType;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_d2
    .catchall {:try_start_cb .. :try_end_d2} :catchall_131

    move-result-object v8

    .line 106
    .local v8, "ret":Ljava/lang/String;
    if-eqz v6, :cond_d8

    .line 107
    :try_start_d5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_d8} :catch_11f
    .catch Ljava/net/URISyntaxException; {:try_start_d5 .. :try_end_d8} :catch_129
    .catchall {:try_start_d5 .. :try_end_d8} :catchall_53

    .line 139
    .end local v4    # "etagValue":Ljava/lang/String;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v8    # "ret":Ljava/lang/String;
    :cond_d8
    invoke-virtual {v10}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    .line 142
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v1    # "debugParam":Lcom/mediatek/xcap/client/XcapDebugParam;
    .end local v7    # "nodeUri":Ljava/lang/String;
    .end local v9    # "uri":Ljava/net/URI;
    .end local v10    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :goto_db
    const-string/jumbo v12, "XcapElement"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Response XML:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-object v8

    .line 77
    .local v0, "conn":Ljava/net/HttpURLConnection;
    .restart local v1    # "debugParam":Lcom/mediatek/xcap/client/XcapDebugParam;
    .restart local v7    # "nodeUri":Ljava/lang/String;
    .local v8, "ret":Ljava/lang/String;
    .restart local v9    # "uri":Ljava/net/URI;
    .restart local v10    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :cond_f6
    :try_start_f6
    iget-object v12, p0, Lcom/mediatek/simservs/xcap/InquireType;->mIntendedId:Ljava/lang/String;

    if-eqz v12, :cond_91

    .line 78
    const-string/jumbo v12, "X-3GPP-Intended-Identity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "\""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/mediatek/simservs/xcap/InquireType;->mIntendedId:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    goto/16 :goto_91

    .line 133
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v1    # "debugParam":Lcom/mediatek/xcap/client/XcapDebugParam;
    .end local v7    # "nodeUri":Ljava/lang/String;
    .end local v8    # "ret":Ljava/lang/String;
    .end local v9    # "uri":Ljava/net/URI;
    .end local v10    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :catch_11f
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_4a

    .line 95
    .end local v2    # "e":Ljava/io/IOException;
    .local v0, "conn":Ljava/net/HttpURLConnection;
    .restart local v1    # "debugParam":Lcom/mediatek/xcap/client/XcapDebugParam;
    .restart local v4    # "etagValue":Ljava/lang/String;
    .restart local v7    # "nodeUri":Ljava/lang/String;
    .restart local v8    # "ret":Ljava/lang/String;
    .restart local v9    # "uri":Ljava/net/URI;
    .restart local v10    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :cond_122
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/mediatek/simservs/xcap/InquireType;->mIsSupportEtag:Z

    .line 96
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/mediatek/simservs/xcap/InquireType;->mEtag:Ljava/lang/String;
    :try_end_128
    .catch Ljava/io/IOException; {:try_start_f6 .. :try_end_128} :catch_11f
    .catch Ljava/net/URISyntaxException; {:try_start_f6 .. :try_end_128} :catch_129
    .catchall {:try_start_f6 .. :try_end_128} :catchall_53

    goto :goto_c2

    .line 136
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v1    # "debugParam":Lcom/mediatek/xcap/client/XcapDebugParam;
    .end local v4    # "etagValue":Ljava/lang/String;
    .end local v7    # "nodeUri":Ljava/lang/String;
    .end local v8    # "ret":Ljava/lang/String;
    .end local v9    # "uri":Ljava/net/URI;
    .end local v10    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :catch_129
    move-exception v3

    .line 137
    .local v3, "e":Ljava/net/URISyntaxException;
    :goto_12a
    :try_start_12a
    invoke-virtual {v3}, Ljava/net/URISyntaxException;->printStackTrace()V
    :try_end_12d
    .catchall {:try_start_12a .. :try_end_12d} :catchall_53

    .line 139
    invoke-virtual {v10}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    goto :goto_db

    .line 105
    .end local v3    # "e":Ljava/net/URISyntaxException;
    .restart local v0    # "conn":Ljava/net/HttpURLConnection;
    .restart local v1    # "debugParam":Lcom/mediatek/xcap/client/XcapDebugParam;
    .restart local v4    # "etagValue":Ljava/lang/String;
    .restart local v7    # "nodeUri":Ljava/lang/String;
    .restart local v8    # "ret":Ljava/lang/String;
    .restart local v9    # "uri":Ljava/net/URI;
    .restart local v10    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :catchall_131
    move-exception v12

    .line 106
    if-eqz v6, :cond_137

    .line 107
    :try_start_134
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 105
    :cond_137
    throw v12

    .line 111
    .end local v4    # "etagValue":Ljava/lang/String;
    :cond_138
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v12

    const/16 v13, 0x199

    if-ne v12, v13, :cond_178

    .line 112
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 114
    .restart local v6    # "is":Ljava/io/InputStream;
    if-eqz v6, :cond_16f

    .line 115
    const-string/jumbo v12, "true"

    .line 116
    const-string/jumbo v13, "xcap.handl409"

    invoke-static {v13}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 115
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_166

    .line 117
    const/4 v8, 0x0

    .line 118
    new-instance v12, Lcom/mediatek/simservs/xcap/XcapException;

    .line 119
    const-string/jumbo v13, "phrase"

    invoke-virtual {p0, v13, v6}, Lcom/mediatek/simservs/xcap/InquireType;->parse409ErrorMessage(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v13

    .line 118
    const/16 v14, 0x199

    invoke-direct {v12, v14, v13}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(ILjava/lang/String;)V

    throw v12

    .line 121
    :cond_166
    const/4 v8, 0x0

    .line 122
    new-instance v12, Lcom/mediatek/simservs/xcap/XcapException;

    const/16 v13, 0x199

    invoke-direct {v12, v13}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v12

    .line 125
    :cond_16f
    const/4 v8, 0x0

    .line 126
    new-instance v12, Lcom/mediatek/simservs/xcap/XcapException;

    const/16 v13, 0x199

    invoke-direct {v12, v13}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v12

    .line 129
    .end local v6    # "is":Ljava/io/InputStream;
    :cond_178
    const/4 v8, 0x0

    .line 130
    new-instance v12, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v13

    invoke-direct {v12, v13}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v12
    :try_end_183
    .catch Ljava/io/IOException; {:try_start_134 .. :try_end_183} :catch_11f
    .catch Ljava/net/URISyntaxException; {:try_start_134 .. :try_end_183} :catch_129
    .catchall {:try_start_134 .. :try_end_183} :catchall_53

    .line 138
    .end local v10    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .local v0, "conn":Ljava/net/HttpURLConnection;
    .restart local v11    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :catchall_183
    move-exception v12

    move-object v10, v11

    .end local v11    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v10    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    goto/16 :goto_54

    .line 136
    .end local v10    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v11    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :catch_187
    move-exception v3

    .restart local v3    # "e":Ljava/net/URISyntaxException;
    move-object v10, v11

    .end local v11    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v10    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    goto :goto_12a

    .end local v3    # "e":Ljava/net/URISyntaxException;
    .end local v10    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v11    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :cond_18a
    move-object v10, v11

    .end local v11    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v10    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    goto/16 :goto_5e
.end method
