.class Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9;
.super Ljava/lang/Object;
.source "RecorderActivity.java"

# interfaces
.implements Lcom/spritefish/camera/controls/CameraInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->initUiControls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    .line 694
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9;)Lcom/spritefish/fastburstcamera/activities/RecorderActivity;
    .locals 1
    .parameter

    .prologue
    .line 694
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    return-object v0
.end method


# virtual methods
.method public OnCameraInitialized(Landroid/hardware/Camera;)V
    .locals 35
    .parameter "camera"

    .prologue
    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v30, v0

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->bootLock:Ljava/util/concurrent/locks/Lock;
    invoke-static/range {v30 .. v30}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$8(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Ljava/util/concurrent/locks/Lock;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 703
    if-nez p1, :cond_0

    .line 706
    new-instance v6, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 707
    .local v6, builder2:Landroid/app/AlertDialog$Builder;
    const v30, 0x7f070073

    move/from16 v0, v30

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v30

    .line 708
    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v30

    .line 709
    const v31, 0x7f070037

    new-instance v32, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9$1;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9$1;-><init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9;)V

    invoke-virtual/range {v30 .. v32}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v30

    .line 713
    const v31, 0x7f070074

    new-instance v32, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9$2;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9$2;-><init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9;)V

    invoke-virtual/range {v30 .. v32}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 725
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 726
    .local v3, alert2:Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 971
    .end local v3           #alert2:Landroid/app/AlertDialog;
    .end local v6           #builder2:Landroid/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 732
    :cond_0
    sget-object v30, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->instance:Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->initialize(Landroid/hardware/Camera;)V

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v30, v0

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->firstPre:Lcom/spritefish/fastburstcamera/controls/ThumbImageView;
    invoke-static/range {v30 .. v30}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$9(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Lcom/spritefish/fastburstcamera/controls/ThumbImageView;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getBAM()Lcom/spritefish/camera/memory/NewByteArrayManager;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/spritefish/fastburstcamera/controls/ThumbImageView;->setNewByteArrayManager(Lcom/spritefish/camera/memory/NewByteArrayManager;)V

    .line 735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v30, v0

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->firstPre:Lcom/spritefish/fastburstcamera/controls/ThumbImageView;
    invoke-static/range {v30 .. v30}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$9(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Lcom/spritefish/fastburstcamera/controls/ThumbImageView;

    move-result-object v30

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Lcom/spritefish/fastburstcamera/controls/ThumbImageView;->setIsFirst(Z)V

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v30, v0

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->lastPre:Lcom/spritefish/fastburstcamera/controls/ThumbImageView;
    invoke-static/range {v30 .. v30}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$10(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Lcom/spritefish/fastburstcamera/controls/ThumbImageView;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getBAM()Lcom/spritefish/camera/memory/NewByteArrayManager;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/spritefish/fastburstcamera/controls/ThumbImageView;->setNewByteArrayManager(Lcom/spritefish/camera/memory/NewByteArrayManager;)V

    .line 737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v30, v0

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->lastPre:Lcom/spritefish/fastburstcamera/controls/ThumbImageView;
    invoke-static/range {v30 .. v30}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$10(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Lcom/spritefish/fastburstcamera/controls/ThumbImageView;

    move-result-object v30

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Lcom/spritefish/fastburstcamera/controls/ThumbImageView;->setIsFirst(Z)V

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v30, v0

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->preThumbs:Lcom/spritefish/fastburstcamera/controls/ThumbListImageView;
    invoke-static/range {v30 .. v30}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$11(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Lcom/spritefish/fastburstcamera/controls/ThumbListImageView;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getBAM()Lcom/spritefish/camera/memory/NewByteArrayManager;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/spritefish/fastburstcamera/controls/ThumbListImageView;->setNewByteArrayManager(Lcom/spritefish/camera/memory/NewByteArrayManager;)V

    .line 740
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v20

    .line 743
    .local v20, params:Landroid/hardware/Camera$Parameters;
    const-string v30, "auto"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 744
    sget v30, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v31, 0xe

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_1

    .line 746
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 748
    .local v9, focusAreas:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    new-instance v4, Landroid/hardware/Camera$Area;

    new-instance v30, Landroid/graphics/Rect;

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-direct/range {v30 .. v34}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-direct {v4, v0, v1}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    .line 750
    .local v4, area:Landroid/hardware/Camera$Area;
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 751
    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 753
    const-string v30, "focus-area-mode"

    const-string v31, "center"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    const-string v30, "metering"

    const-string v31, "center"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    .end local v4           #area:Landroid/hardware/Camera$Area;
    .end local v9           #focusAreas:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    :cond_1
    invoke-static {}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->getCameraSetup()Lcom/spritefish/fastburstcamera/core/CameraSetupApi;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Lcom/spritefish/fastburstcamera/core/CameraSetupApi;->useContinuousFocus()Z

    move-result v7

    .line 757
    .local v7, contFocus:Z
    invoke-virtual/range {v20 .. v20}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v30

    const-string v31, "auto"

    #calls: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->stringArrayContains(Ljava/util/List;Ljava/lang/String;)Z
    invoke-static/range {v30 .. v31}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$12(Ljava/util/List;Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_e

    if-eqz v7, :cond_e

    .line 758
    const-string v30, "auto"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 773
    :cond_2
    :goto_1
    sget-object v30, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->instance:Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    invoke-virtual/range {v30 .. v30}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->isUltraVersion()Z

    move-result v30

    if-eqz v30, :cond_3

    .line 774
    const-string v30, "mono"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 777
    :cond_3
    invoke-static {}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->getResolution()Landroid/hardware/Camera$Size;

    move-result-object v11

    .line 778
    .local v11, largest:Landroid/hardware/Camera$Size;
    iget v0, v11, Landroid/hardware/Camera$Size;->width:I

    move/from16 v24, v0

    .line 779
    .local v24, previewWidth:I
    iget v0, v11, Landroid/hardware/Camera$Size;->height:I

    move/from16 v23, v0

    .line 781
    .local v23, previewHeight:I
    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v30, v0

    mul-int v31, v24, v24

    div-int/lit8 v31, v31, 0x10

    move/from16 v0, v31

    new-array v0, v0, [B

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->lastGreyMap:[B

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v30, v0

    mul-int v31, v24, v24

    div-int/lit8 v31, v31, 0x10

    move/from16 v0, v31

    new-array v0, v0, [B

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->thisGreyMap:[B

    .line 784
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 791
    sget v30, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v31, 0x9

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_8

    .line 794
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v21

    .line 795
    .local v21, params2:Landroid/hardware/Camera$Parameters;
    invoke-virtual/range {v21 .. v21}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v10

    .line 797
    .local v10, fpsRanges:Ljava/util/List;,"Ljava/util/List<[I>;"
    const/4 v13, -0x1

    .line 798
    .local v13, maxH:I
    const/4 v14, -0x1

    .line 799
    .local v14, maxSum:I
    const/16 v26, -0x1

    .line 800
    .local v26, selectedMax:I
    const/16 v27, -0x1

    .line 803
    .local v27, selectedMin:I
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :cond_4
    :goto_2
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-nez v31, :cond_12

    .line 813
    const/16 v30, -0x1

    move/from16 v0, v26

    move/from16 v1, v30

    if-le v0, v1, :cond_7

    .line 815
    invoke-static {}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->getCameraSetup()Lcom/spritefish/fastburstcamera/core/CameraSetupApi;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Lcom/spritefish/fastburstcamera/core/CameraSetupApi;->getFixedFpsRange()[I

    move-result-object v19

    .line 816
    .local v19, overrideFpsRange:[I
    if-eqz v19, :cond_5

    .line 818
    const/16 v30, 0x0

    aget v26, v19, v30

    .line 819
    const/16 v30, 0x1

    aget v27, v19, v30

    .line 821
    :cond_5
    invoke-static {}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->getCameraSetup()Lcom/spritefish/fastburstcamera/core/CameraSetupApi;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Lcom/spritefish/fastburstcamera/core/CameraSetupApi;->getFixedFps()I

    move-result v18

    .line 822
    .local v18, overrideFps:I
    const/16 v30, -0x1

    move/from16 v0, v18

    move/from16 v1, v30

    if-eq v0, v1, :cond_6

    .line 823
    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 824
    :cond_6
    const-string v30, "insta"

    new-instance v31, Ljava/lang/StringBuilder;

    const-string v32, "selected FPS range : "

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ":"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    move-object/from16 v0, v21

    move/from16 v1, v27

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 829
    const-string v30, "auto-exposure-lock"

    const-string v31, "false"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    const-string v30, "auto-whitebalance-lock"

    const-string v31, "false"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 834
    .end local v18           #overrideFps:I
    .end local v19           #overrideFpsRange:[I
    :cond_7
    move-object/from16 v20, v21

    .line 846
    .end local v10           #fpsRanges:Ljava/util/List;,"Ljava/util/List<[I>;"
    .end local v13           #maxH:I
    .end local v14           #maxSum:I
    .end local v21           #params2:Landroid/hardware/Camera$Parameters;
    .end local v26           #selectedMax:I
    .end local v27           #selectedMin:I
    :cond_8
    :goto_3
    :try_start_1
    sget-object v30, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->instance:Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->getSelectedSize(Landroid/hardware/Camera;)Landroid/hardware/Camera$Size;

    move-result-object v29

    .line 847
    .local v29, usedSize:Landroid/hardware/Camera$Size;
    sget-object v30, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->instance:Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->lastUsedSize:Landroid/hardware/Camera$Size;

    move-object/from16 v30, v0

    if-eqz v30, :cond_9

    sget-object v30, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->instance:Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->lastUsedSize:Landroid/hardware/Camera$Size;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v30, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_a

    sget-object v30, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->instance:Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->lastUsedSize:Landroid/hardware/Camera$Size;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v30, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_a

    .line 866
    :cond_9
    sget-object v30, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->instance:Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->lastUsedSize:Landroid/hardware/Camera$Size;

    .line 868
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v30, v0

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->frameLayout:Lcom/spritefish/camera/controls/PreviewFrameLayout;
    invoke-static/range {v30 .. v30}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$13(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Lcom/spritefish/camera/controls/PreviewFrameLayout;

    move-result-object v30

    move-object/from16 v0, v29

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-double v0, v0

    move-wide/from16 v31, v0

    const-wide/16 v33, 0x0

    add-double v31, v31, v33

    move-object/from16 v0, v29

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-double v0, v0

    move-wide/from16 v33, v0

    div-double v31, v31, v33

    invoke-virtual/range {v30 .. v32}, Lcom/spritefish/camera/controls/PreviewFrameLayout;->setAspectRatio(D)V

    .line 870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v30

    const-string v31, "memoryPref"

    const-string v32, "-100"

    invoke-interface/range {v30 .. v32}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 871
    .local v22, prefMemModifier:I
    invoke-static {}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->getUsedMemoryModifier()I

    move-result v12

    .line 872
    .local v12, lastUsedModifier:I
    const/16 v30, -0x3e8

    move/from16 v0, v30

    if-le v12, v0, :cond_b

    .line 893
    :cond_b
    const-string v30, "insta"

    new-instance v31, Ljava/lang/StringBuilder;

    const-string v32, "selected "

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "x"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v29

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " as format"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->width:I

    .line 895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->height:I

    .line 900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getBufferManager()Lcom/spritefish/camera/memory/BufferManager;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/spritefish/camera/memory/BufferManager;->getBuffers()Ljava/util/List;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :goto_4
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-nez v31, :cond_13

    .line 904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->zoomAvail:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v31, v0

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v30

    if-eqz v30, :cond_14

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v30

    if-eqz v30, :cond_14

    const/16 v30, 0x1

    :goto_5
    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 905
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v30

    if-eqz v30, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-gt v0, v1, :cond_c

    .line 906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->zoomAvail:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 909
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->zoomAvail:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v30

    if-nez v30, :cond_d

    .line 913
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v30

    const-string v31, "taking-picture-zoom-min"

    invoke-virtual/range {v30 .. v31}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 914
    .local v16, minZoom:I
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v30

    const-string v31, "taking-picture-zoom-max"

    invoke-virtual/range {v30 .. v31}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 915
    .local v15, maxZoom:I
    if-lez v15, :cond_d

    move/from16 v0, v16

    if-le v15, v0, :cond_d

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->zoomAvail:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 927
    .end local v15           #maxZoom:I
    .end local v16           #minZoom:I
    :cond_d
    :goto_6
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v30

    if-eqz v30, :cond_15

    .line 928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->focusAvail:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v30, v0

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v31

    const-string v32, "auto"

    invoke-interface/range {v31 .. v32}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 931
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v30

    if-eqz v30, :cond_16

    .line 932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->flashTorchAvail:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v30, v0

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v31

    const-string v32, "torch"

    invoke-interface/range {v31 .. v32}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 936
    :goto_8
    invoke-static {}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->getCameraSetup()Lcom/spritefish/fastburstcamera/core/CameraSetupApi;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Lcom/spritefish/fastburstcamera/core/CameraSetupApi;->hasShootZoomFocusButton()Z

    move-result v30

    if-eqz v30, :cond_17

    const/16 v30, 0x0

    :goto_9
    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    .line 938
    .local v28, showZoom:Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v30, v0

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->zoomButton:Landroid/widget/ImageButton;
    invoke-static/range {v30 .. v30}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$14(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Landroid/widget/ImageButton;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->zoomAvail:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v30

    if-eqz v30, :cond_18

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    if-eqz v30, :cond_18

    const/16 v30, 0x0

    :goto_a
    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v30, v0

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->focusButton:Landroid/widget/ImageButton;
    invoke-static/range {v30 .. v30}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$15(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Landroid/widget/ImageButton;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->focusAvail:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v30

    if-eqz v30, :cond_19

    const/16 v30, 0x0

    :goto_b
    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v30, v0

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->lightButton:Landroid/widget/ImageButton;
    invoke-static/range {v30 .. v30}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$16(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Landroid/widget/ImageButton;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->flashTorchAvail:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v30

    if-eqz v30, :cond_1a

    const/16 v30, 0x0

    :goto_c
    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v30, v0

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->previewControl:Lcom/spritefish/camera/controls/PreviewControl;
    invoke-static/range {v30 .. v30}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Lcom/spritefish/camera/controls/PreviewControl;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->zoomLevel:Ljava/util/concurrent/atomic/AtomicLong;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v31

    move-wide/from16 v0, v31

    long-to-int v0, v0

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Lcom/spritefish/camera/controls/PreviewControl;->setZoom(I)V

    .line 946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v30, v0

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->previewControl:Lcom/spritefish/camera/controls/PreviewControl;
    invoke-static/range {v30 .. v30}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Lcom/spritefish/camera/controls/PreviewControl;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->flashState:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$FlashState;

    move-object/from16 v30, v0

    sget-object v32, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$FlashState;->ON:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$FlashState;

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_1b

    const/16 v30, 0x1

    :goto_d
    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/spritefish/camera/controls/PreviewControl;->setFlashlight(Z)V

    .line 948
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v30

    const-string v31, "\n"

    const-string v32, "\n\n"

    invoke-virtual/range {v30 .. v32}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$17(Ljava/lang/String;)V

    .line 949
    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "buffers : "

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getBAM()Lcom/spritefish/camera/memory/NewByteArrayManager;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/spritefish/camera/memory/NewByteArrayManager;->getMax()I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "\n\n"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-static {}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$18()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$17(Ljava/lang/String;)V

    .line 950
    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "device : "

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v31, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    sget-object v31, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "\n\n"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-static {}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$18()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$17(Ljava/lang/String;)V

    .line 951
    const-string v30, "insta"

    invoke-static {}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$18()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 955
    :try_start_4
    new-instance v17, Ljava/io/OutputStreamWriter;

    new-instance v30, Ljava/io/FileOutputStream;

    new-instance v31, Ljava/io/File;

    new-instance v32, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->storagePath:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v33, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "camera.properties"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v30 .. v31}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 957
    .local v17, out:Ljava/io/OutputStreamWriter;
    invoke-static {}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$18()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 959
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 966
    .end local v17           #out:Ljava/io/OutputStreamWriter;
    :goto_e
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v30, v0

    #calls: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->setPreviewCallback()V
    invoke-static/range {v30 .. v30}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$19(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 969
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v30, v0

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->bootLock:Ljava/util/concurrent/locks/Lock;
    invoke-static/range {v30 .. v30}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$8(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Ljava/util/concurrent/locks/Lock;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .line 760
    .end local v11           #largest:Landroid/hardware/Camera$Size;
    .end local v12           #lastUsedModifier:I
    .end local v22           #prefMemModifier:I
    .end local v23           #previewHeight:I
    .end local v24           #previewWidth:I
    .end local v28           #showZoom:Ljava/lang/Boolean;
    .end local v29           #usedSize:Landroid/hardware/Camera$Size;
    :cond_e
    invoke-virtual/range {v20 .. v20}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v30

    const-string v31, "continuous"

    #calls: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->stringArrayContains(Ljava/util/List;Ljava/lang/String;)Z
    invoke-static/range {v30 .. v31}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$12(Ljava/util/List;Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_f

    if-eqz v7, :cond_f

    .line 761
    const-string v30, "continuous"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 763
    :cond_f
    invoke-virtual/range {v20 .. v20}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v30

    const-string v31, "continuous-video"

    #calls: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->stringArrayContains(Ljava/util/List;Ljava/lang/String;)Z
    invoke-static/range {v30 .. v31}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$12(Ljava/util/List;Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_10

    if-eqz v7, :cond_10

    .line 764
    const-string v30, "continuous-video"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 766
    :cond_10
    invoke-virtual/range {v20 .. v20}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v30

    const-string v31, "auto"

    #calls: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->stringArrayContains(Ljava/util/List;Ljava/lang/String;)Z
    invoke-static/range {v30 .. v31}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$12(Ljava/util/List;Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_11

    .line 767
    const-string v30, "auto"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 769
    :cond_11
    invoke-virtual/range {v20 .. v20}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v30

    const-string v31, "infinity"

    #calls: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->stringArrayContains(Ljava/util/List;Ljava/lang/String;)Z
    invoke-static/range {v30 .. v31}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$12(Ljava/util/List;Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_2

    .line 770
    const-string v30, "infinity"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 803
    .restart local v10       #fpsRanges:Ljava/util/List;,"Ljava/util/List<[I>;"
    .restart local v11       #largest:Landroid/hardware/Camera$Size;
    .restart local v13       #maxH:I
    .restart local v14       #maxSum:I
    .restart local v21       #params2:Landroid/hardware/Camera$Parameters;
    .restart local v23       #previewHeight:I
    .restart local v24       #previewWidth:I
    .restart local v26       #selectedMax:I
    .restart local v27       #selectedMin:I
    :cond_12
    :try_start_6
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [I

    .line 805
    .local v25, r:[I
    const/16 v31, 0x1

    aget v31, v25, v31

    move/from16 v0, v31

    if-lt v0, v13, :cond_4

    const/16 v31, 0x0

    aget v31, v25, v31

    const/16 v32, 0x1

    aget v32, v25, v32

    add-int v31, v31, v32

    move/from16 v0, v31

    if-lt v0, v14, :cond_4

    .line 807
    const/16 v31, 0x1

    aget v13, v25, v31

    .line 808
    const/16 v31, 0x0

    aget v31, v25, v31

    const/16 v32, 0x1

    aget v32, v25, v32

    add-int v14, v31, v32

    .line 809
    const/16 v31, 0x1

    aget v26, v25, v31

    .line 810
    const/16 v31, 0x0

    aget v27, v25, v31
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_2

    .line 836
    .end local v10           #fpsRanges:Ljava/util/List;,"Ljava/util/List<[I>;"
    .end local v13           #maxH:I
    .end local v14           #maxSum:I
    .end local v21           #params2:Landroid/hardware/Camera$Parameters;
    .end local v25           #r:[I
    .end local v26           #selectedMax:I
    .end local v27           #selectedMin:I
    :catch_0
    move-exception v8

    .line 838
    .local v8, e:Ljava/lang/Throwable;
    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/spritefish/camera/LO;->i(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 900
    .end local v8           #e:Ljava/lang/Throwable;
    .restart local v12       #lastUsedModifier:I
    .restart local v22       #prefMemModifier:I
    .restart local v29       #usedSize:Landroid/hardware/Camera$Size;
    :cond_13
    :try_start_7
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/spritefish/camera/memory/BufferSet;

    .line 901
    .local v5, bs:Lcom/spritefish/camera/memory/BufferSet;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v31, v0

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->previewControl:Lcom/spritefish/camera/controls/PreviewControl;
    invoke-static/range {v31 .. v31}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Lcom/spritefish/camera/controls/PreviewControl;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/spritefish/camera/controls/PreviewControl;->addBufferSet(Lcom/spritefish/camera/memory/BufferSet;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_4

    .line 968
    .end local v5           #bs:Lcom/spritefish/camera/memory/BufferSet;
    .end local v12           #lastUsedModifier:I
    .end local v22           #prefMemModifier:I
    .end local v29           #usedSize:Landroid/hardware/Camera$Size;
    :catchall_0
    move-exception v30

    .line 969
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v31, v0

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->bootLock:Ljava/util/concurrent/locks/Lock;
    invoke-static/range {v31 .. v31}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$8(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Ljava/util/concurrent/locks/Lock;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 970
    throw v30

    .line 904
    .restart local v12       #lastUsedModifier:I
    .restart local v22       #prefMemModifier:I
    .restart local v29       #usedSize:Landroid/hardware/Camera$Size;
    :cond_14
    const/16 v30, 0x0

    goto/16 :goto_5

    .line 930
    :cond_15
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->focusAvail:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_7

    .line 934
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->flashTorchAvail:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_8

    .line 936
    :cond_17
    const/16 v30, 0x1

    goto/16 :goto_9

    .line 938
    .restart local v28       #showZoom:Ljava/lang/Boolean;
    :cond_18
    const/16 v30, 0x8

    goto/16 :goto_a

    .line 939
    :cond_19
    const/16 v30, 0x8

    goto/16 :goto_b

    .line 940
    :cond_1a
    const/16 v30, 0x8

    goto/16 :goto_c

    .line 946
    :cond_1b
    const/16 v30, 0x0

    goto/16 :goto_d

    .line 960
    :catch_1
    move-exception v8

    .line 962
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_e

    .line 918
    .end local v8           #e:Ljava/lang/Exception;
    .end local v28           #showZoom:Ljava/lang/Boolean;
    :catch_2
    move-exception v30

    goto/16 :goto_6
.end method
