.class Lcom/mediatek/xcap/client/XcapClient$2;
.super Ljava/lang/Object;
.source "XcapClient.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/xcap/client/XcapClient;->execute(Ljava/net/URL;Ljava/lang/String;[BLcom/android/okhttp/Headers;)Ljava/net/HttpURLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/xcap/client/XcapClient;


# direct methods
.method constructor <init>(Lcom/mediatek/xcap/client/XcapClient;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/xcap/client/XcapClient;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/mediatek/xcap/client/XcapClient$2;->this$0:Lcom/mediatek/xcap/client/XcapClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .registers 4
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "session"    # Ljavax/net/ssl/SSLSession;

    .prologue
    .line 270
    const/4 v0, 0x1

    return v0
.end method
