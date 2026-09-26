.class public Lcom/mediatek/simservs/capability/DiversionServiceCapability;
.super Lcom/mediatek/simservs/capability/CapabilitiesType;
.source "DiversionServiceCapability.java"


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "communication-diversion-serv-cap"


# instance fields
.field mActionCapabilities:Lcom/mediatek/simservs/capability/ActionCapabilities;

.field mConditionCapabilities:Lcom/mediatek/simservs/capability/ConditionCapabilities;


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "documentUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/simservs/capability/CapabilitiesType;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void
.end method


# virtual methods
.method public getActionCapabilities()Lcom/mediatek/simservs/capability/ActionCapabilities;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mediatek/simservs/capability/DiversionServiceCapability;->mActionCapabilities:Lcom/mediatek/simservs/capability/ActionCapabilities;

    return-object v0
.end method

.method public getConditionCapabilities()Lcom/mediatek/simservs/capability/ConditionCapabilities;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mediatek/simservs/capability/DiversionServiceCapability;->mConditionCapabilities:Lcom/mediatek/simservs/capability/ConditionCapabilities;

    return-object v0
.end method

.method protected getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    const-string/jumbo v0, "communication-diversion-serv-cap"

    return-object v0
.end method

.method public initServiceInstance(Lorg/w3c/dom/Document;)V
    .registers 11
    .param p1, "domDoc"    # Lorg/w3c/dom/Document;

    .prologue
    const/4 v8, 0x0

    .line 61
    const-string/jumbo v4, "serv-cap-actions"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 62
    .local v1, "actionsNode":Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_22

    .line 63
    invoke-interface {v1, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 64
    .local v0, "actionNode":Lorg/w3c/dom/Element;
    new-instance v4, Lcom/mediatek/simservs/capability/ActionCapabilities;

    iget-object v5, p0, Lcom/mediatek/simservs/capability/DiversionServiceCapability;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string/jumbo v6, "communication-diversion-serv-cap"

    iget-object v7, p0, Lcom/mediatek/simservs/capability/DiversionServiceCapability;->mIntendedId:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7, v0}, Lcom/mediatek/simservs/capability/ActionCapabilities;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Node;)V

    iput-object v4, p0, Lcom/mediatek/simservs/capability/DiversionServiceCapability;->mActionCapabilities:Lcom/mediatek/simservs/capability/ActionCapabilities;

    .line 68
    .end local v0    # "actionNode":Lorg/w3c/dom/Element;
    :cond_22
    const-string/jumbo v4, "serv-cap-conditions"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 69
    .local v3, "conditionsNode":Lorg/w3c/dom/NodeList;
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_43

    .line 70
    invoke-interface {v3, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 71
    .local v2, "conditionNode":Lorg/w3c/dom/Element;
    new-instance v4, Lcom/mediatek/simservs/capability/ConditionCapabilities;

    iget-object v5, p0, Lcom/mediatek/simservs/capability/DiversionServiceCapability;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string/jumbo v6, "communication-diversion-serv-cap"

    iget-object v7, p0, Lcom/mediatek/simservs/capability/DiversionServiceCapability;->mIntendedId:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7, v2}, Lcom/mediatek/simservs/capability/ConditionCapabilities;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Node;)V

    iput-object v4, p0, Lcom/mediatek/simservs/capability/DiversionServiceCapability;->mConditionCapabilities:Lcom/mediatek/simservs/capability/ConditionCapabilities;

    .line 60
    .end local v2    # "conditionNode":Lorg/w3c/dom/Element;
    :cond_43
    return-void
.end method
