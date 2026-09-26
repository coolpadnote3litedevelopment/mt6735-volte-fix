.class public Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
.super Lcom/mediatek/simservs/client/SimservType;
.source "OutgoingCommunicationBarring.java"

# interfaces
.implements Lcom/mediatek/simservs/xcap/RuleType;


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "outgoing-communication-barring"


# instance fields
.field mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;


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
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/simservs/client/SimservType;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method


# virtual methods
.method public createNewRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;
    .registers 5

    .prologue
    .line 147
    new-instance v0, Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v1, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string/jumbo v2, "outgoing-communication-barring"

    iget-object v3, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mIntendedId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/simservs/client/policy/RuleSet;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    .line 148
    iget-object v0, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mNetwork:Landroid/net/Network;

    if-eqz v0, :cond_19

    .line 149
    iget-object v0, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v1, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/RuleSet;->setNetwork(Landroid/net/Network;)V

    .line 151
    :cond_19
    iget-object v0, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mEtag:Ljava/lang/String;

    if-eqz v0, :cond_24

    .line 152
    iget-object v0, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v1, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mEtag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/RuleSet;->setEtag(Ljava/lang/String;)V

    .line 154
    :cond_24
    iget-object v0, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    return-object v0
.end method

.method protected getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 116
    const-string/jumbo v0, "outgoing-communication-barring"

    return-object v0
.end method

.method public getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    return-object v0
.end method

.method public initServiceInstance(Lorg/w3c/dom/Document;)V
    .registers 8
    .param p1, "domDoc"    # Lorg/w3c/dom/Document;

    .prologue
    const/4 v4, 0x0

    .line 44
    const-string/jumbo v2, "ruleset"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 45
    .local v1, "ruleSetNode":Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_4d

    .line 46
    const-string/jumbo v2, "OutgoingCommunicationBarring"

    const-string/jumbo v3, "Got ruleset"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-interface {v1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 48
    .local v0, "nruleSetElement":Lorg/w3c/dom/Element;
    new-instance v2, Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v3, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string/jumbo v4, "outgoing-communication-barring"

    iget-object v5, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mIntendedId:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/mediatek/simservs/client/policy/RuleSet;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    iput-object v2, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    .line 49
    iget-object v2, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mNetwork:Landroid/net/Network;

    if-eqz v2, :cond_36

    .line 50
    iget-object v2, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v3, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mNetwork:Landroid/net/Network;

    invoke-virtual {v2, v3}, Lcom/mediatek/simservs/client/policy/RuleSet;->setNetwork(Landroid/net/Network;)V

    .line 53
    :cond_36
    iget-object v2, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_41

    .line 54
    iget-object v2, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v3, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/mediatek/simservs/client/policy/RuleSet;->setContext(Landroid/content/Context;)V

    .line 57
    :cond_41
    iget-object v2, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mEtag:Ljava/lang/String;

    if-eqz v2, :cond_4c

    .line 58
    iget-object v2, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v3, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mEtag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mediatek/simservs/client/policy/RuleSet;->setEtag(Ljava/lang/String;)V

    .line 43
    .end local v0    # "nruleSetElement":Lorg/w3c/dom/Element;
    :cond_4c
    :goto_4c
    return-void

    .line 61
    :cond_4d
    const-string/jumbo v2, "urn:ietf:params:xml:ns:common-policy"

    const-string/jumbo v3, "ruleset"

    invoke-interface {p1, v2, v3}, Lorg/w3c/dom/Document;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 62
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_9c

    .line 63
    const-string/jumbo v2, "OutgoingCommunicationBarring"

    const-string/jumbo v3, "Got ruleset"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-interface {v1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 65
    .restart local v0    # "nruleSetElement":Lorg/w3c/dom/Element;
    new-instance v2, Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v3, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string/jumbo v4, "outgoing-communication-barring"

    iget-object v5, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mIntendedId:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/mediatek/simservs/client/policy/RuleSet;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    iput-object v2, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    .line 67
    iget-object v2, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mNetwork:Landroid/net/Network;

    if-eqz v2, :cond_85

    .line 68
    iget-object v2, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v3, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mNetwork:Landroid/net/Network;

    invoke-virtual {v2, v3}, Lcom/mediatek/simservs/client/policy/RuleSet;->setNetwork(Landroid/net/Network;)V

    .line 71
    :cond_85
    iget-object v2, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_90

    .line 72
    iget-object v2, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v3, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/mediatek/simservs/client/policy/RuleSet;->setContext(Landroid/content/Context;)V

    .line 75
    :cond_90
    iget-object v2, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mEtag:Ljava/lang/String;

    if-eqz v2, :cond_4c

    .line 76
    iget-object v2, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v3, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mEtag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mediatek/simservs/client/policy/RuleSet;->setEtag(Ljava/lang/String;)V

    goto :goto_4c

    .line 79
    .end local v0    # "nruleSetElement":Lorg/w3c/dom/Element;
    :cond_9c
    const-string/jumbo v2, "cp:ruleset"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 80
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_e9

    .line 81
    const-string/jumbo v2, "OutgoingCommunicationBarring"

    const-string/jumbo v3, "Got cp:ruleset"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-interface {v1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 83
    .restart local v0    # "nruleSetElement":Lorg/w3c/dom/Element;
    new-instance v2, Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v3, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string/jumbo v4, "outgoing-communication-barring"

    iget-object v5, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mIntendedId:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/mediatek/simservs/client/policy/RuleSet;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    iput-object v2, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    .line 85
    iget-object v2, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mNetwork:Landroid/net/Network;

    if-eqz v2, :cond_d1

    .line 86
    iget-object v2, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v3, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mNetwork:Landroid/net/Network;

    invoke-virtual {v2, v3}, Lcom/mediatek/simservs/client/policy/RuleSet;->setNetwork(Landroid/net/Network;)V

    .line 89
    :cond_d1
    iget-object v2, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_dc

    .line 90
    iget-object v2, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v3, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/mediatek/simservs/client/policy/RuleSet;->setContext(Landroid/content/Context;)V

    .line 93
    :cond_dc
    iget-object v2, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mEtag:Ljava/lang/String;

    if-eqz v2, :cond_4c

    .line 94
    iget-object v2, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v3, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mEtag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mediatek/simservs/client/policy/RuleSet;->setEtag(Ljava/lang/String;)V

    goto/16 :goto_4c

    .line 97
    .end local v0    # "nruleSetElement":Lorg/w3c/dom/Element;
    :cond_e9
    new-instance v2, Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v3, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string/jumbo v4, "outgoing-communication-barring"

    iget-object v5, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mIntendedId:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Lcom/mediatek/simservs/client/policy/RuleSet;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    .line 98
    iget-object v2, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mNetwork:Landroid/net/Network;

    if-eqz v2, :cond_102

    .line 99
    iget-object v2, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v3, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mNetwork:Landroid/net/Network;

    invoke-virtual {v2, v3}, Lcom/mediatek/simservs/client/policy/RuleSet;->setNetwork(Landroid/net/Network;)V

    .line 102
    :cond_102
    iget-object v2, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_10d

    .line 103
    iget-object v2, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v3, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/mediatek/simservs/client/policy/RuleSet;->setContext(Landroid/content/Context;)V

    .line 106
    :cond_10d
    iget-object v2, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mEtag:Ljava/lang/String;

    if-eqz v2, :cond_4c

    .line 107
    iget-object v2, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v3, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mEtag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mediatek/simservs/client/policy/RuleSet;->setEtag(Ljava/lang/String;)V

    goto/16 :goto_4c
.end method

.method public saveRule(Ljava/lang/String;)V
    .registers 8
    .param p1, "ruleId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 165
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 174
    :cond_8
    const-string/jumbo v4, "saveRule"

    const-string/jumbo v5, "ruleId is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_11
    return-void

    .line 166
    :cond_12
    iget-object v4, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    .line 167
    .local v3, "rules":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "rule$iterator":Ljava/util/Iterator;
    :cond_1e
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/simservs/client/policy/Rule;

    .line 168
    .local v0, "rule":Lcom/mediatek/simservs/client/policy/Rule;
    iget-object v4, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 169
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Rule;->toXmlString()Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, "ruleXml":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/mediatek/simservs/client/policy/Rule;->setContent(Ljava/lang/String;)V

    goto :goto_1e
.end method

.method public saveRuleSet()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v1, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/RuleSet;->toXmlString()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "ruleXml":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    invoke-virtual {v1, v0}, Lcom/mediatek/simservs/client/policy/RuleSet;->setContent(Ljava/lang/String;)V

    .line 135
    return-void
.end method
