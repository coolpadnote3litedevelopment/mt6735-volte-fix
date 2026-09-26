.class public Lcom/mediatek/simservs/client/policy/Rule;
.super Lcom/mediatek/simservs/xcap/XcapElement;
.source "Rule.java"

# interfaces
.implements Lcom/mediatek/simservs/xcap/ConfigureType;


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "cp:rule"

.field public static final NODE_XML_NAMESPACE:Ljava/lang/String; = "?xmlns(cp=urn:ietf:params:xml:ns:common-policy)"


# instance fields
.field public mActions:Lcom/mediatek/simservs/client/policy/Actions;

.field public mConditions:Lcom/mediatek/simservs/client/policy/Conditions;

.field public mId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string/jumbo v0, "none"

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V
    .registers 6
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .param p4, "domElement"    # Lorg/w3c/dom/Element;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string/jumbo v0, "none"

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    .line 59
    invoke-virtual {p0, p4}, Lcom/mediatek/simservs/client/policy/Rule;->instantiateFromXmlNode(Lorg/w3c/dom/Node;)V

    .line 57
    return-void
.end method


# virtual methods
.method public createActions()Lcom/mediatek/simservs/client/policy/Actions;
    .registers 5

    .prologue
    .line 142
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mActions:Lcom/mediatek/simservs/client/policy/Actions;

    if-nez v0, :cond_12

    .line 143
    new-instance v0, Lcom/mediatek/simservs/client/policy/Actions;

    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/Rule;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string/jumbo v2, "cp:rule"

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Rule;->mIntendedId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/simservs/client/policy/Actions;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mActions:Lcom/mediatek/simservs/client/policy/Actions;

    .line 145
    :cond_12
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mActions:Lcom/mediatek/simservs/client/policy/Actions;

    return-object v0
.end method

.method public createConditions()Lcom/mediatek/simservs/client/policy/Conditions;
    .registers 5

    .prologue
    .line 154
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mConditions:Lcom/mediatek/simservs/client/policy/Conditions;

    if-nez v0, :cond_12

    .line 155
    new-instance v0, Lcom/mediatek/simservs/client/policy/Conditions;

    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/Rule;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string/jumbo v2, "cp:rule"

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Rule;->mIntendedId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/simservs/client/policy/Conditions;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mConditions:Lcom/mediatek/simservs/client/policy/Conditions;

    .line 157
    :cond_12
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mConditions:Lcom/mediatek/simservs/client/policy/Conditions;

    return-object v0
.end method

.method public getActions()Lcom/mediatek/simservs/client/policy/Actions;
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mActions:Lcom/mediatek/simservs/client/policy/Actions;

    return-object v0
.end method

.method public getConditions()Lcom/mediatek/simservs/client/policy/Conditions;
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mConditions:Lcom/mediatek/simservs/client/policy/Conditions;

    return-object v0
.end method

.method protected getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    const-string/jumbo v0, "cp:rule"

    return-object v0
.end method

.method public instantiateFromXmlNode(Lorg/w3c/dom/Node;)V
    .registers 11
    .param p1, "domNode"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v8, 0x0

    move-object v2, p1

    .line 69
    check-cast v2, Lorg/w3c/dom/Element;

    .line 70
    .local v2, "domElement":Lorg/w3c/dom/Element;
    const-string/jumbo v3, "id"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    .line 71
    const-string/jumbo v3, "conditions"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 72
    .local v1, "conditionsNode":Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lez v3, :cond_50

    .line 73
    new-instance v4, Lcom/mediatek/simservs/client/policy/Conditions;

    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/Rule;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string/jumbo v6, "cp:rule"

    iget-object v7, p0, Lcom/mediatek/simservs/client/policy/Rule;->mIntendedId:Ljava/lang/String;

    .line 74
    invoke-interface {v1, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 73
    invoke-direct {v4, v5, v6, v7, v3}, Lcom/mediatek/simservs/client/policy/Conditions;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    iput-object v4, p0, Lcom/mediatek/simservs/client/policy/Rule;->mConditions:Lcom/mediatek/simservs/client/policy/Conditions;

    .line 92
    :goto_2e
    const-string/jumbo v3, "actions"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 93
    .local v0, "actionsNode":Lorg/w3c/dom/NodeList;
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lez v3, :cond_a6

    .line 94
    new-instance v4, Lcom/mediatek/simservs/client/policy/Actions;

    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/Rule;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string/jumbo v6, "cp:rule"

    iget-object v7, p0, Lcom/mediatek/simservs/client/policy/Rule;->mIntendedId:Ljava/lang/String;

    .line 95
    invoke-interface {v0, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 94
    invoke-direct {v4, v5, v6, v7, v3}, Lcom/mediatek/simservs/client/policy/Actions;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    iput-object v4, p0, Lcom/mediatek/simservs/client/policy/Rule;->mActions:Lcom/mediatek/simservs/client/policy/Actions;

    .line 68
    :goto_4f
    return-void

    .line 76
    .end local v0    # "actionsNode":Lorg/w3c/dom/NodeList;
    :cond_50
    const-string/jumbo v3, "urn:ietf:params:xml:ns:common-policy"

    .line 77
    const-string/jumbo v4, "conditions"

    .line 76
    invoke-interface {v2, v3, v4}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 78
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lez v3, :cond_75

    .line 79
    new-instance v4, Lcom/mediatek/simservs/client/policy/Conditions;

    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/Rule;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string/jumbo v6, "cp:rule"

    iget-object v7, p0, Lcom/mediatek/simservs/client/policy/Rule;->mIntendedId:Ljava/lang/String;

    .line 80
    invoke-interface {v1, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 79
    invoke-direct {v4, v5, v6, v7, v3}, Lcom/mediatek/simservs/client/policy/Conditions;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    iput-object v4, p0, Lcom/mediatek/simservs/client/policy/Rule;->mConditions:Lcom/mediatek/simservs/client/policy/Conditions;

    goto :goto_2e

    .line 82
    :cond_75
    const-string/jumbo v3, "cp:conditions"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 83
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lez v3, :cond_97

    .line 84
    new-instance v4, Lcom/mediatek/simservs/client/policy/Conditions;

    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/Rule;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string/jumbo v6, "cp:rule"

    iget-object v7, p0, Lcom/mediatek/simservs/client/policy/Rule;->mIntendedId:Ljava/lang/String;

    .line 85
    invoke-interface {v1, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 84
    invoke-direct {v4, v5, v6, v7, v3}, Lcom/mediatek/simservs/client/policy/Conditions;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    iput-object v4, p0, Lcom/mediatek/simservs/client/policy/Rule;->mConditions:Lcom/mediatek/simservs/client/policy/Conditions;

    goto :goto_2e

    .line 87
    :cond_97
    new-instance v3, Lcom/mediatek/simservs/client/policy/Conditions;

    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/Rule;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string/jumbo v5, "cp:rule"

    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/Rule;->mIntendedId:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6}, Lcom/mediatek/simservs/client/policy/Conditions;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/mediatek/simservs/client/policy/Rule;->mConditions:Lcom/mediatek/simservs/client/policy/Conditions;

    goto :goto_2e

    .line 97
    .restart local v0    # "actionsNode":Lorg/w3c/dom/NodeList;
    :cond_a6
    const-string/jumbo v3, "urn:ietf:params:xml:ns:common-policy"

    const-string/jumbo v4, "actions"

    invoke-interface {v2, v3, v4}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 98
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lez v3, :cond_cb

    .line 99
    new-instance v4, Lcom/mediatek/simservs/client/policy/Actions;

    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/Rule;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string/jumbo v6, "cp:rule"

    iget-object v7, p0, Lcom/mediatek/simservs/client/policy/Rule;->mIntendedId:Ljava/lang/String;

    .line 100
    invoke-interface {v0, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 99
    invoke-direct {v4, v5, v6, v7, v3}, Lcom/mediatek/simservs/client/policy/Actions;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    iput-object v4, p0, Lcom/mediatek/simservs/client/policy/Rule;->mActions:Lcom/mediatek/simservs/client/policy/Actions;

    goto :goto_4f

    .line 102
    :cond_cb
    const-string/jumbo v3, "cp:actions"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 103
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lez v3, :cond_ee

    .line 104
    new-instance v4, Lcom/mediatek/simservs/client/policy/Actions;

    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/Rule;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string/jumbo v6, "cp:rule"

    iget-object v7, p0, Lcom/mediatek/simservs/client/policy/Rule;->mIntendedId:Ljava/lang/String;

    .line 105
    invoke-interface {v0, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 104
    invoke-direct {v4, v5, v6, v7, v3}, Lcom/mediatek/simservs/client/policy/Actions;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    iput-object v4, p0, Lcom/mediatek/simservs/client/policy/Rule;->mActions:Lcom/mediatek/simservs/client/policy/Actions;

    goto/16 :goto_4f

    .line 107
    :cond_ee
    new-instance v3, Lcom/mediatek/simservs/client/policy/Actions;

    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/Rule;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string/jumbo v5, "cp:rule"

    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/Rule;->mIntendedId:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6}, Lcom/mediatek/simservs/client/policy/Actions;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/mediatek/simservs/client/policy/Rule;->mActions:Lcom/mediatek/simservs/client/policy/Actions;

    goto/16 :goto_4f
.end method

.method public setContent(Ljava/lang/String;)V
    .registers 7
    .param p1, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 181
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Rule;->getNodeUri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/simservs/client/policy/Rule;->mNodeUri:Ljava/lang/String;

    .line 183
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Rule;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "cp:rule"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mediatek/simservs/client/policy/Rule;->mNodeUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "%5b@id=%22"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    const-string/jumbo v3, " "

    const-string/jumbo v4, "%20"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 186
    const-string/jumbo v2, "%22%5d"

    .line 185
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 186
    const-string/jumbo v2, "?xmlns(cp=urn:ietf:params:xml:ns:common-policy)"

    .line 185
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/simservs/client/policy/Rule;->mNodeUri:Ljava/lang/String;

    .line 188
    :cond_4d
    const-string/jumbo v1, "Rule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setContent etag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Rule;->mEtag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-virtual {p0, p1}, Lcom/mediatek/simservs/client/policy/Rule;->saveContent(Ljava/lang/String;)V
    :try_end_6c
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_6c} :catch_6d

    .line 179
    :goto_6c
    return-void

    .line 190
    :catch_6d
    move-exception v0

    .line 191
    .local v0, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_6c
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public toXmlElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .registers 7
    .param p1, "document"    # Lorg/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 121
    const-string/jumbo v3, "cp:rule"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 122
    .local v2, "ruleElement":Lorg/w3c/dom/Element;
    const-string/jumbo v3, "id"

    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Rule;->mConditions:Lcom/mediatek/simservs/client/policy/Conditions;

    if-eqz v3, :cond_1c

    .line 125
    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Rule;->mConditions:Lcom/mediatek/simservs/client/policy/Conditions;

    invoke-virtual {v3, p1}, Lcom/mediatek/simservs/client/policy/Conditions;->toXmlElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 126
    .local v1, "conditionsElement":Lorg/w3c/dom/Element;
    invoke-interface {v2, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 129
    .end local v1    # "conditionsElement":Lorg/w3c/dom/Element;
    :cond_1c
    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Rule;->mActions:Lcom/mediatek/simservs/client/policy/Actions;

    if-eqz v3, :cond_29

    .line 130
    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Rule;->mActions:Lcom/mediatek/simservs/client/policy/Actions;

    invoke-virtual {v3, p1}, Lcom/mediatek/simservs/client/policy/Actions;->toXmlElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 131
    .local v0, "actionsElement":Lorg/w3c/dom/Element;
    invoke-interface {v2, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 133
    .end local v0    # "actionsElement":Lorg/w3c/dom/Element;
    :cond_29
    return-object v2
.end method

.method public toXmlString()Ljava/lang/String;
    .registers 9

    .prologue
    .line 201
    const/4 v6, 0x0

    .line 202
    .local v6, "root":Lorg/w3c/dom/Element;
    const/4 v7, 0x0

    .line 203
    .local v7, "xmlString":Ljava/lang/String;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    .line 205
    .local v4, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_6
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 206
    .local v0, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    .line 207
    .local v1, "document":Lorg/w3c/dom/Document;
    invoke-virtual {p0, v1}, Lcom/mediatek/simservs/client/policy/Rule;->toXmlElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v6

    .line 208
    .local v6, "root":Lorg/w3c/dom/Element;
    invoke-interface {v1, v6}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 209
    invoke-virtual {p0, v6}, Lcom/mediatek/simservs/client/policy/Rule;->domToXmlText(Lorg/w3c/dom/Element;)Ljava/lang/String;
    :try_end_18
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_6 .. :try_end_18} :catch_24
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_6 .. :try_end_18} :catch_1f
    .catch Ljavax/xml/transform/TransformerException; {:try_start_6 .. :try_end_18} :catch_1a

    move-result-object v7

    .line 218
    .end local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "document":Lorg/w3c/dom/Document;
    .end local v6    # "root":Lorg/w3c/dom/Element;
    .end local v7    # "xmlString":Ljava/lang/String;
    :goto_19
    return-object v7

    .line 215
    .restart local v7    # "xmlString":Ljava/lang/String;
    :catch_1a
    move-exception v3

    .line 216
    .local v3, "e":Ljavax/xml/transform/TransformerException;
    invoke-virtual {v3}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto :goto_19

    .line 213
    .end local v3    # "e":Ljavax/xml/transform/TransformerException;
    :catch_1f
    move-exception v2

    .line 214
    .local v2, "e":Ljavax/xml/transform/TransformerConfigurationException;
    invoke-virtual {v2}, Ljavax/xml/transform/TransformerConfigurationException;->printStackTrace()V

    goto :goto_19

    .line 210
    .end local v2    # "e":Ljavax/xml/transform/TransformerConfigurationException;
    :catch_24
    move-exception v5

    .line 212
    .local v5, "pce":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v5}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_19
.end method
