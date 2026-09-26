.class Lcom/mediatek/ims/MMTelSSTransport$1;
.super Ljava/net/Authenticator;
.source "MMTelSSTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ims/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/MMTelSSTransport;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/MMTelSSTransport;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/ims/MMTelSSTransport;

    .prologue
    .line 479
    iput-object p1, p0, Lcom/mediatek/ims/MMTelSSTransport$1;->this$0:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-direct {p0}, Ljava/net/Authenticator;-><init>()V

    return-void
.end method


# virtual methods
.method protected getPasswordAuthentication()Ljava/net/PasswordAuthentication;
    .registers 4

    .prologue
    .line 481
    new-instance v0, Ljava/net/PasswordAuthentication;

    .line 482
    const-string/jumbo v1, "persist.mtk.simserv.username"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 483
    const-string/jumbo v2, "persist.mtk.simserv.password"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 481
    invoke-direct {v0, v1, v2}, Ljava/net/PasswordAuthentication;-><init>(Ljava/lang/String;[C)V

    return-object v0
.end method
