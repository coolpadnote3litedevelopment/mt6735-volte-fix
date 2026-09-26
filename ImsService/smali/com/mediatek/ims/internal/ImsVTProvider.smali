.class public Lcom/mediatek/ims/internal/ImsVTProvider;
.super Lcom/android/ims/internal/ImsVideoCallProvider;
.source "ImsVTProvider.java"


# static fields
.field public static final SESSION_EVENT_BAD_DATA_BITRATE:I = 0xfa8

.field public static final SESSION_EVENT_CALL_ABNORMAL_END:I = 0x3f1

.field public static final SESSION_EVENT_CALL_END:I = 0x3f0

.field public static final SESSION_EVENT_CAM_CAP_CHANGED:I = 0xfa7

.field public static final SESSION_EVENT_DATA_BITRATE_RECOVER:I = 0xfa9

.field public static final SESSION_EVENT_DATA_USAGE_CHANGED:I = 0xfa6

.field public static final SESSION_EVENT_ERROR_CAMERA:I = 0x1f43

.field public static final SESSION_EVENT_ERROR_CODEC:I = 0x1f44

.field public static final SESSION_EVENT_ERROR_REC:I = 0x1f45

.field public static final SESSION_EVENT_ERROR_SERVER_DIED:I = 0x1f42

.field public static final SESSION_EVENT_ERROR_SERVICE:I = 0x1f41

.field public static final SESSION_EVENT_HANDLE_CALL_SESSION_EVT:I = 0xfa3

.field public static final SESSION_EVENT_LOCAL_SIZE_CHANGED:I = 0xfa5

.field public static final SESSION_EVENT_PEER_CAMERA_CLOSE:I = 0x3f4

.field public static final SESSION_EVENT_PEER_CAMERA_OPEN:I = 0x3f3

.field public static final SESSION_EVENT_PEER_SIZE_CHANGED:I = 0xfa4

.field public static final SESSION_EVENT_RECEIVE_FIRSTFRAME:I = 0x3e9

.field public static final SESSION_EVENT_RECORDER_EVENT_INFO_COMPLETE:I = 0x3ef

.field public static final SESSION_EVENT_RECORDER_EVENT_INFO_NO_I_FRAME:I = 0x3ee

.field public static final SESSION_EVENT_RECORDER_EVENT_INFO_REACH_MAX_DURATION:I = 0x3ec

.field public static final SESSION_EVENT_RECORDER_EVENT_INFO_REACH_MAX_FILESIZE:I = 0x3ed

.field public static final SESSION_EVENT_RECORDER_EVENT_INFO_UNKNOWN:I = 0x3eb

.field public static final SESSION_EVENT_RECV_SESSION_CONFIG_REQ:I = 0xfa1

.field public static final SESSION_EVENT_RECV_SESSION_CONFIG_RSP:I = 0xfa2

.field public static final SESSION_EVENT_SNAPSHOT_DONE:I = 0x3ea

.field public static final SESSION_EVENT_START_COUNTER:I = 0x3f2

.field public static final SESSION_EVENT_WARNING_SERVICE_NOT_READY:I = 0x2329

.field static final TAG:Ljava/lang/String; = "ImsVTProvider"

.field public static final VT_PROVIDER_INVALIDE_ID:I = -0x2710

.field private static mDefaultId:I


# instance fields
.field private mId:I

.field private mMode:I

.field private mUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 59
    const-string/jumbo v0, "mtk_vt_wrapper"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 100
    const/16 v0, -0x2710

    sput v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDefaultId:I

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/android/ims/internal/ImsVideoCallProvider;-><init>()V

    .line 97
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    .line 142
    const-string/jumbo v0, "ImsVTProvider"

    const-string/jumbo v1, "New ImsVTProvider without id"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/16 v0, -0x2710

    iput v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    .line 140
    return-void
.end method

.method public constructor <init>(I)V
    .registers 7
    .param p1, "id"    # I

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/ims/internal/ImsVideoCallProvider;-><init>()V

    .line 97
    const/4 v2, 0x1

    iput v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    .line 98
    const/4 v2, 0x0

    iput v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    .line 105
    const-string/jumbo v2, "ImsVTProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "New ImsVTProvider id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v1, 0x0

    .line 111
    .local v1, "wait_time":I
    const-string/jumbo v2, "ImsVTProvider"

    const-string/jumbo v3, "New ImsVTProvider check if exist the same id"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_2d
    invoke-static {p1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordGet(I)Lcom/mediatek/ims/internal/ImsVTProvider;

    move-result-object v2

    if-eqz v2, :cond_50

    .line 113
    const-string/jumbo v2, "ImsVTProvider"

    const-string/jumbo v3, "New ImsVTProvider the same id exist, wait ..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const-wide/16 v2, 0x3e8

    :try_start_3e
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_41
    .catch Ljava/lang/InterruptedException; {:try_start_3e .. :try_end_41} :catch_73

    .line 120
    :goto_41
    add-int/lit8 v1, v1, 0x1

    .line 121
    const/16 v2, 0xa

    if-le v1, v2, :cond_2d

    .line 122
    const-string/jumbo v2, "ImsVTProvider"

    const-string/jumbo v3, "New ImsVTProvider the same id exist, break!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_50
    iput p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    .line 128
    new-instance v2, Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-direct {v2}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;-><init>()V

    iput-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    .line 129
    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-static {v2, p0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordAdd(ILcom/mediatek/ims/internal/ImsVTProvider;)V

    .line 131
    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-direct {p0, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->updateEMParam(I)V

    .line 133
    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-static {v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->nInitialization(I)I

    .line 135
    sget v2, Lcom/mediatek/ims/internal/ImsVTProvider;->mDefaultId:I

    const/16 v3, -0x2710

    if-ne v2, v3, :cond_72

    .line 136
    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sput v2, Lcom/mediatek/ims/internal/ImsVTProvider;->mDefaultId:I

    .line 102
    :cond_72
    return-void

    .line 117
    :catch_73
    move-exception v0

    .local v0, "ex":Ljava/lang/InterruptedException;
    goto :goto_41
.end method

.method public static native nFinalization(I)I
.end method

.method public static native nGetCameraParameters(I)Ljava/lang/String;
.end method

.method public static native nGetCameraSensorCount(I)I
.end method

.method public static native nInitialization(I)I
.end method

.method public static native nRequestCallDataUsage(I)I
.end method

.method public static native nRequestCameraCapabilities(I)I
.end method

.method public static native nRequestPeerConfig(ILjava/lang/String;)I
.end method

.method public static native nResponseLocalConfig(ILjava/lang/String;)I
.end method

.method public static native nSetCamera(II)I
.end method

.method public static native nSetCameraParameters(ILjava/lang/String;)I
.end method

.method public static native nSetDeviceOrientation(II)I
.end method

.method public static native nSetDisplaySurface(ILandroid/view/Surface;)I
.end method

.method public static native nSetEM(IIII)I
.end method

.method public static native nSetPreviewSurface(ILandroid/view/Surface;)I
.end method

.method public static native nSetUIMode(II)I
.end method

.method public static native nSnapshot(IILjava/lang/String;)I
.end method

.method public static native nStartRecording(IILjava/lang/String;J)I
.end method

.method public static native nStopRecording(I)I
.end method

.method public static postEventFromNative(IIIIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 21
    .param p0, "msg"    # I
    .param p1, "id"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I
    .param p5, "obj1"    # Ljava/lang/Object;
    .param p6, "obj2"    # Ljava/lang/Object;
    .param p7, "obj3"    # Ljava/lang/Object;

    .prologue
    .line 353
    invoke-static {p1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordGet(I)Lcom/mediatek/ims/internal/ImsVTProvider;

    move-result-object v6

    .line 355
    .local v6, "vp":Lcom/mediatek/ims/internal/ImsVTProvider;
    if-nez v6, :cond_10

    .line 356
    const-string/jumbo v10, "ImsVTProvider"

    const-string/jumbo v11, "Error: post event to Call is already release or has happen error before!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    return-void

    .line 360
    :cond_10
    const-string/jumbo v10, "ImsVTProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "postEventFromNative ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    sparse-switch p0, :sswitch_data_202

    .line 549
    const-string/jumbo v10, "ImsVTProvider"

    const-string/jumbo v11, "postEventFromNative : msg = UNKNOWB"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    .end local p5    # "obj1":Ljava/lang/Object;
    .end local p6    # "obj2":Ljava/lang/Object;
    :cond_3d
    :goto_3d
    return-void

    .line 363
    .restart local p5    # "obj1":Ljava/lang/Object;
    .restart local p6    # "obj2":Ljava/lang/Object;
    :sswitch_3e
    const-string/jumbo v10, "ImsVTProvider"

    const-string/jumbo v11, "postEventFromNative : msg = SESSION_EVENT_RECEIVE_FIRSTFRAME"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-virtual {v6, p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    goto :goto_3d

    .line 369
    :sswitch_4b
    const-string/jumbo v10, "ImsVTProvider"

    const-string/jumbo v11, "postEventFromNative : msg = SESSION_EVENT_SNAPSHOT_DONE"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-virtual {v6, p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    goto :goto_3d

    .line 375
    :sswitch_58
    const-string/jumbo v10, "ImsVTProvider"

    const-string/jumbo v11, "postEventFromNative : msg = SESSION_EVENT_RECORDER_EVENT_INFO_UNKNOWN"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-virtual {v6, p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    goto :goto_3d

    .line 381
    :sswitch_65
    const-string/jumbo v10, "ImsVTProvider"

    const-string/jumbo v11, "postEventFromNative : msg = SESSION_EVENT_RECORDER_EVENT_INFO_REACH_MAX_DURATION"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-virtual {v6, p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    goto :goto_3d

    .line 388
    :sswitch_72
    const-string/jumbo v10, "ImsVTProvider"

    const-string/jumbo v11, "postEventFromNative : msg = SESSION_EVENT_RECORDER_EVENT_INFO_REACH_MAX_FILESIZE"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-virtual {v6, p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    goto :goto_3d

    .line 395
    :sswitch_7f
    const-string/jumbo v10, "ImsVTProvider"

    const-string/jumbo v11, "postEventFromNative : msg = SESSION_EVENT_RECORDER_EVENT_INFO_NO_I_FRAME"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-virtual {v6, p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    goto :goto_3d

    .line 402
    :sswitch_8c
    const-string/jumbo v10, "ImsVTProvider"

    const-string/jumbo v11, "postEventFromNative : msg = SESSION_EVENT_RECORDER_EVENT_INFO_COMPLETE"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-virtual {v6, p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    goto :goto_3d

    .line 410
    :sswitch_99
    const-string/jumbo v10, "ImsVTProvider"

    const-string/jumbo v11, "postEventFromNative : msg = SESSION_EVENT_CALL_END / SESSION_EVENT_CALL_ABNORMAL_END"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-static {p1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordRemove(I)V

    .line 414
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProvider;->updateDefaultId()V

    .line 416
    invoke-virtual {v6, p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    goto :goto_3d

    .line 420
    :sswitch_ac
    const-string/jumbo v10, "ImsVTProvider"

    const-string/jumbo v11, "postEventFromNative : msg = MSG_START_COUNTER"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-virtual {v6, p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    goto :goto_3d

    .line 426
    :sswitch_b9
    const-string/jumbo v10, "ImsVTProvider"

    const-string/jumbo v11, "postEventFromNative : msg = MSG_PEER_CAMERA_OPEN"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-virtual {v6, p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    goto/16 :goto_3d

    .line 432
    :sswitch_c7
    const-string/jumbo v10, "ImsVTProvider"

    const-string/jumbo v11, "postEventFromNative : msg = MSG_PEER_CAMERA_CLOSE"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-virtual {v6, p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    goto/16 :goto_3d

    .line 438
    :sswitch_d5
    const-string/jumbo v10, "ImsVTProvider"

    const-string/jumbo v11, "postEventFromNative : msg = SESSION_EVENT_RECV_SESSION_CONFIG_REQ"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    check-cast p5, Ljava/lang/String;

    .end local p5    # "obj1":Ljava/lang/Object;
    invoke-static/range {p5 .. p5}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->unPackToVdoProfile(Ljava/lang/String;)Landroid/telecom/VideoProfile;

    move-result-object v10

    .line 440
    invoke-virtual {v6, v10}, Lcom/mediatek/ims/internal/ImsVTProvider;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    goto/16 :goto_3d

    .line 445
    .restart local p5    # "obj1":Ljava/lang/Object;
    :sswitch_e9
    const-string/jumbo v10, "ImsVTProvider"

    const-string/jumbo v11, "postEventFromNative : msg = SESSION_EVENT_RECV_SESSION_CONFIG_RSP"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    check-cast p5, Ljava/lang/String;

    .end local p5    # "obj1":Ljava/lang/Object;
    invoke-static/range {p5 .. p5}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->unPackToVdoProfile(Ljava/lang/String;)Landroid/telecom/VideoProfile;

    move-result-object v10

    .line 450
    check-cast p6, Ljava/lang/String;

    .end local p6    # "obj2":Ljava/lang/Object;
    invoke-static/range {p6 .. p6}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->unPackToVdoProfile(Ljava/lang/String;)Landroid/telecom/VideoProfile;

    move-result-object v11

    .line 447
    invoke-virtual {v6, p2, v10, v11}, Lcom/mediatek/ims/internal/ImsVTProvider;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    goto/16 :goto_3d

    .line 454
    .restart local p5    # "obj1":Ljava/lang/Object;
    .restart local p6    # "obj2":Ljava/lang/Object;
    :sswitch_103
    const-string/jumbo v10, "ImsVTProvider"

    const-string/jumbo v11, "postEventFromNative : msg = SESSION_EVENT_HANDLE_CALL_SESSION_EVT"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-virtual {v6, p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    goto/16 :goto_3d

    .line 460
    :sswitch_111
    const-string/jumbo v10, "ImsVTProvider"

    const-string/jumbo v11, "postEventFromNative : msg = SESSION_EVENT_PEER_SIZE_CHANGED"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v6, p2, v0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->changePeerDimensionsWithAngle(III)V

    goto/16 :goto_3d

    .line 466
    :sswitch_123
    const-string/jumbo v10, "ImsVTProvider"

    const-string/jumbo v11, "postEventFromNative : msg = SESSION_EVENT_LOCAL_SIZE_CHANGED"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3d

    .line 471
    :sswitch_12e
    const-string/jumbo v10, "ImsVTProvider"

    const-string/jumbo v11, "postEventFromNative : msg = SESSION_EVENT_DATA_USAGE_CHANGED"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    int-to-long v10, p2

    invoke-virtual {v6, v10, v11}, Lcom/mediatek/ims/internal/ImsVTProvider;->changeCallDataUsage(J)V

    goto/16 :goto_3d

    .line 477
    :sswitch_13d
    const-string/jumbo v10, "ImsVTProvider"

    const-string/jumbo v11, "postEventFromNative : msg = SESSION_EVENT_CAM_CAP_CHANGED"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const-string/jumbo v11, "ImsVTProvider"

    move-object/from16 v10, p5

    check-cast v10, Ljava/lang/String;

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getSetting()Lcom/mediatek/ims/internal/ImsVTProviderUtil$ParameterSet;

    move-result-object v10

    check-cast p5, Ljava/lang/String;

    .end local p5    # "obj1":Ljava/lang/Object;
    move-object/from16 v0, p5

    invoke-virtual {v10, v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil$ParameterSet;->unflatten(Ljava/lang/String;)V

    .line 482
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getSetting()Lcom/mediatek/ims/internal/ImsVTProviderUtil$ParameterSet;

    move-result-object v4

    .line 484
    .local v4, "set":Lcom/mediatek/ims/internal/ImsVTProviderUtil$ParameterSet;
    const-string/jumbo v10, "max-zoom"

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Lcom/mediatek/ims/internal/ImsVTProviderUtil$ParameterSet;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 486
    .local v8, "zoom_max":I
    const-string/jumbo v10, "true"

    const-string/jumbo v11, "zoom-supported"

    invoke-virtual {v4, v11}, Lcom/mediatek/ims/internal/ImsVTProviderUtil$ParameterSet;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 487
    .local v9, "zoom_support":Z
    const-string/jumbo v10, "preview-size"

    invoke-virtual {v4, v10}, Lcom/mediatek/ims/internal/ImsVTProviderUtil$ParameterSet;->getSizeList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 490
    .local v5, "size":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;>;"
    const/16 v7, 0x140

    .line 491
    .local v7, "width":I
    const/16 v3, 0xf0

    .line 493
    .local v3, "height":I
    if-eqz v5, :cond_194

    .line 494
    const/4 v10, 0x0

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v7, v10, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->width:I

    .line 495
    const/4 v10, 0x0

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;

    iget v3, v10, Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;->height:I

    .line 499
    :cond_194
    new-instance v2, Landroid/telecom/VideoProfile$CameraCapabilities;

    int-to-float v10, v8

    invoke-direct {v2, v7, v3, v9, v10}, Landroid/telecom/VideoProfile$CameraCapabilities;-><init>(IIZF)V

    .line 501
    .local v2, "camCap":Landroid/telecom/VideoProfile$CameraCapabilities;
    invoke-virtual {v6, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V

    goto/16 :goto_3d

    .line 505
    .end local v2    # "camCap":Landroid/telecom/VideoProfile$CameraCapabilities;
    .end local v3    # "height":I
    .end local v4    # "set":Lcom/mediatek/ims/internal/ImsVTProviderUtil$ParameterSet;
    .end local v5    # "size":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;>;"
    .end local v7    # "width":I
    .end local v8    # "zoom_max":I
    .end local v9    # "zoom_support":Z
    .restart local p5    # "obj1":Ljava/lang/Object;
    :sswitch_19f
    const-string/jumbo v10, "ImsVTProvider"

    const-string/jumbo v11, "postEventFromNative : msg = SESSION_EVENT_BAD_DATA_BITRATE"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    invoke-virtual {v6, p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    goto/16 :goto_3d

    .line 511
    :sswitch_1ad
    const-string/jumbo v10, "ImsVTProvider"

    const-string/jumbo v11, "postEventFromNative : msg = MSG_ERROR_SERVICE"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    invoke-static {p1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordRemove(I)V

    .line 513
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProvider;->updateDefaultId()V

    .line 515
    invoke-virtual {v6, p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    goto/16 :goto_3d

    .line 519
    :sswitch_1c1
    const-string/jumbo v10, "ImsVTProvider"

    const-string/jumbo v11, "postEventFromNative : msg = MSG_ERROR_SERVER_DIED"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-static {p1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordRemove(I)V

    .line 521
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProvider;->updateDefaultId()V

    .line 525
    if-eqz v6, :cond_3d

    .line 526
    invoke-virtual {v6, p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    goto/16 :goto_3d

    .line 531
    :sswitch_1d7
    const-string/jumbo v10, "ImsVTProvider"

    const-string/jumbo v11, "postEventFromNative : msg = MSG_ERROR_CAMERA"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    invoke-virtual {v6, p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    goto/16 :goto_3d

    .line 537
    :sswitch_1e5
    const-string/jumbo v10, "ImsVTProvider"

    const-string/jumbo v11, "postEventFromNative : msg = MSG_ERROR_CODEC"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-virtual {v6, p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    goto/16 :goto_3d

    .line 543
    :sswitch_1f3
    const-string/jumbo v10, "ImsVTProvider"

    const-string/jumbo v11, "postEventFromNative : msg = MSG_ERROR_REC"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-virtual {v6, p0}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    goto/16 :goto_3d

    .line 361
    nop

    :sswitch_data_202
    .sparse-switch
        0x3e9 -> :sswitch_3e
        0x3ea -> :sswitch_4b
        0x3eb -> :sswitch_58
        0x3ec -> :sswitch_65
        0x3ed -> :sswitch_72
        0x3ee -> :sswitch_7f
        0x3ef -> :sswitch_8c
        0x3f0 -> :sswitch_99
        0x3f1 -> :sswitch_99
        0x3f2 -> :sswitch_ac
        0x3f3 -> :sswitch_b9
        0x3f4 -> :sswitch_c7
        0xfa1 -> :sswitch_d5
        0xfa2 -> :sswitch_e9
        0xfa3 -> :sswitch_103
        0xfa4 -> :sswitch_111
        0xfa5 -> :sswitch_123
        0xfa6 -> :sswitch_12e
        0xfa7 -> :sswitch_13d
        0xfa8 -> :sswitch_19f
        0x1f41 -> :sswitch_1ad
        0x1f42 -> :sswitch_1c1
        0x1f43 -> :sswitch_1d7
        0x1f44 -> :sswitch_1e5
        0x1f45 -> :sswitch_1f3
    .end sparse-switch
.end method

.method private static updateDefaultId()V
    .registers 1

    .prologue
    .line 191
    sget v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDefaultId:I

    invoke-static {v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordContain(I)Z

    move-result v0

    if-nez v0, :cond_19

    .line 192
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordSize()I

    move-result v0

    if-eqz v0, :cond_15

    .line 193
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordPopId()I

    move-result v0

    sput v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDefaultId:I

    .line 194
    return-void

    .line 196
    :cond_15
    const/16 v0, -0x2710

    sput v0, Lcom/mediatek/ims/internal/ImsVTProvider;->mDefaultId:I

    .line 198
    :cond_19
    return-void
.end method

.method private updateEMParam(I)V
    .registers 2
    .param p1, "id"    # I

    .prologue
    .line 220
    return-void
.end method


# virtual methods
.method public getId()I
    .registers 2

    .prologue
    .line 186
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    return v0
.end method

.method public onRequestCallDataUsage()V
    .registers 2

    .prologue
    .line 328
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-static {v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->nRequestCallDataUsage(I)I

    .line 327
    return-void
.end method

.method public onRequestCameraCapabilities()V
    .registers 2

    .prologue
    .line 324
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-static {v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->nRequestCameraCapabilities(I)I

    .line 315
    return-void
.end method

.method public onSendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .registers 5
    .param p1, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p2, "toProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 300
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-static {p2}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->nRequestPeerConfig(ILjava/lang/String;)I

    .line 291
    return-void
.end method

.method public onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .registers 4
    .param p1, "responseProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 312
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-static {p1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->nResponseLocalConfig(ILjava/lang/String;)I

    .line 303
    return-void
.end method

.method public onSetCamera(Ljava/lang/String;)V
    .registers 4
    .param p1, "cameraId"    # Ljava/lang/String;

    .prologue
    .line 232
    if-eqz p1, :cond_10

    .line 233
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetCamera(II)I

    .line 223
    :goto_f
    return-void

    .line 235
    :cond_10
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetCamera(II)I

    goto :goto_f
.end method

.method public onSetDeviceOrientation(I)V
    .registers 3
    .param p1, "rotation"    # I

    .prologue
    .line 282
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-static {v0, p1}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetDeviceOrientation(II)I

    .line 281
    return-void
.end method

.method public onSetDisplaySurface(Landroid/view/Surface;)V
    .registers 6
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    const/4 v3, 0x0

    .line 261
    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v2, 0x10000

    if-ne v1, v2, :cond_8

    .line 262
    return-void

    .line 265
    :cond_8
    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-static {v1, p1}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetDisplaySurface(ILandroid/view/Surface;)I

    .line 267
    if-nez p1, :cond_2a

    .line 268
    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-static {v1, v3, v3}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->surfaceSet(IZZ)V

    .line 273
    :goto_14
    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-static {v1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->surfaceGet(I)I

    move-result v1

    if-nez v1, :cond_29

    .line 274
    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-static {v1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordGet(I)Lcom/mediatek/ims/internal/ImsVTProvider;

    move-result-object v0

    .line 275
    .local v0, "vp":Lcom/mediatek/ims/internal/ImsVTProvider;
    if-eqz v0, :cond_29

    .line 276
    const/16 v1, 0x3f0

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 260
    .end local v0    # "vp":Lcom/mediatek/ims/internal/ImsVTProvider;
    :cond_29
    return-void

    .line 270
    :cond_2a
    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    const/4 v2, 0x1

    invoke-static {v1, v3, v2}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->surfaceSet(IZZ)V

    goto :goto_14
.end method

.method public onSetPauseImage(Landroid/net/Uri;)V
    .registers 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 331
    return-void
.end method

.method public onSetPreviewSurface(Landroid/view/Surface;)V
    .registers 7
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 240
    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v2, 0x10000

    if-ne v1, v2, :cond_9

    .line 241
    return-void

    .line 244
    :cond_9
    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-static {v1, p1}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetPreviewSurface(ILandroid/view/Surface;)I

    .line 246
    if-nez p1, :cond_2b

    .line 247
    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-static {v1, v3, v4}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->surfaceSet(IZZ)V

    .line 252
    :goto_15
    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-static {v1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->surfaceGet(I)I

    move-result v1

    if-nez v1, :cond_2a

    .line 253
    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-static {v1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordGet(I)Lcom/mediatek/ims/internal/ImsVTProvider;

    move-result-object v0

    .line 254
    .local v0, "vp":Lcom/mediatek/ims/internal/ImsVTProvider;
    if-eqz v0, :cond_2a

    .line 255
    const/16 v1, 0x3f0

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->handleCallSessionEvent(I)V

    .line 239
    .end local v0    # "vp":Lcom/mediatek/ims/internal/ImsVTProvider;
    :cond_2a
    return-void

    .line 249
    :cond_2b
    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-static {v1, v3, v3}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->surfaceSet(IZZ)V

    goto :goto_15
.end method

.method public onSetUIMode(I)V
    .registers 3
    .param p1, "mode"    # I

    .prologue
    .line 335
    iput p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    .line 336
    const/high16 v0, 0x10000

    if-ne p1, v0, :cond_c

    .line 337
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-static {v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->nFinalization(I)I

    .line 334
    :goto_b
    return-void

    .line 339
    :cond_c
    iget v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-static {v0, p1}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetUIMode(II)I

    goto :goto_b
.end method

.method public onSetZoom(F)V
    .registers 6
    .param p1, "value"    # F

    .prologue
    .line 286
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getSetting()Lcom/mediatek/ims/internal/ImsVTProviderUtil$ParameterSet;

    move-result-object v1

    const-string/jumbo v2, "zoom"

    float-to-int v3, p1

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/ims/internal/ImsVTProviderUtil$ParameterSet;->set(Ljava/lang/String;I)V

    .line 287
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getSetting()Lcom/mediatek/ims/internal/ImsVTProviderUtil$ParameterSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil$ParameterSet;->flatten()Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "currentSeeting":Ljava/lang/String;
    iget v1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-static {v1, v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetCameraParameters(ILjava/lang/String;)I

    .line 285
    return-void
.end method

.method public setId(I)V
    .registers 8
    .param p1, "id"    # I

    .prologue
    const/16 v5, -0x2710

    .line 147
    const-string/jumbo v2, "ImsVTProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setId id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const-string/jumbo v2, "ImsVTProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setId mId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    if-ne v2, v5, :cond_89

    .line 155
    const/4 v1, 0x0

    .line 156
    .local v1, "wait_time":I
    const-string/jumbo v2, "ImsVTProvider"

    const-string/jumbo v3, "New ImsVTProvider check if exist the same id"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_46
    invoke-static {p1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordGet(I)Lcom/mediatek/ims/internal/ImsVTProvider;

    move-result-object v2

    if-eqz v2, :cond_69

    .line 158
    const-string/jumbo v2, "ImsVTProvider"

    const-string/jumbo v3, "New ImsVTProvider the same id exist, wait ..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const-wide/16 v2, 0x3e8

    :try_start_57
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5a
    .catch Ljava/lang/InterruptedException; {:try_start_57 .. :try_end_5a} :catch_8a

    .line 165
    :goto_5a
    add-int/lit8 v1, v1, 0x1

    .line 166
    const/16 v2, 0xa

    if-le v1, v2, :cond_46

    .line 167
    const-string/jumbo v2, "ImsVTProvider"

    const-string/jumbo v3, "New ImsVTProvider the same id exist, break!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_69
    iput p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    .line 173
    new-instance v2, Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-direct {v2}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;-><init>()V

    iput-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mUtil:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    .line 174
    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-static {v2, p0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordAdd(ILcom/mediatek/ims/internal/ImsVTProvider;)V

    .line 175
    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-static {v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->nInitialization(I)I

    .line 177
    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    invoke-direct {p0, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->updateEMParam(I)V

    .line 179
    sget v2, Lcom/mediatek/ims/internal/ImsVTProvider;->mDefaultId:I

    if-ne v2, v5, :cond_89

    .line 180
    iget v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    sput v2, Lcom/mediatek/ims/internal/ImsVTProvider;->mDefaultId:I

    .line 146
    .end local v1    # "wait_time":I
    :cond_89
    return-void

    .line 162
    .restart local v1    # "wait_time":I
    :catch_8a
    move-exception v0

    .local v0, "ex":Ljava/lang/InterruptedException;
    goto :goto_5a
.end method
