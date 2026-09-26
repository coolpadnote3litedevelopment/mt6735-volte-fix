.class public Lcom/mediatek/simservs/client/policy/Conditions;
.super Lcom/mediatek/simservs/xcap/XcapElement;
.source "Conditions.java"

# interfaces
.implements Lcom/mediatek/simservs/xcap/ConfigureType;


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "cp:conditions"

.field static final TAG_ANONYMOUS:Ljava/lang/String; = "anonymous"

.field static final TAG_BUSY:Ljava/lang/String; = "busy"

.field static final TAG_COMMUNICATION_DIVERTED:Ljava/lang/String; = "communication-diverted"

.field static final TAG_INTERNATIONAL:Ljava/lang/String; = "international"

.field static final TAG_INTERNATIONAL_EXHC:Ljava/lang/String; = "international-exHC"

.field static final TAG_MEDIA:Ljava/lang/String; = "media"

.field static final TAG_NOT_REACHABLE:Ljava/lang/String; = "not-reachable"

.field static final TAG_NOT_REGISTERED:Ljava/lang/String; = "not-registered"

.field static final TAG_NO_ANSWER:Ljava/lang/String; = "no-answer"

.field static final TAG_PRESENCE_STATUS:Ljava/lang/String; = "presence-status"

.field static final TAG_ROAMING:Ljava/lang/String; = "roaming"

.field static final TAG_RULE_DEACTIVATED:Ljava/lang/String; = "rule-deactivated"

.field static final TAG_TIME:Ljava/lang/String; = "time"


# instance fields
.field public mComprehendAnonymous:Z

.field public mComprehendBusy:Z

.field public mComprehendCommunicationDiverted:Z

.field public mComprehendInternational:Z

.field public mComprehendInternationalexHc:Z

.field public mComprehendNoAnswer:Z

.field public mComprehendNotReachable:Z

.field public mComprehendNotRegistered:Z

.field public mComprehendPresenceStatus:Z

.field public mComprehendRoaming:Z

.field public mComprehendRuleDeactivated:Z

.field public mComprehendTime:Ljava/lang/String;

.field public mMedias:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
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
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendBusy:Z

    .line 39
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNoAnswer:Z

    .line 40
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNotReachable:Z

    .line 41
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNotRegistered:Z

    .line 42
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendRoaming:Z

    .line 43
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendRuleDeactivated:Z

    .line 44
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendInternational:Z

    .line 45
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendInternationalexHc:Z

    .line 46
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendCommunicationDiverted:Z

    .line 47
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendPresenceStatus:Z

    .line 48
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendAnonymous:Z

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V
    .registers 6
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .param p4, "domElement"    # Lorg/w3c/dom/Element;

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendBusy:Z

    .line 39
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNoAnswer:Z

    .line 40
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNotReachable:Z

    .line 41
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNotRegistered:Z

    .line 42
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendRoaming:Z

    .line 43
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendRuleDeactivated:Z

    .line 44
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendInternational:Z

    .line 45
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendInternationalexHc:Z

    .line 46
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendCommunicationDiverted:Z

    .line 47
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendPresenceStatus:Z

    .line 48
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendAnonymous:Z

    .line 76
    invoke-virtual {p0, p4}, Lcom/mediatek/simservs/client/policy/Conditions;->instantiateFromXmlNode(Lorg/w3c/dom/Node;)V

    .line 74
    return-void
.end method


# virtual methods
.method public addAnonymous()V
    .registers 2

    .prologue
    .line 575
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendAnonymous:Z

    .line 574
    return-void
.end method

.method public addBusy()V
    .registers 2

    .prologue
    .line 495
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendBusy:Z

    .line 494
    return-void
.end method

.method public addCommunicationDiverted()V
    .registers 2

    .prologue
    .line 559
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendCommunicationDiverted:Z

    .line 558
    return-void
.end method

.method public addInternational()V
    .registers 2

    .prologue
    .line 543
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendInternational:Z

    .line 542
    return-void
.end method

.method public addInternationalExHc()V
    .registers 2

    .prologue
    .line 551
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendInternationalexHc:Z

    .line 550
    return-void
.end method

.method public addMedia(Ljava/lang/String;)V
    .registers 3
    .param p1, "media"    # Ljava/lang/String;

    .prologue
    .line 701
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    if-nez v0, :cond_b

    .line 702
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    .line 704
    :cond_b
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 700
    return-void
.end method

.method public addNoAnswer()V
    .registers 2

    .prologue
    .line 503
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNoAnswer:Z

    .line 502
    return-void
.end method

.method public addNotReachable()V
    .registers 2

    .prologue
    .line 511
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNotReachable:Z

    .line 510
    return-void
.end method

.method public addNotRegistered()V
    .registers 2

    .prologue
    .line 519
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNotRegistered:Z

    .line 518
    return-void
.end method

.method public addPresenceStatus()V
    .registers 2

    .prologue
    .line 567
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendPresenceStatus:Z

    .line 566
    return-void
.end method

.method public addRoaming()V
    .registers 2

    .prologue
    .line 527
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendRoaming:Z

    .line 526
    return-void
.end method

.method public addRuleDeactivated()V
    .registers 2

    .prologue
    .line 535
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendRuleDeactivated:Z

    .line 534
    return-void
.end method

.method public addTime(Ljava/lang/String;)V
    .registers 2
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 683
    iput-object p1, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendTime:Ljava/lang/String;

    .line 682
    return-void
.end method

.method public clearConditions()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 716
    iput-boolean v1, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendBusy:Z

    .line 717
    iput-boolean v1, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNoAnswer:Z

    .line 718
    iput-boolean v1, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNotReachable:Z

    .line 719
    iput-boolean v1, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNotRegistered:Z

    .line 720
    iput-boolean v1, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendRoaming:Z

    .line 721
    iput-boolean v1, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendRuleDeactivated:Z

    .line 722
    iput-boolean v1, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendInternational:Z

    .line 723
    iput-boolean v1, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendCommunicationDiverted:Z

    .line 724
    iput-boolean v1, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendPresenceStatus:Z

    .line 725
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    if-nez v0, :cond_1f

    .line 726
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    .line 729
    :cond_1f
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 730
    iput-boolean v1, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendAnonymous:Z

    .line 731
    iput-object v2, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendTime:Ljava/lang/String;

    .line 715
    return-void
.end method

.method public comprehendAnonymous()Z
    .registers 2

    .prologue
    .line 674
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendAnonymous:Z

    return v0
.end method

.method public comprehendBusy()Z
    .registers 2

    .prologue
    .line 584
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendBusy:Z

    return v0
.end method

.method public comprehendCommunicationDiverted()Z
    .registers 2

    .prologue
    .line 656
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendCommunicationDiverted:Z

    return v0
.end method

.method public comprehendInternational()Z
    .registers 2

    .prologue
    .line 638
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendInternational:Z

    return v0
.end method

.method public comprehendInternationalExHc()Z
    .registers 2

    .prologue
    .line 647
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendInternationalexHc:Z

    return v0
.end method

.method public comprehendNoAnswer()Z
    .registers 2

    .prologue
    .line 593
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNoAnswer:Z

    return v0
.end method

.method public comprehendNotReachable()Z
    .registers 2

    .prologue
    .line 602
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNotReachable:Z

    return v0
.end method

.method public comprehendNotRegistered()Z
    .registers 2

    .prologue
    .line 611
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNotRegistered:Z

    return v0
.end method

.method public comprehendPresenceStatus()Z
    .registers 2

    .prologue
    .line 665
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendPresenceStatus:Z

    return v0
.end method

.method public comprehendRoaming()Z
    .registers 2

    .prologue
    .line 620
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendRoaming:Z

    return v0
.end method

.method public comprehendRuleDeactivated()Z
    .registers 2

    .prologue
    .line 629
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendRuleDeactivated:Z

    return v0
.end method

.method public comprehendTime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 692
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendTime:Ljava/lang/String;

    return-object v0
.end method

.method public getMedias()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 708
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    return-object v0
.end method

.method protected getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    const-string/jumbo v0, "cp:conditions"

    return-object v0
.end method

.method public instantiateFromXmlNode(Lorg/w3c/dom/Node;)V
    .registers 12
    .param p1, "domNode"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    move-object v2, p1

    .line 86
    check-cast v2, Lorg/w3c/dom/Element;

    .line 87
    .local v2, "domElement":Lorg/w3c/dom/Element;
    const-string/jumbo v1, "ss:"

    .line 89
    .local v1, "conditionsPrefix":Ljava/lang/String;
    const-string/jumbo v6, "busy"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 90
    .local v0, "conditionsNode":Lorg/w3c/dom/NodeList;
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_cb

    .line 91
    iput-boolean v9, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendBusy:Z

    .line 104
    :cond_17
    :goto_17
    const-string/jumbo v6, "no-answer"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 105
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_101

    .line 106
    iput-boolean v9, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNoAnswer:Z

    .line 119
    :cond_26
    :goto_26
    const-string/jumbo v6, "not-reachable"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 120
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_137

    .line 121
    iput-boolean v9, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNotReachable:Z

    .line 135
    :cond_35
    :goto_35
    const-string/jumbo v6, "not-registered"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 136
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_16d

    .line 137
    iput-boolean v9, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNotRegistered:Z

    .line 151
    :cond_44
    :goto_44
    const-string/jumbo v6, "roaming"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 152
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_1a3

    .line 153
    iput-boolean v9, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendRoaming:Z

    .line 167
    :cond_53
    :goto_53
    const-string/jumbo v6, "rule-deactivated"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 168
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_1d9

    .line 169
    iput-boolean v9, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendRuleDeactivated:Z

    .line 185
    :cond_62
    :goto_62
    const-string/jumbo v6, "international"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 186
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_20f

    .line 187
    iput-boolean v9, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendInternational:Z

    .line 202
    :cond_71
    :goto_71
    const-string/jumbo v6, "international-exHC"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 203
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_245

    .line 204
    iput-boolean v9, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendInternationalexHc:Z

    .line 219
    :cond_80
    :goto_80
    const-string/jumbo v6, "communication-diverted"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 220
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_27b

    .line 221
    iput-boolean v9, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendCommunicationDiverted:Z

    .line 236
    :cond_8f
    :goto_8f
    const-string/jumbo v6, "presence-status"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 237
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_2b1

    .line 238
    iput-boolean v9, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendPresenceStatus:Z

    .line 252
    :cond_9e
    :goto_9e
    const-string/jumbo v6, "media"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 253
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    .line 254
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_2e7

    .line 255
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b3
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v3, v6, :cond_347

    .line 256
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 257
    .local v4, "mediaElement":Lorg/w3c/dom/Element;
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    invoke-interface {v4}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    add-int/lit8 v3, v3, 0x1

    goto :goto_b3

    .line 93
    .end local v3    # "i":I
    .end local v4    # "mediaElement":Lorg/w3c/dom/Element;
    :cond_cb
    const-string/jumbo v6, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string/jumbo v7, "busy"

    invoke-interface {v2, v6, v7}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 94
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_df

    .line 95
    iput-boolean v9, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendBusy:Z

    goto/16 :goto_17

    .line 97
    :cond_df
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "busy"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 98
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_17

    .line 99
    iput-boolean v9, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendBusy:Z

    goto/16 :goto_17

    .line 108
    :cond_101
    const-string/jumbo v6, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string/jumbo v7, "no-answer"

    invoke-interface {v2, v6, v7}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 109
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_115

    .line 110
    iput-boolean v9, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNoAnswer:Z

    goto/16 :goto_26

    .line 112
    :cond_115
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "no-answer"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 113
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_26

    .line 114
    iput-boolean v9, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNoAnswer:Z

    goto/16 :goto_26

    .line 123
    :cond_137
    const-string/jumbo v6, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string/jumbo v7, "not-reachable"

    invoke-interface {v2, v6, v7}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 124
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_14b

    .line 125
    iput-boolean v9, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNotReachable:Z

    goto/16 :goto_35

    .line 128
    :cond_14b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "not-reachable"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 127
    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 129
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_35

    .line 130
    iput-boolean v9, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNotReachable:Z

    goto/16 :goto_35

    .line 139
    :cond_16d
    const-string/jumbo v6, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string/jumbo v7, "not-registered"

    invoke-interface {v2, v6, v7}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 140
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_181

    .line 141
    iput-boolean v9, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNotRegistered:Z

    goto/16 :goto_44

    .line 144
    :cond_181
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "not-registered"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 143
    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 145
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_44

    .line 146
    iput-boolean v9, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNotRegistered:Z

    goto/16 :goto_44

    .line 155
    :cond_1a3
    const-string/jumbo v6, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string/jumbo v7, "roaming"

    invoke-interface {v2, v6, v7}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 156
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_1b7

    .line 157
    iput-boolean v9, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendRoaming:Z

    goto/16 :goto_53

    .line 159
    :cond_1b7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "roaming"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 160
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_53

    .line 161
    iput-boolean v9, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendRoaming:Z

    goto/16 :goto_53

    .line 171
    :cond_1d9
    const-string/jumbo v6, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    .line 172
    const-string/jumbo v7, "rule-deactivated"

    .line 171
    invoke-interface {v2, v6, v7}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 173
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_1ed

    .line 174
    iput-boolean v9, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendRuleDeactivated:Z

    goto/16 :goto_62

    .line 177
    :cond_1ed
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "rule-deactivated"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 176
    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 178
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_62

    .line 179
    iput-boolean v9, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendRuleDeactivated:Z

    goto/16 :goto_62

    .line 189
    :cond_20f
    const-string/jumbo v6, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string/jumbo v7, "international"

    invoke-interface {v2, v6, v7}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 190
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_223

    .line 191
    iput-boolean v9, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendInternational:Z

    goto/16 :goto_71

    .line 194
    :cond_223
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "international"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 193
    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 195
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_71

    .line 196
    iput-boolean v9, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendInternational:Z

    goto/16 :goto_71

    .line 206
    :cond_245
    const-string/jumbo v6, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    .line 207
    const-string/jumbo v7, "international-exHC"

    .line 206
    invoke-interface {v2, v6, v7}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 208
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_259

    .line 209
    iput-boolean v9, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendInternationalexHc:Z

    goto/16 :goto_80

    .line 212
    :cond_259
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "international-exHC"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 211
    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 213
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_80

    .line 214
    iput-boolean v9, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendInternationalexHc:Z

    goto/16 :goto_80

    .line 223
    :cond_27b
    const-string/jumbo v6, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    .line 224
    const-string/jumbo v7, "communication-diverted"

    .line 223
    invoke-interface {v2, v6, v7}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 225
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_28f

    .line 226
    iput-boolean v9, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendCommunicationDiverted:Z

    goto/16 :goto_8f

    .line 229
    :cond_28f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "communication-diverted"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 228
    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 230
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_8f

    .line 231
    iput-boolean v9, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendCommunicationDiverted:Z

    goto/16 :goto_8f

    .line 240
    :cond_2b1
    const-string/jumbo v6, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string/jumbo v7, "presence-status"

    invoke-interface {v2, v6, v7}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 241
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_2c5

    .line 242
    iput-boolean v9, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendPresenceStatus:Z

    goto/16 :goto_9e

    .line 245
    :cond_2c5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "presence-status"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 244
    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 246
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_9e

    .line 247
    iput-boolean v9, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendPresenceStatus:Z

    goto/16 :goto_9e

    .line 260
    :cond_2e7
    const-string/jumbo v6, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string/jumbo v7, "media"

    invoke-interface {v2, v6, v7}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 261
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_310

    .line 262
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2f8
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v3, v6, :cond_347

    .line 263
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 264
    .restart local v4    # "mediaElement":Lorg/w3c/dom/Element;
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    invoke-interface {v4}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f8

    .line 267
    .end local v3    # "i":I
    .end local v4    # "mediaElement":Lorg/w3c/dom/Element;
    :cond_310
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "media"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 268
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_347

    .line 269
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_32f
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v3, v6, :cond_347

    .line 270
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 271
    .restart local v4    # "mediaElement":Lorg/w3c/dom/Element;
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    invoke-interface {v4}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    add-int/lit8 v3, v3, 0x1

    goto :goto_32f

    .line 277
    .end local v3    # "i":I
    .end local v4    # "mediaElement":Lorg/w3c/dom/Element;
    :cond_347
    const-string/jumbo v6, "anonymous"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 278
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_370

    .line 279
    iput-boolean v9, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendAnonymous:Z

    .line 292
    :cond_356
    :goto_356
    const-string/jumbo v6, "time"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 293
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_3a4

    .line 294
    invoke-interface {v0, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 295
    .local v5, "timeElement":Lorg/w3c/dom/Element;
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendTime:Ljava/lang/String;

    .line 85
    .end local v5    # "timeElement":Lorg/w3c/dom/Element;
    :cond_36f
    :goto_36f
    return-void

    .line 281
    :cond_370
    const-string/jumbo v6, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string/jumbo v7, "anonymous"

    invoke-interface {v2, v6, v7}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 282
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_383

    .line 283
    iput-boolean v9, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendAnonymous:Z

    goto :goto_356

    .line 285
    :cond_383
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "anonymous"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 286
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_356

    .line 287
    iput-boolean v9, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendAnonymous:Z

    goto :goto_356

    .line 297
    :cond_3a4
    const-string/jumbo v6, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string/jumbo v7, "time"

    invoke-interface {v2, v6, v7}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 298
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_3c1

    .line 299
    invoke-interface {v0, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 300
    .restart local v5    # "timeElement":Lorg/w3c/dom/Element;
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendTime:Ljava/lang/String;

    goto :goto_36f

    .line 302
    .end local v5    # "timeElement":Lorg/w3c/dom/Element;
    :cond_3c1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "time"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 303
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_36f

    .line 304
    invoke-interface {v0, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 305
    .restart local v5    # "timeElement":Lorg/w3c/dom/Element;
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendTime:Ljava/lang/String;

    goto :goto_36f
.end method

.method public toXmlElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .registers 9
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 319
    const-string/jumbo v5, "xcap.ns.ss"

    const-string/jumbo v6, "false"

    invoke-static {v5, v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 321
    .local v4, "useXcapNs":Ljava/lang/String;
    const-string/jumbo v5, "true"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13e

    .line 322
    const-string/jumbo v5, "cp:conditions"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 324
    .local v1, "conditionsElement":Lorg/w3c/dom/Element;
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 325
    const-string/jumbo v5, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    .line 326
    const-string/jumbo v6, "ss:busy"

    .line 325
    invoke-interface {p1, v5, v6}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 327
    .local v0, "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 330
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_2d
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v5

    if-eqz v5, :cond_40

    .line 331
    const-string/jumbo v5, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    .line 332
    const-string/jumbo v6, "ss:no-answer"

    .line 331
    invoke-interface {p1, v5, v6}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 333
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 336
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_40
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v5

    if-eqz v5, :cond_53

    .line 337
    const-string/jumbo v5, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    .line 338
    const-string/jumbo v6, "ss:not-reachable"

    .line 337
    invoke-interface {p1, v5, v6}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 339
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 342
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_53
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v5

    if-eqz v5, :cond_66

    .line 343
    const-string/jumbo v5, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    .line 344
    const-string/jumbo v6, "ss:not-registered"

    .line 343
    invoke-interface {p1, v5, v6}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 345
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 348
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_66
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v5

    if-eqz v5, :cond_79

    .line 349
    const-string/jumbo v5, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    .line 350
    const-string/jumbo v6, "ss:roaming"

    .line 349
    invoke-interface {p1, v5, v6}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 351
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 354
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_79
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v5

    if-eqz v5, :cond_8c

    .line 355
    const-string/jumbo v5, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    .line 356
    const-string/jumbo v6, "ss:rule-deactivated"

    .line 355
    invoke-interface {p1, v5, v6}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 357
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 360
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_8c
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v5

    if-eqz v5, :cond_9f

    .line 361
    const-string/jumbo v5, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    .line 362
    const-string/jumbo v6, "ss:international"

    .line 361
    invoke-interface {p1, v5, v6}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 363
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 366
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_9f
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternationalExHc()Z

    move-result v5

    if-eqz v5, :cond_b2

    .line 367
    const-string/jumbo v5, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    .line 368
    const-string/jumbo v6, "ss:international-exHC"

    .line 367
    invoke-interface {p1, v5, v6}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 369
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 372
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_b2
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendCommunicationDiverted()Z

    move-result v5

    if-eqz v5, :cond_c5

    .line 373
    const-string/jumbo v5, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    .line 374
    const-string/jumbo v6, "ss:communication-diverted"

    .line 373
    invoke-interface {p1, v5, v6}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 375
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 378
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_c5
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendPresenceStatus()Z

    move-result v5

    if-eqz v5, :cond_d8

    .line 379
    const-string/jumbo v5, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    .line 380
    const-string/jumbo v6, "ss:presence-status"

    .line 379
    invoke-interface {p1, v5, v6}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 381
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 384
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_d8
    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    if-eqz v5, :cond_107

    .line 385
    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_107

    .line 386
    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 387
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_ea
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_107

    .line 388
    const-string/jumbo v5, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    .line 389
    const-string/jumbo v6, "ss:media"

    .line 388
    invoke-interface {p1, v5, v6}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 390
    .local v3, "ruleElement":Lorg/w3c/dom/Element;
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3, v5}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 391
    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_ea

    .line 396
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "ruleElement":Lorg/w3c/dom/Element;
    :cond_107
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendAnonymous()Z

    move-result v5

    if-eqz v5, :cond_11a

    .line 397
    const-string/jumbo v5, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    .line 398
    const-string/jumbo v6, "ss:anonymous"

    .line 397
    invoke-interface {p1, v5, v6}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 399
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 402
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_11a
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendTime()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_12a

    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_12b

    .line 409
    :cond_12a
    :goto_12a
    return-object v1

    .line 403
    :cond_12b
    const-string/jumbo v5, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    .line 404
    const-string/jumbo v6, "ss:time"

    .line 403
    invoke-interface {p1, v5, v6}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 405
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendTime:Ljava/lang/String;

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 406
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_12a

    .line 411
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    .end local v1    # "conditionsElement":Lorg/w3c/dom/Element;
    :cond_13e
    const-string/jumbo v5, "cp:conditions"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 413
    .restart local v1    # "conditionsElement":Lorg/w3c/dom/Element;
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v5

    if-eqz v5, :cond_155

    .line 414
    const-string/jumbo v5, "busy"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 415
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 418
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_155
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v5

    if-eqz v5, :cond_165

    .line 419
    const-string/jumbo v5, "no-answer"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 420
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 423
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_165
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v5

    if-eqz v5, :cond_175

    .line 424
    const-string/jumbo v5, "not-reachable"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 425
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 428
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_175
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v5

    if-eqz v5, :cond_185

    .line 429
    const-string/jumbo v5, "not-registered"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 430
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 433
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_185
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v5

    if-eqz v5, :cond_195

    .line 434
    const-string/jumbo v5, "roaming"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 435
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 438
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_195
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v5

    if-eqz v5, :cond_1a5

    .line 439
    const-string/jumbo v5, "rule-deactivated"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 440
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 443
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_1a5
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v5

    if-eqz v5, :cond_1b5

    .line 444
    const-string/jumbo v5, "international"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 445
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 448
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_1b5
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternationalExHc()Z

    move-result v5

    if-eqz v5, :cond_1c5

    .line 449
    const-string/jumbo v5, "international-exHC"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 450
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 453
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_1c5
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendCommunicationDiverted()Z

    move-result v5

    if-eqz v5, :cond_1d5

    .line 455
    const-string/jumbo v5, "communication-diverted"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 456
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 459
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_1d5
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendPresenceStatus()Z

    move-result v5

    if-eqz v5, :cond_1e5

    .line 460
    const-string/jumbo v5, "presence-status"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 461
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 464
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_1e5
    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    if-eqz v5, :cond_211

    .line 465
    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_211

    .line 466
    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 467
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1f7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_211

    .line 468
    const-string/jumbo v5, "media"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 469
    .restart local v3    # "ruleElement":Lorg/w3c/dom/Element;
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3, v5}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 470
    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_1f7

    .line 475
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "ruleElement":Lorg/w3c/dom/Element;
    :cond_211
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendAnonymous()Z

    move-result v5

    if-eqz v5, :cond_221

    .line 476
    const-string/jumbo v5, "anonymous"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 477
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 480
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_221
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendTime()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_231

    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_232

    .line 486
    :cond_231
    :goto_231
    return-object v1

    .line 481
    :cond_232
    const-string/jumbo v5, "time"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 482
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendTime:Ljava/lang/String;

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 483
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_231
.end method
