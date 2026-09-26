.class public Lcom/mediatek/simservs/capability/BarringServiceCapability;
.super Lcom/mediatek/simservs/capability/CapabilitiesType;
.source "BarringServiceCapability.java"


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "communication-barring-serv-cap"


# instance fields
.field mConditionCapabilities:Lcom/mediatek/simservs/capability/ConditionCapabilities;


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
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/simservs/capability/CapabilitiesType;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getConditionCapabilities()Lcom/mediatek/simservs/capability/ConditionCapabilities;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mediatek/simservs/capability/BarringServiceCapability;->mConditionCapabilities:Lcom/mediatek/simservs/capability/ConditionCapabilities;

    return-object v0
.end method

.method protected getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    const-string/jumbo v0, "communication-barring-serv-cap"

    return-object v0
.end method

.method public initServiceInstance(Lorg/w3c/dom/Document;)V
    .registers 8
    .param p1, "domDoc"    # Lorg/w3c/dom/Document;

    .prologue
    const/4 v3, 0x0

    .line 48
    const-string/jumbo v2, "serv-cap-conditions"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 49
    .local v1, "conditionsNode":Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_22

    .line 50
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 51
    .local v0, "conditionNode":Lorg/w3c/dom/Element;
    new-instance v2, Lcom/mediatek/simservs/capability/ConditionCapabilities;

    iget-object v3, p0, Lcom/mediatek/simservs/capability/BarringServiceCapability;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string/jumbo v4, "communication-barring-serv-cap"

    iget-object v5, p0, Lcom/mediatek/simservs/capability/BarringServiceCapability;->mIntendedId:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/mediatek/simservs/capability/ConditionCapabilities;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Node;)V

    iput-object v2, p0, Lcom/mediatek/simservs/capability/BarringServiceCapability;->mConditionCapabilities:Lcom/mediatek/simservs/capability/ConditionCapabilities;

    .line 47
    .end local v0    # "conditionNode":Lorg/w3c/dom/Element;
    :cond_22
    return-void
.end method
