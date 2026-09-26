.class public abstract Lcom/mediatek/simservs/client/SimservType;
.super Lcom/mediatek/simservs/xcap/InquireType;
.source "SimservType.java"


# static fields
.field static final ATT_ACTIVE:Ljava/lang/String; = "active"

.field public static final TAG:Ljava/lang/String; = "SimservType"


# instance fields
.field public mActived:Z

.field mSsTc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
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
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/simservs/xcap/InquireType;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/SimservType;->mActived:Z

    .line 48
    const-string/jumbo v0, "SimservType"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Xcap debug params: \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimservType;->mDebugParams:Lcom/mediatek/xcap/client/XcapDebugParam;

    invoke-virtual {v2}, Lcom/mediatek/xcap/client/XcapDebugParam;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void
.end method


# virtual methods
.method public abstract initServiceInstance(Lorg/w3c/dom/Document;)V
.end method

.method public isActive()Z
    .registers 2

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/SimservType;->mActived:Z

    return v0
.end method

.method public isSupportEtag()Z
    .registers 2

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/SimservType;->mIsSupportEtag:Z

    return v0
.end method

.method protected loadConfiguration()V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    .line 78
    const-string/jumbo v16, ""

    .line 79
    .local v16, "xmlContent":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/simservs/client/SimservType;->getNodeName()Ljava/lang/String;

    move-result-object v15

    .line 80
    .local v15, "nodeName":Ljava/lang/String;
    const-string/jumbo v17, "SimservType"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "loadConfiguration():nodeName="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-static {}, Lcom/mediatek/xcap/client/XcapDebugParam;->getInstance()Lcom/mediatek/xcap/client/XcapDebugParam;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/xcap/client/XcapDebugParam;->getEnablePredefinedSimservQueryResult()Z

    move-result v17

    if-eqz v17, :cond_15c

    .line 84
    const-string/jumbo v17, "/data/ss.xml"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/SimservType;->readXmlFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 87
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_5d

    .line 89
    const-string/jumbo v17, "SimservType"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "loadConfiguration():fail to get tested xml for nodeName="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void

    .line 92
    :cond_5d
    const-string/jumbo v17, "SimservType"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "loadConfiguration():get tested xml for nodeName="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :goto_79
    sget-boolean v17, Lcom/mediatek/simservs/client/SimServs;->sDebug:Z

    if-eqz v17, :cond_9b

    .line 100
    const-string/jumbo v17, "SimservType"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "xmlContent="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_9b
    if-eqz v16, :cond_15b

    .line 104
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v10

    .line 105
    .local v10, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 106
    invoke-virtual {v10}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4

    .line 107
    .local v4, "db":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v12, Lorg/xml/sax/InputSource;

    invoke-direct {v12}, Lorg/xml/sax/InputSource;-><init>()V

    .line 108
    .local v12, "is":Lorg/xml/sax/InputSource;
    new-instance v17, Ljava/io/StringReader;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 111
    :try_start_bf
    invoke-virtual {v4, v12}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    :try_end_c2
    .catch Lorg/xml/sax/SAXException; {:try_start_bf .. :try_end_c2} :catch_16e
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_c2} :catch_162

    move-result-object v5

    .line 133
    .local v5, "doc":Lorg/w3c/dom/Document;
    :goto_c3
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/simservs/client/SimservType;->getNodeName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 134
    .local v3, "currentNode":Lorg/w3c/dom/NodeList;
    sget-boolean v17, Lcom/mediatek/simservs/client/SimServs;->sDebug:Z

    if-eqz v17, :cond_ef

    .line 135
    const-string/jumbo v17, "SimservType"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "getNodeName()="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/simservs/client/SimservType;->getNodeName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_ef
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v17

    if-lez v17, :cond_1af

    .line 139
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 140
    .local v2, "activeElement":Lorg/w3c/dom/Element;
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v13

    .line 141
    .local v13, "map":Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v13}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v17

    if-lez v17, :cond_134

    .line 142
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_10a
    invoke-interface {v13}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v17

    move/from16 v0, v17

    if-ge v11, v0, :cond_134

    .line 143
    invoke-interface {v13, v11}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    .line 144
    .local v14, "node":Lorg/w3c/dom/Node;
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "active"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1ab

    .line 145
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "true"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/mediatek/simservs/client/SimservType;->mActived:Z

    .line 167
    .end local v2    # "activeElement":Lorg/w3c/dom/Element;
    .end local v11    # "i":I
    .end local v13    # "map":Lorg/w3c/dom/NamedNodeMap;
    .end local v14    # "node":Lorg/w3c/dom/Node;
    :cond_134
    :goto_134
    sget-boolean v17, Lcom/mediatek/simservs/client/SimServs;->sDebug:Z

    if-eqz v17, :cond_156

    .line 168
    const-string/jumbo v17, "SimservType"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "xmldoc="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_156
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/mediatek/simservs/client/SimservType;->initServiceInstance(Lorg/w3c/dom/Document;)V

    .line 77
    .end local v3    # "currentNode":Lorg/w3c/dom/NodeList;
    .end local v4    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v5    # "doc":Lorg/w3c/dom/Document;
    .end local v10    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v12    # "is":Lorg/xml/sax/InputSource;
    :cond_15b
    return-void

    .line 97
    :cond_15c
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/simservs/client/SimservType;->getContent()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_79

    .line 128
    .restart local v4    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v10    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v12    # "is":Lorg/xml/sax/InputSource;
    :catch_162
    move-exception v6

    .line 129
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 131
    new-instance v17, Lcom/mediatek/simservs/xcap/XcapException;

    const/16 v18, 0x1f4

    invoke-direct/range {v17 .. v18}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v17

    .line 112
    .end local v6    # "e":Ljava/io/IOException;
    :catch_16e
    move-exception v7

    .line 113
    .local v7, "e":Lorg/xml/sax/SAXException;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 114
    invoke-virtual {v10}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4

    .line 115
    new-instance v12, Lorg/xml/sax/InputSource;

    .end local v12    # "is":Lorg/xml/sax/InputSource;
    invoke-direct {v12}, Lorg/xml/sax/InputSource;-><init>()V

    .line 116
    .restart local v12    # "is":Lorg/xml/sax/InputSource;
    new-instance v17, Ljava/io/StringReader;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 118
    :try_start_18d
    invoke-virtual {v4, v12}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    :try_end_190
    .catch Lorg/xml/sax/SAXException; {:try_start_18d .. :try_end_190} :catch_19f
    .catch Ljava/io/IOException; {:try_start_18d .. :try_end_190} :catch_193

    move-result-object v5

    .restart local v5    # "doc":Lorg/w3c/dom/Document;
    goto/16 :goto_c3

    .line 123
    .end local v5    # "doc":Lorg/w3c/dom/Document;
    :catch_193
    move-exception v8

    .line 124
    .local v8, "err":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 126
    new-instance v17, Lcom/mediatek/simservs/xcap/XcapException;

    const/16 v18, 0x1f4

    invoke-direct/range {v17 .. v18}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v17

    .line 119
    .end local v8    # "err":Ljava/io/IOException;
    :catch_19f
    move-exception v9

    .line 120
    .local v9, "err":Lorg/xml/sax/SAXException;
    invoke-virtual {v9}, Lorg/xml/sax/SAXException;->printStackTrace()V

    .line 122
    new-instance v17, Lcom/mediatek/simservs/xcap/XcapException;

    const/16 v18, 0x1f4

    invoke-direct/range {v17 .. v18}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v17

    .line 142
    .end local v7    # "e":Lorg/xml/sax/SAXException;
    .end local v9    # "err":Lorg/xml/sax/SAXException;
    .restart local v2    # "activeElement":Lorg/w3c/dom/Element;
    .restart local v3    # "currentNode":Lorg/w3c/dom/NodeList;
    .restart local v5    # "doc":Lorg/w3c/dom/Document;
    .restart local v11    # "i":I
    .restart local v13    # "map":Lorg/w3c/dom/NamedNodeMap;
    .restart local v14    # "node":Lorg/w3c/dom/Node;
    :cond_1ab
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_10a

    .line 151
    .end local v2    # "activeElement":Lorg/w3c/dom/Element;
    .end local v11    # "i":I
    .end local v13    # "map":Lorg/w3c/dom/NamedNodeMap;
    .end local v14    # "node":Lorg/w3c/dom/Node;
    :cond_1af
    const-string/jumbo v17, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/simservs/client/SimservType;->getNodeName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v5, v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 152
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v17

    if-lez v17, :cond_134

    .line 153
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 154
    .restart local v2    # "activeElement":Lorg/w3c/dom/Element;
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v13

    .line 155
    .restart local v13    # "map":Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v13}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v17

    if-lez v17, :cond_134

    .line 156
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_1d9
    invoke-interface {v13}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v17

    move/from16 v0, v17

    if-ge v11, v0, :cond_134

    .line 157
    invoke-interface {v13, v11}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    .line 158
    .restart local v14    # "node":Lorg/w3c/dom/Node;
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "active"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_205

    .line 159
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "true"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/mediatek/simservs/client/SimservType;->mActived:Z

    goto/16 :goto_134

    .line 156
    :cond_205
    add-int/lit8 v11, v11, 0x1

    goto :goto_1d9
.end method

.method public refresh()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/SimservType;->loadConfiguration()V

    .line 56
    return-void
.end method

.method public setActive(Z)V
    .registers 6
    .param p1, "active"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 186
    iput-boolean p1, p0, Lcom/mediatek/simservs/client/SimservType;->mActived:Z

    .line 187
    const/4 v1, 0x0

    .line 188
    .local v1, "xml":Ljava/lang/String;
    const-string/jumbo v2, "xcap.ns.ss"

    const-string/jumbo v3, "false"

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "useXcapNs":Ljava/lang/String;
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 191
    iget-boolean v2, p0, Lcom/mediatek/simservs/client/SimservType;->mActived:Z

    if-eqz v2, :cond_3d

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "<ss:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mediatek/simservs/client/SimservType;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " active=\"true\"/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, "xml":Ljava/lang/String;
    :goto_39
    invoke-virtual {p0, v1}, Lcom/mediatek/simservs/client/SimservType;->setContent(Ljava/lang/String;)V

    .line 185
    .end local v1    # "xml":Ljava/lang/String;
    :goto_3c
    return-void

    .line 194
    .local v1, "xml":Ljava/lang/String;
    :cond_3d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "<ss:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mediatek/simservs/client/SimservType;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " active=\"false\"/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "xml":Ljava/lang/String;
    goto :goto_39

    .line 198
    .local v1, "xml":Ljava/lang/String;
    :cond_5d
    iget-boolean v2, p0, Lcom/mediatek/simservs/client/SimservType;->mActived:Z

    if-eqz v2, :cond_6b

    .line 199
    const-string/jumbo v2, "active"

    const-string/jumbo v3, "true"

    invoke-virtual {p0, v2, v3}, Lcom/mediatek/simservs/client/SimservType;->setByAttrName(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c

    .line 201
    :cond_6b
    const-string/jumbo v2, "active"

    const-string/jumbo v3, "false"

    invoke-virtual {p0, v2, v3}, Lcom/mediatek/simservs/client/SimservType;->setByAttrName(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c
.end method
