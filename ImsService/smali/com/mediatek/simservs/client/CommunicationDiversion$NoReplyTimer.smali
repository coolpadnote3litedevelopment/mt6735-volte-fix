.class public Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;
.super Lcom/mediatek/simservs/xcap/XcapElement;
.source "CommunicationDiversion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/simservs/client/CommunicationDiversion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NoReplyTimer"
.end annotation


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "NoReplyTimer"


# instance fields
.field public mValue:I

.field final synthetic this$0:Lcom/mediatek/simservs/client/CommunicationDiversion;


# direct methods
.method public constructor <init>(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "this$0"    # Lcom/mediatek/simservs/client/CommunicationDiversion;
    .param p2, "cdUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p3, "parentUri"    # Ljava/lang/String;
    .param p4, "intendedId"    # Ljava/lang/String;

    .prologue
    .line 397
    iput-object p1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->this$0:Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 398
    invoke-direct {p0, p2, p3, p4}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .param p1, "this$0"    # Lcom/mediatek/simservs/client/CommunicationDiversion;
    .param p2, "cdUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p3, "parentUri"    # Ljava/lang/String;
    .param p4, "intendedId"    # Ljava/lang/String;
    .param p5, "initValue"    # I

    .prologue
    .line 409
    iput-object p1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->this$0:Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 410
    invoke-direct {p0, p2, p3, p4}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iput p5, p0, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->mValue:I

    .line 409
    return-void
.end method


# virtual methods
.method protected getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 416
    const-string/jumbo v0, "NoReplyTimer"

    return-object v0
.end method

.method public getValue()I
    .registers 2

    .prologue
    .line 420
    iget v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->mValue:I

    return v0
.end method

.method public setValue(I)V
    .registers 2
    .param p1, "value"    # I

    .prologue
    .line 424
    iput p1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->mValue:I

    .line 423
    return-void
.end method

.method public toXmlString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "<NoReplyTimer>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->mValue:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 434
    const-string/jumbo v1, "</NoReplyTimer>"

    .line 433
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
