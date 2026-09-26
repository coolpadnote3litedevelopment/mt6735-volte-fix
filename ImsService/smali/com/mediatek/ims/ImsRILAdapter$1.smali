.class Lcom/mediatek/ims/ImsRILAdapter$1;
.super Landroid/os/Handler;
.source "ImsRILAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsRILAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/ImsRILAdapter;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/ImsRILAdapter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/ims/ImsRILAdapter;

    .prologue
    .line 355
    iput-object p1, p0, Lcom/mediatek/ims/ImsRILAdapter$1;->this$0:Lcom/mediatek/ims/ImsRILAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 358
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_1a

    .line 356
    :goto_5
    return-void

    .line 360
    :pswitch_6
    const-string/jumbo v1, "IMS_RILA"

    const-string/jumbo v2, "IMS: Adapter receive EVENT_AT_CMD_DONE"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 362
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/mediatek/ims/ImsRILAdapter$1;->this$0:Lcom/mediatek/ims/ImsRILAdapter;

    invoke-static {v1, v0}, Lcom/mediatek/ims/ImsRILAdapter;->-wrap4(Lcom/mediatek/ims/ImsRILAdapter;Landroid/os/AsyncResult;)V

    goto :goto_5

    .line 358
    nop

    :pswitch_data_1a
    .packed-switch 0x64
        :pswitch_6
    .end packed-switch
.end method
