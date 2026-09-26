.class public Lcom/mediatek/ims/ImsUtStub;
.super Lcom/android/ims/internal/IImsUt$Stub;
.source "ImsUtStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/ImsUtStub$ResultHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field static final HTTP_ERROR_CODE_403:I = 0x193

.field static final HTTP_ERROR_CODE_404:I = 0x194

.field static final HTTP_ERROR_CODE_409:I = 0x199

.field static final IMS_UT_EVENT_GET_CB:I = 0x3e8

.field static final IMS_UT_EVENT_GET_CF:I = 0x3e9

.field static final IMS_UT_EVENT_GET_CF_TIME_SLOT:I = 0x3f6

.field static final IMS_UT_EVENT_GET_CLIP:I = 0x3ec

.field static final IMS_UT_EVENT_GET_CLIR:I = 0x3eb

.field static final IMS_UT_EVENT_GET_COLP:I = 0x3ee

.field static final IMS_UT_EVENT_GET_COLR:I = 0x3ed

.field static final IMS_UT_EVENT_GET_CW:I = 0x3ea

.field static final IMS_UT_EVENT_SET_CB:I = 0x3ef

.field static final IMS_UT_EVENT_SET_CF:I = 0x3f0

.field static final IMS_UT_EVENT_SET_CF_TIME_SLOT:I = 0x3f7

.field static final IMS_UT_EVENT_SET_CLIP:I = 0x3f3

.field static final IMS_UT_EVENT_SET_CLIR:I = 0x3f2

.field static final IMS_UT_EVENT_SET_COLP:I = 0x3f5

.field static final IMS_UT_EVENT_SET_COLR:I = 0x3f4

.field static final IMS_UT_EVENT_SET_CW:I = 0x3f1

.field private static final TAG:Ljava/lang/String; = "ImsUtService"

.field private static final mLock:Ljava/lang/Object;

.field private static sRequestId:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/mediatek/ims/ImsUtStub$ResultHandler;

.field private mListener:Lcom/android/ims/internal/IImsUtListener;

.field private mMMTelSSTSL:Lcom/mediatek/ims/MMTelSSTransport;


# direct methods
.method static synthetic -get0(Lcom/mediatek/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;
    .registers 2

    iget-object v0, p0, Lcom/mediatek/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/mediatek/ims/ImsUtStub;Lcom/android/internal/telephony/CallForwardInfo;)Lcom/android/ims/ImsCallForwardInfo;
    .registers 3
    .param p1, "info"    # Lcom/android/internal/telephony/CallForwardInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsUtStub;->getImsCallForwardInfo(Lcom/android/internal/telephony/CallForwardInfo;)Lcom/android/ims/ImsCallForwardInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/mediatek/ims/ImsUtStub;I)I
    .registers 3
    .param p1, "reason"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsUtStub;->getConditionFromCFReason(I)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    .line 83
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/ims/ImsUtStub;->sRequestId:I

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/ims/internal/IImsUt$Stub;-><init>()V

    .line 84
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;

    .line 119
    iput-object p1, p0, Lcom/mediatek/ims/ImsUtStub;->mContext:Landroid/content/Context;

    .line 120
    invoke-static {}, Lcom/mediatek/ims/MMTelSSTransport;->getInstance()Lcom/mediatek/ims/MMTelSSTransport;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/ImsUtStub;->mMMTelSSTSL:Lcom/mediatek/ims/MMTelSSTransport;

    .line 121
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtStub;->mMMTelSSTSL:Lcom/mediatek/ims/MMTelSSTransport;

    iget-object v3, p0, Lcom/mediatek/ims/ImsUtStub;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/MMTelSSTransport;->registerUtService(Landroid/content/Context;)V

    .line 123
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "ImsUtStubResult"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 124
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 125
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 126
    .local v0, "looper":Landroid/os/Looper;
    new-instance v2, Lcom/mediatek/ims/ImsUtStub$ResultHandler;

    invoke-direct {v2, p0, v0}, Lcom/mediatek/ims/ImsUtStub$ResultHandler;-><init>(Lcom/mediatek/ims/ImsUtStub;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/mediatek/ims/ImsUtStub;->mHandler:Lcom/mediatek/ims/ImsUtStub$ResultHandler;

    .line 118
    return-void
.end method

.method private getCFActionFromAction(I)I
    .registers 3
    .param p1, "cfAction"    # I

    .prologue
    const/4 v0, 0x0

    .line 647
    packed-switch p1, :pswitch_data_c

    .line 660
    :pswitch_4
    return v0

    .line 649
    :pswitch_5
    return v0

    .line 651
    :pswitch_6
    const/4 v0, 0x1

    return v0

    .line 653
    :pswitch_8
    const/4 v0, 0x4

    return v0

    .line 655
    :pswitch_a
    const/4 v0, 0x3

    return v0

    .line 647
    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_a
        :pswitch_8
    .end packed-switch
.end method

.method private getCFReasonFromCondition(I)I
    .registers 3
    .param p1, "condition"    # I

    .prologue
    const/4 v0, 0x3

    .line 664
    packed-switch p1, :pswitch_data_12

    .line 683
    return v0

    .line 666
    :pswitch_5
    const/4 v0, 0x0

    return v0

    .line 668
    :pswitch_7
    const/4 v0, 0x1

    return v0

    .line 670
    :pswitch_9
    const/4 v0, 0x2

    return v0

    .line 672
    :pswitch_b
    return v0

    .line 674
    :pswitch_c
    const/4 v0, 0x4

    return v0

    .line 676
    :pswitch_e
    const/4 v0, 0x5

    return v0

    .line 678
    :pswitch_10
    const/4 v0, 0x6

    return v0

    .line 664
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_e
        :pswitch_10
    .end packed-switch
.end method

.method private getConditionFromCFReason(I)I
    .registers 3
    .param p1, "reason"    # I

    .prologue
    .line 687
    packed-switch p1, :pswitch_data_14

    .line 706
    const/4 v0, -0x1

    return v0

    .line 689
    :pswitch_5
    const/4 v0, 0x0

    return v0

    .line 691
    :pswitch_7
    const/4 v0, 0x1

    return v0

    .line 693
    :pswitch_9
    const/4 v0, 0x2

    return v0

    .line 695
    :pswitch_b
    const/4 v0, 0x3

    return v0

    .line 697
    :pswitch_d
    const/4 v0, 0x4

    return v0

    .line 699
    :pswitch_f
    const/4 v0, 0x5

    return v0

    .line 701
    :pswitch_11
    const/4 v0, 0x6

    return v0

    .line 687
    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_b
        :pswitch_d
        :pswitch_f
        :pswitch_11
    .end packed-switch
.end method

.method private getFacilityFromCBType(I)Ljava/lang/String;
    .registers 3
    .param p1, "cbType"    # I

    .prologue
    .line 618
    packed-switch p1, :pswitch_data_2e

    .line 642
    const/4 v0, 0x0

    return-object v0

    .line 620
    :pswitch_5
    const-string/jumbo v0, "AI"

    return-object v0

    .line 622
    :pswitch_9
    const-string/jumbo v0, "AO"

    return-object v0

    .line 624
    :pswitch_d
    const-string/jumbo v0, "OI"

    return-object v0

    .line 626
    :pswitch_11
    const-string/jumbo v0, "OX"

    return-object v0

    .line 628
    :pswitch_15
    const-string/jumbo v0, "IR"

    return-object v0

    .line 631
    :pswitch_19
    const-string/jumbo v0, "ACR"

    return-object v0

    .line 633
    :pswitch_1d
    const-string/jumbo v0, "AB"

    return-object v0

    .line 635
    :pswitch_21
    const-string/jumbo v0, "AG"

    return-object v0

    .line 637
    :pswitch_25
    const-string/jumbo v0, "AC"

    return-object v0

    .line 640
    :pswitch_29
    const-string/jumbo v0, "BS_MT"

    return-object v0

    .line 618
    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_9
        :pswitch_d
        :pswitch_11
        :pswitch_15
        :pswitch_19
        :pswitch_1d
        :pswitch_21
        :pswitch_25
        :pswitch_29
    .end packed-switch
.end method

.method private getImsCallForwardInfo(Lcom/android/internal/telephony/CallForwardInfo;)Lcom/android/ims/ImsCallForwardInfo;
    .registers 4
    .param p1, "info"    # Lcom/android/internal/telephony/CallForwardInfo;

    .prologue
    .line 710
    new-instance v0, Lcom/android/ims/ImsCallForwardInfo;

    invoke-direct {v0}, Lcom/android/ims/ImsCallForwardInfo;-><init>()V

    .line 711
    .local v0, "imsCfInfo":Lcom/android/ims/ImsCallForwardInfo;
    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsUtStub;->getConditionFromCFReason(I)I

    move-result v1

    iput v1, v0, Lcom/android/ims/ImsCallForwardInfo;->mCondition:I

    .line 712
    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    iput v1, v0, Lcom/android/ims/ImsCallForwardInfo;->mStatus:I

    .line 714
    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    iput v1, v0, Lcom/android/ims/ImsCallForwardInfo;->mToA:I

    .line 715
    iget-object v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    .line 716
    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iput v1, v0, Lcom/android/ims/ImsCallForwardInfo;->mTimeSeconds:I

    .line 717
    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 1

    .prologue
    .line 614
    return-void
.end method

.method public queryCLIP()I
    .registers 7

    .prologue
    .line 817
    sget-object v3, Lcom/mediatek/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 818
    :try_start_3
    sget v1, Lcom/mediatek/ims/ImsUtStub;->sRequestId:I

    .line 819
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/ims/ImsUtStub;->sRequestId:I
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_36

    monitor-exit v3

    .line 822
    const-string/jumbo v2, "ImsUtService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "queryCLIP(): requestId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtStub;->mHandler:Lcom/mediatek/ims/ImsUtStub$ResultHandler;

    const/16 v3, 0x3ec

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 826
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtStub;->mMMTelSSTSL:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-virtual {v2, v0}, Lcom/mediatek/ims/MMTelSSTransport;->queryCLIP(Landroid/os/Message;)V

    .line 828
    return v1

    .line 817
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    :catchall_36
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public queryCLIR()I
    .registers 7

    .prologue
    .line 796
    sget-object v3, Lcom/mediatek/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 797
    :try_start_3
    sget v1, Lcom/mediatek/ims/ImsUtStub;->sRequestId:I

    .line 798
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/ims/ImsUtStub;->sRequestId:I
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_36

    monitor-exit v3

    .line 801
    const-string/jumbo v2, "ImsUtService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "queryCLIR(): requestId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtStub;->mHandler:Lcom/mediatek/ims/ImsUtStub$ResultHandler;

    const/16 v3, 0x3eb

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 805
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtStub;->mMMTelSSTSL:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-virtual {v2, v0}, Lcom/mediatek/ims/MMTelSSTransport;->getCLIR(Landroid/os/Message;)V

    .line 807
    return v1

    .line 796
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    :catchall_36
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public queryCOLP()I
    .registers 7

    .prologue
    .line 859
    sget-object v3, Lcom/mediatek/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 860
    :try_start_3
    sget v1, Lcom/mediatek/ims/ImsUtStub;->sRequestId:I

    .line 861
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/ims/ImsUtStub;->sRequestId:I
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_36

    monitor-exit v3

    .line 864
    const-string/jumbo v2, "ImsUtService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "queryCOLP(): requestId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtStub;->mHandler:Lcom/mediatek/ims/ImsUtStub$ResultHandler;

    const/16 v3, 0x3ee

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 868
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtStub;->mMMTelSSTSL:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-virtual {v2, v0}, Lcom/mediatek/ims/MMTelSSTransport;->getCOLP(Landroid/os/Message;)V

    .line 870
    return v1

    .line 859
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    :catchall_36
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public queryCOLR()I
    .registers 7

    .prologue
    .line 838
    sget-object v3, Lcom/mediatek/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 839
    :try_start_3
    sget v1, Lcom/mediatek/ims/ImsUtStub;->sRequestId:I

    .line 840
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/ims/ImsUtStub;->sRequestId:I
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_36

    monitor-exit v3

    .line 843
    const-string/jumbo v2, "ImsUtService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "queryCOLR(): requestId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtStub;->mHandler:Lcom/mediatek/ims/ImsUtStub$ResultHandler;

    const/16 v3, 0x3ed

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 847
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtStub;->mMMTelSSTSL:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-virtual {v2, v0}, Lcom/mediatek/ims/MMTelSSTransport;->getCOLR(Landroid/os/Message;)V

    .line 849
    return v1

    .line 838
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    :catchall_36
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public queryCallBarring(I)I
    .registers 9
    .param p1, "cbType"    # I

    .prologue
    const/4 v6, 0x0

    .line 729
    sget-object v4, Lcom/mediatek/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 730
    :try_start_4
    sget v2, Lcom/mediatek/ims/ImsUtStub;->sRequestId:I

    .line 731
    .local v2, "requestId":I
    sget v3, Lcom/mediatek/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/mediatek/ims/ImsUtStub;->sRequestId:I
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_3b

    monitor-exit v4

    .line 734
    const-string/jumbo v3, "ImsUtService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "queryCallBarring(): requestId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsUtStub;->getFacilityFromCBType(I)Ljava/lang/String;

    move-result-object v0

    .line 738
    .local v0, "facility":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/ims/ImsUtStub;->mHandler:Lcom/mediatek/ims/ImsUtStub$ResultHandler;

    const/16 v4, 0x3e8

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5, v6}, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 739
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/ims/ImsUtStub;->mMMTelSSTSL:Lcom/mediatek/ims/MMTelSSTransport;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v6, v4, v1}, Lcom/mediatek/ims/MMTelSSTransport;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 741
    return v2

    .line 729
    .end local v0    # "facility":Ljava/lang/String;
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "requestId":I
    :catchall_3b
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public queryCallForward(ILjava/lang/String;)I
    .registers 9
    .param p1, "condition"    # I
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 753
    sget-object v3, Lcom/mediatek/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 754
    :try_start_3
    sget v1, Lcom/mediatek/ims/ImsUtStub;->sRequestId:I

    .line 755
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/ims/ImsUtStub;->sRequestId:I
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_3b

    monitor-exit v3

    .line 758
    const-string/jumbo v2, "ImsUtService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "queryCallForward(): requestId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtStub;->mHandler:Lcom/mediatek/ims/ImsUtStub$ResultHandler;

    const/16 v3, 0x3e9

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 762
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtStub;->mMMTelSSTSL:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsUtStub;->getCFReasonFromCondition(I)I

    move-result v3

    .line 763
    const/4 v4, 0x1

    .line 762
    invoke-virtual {v2, v3, v4, p2, v0}, Lcom/mediatek/ims/MMTelSSTransport;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    .line 765
    return v1

    .line 753
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    :catchall_3b
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public queryCallForwardInTimeSlot(I)I
    .registers 8
    .param p1, "condition"    # I

    .prologue
    .line 1101
    sget-object v3, Lcom/mediatek/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1102
    :try_start_3
    sget v1, Lcom/mediatek/ims/ImsUtStub;->sRequestId:I

    .line 1103
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/ims/ImsUtStub;->sRequestId:I
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_3b

    monitor-exit v3

    .line 1106
    const-string/jumbo v2, "ImsUtService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "queryCallForwardInTimeSlot(): requestId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtStub;->mHandler:Lcom/mediatek/ims/ImsUtStub$ResultHandler;

    const/16 v3, 0x3f6

    .line 1110
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1109
    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1111
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtStub;->mMMTelSSTSL:Lcom/mediatek/ims/MMTelSSTransport;

    .line 1112
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsUtStub;->getCFReasonFromCondition(I)I

    move-result v3

    .line 1113
    const/4 v4, 0x1

    .line 1111
    invoke-virtual {v2, v3, v4, v0}, Lcom/mediatek/ims/MMTelSSTransport;->queryCallForwardInTimeSlotStatus(IILandroid/os/Message;)V

    .line 1116
    return v1

    .line 1101
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    :catchall_3b
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public queryCallWaiting()I
    .registers 7

    .prologue
    .line 775
    sget-object v3, Lcom/mediatek/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 776
    :try_start_3
    sget v1, Lcom/mediatek/ims/ImsUtStub;->sRequestId:I

    .line 777
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/ims/ImsUtStub;->sRequestId:I
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_37

    monitor-exit v3

    .line 780
    const-string/jumbo v2, "ImsUtService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "queryCallWaiting(): requestId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtStub;->mHandler:Lcom/mediatek/ims/ImsUtStub$ResultHandler;

    const/16 v3, 0x3ea

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 784
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtStub;->mMMTelSSTSL:Lcom/mediatek/ims/MMTelSSTransport;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/ims/MMTelSSTransport;->queryCallWaiting(ILandroid/os/Message;)V

    .line 786
    return v1

    .line 775
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    :catchall_37
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public setListener(Lcom/android/ims/internal/IImsUtListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/android/ims/internal/IImsUtListener;

    .prologue
    .line 1063
    iput-object p1, p0, Lcom/mediatek/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;

    .line 1062
    return-void
.end method

.method public transact(Landroid/os/Bundle;)I
    .registers 5
    .param p1, "ssInfo"    # Landroid/os/Bundle;

    .prologue
    .line 881
    sget-object v2, Lcom/mediatek/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 882
    :try_start_3
    sget v0, Lcom/mediatek/ims/ImsUtStub;->sRequestId:I

    .line 883
    .local v0, "requestId":I
    sget v1, Lcom/mediatek/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/mediatek/ims/ImsUtStub;->sRequestId:I
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v2

    .line 886
    return v0

    .line 881
    .end local v0    # "requestId":I
    :catchall_d
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public updateCLIP(Z)I
    .registers 9
    .param p1, "enable"    # Z

    .prologue
    .line 998
    sget-object v4, Lcom/mediatek/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 999
    :try_start_3
    sget v2, Lcom/mediatek/ims/ImsUtStub;->sRequestId:I

    .line 1000
    .local v2, "requestId":I
    sget v3, Lcom/mediatek/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/mediatek/ims/ImsUtStub;->sRequestId:I
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_39

    monitor-exit v4

    .line 1003
    const-string/jumbo v3, "ImsUtService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateCLIP(): requestId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    if-eqz p1, :cond_3c

    const/4 v0, 0x1

    .line 1007
    .local v0, "enableClip":I
    :goto_29
    iget-object v3, p0, Lcom/mediatek/ims/ImsUtStub;->mHandler:Lcom/mediatek/ims/ImsUtStub$ResultHandler;

    const/16 v4, 0x3f3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v2, v5, v6}, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1008
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/ims/ImsUtStub;->mMMTelSSTSL:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-virtual {v3, v0, v1}, Lcom/mediatek/ims/MMTelSSTransport;->setCLIP(ILandroid/os/Message;)V

    .line 1010
    return v2

    .line 998
    .end local v0    # "enableClip":I
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "requestId":I
    :catchall_39
    move-exception v3

    monitor-exit v4

    throw v3

    .line 1006
    .restart local v2    # "requestId":I
    :cond_3c
    const/4 v0, 0x0

    .restart local v0    # "enableClip":I
    goto :goto_29
.end method

.method public updateCLIR(I)I
    .registers 8
    .param p1, "clirMode"    # I

    .prologue
    .line 976
    sget-object v3, Lcom/mediatek/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 977
    :try_start_3
    sget v1, Lcom/mediatek/ims/ImsUtStub;->sRequestId:I

    .line 978
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/ims/ImsUtStub;->sRequestId:I
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_36

    monitor-exit v3

    .line 981
    const-string/jumbo v2, "ImsUtService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateCLIR(): requestId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtStub;->mHandler:Lcom/mediatek/ims/ImsUtStub$ResultHandler;

    const/16 v3, 0x3f2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 985
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtStub;->mMMTelSSTSL:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-virtual {v2, p1, v0}, Lcom/mediatek/ims/MMTelSSTransport;->setCLIR(ILandroid/os/Message;)V

    .line 987
    return v1

    .line 976
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    :catchall_36
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public updateCOLP(Z)I
    .registers 9
    .param p1, "enable"    # Z

    .prologue
    .line 1043
    sget-object v4, Lcom/mediatek/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1044
    :try_start_3
    sget v2, Lcom/mediatek/ims/ImsUtStub;->sRequestId:I

    .line 1045
    .local v2, "requestId":I
    sget v3, Lcom/mediatek/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/mediatek/ims/ImsUtStub;->sRequestId:I
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_39

    monitor-exit v4

    .line 1048
    const-string/jumbo v3, "ImsUtService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateCOLP(): requestId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    if-eqz p1, :cond_3c

    const/4 v0, 0x1

    .line 1052
    .local v0, "enableColp":I
    :goto_29
    iget-object v3, p0, Lcom/mediatek/ims/ImsUtStub;->mHandler:Lcom/mediatek/ims/ImsUtStub$ResultHandler;

    const/16 v4, 0x3f5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v2, v5, v6}, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1053
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/ims/ImsUtStub;->mMMTelSSTSL:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-virtual {v3, v0, v1}, Lcom/mediatek/ims/MMTelSSTransport;->setCOLP(ILandroid/os/Message;)V

    .line 1055
    return v2

    .line 1043
    .end local v0    # "enableColp":I
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "requestId":I
    :catchall_39
    move-exception v3

    monitor-exit v4

    throw v3

    .line 1051
    .restart local v2    # "requestId":I
    :cond_3c
    const/4 v0, 0x0

    .restart local v0    # "enableColp":I
    goto :goto_29
.end method

.method public updateCOLR(I)I
    .registers 8
    .param p1, "presentation"    # I

    .prologue
    .line 1021
    sget-object v3, Lcom/mediatek/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1022
    :try_start_3
    sget v1, Lcom/mediatek/ims/ImsUtStub;->sRequestId:I

    .line 1023
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/ims/ImsUtStub;->sRequestId:I
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_36

    monitor-exit v3

    .line 1026
    const-string/jumbo v2, "ImsUtService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateCOLR(): requestId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtStub;->mHandler:Lcom/mediatek/ims/ImsUtStub$ResultHandler;

    const/16 v3, 0x3f4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1030
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtStub;->mMMTelSSTSL:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-virtual {v2, p1, v0}, Lcom/mediatek/ims/MMTelSSTransport;->setCOLR(ILandroid/os/Message;)V

    .line 1032
    return v1

    .line 1021
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    :catchall_36
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public updateCallBarring(II[Ljava/lang/String;)I
    .registers 13
    .param p1, "cbType"    # I
    .param p2, "enable"    # I
    .param p3, "barrList"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 900
    sget-object v7, Lcom/mediatek/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 901
    :try_start_5
    sget v6, Lcom/mediatek/ims/ImsUtStub;->sRequestId:I

    .line 902
    .local v6, "requestId":I
    sget v0, Lcom/mediatek/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/mediatek/ims/ImsUtStub;->sRequestId:I
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_3e

    monitor-exit v7

    .line 905
    const-string/jumbo v0, "ImsUtService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateCallBarring(): requestId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    if-ne p2, v4, :cond_41

    const/4 v2, 0x1

    .line 910
    .local v2, "bEnable":Z
    :goto_2b
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsUtStub;->getFacilityFromCBType(I)Ljava/lang/String;

    move-result-object v1

    .line 911
    .local v1, "facility":Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtStub;->mHandler:Lcom/mediatek/ims/ImsUtStub$ResultHandler;

    const/16 v7, 0x3ef

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v6, v8, v3}, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 912
    .local v5, "msg":Landroid/os/Message;
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtStub;->mMMTelSSTSL:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/ims/MMTelSSTransport;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 915
    return v6

    .line 900
    .end local v1    # "facility":Ljava/lang/String;
    .end local v2    # "bEnable":Z
    .end local v5    # "msg":Landroid/os/Message;
    .end local v6    # "requestId":I
    :catchall_3e
    move-exception v0

    monitor-exit v7

    throw v0

    .line 908
    .restart local v6    # "requestId":I
    :cond_41
    const/4 v2, 0x0

    .restart local v2    # "bEnable":Z
    goto :goto_2b
.end method

.method public updateCallForward(IILjava/lang/String;II)I
    .registers 14
    .param p1, "action"    # I
    .param p2, "condition"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "timeSeconds"    # I

    .prologue
    .line 930
    sget-object v1, Lcom/mediatek/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 931
    :try_start_3
    sget v7, Lcom/mediatek/ims/ImsUtStub;->sRequestId:I

    .line 932
    .local v7, "requestId":I
    sget v0, Lcom/mediatek/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/mediatek/ims/ImsUtStub;->sRequestId:I
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_41

    monitor-exit v1

    .line 935
    const-string/jumbo v0, "ImsUtService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCallForward(): requestId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtStub;->mHandler:Lcom/mediatek/ims/ImsUtStub$ResultHandler;

    const/16 v1, 0x3f0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v7, v2, v3}, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 939
    .local v6, "msg":Landroid/os/Message;
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtStub;->mMMTelSSTSL:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsUtStub;->getCFActionFromAction(I)I

    move-result v1

    .line 940
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ImsUtStub;->getCFReasonFromCondition(I)I

    move-result v2

    move v3, p4

    move-object v4, p3

    move v5, p5

    .line 939
    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/ims/MMTelSSTransport;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    .line 943
    return v7

    .line 930
    .end local v6    # "msg":Landroid/os/Message;
    .end local v7    # "requestId":I
    :catchall_41
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public updateCallForwardInTimeSlot(IILjava/lang/String;I[J)I
    .registers 15
    .param p1, "action"    # I
    .param p2, "condition"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "timeSeconds"    # I
    .param p5, "timeSlot"    # [J

    .prologue
    .line 1126
    sget-object v1, Lcom/mediatek/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1127
    :try_start_3
    sget v8, Lcom/mediatek/ims/ImsUtStub;->sRequestId:I

    .line 1128
    .local v8, "requestId":I
    sget v0, Lcom/mediatek/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/mediatek/ims/ImsUtStub;->sRequestId:I
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_42

    monitor-exit v1

    .line 1131
    const-string/jumbo v0, "ImsUtService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCallForwardInTimeSlot(): requestId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtStub;->mHandler:Lcom/mediatek/ims/ImsUtStub$ResultHandler;

    const/16 v1, 0x3f7

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v8, v2, v3}, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 1135
    .local v7, "msg":Landroid/os/Message;
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtStub;->mMMTelSSTSL:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsUtStub;->getCFActionFromAction(I)I

    move-result v1

    .line 1136
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ImsUtStub;->getCFReasonFromCondition(I)I

    move-result v2

    .line 1137
    const/4 v3, 0x1

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    .line 1135
    invoke-virtual/range {v0 .. v7}, Lcom/mediatek/ims/MMTelSSTransport;->setCallForwardInTimeSlot(IIILjava/lang/String;I[JLandroid/os/Message;)V

    .line 1140
    return v8

    .line 1126
    .end local v7    # "msg":Landroid/os/Message;
    .end local v8    # "requestId":I
    :catchall_42
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public updateCallWaiting(ZI)I
    .registers 9
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I

    .prologue
    .line 954
    sget-object v3, Lcom/mediatek/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 955
    :try_start_3
    sget v1, Lcom/mediatek/ims/ImsUtStub;->sRequestId:I

    .line 956
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/ims/ImsUtStub;->sRequestId:I
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_36

    monitor-exit v3

    .line 959
    const-string/jumbo v2, "ImsUtService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateCallWaiting(): requestId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtStub;->mHandler:Lcom/mediatek/ims/ImsUtStub$ResultHandler;

    const/16 v3, 0x3f1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/mediatek/ims/ImsUtStub$ResultHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 963
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtStub;->mMMTelSSTSL:Lcom/mediatek/ims/MMTelSSTransport;

    invoke-virtual {v2, p1, p2, v0}, Lcom/mediatek/ims/MMTelSSTransport;->setCallWaiting(ZILandroid/os/Message;)V

    .line 965
    return v1

    .line 954
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    :catchall_36
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method xcapExceptionToImsReasonInfo(Lcom/mediatek/simservs/xcap/XcapException;)Lcom/android/ims/ImsReasonInfo;
    .registers 7
    .param p1, "xcapEx"    # Lcom/mediatek/simservs/xcap/XcapException;

    .prologue
    const/4 v4, 0x0

    .line 1074
    if-eqz p1, :cond_3f

    .line 1075
    const-string/jumbo v1, "ImsUtService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "xcapExceptionToImsReasonInfo(): XcapException: code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1076
    invoke-virtual {p1}, Lcom/mediatek/simservs/xcap/XcapException;->getExceptionCodeCode()I

    move-result v3

    .line 1075
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1077
    const-string/jumbo v3, ", http error = "

    .line 1075
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1077
    invoke-virtual {p1}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v3

    .line 1075
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1078
    const-string/jumbo v3, ", isConnectionError = "

    .line 1075
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1078
    invoke-virtual {p1}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v3

    .line 1075
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    :cond_3f
    if-eqz p1, :cond_51

    invoke-virtual {p1}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v1

    const/16 v2, 0x193

    if-ne v1, v2, :cond_51

    .line 1082
    new-instance v0, Lcom/android/ims/ImsReasonInfo;

    const/16 v1, 0x33e

    invoke-direct {v0, v1, v4}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    .line 1091
    .local v0, "reason":Lcom/android/ims/ImsReasonInfo;
    :goto_50
    return-object v0

    .line 1083
    .end local v0    # "reason":Lcom/android/ims/ImsReasonInfo;
    :cond_51
    if-eqz p1, :cond_63

    invoke-virtual {p1}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v1

    const/16 v2, 0x194

    if-ne v1, v2, :cond_63

    .line 1084
    new-instance v0, Lcom/android/ims/ImsReasonInfo;

    const/16 v1, 0x340

    invoke-direct {v0, v1, v4}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    .line 1083
    .restart local v0    # "reason":Lcom/android/ims/ImsReasonInfo;
    goto :goto_50

    .line 1085
    .end local v0    # "reason":Lcom/android/ims/ImsReasonInfo;
    :cond_63
    if-eqz p1, :cond_75

    invoke-virtual {p1}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v1

    const/16 v2, 0x199

    if-ne v1, v2, :cond_75

    .line 1086
    new-instance v0, Lcom/android/ims/ImsReasonInfo;

    const/16 v1, 0x341

    invoke-direct {v0, v1, v4}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    .line 1085
    .restart local v0    # "reason":Lcom/android/ims/ImsReasonInfo;
    goto :goto_50

    .line 1088
    .end local v0    # "reason":Lcom/android/ims/ImsReasonInfo;
    :cond_75
    new-instance v0, Lcom/android/ims/ImsReasonInfo;

    const/16 v1, 0x324

    invoke-direct {v0, v1, v4}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    .restart local v0    # "reason":Lcom/android/ims/ImsReasonInfo;
    goto :goto_50
.end method
