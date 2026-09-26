.class public Lcom/mediatek/simservs/client/CommunicationDiversion;
.super Lcom/mediatek/simservs/client/SimservType;
.source "CommunicationDiversion.java"

# interfaces
.implements Lcom/mediatek/simservs/xcap/RuleType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;
    }
.end annotation


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "communication-diversion"

.field private static final NO_REPLY_TIMER_DEFAULT_VAULE:I = -0x2


# instance fields
.field mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

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
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/simservs/client/SimservType;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method


# virtual methods
.method public createNewRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;
    .registers 5

    .prologue
    .line 303
    new-instance v0, Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string/jumbo v2, "communication-diversion"

    iget-object v3, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mIntendedId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/simservs/client/policy/RuleSet;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    .line 304
    iget-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    if-eqz v0, :cond_19

    .line 305
    iget-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/RuleSet;->setNetwork(Landroid/net/Network;)V

    .line 307
    :cond_19
    iget-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    if-eqz v0, :cond_24

    .line 308
    iget-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/RuleSet;->setEtag(Ljava/lang/String;)V

    .line 310
    :cond_24
    iget-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    return-object v0
.end method

.method public getNoReplyTimer()I
    .registers 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    invoke-virtual {v0}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->getValue()I

    move-result v0

    return v0
.end method

.method protected getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    const-string/jumbo v0, "communication-diversion"

    return-object v0
.end method

.method public getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;
    .registers 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    return-object v0
.end method

.method public initServiceInstance(Lorg/w3c/dom/Document;)V
    .registers 21
    .param p1, "domDoc"    # Lorg/w3c/dom/Document;

    .prologue
    .line 61
    const-string/jumbo v1, "NoReplyTimer"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    .line 62
    .local v15, "noReplyTimerNode":Lorg/w3c/dom/NodeList;
    const/4 v6, -0x2

    .line 63
    .local v6, "noReplyTimer":I
    const/16 v18, 0x0

    .line 64
    .local v18, "val":Ljava/lang/String;
    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_e8

    .line 65
    const-string/jumbo v1, "CommunicationDiversion"

    const-string/jumbo v2, "Got NoReplyTimer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const/4 v1, 0x0

    invoke-interface {v15, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/Element;

    .line 68
    .local v14, "noReplyTimerElement":Lorg/w3c/dom/Element;
    invoke-interface {v14}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v18

    .line 70
    .local v18, "val":Ljava/lang/String;
    :try_start_2a
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_2d} :catch_e2

    move-result v6

    .line 75
    :goto_2e
    new-instance v1, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string/jumbo v4, "communication-diversion"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mIntendedId:Ljava/lang/String;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;-><init>(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    .line 77
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    if-eqz v1, :cond_55

    .line 78
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setNetwork(Landroid/net/Network;)V

    .line 81
    :cond_55
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_66

    .line 82
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setContext(Landroid/content/Context;)V

    .line 85
    :cond_66
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    if-eqz v1, :cond_77

    .line 86
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setEtag(Ljava/lang/String;)V

    .line 159
    .end local v14    # "noReplyTimerElement":Lorg/w3c/dom/Element;
    .end local v18    # "val":Ljava/lang/String;
    :cond_77
    :goto_77
    const-string/jumbo v1, "ruleset"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v17

    .line 160
    .local v17, "ruleSetNode":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_22d

    .line 161
    const-string/jumbo v1, "CommunicationDiversion"

    const-string/jumbo v2, "Got ruleset"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v1, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v16

    check-cast v16, Lorg/w3c/dom/Element;

    .line 163
    .local v16, "nruleSetElement":Lorg/w3c/dom/Element;
    new-instance v1, Lcom/mediatek/simservs/client/policy/RuleSet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string/jumbo v3, "communication-diversion"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mIntendedId:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/mediatek/simservs/client/policy/RuleSet;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    .line 164
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    if-eqz v1, :cond_bf

    .line 165
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/RuleSet;->setNetwork(Landroid/net/Network;)V

    .line 168
    :cond_bf
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_d0

    .line 169
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/RuleSet;->setContext(Landroid/content/Context;)V

    .line 172
    :cond_d0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    if-eqz v1, :cond_e1

    .line 173
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/RuleSet;->setEtag(Ljava/lang/String;)V

    .line 60
    .end local v16    # "nruleSetElement":Lorg/w3c/dom/Element;
    :cond_e1
    :goto_e1
    return-void

    .line 71
    .end local v17    # "ruleSetNode":Lorg/w3c/dom/NodeList;
    .restart local v14    # "noReplyTimerElement":Lorg/w3c/dom/Element;
    .restart local v18    # "val":Ljava/lang/String;
    :catch_e2
    move-exception v13

    .line 72
    .local v13, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v13}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_2e

    .line 89
    .end local v13    # "e":Ljava/lang/NumberFormatException;
    .end local v14    # "noReplyTimerElement":Lorg/w3c/dom/Element;
    .local v18, "val":Ljava/lang/String;
    :cond_e8
    const-string/jumbo v1, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    .line 90
    const-string/jumbo v2, "NoReplyTimer"

    .line 89
    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    .line 91
    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_166

    .line 92
    const-string/jumbo v1, "CommunicationDiversion"

    const-string/jumbo v2, "Got NoReplyTimer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/4 v1, 0x0

    invoke-interface {v15, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/Element;

    .line 95
    .restart local v14    # "noReplyTimerElement":Lorg/w3c/dom/Element;
    invoke-interface {v14}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v18

    .line 97
    .local v18, "val":Ljava/lang/String;
    :try_start_112
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_115
    .catch Ljava/lang/NumberFormatException; {:try_start_112 .. :try_end_115} :catch_161

    move-result v6

    .line 102
    :goto_116
    new-instance v1, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string/jumbo v4, "communication-diversion"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mIntendedId:Ljava/lang/String;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;-><init>(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    .line 104
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    if-eqz v1, :cond_13d

    .line 105
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setNetwork(Landroid/net/Network;)V

    .line 108
    :cond_13d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_14e

    .line 109
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setContext(Landroid/content/Context;)V

    .line 112
    :cond_14e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    if-eqz v1, :cond_77

    .line 113
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setEtag(Ljava/lang/String;)V

    goto/16 :goto_77

    .line 98
    :catch_161
    move-exception v13

    .line 99
    .restart local v13    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v13}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_116

    .line 116
    .end local v13    # "e":Ljava/lang/NumberFormatException;
    .end local v14    # "noReplyTimerElement":Lorg/w3c/dom/Element;
    .local v18, "val":Ljava/lang/String;
    :cond_166
    const-string/jumbo v1, "ss:NoReplyTimer"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    .line 117
    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_1e1

    .line 118
    const-string/jumbo v1, "CommunicationDiversion"

    const-string/jumbo v2, "Got NoReplyTimer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/4 v1, 0x0

    invoke-interface {v15, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/Element;

    .line 121
    .restart local v14    # "noReplyTimerElement":Lorg/w3c/dom/Element;
    invoke-interface {v14}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v18

    .line 123
    .local v18, "val":Ljava/lang/String;
    :try_start_18d
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_190
    .catch Ljava/lang/NumberFormatException; {:try_start_18d .. :try_end_190} :catch_1dc

    move-result v6

    .line 128
    :goto_191
    new-instance v1, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string/jumbo v4, "communication-diversion"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mIntendedId:Ljava/lang/String;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;-><init>(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    .line 130
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    if-eqz v1, :cond_1b8

    .line 131
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setNetwork(Landroid/net/Network;)V

    .line 134
    :cond_1b8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1c9

    .line 135
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setContext(Landroid/content/Context;)V

    .line 138
    :cond_1c9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    if-eqz v1, :cond_77

    .line 139
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setEtag(Ljava/lang/String;)V

    goto/16 :goto_77

    .line 124
    :catch_1dc
    move-exception v13

    .line 125
    .restart local v13    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v13}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_191

    .line 142
    .end local v13    # "e":Ljava/lang/NumberFormatException;
    .end local v14    # "noReplyTimerElement":Lorg/w3c/dom/Element;
    .local v18, "val":Ljava/lang/String;
    :cond_1e1
    new-instance v7, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string/jumbo v10, "communication-diversion"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mIntendedId:Ljava/lang/String;

    .line 143
    const/4 v12, -0x1

    move-object/from16 v8, p0

    .line 142
    invoke-direct/range {v7 .. v12}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;-><init>(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    .line 144
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    if-eqz v1, :cond_209

    .line 145
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setNetwork(Landroid/net/Network;)V

    .line 148
    :cond_209
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_21a

    .line 149
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setContext(Landroid/content/Context;)V

    .line 152
    :cond_21a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    if-eqz v1, :cond_77

    .line 153
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setEtag(Ljava/lang/String;)V

    goto/16 :goto_77

    .line 176
    .end local v18    # "val":Ljava/lang/String;
    .restart local v17    # "ruleSetNode":Lorg/w3c/dom/NodeList;
    :cond_22d
    const-string/jumbo v1, "urn:ietf:params:xml:ns:common-policy"

    const-string/jumbo v2, "ruleset"

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v17

    .line 177
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_29c

    .line 178
    const-string/jumbo v1, "CommunicationDiversion"

    const-string/jumbo v2, "Got ruleset"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 v1, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v16

    check-cast v16, Lorg/w3c/dom/Element;

    .line 180
    .restart local v16    # "nruleSetElement":Lorg/w3c/dom/Element;
    new-instance v1, Lcom/mediatek/simservs/client/policy/RuleSet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string/jumbo v3, "communication-diversion"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mIntendedId:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/mediatek/simservs/client/policy/RuleSet;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    .line 182
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    if-eqz v1, :cond_278

    .line 183
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/RuleSet;->setNetwork(Landroid/net/Network;)V

    .line 186
    :cond_278
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_289

    .line 187
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/RuleSet;->setContext(Landroid/content/Context;)V

    .line 190
    :cond_289
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    if-eqz v1, :cond_e1

    .line 191
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/RuleSet;->setEtag(Ljava/lang/String;)V

    goto/16 :goto_e1

    .line 194
    .end local v16    # "nruleSetElement":Lorg/w3c/dom/Element;
    :cond_29c
    const-string/jumbo v1, "cp:ruleset"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v17

    .line 195
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_308

    .line 196
    const-string/jumbo v1, "CommunicationDiversion"

    const-string/jumbo v2, "Got ruleset"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/4 v1, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v16

    check-cast v16, Lorg/w3c/dom/Element;

    .line 198
    .restart local v16    # "nruleSetElement":Lorg/w3c/dom/Element;
    new-instance v1, Lcom/mediatek/simservs/client/policy/RuleSet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string/jumbo v3, "communication-diversion"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mIntendedId:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/mediatek/simservs/client/policy/RuleSet;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    .line 200
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    if-eqz v1, :cond_2e4

    .line 201
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/RuleSet;->setNetwork(Landroid/net/Network;)V

    .line 204
    :cond_2e4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2f5

    .line 205
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/RuleSet;->setContext(Landroid/content/Context;)V

    .line 208
    :cond_2f5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    if-eqz v1, :cond_e1

    .line 209
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/RuleSet;->setEtag(Ljava/lang/String;)V

    goto/16 :goto_e1

    .line 212
    .end local v16    # "nruleSetElement":Lorg/w3c/dom/Element;
    :cond_308
    new-instance v1, Lcom/mediatek/simservs/client/policy/RuleSet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string/jumbo v3, "communication-diversion"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mIntendedId:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/mediatek/simservs/client/policy/RuleSet;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    .line 213
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    if-eqz v1, :cond_32d

    .line 214
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/RuleSet;->setNetwork(Landroid/net/Network;)V

    .line 217
    :cond_32d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_33e

    .line 218
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/RuleSet;->setContext(Landroid/content/Context;)V

    .line 221
    :cond_33e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    if-eqz v1, :cond_e1

    .line 222
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/RuleSet;->setEtag(Ljava/lang/String;)V

    goto/16 :goto_e1
.end method

.method public save(Z)V
    .registers 7
    .param p1, "active"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 342
    const-string/jumbo v2, "xcap.ns.ss"

    const-string/jumbo v3, "false"

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 343
    .local v1, "useXcapNs":Ljava/lang/String;
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_de

    const-string/jumbo v1, "ss:"

    .line 344
    :goto_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 345
    const-string/jumbo v2, "ss:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e3

    .line 346
    const-string/jumbo v2, "xmlns:ss=\"http://uri.etsi.org/ngn/params/xml/simservs/xcap\" "

    .line 344
    :goto_41
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 347
    const-string/jumbo v3, "active"

    .line 344
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 347
    const-string/jumbo v3, "=\""

    .line 344
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 347
    const-string/jumbo v3, "\">"

    .line 344
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 348
    iget-object v2, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_e8

    iget-object v2, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/RuleSet;->toXmlString()Ljava/lang/String;

    move-result-object v2

    .line 344
    :goto_70
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 349
    const-string/jumbo v3, "</"

    .line 344
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 349
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getNodeName()Ljava/lang/String;

    move-result-object v3

    .line 344
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 349
    const-string/jumbo v3, ">"

    .line 344
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, "thisXml":Ljava/lang/String;
    const-string/jumbo v2, "CommunicationDiversion"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "save: thisXml="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-virtual {p0, v0}, Lcom/mediatek/simservs/client/CommunicationDiversion;->setContent(Ljava/lang/String;)V

    .line 352
    iget-object v2, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    if-eqz v2, :cond_dd

    .line 353
    const-string/jumbo v2, "CommunicationDiversion"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "save: mEtag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v2, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v3, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mediatek/simservs/client/policy/RuleSet;->setEtag(Ljava/lang/String;)V

    .line 355
    iget-object v2, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    iget-object v3, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setEtag(Ljava/lang/String;)V

    .line 341
    :cond_dd
    return-void

    .line 343
    .end local v0    # "thisXml":Ljava/lang/String;
    :cond_de
    const-string/jumbo v1, ""

    goto/16 :goto_16

    .line 346
    :cond_e3
    const-string/jumbo v2, ""

    goto/16 :goto_41

    .line 348
    :cond_e8
    const-string/jumbo v2, ""

    goto :goto_70
.end method

.method public saveRule(Ljava/lang/String;)V
    .registers 9
    .param p1, "ruleId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 321
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 337
    :cond_8
    const-string/jumbo v4, "saveRule"

    const-string/jumbo v5, "ruleId is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_11
    :goto_11
    return-void

    .line 322
    :cond_12
    iget-object v4, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    .line 323
    .local v3, "rules":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "rule$iterator":Ljava/util/Iterator;
    :cond_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/simservs/client/policy/Rule;

    .line 324
    .local v0, "rule":Lcom/mediatek/simservs/client/policy/Rule;
    iget-object v4, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 325
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Rule;->toXmlString()Ljava/lang/String;

    move-result-object v2

    .line 326
    .local v2, "ruleXml":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/mediatek/simservs/client/policy/Rule;->setContent(Ljava/lang/String;)V

    .line 327
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Rule;->getEtag()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 328
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Rule;->getEtag()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    .line 329
    const-string/jumbo v4, "CommunicationDiversion"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "saveRule: mEtag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v4, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v5, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/mediatek/simservs/client/policy/RuleSet;->setEtag(Ljava/lang/String;)V

    .line 331
    iget-object v4, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    iget-object v5, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setEtag(Ljava/lang/String;)V

    goto :goto_11
.end method

.method public saveRuleSet()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 286
    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/RuleSet;->toXmlString()Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "ruleXml":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    invoke-virtual {v1, v0}, Lcom/mediatek/simservs/client/policy/RuleSet;->setContent(Ljava/lang/String;)V

    .line 288
    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/RuleSet;->getEtag()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_45

    .line 289
    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/RuleSet;->getEtag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    .line 290
    const-string/jumbo v1, "CommunicationDiversion"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "saveRuleSet: mEtag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v2, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/RuleSet;->setEtag(Ljava/lang/String;)V

    .line 292
    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    iget-object v2, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setEtag(Ljava/lang/String;)V

    .line 285
    :cond_45
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .registers 8
    .param p1, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 368
    :try_start_0
    const-string/jumbo v2, "xcap.ns.ss"

    const-string/jumbo v3, "false"

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 369
    .local v1, "useXcapNs":Ljava/lang/String;
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_82

    const-string/jumbo v1, "ss:"

    .line 370
    :goto_16
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getNodeUri()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNodeUri:Ljava/lang/String;

    .line 371
    iget-object v2, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNodeUri:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getNodeName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNodeUri:Ljava/lang/String;

    .line 372
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNodeUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v2, "ss:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_86

    .line 373
    const-string/jumbo v2, "?xmlns(ss=http://uri.etsi.org/ngn/params/xml/simservs/xcap)"

    .line 372
    :goto_58
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNodeUri:Ljava/lang/String;

    .line 374
    const-string/jumbo v2, "CommunicationDiversion"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setContent: mNodeUri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNodeUri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-virtual {p0, p1}, Lcom/mediatek/simservs/client/CommunicationDiversion;->saveContent(Ljava/lang/String;)V

    .line 366
    .end local v1    # "useXcapNs":Ljava/lang/String;
    :goto_81
    return-void

    .line 369
    .restart local v1    # "useXcapNs":Ljava/lang/String;
    :cond_82
    const-string/jumbo v1, ""

    goto :goto_16

    .line 373
    :cond_86
    const-string/jumbo v2, ""
    :try_end_89
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_89} :catch_8a

    goto :goto_58

    .line 376
    .end local v1    # "useXcapNs":Ljava/lang/String;
    :catch_8a
    move-exception v0

    .line 377
    .local v0, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_81
.end method

.method public setNetwork(Landroid/net/Network;)V
    .registers 5
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 235
    invoke-super {p0, p1}, Lcom/mediatek/simservs/client/SimservType;->setNetwork(Landroid/net/Network;)V

    .line 236
    if-eqz p1, :cond_4f

    .line 237
    iget-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    if-eqz v0, :cond_2a

    .line 238
    const-string/jumbo v0, "SimservType"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "XCAP dedicated network netid to mNoReplyTimer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setNetwork(Landroid/net/Network;)V

    .line 241
    :cond_2a
    iget-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    if-eqz v0, :cond_4f

    .line 242
    const-string/jumbo v0, "SimservType"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "XCAP dedicated network netid to mRuleSet:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/RuleSet;->setNetwork(Landroid/net/Network;)V

    .line 234
    :cond_4f
    return-void
.end method

.method public setNoReplyTimer(I)V
    .registers 6
    .param p1, "timerValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 259
    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    invoke-virtual {v1, p1}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setValue(I)V

    .line 260
    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    invoke-virtual {v1}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->toXmlString()Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "noReplyTimerXml":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    invoke-virtual {v1, v0}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setContent(Ljava/lang/String;)V

    .line 262
    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    invoke-virtual {v1}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->getEtag()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_43

    .line 263
    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    invoke-virtual {v1}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->getEtag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    .line 264
    const-string/jumbo v1, "CommunicationDiversion"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setNoReplyTimer: mEtag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v2, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/RuleSet;->setEtag(Ljava/lang/String;)V

    .line 258
    :cond_43
    return-void
.end method
