.class public Lcom/spritefish/fastburstcamera/activities/MultiExposureActivity;
.super Landroid/app/Activity;
.source "MultiExposureActivity.java"


# static fields
.field static CF:I


# instance fields
.field private burstId:J

.field private imageView:Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;

.field private tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/16 v0, 0x3c

    sput v0, Lcom/spritefish/fastburstcamera/activities/MultiExposureActivity;->CF:I

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 79
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/spritefish/fastburstcamera/activities/MultiExposureActivity;->burstId:J

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/activities/MultiExposureActivity;->imageView:Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;

    .line 23
    return-void
.end method

.method private static findCorrection(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Lcom/spritefish/fastburstcamera/activities/PictureCorrection;
    .locals 14
    .parameter "a"
    .parameter "b"

    .prologue
    const/16 v13, 0xa

    const/16 v2, 0x14

    .line 56
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/spritefish/fastburstcamera/activities/MultiExposureActivity;->getDiff(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIII)J

    move-result-wide v9

    .line 57
    .local v9, initial:J
    new-instance v6, Lcom/spritefish/fastburstcamera/activities/PictureCorrection;

    invoke-direct {v6}, Lcom/spritefish/fastburstcamera/activities/PictureCorrection;-><init>()V

    .line 58
    .local v6, best:Lcom/spritefish/fastburstcamera/activities/PictureCorrection;
    iput v2, v6, Lcom/spritefish/fastburstcamera/activities/PictureCorrection;->x:I

    .line 59
    iput v2, v6, Lcom/spritefish/fastburstcamera/activities/PictureCorrection;->y:I

    .line 60
    iput-wide v9, v6, Lcom/spritefish/fastburstcamera/activities/PictureCorrection;->diff:J

    .line 62
    const/16 v11, -0xa

    .local v11, x:I
    :goto_0
    if-lt v11, v13, :cond_0

    .line 75
    return-object v6

    .line 64
    :cond_0
    const/16 v12, -0xa

    .local v12, y:I
    :goto_1
    if-lt v12, v13, :cond_1

    .line 62
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 66
    :cond_1
    add-int/lit8 v4, v11, 0x14

    add-int/lit8 v5, v12, 0x14

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-static/range {v0 .. v5}, Lcom/spritefish/fastburstcamera/activities/MultiExposureActivity;->getDiff(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIII)J

    move-result-wide v7

    .line 67
    .local v7, diff:J
    iget-wide v0, v6, Lcom/spritefish/fastburstcamera/activities/PictureCorrection;->diff:J

    cmp-long v0, v7, v0

    if-gez v0, :cond_2

    .line 69
    iput-wide v7, v6, Lcom/spritefish/fastburstcamera/activities/PictureCorrection;->diff:J

    .line 70
    add-int/lit8 v0, v11, 0x14

    iput v0, v6, Lcom/spritefish/fastburstcamera/activities/PictureCorrection;->x:I

    .line 71
    add-int/lit8 v0, v12, 0x14

    iput v0, v6, Lcom/spritefish/fastburstcamera/activities/PictureCorrection;->y:I

    .line 64
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1
.end method

.method private static getDiff(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIII)J
    .locals 13
    .parameter "a"
    .parameter "b"
    .parameter "ax"
    .parameter "ay"
    .parameter "bx"
    .parameter "by"

    .prologue
    .line 29
    const/4 v8, 0x0

    .line 31
    .local v8, res:I
    const/4 v9, 0x0

    .local v9, x:I
    :goto_0
    sget v11, Lcom/spritefish/fastburstcamera/activities/MultiExposureActivity;->CF:I

    if-lt v9, v11, :cond_0

    .line 50
    int-to-long v11, v8

    return-wide v11

    .line 33
    :cond_0
    const/4 v10, 0x0

    .local v10, y:I
    :goto_1
    sget v11, Lcom/spritefish/fastburstcamera/activities/MultiExposureActivity;->CF:I

    if-lt v10, v11, :cond_1

    .line 31
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 36
    :cond_1
    add-int v11, v9, p2

    add-int v12, v10, p3

    invoke-virtual {p0, v11, v12}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    .line 37
    .local v0, aCol:I
    const/high16 v11, 0xff

    and-int/2addr v11, v0

    shr-int/lit8 v3, v11, 0x10

    .line 38
    .local v3, a_r:I
    const v11, 0xff00

    and-int/2addr v11, v0

    shr-int/lit8 v2, v11, 0x8

    .line 39
    .local v2, a_g:I
    and-int/lit16 v1, v0, 0xff

    .line 41
    .local v1, a_b:I
    add-int v11, v9, p4

    add-int v12, v10, p5

    invoke-virtual {p1, v11, v12}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    .line 42
    .local v4, bCol:I
    const/high16 v11, 0xff

    and-int/2addr v11, v4

    shr-int/lit8 v7, v11, 0x10

    .line 43
    .local v7, b_r:I
    const v11, 0xff00

    and-int/2addr v11, v4

    shr-int/lit8 v6, v11, 0x8

    .line 44
    .local v6, b_g:I
    and-int/lit16 v5, v4, 0xff

    .line 47
    .local v5, b_b:I
    sub-int v11, v3, v7

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    sub-int v12, v2, v6

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    add-int/2addr v11, v12

    sub-int v12, v1, v5

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    add-int/2addr v11, v12

    add-int/2addr v8, v11

    .line 33
    add-int/lit8 v10, v10, 0x1

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 45
    .parameter "savedInstanceState"

    .prologue
    .line 83
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/spritefish/fastburstcamera/activities/MultiExposureActivity;->getWindow()Landroid/view/Window;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v25

    .line 86
    .local v25, lp:Landroid/view/WindowManager$LayoutParams;
    const/high16 v41, 0x3f80

    move/from16 v0, v41

    move-object/from16 v1, v25

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/spritefish/fastburstcamera/activities/MultiExposureActivity;->getWindow()Landroid/view/Window;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 89
    invoke-static/range {p0 .. p0}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->getTracker(Landroid/content/Context;)Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/spritefish/fastburstcamera/activities/MultiExposureActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/MultiExposureActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-object/from16 v41, v0

    if-eqz v41, :cond_0

    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/MultiExposureActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-object/from16 v41, v0

    const-string v42, "MultiExposureViewStart"

    invoke-virtual/range {v41 .. v42}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 95
    :cond_0
    new-instance v6, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 97
    .local v6, dbHelper:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;
    const v41, 0x7f030013

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/spritefish/fastburstcamera/activities/MultiExposureActivity;->setContentView(I)V

    .line 98
    const v41, 0x7f0d005f

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/spritefish/fastburstcamera/activities/MultiExposureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/spritefish/fastburstcamera/activities/MultiExposureActivity;->imageView:Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/spritefish/fastburstcamera/activities/MultiExposureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v41

    const-string v42, "burstid"

    const-wide/16 v43, -0x1

    invoke-virtual/range {v41 .. v44}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v41

    move-wide/from16 v0, v41

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/spritefish/fastburstcamera/activities/MultiExposureActivity;->burstId:J

    .line 101
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/spritefish/fastburstcamera/activities/MultiExposureActivity;->burstId:J

    move-wide/from16 v41, v0

    move-wide/from16 v0, v41

    invoke-virtual {v6, v0, v1}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->getPicturesInBurst(J)Ljava/util/List;

    move-result-object v30

    .line 102
    .local v30, pictures:Ljava/util/List;,"Ljava/util/List<Lcom/spritefish/fastburstcamera/db/dao/Picture;>;"
    const/16 v27, 0x0

    .line 103
    .local v27, num:I
    const/16 v28, 0x0

    .line 104
    .local v28, phasePic:Landroid/graphics/Bitmap;
    const/4 v13, 0x0

    .line 105
    .local v13, finalPic:Landroid/graphics/Bitmap;
    const/16 v33, 0x0

    .line 107
    .local v33, refPic:Landroid/graphics/Bitmap;
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :cond_1
    :goto_0
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v42

    if-nez v42, :cond_2

    .line 144
    const/16 v27, 0x0

    .line 145
    const/4 v14, 0x1

    .line 146
    .local v14, first:Z
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :goto_1
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v42

    if-nez v42, :cond_3

    .line 210
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    .line 211
    .local v7, displaymetrics:Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Lcom/spritefish/fastburstcamera/activities/MultiExposureActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v41

    invoke-interface/range {v41 .. v41}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/MultiExposureActivity;->imageView:Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;

    move-object/from16 v41, v0

    iget v0, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v42, v0

    iget v0, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v43, v0

    move-object/from16 v0, v41

    move/from16 v1, v42

    move/from16 v2, v43

    invoke-virtual {v0, v13, v1, v2}, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->setImage(Landroid/graphics/Bitmap;II)V

    .line 215
    return-void

    .line 107
    .end local v7           #displaymetrics:Landroid/util/DisplayMetrics;
    .end local v14           #first:Z
    :cond_2
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/spritefish/fastburstcamera/db/dao/Picture;

    .line 108
    .local v29, picture:Lcom/spritefish/fastburstcamera/db/dao/Picture;
    add-int/lit8 v27, v27, 0x1

    .line 109
    const-string v42, "insta"

    new-instance v43, Ljava/lang/StringBuilder;

    const-string v44, "Multiexposure "

    invoke-direct/range {v43 .. v44}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v43

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " of "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual/range {v29 .. v29}, Lcom/spritefish/fastburstcamera/db/dao/Picture;->getPath()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Lcom/spritefish/camera/Util;->getRotatedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 112
    .local v19, frame:Landroid/graphics/Bitmap;
    if-nez v28, :cond_1

    .line 114
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v42

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v43

    sget-object v44, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v42 .. v44}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v28

    .line 115
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v42

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v43

    sget-object v44, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v42 .. v44}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 116
    invoke-virtual/range {v29 .. v29}, Lcom/spritefish/fastburstcamera/db/dao/Picture;->getPath()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Lcom/spritefish/camera/Util;->getRotatedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v33

    goto/16 :goto_0

    .line 146
    .end local v19           #frame:Landroid/graphics/Bitmap;
    .end local v29           #picture:Lcom/spritefish/fastburstcamera/db/dao/Picture;
    .restart local v14       #first:Z
    :cond_3
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/spritefish/fastburstcamera/db/dao/Picture;

    .line 147
    .restart local v29       #picture:Lcom/spritefish/fastburstcamera/db/dao/Picture;
    add-int/lit8 v27, v27, 0x1

    .line 148
    const-string v42, "insta"

    new-instance v43, Ljava/lang/StringBuilder;

    const-string v44, "Multiexposure phase2 "

    invoke-direct/range {v43 .. v44}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v43

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " of "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual/range {v29 .. v29}, Lcom/spritefish/fastburstcamera/db/dao/Picture;->getPath()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Lcom/spritefish/camera/Util;->getRotatedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 151
    .restart local v19       #frame:Landroid/graphics/Bitmap;
    move-object/from16 v0, v33

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/spritefish/fastburstcamera/activities/MultiExposureActivity;->findCorrection(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Lcom/spritefish/fastburstcamera/activities/PictureCorrection;

    move-result-object v5

    .line 152
    .local v5, corr:Lcom/spritefish/fastburstcamera/activities/PictureCorrection;
    const/16 v40, 0x0

    .local v40, y:I
    :goto_2
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v42

    move/from16 v0, v40

    move/from16 v1, v42

    if-lt v0, v1, :cond_4

    .line 206
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 154
    :cond_4
    const/16 v39, 0x0

    .local v39, x:I
    :goto_3
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v42

    move/from16 v0, v39

    move/from16 v1, v42

    if-lt v0, v1, :cond_5

    .line 152
    add-int/lit8 v40, v40, 0x1

    goto :goto_2

    .line 156
    :cond_5
    move-object/from16 v0, v33

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v32

    .line 157
    .local v32, refCol:I
    move/from16 v0, v39

    move/from16 v1, v40

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v37

    .line 159
    .local v37, resCol:I
    iget v0, v5, Lcom/spritefish/fastburstcamera/activities/PictureCorrection;->x:I

    move/from16 v42, v0

    add-int v21, v39, v42

    .line 160
    .local v21, frame_x:I
    iget v0, v5, Lcom/spritefish/fastburstcamera/activities/PictureCorrection;->y:I

    move/from16 v42, v0

    add-int v22, v40, v42

    .line 162
    .local v22, frame_y:I
    if-ltz v21, :cond_7

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v42

    move/from16 v0, v21

    move/from16 v1, v42

    if-ge v0, v1, :cond_7

    if-ltz v22, :cond_7

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v42

    move/from16 v0, v22

    move/from16 v1, v42

    if-ge v0, v1, :cond_7

    .line 165
    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v20

    .line 168
    .local v20, frameCol:I
    const/high16 v42, 0xff

    and-int v42, v42, v20

    shr-int/lit8 v18, v42, 0x10

    .line 169
    .local v18, fra_r:I
    const v42, 0xff00

    and-int v42, v42, v20

    shr-int/lit8 v17, v42, 0x8

    .line 170
    .local v17, fra_g:I
    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    .line 172
    .local v16, fra_b:I
    const/high16 v42, 0xff

    and-int v42, v42, v32

    shr-int/lit8 v36, v42, 0x10

    .line 173
    .local v36, ref_r:I
    const v42, 0xff00

    and-int v42, v42, v32

    shr-int/lit8 v35, v42, 0x8

    .line 174
    .local v35, ref_g:I
    move/from16 v0, v32

    and-int/lit16 v0, v0, 0xff

    move/from16 v34, v0

    .line 176
    .local v34, ref_b:I
    const/high16 v42, 0xff

    and-int v42, v42, v37

    shr-int/lit8 v12, v42, 0x10

    .line 177
    .local v12, fin_r:I
    const v42, 0xff00

    and-int v42, v42, v37

    shr-int/lit8 v11, v42, 0x8

    .line 178
    .local v11, fin_g:I
    move/from16 v0, v37

    and-int/lit16 v10, v0, 0xff

    .line 181
    .local v10, fin_b:I
    sub-int v42, v36, v18

    invoke-static/range {v42 .. v42}, Ljava/lang/Math;->abs(I)I

    move-result v31

    .line 182
    .local v31, rd:I
    sub-int v42, v35, v17

    invoke-static/range {v42 .. v42}, Ljava/lang/Math;->abs(I)I

    move-result v23

    .line 183
    .local v23, gd:I
    sub-int v42, v34, v16

    invoke-static/range {v42 .. v42}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 186
    .local v3, bd:I
    sub-int v42, v36, v12

    invoke-static/range {v42 .. v42}, Ljava/lang/Math;->abs(I)I

    move-result v38

    .line 187
    .local v38, rf:I
    sub-int v42, v35, v11

    invoke-static/range {v42 .. v42}, Ljava/lang/Math;->abs(I)I

    move-result v24

    .line 188
    .local v24, gf:I
    sub-int v42, v34, v10

    invoke-static/range {v42 .. v42}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 192
    .local v4, bf:I
    if-nez v14, :cond_6

    add-int v42, v31, v23

    add-int v42, v42, v3

    add-int v43, v38, v24

    add-int v43, v43, v4

    move/from16 v0, v42

    move/from16 v1, v43

    if-le v0, v1, :cond_7

    .line 194
    :cond_6
    mul-int/lit8 v42, v18, 0x1

    add-int v42, v42, v12

    div-int/lit8 v15, v42, 0x2

    .line 195
    .local v15, fr:I
    mul-int/lit8 v42, v17, 0x1

    add-int v42, v42, v11

    div-int/lit8 v9, v42, 0x2

    .line 196
    .local v9, fg:I
    mul-int/lit8 v42, v16, 0x1

    add-int v42, v42, v10

    div-int/lit8 v8, v42, 0x2

    .line 198
    .local v8, fb:I
    shl-int/lit8 v42, v15, 0x10

    shl-int/lit8 v43, v9, 0x8

    add-int v42, v42, v43

    add-int v26, v42, v8

    .line 201
    .local v26, newCol:I
    const/high16 v42, -0x100

    or-int v42, v42, v26

    move/from16 v0, v39

    move/from16 v1, v40

    move/from16 v2, v42

    invoke-virtual {v13, v0, v1, v2}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 154
    .end local v3           #bd:I
    .end local v4           #bf:I
    .end local v8           #fb:I
    .end local v9           #fg:I
    .end local v10           #fin_b:I
    .end local v11           #fin_g:I
    .end local v12           #fin_r:I
    .end local v15           #fr:I
    .end local v16           #fra_b:I
    .end local v17           #fra_g:I
    .end local v18           #fra_r:I
    .end local v20           #frameCol:I
    .end local v23           #gd:I
    .end local v24           #gf:I
    .end local v26           #newCol:I
    .end local v31           #rd:I
    .end local v34           #ref_b:I
    .end local v35           #ref_g:I
    .end local v36           #ref_r:I
    .end local v38           #rf:I
    :cond_7
    add-int/lit8 v39, v39, 0x1

    goto/16 :goto_3
.end method
