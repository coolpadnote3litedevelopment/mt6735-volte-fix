.class public Lcom/mediatek/simservs/client/policy/ForwardTo;
.super Lcom/mediatek/simservs/xcap/XcapElement;
.source "ForwardTo.java"

# interfaces
.implements Lcom/mediatek/simservs/xcap/ConfigureType;


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "forward-to"

.field static final TAG_NOTIFY_CALLER:Ljava/lang/String; = "notify-caller"

.field static final TAG_NOTIFY_SERVED_USER:Ljava/lang/String; = "notify-served-user"

.field static final TAG_NOTIFY_SERVED_USER_ON_OUTBOUND_CALL:Ljava/lang/String; = "notify-served-user-on-outbound-call"

.field static final TAG_REVEAL_IDENTITY_TO_CALLER:Ljava/lang/String; = "reveal-identity-to-caller"

.field static final TAG_REVEAL_IDENTITY_TO_TARGET:Ljava/lang/String; = "reveal-identity-to-target"

.field static final TAG_REVEAL_SERVED_USER_IDENTITY_TO_CALLER:Ljava/lang/String; = "reveal-served-user-identity-to-caller"

.field static final TAG_TARGET:Ljava/lang/String; = "target"


# instance fields
.field public mNotifyCaller:Z

.field public mNotifyServedUser:Z

.field public mNotifyServedUserOnOutboundCall:Z

.field public mRevealIdentityToCaller:Z

.field public mRevealIdentityToTarget:Z

.field public mRevealServedUserIdentityToCaller:Z

.field public mTarget:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyCaller:Z

    .line 32
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealIdentityToCaller:Z

    .line 33
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealServedUserIdentityToCaller:Z

    .line 34
    iput-boolean v1, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyServedUser:Z

    .line 35
    iput-boolean v1, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyServedUserOnOutboundCall:Z

    .line 36
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealIdentityToTarget:Z

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V
    .registers 7
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .param p4, "domElement"    # Lorg/w3c/dom/Element;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyCaller:Z

    .line 32
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealIdentityToCaller:Z

    .line 33
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealServedUserIdentityToCaller:Z

    .line 34
    iput-boolean v1, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyServedUser:Z

    .line 35
    iput-boolean v1, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyServedUserOnOutboundCall:Z

    .line 36
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealIdentityToTarget:Z

    .line 63
    invoke-virtual {p0, p4}, Lcom/mediatek/simservs/client/policy/ForwardTo;->instantiateFromXmlNode(Lorg/w3c/dom/Node;)V

    .line 59
    return-void
.end method


# virtual methods
.method protected getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    const-string/jumbo v0, "forward-to"

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .registers 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mTarget:Ljava/lang/String;

    return-object v0
.end method

.method public instantiateFromXmlNode(Lorg/w3c/dom/Node;)V
    .registers 16
    .param p1, "domNode"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v13, 0x0

    move-object v0, p1

    .line 73
    check-cast v0, Lorg/w3c/dom/Element;

    .line 74
    .local v0, "domElement":Lorg/w3c/dom/Element;
    const-string/jumbo v11, "target"

    invoke-interface {v0, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 75
    .local v2, "forwardToNode":Lorg/w3c/dom/NodeList;
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-lez v11, :cond_de

    .line 76
    invoke-interface {v2, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    .line 77
    .local v10, "targetElement":Lorg/w3c/dom/Element;
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mTarget:Ljava/lang/String;

    .line 93
    .end local v10    # "targetElement":Lorg/w3c/dom/Element;
    :cond_1d
    :goto_1d
    const-string/jumbo v11, "notify-caller"

    invoke-interface {v0, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 94
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-lez v11, :cond_117

    .line 95
    invoke-interface {v2, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 96
    .local v4, "notifyCallerElement":Lorg/w3c/dom/Element;
    invoke-interface {v4}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, "notifyCaller":Ljava/lang/String;
    const-string/jumbo v11, "true"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyCaller:Z

    .line 115
    .end local v3    # "notifyCaller":Ljava/lang/String;
    .end local v4    # "notifyCallerElement":Lorg/w3c/dom/Element;
    :cond_3d
    :goto_3d
    const-string/jumbo v11, "reveal-identity-to-caller"

    invoke-interface {v0, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 116
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-lez v11, :cond_15e

    .line 117
    invoke-interface {v2, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 118
    .local v6, "revealCallerElement":Lorg/w3c/dom/Element;
    invoke-interface {v6}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v5

    .line 119
    .local v5, "revealCaller":Ljava/lang/String;
    const-string/jumbo v11, "true"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealIdentityToCaller:Z

    .line 138
    .end local v5    # "revealCaller":Ljava/lang/String;
    .end local v6    # "revealCallerElement":Lorg/w3c/dom/Element;
    :cond_5d
    :goto_5d
    const-string/jumbo v11, "reveal-identity-to-target"

    invoke-interface {v0, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 139
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-lez v11, :cond_1a5

    .line 140
    invoke-interface {v2, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Element;

    .line 141
    .local v8, "revealTargetElement":Lorg/w3c/dom/Element;
    invoke-interface {v8}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v7

    .line 142
    .local v7, "revealTarget":Ljava/lang/String;
    const-string/jumbo v11, "true"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealIdentityToTarget:Z

    .line 161
    .end local v7    # "revealTarget":Ljava/lang/String;
    .end local v8    # "revealTargetElement":Lorg/w3c/dom/Element;
    :cond_7d
    :goto_7d
    const-string/jumbo v11, "reveal-served-user-identity-to-caller"

    invoke-interface {v0, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 162
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-lez v11, :cond_1ec

    .line 163
    invoke-interface {v2, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 164
    .local v1, "element":Lorg/w3c/dom/Element;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v9

    .line 165
    .local v9, "str":Ljava/lang/String;
    const-string/jumbo v11, "true"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealServedUserIdentityToCaller:Z

    .line 184
    .end local v1    # "element":Lorg/w3c/dom/Element;
    .end local v9    # "str":Ljava/lang/String;
    :cond_9d
    :goto_9d
    const-string/jumbo v11, "notify-served-user"

    invoke-interface {v0, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 185
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-lez v11, :cond_233

    .line 186
    invoke-interface {v2, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 187
    .restart local v1    # "element":Lorg/w3c/dom/Element;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v9

    .line 188
    .restart local v9    # "str":Ljava/lang/String;
    const-string/jumbo v11, "true"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyServedUser:Z

    .line 207
    .end local v1    # "element":Lorg/w3c/dom/Element;
    .end local v9    # "str":Ljava/lang/String;
    :cond_bd
    :goto_bd
    const-string/jumbo v11, "notify-served-user-on-outbound-call"

    invoke-interface {v0, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 208
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-lez v11, :cond_27a

    .line 209
    invoke-interface {v2, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 210
    .restart local v1    # "element":Lorg/w3c/dom/Element;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v9

    .line 211
    .restart local v9    # "str":Ljava/lang/String;
    const-string/jumbo v11, "true"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyServedUserOnOutboundCall:Z

    .line 72
    .end local v1    # "element":Lorg/w3c/dom/Element;
    .end local v9    # "str":Ljava/lang/String;
    :cond_dd
    :goto_dd
    return-void

    .line 79
    :cond_de
    const-string/jumbo v11, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string/jumbo v12, "target"

    invoke-interface {v0, v11, v12}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 80
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-lez v11, :cond_fc

    .line 81
    invoke-interface {v2, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    .line 82
    .restart local v10    # "targetElement":Lorg/w3c/dom/Element;
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mTarget:Ljava/lang/String;

    goto/16 :goto_1d

    .line 85
    .end local v10    # "targetElement":Lorg/w3c/dom/Element;
    :cond_fc
    const-string/jumbo v11, "ss:target"

    .line 84
    invoke-interface {v0, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 86
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-lez v11, :cond_1d

    .line 87
    invoke-interface {v2, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    .line 88
    .restart local v10    # "targetElement":Lorg/w3c/dom/Element;
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mTarget:Ljava/lang/String;

    goto/16 :goto_1d

    .line 99
    .end local v10    # "targetElement":Lorg/w3c/dom/Element;
    :cond_117
    const-string/jumbo v11, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string/jumbo v12, "notify-caller"

    invoke-interface {v0, v11, v12}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 100
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-lez v11, :cond_13c

    .line 101
    invoke-interface {v2, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 102
    .restart local v4    # "notifyCallerElement":Lorg/w3c/dom/Element;
    invoke-interface {v4}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 103
    .restart local v3    # "notifyCaller":Ljava/lang/String;
    const-string/jumbo v11, "true"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyCaller:Z

    goto/16 :goto_3d

    .line 106
    .end local v3    # "notifyCaller":Ljava/lang/String;
    .end local v4    # "notifyCallerElement":Lorg/w3c/dom/Element;
    :cond_13c
    const-string/jumbo v11, "ss:notify-caller"

    .line 105
    invoke-interface {v0, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 107
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-lez v11, :cond_3d

    .line 108
    invoke-interface {v2, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 109
    .restart local v4    # "notifyCallerElement":Lorg/w3c/dom/Element;
    invoke-interface {v4}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 110
    .restart local v3    # "notifyCaller":Ljava/lang/String;
    const-string/jumbo v11, "true"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyCaller:Z

    goto/16 :goto_3d

    .line 121
    .end local v3    # "notifyCaller":Ljava/lang/String;
    .end local v4    # "notifyCallerElement":Lorg/w3c/dom/Element;
    :cond_15e
    const-string/jumbo v11, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    .line 122
    const-string/jumbo v12, "reveal-identity-to-caller"

    .line 121
    invoke-interface {v0, v11, v12}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 123
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-lez v11, :cond_183

    .line 124
    invoke-interface {v2, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 125
    .restart local v6    # "revealCallerElement":Lorg/w3c/dom/Element;
    invoke-interface {v6}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v5

    .line 126
    .restart local v5    # "revealCaller":Ljava/lang/String;
    const-string/jumbo v11, "true"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealIdentityToCaller:Z

    goto/16 :goto_5d

    .line 129
    .end local v5    # "revealCaller":Ljava/lang/String;
    .end local v6    # "revealCallerElement":Lorg/w3c/dom/Element;
    :cond_183
    const-string/jumbo v11, "ss:reveal-identity-to-caller"

    .line 128
    invoke-interface {v0, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 130
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-lez v11, :cond_5d

    .line 131
    invoke-interface {v2, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 132
    .restart local v6    # "revealCallerElement":Lorg/w3c/dom/Element;
    invoke-interface {v6}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v5

    .line 133
    .restart local v5    # "revealCaller":Ljava/lang/String;
    const-string/jumbo v11, "true"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealIdentityToCaller:Z

    goto/16 :goto_5d

    .line 144
    .end local v5    # "revealCaller":Ljava/lang/String;
    .end local v6    # "revealCallerElement":Lorg/w3c/dom/Element;
    :cond_1a5
    const-string/jumbo v11, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    .line 145
    const-string/jumbo v12, "reveal-identity-to-target"

    .line 144
    invoke-interface {v0, v11, v12}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 146
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-lez v11, :cond_1ca

    .line 147
    invoke-interface {v2, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Element;

    .line 148
    .restart local v8    # "revealTargetElement":Lorg/w3c/dom/Element;
    invoke-interface {v8}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v7

    .line 149
    .restart local v7    # "revealTarget":Ljava/lang/String;
    const-string/jumbo v11, "true"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealIdentityToTarget:Z

    goto/16 :goto_7d

    .line 152
    .end local v7    # "revealTarget":Ljava/lang/String;
    .end local v8    # "revealTargetElement":Lorg/w3c/dom/Element;
    :cond_1ca
    const-string/jumbo v11, "ss:reveal-identity-to-target"

    .line 151
    invoke-interface {v0, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 153
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-lez v11, :cond_7d

    .line 154
    invoke-interface {v2, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Element;

    .line 155
    .restart local v8    # "revealTargetElement":Lorg/w3c/dom/Element;
    invoke-interface {v8}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v7

    .line 156
    .restart local v7    # "revealTarget":Ljava/lang/String;
    const-string/jumbo v11, "true"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealIdentityToTarget:Z

    goto/16 :goto_7d

    .line 167
    .end local v7    # "revealTarget":Ljava/lang/String;
    .end local v8    # "revealTargetElement":Lorg/w3c/dom/Element;
    :cond_1ec
    const-string/jumbo v11, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    .line 168
    const-string/jumbo v12, "reveal-served-user-identity-to-caller"

    .line 167
    invoke-interface {v0, v11, v12}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 169
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-lez v11, :cond_211

    .line 170
    invoke-interface {v2, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 171
    .restart local v1    # "element":Lorg/w3c/dom/Element;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v9

    .line 172
    .restart local v9    # "str":Ljava/lang/String;
    const-string/jumbo v11, "true"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealServedUserIdentityToCaller:Z

    goto/16 :goto_9d

    .line 175
    .end local v1    # "element":Lorg/w3c/dom/Element;
    .end local v9    # "str":Ljava/lang/String;
    :cond_211
    const-string/jumbo v11, "ss:reveal-served-user-identity-to-caller"

    .line 174
    invoke-interface {v0, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 176
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-lez v11, :cond_9d

    .line 177
    invoke-interface {v2, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 178
    .restart local v1    # "element":Lorg/w3c/dom/Element;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v9

    .line 179
    .restart local v9    # "str":Ljava/lang/String;
    const-string/jumbo v11, "true"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealServedUserIdentityToCaller:Z

    goto/16 :goto_9d

    .line 190
    .end local v1    # "element":Lorg/w3c/dom/Element;
    .end local v9    # "str":Ljava/lang/String;
    :cond_233
    const-string/jumbo v11, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    .line 191
    const-string/jumbo v12, "notify-served-user"

    .line 190
    invoke-interface {v0, v11, v12}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 192
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-lez v11, :cond_258

    .line 193
    invoke-interface {v2, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 194
    .restart local v1    # "element":Lorg/w3c/dom/Element;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v9

    .line 195
    .restart local v9    # "str":Ljava/lang/String;
    const-string/jumbo v11, "true"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyServedUser:Z

    goto/16 :goto_bd

    .line 198
    .end local v1    # "element":Lorg/w3c/dom/Element;
    .end local v9    # "str":Ljava/lang/String;
    :cond_258
    const-string/jumbo v11, "ss:notify-served-user"

    .line 197
    invoke-interface {v0, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 199
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-lez v11, :cond_bd

    .line 200
    invoke-interface {v2, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 201
    .restart local v1    # "element":Lorg/w3c/dom/Element;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v9

    .line 202
    .restart local v9    # "str":Ljava/lang/String;
    const-string/jumbo v11, "true"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyServedUser:Z

    goto/16 :goto_bd

    .line 213
    .end local v1    # "element":Lorg/w3c/dom/Element;
    .end local v9    # "str":Ljava/lang/String;
    :cond_27a
    const-string/jumbo v11, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    .line 214
    const-string/jumbo v12, "notify-served-user-on-outbound-call"

    .line 213
    invoke-interface {v0, v11, v12}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 215
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-lez v11, :cond_29f

    .line 216
    invoke-interface {v2, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 217
    .restart local v1    # "element":Lorg/w3c/dom/Element;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v9

    .line 218
    .restart local v9    # "str":Ljava/lang/String;
    const-string/jumbo v11, "true"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyServedUserOnOutboundCall:Z

    goto/16 :goto_dd

    .line 221
    .end local v1    # "element":Lorg/w3c/dom/Element;
    .end local v9    # "str":Ljava/lang/String;
    :cond_29f
    const-string/jumbo v11, "ss:notify-served-user-on-outbound-call"

    .line 220
    invoke-interface {v0, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 222
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-lez v11, :cond_dd

    .line 223
    invoke-interface {v2, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 224
    .restart local v1    # "element":Lorg/w3c/dom/Element;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v9

    .line 225
    .restart local v9    # "str":Ljava/lang/String;
    const-string/jumbo v11, "true"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyServedUserOnOutboundCall:Z

    goto/16 :goto_dd
.end method

.method public isNotifyCaller()Z
    .registers 2

    .prologue
    .line 379
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyCaller:Z

    return v0
.end method

.method public isNotifyServedUse()Z
    .registers 2

    .prologue
    .line 391
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyServedUser:Z

    return v0
.end method

.method public isNotifyServedUserOnOutboundCall()Z
    .registers 2

    .prologue
    .line 395
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyServedUserOnOutboundCall:Z

    return v0
.end method

.method public isRevealIdentityToCaller()Z
    .registers 2

    .prologue
    .line 383
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealIdentityToCaller:Z

    return v0
.end method

.method public isRevealIdentityToTarget()Z
    .registers 2

    .prologue
    .line 399
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealIdentityToTarget:Z

    return v0
.end method

.method public isRevealServedUserIdentityToCaller()Z
    .registers 2

    .prologue
    .line 387
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealServedUserIdentityToCaller:Z

    return v0
.end method

.method public setNotifyCaller(Z)V
    .registers 2
    .param p1, "notifyCaller"    # Z

    .prologue
    .line 351
    iput-boolean p1, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyCaller:Z

    .line 350
    return-void
.end method

.method public setNotifyServedUser(Z)V
    .registers 2
    .param p1, "notifyToServedUser"    # Z

    .prologue
    .line 363
    iput-boolean p1, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyServedUser:Z

    .line 362
    return-void
.end method

.method public setNotifyServedUserOnOutboundCall(Z)V
    .registers 2
    .param p1, "notifyToServedUser"    # Z

    .prologue
    .line 367
    iput-boolean p1, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyServedUserOnOutboundCall:Z

    .line 366
    return-void
.end method

.method public setRevealIdentityToCaller(Z)V
    .registers 2
    .param p1, "revealIdToCaller"    # Z

    .prologue
    .line 355
    iput-boolean p1, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealIdentityToCaller:Z

    .line 354
    return-void
.end method

.method public setRevealIdentityToTarget(Z)V
    .registers 2
    .param p1, "revealIdToTarget"    # Z

    .prologue
    .line 371
    iput-boolean p1, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealIdentityToTarget:Z

    .line 370
    return-void
.end method

.method public setRevealServedUserIdentityToCaller(Z)V
    .registers 2
    .param p1, "revealIdToCaller"    # Z

    .prologue
    .line 359
    iput-boolean p1, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealServedUserIdentityToCaller:Z

    .line 358
    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .registers 2
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mTarget:Ljava/lang/String;

    .line 346
    return-void
.end method

.method public toXmlElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .registers 14
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 239
    const-string/jumbo v10, "xcap.ns.ss"

    const-string/jumbo v11, "false"

    invoke-static {v10, v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 241
    .local v9, "useXcapNs":Ljava/lang/String;
    const-string/jumbo v10, "true"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e5

    .line 242
    const-string/jumbo v10, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    .line 243
    const-string/jumbo v11, "ss:forward-to"

    .line 242
    invoke-interface {p1, v10, v11}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 245
    .local v2, "forwardElement":Lorg/w3c/dom/Element;
    const-string/jumbo v10, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    .line 246
    const-string/jumbo v11, "ss:target"

    .line 245
    invoke-interface {p1, v10, v11}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 247
    .local v0, "allowElement":Lorg/w3c/dom/Element;
    iget-object v10, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mTarget:Ljava/lang/String;

    invoke-interface {v0, v10}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 248
    invoke-interface {v2, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 250
    const-string/jumbo v10, "xcap.completeforwardto"

    .line 251
    const-string/jumbo v11, "false"

    .line 250
    invoke-static {v10, v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, "completeForwardTo":Ljava/lang/String;
    const-string/jumbo v10, "true"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_cc

    .line 254
    const-string/jumbo v10, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    .line 255
    const-string/jumbo v11, "ss:notify-caller"

    .line 254
    invoke-interface {p1, v10, v11}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 256
    .local v3, "notifyCallerElement":Lorg/w3c/dom/Element;
    iget-boolean v10, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyCaller:Z

    if-eqz v10, :cond_cd

    const-string/jumbo v10, "true"

    :goto_53
    invoke-interface {v3, v10}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 257
    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 260
    const-string/jumbo v10, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    .line 261
    const-string/jumbo v11, "ss:reveal-identity-to-caller"

    .line 260
    invoke-interface {p1, v10, v11}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    .line 263
    .local v6, "revealIdentityToCallerElement":Lorg/w3c/dom/Element;
    iget-boolean v10, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealIdentityToCaller:Z

    if-eqz v10, :cond_d1

    const-string/jumbo v10, "true"

    .line 262
    :goto_6a
    invoke-interface {v6, v10}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 264
    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 267
    const-string/jumbo v10, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    .line 268
    const-string/jumbo v11, "ss:reveal-served-user-identity-to-caller"

    .line 267
    invoke-interface {p1, v10, v11}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    .line 270
    .local v8, "revealServedUserIdentityToCallerElement":Lorg/w3c/dom/Element;
    iget-boolean v10, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealServedUserIdentityToCaller:Z

    if-eqz v10, :cond_d5

    const-string/jumbo v10, "true"

    .line 269
    :goto_81
    invoke-interface {v8, v10}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 271
    invoke-interface {v2, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 274
    const-string/jumbo v10, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    .line 275
    const-string/jumbo v11, "ss:notify-served-user"

    .line 274
    invoke-interface {p1, v10, v11}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 276
    .local v4, "notifyServedUserElement":Lorg/w3c/dom/Element;
    iget-boolean v10, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyServedUser:Z

    if-eqz v10, :cond_d9

    const-string/jumbo v10, "true"

    :goto_98
    invoke-interface {v4, v10}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 277
    invoke-interface {v2, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 280
    const-string/jumbo v10, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    .line 281
    const-string/jumbo v11, "ss:notify-served-user-on-outbound-call"

    .line 280
    invoke-interface {p1, v10, v11}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 283
    .local v5, "notifyServedUserOnOutboundCallElement":Lorg/w3c/dom/Element;
    iget-boolean v10, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyServedUserOnOutboundCall:Z

    if-eqz v10, :cond_dd

    const-string/jumbo v10, "true"

    .line 282
    :goto_af
    invoke-interface {v5, v10}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 284
    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 287
    const-string/jumbo v10, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    .line 288
    const-string/jumbo v11, "ss:reveal-identity-to-target"

    .line 287
    invoke-interface {p1, v10, v11}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v7

    .line 290
    .local v7, "revealIdentityToTargetElement":Lorg/w3c/dom/Element;
    iget-boolean v10, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealIdentityToTarget:Z

    if-eqz v10, :cond_e1

    const-string/jumbo v10, "true"

    .line 289
    :goto_c6
    invoke-interface {v7, v10}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 291
    invoke-interface {v2, v7}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 294
    .end local v3    # "notifyCallerElement":Lorg/w3c/dom/Element;
    .end local v4    # "notifyServedUserElement":Lorg/w3c/dom/Element;
    .end local v5    # "notifyServedUserOnOutboundCallElement":Lorg/w3c/dom/Element;
    .end local v6    # "revealIdentityToCallerElement":Lorg/w3c/dom/Element;
    .end local v7    # "revealIdentityToTargetElement":Lorg/w3c/dom/Element;
    .end local v8    # "revealServedUserIdentityToCallerElement":Lorg/w3c/dom/Element;
    :cond_cc
    return-object v2

    .line 256
    .restart local v3    # "notifyCallerElement":Lorg/w3c/dom/Element;
    :cond_cd
    const-string/jumbo v10, "false"

    goto :goto_53

    .line 263
    .restart local v6    # "revealIdentityToCallerElement":Lorg/w3c/dom/Element;
    :cond_d1
    const-string/jumbo v10, "false"

    goto :goto_6a

    .line 270
    .restart local v8    # "revealServedUserIdentityToCallerElement":Lorg/w3c/dom/Element;
    :cond_d5
    const-string/jumbo v10, "false"

    goto :goto_81

    .line 276
    .restart local v4    # "notifyServedUserElement":Lorg/w3c/dom/Element;
    :cond_d9
    const-string/jumbo v10, "false"

    goto :goto_98

    .line 283
    .restart local v5    # "notifyServedUserOnOutboundCallElement":Lorg/w3c/dom/Element;
    :cond_dd
    const-string/jumbo v10, "false"

    goto :goto_af

    .line 290
    .restart local v7    # "revealIdentityToTargetElement":Lorg/w3c/dom/Element;
    :cond_e1
    const-string/jumbo v10, "false"

    goto :goto_c6

    .line 296
    .end local v0    # "allowElement":Lorg/w3c/dom/Element;
    .end local v1    # "completeForwardTo":Ljava/lang/String;
    .end local v2    # "forwardElement":Lorg/w3c/dom/Element;
    .end local v3    # "notifyCallerElement":Lorg/w3c/dom/Element;
    .end local v4    # "notifyServedUserElement":Lorg/w3c/dom/Element;
    .end local v5    # "notifyServedUserOnOutboundCallElement":Lorg/w3c/dom/Element;
    .end local v6    # "revealIdentityToCallerElement":Lorg/w3c/dom/Element;
    .end local v7    # "revealIdentityToTargetElement":Lorg/w3c/dom/Element;
    .end local v8    # "revealServedUserIdentityToCallerElement":Lorg/w3c/dom/Element;
    :cond_e5
    const-string/jumbo v10, "forward-to"

    invoke-interface {p1, v10}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 298
    .restart local v2    # "forwardElement":Lorg/w3c/dom/Element;
    const-string/jumbo v10, "target"

    invoke-interface {p1, v10}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 299
    .restart local v0    # "allowElement":Lorg/w3c/dom/Element;
    iget-object v10, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mTarget:Ljava/lang/String;

    invoke-interface {v0, v10}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 300
    invoke-interface {v2, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 302
    const-string/jumbo v10, "xcap.completeforwardto"

    .line 303
    const-string/jumbo v11, "false"

    .line 302
    invoke-static {v10, v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 305
    .restart local v1    # "completeForwardTo":Ljava/lang/String;
    const-string/jumbo v10, "true"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_186

    .line 306
    const-string/jumbo v10, "notify-caller"

    invoke-interface {p1, v10}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 307
    .restart local v3    # "notifyCallerElement":Lorg/w3c/dom/Element;
    iget-boolean v10, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyCaller:Z

    if-eqz v10, :cond_187

    const-string/jumbo v10, "true"

    :goto_11c
    invoke-interface {v3, v10}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 308
    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 311
    const-string/jumbo v10, "reveal-identity-to-caller"

    invoke-interface {p1, v10}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    .line 313
    .restart local v6    # "revealIdentityToCallerElement":Lorg/w3c/dom/Element;
    iget-boolean v10, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealIdentityToCaller:Z

    if-eqz v10, :cond_18b

    const-string/jumbo v10, "true"

    .line 312
    :goto_130
    invoke-interface {v6, v10}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 314
    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 317
    const-string/jumbo v10, "reveal-served-user-identity-to-caller"

    invoke-interface {p1, v10}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    .line 319
    .restart local v8    # "revealServedUserIdentityToCallerElement":Lorg/w3c/dom/Element;
    iget-boolean v10, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealServedUserIdentityToCaller:Z

    if-eqz v10, :cond_18f

    const-string/jumbo v10, "true"

    .line 318
    :goto_144
    invoke-interface {v8, v10}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 320
    invoke-interface {v2, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 323
    const-string/jumbo v10, "notify-served-user"

    invoke-interface {p1, v10}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 324
    .restart local v4    # "notifyServedUserElement":Lorg/w3c/dom/Element;
    iget-boolean v10, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyServedUser:Z

    if-eqz v10, :cond_193

    const-string/jumbo v10, "true"

    :goto_158
    invoke-interface {v4, v10}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 325
    invoke-interface {v2, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 328
    const-string/jumbo v10, "notify-served-user-on-outbound-call"

    invoke-interface {p1, v10}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 330
    .restart local v5    # "notifyServedUserOnOutboundCallElement":Lorg/w3c/dom/Element;
    iget-boolean v10, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyServedUserOnOutboundCall:Z

    if-eqz v10, :cond_197

    const-string/jumbo v10, "true"

    .line 329
    :goto_16c
    invoke-interface {v5, v10}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 331
    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 334
    const-string/jumbo v10, "reveal-identity-to-target"

    invoke-interface {p1, v10}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v7

    .line 336
    .restart local v7    # "revealIdentityToTargetElement":Lorg/w3c/dom/Element;
    iget-boolean v10, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealIdentityToTarget:Z

    if-eqz v10, :cond_19b

    const-string/jumbo v10, "true"

    .line 335
    :goto_180
    invoke-interface {v7, v10}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 337
    invoke-interface {v2, v7}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 340
    .end local v3    # "notifyCallerElement":Lorg/w3c/dom/Element;
    .end local v4    # "notifyServedUserElement":Lorg/w3c/dom/Element;
    .end local v5    # "notifyServedUserOnOutboundCallElement":Lorg/w3c/dom/Element;
    .end local v6    # "revealIdentityToCallerElement":Lorg/w3c/dom/Element;
    .end local v7    # "revealIdentityToTargetElement":Lorg/w3c/dom/Element;
    .end local v8    # "revealServedUserIdentityToCallerElement":Lorg/w3c/dom/Element;
    :cond_186
    return-object v2

    .line 307
    .restart local v3    # "notifyCallerElement":Lorg/w3c/dom/Element;
    :cond_187
    const-string/jumbo v10, "false"

    goto :goto_11c

    .line 313
    .restart local v6    # "revealIdentityToCallerElement":Lorg/w3c/dom/Element;
    :cond_18b
    const-string/jumbo v10, "false"

    goto :goto_130

    .line 319
    .restart local v8    # "revealServedUserIdentityToCallerElement":Lorg/w3c/dom/Element;
    :cond_18f
    const-string/jumbo v10, "false"

    goto :goto_144

    .line 324
    .restart local v4    # "notifyServedUserElement":Lorg/w3c/dom/Element;
    :cond_193
    const-string/jumbo v10, "false"

    goto :goto_158

    .line 330
    .restart local v5    # "notifyServedUserOnOutboundCallElement":Lorg/w3c/dom/Element;
    :cond_197
    const-string/jumbo v10, "false"

    goto :goto_16c

    .line 336
    .restart local v7    # "revealIdentityToTargetElement":Lorg/w3c/dom/Element;
    :cond_19b
    const-string/jumbo v10, "false"

    goto :goto_180
.end method
