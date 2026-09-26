.class public Lcom/mediatek/simservs/capability/MediaConditions;
.super Lcom/mediatek/simservs/xcap/XcapElement;
.source "MediaConditions.java"

# interfaces
.implements Lcom/mediatek/simservs/xcap/ConfigureType;


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "serv-cap-media"

.field static final TAG_MEDIA:Ljava/lang/String; = "media"


# instance fields
.field mMedias:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V
    .registers 5
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .param p4, "domElement"    # Lorg/w3c/dom/Element;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0, p4}, Lcom/mediatek/simservs/capability/MediaConditions;->instantiateFromXmlNode(Lorg/w3c/dom/Node;)V

    .line 45
    return-void
.end method


# virtual methods
.method public getMedias()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mediatek/simservs/capability/MediaConditions;->mMedias:Ljava/util/List;

    return-object v0
.end method

.method protected getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    const-string/jumbo v0, "serv-cap-media"

    return-object v0
.end method

.method public instantiateFromXmlNode(Lorg/w3c/dom/Node;)V
    .registers 8
    .param p1, "domNode"    # Lorg/w3c/dom/Node;

    .prologue
    move-object v0, p1

    .line 52
    check-cast v0, Lorg/w3c/dom/Element;

    .line 53
    .local v0, "domElement":Lorg/w3c/dom/Element;
    const-string/jumbo v4, "media"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 54
    .local v3, "mediasNode":Lorg/w3c/dom/NodeList;
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/mediatek/simservs/capability/MediaConditions;->mMedias:Ljava/util/List;

    .line 55
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v1, v4, :cond_2a

    .line 56
    invoke-interface {v3, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 57
    .local v2, "mediaElement":Lorg/w3c/dom/Element;
    iget-object v4, p0, Lcom/mediatek/simservs/capability/MediaConditions;->mMedias:Ljava/util/List;

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 51
    .end local v2    # "mediaElement":Lorg/w3c/dom/Element;
    :cond_2a
    return-void
.end method
