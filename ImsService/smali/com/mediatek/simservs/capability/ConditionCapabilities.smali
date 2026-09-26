.class public Lcom/mediatek/simservs/capability/ConditionCapabilities;
.super Lcom/mediatek/simservs/capability/ServiceCapabilities;
.source "ConditionCapabilities.java"

# interfaces
.implements Lcom/mediatek/simservs/xcap/ConfigureType;


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "serv-cap-conditions"

.field static final TAG_ANONYMOUS:Ljava/lang/String; = "serv-cap-anonymous"

.field static final TAG_BUSY:Ljava/lang/String; = "serv-cap-busy"

.field static final TAG_COMMUNICATION_DIVERTED:Ljava/lang/String; = "serv-cap-communication-diverted"

.field static final TAG_EXTERNAL_LIST:Ljava/lang/String; = "serv-cap-external-list"

.field static final TAG_IDENTITY:Ljava/lang/String; = "serv-cap-identity"

.field static final TAG_INTERNATIONAL:Ljava/lang/String; = "serv-cap-international"

.field static final TAG_INTERNATIONAL_EXHC:Ljava/lang/String; = "serv-cap-international-exHC"

.field static final TAG_MEDIA:Ljava/lang/String; = "serv-cap-media"

.field static final TAG_NOT_REACHABLE:Ljava/lang/String; = "serv-cap-not-reachable"

.field static final TAG_NOT_REGISTERED:Ljava/lang/String; = "serv-cap-not-registered"

.field static final TAG_NO_ANSWER:Ljava/lang/String; = "serv-cap-no-answer"

.field static final TAG_OTHER_IDENTITY:Ljava/lang/String; = "serv-cap-other-identity"

.field static final TAG_PRESENCE_STATUS:Ljava/lang/String; = "serv-cap-presence-status"

.field static final TAG_REQUEST_NAME:Ljava/lang/String; = "serv-cap-request-name"

.field static final TAG_ROAMING:Ljava/lang/String; = "serv-cap-roaming"

.field static final TAG_RULE_DEACTIVATED:Ljava/lang/String; = "serv-cap-rule-deactivated"

.field static final TAG_VALIDITY:Ljava/lang/String; = "serv-cap-validity"


# instance fields
.field public mAnonymousProvisioned:Z

.field public mCommunicationDivertedProvisioned:Z

.field public mExternalListProvisioned:Z

.field public mIdentityProvisioned:Z

.field public mInternationalProvisioned:Z

.field public mInternationalexHCProvisioned:Z

.field mMediaConditions:Lcom/mediatek/simservs/capability/MediaConditions;

.field public mOtherIdentityProvisioned:Z

.field public mPresenceStatusProvisioned:Z

.field public mRequestNameProvisioned:Z

.field public mRoamingProvisioned:Z

.field public mRuleDeactivatedProvisioned:Z

.field public mValidityProvisioned:Z


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/simservs/capability/ServiceCapabilities;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mAnonymousProvisioned:Z

    .line 37
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mRequestNameProvisioned:Z

    .line 38
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mCommunicationDivertedProvisioned:Z

    .line 39
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mExternalListProvisioned:Z

    .line 40
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mIdentityProvisioned:Z

    .line 41
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mInternationalProvisioned:Z

    .line 42
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mInternationalexHCProvisioned:Z

    .line 43
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mOtherIdentityProvisioned:Z

    .line 44
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mPresenceStatusProvisioned:Z

    .line 45
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mRoamingProvisioned:Z

    .line 46
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mRuleDeactivatedProvisioned:Z

    .line 47
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mValidityProvisioned:Z

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Node;)V
    .registers 6
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .param p4, "nodes"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/simservs/capability/ServiceCapabilities;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mAnonymousProvisioned:Z

    .line 37
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mRequestNameProvisioned:Z

    .line 38
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mCommunicationDivertedProvisioned:Z

    .line 39
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mExternalListProvisioned:Z

    .line 40
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mIdentityProvisioned:Z

    .line 41
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mInternationalProvisioned:Z

    .line 42
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mInternationalexHCProvisioned:Z

    .line 43
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mOtherIdentityProvisioned:Z

    .line 44
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mPresenceStatusProvisioned:Z

    .line 45
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mRoamingProvisioned:Z

    .line 46
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mRuleDeactivatedProvisioned:Z

    .line 47
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mValidityProvisioned:Z

    .line 73
    invoke-virtual {p0, p4}, Lcom/mediatek/simservs/capability/ConditionCapabilities;->instantiateFromXmlNode(Lorg/w3c/dom/Node;)V

    .line 71
    return-void
.end method


# virtual methods
.method public getMediaConditions()Lcom/mediatek/simservs/capability/MediaConditions;
    .registers 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mMediaConditions:Lcom/mediatek/simservs/capability/MediaConditions;

    return-object v0
.end method

.method protected getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 173
    const-string/jumbo v0, "serv-cap-conditions"

    return-object v0
.end method

.method public instantiateFromXmlNode(Lorg/w3c/dom/Node;)V
    .registers 13
    .param p1, "domNode"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v10, 0x0

    move-object v2, p1

    .line 78
    check-cast v2, Lorg/w3c/dom/Element;

    .line 80
    .local v2, "domElement":Lorg/w3c/dom/Element;
    const-string/jumbo v5, "serv-cap-anonymous"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 81
    .local v1, "conditionNode":Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_27

    .line 82
    invoke-interface {v1, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 83
    .local v0, "conditionElement":Lorg/w3c/dom/Element;
    const-string/jumbo v5, "provisioned"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, "provisioned":Ljava/lang/String;
    const-string/jumbo v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mAnonymousProvisioned:Z

    .line 87
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    .end local v4    # "provisioned":Ljava/lang/String;
    :cond_27
    const-string/jumbo v5, "serv-cap-request-name"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 88
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_4a

    .line 89
    invoke-interface {v1, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 90
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    const-string/jumbo v5, "provisioned"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 91
    .restart local v4    # "provisioned":Ljava/lang/String;
    const-string/jumbo v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mRequestNameProvisioned:Z

    .line 94
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    .end local v4    # "provisioned":Ljava/lang/String;
    :cond_4a
    const-string/jumbo v5, "serv-cap-communication-diverted"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 95
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_6d

    .line 96
    invoke-interface {v1, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 97
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    const-string/jumbo v5, "provisioned"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 98
    .restart local v4    # "provisioned":Ljava/lang/String;
    const-string/jumbo v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mCommunicationDivertedProvisioned:Z

    .line 101
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    .end local v4    # "provisioned":Ljava/lang/String;
    :cond_6d
    const-string/jumbo v5, "serv-cap-external-list"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 102
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_90

    .line 103
    invoke-interface {v1, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 104
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    const-string/jumbo v5, "provisioned"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 105
    .restart local v4    # "provisioned":Ljava/lang/String;
    const-string/jumbo v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mExternalListProvisioned:Z

    .line 108
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    .end local v4    # "provisioned":Ljava/lang/String;
    :cond_90
    const-string/jumbo v5, "serv-cap-identity"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 109
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_b3

    .line 110
    invoke-interface {v1, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 111
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    const-string/jumbo v5, "provisioned"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 112
    .restart local v4    # "provisioned":Ljava/lang/String;
    const-string/jumbo v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mIdentityProvisioned:Z

    .line 115
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    .end local v4    # "provisioned":Ljava/lang/String;
    :cond_b3
    const-string/jumbo v5, "serv-cap-international"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 116
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_d6

    .line 117
    invoke-interface {v1, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 118
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    const-string/jumbo v5, "provisioned"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 119
    .restart local v4    # "provisioned":Ljava/lang/String;
    const-string/jumbo v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mInternationalProvisioned:Z

    .line 122
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    .end local v4    # "provisioned":Ljava/lang/String;
    :cond_d6
    const-string/jumbo v5, "serv-cap-international-exHC"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 123
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_f9

    .line 124
    invoke-interface {v1, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 125
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    const-string/jumbo v5, "provisioned"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 126
    .restart local v4    # "provisioned":Ljava/lang/String;
    const-string/jumbo v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mInternationalexHCProvisioned:Z

    .line 129
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    .end local v4    # "provisioned":Ljava/lang/String;
    :cond_f9
    const-string/jumbo v5, "serv-cap-other-identity"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 130
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_11c

    .line 131
    invoke-interface {v1, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 132
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    const-string/jumbo v5, "provisioned"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 133
    .restart local v4    # "provisioned":Ljava/lang/String;
    const-string/jumbo v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mOtherIdentityProvisioned:Z

    .line 136
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    .end local v4    # "provisioned":Ljava/lang/String;
    :cond_11c
    const-string/jumbo v5, "serv-cap-presence-status"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 137
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_13f

    .line 138
    invoke-interface {v1, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 139
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    const-string/jumbo v5, "provisioned"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 140
    .restart local v4    # "provisioned":Ljava/lang/String;
    const-string/jumbo v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mPresenceStatusProvisioned:Z

    .line 143
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    .end local v4    # "provisioned":Ljava/lang/String;
    :cond_13f
    const-string/jumbo v5, "serv-cap-roaming"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 144
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_162

    .line 145
    invoke-interface {v1, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 146
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    const-string/jumbo v5, "provisioned"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 147
    .restart local v4    # "provisioned":Ljava/lang/String;
    const-string/jumbo v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mRoamingProvisioned:Z

    .line 150
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    .end local v4    # "provisioned":Ljava/lang/String;
    :cond_162
    const-string/jumbo v5, "serv-cap-rule-deactivated"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 151
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_185

    .line 152
    invoke-interface {v1, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 153
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    const-string/jumbo v5, "provisioned"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 154
    .restart local v4    # "provisioned":Ljava/lang/String;
    const-string/jumbo v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mRuleDeactivatedProvisioned:Z

    .line 157
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    .end local v4    # "provisioned":Ljava/lang/String;
    :cond_185
    const-string/jumbo v5, "serv-cap-validity"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 158
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_1a8

    .line 159
    invoke-interface {v1, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 160
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    const-string/jumbo v5, "provisioned"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 161
    .restart local v4    # "provisioned":Ljava/lang/String;
    const-string/jumbo v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mValidityProvisioned:Z

    .line 164
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    .end local v4    # "provisioned":Ljava/lang/String;
    :cond_1a8
    const-string/jumbo v5, "serv-cap-media"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 165
    .local v3, "mediassNode":Lorg/w3c/dom/NodeList;
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_1c9

    .line 166
    new-instance v6, Lcom/mediatek/simservs/capability/MediaConditions;

    iget-object v7, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string/jumbo v8, "serv-cap-conditions"

    iget-object v9, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mIntendedId:Ljava/lang/String;

    .line 167
    invoke-interface {v3, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 166
    invoke-direct {v6, v7, v8, v9, v5}, Lcom/mediatek/simservs/capability/MediaConditions;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    iput-object v6, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mMediaConditions:Lcom/mediatek/simservs/capability/MediaConditions;

    .line 77
    :cond_1c9
    return-void
.end method

.method public isAnonymousProvisioned()Z
    .registers 2

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mAnonymousProvisioned:Z

    return v0
.end method

.method public isCommunicationDivertedProvisioned()Z
    .registers 2

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mCommunicationDivertedProvisioned:Z

    return v0
.end method

.method public isExternalListProvisioned()Z
    .registers 2

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mExternalListProvisioned:Z

    return v0
.end method

.method public isIdentityProvisioned()Z
    .registers 2

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mIdentityProvisioned:Z

    return v0
.end method

.method public isInternationalProvisioned()Z
    .registers 2

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mInternationalProvisioned:Z

    return v0
.end method

.method public isInternationalexHCProvisioned()Z
    .registers 2

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mInternationalexHCProvisioned:Z

    return v0
.end method

.method public isOtherIdentityProvisioned()Z
    .registers 2

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mOtherIdentityProvisioned:Z

    return v0
.end method

.method public isPresenceStatusProvisioned()Z
    .registers 2

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mPresenceStatusProvisioned:Z

    return v0
.end method

.method public isRequestNameProvisioned()Z
    .registers 2

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mRequestNameProvisioned:Z

    return v0
.end method

.method public isRoamingProvisioned()Z
    .registers 2

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mRoamingProvisioned:Z

    return v0
.end method

.method public isRuleDeactivatedProvisioned()Z
    .registers 2

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mRuleDeactivatedProvisioned:Z

    return v0
.end method

.method public isValidityProvisioned()Z
    .registers 2

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mValidityProvisioned:Z

    return v0
.end method
