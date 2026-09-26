.class public Lcom/mediatek/simservs/xcap/XcapException;
.super Ljava/lang/Exception;
.source "XcapException.java"


# static fields
.field public static final AUTHENTICATION_EXCEPTION:I = 0x9

.field public static final AUTH_CHALLENGE_EXCEPTION:I = 0x6

.field public static final CONNECTION_POOL_TIMEOUT_EXCEPTION:I = 0x1

.field public static final CONNECT_TIMEOUT_EXCEPTION:I = 0x2

.field public static final CREDENTIALS_NOT_AVAILABLE_EXCEPTION:I = 0x7

.field public static final HTTP_EXCEPTION:I = 0xe

.field public static final HTTP_RECOVERABL_EEXCEPTION:I = 0x4

.field public static final INVALID_CREDENTIALS_EXCEPTION:I = 0x8

.field public static final MALFORMED_CHALLENGE_EXCEPTION:I = 0x5

.field public static final MALFORMED_COOKIE_EXCEPTION:I = 0xa

.field public static final NO_EXCEPTION:I = 0x0

.field public static final NO_HTTP_RESPONSE_EXCEPTION:I = 0x3

.field public static final PROTOCOL_EXCEPTION:I = 0xd

.field public static final REDIRECT_EXCEPTION:I = 0xb

.field public static final URI_EXCEPTION:I = 0xc

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mExceptionCode:I

.field private mHttpErrorCode:I

.field private mIsConnectionError:Z

.field private mXcapErrorMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "httpErrorCode"    # I

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 29
    iput v0, p0, Lcom/mediatek/simservs/xcap/XcapException;->mHttpErrorCode:I

    .line 30
    iput v0, p0, Lcom/mediatek/simservs/xcap/XcapException;->mExceptionCode:I

    .line 31
    iput-boolean v0, p0, Lcom/mediatek/simservs/xcap/XcapException;->mIsConnectionError:Z

    .line 40
    iput p1, p0, Lcom/mediatek/simservs/xcap/XcapException;->mHttpErrorCode:I

    .line 39
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 4
    .param p1, "httpErrorCode"    # I
    .param p2, "xcapErrorMessage"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 29
    iput v0, p0, Lcom/mediatek/simservs/xcap/XcapException;->mHttpErrorCode:I

    .line 30
    iput v0, p0, Lcom/mediatek/simservs/xcap/XcapException;->mExceptionCode:I

    .line 31
    iput-boolean v0, p0, Lcom/mediatek/simservs/xcap/XcapException;->mIsConnectionError:Z

    .line 50
    iput p1, p0, Lcom/mediatek/simservs/xcap/XcapException;->mHttpErrorCode:I

    .line 51
    iput-object p2, p0, Lcom/mediatek/simservs/xcap/XcapException;->mXcapErrorMessage:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/io/IOException;)V
    .registers 4
    .param p1, "httpException"    # Ljava/io/IOException;

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 29
    iput v0, p0, Lcom/mediatek/simservs/xcap/XcapException;->mHttpErrorCode:I

    .line 30
    iput v0, p0, Lcom/mediatek/simservs/xcap/XcapException;->mExceptionCode:I

    .line 31
    iput-boolean v0, p0, Lcom/mediatek/simservs/xcap/XcapException;->mIsConnectionError:Z

    .line 60
    const-string/jumbo v0, "GBA Authentication hit HTTP 403 Forbidden"

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 61
    const/16 v0, 0x193

    iput v0, p0, Lcom/mediatek/simservs/xcap/XcapException;->mHttpErrorCode:I

    .line 62
    return-void

    .line 65
    :cond_1c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/xcap/XcapException;->mIsConnectionError:Z

    .line 59
    return-void
.end method


# virtual methods
.method public getExceptionCodeCode()I
    .registers 2

    .prologue
    .line 77
    iget v0, p0, Lcom/mediatek/simservs/xcap/XcapException;->mExceptionCode:I

    return v0
.end method

.method public getHttpErrorCode()I
    .registers 2

    .prologue
    .line 73
    iget v0, p0, Lcom/mediatek/simservs/xcap/XcapException;->mHttpErrorCode:I

    return v0
.end method

.method public isConnectionError()Z
    .registers 2

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/mediatek/simservs/xcap/XcapException;->mIsConnectionError:Z

    return v0
.end method
