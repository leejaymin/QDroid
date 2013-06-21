.class Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;
.super Ljava/lang/Object;
.source "RecorderActivity.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->setPreviewCallback()V
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
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    .line 1719
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;)Lcom/spritefish/fastburstcamera/activities/RecorderActivity;
    .locals 1
    .parameter

    .prologue
    .line 1719
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    return-object v0
.end method

.method private performAsync(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 1941
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1944
    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 32
    .parameter "yuv"
    .parameter "camera"

    .prologue
    .line 1725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v26, v0

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->bootLock:Ljava/util/concurrent/locks/Lock;
    invoke-static/range {v26 .. v26}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$8(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Ljava/util/concurrent/locks/Lock;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v26

    if-nez v26, :cond_0

    .line 1727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v26, v0

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->previewControl:Lcom/spritefish/camera/controls/PreviewControl;
    invoke-static/range {v26 .. v26}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Lcom/spritefish/camera/controls/PreviewControl;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/spritefish/camera/controls/PreviewControl;->returnUsedBuffer([B)V

    .line 1938
    :goto_0
    return-void

    .line 1730
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v26, v0

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->bootLock:Ljava/util/concurrent/locks/Lock;
    invoke-static/range {v26 .. v26}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$8(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Ljava/util/concurrent/locks/Lock;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v26, v0

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->focusMode:Lcom/spritefish/fastburstcamera/activities/FocusMode;
    invoke-static/range {v26 .. v26}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$29(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Lcom/spritefish/fastburstcamera/activities/FocusMode;

    move-result-object v26

    sget-object v27, Lcom/spritefish/fastburstcamera/activities/FocusMode;->ACTIVE:Lcom/spritefish/fastburstcamera/activities/FocusMode;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->focusPressTime:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x1f4

    add-long v26, v26, v28

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    cmp-long v26, v26, v28

    if-gez v26, :cond_1

    .line 1735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->activateFocus(Landroid/view/View;)V

    .line 1740
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->lastSnapshot:J

    move-wide/from16 v28, v0

    sub-long v20, v26, v28

    .line 1745
    .local v20, sinceLast:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 1746
    .local v17, now:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->fps_since:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x3e8

    sub-long v28, v17, v28

    cmp-long v26, v26, v28

    if-gez v26, :cond_2

    .line 1748
    const-string v26, "insta"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "fps = "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->fps_frames:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x3e8

    mul-long v28, v28, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->fps_since:J

    move-wide/from16 v30, v0

    sub-long v30, v17, v30

    div-long v28, v28, v30

    invoke-virtual/range {v27 .. v29}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v26, v0

    move-wide/from16 v0, v17

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->fps_since:J

    .line 1750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v26, v0

    const-wide/16 v27, 0x0

    move-wide/from16 v0, v27

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->fps_frames:J

    .line 1753
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->fps_frames:J

    move-wide/from16 v27, v0

    const-wide/16 v29, 0x1

    add-long v27, v27, v29

    move-wide/from16 v0, v27

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->fps_frames:J

    .line 1754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v26, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    move-wide/from16 v0, v27

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->lastFrame:J

    .line 1757
    const-wide/16 v8, 0x64

    .line 1760
    .local v8, delay:J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    const-string v27, "delayPref"

    const-string v28, "-1"

    invoke-interface/range {v26 .. v28}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 1766
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->isBlackWhiteVersion:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v26

    if-nez v26, :cond_3

    .line 1769
    const-wide/16 v26, -0x1

    cmp-long v26, v8, v26

    if-lez v26, :cond_3

    .line 1771
    cmp-long v26, v20, v8

    if-gez v26, :cond_3

    .line 1773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v26, v0

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->previewControl:Lcom/spritefish/camera/controls/PreviewControl;
    invoke-static/range {v26 .. v26}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Lcom/spritefish/camera/controls/PreviewControl;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/spritefish/camera/controls/PreviewControl;->returnUsedBuffer([B)V

    goto/16 :goto_0

    .line 1780
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    const-string v27, "blinkScreen"

    const/16 v28, 0x1

    invoke-interface/range {v26 .. v28}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 1781
    .local v6, blinkScreen:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    const-string v27, "clickshot"

    const/16 v28, 0x1

    invoke-interface/range {v26 .. v28}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 1783
    .local v7, clickShot:Z
    if-eqz v7, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->snapsInRow:Ljava/util/concurrent/atomic/AtomicLong;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v26

    const-wide/16 v28, 0x1

    cmp-long v26, v26, v28

    if-nez v26, :cond_14

    const-wide/16 v26, 0xc8

    cmp-long v26, v20, v26

    if-gez v26, :cond_14

    const/16 v24, 0x1

    .line 1785
    .local v24, skipFrame:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->recording:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v26

    sget-object v27, Lcom/spritefish/fastburstcamera/activities/RecordMode;->MOTION:Lcom/spritefish/fastburstcamera/activities/RecordMode;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_6

    .line 1787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->thisGreyMap:[B

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->width:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->height:I

    move/from16 v28, v0

    const/16 v29, 0x4

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-static {v0, v1, v2, v3, v4}, Lcom/spritefish/camera/Util;->computeGrayMap([B[BIII)V

    .line 1788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->thisGreyMap:[B

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->lastGreyMap:[B

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->width:I

    move/from16 v28, v0

    div-int/lit8 v28, v28, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->height:I

    move/from16 v29, v0

    div-int/lit8 v29, v29, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->motionSensitivityValue:I

    move/from16 v30, v0

    invoke-static/range {v26 .. v30}, Lcom/spritefish/camera/Util;->compareGreyMaps([B[BIII)I

    move-result v26

    move/from16 v0, v26

    int-to-long v10, v0

    .line 1789
    .local v10, diff:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->motionSensitivityValue:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, 0x5

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    cmp-long v26, v10, v26

    if-gez v26, :cond_15

    .line 1790
    const/16 v24, 0x1

    .line 1793
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->lastRecordingPressed:J

    move-wide/from16 v28, v0

    sub-long v22, v26, v28

    .line 1794
    .local v22, sinceLastPress:J
    const-wide/16 v26, 0x3e8

    cmp-long v26, v22, v26

    if-gez v26, :cond_4

    .line 1795
    const/16 v24, 0x1

    .line 1797
    :cond_4
    if-nez v24, :cond_5

    .line 1798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->updateCurrentBurst()V

    .line 1799
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->thisGreyMap:[B

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->lastGreyMap:[B

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->width:I

    move/from16 v30, v0

    div-int/lit8 v30, v30, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->height:I

    move/from16 v31, v0

    div-int/lit8 v31, v31, 0x4

    mul-int v30, v30, v31

    invoke-static/range {v26 .. v30}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getBAM()Lcom/spritefish/camera/memory/NewByteArrayManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/spritefish/camera/memory/NewByteArrayManager;->getMax()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getBAM()Lcom/spritefish/camera/memory/NewByteArrayManager;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/spritefish/camera/memory/NewByteArrayManager;->getCurrentSize()I

    move-result v28

    sub-int v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getBAM()Lcom/spritefish/camera/memory/NewByteArrayManager;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/spritefish/camera/memory/NewByteArrayManager;->getMax()I

    move-result v28

    invoke-virtual/range {v26 .. v28}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->updateProgress(II)V

    .line 1804
    .end local v10           #diff:J
    .end local v22           #sinceLastPress:J
    :cond_6
    const/4 v14, 0x0

    .line 1805
    .local v14, frameUsed:Z
    if-nez v24, :cond_12

    .line 1808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->recording:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v26

    sget-object v27, Lcom/spritefish/fastburstcamera/activities/RecordMode;->PRESHOT:Lcom/spritefish/fastburstcamera/activities/RecordMode;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_7

    .line 1810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getBAM()Lcom/spritefish/camera/memory/NewByteArrayManager;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/spritefish/camera/memory/NewByteArrayManager;->getNextPreshotBuffer()Lcom/spritefish/camera/memory/ByteArray;

    move-result-object v5

    .line 1811
    .local v5, arr:Lcom/spritefish/camera/memory/ByteArray;
    if-eqz v5, :cond_7

    .line 1813
    const/4 v14, 0x1

    .line 1814
    new-instance v26, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30$1;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v5, v2}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30$1;-><init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;Lcom/spritefish/camera/memory/ByteArray;[B)V

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->performAsync(Ljava/lang/Runnable;)V

    .line 1843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getBAM()Lcom/spritefish/camera/memory/NewByteArrayManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/spritefish/camera/memory/NewByteArrayManager;->getMax()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getBAM()Lcom/spritefish/camera/memory/NewByteArrayManager;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/spritefish/camera/memory/NewByteArrayManager;->getCurrentSize()I

    move-result v28

    sub-int v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getBAM()Lcom/spritefish/camera/memory/NewByteArrayManager;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/spritefish/camera/memory/NewByteArrayManager;->getMax()I

    move-result v28

    invoke-virtual/range {v26 .. v28}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->updateProgress(II)V

    .line 1844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->updatePreshotStatus()V

    .line 1849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v26, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    move-wide/from16 v0, v27

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->lastSnapshot:J

    .line 1854
    .end local v5           #arr:Lcom/spritefish/camera/memory/ByteArray;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->recording:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v26

    sget-object v27, Lcom/spritefish/fastburstcamera/activities/RecordMode;->NORMAL:Lcom/spritefish/fastburstcamera/activities/RecordMode;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->recording:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v26

    sget-object v27, Lcom/spritefish/fastburstcamera/activities/RecordMode;->MOTION:Lcom/spritefish/fastburstcamera/activities/RecordMode;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_11

    .line 1856
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->shotsInCurrentBurst:J

    move-wide/from16 v27, v0

    const-wide/16 v29, 0x1

    add-long v27, v27, v29

    move-wide/from16 v0, v27

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->shotsInCurrentBurst:J

    .line 1857
    const-string v26, "insta"

    const-string v27, "recording frame"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->shotsInCurrentBurst:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x1

    cmp-long v26, v26, v28

    if-nez v26, :cond_9

    .line 1863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v26, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    move-wide/from16 v0, v27

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->recordingStartTime:J

    .line 1865
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->faceDetectOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v26

    if-eqz v26, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->faceBuffer:[I

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->rotationManager:Lcom/spritefish/camera/RotationManager;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v28, v0

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->previewControl:Lcom/spritefish/camera/controls/PreviewControl;
    invoke-static/range {v28 .. v28}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Lcom/spritefish/camera/controls/PreviewControl;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/spritefish/camera/controls/PreviewControl;->getCameraId()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Lcom/spritefish/camera/RotationManager;->getRotation(I)Lcom/spritefish/camera/RotationManager$Rotation;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->width:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->height:I

    move/from16 v29, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-static {v0, v1, v2, v3, v4}, Lcom/spritefish/camera/Util;->getFacesFromYuv([I[BLcom/spritefish/camera/RotationManager$Rotation;II)I

    move-result v26

    if-lez v26, :cond_d

    .line 1868
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getBAM()Lcom/spritefish/camera/memory/NewByteArrayManager;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/spritefish/camera/memory/NewByteArrayManager;->getFreeBuffer()Lcom/spritefish/camera/memory/ByteArray;

    move-result-object v5

    .line 1869
    .restart local v5       #arr:Lcom/spritefish/camera/memory/ByteArray;
    if-eqz v5, :cond_18

    .line 1871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->snapsInRow:Ljava/util/concurrent/atomic/AtomicLong;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 1872
    if-eqz v6, :cond_b

    .line 1873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v26, v0

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->topControl:Lcom/spritefish/camera/controls/PreviewTopControl;
    invoke-static/range {v26 .. v26}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$7(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Lcom/spritefish/camera/controls/PreviewTopControl;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/spritefish/camera/controls/PreviewTopControl;->activateFlash()V

    .line 1875
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->soundOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v26

    if-eqz v26, :cond_c

    .line 1878
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v26, v0

    #calls: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->liteMenus()Z
    invoke-static/range {v26 .. v26}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$21(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Z

    move-result v26

    if-eqz v26, :cond_16

    .line 1879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->sm:Lcom/spritefish/fastburstcamera/core/SoundManager;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Lcom/spritefish/fastburstcamera/core/SoundManager;->playSoundAlways(I)V

    .line 1888
    :cond_c
    :goto_4
    const/4 v14, 0x1

    .line 1889
    new-instance v19, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v5, v2}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30$2;-><init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;Lcom/spritefish/camera/memory/ByteArray;[B)V

    .line 1904
    .local v19, r:Ljava/lang/Runnable;
    invoke-static {}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->getCameraSetup()Lcom/spritefish/fastburstcamera/core/CameraSetupApi;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lcom/spritefish/fastburstcamera/core/CameraSetupApi;->useDirectBuffers()Z

    move-result v26

    if-eqz v26, :cond_17

    .line 1905
    invoke-interface/range {v19 .. v19}, Ljava/lang/Runnable;->run()V

    .line 1911
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v26, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    move-wide/from16 v0, v27

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->lastSnapshot:J

    .line 1920
    .end local v5           #arr:Lcom/spritefish/camera/memory/ByteArray;
    .end local v19           #r:Ljava/lang/Runnable;
    :cond_d
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->shootmode:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    move-object/from16 v26, v0

    sget-object v27, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;->SHOT1:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->shotsInCurrentBurst:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x1

    cmp-long v26, v26, v28

    if-gez v26, :cond_19

    .line 1921
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->shootmode:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    move-object/from16 v26, v0

    sget-object v27, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;->SHOT3:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->shotsInCurrentBurst:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x3

    cmp-long v26, v26, v28

    if-gez v26, :cond_19

    .line 1922
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->shootmode:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    move-object/from16 v26, v0

    sget-object v27, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;->SHOT5:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->shotsInCurrentBurst:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x5

    cmp-long v26, v26, v28

    if-gez v26, :cond_19

    :cond_10
    const/16 v25, 0x0

    .line 1923
    .local v25, stop:Z
    :goto_7
    if-eqz v25, :cond_11

    .line 1924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v26, v0

    #calls: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->stopRecording()V
    invoke-static/range {v26 .. v26}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$25(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)V

    .line 1927
    .end local v25           #stop:Z
    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->lastPreview:J

    move-wide/from16 v28, v0

    sub-long v15, v26, v28

    .line 1929
    .local v15, msecs:J
    const-wide/high16 v26, 0x3ff0

    long-to-double v0, v15

    move-wide/from16 v28, v0

    const-wide v30, 0x408f400000000000L

    div-double v28, v28, v30

    div-double v12, v26, v28

    .line 1933
    .local v12, fps:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getBAM()Lcom/spritefish/camera/memory/NewByteArrayManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/spritefish/camera/memory/NewByteArrayManager;->getMax()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getBAM()Lcom/spritefish/camera/memory/NewByteArrayManager;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/spritefish/camera/memory/NewByteArrayManager;->getCurrentSize()I

    move-result v28

    sub-int v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getBAM()Lcom/spritefish/camera/memory/NewByteArrayManager;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/spritefish/camera/memory/NewByteArrayManager;->getMax()I

    move-result v28

    invoke-virtual/range {v26 .. v28}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->updateProgress(II)V

    .line 1935
    .end local v12           #fps:D
    .end local v15           #msecs:J
    :cond_12
    if-nez v14, :cond_13

    .line 1936
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v26, v0

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->previewControl:Lcom/spritefish/camera/controls/PreviewControl;
    invoke-static/range {v26 .. v26}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Lcom/spritefish/camera/controls/PreviewControl;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/spritefish/camera/controls/PreviewControl;->returnUsedBuffer([B)V

    .line 1937
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v26, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    move-wide/from16 v0, v27

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->lastPreview:J

    goto/16 :goto_0

    .line 1783
    .end local v14           #frameUsed:Z
    .end local v24           #skipFrame:Z
    :cond_14
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 1792
    .restart local v10       #diff:J
    .restart local v24       #skipFrame:Z
    :cond_15
    const/16 v24, 0x0

    goto/16 :goto_3

    .line 1881
    .end local v10           #diff:J
    .restart local v5       #arr:Lcom/spritefish/camera/memory/ByteArray;
    .restart local v14       #frameUsed:Z
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->sm:Lcom/spritefish/fastburstcamera/core/SoundManager;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Lcom/spritefish/fastburstcamera/core/SoundManager;->playSound(I)V

    goto/16 :goto_4

    .line 1907
    .restart local v19       #r:Ljava/lang/Runnable;
    :cond_17
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->performAsync(Ljava/lang/Runnable;)V

    goto/16 :goto_5

    .line 1915
    .end local v19           #r:Ljava/lang/Runnable;
    :cond_18
    const-string v26, "insta"

    const-string v27, "failed to get free buffer"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1922
    .end local v5           #arr:Lcom/spritefish/camera/memory/ByteArray;
    :cond_19
    const/16 v25, 0x1

    goto/16 :goto_7

    .line 1761
    .end local v6           #blinkScreen:Z
    .end local v7           #clickShot:Z
    .end local v14           #frameUsed:Z
    .end local v24           #skipFrame:Z
    :catch_0
    move-exception v26

    goto/16 :goto_1
.end method
