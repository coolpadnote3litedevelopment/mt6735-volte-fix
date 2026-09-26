.class public Lcom/mediatek/simservs/client/policy/RuleSet;
.super Lcom/mediatek/simservs/xcap/XcapElement;
.source "RuleSet.java"

# interfaces
.implements Lcom/mediatek/simservs/xcap/ConfigureType;


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "cp:ruleset"

.field public static final NODE_NAME_WITH_NAMESPACE:Ljava/lang/String; = "cp:ruleset?xmlns(cp=urn:ietf:params:xml:ns:common-policy)"


# instance fields
.field public mRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/simservs/client/policy/Rule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V
    .registers 5
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .param p4, "domElement"    # Lorg/w3c/dom/Element;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0, p4}, Lcom/mediatek/simservs/client/policy/RuleSet;->instantiateFromXmlNode(Lorg/w3c/dom/Node;)V

    .line 57
    return-void
.end method

.method private unfoldRules(Lcom/mediatek/simservs/client/policy/Rule;Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .registers 13
    .param p1, "aRule"    # Lcom/mediatek/simservs/client/policy/Rule;
    .param p2, "element"    # Lorg/w3c/dom/Element;
    .param p3, "media"    # Ljava/lang/String;

    .prologue
    .line 221
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v6

    if-eqz v6, :cond_55

    .line 222
    new-instance v0, Lcom/mediatek/simservs/client/policy/Rule;

    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mParentUri:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "cp:ruleset"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mIntendedId:Ljava/lang/String;

    invoke-direct {v0, v6, v7, v8, p2}, Lcom/mediatek/simservs/client/policy/Rule;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    .line 224
    .local v0, "ruleBusy":Lcom/mediatek/simservs/client/policy/Rule;
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    if-eqz v6, :cond_39

    .line 225
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v6}, Lcom/mediatek/simservs/client/policy/Rule;->setNetwork(Landroid/net/Network;)V

    .line 227
    :cond_39
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->clearConditions()V

    .line 228
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->addBusy()V

    .line 229
    if-eqz p3, :cond_50

    .line 230
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6, p3}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 233
    :cond_50
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    .end local v0    # "ruleBusy":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_55
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v6

    if-eqz v6, :cond_aa

    .line 236
    new-instance v4, Lcom/mediatek/simservs/client/policy/Rule;

    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mParentUri:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "cp:ruleset"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mIntendedId:Ljava/lang/String;

    invoke-direct {v4, v6, v7, v8, p2}, Lcom/mediatek/simservs/client/policy/Rule;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    .line 238
    .local v4, "ruleNotReachable":Lcom/mediatek/simservs/client/policy/Rule;
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    if-eqz v6, :cond_8e

    .line 239
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    invoke-virtual {v4, v6}, Lcom/mediatek/simservs/client/policy/Rule;->setNetwork(Landroid/net/Network;)V

    .line 241
    :cond_8e
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->clearConditions()V

    .line 242
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotReachable()V

    .line 243
    if-eqz p3, :cond_a5

    .line 244
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6, p3}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 247
    :cond_a5
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    .end local v4    # "ruleNotReachable":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_aa
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v6

    if-eqz v6, :cond_ff

    .line 250
    new-instance v1, Lcom/mediatek/simservs/client/policy/Rule;

    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mParentUri:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "cp:ruleset"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mIntendedId:Ljava/lang/String;

    invoke-direct {v1, v6, v7, v8, p2}, Lcom/mediatek/simservs/client/policy/Rule;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    .line 252
    .local v1, "ruleInternational":Lcom/mediatek/simservs/client/policy/Rule;
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    if-eqz v6, :cond_e3

    .line 253
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v6}, Lcom/mediatek/simservs/client/policy/Rule;->setNetwork(Landroid/net/Network;)V

    .line 255
    :cond_e3
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->clearConditions()V

    .line 256
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternational()V

    .line 257
    if-eqz p3, :cond_fa

    .line 258
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6, p3}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 261
    :cond_fa
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    .end local v1    # "ruleInternational":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_ff
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternationalExHc()Z

    move-result v6

    if-eqz v6, :cond_154

    .line 264
    new-instance v2, Lcom/mediatek/simservs/client/policy/Rule;

    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mParentUri:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "cp:ruleset"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 265
    iget-object v8, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mIntendedId:Ljava/lang/String;

    .line 264
    invoke-direct {v2, v6, v7, v8, p2}, Lcom/mediatek/simservs/client/policy/Rule;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    .line 266
    .local v2, "ruleInternationalExHc":Lcom/mediatek/simservs/client/policy/Rule;
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    if-eqz v6, :cond_138

    .line 267
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    invoke-virtual {v2, v6}, Lcom/mediatek/simservs/client/policy/Rule;->setNetwork(Landroid/net/Network;)V

    .line 269
    :cond_138
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->clearConditions()V

    .line 270
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternational()V

    .line 271
    if-eqz p3, :cond_14f

    .line 272
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6, p3}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 275
    :cond_14f
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    .end local v2    # "ruleInternationalExHc":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_154
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v6

    if-eqz v6, :cond_1a9

    .line 279
    new-instance v3, Lcom/mediatek/simservs/client/policy/Rule;

    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mParentUri:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "cp:ruleset"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mIntendedId:Ljava/lang/String;

    invoke-direct {v3, v6, v7, v8, p2}, Lcom/mediatek/simservs/client/policy/Rule;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    .line 281
    .local v3, "ruleNoAnswer":Lcom/mediatek/simservs/client/policy/Rule;
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    if-eqz v6, :cond_18d

    .line 282
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    invoke-virtual {v3, v6}, Lcom/mediatek/simservs/client/policy/Rule;->setNetwork(Landroid/net/Network;)V

    .line 284
    :cond_18d
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->clearConditions()V

    .line 285
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->addNoAnswer()V

    .line 286
    if-eqz p3, :cond_1a4

    .line 287
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6, p3}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 290
    :cond_1a4
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    .end local v3    # "ruleNoAnswer":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_1a9
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v6

    if-eqz v6, :cond_1fe

    .line 293
    new-instance v5, Lcom/mediatek/simservs/client/policy/Rule;

    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mParentUri:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "cp:ruleset"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mIntendedId:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8, p2}, Lcom/mediatek/simservs/client/policy/Rule;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    .line 295
    .local v5, "ruleRoaming":Lcom/mediatek/simservs/client/policy/Rule;
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    if-eqz v6, :cond_1e2

    .line 296
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    invoke-virtual {v5, v6}, Lcom/mediatek/simservs/client/policy/Rule;->setNetwork(Landroid/net/Network;)V

    .line 298
    :cond_1e2
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->clearConditions()V

    .line 299
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->addRoaming()V

    .line 300
    if-eqz p3, :cond_1f9

    .line 301
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6, p3}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 304
    :cond_1f9
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    .end local v5    # "ruleRoaming":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_1fe
    return-void
.end method


# virtual methods
.method public clearRules()V
    .registers 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    if-nez v0, :cond_b

    .line 339
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    .line 341
    :cond_b
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 337
    return-void
.end method

.method public createNewRule(Ljava/lang/String;)Lcom/mediatek/simservs/client/policy/Rule;
    .registers 6
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 319
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    if-nez v1, :cond_b

    .line 320
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    .line 322
    :cond_b
    new-instance v0, Lcom/mediatek/simservs/client/policy/Rule;

    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mParentUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "cp:ruleset"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mIntendedId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/simservs/client/policy/Rule;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    .local v0, "aRule":Lcom/mediatek/simservs/client/policy/Rule;
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    if-eqz v1, :cond_3a

    .line 324
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/Rule;->setNetwork(Landroid/net/Network;)V

    .line 326
    :cond_3a
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mEtag:Ljava/lang/String;

    if-eqz v1, :cond_43

    .line 327
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mEtag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/Rule;->setEtag(Ljava/lang/String;)V

    .line 329
    :cond_43
    invoke-virtual {v0, p1}, Lcom/mediatek/simservs/client/policy/Rule;->setId(Ljava/lang/String;)V

    .line 330
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    return-object v0
.end method

.method protected getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    const-string/jumbo v0, "cp:ruleset?xmlns(cp=urn:ietf:params:xml:ns:common-policy)"

    return-object v0
.end method

.method public getRules()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/simservs/client/policy/Rule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    return-object v0
.end method

.method public instantiateFromXmlNode(Lorg/w3c/dom/Node;)V
    .registers 10
    .param p1, "domNode"    # Lorg/w3c/dom/Node;

    .prologue
    move-object v1, p1

    .line 70
    check-cast v1, Lorg/w3c/dom/Element;

    .line 71
    .local v1, "domElement":Lorg/w3c/dom/Element;
    const-string/jumbo v5, "rule"

    invoke-interface {v1, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 72
    .local v2, "domNodes":Lorg/w3c/dom/NodeList;
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v5, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    .line 73
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_76

    .line 74
    const-string/jumbo v5, "RuleSet"

    const-string/jumbo v6, "Got rule"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_21
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v4, v5, :cond_76

    .line 76
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 77
    .local v3, "element":Lorg/w3c/dom/Element;
    new-instance v0, Lcom/mediatek/simservs/client/policy/Rule;

    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mParentUri:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "cp:ruleset"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mIntendedId:Ljava/lang/String;

    invoke-direct {v0, v5, v6, v7, v3}, Lcom/mediatek/simservs/client/policy/Rule;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    .line 79
    .local v0, "aRule":Lcom/mediatek/simservs/client/policy/Rule;
    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    if-eqz v5, :cond_5c

    .line 80
    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v5}, Lcom/mediatek/simservs/client/policy/Rule;->setNetwork(Landroid/net/Network;)V

    .line 83
    :cond_5c
    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_65

    .line 84
    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Lcom/mediatek/simservs/client/policy/Rule;->setContext(Landroid/content/Context;)V

    .line 87
    :cond_65
    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mEtag:Ljava/lang/String;

    if-eqz v5, :cond_6e

    .line 88
    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mEtag:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/mediatek/simservs/client/policy/Rule;->setEtag(Ljava/lang/String;)V

    .line 91
    :cond_6e
    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 95
    .end local v0    # "aRule":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v3    # "element":Lorg/w3c/dom/Element;
    .end local v4    # "i":I
    :cond_76
    const-string/jumbo v5, "urn:ietf:params:xml:ns:common-policy"

    const-string/jumbo v6, "rule"

    invoke-interface {v1, v5, v6}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 96
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_e5

    .line 97
    const-string/jumbo v5, "RuleSet"

    const-string/jumbo v6, "Got rule"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_90
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v4, v5, :cond_151

    .line 99
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 100
    .restart local v3    # "element":Lorg/w3c/dom/Element;
    new-instance v0, Lcom/mediatek/simservs/client/policy/Rule;

    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mParentUri:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "cp:ruleset"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mIntendedId:Ljava/lang/String;

    invoke-direct {v0, v5, v6, v7, v3}, Lcom/mediatek/simservs/client/policy/Rule;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    .line 102
    .restart local v0    # "aRule":Lcom/mediatek/simservs/client/policy/Rule;
    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    if-eqz v5, :cond_cb

    .line 103
    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v5}, Lcom/mediatek/simservs/client/policy/Rule;->setNetwork(Landroid/net/Network;)V

    .line 106
    :cond_cb
    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_d4

    .line 107
    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Lcom/mediatek/simservs/client/policy/Rule;->setContext(Landroid/content/Context;)V

    .line 110
    :cond_d4
    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mEtag:Ljava/lang/String;

    if-eqz v5, :cond_dd

    .line 111
    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mEtag:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/mediatek/simservs/client/policy/Rule;->setEtag(Ljava/lang/String;)V

    .line 114
    :cond_dd
    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    add-int/lit8 v4, v4, 0x1

    goto :goto_90

    .line 117
    .end local v0    # "aRule":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v3    # "element":Lorg/w3c/dom/Element;
    .end local v4    # "i":I
    :cond_e5
    const-string/jumbo v5, "cp:rule"

    invoke-interface {v1, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 118
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_151

    .line 119
    const-string/jumbo v5, "RuleSet"

    const-string/jumbo v6, "Got cp:rule"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_fc
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v4, v5, :cond_151

    .line 121
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 122
    .restart local v3    # "element":Lorg/w3c/dom/Element;
    new-instance v0, Lcom/mediatek/simservs/client/policy/Rule;

    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mParentUri:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "cp:ruleset"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 123
    iget-object v7, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mIntendedId:Ljava/lang/String;

    .line 122
    invoke-direct {v0, v5, v6, v7, v3}, Lcom/mediatek/simservs/client/policy/Rule;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    .line 124
    .restart local v0    # "aRule":Lcom/mediatek/simservs/client/policy/Rule;
    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    if-eqz v5, :cond_137

    .line 125
    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v5}, Lcom/mediatek/simservs/client/policy/Rule;->setNetwork(Landroid/net/Network;)V

    .line 128
    :cond_137
    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_140

    .line 129
    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Lcom/mediatek/simservs/client/policy/Rule;->setContext(Landroid/content/Context;)V

    .line 132
    :cond_140
    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mEtag:Ljava/lang/String;

    if-eqz v5, :cond_149

    .line 133
    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mEtag:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/mediatek/simservs/client/policy/Rule;->setEtag(Ljava/lang/String;)V

    .line 136
    :cond_149
    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    add-int/lit8 v4, v4, 0x1

    goto :goto_fc

    .line 141
    .end local v0    # "aRule":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v3    # "element":Lorg/w3c/dom/Element;
    .end local v4    # "i":I
    :cond_151
    const-string/jumbo v5, "RuleSet"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "rules size:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void
.end method

.method public setEtag(Ljava/lang/String;)V
    .registers 7
    .param p1, "etag"    # Ljava/lang/String;

    .prologue
    .line 386
    iput-object p1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mEtag:Ljava/lang/String;

    .line 388
    iget-object v2, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "rule$iterator":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/simservs/client/policy/Rule;

    .line 389
    .local v0, "rule":Lcom/mediatek/simservs/client/policy/Rule;
    const-string/jumbo v2, "RuleSet"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "rule:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", set etag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-virtual {v0, p1}, Lcom/mediatek/simservs/client/policy/Rule;->setEtag(Ljava/lang/String;)V

    goto :goto_8

    .line 385
    .end local v0    # "rule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_3f
    return-void
.end method

.method public setNetwork(Landroid/net/Network;)V
    .registers 7
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 400
    invoke-super {p0, p1}, Lcom/mediatek/simservs/xcap/XcapElement;->setNetwork(Landroid/net/Network;)V

    .line 402
    if-eqz p1, :cond_42

    .line 403
    iget-object v2, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "rule$iterator":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/simservs/client/policy/Rule;

    .line 404
    .local v0, "rule":Lcom/mediatek/simservs/client/policy/Rule;
    const-string/jumbo v2, "RuleSet"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "rule:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", netid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-virtual {v0, p1}, Lcom/mediatek/simservs/client/policy/Rule;->setNetwork(Landroid/net/Network;)V

    goto :goto_b

    .line 399
    .end local v0    # "rule":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v1    # "rule$iterator":Ljava/util/Iterator;
    :cond_42
    return-void
.end method

.method public toXmlString()Ljava/lang/String;
    .registers 13

    .prologue
    .line 350
    const/4 v7, 0x0

    .line 351
    .local v7, "root":Lorg/w3c/dom/Element;
    const/4 v10, 0x0

    .line 352
    .local v10, "xmlString":Ljava/lang/String;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    .line 354
    .local v4, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_6
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 355
    .local v0, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    .line 356
    .local v1, "document":Lorg/w3c/dom/Document;
    const-string/jumbo v11, "cp:ruleset"

    invoke-interface {v1, v11}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v7

    .line 357
    .local v7, "root":Lorg/w3c/dom/Element;
    invoke-interface {v1, v7}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 359
    iget-object v11, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    if-eqz v11, :cond_3b

    .line 360
    iget-object v11, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 361
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :goto_22
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3b

    .line 362
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/simservs/client/policy/Rule;

    .line 363
    .local v8, "rule":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v8, v1}, Lcom/mediatek/simservs/client/policy/Rule;->toXmlElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v9

    .line 364
    .local v9, "ruleElement":Lorg/w3c/dom/Element;
    invoke-interface {v7, v9}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_35
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_6 .. :try_end_35} :catch_36
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_6 .. :try_end_35} :catch_45
    .catch Ljavax/xml/transform/TransformerException; {:try_start_6 .. :try_end_35} :catch_40

    goto :goto_22

    .line 368
    .end local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "document":Lorg/w3c/dom/Document;
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v7    # "root":Lorg/w3c/dom/Element;
    .end local v8    # "rule":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v9    # "ruleElement":Lorg/w3c/dom/Element;
    :catch_36
    move-exception v6

    .line 370
    .local v6, "pce":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v6}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    .line 376
    .end local v6    # "pce":Ljavax/xml/parsers/ParserConfigurationException;
    .end local v10    # "xmlString":Ljava/lang/String;
    :goto_3a
    return-object v10

    .line 367
    .restart local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v1    # "document":Lorg/w3c/dom/Document;
    .restart local v7    # "root":Lorg/w3c/dom/Element;
    .restart local v10    # "xmlString":Ljava/lang/String;
    :cond_3b
    :try_start_3b
    invoke-virtual {p0, v7}, Lcom/mediatek/simservs/client/policy/RuleSet;->domToXmlText(Lorg/w3c/dom/Element;)Ljava/lang/String;
    :try_end_3e
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3b .. :try_end_3e} :catch_36
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_3b .. :try_end_3e} :catch_45
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3b .. :try_end_3e} :catch_40

    move-result-object v10

    .local v10, "xmlString":Ljava/lang/String;
    goto :goto_3a

    .line 373
    .end local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "document":Lorg/w3c/dom/Document;
    .end local v7    # "root":Lorg/w3c/dom/Element;
    .local v10, "xmlString":Ljava/lang/String;
    :catch_40
    move-exception v3

    .line 374
    .local v3, "e":Ljavax/xml/transform/TransformerException;
    invoke-virtual {v3}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto :goto_3a

    .line 371
    .end local v3    # "e":Ljavax/xml/transform/TransformerException;
    :catch_45
    move-exception v2

    .line 372
    .local v2, "e":Ljavax/xml/transform/TransformerConfigurationException;
    invoke-virtual {v2}, Ljavax/xml/transform/TransformerConfigurationException;->printStackTrace()V

    goto :goto_3a
.end method
