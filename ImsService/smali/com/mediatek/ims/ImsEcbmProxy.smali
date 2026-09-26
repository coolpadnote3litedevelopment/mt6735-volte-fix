.class public Lcom/mediatek/ims/ImsEcbmProxy;
.super Lcom/android/ims/internal/IImsEcbm$Stub;
.source "ImsEcbmProxy.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImsEcbmProxy"


# instance fields
.field private mListener:Lcom/android/ims/internal/IImsEcbmListener;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/ims/internal/IImsEcbm$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public exitEmergencyCallbackMode()V
    .registers 1

    .prologue
    .line 57
    return-void
.end method

.method public setListener(Lcom/android/ims/internal/IImsEcbmListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/android/ims/internal/IImsEcbmListener;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mListener:Lcom/android/ims/internal/IImsEcbmListener;

    .line 50
    return-void
.end method
