.class public abstract Lcom/mediatek/simservs/capability/CapabilitiesType;
.super Lcom/mediatek/simservs/xcap/InquireType;
.source "CapabilitiesType.java"


# static fields
.field static final ATT_ACTIVE:Ljava/lang/String; = "active"


# instance fields
.field public mActived:Z


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
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
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/simservs/xcap/InquireType;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/CapabilitiesType;->mActived:Z

    .line 45
    invoke-direct {p0}, Lcom/mediatek/simservs/capability/CapabilitiesType;->loadConfiguration()V

    .line 43
    return-void
.end method

.method private loadConfiguration()V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x1f4

    const/4 v12, 0x0

    .line 55
    invoke-virtual {p0}, Lcom/mediatek/simservs/capability/CapabilitiesType;->getContent()Ljava/lang/String;

    move-result-object v10

    .line 56
    .local v10, "xmlContent":Ljava/lang/String;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v11

    invoke-virtual {v11}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 57
    .local v2, "db":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v7, Lorg/xml/sax/InputSource;

    invoke-direct {v7}, Lorg/xml/sax/InputSource;-><init>()V

    .line 58
    .local v7, "is":Lorg/xml/sax/InputSource;
    new-instance v11, Ljava/io/StringReader;

    invoke-direct {v11, v10}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 61
    :try_start_1c
    invoke-virtual {v2, v7}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    :try_end_1f
    .catch Lorg/xml/sax/SAXException; {:try_start_1c .. :try_end_1f} :catch_71
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_67

    move-result-object v3

    .line 71
    .local v3, "doc":Lorg/w3c/dom/Document;
    invoke-virtual {p0}, Lcom/mediatek/simservs/capability/CapabilitiesType;->getNodeName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v11}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 73
    .local v1, "currentNode":Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-lez v11, :cond_63

    .line 74
    invoke-interface {v1, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 75
    .local v0, "activeElement":Lorg/w3c/dom/Element;
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v8

    .line 76
    .local v8, "map":Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v8}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v11

    if-lez v11, :cond_63

    .line 77
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3f
    invoke-interface {v8}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v11

    if-ge v6, v11, :cond_63

    .line 78
    invoke-interface {v8, v6}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 79
    .local v9, "node":Lorg/w3c/dom/Node;
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "active"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7b

    .line 80
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "true"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/mediatek/simservs/capability/CapabilitiesType;->mActived:Z

    .line 86
    .end local v0    # "activeElement":Lorg/w3c/dom/Element;
    .end local v6    # "i":I
    .end local v8    # "map":Lorg/w3c/dom/NamedNodeMap;
    .end local v9    # "node":Lorg/w3c/dom/Node;
    :cond_63
    invoke-virtual {p0, v3}, Lcom/mediatek/simservs/capability/CapabilitiesType;->initServiceInstance(Lorg/w3c/dom/Document;)V

    .line 54
    return-void

    .line 66
    .end local v1    # "currentNode":Lorg/w3c/dom/NodeList;
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    :catch_67
    move-exception v4

    .line 67
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 69
    new-instance v11, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-direct {v11, v13}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v11

    .line 62
    .end local v4    # "e":Ljava/io/IOException;
    :catch_71
    move-exception v5

    .line 63
    .local v5, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v5}, Lorg/xml/sax/SAXException;->printStackTrace()V

    .line 65
    new-instance v11, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-direct {v11, v13}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v11

    .line 77
    .end local v5    # "e":Lorg/xml/sax/SAXException;
    .restart local v0    # "activeElement":Lorg/w3c/dom/Element;
    .restart local v1    # "currentNode":Lorg/w3c/dom/NodeList;
    .restart local v3    # "doc":Lorg/w3c/dom/Document;
    .restart local v6    # "i":I
    .restart local v8    # "map":Lorg/w3c/dom/NamedNodeMap;
    .restart local v9    # "node":Lorg/w3c/dom/Node;
    :cond_7b
    add-int/lit8 v6, v6, 0x1

    goto :goto_3f
.end method


# virtual methods
.method public abstract initServiceInstance(Lorg/w3c/dom/Document;)V
.end method

.method public isActive()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 96
    const-string/jumbo v1, "active"

    invoke-virtual {p0, v1}, Lcom/mediatek/simservs/capability/CapabilitiesType;->getByAttrName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_b

    .line 98
    const/4 v1, 0x1

    return v1

    .line 100
    :cond_b
    const-string/jumbo v1, "active"

    invoke-virtual {p0, v1}, Lcom/mediatek/simservs/capability/CapabilitiesType;->getByAttrName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public setActive(Z)V
    .registers 4
    .param p1, "active"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 111
    if-eqz p1, :cond_c

    .line 112
    const-string/jumbo v0, "active"

    const-string/jumbo v1, "true"

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/simservs/capability/CapabilitiesType;->setByAttrName(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :goto_b
    return-void

    .line 114
    :cond_c
    const-string/jumbo v0, "active"

    const-string/jumbo v1, "false"

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/simservs/capability/CapabilitiesType;->setByAttrName(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method
