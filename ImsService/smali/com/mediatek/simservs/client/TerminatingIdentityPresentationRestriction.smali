.class public Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
.super Lcom/mediatek/simservs/client/SimservType;
.source "TerminatingIdentityPresentationRestriction.java"


# static fields
.field public static NODE_DEFAULT_BEHAVIOUR:I = 0x0

.field public static final NODE_NAME:Ljava/lang/String; = "terminating-identity-presentation-restriction"

.field public static NODE_ROOT_FULL_CHILD:I

.field public static NODE_ROOT_NO_CHILD:I


# instance fields
.field public mContainDefaultBehaviour:Z

.field public mDefaultBehaviour:Lcom/mediatek/simservs/client/DefaultBehaviour;

.field public mNodeSelector:I

.field public mShowActivePara:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->NODE_ROOT_FULL_CHILD:I

    .line 26
    const/4 v0, 0x1

    sput v0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->NODE_ROOT_NO_CHILD:I

    .line 27
    const/4 v0, 0x2

    sput v0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->NODE_DEFAULT_BEHAVIOUR:I

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "documentUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "xui"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/simservs/client/SimservType;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mContainDefaultBehaviour:Z

    .line 30
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mShowActivePara:Z

    .line 31
    sget v0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->NODE_ROOT_FULL_CHILD:I

    iput v0, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mNodeSelector:I

    .line 42
    return-void
.end method


# virtual methods
.method protected getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    const-string/jumbo v0, "terminating-identity-presentation-restriction"

    return-object v0
.end method

.method public initServiceInstance(Lorg/w3c/dom/Document;)V
    .registers 8
    .param p1, "domDoc"    # Lorg/w3c/dom/Document;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 48
    const-string/jumbo v2, "default-behaviour"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 49
    .local v0, "defaultBehaviour":Lorg/w3c/dom/NodeList;
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_3c

    .line 50
    iput-boolean v5, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mContainDefaultBehaviour:Z

    .line 51
    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 52
    .local v1, "defaultBehaviourElement":Lorg/w3c/dom/Element;
    new-instance v2, Lcom/mediatek/simservs/client/DefaultBehaviour;

    iget-object v3, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string/jumbo v4, "terminating-identity-presentation-restriction"

    iget-object v5, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mIntendedId:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/mediatek/simservs/client/DefaultBehaviour;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    iput-object v2, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/DefaultBehaviour;

    .line 55
    iget-object v2, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mNetwork:Landroid/net/Network;

    if-eqz v2, :cond_30

    .line 56
    iget-object v2, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/DefaultBehaviour;

    iget-object v3, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mNetwork:Landroid/net/Network;

    invoke-virtual {v2, v3}, Lcom/mediatek/simservs/client/DefaultBehaviour;->setNetwork(Landroid/net/Network;)V

    .line 59
    :cond_30
    iget-object v2, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_3b

    .line 60
    iget-object v2, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/DefaultBehaviour;

    iget-object v3, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/mediatek/simservs/client/DefaultBehaviour;->setContext(Landroid/content/Context;)V

    .line 47
    .end local v1    # "defaultBehaviourElement":Lorg/w3c/dom/Element;
    :cond_3b
    :goto_3b
    return-void

    .line 63
    :cond_3c
    const-string/jumbo v2, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    .line 64
    const-string/jumbo v3, "default-behaviour"

    .line 63
    invoke-interface {p1, v2, v3}, Lorg/w3c/dom/Document;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 65
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_79

    .line 66
    iput-boolean v5, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mContainDefaultBehaviour:Z

    .line 67
    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 68
    .restart local v1    # "defaultBehaviourElement":Lorg/w3c/dom/Element;
    new-instance v2, Lcom/mediatek/simservs/client/DefaultBehaviour;

    iget-object v3, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string/jumbo v4, "terminating-identity-presentation-restriction"

    iget-object v5, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mIntendedId:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/mediatek/simservs/client/DefaultBehaviour;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    iput-object v2, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/DefaultBehaviour;

    .line 71
    iget-object v2, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mNetwork:Landroid/net/Network;

    if-eqz v2, :cond_6d

    .line 72
    iget-object v2, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/DefaultBehaviour;

    iget-object v3, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mNetwork:Landroid/net/Network;

    invoke-virtual {v2, v3}, Lcom/mediatek/simservs/client/DefaultBehaviour;->setNetwork(Landroid/net/Network;)V

    .line 75
    :cond_6d
    iget-object v2, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_3b

    .line 76
    iget-object v2, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/DefaultBehaviour;

    iget-object v3, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/mediatek/simservs/client/DefaultBehaviour;->setContext(Landroid/content/Context;)V

    goto :goto_3b

    .line 79
    .end local v1    # "defaultBehaviourElement":Lorg/w3c/dom/Element;
    :cond_79
    new-instance v2, Lcom/mediatek/simservs/client/DefaultBehaviour;

    iget-object v3, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string/jumbo v4, "terminating-identity-presentation-restriction"

    iget-object v5, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mIntendedId:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Lcom/mediatek/simservs/client/DefaultBehaviour;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/DefaultBehaviour;

    .line 81
    iget-object v2, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mNetwork:Landroid/net/Network;

    if-eqz v2, :cond_92

    .line 82
    iget-object v2, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/DefaultBehaviour;

    iget-object v3, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mNetwork:Landroid/net/Network;

    invoke-virtual {v2, v3}, Lcom/mediatek/simservs/client/DefaultBehaviour;->setNetwork(Landroid/net/Network;)V

    .line 85
    :cond_92
    iget-object v2, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_3b

    .line 86
    iget-object v2, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/DefaultBehaviour;

    iget-object v3, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/mediatek/simservs/client/DefaultBehaviour;->setContext(Landroid/content/Context;)V

    goto :goto_3b
.end method

.method public isContainDefaultBehaviour()Z
    .registers 2

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mContainDefaultBehaviour:Z

    return v0
.end method

.method public isDefaultPresentationRestricted()Z
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/DefaultBehaviour;

    invoke-virtual {v0}, Lcom/mediatek/simservs/client/DefaultBehaviour;->isPresentationRestricted()Z

    move-result v0

    return v0
.end method

.method public saveConfiguration()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->toXmlString()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "serviceXml":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->setContent(Ljava/lang/String;)V

    .line 105
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mContainDefaultBehaviour:Z

    .line 102
    return-void
.end method

.method public setDefaultPresentationRestricted(Z)V
    .registers 4
    .param p1, "presentationRestricted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 160
    iget-object v1, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/DefaultBehaviour;

    invoke-virtual {v1, p1}, Lcom/mediatek/simservs/client/DefaultBehaviour;->setPresentationRestricted(Z)V

    .line 162
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->isDefaultPresentationRestricted()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 163
    iget-object v1, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/DefaultBehaviour;

    invoke-virtual {v1}, Lcom/mediatek/simservs/client/DefaultBehaviour;->toXmlString()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "defaultBehaviourXml":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/DefaultBehaviour;

    invoke-virtual {v1, v0}, Lcom/mediatek/simservs/client/DefaultBehaviour;->setContent(Ljava/lang/String;)V

    .line 159
    .end local v0    # "defaultBehaviourXml":Ljava/lang/String;
    :goto_16
    return-void

    .line 166
    :cond_17
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->saveConfiguration()V

    goto :goto_16
.end method

.method public setDefaultPresentationRestricted(ZZIZ)V
    .registers 8
    .param p1, "presentationRestricted"    # Z
    .param p2, "nodeActive"    # Z
    .param p3, "nodeSelector"    # I
    .param p4, "showActivePara"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 172
    iget-object v1, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/DefaultBehaviour;

    invoke-virtual {v1, p1}, Lcom/mediatek/simservs/client/DefaultBehaviour;->setPresentationRestricted(Z)V

    .line 173
    iput-boolean p2, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mActived:Z

    .line 174
    iput-boolean p4, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mShowActivePara:Z

    .line 175
    iput p3, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mNodeSelector:I

    .line 177
    iget v1, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mNodeSelector:I

    sget v2, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->NODE_DEFAULT_BEHAVIOUR:I

    if-ne v1, v2, :cond_1d

    .line 178
    iget-object v1, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/DefaultBehaviour;

    invoke-virtual {v1}, Lcom/mediatek/simservs/client/DefaultBehaviour;->toXmlString()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "defaultBehaviourXml":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/DefaultBehaviour;

    invoke-virtual {v1, v0}, Lcom/mediatek/simservs/client/DefaultBehaviour;->setContent(Ljava/lang/String;)V

    .line 171
    .end local v0    # "defaultBehaviourXml":Ljava/lang/String;
    :goto_1c
    return-void

    .line 181
    :cond_1d
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->saveConfiguration()V

    goto :goto_1c
.end method

.method public setNetwork(Landroid/net/Network;)V
    .registers 5
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 192
    invoke-super {p0, p1}, Lcom/mediatek/simservs/client/SimservType;->setNetwork(Landroid/net/Network;)V

    .line 193
    if-eqz p1, :cond_28

    iget-object v0, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/DefaultBehaviour;

    if-eqz v0, :cond_28

    .line 194
    const-string/jumbo v0, "SimservType"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "XCAP dedicated network netid to mDefaultBehaviour: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/DefaultBehaviour;

    invoke-virtual {v0, p1}, Lcom/mediatek/simservs/client/DefaultBehaviour;->setNetwork(Landroid/net/Network;)V

    .line 191
    :cond_28
    return-void
.end method

.method public toXmlString()Ljava/lang/String;
    .registers 13

    .prologue
    .line 114
    const/4 v7, 0x0

    .line 115
    .local v7, "root":Lorg/w3c/dom/Element;
    const/4 v8, 0x0

    .line 116
    .local v8, "xmlString":Ljava/lang/String;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v5

    .line 118
    .local v5, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_6
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 119
    .local v0, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    .line 120
    .local v2, "document":Lorg/w3c/dom/Document;
    const-string/jumbo v9, "terminating-identity-presentation-restriction"

    invoke-interface {v2, v9}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v7

    .line 121
    .local v7, "root":Lorg/w3c/dom/Element;
    const-string/jumbo v9, "SimservType"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "toXmlString: mShowActivePara="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mShowActivePara:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 122
    const-string/jumbo v11, ", mActived="

    .line 121
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 122
    iget-boolean v11, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mActived:Z

    .line 121
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 123
    const-string/jumbo v11, ", mNodeSelector="

    .line 121
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 123
    iget v11, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mNodeSelector:I

    .line 121
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-boolean v9, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mShowActivePara:Z

    if-eqz v9, :cond_5b

    .line 125
    const-string/jumbo v9, "active"

    iget-boolean v10, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mActived:Z

    invoke-static {v10}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_5b
    invoke-interface {v2, v7}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 128
    iget v9, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mNodeSelector:I

    sget v10, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->NODE_ROOT_NO_CHILD:I

    if-eq v9, v10, :cond_6d

    .line 129
    iget-object v9, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/DefaultBehaviour;

    invoke-virtual {v9, v2}, Lcom/mediatek/simservs/client/DefaultBehaviour;->toXmlElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 130
    .local v1, "defaultElement":Lorg/w3c/dom/Element;
    invoke-interface {v7, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 132
    .end local v1    # "defaultElement":Lorg/w3c/dom/Element;
    :cond_6d
    invoke-virtual {p0, v7}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->domToXmlText(Lorg/w3c/dom/Element;)Ljava/lang/String;
    :try_end_70
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_6 .. :try_end_70} :catch_7c
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_6 .. :try_end_70} :catch_77
    .catch Ljavax/xml/transform/TransformerException; {:try_start_6 .. :try_end_70} :catch_72

    move-result-object v8

    .line 141
    .end local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v2    # "document":Lorg/w3c/dom/Document;
    .end local v7    # "root":Lorg/w3c/dom/Element;
    .end local v8    # "xmlString":Ljava/lang/String;
    :goto_71
    return-object v8

    .line 138
    .restart local v8    # "xmlString":Ljava/lang/String;
    :catch_72
    move-exception v4

    .line 139
    .local v4, "e":Ljavax/xml/transform/TransformerException;
    invoke-virtual {v4}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto :goto_71

    .line 136
    .end local v4    # "e":Ljavax/xml/transform/TransformerException;
    :catch_77
    move-exception v3

    .line 137
    .local v3, "e":Ljavax/xml/transform/TransformerConfigurationException;
    invoke-virtual {v3}, Ljavax/xml/transform/TransformerConfigurationException;->printStackTrace()V

    goto :goto_71

    .line 133
    .end local v3    # "e":Ljavax/xml/transform/TransformerConfigurationException;
    :catch_7c
    move-exception v6

    .line 135
    .local v6, "pce":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v6}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_71
.end method
