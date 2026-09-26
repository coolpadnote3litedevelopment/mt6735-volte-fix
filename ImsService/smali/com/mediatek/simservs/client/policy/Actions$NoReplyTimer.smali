.class public Lcom/mediatek/simservs/client/policy/Actions$NoReplyTimer;
.super Lcom/mediatek/simservs/xcap/XcapElement;
.source "Actions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/simservs/client/policy/Actions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NoReplyTimer"
.end annotation


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "NoReplyTimer"


# instance fields
.field public mValue:I

.field final synthetic this$0:Lcom/mediatek/simservs/client/policy/Actions;


# direct methods
.method public constructor <init>(Lcom/mediatek/simservs/client/policy/Actions;Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "this$0"    # Lcom/mediatek/simservs/client/policy/Actions;
    .param p2, "cdUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p3, "parentUri"    # Ljava/lang/String;
    .param p4, "intendedId"    # Ljava/lang/String;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/mediatek/simservs/client/policy/Actions$NoReplyTimer;->this$0:Lcom/mediatek/simservs/client/policy/Actions;

    .line 228
    invoke-direct {p0, p2, p3, p4}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/simservs/client/policy/Actions;Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .param p1, "this$0"    # Lcom/mediatek/simservs/client/policy/Actions;
    .param p2, "cdUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p3, "parentUri"    # Ljava/lang/String;
    .param p4, "intendedId"    # Ljava/lang/String;
    .param p5, "initValue"    # I

    .prologue
    .line 239
    iput-object p1, p0, Lcom/mediatek/simservs/client/policy/Actions$NoReplyTimer;->this$0:Lcom/mediatek/simservs/client/policy/Actions;

    .line 240
    invoke-direct {p0, p2, p3, p4}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iput p5, p0, Lcom/mediatek/simservs/client/policy/Actions$NoReplyTimer;->mValue:I

    .line 242
    const-string/jumbo v0, "Actions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "new NoReplyTimer  mValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/simservs/client/policy/Actions$NoReplyTimer;->mValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return-void
.end method


# virtual methods
.method protected getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 247
    const-string/jumbo v0, "NoReplyTimer"

    return-object v0
.end method

.method public getValue()I
    .registers 2

    .prologue
    .line 251
    iget v0, p0, Lcom/mediatek/simservs/client/policy/Actions$NoReplyTimer;->mValue:I

    return v0
.end method

.method public setValue(I)V
    .registers 2
    .param p1, "value"    # I

    .prologue
    .line 255
    iput p1, p0, Lcom/mediatek/simservs/client/policy/Actions$NoReplyTimer;->mValue:I

    .line 254
    return-void
.end method

.method public toXmlElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .registers 6
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 276
    const-string/jumbo v2, "xcap.ns.ss"

    const-string/jumbo v3, "false"

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 278
    .local v1, "useXcapNs":Ljava/lang/String;
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 279
    const-string/jumbo v2, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    .line 280
    const-string/jumbo v3, "ss:NoReplyTimer"

    .line 279
    invoke-interface {p1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 281
    .local v0, "noReplyTimerElement":Lorg/w3c/dom/Element;
    iget v2, p0, Lcom/mediatek/simservs/client/policy/Actions$NoReplyTimer;->mValue:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 282
    return-object v0

    .line 284
    .end local v0    # "noReplyTimerElement":Lorg/w3c/dom/Element;
    :cond_27
    const-string/jumbo v2, "NoReplyTimer"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 285
    .restart local v0    # "noReplyTimerElement":Lorg/w3c/dom/Element;
    iget v2, p0, Lcom/mediatek/simservs/client/policy/Actions$NoReplyTimer;->mValue:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 286
    return-object v0
.end method

.method public toXmlString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "<NoReplyTimer>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/simservs/client/policy/Actions$NoReplyTimer;->mValue:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 265
    const-string/jumbo v1, "</NoReplyTimer>"

    .line 264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
