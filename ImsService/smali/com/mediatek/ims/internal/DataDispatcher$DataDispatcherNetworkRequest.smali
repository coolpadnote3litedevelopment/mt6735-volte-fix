.class Lcom/mediatek/ims/internal/DataDispatcher$DataDispatcherNetworkRequest;
.super Ljava/lang/Object;
.source "DataDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/DataDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataDispatcherNetworkRequest"
.end annotation


# instance fields
.field apnType:Ljava/lang/String;

.field currentNw:Landroid/net/Network;

.field nwCap:Landroid/net/NetworkCapabilities;

.field nwCb:Landroid/net/ConnectivityManager$NetworkCallback;

.field nwRequest:Landroid/net/NetworkRequest;


# direct methods
.method public constructor <init>(Landroid/net/ConnectivityManager$NetworkCallback;Ljava/lang/String;)V
    .registers 4
    .param p1, "nwCb"    # Landroid/net/ConnectivityManager$NetworkCallback;
    .param p2, "apnType"    # Ljava/lang/String;

    .prologue
    .line 914
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 912
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataDispatcherNetworkRequest;->apnType:Ljava/lang/String;

    .line 915
    iput-object p1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataDispatcherNetworkRequest;->nwCb:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 916
    iput-object p2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataDispatcherNetworkRequest;->apnType:Ljava/lang/String;

    .line 914
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 920
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "apnType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataDispatcherNetworkRequest;->apnType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", nwRequest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 921
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataDispatcherNetworkRequest;->nwRequest:Landroid/net/NetworkRequest;

    .line 920
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 921
    const-string/jumbo v1, ", network: "

    .line 920
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 921
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataDispatcherNetworkRequest;->currentNw:Landroid/net/Network;

    .line 920
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
