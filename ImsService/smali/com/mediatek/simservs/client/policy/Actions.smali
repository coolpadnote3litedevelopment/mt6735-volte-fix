.class public Lcom/mediatek/simservs/client/policy/Actions;
.super Lcom/mediatek/simservs/xcap/XcapElement;
.source "Actions.java"

# interfaces
.implements Lcom/mediatek/simservs/xcap/ConfigureType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/simservs/client/policy/Actions$NoReplyTimer;
    }
.end annotation


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "cp:actions"

.field static final TAG_ALLOW:Ljava/lang/String; = "allow"

.field static final TAG_FORWARD_TO:Ljava/lang/String; = "forward-to"


# instance fields
.field public mAllow:Z

.field public mForwardTo:Lcom/mediatek/simservs/client/policy/ForwardTo;

.field public mNoReplyTimer:Lcom/mediatek/simservs/client/policy/Actions$NoReplyTimer;


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V
    .registers 5
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .param p4, "domElement"    # Lorg/w3c/dom/Element;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0, p4}, Lcom/mediatek/simservs/client/policy/Actions;->instantiateFromXmlNode(Lorg/w3c/dom/Node;)V

    .line 49
    return-void
.end method


# virtual methods
.method public getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;
    .registers 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Actions;->mForwardTo:Lcom/mediatek/simservs/client/policy/ForwardTo;

    return-object v0
.end method

.method public getNoReplyTimer()I
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Actions;->mNoReplyTimer:Lcom/mediatek/simservs/client/policy/Actions$NoReplyTimer;

    if-eqz v0, :cond_b

    .line 206
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Actions;->mNoReplyTimer:Lcom/mediatek/simservs/client/policy/Actions$NoReplyTimer;

    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Actions$NoReplyTimer;->getValue()I

    move-result v0

    return v0

    .line 208
    :cond_b
    const/4 v0, -0x1

    return v0
.end method

.method protected getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 56
    const-string/jumbo v0, "cp:actions"

    return-object v0
.end method

.method public instantiateFromXmlNode(Lorg/w3c/dom/Node;)V
    .registers 14
    .param p1, "domNode"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v4, 0x0

    move-object v9, p1

    .line 61
    check-cast v9, Lorg/w3c/dom/Element;

    .line 62
    .local v9, "domElement":Lorg/w3c/dom/Element;
    const-string/jumbo v0, "allow"

    invoke-interface {v9, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 63
    .local v6, "actionNode":Lorg/w3c/dom/NodeList;
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_73

    .line 64
    invoke-interface {v6, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 65
    .local v7, "allowElement":Lorg/w3c/dom/Element;
    invoke-interface {v7}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v8

    .line 66
    .local v8, "allowed":Ljava/lang/String;
    const-string/jumbo v0, "true"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Actions;->mAllow:Z

    .line 83
    .end local v7    # "allowElement":Lorg/w3c/dom/Element;
    .end local v8    # "allowed":Ljava/lang/String;
    :cond_24
    :goto_24
    const-string/jumbo v0, "forward-to"

    invoke-interface {v9, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 84
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_b9

    .line 85
    new-instance v0, Lcom/mediatek/simservs/client/policy/ForwardTo;

    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/Actions;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string/jumbo v2, "cp:actions"

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Actions;->mIntendedId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v9}, Lcom/mediatek/simservs/client/policy/ForwardTo;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Actions;->mForwardTo:Lcom/mediatek/simservs/client/policy/ForwardTo;

    .line 103
    :goto_3f
    const-string/jumbo v0, "NoReplyTimer"

    invoke-interface {v9, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 104
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_106

    .line 105
    const-string/jumbo v0, "Actions"

    const-string/jumbo v1, "Got NoReplyTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-interface {v6, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    .line 107
    .local v10, "noReplyTimerElement":Lorg/w3c/dom/Element;
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v11

    .line 108
    .local v11, "val":Ljava/lang/String;
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 109
    .local v5, "noReplyTimer":I
    new-instance v0, Lcom/mediatek/simservs/client/policy/Actions$NoReplyTimer;

    iget-object v2, p0, Lcom/mediatek/simservs/client/policy/Actions;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string/jumbo v3, "NoReplyTimer"

    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/Actions;->mIntendedId:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/client/policy/Actions$NoReplyTimer;-><init>(Lcom/mediatek/simservs/client/policy/Actions;Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Actions;->mNoReplyTimer:Lcom/mediatek/simservs/client/policy/Actions$NoReplyTimer;

    .line 60
    .end local v5    # "noReplyTimer":I
    .end local v10    # "noReplyTimerElement":Lorg/w3c/dom/Element;
    .end local v11    # "val":Ljava/lang/String;
    :cond_72
    :goto_72
    return-void

    .line 68
    :cond_73
    const-string/jumbo v0, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string/jumbo v1, "allow"

    invoke-interface {v9, v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 69
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_97

    .line 70
    invoke-interface {v6, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 71
    .restart local v7    # "allowElement":Lorg/w3c/dom/Element;
    invoke-interface {v7}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v8

    .line 72
    .restart local v8    # "allowed":Ljava/lang/String;
    const-string/jumbo v0, "true"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Actions;->mAllow:Z

    goto :goto_24

    .line 74
    .end local v7    # "allowElement":Lorg/w3c/dom/Element;
    .end local v8    # "allowed":Ljava/lang/String;
    :cond_97
    const-string/jumbo v0, "ss:allow"

    invoke-interface {v9, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 75
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_24

    .line 76
    invoke-interface {v6, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 77
    .restart local v7    # "allowElement":Lorg/w3c/dom/Element;
    invoke-interface {v7}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v8

    .line 78
    .restart local v8    # "allowed":Ljava/lang/String;
    const-string/jumbo v0, "true"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Actions;->mAllow:Z

    goto/16 :goto_24

    .line 88
    .end local v7    # "allowElement":Lorg/w3c/dom/Element;
    .end local v8    # "allowed":Ljava/lang/String;
    :cond_b9
    const-string/jumbo v0, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string/jumbo v1, "forward-to"

    invoke-interface {v9, v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 89
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_d9

    .line 90
    new-instance v0, Lcom/mediatek/simservs/client/policy/ForwardTo;

    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/Actions;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string/jumbo v2, "cp:actions"

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Actions;->mIntendedId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v9}, Lcom/mediatek/simservs/client/policy/ForwardTo;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Actions;->mForwardTo:Lcom/mediatek/simservs/client/policy/ForwardTo;

    goto/16 :goto_3f

    .line 93
    :cond_d9
    const-string/jumbo v0, "ss:forward-to"

    invoke-interface {v9, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 94
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_f6

    .line 95
    new-instance v0, Lcom/mediatek/simservs/client/policy/ForwardTo;

    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/Actions;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string/jumbo v2, "cp:actions"

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Actions;->mIntendedId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v9}, Lcom/mediatek/simservs/client/policy/ForwardTo;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Actions;->mForwardTo:Lcom/mediatek/simservs/client/policy/ForwardTo;

    goto/16 :goto_3f

    .line 98
    :cond_f6
    new-instance v0, Lcom/mediatek/simservs/client/policy/ForwardTo;

    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/Actions;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string/jumbo v2, "cp:actions"

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Actions;->mIntendedId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/simservs/client/policy/ForwardTo;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Actions;->mForwardTo:Lcom/mediatek/simservs/client/policy/ForwardTo;

    goto/16 :goto_3f

    .line 112
    :cond_106
    const-string/jumbo v0, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string/jumbo v1, "NoReplyTimer"

    invoke-interface {v9, v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 113
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_13e

    .line 114
    const-string/jumbo v0, "Actions"

    const-string/jumbo v1, "Got NoReplyTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-interface {v6, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    .line 116
    .restart local v10    # "noReplyTimerElement":Lorg/w3c/dom/Element;
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v11

    .line 117
    .restart local v11    # "val":Ljava/lang/String;
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 118
    .restart local v5    # "noReplyTimer":I
    new-instance v0, Lcom/mediatek/simservs/client/policy/Actions$NoReplyTimer;

    iget-object v2, p0, Lcom/mediatek/simservs/client/policy/Actions;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string/jumbo v3, "NoReplyTimer"

    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/Actions;->mIntendedId:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/client/policy/Actions$NoReplyTimer;-><init>(Lcom/mediatek/simservs/client/policy/Actions;Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Actions;->mNoReplyTimer:Lcom/mediatek/simservs/client/policy/Actions$NoReplyTimer;

    goto/16 :goto_72

    .line 121
    .end local v5    # "noReplyTimer":I
    .end local v10    # "noReplyTimerElement":Lorg/w3c/dom/Element;
    .end local v11    # "val":Ljava/lang/String;
    :cond_13e
    const-string/jumbo v0, "ss:NoReplyTimer"

    invoke-interface {v9, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 122
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_72

    .line 123
    const-string/jumbo v0, "Actions"

    const-string/jumbo v1, "Got NoReplyTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-interface {v6, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    .line 125
    .restart local v10    # "noReplyTimerElement":Lorg/w3c/dom/Element;
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v11

    .line 126
    .restart local v11    # "val":Ljava/lang/String;
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 127
    .restart local v5    # "noReplyTimer":I
    new-instance v0, Lcom/mediatek/simservs/client/policy/Actions$NoReplyTimer;

    iget-object v2, p0, Lcom/mediatek/simservs/client/policy/Actions;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string/jumbo v3, "NoReplyTimer"

    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/Actions;->mIntendedId:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/client/policy/Actions$NoReplyTimer;-><init>(Lcom/mediatek/simservs/client/policy/Actions;Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Actions;->mNoReplyTimer:Lcom/mediatek/simservs/client/policy/Actions$NoReplyTimer;

    goto/16 :goto_72
.end method

.method public isAllow()Z
    .registers 2

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Actions;->mAllow:Z

    return v0
.end method

.method public setAllow(Z)V
    .registers 2
    .param p1, "allow"    # Z

    .prologue
    .line 170
    iput-boolean p1, p0, Lcom/mediatek/simservs/client/policy/Actions;->mAllow:Z

    .line 169
    return-void
.end method

.method public setFowardTo(Ljava/lang/String;Z)V
    .registers 7
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "notifyCaller"    # Z

    .prologue
    .line 184
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Actions;->mForwardTo:Lcom/mediatek/simservs/client/policy/ForwardTo;

    if-nez v0, :cond_11

    .line 185
    new-instance v0, Lcom/mediatek/simservs/client/policy/ForwardTo;

    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/Actions;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v2, p0, Lcom/mediatek/simservs/client/policy/Actions;->mParentUri:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Actions;->mIntendedId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/simservs/client/policy/ForwardTo;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Actions;->mForwardTo:Lcom/mediatek/simservs/client/policy/ForwardTo;

    .line 187
    :cond_11
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Actions;->mForwardTo:Lcom/mediatek/simservs/client/policy/ForwardTo;

    invoke-virtual {v0, p1}, Lcom/mediatek/simservs/client/policy/ForwardTo;->setTarget(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Actions;->mForwardTo:Lcom/mediatek/simservs/client/policy/ForwardTo;

    invoke-virtual {v0, p2}, Lcom/mediatek/simservs/client/policy/ForwardTo;->setNotifyCaller(Z)V

    .line 183
    return-void
.end method

.method public setNoReplyTimer(I)V
    .registers 8
    .param p1, "value"    # I

    .prologue
    .line 196
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Actions;->mNoReplyTimer:Lcom/mediatek/simservs/client/policy/Actions$NoReplyTimer;

    if-eqz v0, :cond_a

    .line 197
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Actions;->mNoReplyTimer:Lcom/mediatek/simservs/client/policy/Actions$NoReplyTimer;

    invoke-virtual {v0, p1}, Lcom/mediatek/simservs/client/policy/Actions$NoReplyTimer;->setValue(I)V

    .line 195
    :cond_9
    :goto_9
    return-void

    .line 198
    :cond_a
    const/4 v0, -0x1

    if-eq p1, v0, :cond_9

    .line 199
    new-instance v0, Lcom/mediatek/simservs/client/policy/Actions$NoReplyTimer;

    iget-object v2, p0, Lcom/mediatek/simservs/client/policy/Actions;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string/jumbo v3, "NoReplyTimer"

    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/Actions;->mIntendedId:Ljava/lang/String;

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/client/policy/Actions$NoReplyTimer;-><init>(Lcom/mediatek/simservs/client/policy/Actions;Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Actions;->mNoReplyTimer:Lcom/mediatek/simservs/client/policy/Actions$NoReplyTimer;

    goto :goto_9
.end method

.method public toXmlElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .registers 9
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 142
    const-string/jumbo v5, "cp:actions"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 144
    .local v0, "actionsElement":Lorg/w3c/dom/Element;
    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/Actions;->mForwardTo:Lcom/mediatek/simservs/client/policy/ForwardTo;

    if-eqz v5, :cond_22

    .line 145
    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/Actions;->mForwardTo:Lcom/mediatek/simservs/client/policy/ForwardTo;

    invoke-virtual {v5, p1}, Lcom/mediatek/simservs/client/policy/ForwardTo;->toXmlElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 146
    .local v2, "forwardToElement":Lorg/w3c/dom/Element;
    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 161
    .end local v2    # "forwardToElement":Lorg/w3c/dom/Element;
    :goto_14
    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/Actions;->mNoReplyTimer:Lcom/mediatek/simservs/client/policy/Actions$NoReplyTimer;

    if-eqz v5, :cond_21

    .line 162
    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/Actions;->mNoReplyTimer:Lcom/mediatek/simservs/client/policy/Actions$NoReplyTimer;

    invoke-virtual {v5, p1}, Lcom/mediatek/simservs/client/policy/Actions$NoReplyTimer;->toXmlElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 163
    .local v3, "noReplyTimerElement":Lorg/w3c/dom/Element;
    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 166
    .end local v3    # "noReplyTimerElement":Lorg/w3c/dom/Element;
    :cond_21
    return-object v0

    .line 148
    :cond_22
    const-string/jumbo v5, "xcap.ns.ss"

    const-string/jumbo v6, "false"

    invoke-static {v5, v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 150
    .local v4, "useXcapNs":Ljava/lang/String;
    const-string/jumbo v5, "true"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 151
    const-string/jumbo v5, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    .line 152
    const-string/jumbo v6, "ss:allow"

    .line 151
    invoke-interface {p1, v5, v6}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 153
    .local v1, "allowElement":Lorg/w3c/dom/Element;
    iget-boolean v5, p0, Lcom/mediatek/simservs/client/policy/Actions;->mAllow:Z

    if-eqz v5, :cond_4d

    const-string/jumbo v5, "true"

    :goto_46
    invoke-interface {v1, v5}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 154
    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_14

    .line 153
    :cond_4d
    const-string/jumbo v5, "false"

    goto :goto_46

    .line 156
    .end local v1    # "allowElement":Lorg/w3c/dom/Element;
    :cond_51
    const-string/jumbo v5, "allow"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 157
    .restart local v1    # "allowElement":Lorg/w3c/dom/Element;
    iget-boolean v5, p0, Lcom/mediatek/simservs/client/policy/Actions;->mAllow:Z

    if-eqz v5, :cond_66

    const-string/jumbo v5, "true"

    :goto_5f
    invoke-interface {v1, v5}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 158
    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_14

    .line 157
    :cond_66
    const-string/jumbo v5, "false"

    goto :goto_5f
.end method
