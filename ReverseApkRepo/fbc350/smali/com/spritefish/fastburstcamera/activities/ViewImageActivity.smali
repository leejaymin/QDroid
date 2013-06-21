.class public Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;
.super Landroid/app/Activity;
.source "ViewImageActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/spritefish/fastburstcamera/activities/NewPictureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$AnimRunnable;,
        Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$Direction;
    }
.end annotation


# static fields
.field static final DRAG:I = 0x1

.field private static final MAX_ZOOM:F = 5.0f

.field private static final MIN_ZOOM:F = 1.0f

.field static final NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Touch"

.field static final ZOOM:I = 0x2


# instance fields
.field private adView:Lcom/google/ads/AdView;

.field animHandler:Landroid/os/Handler;

.field animRunnable:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$AnimRunnable;

.field b:Landroid/graphics/Bitmap;

.field currentPicture:Lcom/spritefish/fastburstcamera/db/dao/Picture;

.field dbHelper:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

.field private direction:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$Direction;

.field imageView:Landroid/widget/ImageView;

.field lastGoodMatrix:Landroid/graphics/Matrix;

.field lastMoved:J

.field lastX:F

.field private mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mNextTask:Ljava/lang/Runnable;

.field matrix:Landroid/graphics/Matrix;

.field mid:Landroid/graphics/PointF;

.field mode:I

.field moveLock:Ljava/util/concurrent/locks/Lock;

.field oldDist:F

.field picId:J

.field savedMatrix:Landroid/graphics/Matrix;

.field start:Landroid/graphics/PointF;

.field toolLayout:Landroid/view/View;

.field toolLayout2:Landroid/view/View;

.field private tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->matrix:Landroid/graphics/Matrix;

    .line 62
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->savedMatrix:Landroid/graphics/Matrix;

    .line 63
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->lastGoodMatrix:Landroid/graphics/Matrix;

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->mode:I

    .line 73
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->start:Landroid/graphics/PointF;

    .line 74
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->mid:Landroid/graphics/PointF;

    .line 75
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->oldDist:F

    .line 81
    new-instance v0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$AnimRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$AnimRunnable;-><init>(Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$AnimRunnable;)V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->animRunnable:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$AnimRunnable;

    .line 88
    sget-object v0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$Direction;->NONE:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$Direction;

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->direction:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$Direction;

    .line 112
    new-instance v0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$1;

    invoke-direct {v0, p0}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$1;-><init>(Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;)V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->mNextTask:Ljava/lang/Runnable;

    .line 536
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->lastX:F

    .line 537
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->lastMoved:J

    .line 538
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->moveLock:Ljava/util/concurrent/locks/Lock;

    .line 53
    return-void
.end method

.method static synthetic access$0(Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;)Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$Direction;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->direction:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$Direction;

    return-object v0
.end method

.method static synthetic access$1(Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;Lcom/spritefish/fastburstcamera/db/dao/Picture;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 446
    invoke-direct {p0, p1}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->setPicture(Lcom/spritefish/fastburstcamera/db/dao/Picture;)V

    return-void
.end method

.method static synthetic access$2(Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3(Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->mNextTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$4(Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$Direction;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->direction:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$Direction;

    return-void
.end method

.method private dumpEvent(Landroid/view/MotionEvent;)V
    .locals 9
    .parameter "event"

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x5

    .line 699
    const/16 v5, 0xa

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "DOWN"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string v6, "UP"

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-string v6, "MOVE"

    aput-object v6, v3, v5

    const/4 v5, 0x3

    const-string v6, "CANCEL"

    aput-object v6, v3, v5

    const/4 v5, 0x4

    const-string v6, "OUTSIDE"

    aput-object v6, v3, v5

    .line 700
    const-string v5, "POINTER_DOWN"

    aput-object v5, v3, v7

    const-string v5, "POINTER_UP"

    aput-object v5, v3, v8

    const/4 v5, 0x7

    const-string v6, "7?"

    aput-object v6, v3, v5

    const/16 v5, 0x8

    const-string v6, "8?"

    aput-object v6, v3, v5

    const/16 v5, 0x9

    const-string v6, "9?"

    aput-object v6, v3, v5

    .line 701
    .local v3, names:[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 702
    .local v4, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 703
    .local v0, action:I
    and-int/lit16 v1, v0, 0xff

    .line 704
    .local v1, actionCode:I
    const-string v5, "event ACTION_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    if-eq v1, v7, :cond_0

    .line 706
    if-ne v1, v8, :cond_1

    .line 707
    :cond_0
    const-string v5, "(pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 708
    shr-int/lit8 v6, v0, 0x8

    .line 707
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 709
    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    :cond_1
    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    if-lt v2, v5, :cond_2

    .line 720
    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    const-string v5, "Touch"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    return-void

    .line 713
    :cond_2
    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 714
    const-string v5, "(pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 715
    const-string v5, ")="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 716
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 717
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 718
    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private midPoint(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V
    .locals 7
    .parameter "point"
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x4000

    .line 692
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float v0, v2, v3

    .line 693
    .local v0, x:F
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    add-float v1, v2, v3

    .line 694
    .local v1, y:F
    div-float v2, v0, v4

    div-float v3, v1, v4

    invoke-virtual {p1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 695
    return-void
.end method

.method private setPicture(Lcom/spritefish/fastburstcamera/db/dao/Picture;)V
    .locals 3
    .parameter "p"

    .prologue
    .line 447
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    if-eqz v1, :cond_0

    .line 448
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    const-string v2, "ViewImage"

    invoke-virtual {v1, v2}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 450
    :cond_0
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->currentPicture:Lcom/spritefish/fastburstcamera/db/dao/Picture;

    .line 451
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->updateBurstInfo()V

    .line 452
    invoke-virtual {p1}, Lcom/spritefish/fastburstcamera/db/dao/Picture;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spritefish/camera/Util;->getRotatedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 453
    .local v0, b2:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 454
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->b:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 455
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 456
    :cond_1
    iput-object v0, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->b:Landroid/graphics/Bitmap;

    .line 460
    return-void
.end method

.method private spacing(Landroid/view/MotionEvent;)F
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 686
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float v0, v2, v3

    .line 687
    .local v0, x:F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float v1, v2, v3

    .line 688
    .local v1, y:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    return v2
.end method


# virtual methods
.method public getNextPicture(JJ)Lcom/spritefish/fastburstcamera/db/dao/Picture;
    .locals 7
    .parameter "burstId"
    .parameter "pictureId"

    .prologue
    .line 485
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->dbHelper:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    iget-object v4, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->currentPicture:Lcom/spritefish/fastburstcamera/db/dao/Picture;

    invoke-virtual {v4}, Lcom/spritefish/fastburstcamera/db/dao/Picture;->getBurstId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->getPicturesInBurst(J)Ljava/util/List;

    move-result-object v1

    .line 486
    .local v1, l:Ljava/util/List;,"Ljava/util/List<Lcom/spritefish/fastburstcamera/db/dao/Picture;>;"
    const/4 v2, -0x1

    .line 487
    .local v2, resultIdx:I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x2

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 495
    :goto_1
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 496
    const/4 v3, 0x0

    .line 497
    :goto_2
    return-object v3

    .line 489
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/spritefish/fastburstcamera/db/dao/Picture;

    invoke-virtual {v3}, Lcom/spritefish/fastburstcamera/db/dao/Picture;->getId()J

    move-result-wide v3

    iget-object v5, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->currentPicture:Lcom/spritefish/fastburstcamera/db/dao/Picture;

    invoke-virtual {v5}, Lcom/spritefish/fastburstcamera/db/dao/Picture;->getId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 491
    add-int/lit8 v2, v0, 0x1

    .line 492
    goto :goto_1

    .line 487
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 497
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/spritefish/fastburstcamera/db/dao/Picture;

    goto :goto_2
.end method

.method public getPrevPicture(JJ)Lcom/spritefish/fastburstcamera/db/dao/Picture;
    .locals 7
    .parameter "burstId"
    .parameter "pictureId"

    .prologue
    .line 503
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->dbHelper:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    iget-object v4, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->currentPicture:Lcom/spritefish/fastburstcamera/db/dao/Picture;

    invoke-virtual {v4}, Lcom/spritefish/fastburstcamera/db/dao/Picture;->getBurstId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->getPicturesInBurst(J)Ljava/util/List;

    move-result-object v1

    .line 504
    .local v1, l:Ljava/util/List;,"Ljava/util/List<Lcom/spritefish/fastburstcamera/db/dao/Picture;>;"
    const/4 v2, -0x1

    .line 505
    .local v2, resultIdx:I
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 513
    :goto_1
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 514
    const/4 v3, 0x0

    .line 515
    :goto_2
    return-object v3

    .line 507
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/spritefish/fastburstcamera/db/dao/Picture;

    invoke-virtual {v3}, Lcom/spritefish/fastburstcamera/db/dao/Picture;->getId()J

    move-result-wide v3

    iget-object v5, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->currentPicture:Lcom/spritefish/fastburstcamera/db/dao/Picture;

    invoke-virtual {v5}, Lcom/spritefish/fastburstcamera/db/dao/Picture;->getId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 509
    add-int/lit8 v2, v0, -0x1

    .line 510
    goto :goto_1

    .line 505
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 515
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/spritefish/fastburstcamera/db/dao/Picture;

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 145
    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    iput-object v10, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->mHandler:Landroid/os/Handler;

    .line 147
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 148
    .local v5, lp:Landroid/view/WindowManager$LayoutParams;
    const/high16 v10, 0x3f80

    iput v10, v5, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 149
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 151
    const v10, 0x7f030015

    invoke-virtual {p0, v10}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->setContentView(I)V

    .line 153
    invoke-static {p0}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->getTracker(Landroid/content/Context;)Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v10

    iput-object v10, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    .line 154
    iget-object v10, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    if-eqz v10, :cond_0

    .line 155
    iget-object v10, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    const-string v11, "ViewImageStart"

    invoke-virtual {v10, v11}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 156
    :cond_0
    const v10, 0x7f0d005f

    invoke-virtual {p0, v10}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->imageView:Landroid/widget/ImageView;

    .line 158
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->getApplication()Landroid/app/Application;

    move-result-object v10

    check-cast v10, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    invoke-virtual {v10}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->isLiteVersion()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-static {}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->isTrialEnabled()Z

    move-result v10

    if-nez v10, :cond_1

    .line 170
    const-string v10, "153f79b0-a1ef-012f-8bbb-40405d9d80d6"

    invoke-static {v10}, Lcom/tapfortap/TapForTap;->setDefaultAppId(Ljava/lang/String;)V

    .line 172
    invoke-static {p0}, Lcom/tapfortap/TapForTap;->checkIn(Landroid/app/Activity;)V

    .line 175
    const v10, 0x7f0d0066

    invoke-virtual {p0, v10}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/tapfortap/AdView;

    .line 176
    .local v9, tapAd:Lcom/tapfortap/AdView;
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/tapfortap/AdView;->setVisibility(I)V

    .line 177
    invoke-virtual {v9}, Lcom/tapfortap/AdView;->loadAds()V

    .line 183
    .end local v9           #tapAd:Lcom/tapfortap/AdView;
    :cond_1
    iget-object v10, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v10, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 184
    const v10, 0x7f0d0030

    invoke-virtual {p0, v10}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->toolLayout:Landroid/view/View;

    .line 185
    const v10, 0x7f0d0060

    invoke-virtual {p0, v10}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->toolLayout2:Landroid/view/View;

    .line 186
    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    iput-object v10, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->animHandler:Landroid/os/Handler;

    .line 188
    const v10, 0x7f0d0067

    invoke-virtual {p0, v10}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    .line 189
    .local v4, leftButton:Landroid/widget/ImageButton;
    const v10, 0x7f0d0069

    invoke-virtual {p0, v10}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    .line 191
    .local v7, rightButton:Landroid/widget/ImageButton;
    const v10, 0x7f0d0061

    invoke-virtual {p0, v10}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    .line 193
    .local v8, shareButton:Landroid/widget/ImageButton;
    new-instance v10, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$2;

    invoke-direct {v10, p0}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$2;-><init>(Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;)V

    invoke-virtual {v4, v10}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 216
    new-instance v10, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$3;

    invoke-direct {v10, p0}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$3;-><init>(Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;)V

    invoke-virtual {v7, v10}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 269
    new-instance v10, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$4;

    invoke-direct {v10, p0}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$4;-><init>(Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;)V

    invoke-virtual {v8, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    new-instance v10, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5;

    invoke-direct {v10, p0}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5;-><init>(Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;)V

    invoke-virtual {v8, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    .line 366
    .local v0, app:Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;
    invoke-virtual {v0, p0}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->registerNewPictureListener(Lcom/spritefish/fastburstcamera/activities/NewPictureListener;)V

    .line 368
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    .line 369
    .local v6, mHandler:Landroid/os/Handler;
    new-instance v10, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$6;

    invoke-direct {v10, p0}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$6;-><init>(Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;)V

    iput-object v10, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 383
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 384
    .local v3, intentToReceiveFilter:Landroid/content/IntentFilter;
    const-string v10, "com.spritefish.fastburstcamera.newpicture"

    invoke-virtual {v3, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 385
    iget-object v10, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v3, v11, v6}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 387
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "pictureid"

    const-wide/16 v12, 0x1

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->picId:J

    .line 388
    if-eqz p1, :cond_2

    .line 391
    const-string v10, "changedToPictureId"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 392
    .local v1, fromSavedInstance:J
    const-wide/16 v10, 0x0

    cmp-long v10, v1, v10

    if-lez v10, :cond_2

    .line 393
    iput-wide v1, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->picId:J

    .line 396
    .end local v1           #fromSavedInstance:J
    :cond_2
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 727
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 728
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0c0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 729
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 522
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 523
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->b:Landroid/graphics/Bitmap;

    .line 526
    :try_start_0
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    .line 527
    .local v0, app:Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;
    invoke-virtual {v0, p0}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->unregisterNewPictureListener(Lcom/spritefish/fastburstcamera/activities/NewPictureListener;)V

    .line 528
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    .end local v0           #app:Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;
    :goto_0
    return-void

    .line 530
    :catch_0
    move-exception v1

    .line 532
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "insta"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onNewPicture(JJ)V
    .locals 2
    .parameter "burstid"
    .parameter "pictureid"

    .prologue
    .line 782
    const-string v0, "insta"

    const-string v1, "got new picture"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->currentPicture:Lcom/spritefish/fastburstcamera/db/dao/Picture;

    invoke-virtual {v0}, Lcom/spritefish/fastburstcamera/db/dao/Picture;->getBurstId()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 786
    new-instance v0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$9;

    invoke-direct {v0, p0}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$9;-><init>(Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;)V

    invoke-virtual {p0, v0}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 794
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    .line 735
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 777
    :goto_0
    :pswitch_0
    const/4 v2, 0x1

    return v2

    .line 737
    :pswitch_1
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->currentPicture:Lcom/spritefish/fastburstcamera/db/dao/Picture;

    iget-object v3, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-static {p0, v2, v3}, Lcom/spritefish/fastburstcamera/activities/helper/ShareHelper;->launchOpenSinglePicture(Landroid/content/Context;Lcom/spritefish/fastburstcamera/db/dao/Picture;Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)V

    goto :goto_0

    .line 741
    :pswitch_2
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->currentPicture:Lcom/spritefish/fastburstcamera/db/dao/Picture;

    invoke-static {p0, v2}, Lcom/spritefish/fastburstcamera/activities/helper/ShareHelper;->launchShareSinglePicture(Landroid/content/Context;Lcom/spritefish/fastburstcamera/db/dao/Picture;)V

    goto :goto_0

    .line 746
    :pswitch_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 747
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const-string v2, "Are you sure you want to delete this photo?"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 748
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 749
    const-string v3, "Yes"

    new-instance v4, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$7;

    invoke-direct {v4, p0}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$7;-><init>(Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 768
    const-string v3, "No"

    new-instance v4, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$8;

    invoke-direct {v4, p0}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$8;-><init>(Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 773
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 774
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 735
    :pswitch_data_0
    .packed-switch 0x7f0d006a
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 401
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 402
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    .line 407
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 409
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 410
    .local v2, state:Ljava/lang/String;
    const-string v3, "mounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 413
    const v3, 0x7f070079

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 414
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->finish()V

    .line 444
    :goto_0
    return-void

    .line 419
    :cond_0
    new-instance v3, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    invoke-direct {v3, p0}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->dbHelper:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    .line 421
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->currentPicture:Lcom/spritefish/fastburstcamera/db/dao/Picture;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->dbHelper:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    iget-wide v4, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->picId:J

    invoke-virtual {v3, v4, v5}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->getPicture(J)Lcom/spritefish/fastburstcamera/db/dao/Picture;

    move-result-object v1

    .line 423
    .local v1, p:Lcom/spritefish/fastburstcamera/db/dao/Picture;
    :goto_1
    new-instance v0, Lcom/spritefish/fastburstcamera/activities/helper/CleanupHelper;

    invoke-direct {v0, p0}, Lcom/spritefish/fastburstcamera/activities/helper/CleanupHelper;-><init>(Landroid/app/Activity;)V

    .line 425
    .local v0, cup:Lcom/spritefish/fastburstcamera/activities/helper/CleanupHelper;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/spritefish/fastburstcamera/db/dao/Picture;->getBurstId()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/spritefish/fastburstcamera/activities/helper/CleanupHelper;->cleanupBurst(J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 426
    const/4 v1, 0x0

    .line 429
    :cond_1
    if-nez v1, :cond_3

    .line 431
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->finish()V

    goto :goto_0

    .line 421
    .end local v0           #cup:Lcom/spritefish/fastburstcamera/activities/helper/CleanupHelper;
    .end local v1           #p:Lcom/spritefish/fastburstcamera/db/dao/Picture;
    :cond_2
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->currentPicture:Lcom/spritefish/fastburstcamera/db/dao/Picture;

    goto :goto_1

    .line 435
    .restart local v0       #cup:Lcom/spritefish/fastburstcamera/activities/helper/CleanupHelper;
    .restart local v1       #p:Lcom/spritefish/fastburstcamera/db/dao/Picture;
    :cond_3
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->currentPicture:Lcom/spritefish/fastburstcamera/db/dao/Picture;

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->dbHelper:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    iget-wide v4, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->picId:J

    invoke-virtual {v3, v4, v5}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->getPicture(J)Lcom/spritefish/fastburstcamera/db/dao/Picture;

    move-result-object v1

    .line 436
    :goto_2
    if-nez v1, :cond_5

    .line 439
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->finish()V

    goto :goto_0

    .line 435
    :cond_4
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->currentPicture:Lcom/spritefish/fastburstcamera/db/dao/Picture;

    goto :goto_2

    .line 443
    :cond_5
    invoke-direct {p0, v1}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->setPicture(Lcom/spritefish/fastburstcamera/db/dao/Picture;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 799
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 800
    const-string v0, "changedToPictureId"

    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->currentPicture:Lcom/spritefish/fastburstcamera/db/dao/Picture;

    invoke-virtual {v1}, Lcom/spritefish/fastburstcamera/db/dao/Picture;->getId()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 801
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v8, 0x0

    const/high16 v12, -0x4080

    .line 544
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    packed-switch v6, :pswitch_data_0

    .line 602
    :cond_0
    :goto_0
    const/4 v6, 0x1

    return v6

    .line 547
    :pswitch_0
    iput v12, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->lastX:F

    .line 548
    iget-object v6, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->animHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->animRunnable:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$AnimRunnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 549
    iget-object v6, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->toolLayout:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->clearAnimation()V

    .line 550
    iget-object v6, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->toolLayout:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 551
    iget-object v6, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->toolLayout2:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->clearAnimation()V

    .line 552
    iget-object v6, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->toolLayout2:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 555
    :pswitch_1
    const-string v6, "insta"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "lastmoved = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->lastMoved:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " sys : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0xc8

    sub-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-wide v6, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->lastMoved:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x64

    sub-long/2addr v8, v10

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 558
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 559
    .local v5, x:F
    iget v6, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->lastX:F

    cmpl-float v6, v6, v12

    if-nez v6, :cond_5

    const/4 v0, 0x0

    .line 560
    .local v0, moved:F
    :goto_1
    const/high16 v6, 0x40a0

    cmpl-float v6, v0, v6

    if-lez v6, :cond_2

    .line 562
    const-string v6, "insta"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "moved "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->lastMoved:J

    .line 564
    iget-object v6, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->currentPicture:Lcom/spritefish/fastburstcamera/db/dao/Picture;

    invoke-virtual {v6}, Lcom/spritefish/fastburstcamera/db/dao/Picture;->getBurstId()J

    move-result-wide v6

    iget-object v8, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->currentPicture:Lcom/spritefish/fastburstcamera/db/dao/Picture;

    invoke-virtual {v8}, Lcom/spritefish/fastburstcamera/db/dao/Picture;->getId()J

    move-result-wide v8

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->getNextPicture(JJ)Lcom/spritefish/fastburstcamera/db/dao/Picture;

    move-result-object v1

    .line 565
    .local v1, next:Lcom/spritefish/fastburstcamera/db/dao/Picture;
    if-eqz v1, :cond_1

    const/high16 v6, 0x4396

    cmpl-float v6, v0, v6

    if-lez v6, :cond_1

    .line 567
    invoke-virtual {v1}, Lcom/spritefish/fastburstcamera/db/dao/Picture;->getBurstId()J

    move-result-wide v6

    invoke-virtual {v1}, Lcom/spritefish/fastburstcamera/db/dao/Picture;->getId()J

    move-result-wide v8

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->getNextPicture(JJ)Lcom/spritefish/fastburstcamera/db/dao/Picture;

    move-result-object v2

    .line 568
    .local v2, next1:Lcom/spritefish/fastburstcamera/db/dao/Picture;
    if-eqz v2, :cond_1

    .line 569
    move-object v1, v2

    .line 571
    .end local v2           #next1:Lcom/spritefish/fastburstcamera/db/dao/Picture;
    :cond_1
    if-eqz v1, :cond_2

    .line 573
    invoke-direct {p0, v1}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->setPicture(Lcom/spritefish/fastburstcamera/db/dao/Picture;)V

    .line 576
    .end local v1           #next:Lcom/spritefish/fastburstcamera/db/dao/Picture;
    :cond_2
    const/high16 v6, -0x3f60

    cmpg-float v6, v0, v6

    if-gez v6, :cond_4

    .line 578
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->lastMoved:J

    .line 579
    const-string v6, "insta"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "moved "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object v6, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->currentPicture:Lcom/spritefish/fastburstcamera/db/dao/Picture;

    invoke-virtual {v6}, Lcom/spritefish/fastburstcamera/db/dao/Picture;->getBurstId()J

    move-result-wide v6

    iget-object v8, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->currentPicture:Lcom/spritefish/fastburstcamera/db/dao/Picture;

    invoke-virtual {v8}, Lcom/spritefish/fastburstcamera/db/dao/Picture;->getId()J

    move-result-wide v8

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->getPrevPicture(JJ)Lcom/spritefish/fastburstcamera/db/dao/Picture;

    move-result-object v3

    .line 583
    .local v3, prev:Lcom/spritefish/fastburstcamera/db/dao/Picture;
    if-eqz v3, :cond_3

    const/high16 v6, -0x3c6a

    cmpg-float v6, v0, v6

    if-gez v6, :cond_3

    .line 585
    invoke-virtual {v3}, Lcom/spritefish/fastburstcamera/db/dao/Picture;->getBurstId()J

    move-result-wide v6

    invoke-virtual {v3}, Lcom/spritefish/fastburstcamera/db/dao/Picture;->getId()J

    move-result-wide v8

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->getPrevPicture(JJ)Lcom/spritefish/fastburstcamera/db/dao/Picture;

    move-result-object v4

    .line 586
    .local v4, prev1:Lcom/spritefish/fastburstcamera/db/dao/Picture;
    if-eqz v4, :cond_3

    .line 587
    move-object v3, v4

    .line 589
    .end local v4           #prev1:Lcom/spritefish/fastburstcamera/db/dao/Picture;
    :cond_3
    if-eqz v3, :cond_4

    .line 591
    invoke-direct {p0, v3}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->setPicture(Lcom/spritefish/fastburstcamera/db/dao/Picture;)V

    .line 594
    .end local v3           #prev:Lcom/spritefish/fastburstcamera/db/dao/Picture;
    :cond_4
    iput v5, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->lastX:F

    goto/16 :goto_0

    .line 559
    .end local v0           #moved:F
    :cond_5
    iget v6, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->lastX:F

    sub-float v0, v6, v5

    goto/16 :goto_1

    .line 598
    .end local v5           #x:F
    :pswitch_2
    iget-object v6, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->animHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->animRunnable:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$AnimRunnable;

    const-wide/16 v8, 0xbb8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 599
    iput v12, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->lastX:F

    goto/16 :goto_0

    .line 544
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public updateBurstInfo()V
    .locals 10

    .prologue
    .line 466
    const v5, 0x7f0d0068

    invoke-virtual {p0, v5}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 467
    .local v4, tv:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->dbHelper:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    iget-object v6, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->currentPicture:Lcom/spritefish/fastburstcamera/db/dao/Picture;

    invoke-virtual {v6}, Lcom/spritefish/fastburstcamera/db/dao/Picture;->getBurstId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->getPicturesInBurst(J)Ljava/util/List;

    move-result-object v2

    .line 468
    .local v2, l:Ljava/util/List;,"Ljava/util/List<Lcom/spritefish/fastburstcamera/db/dao/Picture;>;"
    const/4 v1, 0x1

    .line 469
    .local v1, idx:I
    const/4 v0, -0x1

    .line 470
    .local v0, found:I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 479
    :goto_1
    const v5, 0x7f070098

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 480
    return-void

    .line 470
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/spritefish/fastburstcamera/db/dao/Picture;

    .line 471
    .local v3, picture:Lcom/spritefish/fastburstcamera/db/dao/Picture;
    invoke-virtual {v3}, Lcom/spritefish/fastburstcamera/db/dao/Picture;->getId()J

    move-result-wide v6

    iget-object v8, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->currentPicture:Lcom/spritefish/fastburstcamera/db/dao/Picture;

    invoke-virtual {v8}, Lcom/spritefish/fastburstcamera/db/dao/Picture;->getId()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 473
    move v0, v1

    .line 474
    goto :goto_1

    .line 476
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
