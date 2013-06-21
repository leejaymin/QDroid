.class Lcom/jjcgames/android/airhockey/Game;
.super Ljava/lang/Object;
.source "Game.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jjcgames/android/airhockey/Game$Texture;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final LARGE_BITMAPS_SCREEN_HEIGHT:I = 0x780

.field static final PLAYERS_DIR:Ljava/lang/String; = "players"

.field static final PLAYER_FILE_CHARSET:Ljava/nio/charset/Charset; = null

.field static final PREFS:Ljava/lang/String; = "prefs"

.field static final STATE_FILE:Ljava/lang/String; = "state"

.field static final STATE_FILE_CHARSET:Ljava/nio/charset/Charset; = null

.field static final TAG:Ljava/lang/String; = "Air Hockey"

.field private static final backBufferContentsSameAsPrevious:Z = false

.field private static broadphaseA:Landroid/graphics/RectF; = null

.field private static broadphaseB:Landroid/graphics/RectF; = null

.field private static final centerlineFoulPoint:F = -0.13476855f

.field private static final centerlineThickness:F = 0.016575757f

.field private static final defenseLineY:F = 0.7852315f

.field private static final drawTextureSupported:Z = true

.field private static final eglSemaphore:Ljava/util/concurrent/Semaphore; = null

.field private static final fingerMalletOffsetMM:F = 7.2f

.field private static final gameEndBitmapSizeX:F = 0.8f

.field private static final gameEndBitmapSizeY:F = 0.25970453f

.field private static final gameWinningGoals:I = 0x7

.field private static final goalDepth:F = 0.1632537f

.field private static final goalWidth:F = 0.8663691f

.field static final guestCPULevel:I = 0xc8

.field private static final ignoreJumpTouches:I = 0x7

#the value of this static final field might be set in the static constructor
.field private static final initialCPUMalletPositionY:F = 0.0f

.field private static final initialPuckPosition:Landroid/graphics/PointF; = null

.field private static final malletMass:F = 0.078f

.field private static final malletRadius:F = 0.13476855f

.field static final maxCPULevel:I = 0x3e8

.field static final maxPlayerLevel:I = 0x3e8

.field static final minPlayerLevel:I = 0x1

.field private static final nonPowerOfTwoTexturesSupported:Z = false

.field private static final playfieldAspect:F = 1.3707684f

.field private static final playfieldLength:F = 2.0f

.field private static final playfieldWidth:F = 1.4590356f

.field private static final pointStartDelay:F = 1.0f

.field private static final puckBottom:F = -0.9346985f

.field private static final puckGoalCOR:F = 0.85f

.field private static final puckGoalLeft:F = -0.3678831f

.field private static final puckGoalRight:F = 0.3678831f

.field private static final puckLeft:F = -0.66421634f

.field private static final puckMalletCOR:F = 0.85f

.field private static final puckMass:F = 0.032f

.field private static final puckRadius:F = 0.06530148f

.field private static final puckRailCOR:F = 0.85f

.field private static final puckRight:F = 0.66421634f

.field private static final puckTop:F = 0.9346985f

.field private static final random:Ljava/util/Random; = null

.field private static final scoreBitmapPositionX:F = 0.125f

.field private static final scoreBitmapPositionY:F = 0.025f

.field private static final scoreBitmapSizeX:F = 0.1f

.field private static final scoreBitmapSizeY:F = 0.04f

.field private static final scratchInt4:[I = null

.field private static final screenPlayfieldProportion:F = 0.86568177f

.field static final startingLevel:I = 0xc8

.field private static final touchJumpThresholdFraction:F = 0.20833333f

.field static final twoPlayerSuggestedPuckSpeed:F = 2.0f


# instance fields
.field private gameThread:Ljava/lang/Thread;

.field private ignoreJumpTouchesCount:I

.field private volatile movingOn:Z

.field private volatile paused:Z

.field private volatile threadFinishing:Z

.field private touch:Landroid/graphics/PointF;

.field private touchJumpThresholdPixelsSquare:F

.field private touched:Z

.field private twoPlayer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 51
    const-class v0, Lcom/jjcgames/android/airhockey/Game;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    :goto_0
    sput-boolean v0, Lcom/jjcgames/android/airhockey/Game;->$assertionsDisabled:Z

    .line 55
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/jjcgames/android/airhockey/Game;->STATE_FILE_CHARSET:Ljava/nio/charset/Charset;

    .line 58
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/jjcgames/android/airhockey/Game;->PLAYER_FILE_CHARSET:Ljava/nio/charset/Charset;

    .line 126
    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    const/high16 v2, -0x4100

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    sput-object v0, Lcom/jjcgames/android/airhockey/Game;->initialPuckPosition:Landroid/graphics/PointF;

    .line 128
    sget-object v0, Lcom/jjcgames/android/airhockey/Game;->initialPuckPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    neg-float v0, v0

    const v1, 0x3d85bcc8

    add-float/2addr v0, v1

    const v1, 0x3e0a00c4

    add-float/2addr v0, v1

    const v1, 0x3d4ccccd

    add-float/2addr v0, v1

    .line 127
    sput v0, Lcom/jjcgames/android/airhockey/Game;->initialCPUMalletPositionY:F

    .line 152
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Lcom/jjcgames/android/airhockey/Game;->eglSemaphore:Ljava/util/concurrent/Semaphore;

    .line 409
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/jjcgames/android/airhockey/Game;->broadphaseA:Landroid/graphics/RectF;

    .line 410
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/jjcgames/android/airhockey/Game;->broadphaseB:Landroid/graphics/RectF;

    .line 886
    const/4 v0, 0x4

    new-array v0, v0, [I

    sput-object v0, Lcom/jjcgames/android/airhockey/Game;->scratchInt4:[I

    .line 977
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/jjcgames/android/airhockey/Game;->random:Ljava/util/Random;

    return-void

    .line 51
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-boolean v1, p0, Lcom/jjcgames/android/airhockey/Game;->threadFinishing:Z

    .line 155
    iput-boolean v1, p0, Lcom/jjcgames/android/airhockey/Game;->paused:Z

    .line 158
    iput-boolean v1, p0, Lcom/jjcgames/android/airhockey/Game;->movingOn:Z

    .line 163
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/jjcgames/android/airhockey/Game;->touch:Landroid/graphics/PointF;

    .line 180
    const v0, 0x461c4000

    iput v0, p0, Lcom/jjcgames/android/airhockey/Game;->touchJumpThresholdPixelsSquare:F

    .line 182
    iput v1, p0, Lcom/jjcgames/android/airhockey/Game;->ignoreJumpTouchesCount:I

    .line 51
    return-void
.end method

.method static synthetic access$0(I)I
    .locals 1
    .parameter

    .prologue
    .line 749
    invoke-static {p0}, Lcom/jjcgames/android/airhockey/Game;->nextPowerOfTwo(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/jjcgames/android/airhockey/Game;Landroid/content/Context;Lcom/jjcgames/android/airhockey/GameActivity$Finisher;Landroid/view/SurfaceHolder;IIFFLandroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1004
    invoke-direct/range {p0 .. p8}, Lcom/jjcgames/android/airhockey/Game;->runGame(Landroid/content/Context;Lcom/jjcgames/android/airhockey/GameActivity$Finisher;Landroid/view/SurfaceHolder;IIFFLandroid/content/Intent;)V

    return-void
.end method

.method private static addMargin(Landroid/graphics/RectF;F)V
    .locals 1
    .parameter "r"
    .parameter "margin"

    .prologue
    .line 402
    iget v0, p0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 403
    iget v0, p0, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 404
    iget v0, p0, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 405
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 406
    return-void
.end method

.method private static clampToPlayfieldBorder(Landroid/graphics/PointF;F)Z
    .locals 7
    .parameter "point"
    .parameter "margin"

    .prologue
    .line 356
    const/4 v1, 0x0

    .line 357
    .local v1, clamped:Z
    const/high16 v6, 0x3f80

    sub-float v5, v6, p1

    .line 358
    .local v5, topEdge:F
    iget v6, p0, Landroid/graphics/PointF;->y:F

    cmpl-float v6, v6, v5

    if-lez v6, :cond_2

    .line 359
    iput v5, p0, Landroid/graphics/PointF;->y:F

    .line 360
    const/4 v1, 0x1

    .line 368
    :cond_0
    :goto_0
    const v3, 0x3f3ac1ae

    .line 369
    .local v3, playfieldRight:F
    const v6, 0x3f3ac1ae

    sub-float v4, v6, p1

    .line 370
    .local v4, rightEdge:F
    iget v6, p0, Landroid/graphics/PointF;->x:F

    cmpl-float v6, v6, v4

    if-lez v6, :cond_3

    .line 371
    iput v4, p0, Landroid/graphics/PointF;->x:F

    .line 372
    const/4 v1, 0x1

    .line 380
    :cond_1
    :goto_1
    return v1

    .line 362
    .end local v3           #playfieldRight:F
    .end local v4           #rightEdge:F
    :cond_2
    const/high16 v6, -0x4080

    add-float v0, v6, p1

    .line 363
    .local v0, bottomEdge:F
    iget v6, p0, Landroid/graphics/PointF;->y:F

    cmpg-float v6, v6, v0

    if-gez v6, :cond_0

    .line 364
    iput v0, p0, Landroid/graphics/PointF;->y:F

    .line 365
    const/4 v1, 0x1

    goto :goto_0

    .line 374
    .end local v0           #bottomEdge:F
    .restart local v3       #playfieldRight:F
    .restart local v4       #rightEdge:F
    :cond_3
    const v6, -0x40c53e52

    add-float v2, v6, p1

    .line 375
    .local v2, leftEdge:F
    iget v6, p0, Landroid/graphics/PointF;->x:F

    cmpg-float v6, v6, v2

    if-gez v6, :cond_1

    .line 376
    iput v2, p0, Landroid/graphics/PointF;->x:F

    .line 377
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private static collide(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;FFFF)V
    .locals 12
    .parameter "rA"
    .parameter "rB"
    .parameter "vA"
    .parameter "vB"
    .parameter "massA"
    .parameter "massB"
    .parameter "cor"
    .parameter "time"

    .prologue
    .line 491
    iget v6, p2, Landroid/graphics/PointF;->x:F

    .line 492
    .local v6, vAx:F
    iget v7, p2, Landroid/graphics/PointF;->y:F

    .line 493
    .local v7, vAy:F
    iget v8, p3, Landroid/graphics/PointF;->x:F

    .line 494
    .local v8, vBx:F
    iget v9, p3, Landroid/graphics/PointF;->y:F

    .line 495
    .local v9, vBy:F
    iget v2, p0, Landroid/graphics/PointF;->x:F

    mul-float v3, v6, p7

    add-float/2addr v2, v3

    .line 496
    .local v2, rAx:F
    iget p0, p0, Landroid/graphics/PointF;->y:F

    .end local p0
    mul-float v3, v7, p7

    add-float/2addr v3, p0

    .line 497
    .local v3, rAy:F
    iget p0, p1, Landroid/graphics/PointF;->x:F

    mul-float v4, v8, p7

    add-float/2addr v4, p0

    .line 498
    .local v4, rBx:F
    iget p0, p1, Landroid/graphics/PointF;->y:F

    mul-float p1, v9, p7

    add-float p7, p0, p1

    .line 503
    .local p7, rBy:F
    sub-float p0, p7, v3

    float-to-double p0, p0

    .line 504
    sub-float v5, v4, v2

    float-to-double v10, v5

    .line 502
    invoke-static {p0, p1, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    .end local p1
    move-result-wide p0

    double-to-float p0, p0

    .line 507
    .local p0, angleA:F
    mul-float p1, v6, v6

    mul-float v5, v7, v7

    add-float/2addr p1, v5

    float-to-double v10, p1

    .line 506
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v5, v10

    .line 509
    .local v5, vAMag:F
    float-to-double v10, v7

    float-to-double v6, v6

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    .end local v6           #vAx:F
    move-result-wide v6

    double-to-float p1, v6

    .line 511
    .local p1, vAAngle:F
    sub-float p1, p0, p1

    .line 513
    .local p1, diffAngleA:F
    float-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v6, v5

    .line 515
    .local v6, vAMagAlongAngleA:F
    const/4 v7, 0x0

    .line 517
    .local v7, vAMagNormalToAngleA:F
    float-to-double v10, p1

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float p1, v10

    mul-float/2addr v5, p1

    .line 522
    .end local v7           #vAMagNormalToAngleA:F
    .local v5, vAMagNormalToAngleA:F
    sub-float p1, v3, p7

    float-to-double v10, p1

    .line 523
    sub-float p1, v2, v4

    float-to-double v2, p1

    .line 521
    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    .end local v2           #rAx:F
    .end local p1           #diffAngleA:F
    move-result-wide v2

    double-to-float p1, v2

    .line 526
    .local p1, angleB:F
    mul-float p7, v8, v8

    mul-float v2, v9, v9

    add-float p7, p7, v2

    move/from16 v0, p7

    float-to-double v0, v0

    move-wide v2, v0

    .line 525
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .end local p7           #rBy:F
    move-result-wide v2

    double-to-float v2, v2

    .line 528
    .local v2, vBMag:F
    float-to-double v3, v9

    float-to-double v7, v8

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    .end local v3           #rAy:F
    move-result-wide v3

    move-wide v0, v3

    double-to-float v0, v0

    move/from16 p7, v0

    .line 530
    .local p7, vBAngle:F
    sub-float p7, p1, p7

    .line 532
    .local p7, diffAngleB:F
    move/from16 v0, p7

    float-to-double v0, v0

    move-wide v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v4, v3, v2

    .line 534
    .local v4, vBMagAlongAngleB:F
    move/from16 v0, p7

    float-to-double v0, v0

    move-wide v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    move-wide v0, v7

    double-to-float v0, v0

    move/from16 p7, v0

    mul-float v7, p7, v2

    .line 536
    .local v7, vBMagNormalToAngleB:F
    add-float v2, p4, p5

    .line 537
    .local v2, massSum:F
    const/high16 p7, 0x3f80

    add-float p7, p7, p6

    .line 538
    .local p7, cor1:F
    const/4 v3, 0x0

    .line 540
    .local v3, vAMagAlongAngleAPostCollision:F
    mul-float v3, p7, p5

    neg-float v8, v4

    mul-float/2addr v3, v8

    .line 541
    mul-float v8, p6, p5

    sub-float v8, p4, v8

    mul-float/2addr v8, v6

    .line 540
    add-float/2addr v3, v8

    div-float/2addr v3, v2

    .line 544
    mul-float p7, p7, p4

    neg-float v6, v6

    mul-float p7, p7, v6

    .line 545
    mul-float p4, p4, p6

    sub-float p4, p5, p4

    mul-float p4, p4, v4

    .line 544
    add-float p4, p4, p7

    div-float p4, p4, v2

    .line 548
    .local p4, vBMagAlongAngleBPostCollision:F
    move/from16 p7, v3

    .line 549
    .end local v6           #vAMagAlongAngleA:F
    .local p7, vAMagAlongAngleA:F
    move/from16 v2, p4

    .line 551
    .end local v4           #vBMagAlongAngleB:F
    .local v2, vBMagAlongAngleB:F
    move v0, p0

    float-to-double v0, v0

    move-wide/from16 p4, v0

    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->cos(D)D

    .end local v8           #vBx:F
    .end local p4           #vBMagAlongAngleBPostCollision:F
    move-result-wide p4

    move-wide/from16 v0, p4

    double-to-float v0, v0

    move/from16 p4, v0

    .line 552
    .local p4, cosAngleA:F
    move v0, p0

    float-to-double v0, v0

    move-wide/from16 p5, v0

    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->sin(D)D

    .end local p5
    move-result-wide p5

    move-wide/from16 v0, p5

    double-to-float v0, v0

    move/from16 p5, v0

    .line 553
    .local p5, sinAngleA:F
    move/from16 p0, p5

    .line 556
    .local p0, cosNormalToAngleA:F
    move/from16 v0, p4

    neg-float v0, v0

    move/from16 p6, v0

    .line 559
    .local p6, sinNormalToAngleA:F
    mul-float p4, p4, p7

    .line 560
    mul-float/2addr p0, v5

    add-float p0, p0, p4

    .line 559
    iput p0, p2, Landroid/graphics/PointF;->x:F

    .line 561
    .end local p0           #cosNormalToAngleA:F
    .end local p4           #cosAngleA:F
    mul-float p0, p5, p7

    .line 562
    mul-float p4, p6, v5

    add-float p0, p0, p4

    .line 561
    iput p0, p2, Landroid/graphics/PointF;->y:F

    .line 564
    move v0, p1

    float-to-double v0, v0

    move-wide/from16 p4, v0

    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide p4

    move-wide/from16 v0, p4

    double-to-float v0, v0

    move p0, v0

    .line 565
    .local p0, cosAngleB:F
    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    .end local p1           #angleB:F
    move-result-wide p1

    double-to-float p2, p1

    .line 566
    .local p2, sinAngleB:F
    move p1, p2

    .line 569
    .local p1, cosNormalToAngleB:F
    move v0, p0

    neg-float v0, v0

    move/from16 p4, v0

    .line 572
    .local p4, sinNormalToAngleB:F
    mul-float/2addr p0, v2

    .line 573
    mul-float/2addr p1, v7

    add-float/2addr p0, p1

    .line 572
    iput p0, p3, Landroid/graphics/PointF;->x:F

    .line 574
    .end local p0           #cosAngleB:F
    .end local p1           #cosNormalToAngleB:F
    mul-float p0, p2, v2

    .line 575
    mul-float p1, p4, v7

    add-float/2addr p0, p1

    .line 574
    iput p0, p3, Landroid/graphics/PointF;->y:F

    .line 576
    return-void
.end method

.method private static collisionTime(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;FFF)F
    .locals 7
    .parameter "rA"
    .parameter "rB"
    .parameter "vA"
    .parameter "vB"
    .parameter "radiusA"
    .parameter "radiusB"
    .parameter "maxTime"

    .prologue
    .line 418
    iget v0, p0, Landroid/graphics/PointF;->x:F

    .line 419
    .local v0, rAx:F
    iget v1, p0, Landroid/graphics/PointF;->y:F

    .line 420
    .local v1, rAy:F
    iget v2, p1, Landroid/graphics/PointF;->x:F

    .line 421
    .local v2, rBx:F
    iget v3, p1, Landroid/graphics/PointF;->y:F

    .line 422
    .local v3, rBy:F
    iget p1, p2, Landroid/graphics/PointF;->x:F

    .line 423
    .local p1, vAx:F
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 424
    .local p2, vAy:F
    iget v4, p3, Landroid/graphics/PointF;->x:F

    .line 425
    .local v4, vBx:F
    iget p3, p3, Landroid/graphics/PointF;->y:F

    .line 428
    .local p3, vBy:F
    const/4 p0, 0x0

    cmpl-float p0, p6, p0

    if-lez p0, :cond_0

    .line 429
    .end local p0
    sget-object p0, Lcom/jjcgames/android/airhockey/Game;->broadphaseA:Landroid/graphics/RectF;

    .line 430
    mul-float v5, p2, p6

    add-float/2addr v5, v1

    .line 431
    mul-float v6, p1, p6

    add-float/2addr v6, v0

    .line 429
    invoke-virtual {p0, v0, v5, v6, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 432
    sget-object p0, Lcom/jjcgames/android/airhockey/Game;->broadphaseA:Landroid/graphics/RectF;

    invoke-static {p0}, Lcom/jjcgames/android/airhockey/Game;->fixInverted(Landroid/graphics/RectF;)V

    .line 433
    sget-object p0, Lcom/jjcgames/android/airhockey/Game;->broadphaseA:Landroid/graphics/RectF;

    invoke-static {p0, p4}, Lcom/jjcgames/android/airhockey/Game;->addMargin(Landroid/graphics/RectF;F)V

    .line 434
    sget-object p0, Lcom/jjcgames/android/airhockey/Game;->broadphaseB:Landroid/graphics/RectF;

    .line 435
    mul-float v5, p3, p6

    add-float/2addr v5, v3

    .line 436
    mul-float v6, v4, p6

    add-float/2addr v6, v2

    .line 434
    invoke-virtual {p0, v2, v5, v6, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 437
    sget-object p0, Lcom/jjcgames/android/airhockey/Game;->broadphaseB:Landroid/graphics/RectF;

    invoke-static {p0}, Lcom/jjcgames/android/airhockey/Game;->fixInverted(Landroid/graphics/RectF;)V

    .line 438
    sget-object p0, Lcom/jjcgames/android/airhockey/Game;->broadphaseB:Landroid/graphics/RectF;

    invoke-static {p0, p5}, Lcom/jjcgames/android/airhockey/Game;->addMargin(Landroid/graphics/RectF;F)V

    .line 443
    :cond_0
    const/4 p0, 0x0

    cmpg-float p0, p6, p0

    if-ltz p0, :cond_1

    .line 444
    sget-object p0, Lcom/jjcgames/android/airhockey/Game;->broadphaseB:Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->left:F

    sget-object p6, Lcom/jjcgames/android/airhockey/Game;->broadphaseA:Landroid/graphics/RectF;

    .end local p6
    iget p6, p6, Landroid/graphics/RectF;->right:F

    cmpg-float p0, p0, p6

    if-gez p0, :cond_2

    .line 445
    sget-object p0, Lcom/jjcgames/android/airhockey/Game;->broadphaseB:Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->top:F

    sget-object p6, Lcom/jjcgames/android/airhockey/Game;->broadphaseA:Landroid/graphics/RectF;

    iget p6, p6, Landroid/graphics/RectF;->bottom:F

    cmpl-float p0, p0, p6

    if-lez p0, :cond_2

    .line 446
    sget-object p0, Lcom/jjcgames/android/airhockey/Game;->broadphaseB:Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->right:F

    sget-object p6, Lcom/jjcgames/android/airhockey/Game;->broadphaseA:Landroid/graphics/RectF;

    iget p6, p6, Landroid/graphics/RectF;->left:F

    cmpl-float p0, p0, p6

    if-lez p0, :cond_2

    .line 447
    sget-object p0, Lcom/jjcgames/android/airhockey/Game;->broadphaseB:Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    sget-object p6, Lcom/jjcgames/android/airhockey/Game;->broadphaseA:Landroid/graphics/RectF;

    iget p6, p6, Landroid/graphics/RectF;->top:F

    cmpg-float p0, p0, p6

    if-gez p0, :cond_2

    .line 460
    :cond_1
    mul-float p0, p1, p1

    mul-float p6, v4, v4

    add-float/2addr p0, p6

    const/high16 p6, 0x4000

    mul-float/2addr p6, p1

    mul-float/2addr p6, v4

    sub-float/2addr p0, p6

    .line 461
    mul-float p6, p2, p2

    .line 460
    add-float/2addr p0, p6

    .line 461
    mul-float p6, p3, p3

    .line 460
    add-float/2addr p0, p6

    .line 461
    const/high16 p6, 0x4000

    mul-float/2addr p6, p2

    mul-float/2addr p6, p3

    .line 460
    sub-float/2addr p0, p6

    .line 462
    .local p0, a:F
    const/high16 p6, 0x4000

    .line 463
    mul-float v5, v0, p1

    mul-float v6, v2, v4

    add-float/2addr v5, v6

    mul-float/2addr p1, v2

    sub-float p1, v5, p1

    mul-float/2addr v4, v0

    sub-float/2addr p1, v4

    .line 464
    mul-float v4, v1, p2

    .line 463
    add-float/2addr p1, v4

    .line 464
    mul-float v4, v3, p3

    .line 463
    add-float/2addr p1, v4

    .line 464
    mul-float/2addr p2, v3

    .line 463
    sub-float/2addr p1, p2

    .line 464
    mul-float p2, v1, p3

    .line 462
    sub-float/2addr p1, p2

    mul-float/2addr p1, p6

    .line 465
    .local p1, b:F
    add-float p2, p4, p5

    .line 467
    .local p2, radiusSum:F
    mul-float p3, v0, v0

    mul-float p4, v2, v2

    add-float/2addr p3, p4

    mul-float p4, v1, v1

    add-float/2addr p3, p4

    mul-float p4, v3, v3

    add-float/2addr p3, p4

    const/high16 p4, 0x4000

    .line 468
    mul-float p5, v0, v2

    mul-float p6, v1, v3

    add-float/2addr p5, p6

    mul-float/2addr p4, p5

    .line 467
    sub-float/2addr p3, p4

    .line 468
    mul-float/2addr p2, p2

    .line 467
    sub-float p2, p3, p2

    .line 470
    .local p2, c:F
    mul-float p3, p1, p1

    const/high16 p4, 0x4080

    mul-float/2addr p4, p0

    mul-float/2addr p2, p4

    sub-float p2, p3, p2

    .line 471
    .local p2, discriminant:F
    const/4 p3, 0x0

    cmpl-float p3, p2, p3

    if-ltz p3, :cond_2

    .line 472
    .end local v4           #vBx:F
    .end local p3           #vBy:F
    .end local p4
    .end local p5
    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    .end local p2           #discriminant:F
    move-result-wide p2

    double-to-float p2, p2

    .line 473
    .local p2, sqrtD:F
    const/high16 p3, 0x4000

    mul-float/2addr p3, p0

    .line 474
    .local p3, twoA:F
    neg-float p0, p1

    add-float/2addr p0, p2

    div-float/2addr p0, p3

    .line 475
    .local p0, t1:F
    neg-float p1, p1

    sub-float/2addr p1, p2

    div-float/2addr p1, p3

    .line 477
    .local p1, t2:F
    const/4 p2, 0x0

    cmpl-float p2, p0, p2

    if-ltz p2, :cond_2

    .end local p2           #sqrtD:F
    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_2

    .line 478
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    .line 482
    .end local p0           #t1:F
    .end local p1           #t2:F
    .end local p3           #twoA:F
    :goto_0
    return p0

    :cond_2
    const p0, 0x7f7fffff

    goto :goto_0
.end method

.method private static collisionVolume(F)F
    .locals 2
    .parameter "closingSpeed"

    .prologue
    .line 986
    const/high16 v0, 0x4120

    div-float v0, p0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f80

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method private static collisionVolume(FF)F
    .locals 2
    .parameter "closingVX"
    .parameter "closingVY"

    .prologue
    .line 993
    mul-float v0, p0, p0

    mul-float v1, p1, p1

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 992
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Lcom/jjcgames/android/airhockey/Game;->collisionVolume(F)F

    move-result v0

    return v0
.end method

.method private static collisionVolume(Landroid/graphics/PointF;)F
    .locals 2
    .parameter "closingVelocity"

    .prologue
    .line 997
    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v1}, Lcom/jjcgames/android/airhockey/Game;->collisionVolume(FF)F

    move-result v0

    return v0
.end method

.method private static collisionVolume(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 3
    .parameter "vA"
    .parameter "vB"

    .prologue
    .line 1001
    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    iget v1, p0, Landroid/graphics/PointF;->y:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/jjcgames/android/airhockey/Game;->collisionVolume(FF)F

    move-result v0

    return v0
.end method

.method private static cpuMalletSpeed(I)F
    .locals 2
    .parameter "cpuLevel"

    .prologue
    .line 77
    int-to-float v0, p0

    const/high16 v1, 0x447a

    div-float/2addr v0, v1

    const/high16 v1, 0x4248

    mul-float/2addr v0, v1

    return v0
.end method

.method private static drawQuad(Ljavax/microedition/khronos/opengles/GL11;Lcom/jjcgames/android/airhockey/Game$Texture;FF)V
    .locals 4
    .parameter "gl"
    .parameter "texture"
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v2, 0x3f80

    .line 857
    const/16 v0, 0x1702

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 858
    invoke-interface {p0}, Ljavax/microedition/khronos/opengles/GL11;->glLoadIdentity()V

    .line 859
    iget v0, p1, Lcom/jjcgames/android/airhockey/Game$Texture;->coordScaleX:F

    iget v1, p1, Lcom/jjcgames/android/airhockey/Game$Texture;->coordScaleY:F

    invoke-interface {p0, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glScalef(FFF)V

    .line 860
    const/16 v0, 0x1700

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 862
    invoke-interface {p0}, Ljavax/microedition/khronos/opengles/GL11;->glPushMatrix()V

    .line 863
    const/4 v0, 0x0

    invoke-interface {p0, p2, p3, v0}, Ljavax/microedition/khronos/opengles/GL11;->glTranslatef(FFF)V

    .line 864
    iget v0, p1, Lcom/jjcgames/android/airhockey/Game$Texture;->width:I

    int-to-float v0, v0

    iget v1, p1, Lcom/jjcgames/android/airhockey/Game$Texture;->height:I

    int-to-float v1, v1

    invoke-interface {p0, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glScalef(FFF)V

    .line 865
    const/16 v0, 0xde1

    iget v1, p1, Lcom/jjcgames/android/airhockey/Game$Texture;->name:I

    invoke-interface {p0, v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 866
    const/4 v0, 0x6

    const/4 v1, 0x4

    const/16 v2, 0x1403

    const/4 v3, 0x0

    invoke-interface {p0, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDrawElements(IIII)V

    .line 867
    invoke-interface {p0}, Ljavax/microedition/khronos/opengles/GL11;->glPopMatrix()V

    .line 868
    return-void
.end method

.method static drawShadowedBackground(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "c"

    .prologue
    .line 654
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 655
    .local v5, p:Landroid/graphics/Paint;
    const/high16 v0, -0x6000

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 656
    invoke-virtual {p0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x41a0

    div-float v1, v0, v2

    .line 658
    .local v1, shadowSize:F
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->SOLID:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 657
    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 660
    invoke-virtual {p0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float v3, v0, v1

    invoke-virtual {p0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float v4, v0, v1

    move-object v0, p0

    move v2, v1

    .line 659
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 661
    return-void
.end method

.method private static drawSubTexture(Ljavax/microedition/khronos/opengles/GL11;IILcom/jjcgames/android/airhockey/Game$Texture;IIII)V
    .locals 7
    .parameter "gl"
    .parameter "screenWidth"
    .parameter "screenHeight"
    .parameter "texture"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 908
    const/16 p1, 0xde1

    iget p2, p3, Lcom/jjcgames/android/airhockey/Game$Texture;->name:I

    .end local p1
    .end local p2
    invoke-interface {p0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 937
    sget-object p1, Lcom/jjcgames/android/airhockey/Game;->scratchInt4:[I

    const/4 p2, 0x0

    aput p4, p1, p2

    .line 938
    sget-object p1, Lcom/jjcgames/android/airhockey/Game;->scratchInt4:[I

    const/4 p2, 0x1

    aput p5, p1, p2

    .line 939
    sget-object p1, Lcom/jjcgames/android/airhockey/Game;->scratchInt4:[I

    const/4 p2, 0x2

    aput p6, p1, p2

    .line 940
    sget-object p1, Lcom/jjcgames/android/airhockey/Game;->scratchInt4:[I

    const/4 p2, 0x3

    aput p7, p1, p2

    .line 941
    const/16 p1, 0xde1

    .line 942
    const p2, 0x8b9d

    sget-object v1, Lcom/jjcgames/android/airhockey/Game;->scratchInt4:[I

    const/4 v2, 0x0

    .line 941
    invoke-interface {p0, p1, p2, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(II[II)V

    .line 943
    move-object v0, p0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11Ext;

    move-object v1, v0

    .line 944
    const/4 v4, 0x0

    move v2, p4

    move v3, p5

    move v5, p6

    move v6, p7

    .line 943
    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexiOES(IIIII)V

    .line 947
    sget-object p1, Lcom/jjcgames/android/airhockey/Game;->scratchInt4:[I

    const/4 p2, 0x0

    const/4 p4, 0x0

    aput p4, p1, p2

    .line 948
    .end local p4
    sget-object p1, Lcom/jjcgames/android/airhockey/Game;->scratchInt4:[I

    const/4 p2, 0x1

    const/4 p4, 0x0

    aput p4, p1, p2

    .line 949
    sget-object p1, Lcom/jjcgames/android/airhockey/Game;->scratchInt4:[I

    const/4 p2, 0x2

    iget p4, p3, Lcom/jjcgames/android/airhockey/Game$Texture;->width:I

    aput p4, p1, p2

    .line 950
    sget-object p1, Lcom/jjcgames/android/airhockey/Game;->scratchInt4:[I

    const/4 p2, 0x3

    iget p3, p3, Lcom/jjcgames/android/airhockey/Game$Texture;->height:I

    .end local p3
    aput p3, p1, p2

    .line 951
    const/16 p1, 0xde1

    .line 952
    const p2, 0x8b9d

    sget-object p3, Lcom/jjcgames/android/airhockey/Game;->scratchInt4:[I

    const/4 p4, 0x0

    .line 951
    invoke-interface {p0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(II[II)V

    .line 953
    return-void
.end method

.method private static drawSubTextureOverOtherTexture(Ljavax/microedition/khronos/opengles/GL10;Lcom/jjcgames/android/airhockey/Game$Texture;FFLcom/jjcgames/android/airhockey/Game$Texture;)V
    .locals 9
    .parameter "gl"
    .parameter "texture"
    .parameter "x"
    .parameter "y"
    .parameter "other"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/high16 v5, 0x4000

    const/4 v4, 0x0

    .line 893
    const/16 v1, 0xde1

    iget v2, p1, Lcom/jjcgames/android/airhockey/Game$Texture;->name:I

    invoke-interface {p0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 894
    sget-object v1, Lcom/jjcgames/android/airhockey/Game;->scratchInt4:[I

    iget v2, p4, Lcom/jjcgames/android/airhockey/Game$Texture;->width:I

    int-to-float v2, v2

    div-float/2addr v2, v5

    sub-float v2, p2, v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    aput v2, v1, v4

    .line 895
    sget-object v1, Lcom/jjcgames/android/airhockey/Game;->scratchInt4:[I

    iget v2, p4, Lcom/jjcgames/android/airhockey/Game$Texture;->height:I

    int-to-float v2, v2

    div-float/2addr v2, v5

    sub-float v2, p3, v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    aput v2, v1, v6

    .line 896
    sget-object v1, Lcom/jjcgames/android/airhockey/Game;->scratchInt4:[I

    iget v2, p4, Lcom/jjcgames/android/airhockey/Game$Texture;->width:I

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v7

    .line 897
    sget-object v1, Lcom/jjcgames/android/airhockey/Game;->scratchInt4:[I

    iget v2, p4, Lcom/jjcgames/android/airhockey/Game$Texture;->height:I

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v8

    .line 898
    move-object v0, p0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    move-object v1, v0

    const/16 v2, 0xde1

    .line 899
    const v3, 0x8b9d

    sget-object v5, Lcom/jjcgames/android/airhockey/Game;->scratchInt4:[I

    .line 898
    invoke-interface {v1, v2, v3, v5, v4}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(II[II)V

    .line 900
    move-object v0, p0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11Ext;

    move-object v1, v0

    .line 901
    sget-object v2, Lcom/jjcgames/android/airhockey/Game;->scratchInt4:[I

    aget v2, v2, v4

    sget-object v3, Lcom/jjcgames/android/airhockey/Game;->scratchInt4:[I

    aget v3, v3, v6

    sget-object v5, Lcom/jjcgames/android/airhockey/Game;->scratchInt4:[I

    aget v5, v5, v7

    sget-object v6, Lcom/jjcgames/android/airhockey/Game;->scratchInt4:[I

    aget v6, v6, v8

    .line 900
    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexiOES(IIIII)V

    .line 902
    return-void
.end method

.method private static drawTexture(Ljavax/microedition/khronos/opengles/GL11;IILcom/jjcgames/android/airhockey/Game$Texture;II)V
    .locals 7
    .parameter "gl"
    .parameter "screenWidth"
    .parameter "screenHeight"
    .parameter "texture"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 880
    const/16 v1, 0xde1

    iget v2, p3, Lcom/jjcgames/android/airhockey/Game$Texture;->name:I

    invoke-interface {p0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 881
    move-object v0, p0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11Ext;

    move-object v1, v0

    .line 882
    const/4 v4, 0x0

    iget v5, p3, Lcom/jjcgames/android/airhockey/Game$Texture;->width:I

    iget v6, p3, Lcom/jjcgames/android/airhockey/Game$Texture;->height:I

    move v2, p4

    move v3, p5

    .line 881
    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexiOES(IIIII)V

    .line 883
    return-void
.end method

.method private static fixInverted(Landroid/graphics/RectF;)V
    .locals 3
    .parameter "r"

    .prologue
    .line 389
    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 390
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 391
    .local v0, t:F
    iget v1, p0, Landroid/graphics/RectF;->top:F

    iput v1, p0, Landroid/graphics/RectF;->bottom:F

    .line 392
    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 394
    .end local v0           #t:F
    :cond_0
    iget v1, p0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 395
    iget v0, p0, Landroid/graphics/RectF;->left:F

    .line 396
    .restart local v0       #t:F
    iget v1, p0, Landroid/graphics/RectF;->right:F

    iput v1, p0, Landroid/graphics/RectF;->left:F

    .line 397
    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 399
    .end local v0           #t:F
    :cond_1
    return-void
.end method

.method private static fudge(Landroid/graphics/PointF;F)V
    .locals 10
    .parameter "p"
    .parameter "maxFudge"

    .prologue
    const-wide/high16 v8, 0x4000

    const-wide/high16 v6, 0x3fe0

    .line 384
    iget v0, p0, Landroid/graphics/PointF;->x:F

    float-to-double v0, v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    sub-double/2addr v2, v6

    mul-double/2addr v2, v8

    float-to-double v4, p1

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Landroid/graphics/PointF;->x:F

    .line 385
    iget v0, p0, Landroid/graphics/PointF;->y:F

    float-to-double v0, v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    sub-double/2addr v2, v6

    mul-double/2addr v2, v8

    float-to-double v4, p1

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Landroid/graphics/PointF;->y:F

    .line 386
    return-void
.end method

.method static getBitmap(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "context"
    .parameter "name"
    .parameter "alpha"
    .parameter "rotate"

    .prologue
    .line 281
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 282
    .local v3, r:Landroid/content/res/Resources;
    const-class v0, Lcom/jjcgames/android/airhockey/Game;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    .line 283
    .local v2, packageName:Ljava/lang/String;
    const-string v0, "drawable"

    .line 284
    .local v0, resType:Ljava/lang/String;
    const-string v0, "drawable"

    .end local v0           #resType:Ljava/lang/String;
    invoke-virtual {v3, p1, v0, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 285
    .local v1, i:I
    const/4 v0, 0x0

    .line 286
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 288
    :try_start_0
    invoke-static {v3, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 293
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #b:Landroid/graphics/Bitmap;
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .end local p1
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v0, 0x780

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 297
    const-string v0, "drawable"

    .line 296
    invoke-virtual {v3, p1, v0, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 295
    invoke-static {v3, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 300
    .local p1, large:Landroid/graphics/Bitmap;
    const-string v0, "window"

    .line 299
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/WindowManager;

    .line 300
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 302
    .local p0, d:Landroid/view/Display;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x44f0

    div-float/2addr v0, v1

    .line 303
    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    .end local v1           #i:I
    move-result v1

    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result p0

    .end local p0           #d:Landroid/view/Display;
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float p0, p0

    .line 302
    mul-float/2addr p0, v0

    .line 305
    .local p0, height:F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 306
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 305
    div-float/2addr v0, v1

    mul-float/2addr v0, p0

    float-to-int v0, v0

    .line 307
    float-to-int p0, p0

    const/4 v1, 0x1

    .line 304
    invoke-static {p1, v0, p0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .end local p0           #height:F
    move-result-object v0

    .line 309
    .end local p1           #large:Landroid/graphics/Bitmap;
    .restart local v0       #b:Landroid/graphics/Bitmap;
    :cond_1
    if-eqz p3, :cond_2

    .line 310
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 311
    .local v5, m:Landroid/graphics/Matrix;
    const/high16 p0, -0x3d4c

    invoke-virtual {v5, p0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 313
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .end local v2           #packageName:Ljava/lang/String;
    move-result v3

    .end local v3           #r:Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x0

    .line 312
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 315
    .end local v5           #m:Landroid/graphics/Matrix;
    :cond_2
    if-nez p2, :cond_3

    .line 316
    sget-object p0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 317
    sget-boolean p0, Lcom/jjcgames/android/airhockey/Game;->$assertionsDisabled:Z

    if-nez p0, :cond_3

    if-nez v0, :cond_3

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 289
    .restart local v1       #i:I
    .restart local v2       #packageName:Ljava/lang/String;
    .restart local v3       #r:Landroid/content/res/Resources;
    .local p0, context:Landroid/content/Context;
    .local p1, name:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 290
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    .local v1, i:I
    goto/16 :goto_0

    .line 319
    .end local v1           #i:I
    .end local v2           #packageName:Ljava/lang/String;
    .end local v3           #r:Landroid/content/res/Resources;
    .end local p0           #context:Landroid/content/Context;
    .end local p1           #name:Ljava/lang/String;
    :cond_3
    return-object v0
.end method

.method private static initialCPUMalletPosition(Landroid/graphics/PointF;)V
    .locals 3
    .parameter "p"

    .prologue
    const/high16 v2, 0x4000

    .line 593
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f00

    sub-float/2addr v0, v1

    mul-float/2addr v0, v2

    const v1, 0x3f5dca5e

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Landroid/graphics/PointF;->x:F

    .line 594
    sget v0, Lcom/jjcgames/android/airhockey/Game;->initialCPUMalletPositionY:F

    iput v0, p0, Landroid/graphics/PointF;->y:F

    .line 595
    return-void
.end method

.method private static initialPuckVelocity(Landroid/graphics/PointF;)V
    .locals 6
    .parameter "puckV"

    .prologue
    const/high16 v5, 0x4000

    const/high16 v4, 0x3f00

    const v3, 0x3cf5c28f

    .line 583
    .line 584
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    sub-float/2addr v0, v4

    mul-float/2addr v0, v5

    mul-float/2addr v0, v3

    .line 585
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    double-to-float v1, v1

    sub-float/2addr v1, v4

    mul-float/2addr v1, v5

    mul-float/2addr v1, v3

    .line 583
    invoke-virtual {p0, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 586
    return-void
.end method

.method private static loadAll(Landroid/content/Context;Landroid/media/SoundPool;Ljava/util/ArrayList;)[I
    .locals 4
    .parameter "context"
    .parameter "sp"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/media/SoundPool;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 970
    .local p2, resIDs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [I

    .line 971
    .local v1, sounds:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 974
    return-object v1

    .line 972
    :cond_0
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, p0, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v1, v0

    .line 971
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static makeGameEndBitmap(Landroid/content/Context;IIIZIIII)Landroid/graphics/Bitmap;
    .locals 18
    .parameter "context"
    .parameter "screenWidth"
    .parameter "screenHeight"
    .parameter "matchWinningGames"
    .parameter "twoPlayer"
    .parameter "score"
    .parameter "opponentScore"
    .parameter "games"
    .parameter "opponentGames"

    .prologue
    .line 668
    move/from16 v0, p5

    move/from16 v1, p6

    if-le v0, v1, :cond_3

    const/16 p5, 0x1

    move/from16 v13, p5

    .line 669
    .end local p5
    .local v13, win:Z
    :goto_0
    const/16 p5, 0x1

    move/from16 v0, p3

    move/from16 v1, p5

    if-le v0, v1, :cond_4

    .line 670
    move/from16 v0, p7

    move/from16 v1, p3

    if-eq v0, v1, :cond_0

    move/from16 v0, p8

    move/from16 v1, p3

    if-ne v0, v1, :cond_4

    :cond_0
    const/16 p5, 0x1

    .line 672
    .local p5, match:Z
    :goto_1
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 p1, v0

    const p6, 0x3f4ccccd

    mul-float p1, p1, p6

    move/from16 v0, p1

    float-to-double v0, v0

    move-wide v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    .end local p1
    .end local p6
    move-result-wide v5

    move-wide v0, v5

    double-to-int v0, v0

    move/from16 p1, v0

    .line 673
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 p2, v0

    const p6, 0x3e84f7fe

    mul-float p2, p2, p6

    move/from16 v0, p2

    float-to-double v0, v0

    move-wide v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    .end local p2
    move-result-wide v5

    move-wide v0, v5

    double-to-int v0, v0

    move/from16 p2, v0

    .line 674
    sget-object p6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 671
    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p6

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 675
    .local p1, b:Landroid/graphics/Bitmap;
    new-instance p2, Landroid/graphics/Canvas;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 677
    .local p2, c:Landroid/graphics/Canvas;
    const/16 p6, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 678
    invoke-static/range {p2 .. p2}, Lcom/jjcgames/android/airhockey/Game;->drawShadowedBackground(Landroid/graphics/Canvas;)V

    .line 680
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p6

    .line 681
    .local p6, r:Landroid/content/res/Resources;
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 682
    .local v11, textPaint:Landroid/graphics/Paint;
    sget-object p0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .end local p0
    move-object v0, v11

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 683
    const/16 p0, 0x1

    move-object v0, v11

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 685
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10, v11}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 686
    .local v10, msgPaint:Landroid/graphics/Paint;
    if-eqz v13, :cond_5

    const p0, -0xff0100

    :goto_2
    move-object v0, v10

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 687
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    move/from16 v0, p0

    int-to-float v0, v0

    move/from16 p0, v0

    if-eqz p5, :cond_6

    const v5, 0x3e3851ec

    :goto_3
    mul-float p0, p0, v5

    move-object v0, v10

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 688
    const p0, -0x41b33333

    move-object v0, v10

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 691
    if-eqz v13, :cond_8

    .line 692
    if-eqz p5, :cond_7

    const p0, 0x7f06002e

    .line 696
    .local p0, mId:I
    :goto_4
    move-object/from16 v0, p6

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 697
    .local v8, msg:Ljava/lang/String;
    new-instance p0, Landroid/graphics/Rect;

    .end local p0           #mId:I
    invoke-direct/range {p0 .. p0}, Landroid/graphics/Rect;-><init>()V

    .line 698
    .local p0, bounds:Landroid/graphics/Rect;
    const/16 p5, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .end local p5           #match:Z
    move-result v5

    move-object v0, v10

    move-object v1, v8

    move/from16 v2, p5

    move v3, v5

    move-object/from16 v4, p0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 699
    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 p5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v5, v0

    sub-int v9, p5, v5

    .line 701
    .local v9, msgHeight:I
    int-to-float v6, v9

    .line 702
    .local v6, totalHeight:F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p5

    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 p5, v0

    const v5, 0x3dcccccd

    mul-float v5, v5, p5

    .line 704
    .local v5, margin:F
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v11}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 705
    .local v7, matchProgressPaint:Landroid/graphics/Paint;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p5

    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 p5, v0

    const v12, 0x3e0f5c29

    mul-float p5, p5, v12

    move-object v0, v7

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 706
    const p5, -0x333334

    move-object v0, v7

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 707
    const/16 p5, 0x0

    .line 708
    .local p5, matchProgressHeight:I
    const v12, 0x7f06002d

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 709
    mul-int/lit8 v16, p3, 0x2

    const/16 v17, 0x1

    sub-int v16, v16, v17

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p7

    .end local p7
    aput-object p7, v14, v15

    const/16 p7, 0x2

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p8

    .line 708
    .end local p8
    aput-object p8, v14, p7

    move-object/from16 v0, p6

    move v1, v12

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p8

    .line 710
    .local p8, matchProgress:Ljava/lang/String;
    const/16 p7, 0x1

    move/from16 v0, p3

    move/from16 v1, p7

    if-le v0, v1, :cond_e

    .line 712
    const/16 p5, 0x0

    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->length()I

    .end local p5           #matchProgressHeight:I
    move-result p7

    .line 711
    move-object v0, v7

    move-object/from16 v1, p8

    move/from16 v2, p5

    move/from16 v3, p7

    move-object/from16 v4, p0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 713
    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 p5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 p7, v0

    sub-int p5, p5, p7

    .line 714
    .restart local p5       #matchProgressHeight:I
    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 p7, v0

    add-float p7, p7, v5

    add-float p7, p7, v6

    .end local v6           #totalHeight:F
    .local p7, totalHeight:F
    move/from16 v6, p5

    .end local p5           #matchProgressHeight:I
    .local v6, matchProgressHeight:I
    move/from16 v12, p7

    .line 717
    .end local p7           #totalHeight:F
    .local v12, totalHeight:F
    :goto_5
    new-instance p7, Landroid/graphics/Paint;

    move-object/from16 v0, p7

    move-object v1, v11

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 718
    .local p7, continuePaint:Landroid/graphics/Paint;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p5

    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 p5, v0

    const v11, 0x3dcccccd

    mul-float p5, p5, v11

    move-object/from16 v0, p7

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 719
    .end local v11           #textPaint:Landroid/graphics/Paint;
    const/16 p5, -0x1

    move-object/from16 v0, p7

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 720
    const/16 p5, 0x0

    .line 721
    .local p5, continueHeight:I
    if-eqz p4, :cond_a

    .line 722
    const v11, 0x7f060031

    .line 721
    :goto_6
    move-object/from16 v0, p6

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p6

    .line 724
    .local p6, continueMsg:Ljava/lang/String;
    if-nez v13, :cond_1

    if-nez p4, :cond_d

    .line 726
    :cond_1
    const/16 p5, 0x0

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    .end local p5           #continueHeight:I
    move-result v11

    .line 725
    move-object/from16 v0, p7

    move-object/from16 v1, p6

    move/from16 v2, p5

    move v3, v11

    move-object/from16 v4, p0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 727
    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 p5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 p0, v0

    .end local p0           #bounds:Landroid/graphics/Rect;
    sub-int p0, p5, p0

    .line 728
    .local p0, continueHeight:I
    move/from16 v0, p0

    int-to-float v0, v0

    move/from16 p5, v0

    add-float p5, p5, v5

    add-float p5, p5, v12

    .end local v12           #totalHeight:F
    .local p5, totalHeight:F
    move/from16 v11, p5

    .line 730
    .end local p5           #totalHeight:F
    .local v11, totalHeight:F
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p5

    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 p5, v0

    const/high16 v12, 0x4000

    div-float p5, p5, v12

    .line 731
    .local p5, middle:F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    const/high16 v14, 0x4000

    div-float/2addr v11, v14

    sub-float v11, v12, v11

    .line 732
    .local v11, y:F
    int-to-float v9, v9

    add-float/2addr v9, v11

    .line 733
    .end local v11           #y:F
    .local v9, y:F
    move-object/from16 v0, p2

    move-object v1, v8

    move/from16 v2, p5

    move v3, v9

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 734
    const/4 v8, 0x1

    move/from16 v0, p3

    move v1, v8

    if-le v0, v1, :cond_c

    .line 735
    .end local v8           #msg:Ljava/lang/String;
    move v0, v6

    int-to-float v0, v0

    move/from16 p3, v0

    add-float p3, p3, v5

    add-float p3, p3, v9

    .line 736
    .end local v9           #y:F
    .local p3, y:F
    move-object/from16 v0, p2

    move-object/from16 v1, p8

    move/from16 v2, p5

    move/from16 v3, p3

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 738
    :goto_8
    if-nez v13, :cond_2

    if-nez p4, :cond_b

    .line 739
    :cond_2
    move/from16 v0, p0

    int-to-float v0, v0

    move/from16 p0, v0

    add-float p0, p0, v5

    add-float p0, p0, p3

    .line 740
    .end local p3           #y:F
    .local p0, y:F
    move-object/from16 v0, p2

    move-object/from16 v1, p6

    move/from16 v2, p5

    move/from16 v3, p0

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 742
    :goto_9
    return-object p1

    .line 668
    .end local v5           #margin:F
    .end local v6           #matchProgressHeight:I
    .end local v7           #matchProgressPaint:Landroid/graphics/Paint;
    .end local v10           #msgPaint:Landroid/graphics/Paint;
    .end local v13           #win:Z
    .local p0, context:Landroid/content/Context;
    .local p1, screenWidth:I
    .local p2, screenHeight:I
    .local p3, matchWinningGames:I
    .local p5, score:I
    .local p6, opponentScore:I
    .local p7, games:I
    .local p8, opponentGames:I
    :cond_3
    const/16 p5, 0x0

    move/from16 v13, p5

    goto/16 :goto_0

    .line 670
    .end local p5           #score:I
    .restart local v13       #win:Z
    :cond_4
    const/16 p5, 0x0

    goto/16 :goto_1

    .line 686
    .end local p0           #context:Landroid/content/Context;
    .restart local v10       #msgPaint:Landroid/graphics/Paint;
    .local v11, textPaint:Landroid/graphics/Paint;
    .local p1, b:Landroid/graphics/Bitmap;
    .local p2, c:Landroid/graphics/Canvas;
    .local p5, match:Z
    .local p6, r:Landroid/content/res/Resources;
    :cond_5
    const/high16 p0, -0x1

    goto/16 :goto_2

    .line 687
    :cond_6
    const v5, 0x3e99999a

    goto/16 :goto_3

    .line 692
    :cond_7
    const p0, 0x7f06002b

    goto/16 :goto_4

    .line 694
    :cond_8
    if-eqz p5, :cond_9

    const p0, 0x7f06002f

    .local p0, mId:I
    :goto_a
    goto/16 :goto_4

    .end local p0           #mId:I
    :cond_9
    const p0, 0x7f06002c

    goto :goto_a

    .line 723
    .end local v11           #textPaint:Landroid/graphics/Paint;
    .restart local v5       #margin:F
    .restart local v6       #matchProgressHeight:I
    .restart local v7       #matchProgressPaint:Landroid/graphics/Paint;
    .restart local v8       #msg:Ljava/lang/String;
    .local v9, msgHeight:I
    .restart local v12       #totalHeight:F
    .local p0, bounds:Landroid/graphics/Rect;
    .local p5, continueHeight:I
    .local p7, continuePaint:Landroid/graphics/Paint;
    .local p8, matchProgress:Ljava/lang/String;
    :cond_a
    const v11, 0x7f060030

    goto/16 :goto_6

    .end local v8           #msg:Ljava/lang/String;
    .end local v9           #msgHeight:I
    .end local v12           #totalHeight:F
    .local p0, continueHeight:I
    .local p3, y:F
    .local p5, middle:F
    .local p6, continueMsg:Ljava/lang/String;
    :cond_b
    move/from16 p0, p3

    .end local p3           #y:F
    .local p0, y:F
    goto :goto_9

    .local v9, y:F
    .local p0, continueHeight:I
    .local p3, matchWinningGames:I
    :cond_c
    move/from16 p3, v9

    .end local v9           #y:F
    .local p3, y:F
    goto :goto_8

    .restart local v8       #msg:Ljava/lang/String;
    .local v9, msgHeight:I
    .restart local v12       #totalHeight:F
    .local p0, bounds:Landroid/graphics/Rect;
    .local p3, matchWinningGames:I
    .local p5, continueHeight:I
    :cond_d
    move/from16 p0, p5

    .end local p5           #continueHeight:I
    .local p0, continueHeight:I
    move v11, v12

    .end local v12           #totalHeight:F
    .local v11, totalHeight:F
    goto/16 :goto_7

    .end local p7           #continuePaint:Landroid/graphics/Paint;
    .local v6, totalHeight:F
    .local v11, textPaint:Landroid/graphics/Paint;
    .local p0, bounds:Landroid/graphics/Rect;
    .local p5, matchProgressHeight:I
    .local p6, r:Landroid/content/res/Resources;
    :cond_e
    move v12, v6

    .end local v6           #totalHeight:F
    .restart local v12       #totalHeight:F
    move/from16 v6, p5

    .end local p5           #matchProgressHeight:I
    .local v6, matchProgressHeight:I
    goto/16 :goto_5
.end method

.method private static makeScoreBitmap(IIII)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "screenWidth"
    .parameter "screenHeight"
    .parameter "playerScore"
    .parameter "opponentScore"

    .prologue
    .line 601
    int-to-float p0, p0

    const v0, 0x3dcccccd

    mul-float/2addr p0, v0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .end local p0
    move-result-wide v0

    double-to-int p0, v0

    .line 602
    int-to-float p1, p1

    const v0, 0x3d23d70a

    mul-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .end local p1
    move-result-wide v0

    double-to-int p1, v0

    .line 603
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 600
    invoke-static {p0, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 604
    .local p0, b:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 606
    .local v0, c:Landroid/graphics/Canvas;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 607
    .local v1, p:Landroid/graphics/Paint;
    const/high16 p1, -0x100

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 608
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 610
    const/high16 p1, -0x1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 611
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const v2, 0x3f666666

    mul-float/2addr p1, v2

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 612
    const p1, -0x41b33333

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 613
    sget-object p1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 614
    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 616
    const/4 p1, 0x2

    new-array v3, p1, [I

    const/4 p1, 0x0

    aput p2, v3, p1

    const/4 p1, 0x1

    aput p3, v3, p1

    .line 617
    .local v3, scores:[I
    const/4 p1, 0x0

    .local p1, i:I
    move p3, p1

    .end local p1           #i:I
    .end local p2
    .local p3, i:I
    :goto_0
    array-length p1, v3

    if-lt p3, p1, :cond_0

    .line 630
    return-object p0

    .line 618
    :cond_0
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 619
    .local p1, bounds:Landroid/graphics/Rect;
    aget p2, v3, p3

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 620
    .local v2, s:Ljava/lang/String;
    const/4 p2, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v2, p2, v4, p1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 621
    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    .end local p1           #bounds:Landroid/graphics/Rect;
    sub-int/2addr p2, p1

    .line 622
    .local p2, height:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 v4, 0x4080

    div-float/2addr p1, v4

    .line 623
    .local p1, x:F
    const/4 v4, 0x1

    if-ne p3, v4, :cond_1

    .line 624
    const/high16 v4, 0x4040

    mul-float/2addr p1, v4

    move v4, p1

    .line 626
    .end local p1           #x:F
    .local v4, x:F
    :goto_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    .line 627
    .local p1, bHeight:I
    sub-int p2, p1, p2

    div-int/lit8 p2, p2, 0x2

    .end local p2           #height:I
    sub-int/2addr p1, p2

    int-to-float p1, p1

    invoke-virtual {v0, v2, v4, p1, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 617
    .end local p1           #bHeight:I
    add-int/lit8 p1, p3, 0x1

    .end local p3           #i:I
    .local p1, i:I
    move p3, p1

    .end local p1           #i:I
    .restart local p3       #i:I
    goto :goto_0

    .end local v4           #x:F
    .local p1, x:F
    .restart local p2       #height:I
    :cond_1
    move v4, p1

    .end local p1           #x:F
    .restart local v4       #x:F
    goto :goto_1
.end method

.method private static nativeDirectByteBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2
    .parameter "bytes"

    .prologue
    .line 746
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private static nextPowerOfTwo(I)I
    .locals 1
    .parameter "n"

    .prologue
    .line 751
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    if-lt v0, p0, :cond_0

    .line 752
    return v0

    .line 751
    :cond_0
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static opponentLevel(I)I
    .locals 2
    .parameter "playerLevel"

    .prologue
    .line 73
    add-int/lit8 v0, p0, 0x32

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private static playRandom(Landroid/media/SoundPool;[IF)V
    .locals 7
    .parameter "sp"
    .parameter "ids"
    .parameter "volume"

    .prologue
    const/4 v4, 0x0

    .line 982
    sget-object v0, Lcom/jjcgames/android/airhockey/Game;->random:Ljava/util/Random;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    aget v1, p1, v0

    const/high16 v6, 0x3f80

    move-object v0, p0

    move v2, p2

    move v3, p2

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 983
    return-void
.end method

.method private static playfieldToScreenGL(Landroid/graphics/PointF;Landroid/graphics/PointF;ZII)V
    .locals 4
    .parameter "screen"
    .parameter "playfield"
    .parameter "rotate"
    .parameter "screenWidth"
    .parameter "screenHeight"

    .prologue
    const v3, 0x3f5d9d52

    const/high16 v2, 0x4000

    .line 342
    if-eqz p2, :cond_0

    .line 343
    iget v0, p1, Landroid/graphics/PointF;->y:F

    const/high16 v1, -0x4080

    mul-float/2addr v0, v1

    mul-float/2addr v0, v3

    .line 344
    int-to-float v1, p3

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    int-to-float v1, p3

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 343
    iput v0, p0, Landroid/graphics/PointF;->x:F

    .line 345
    iget v0, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, v3

    .line 346
    int-to-float v1, p3

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    int-to-float v1, p4

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 345
    iput v0, p0, Landroid/graphics/PointF;->y:F

    .line 353
    :goto_0
    return-void

    .line 348
    :cond_0
    iget v0, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, v3

    .line 349
    int-to-float v1, p4

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    int-to-float v1, p4

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 348
    iput v0, p0, Landroid/graphics/PointF;->y:F

    .line 350
    iget v0, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, v3

    .line 351
    int-to-float v1, p4

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    int-to-float v1, p3

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 350
    iput v0, p0, Landroid/graphics/PointF;->x:F

    goto :goto_0
.end method

.method private static prepareScoreBitmap(ZZLandroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "rotate"
    .parameter "playerTwo"
    .parameter "b"
    .parameter "alpha"

    .prologue
    const/4 v1, 0x0

    .line 636
    if-nez p0, :cond_0

    if-eqz p1, :cond_3

    .line 637
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 638
    .local v5, m:Landroid/graphics/Matrix;
    if-eqz p1, :cond_1

    .line 639
    const/high16 v0, 0x4334

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 641
    :cond_1
    if-eqz p0, :cond_2

    .line 642
    const/high16 v0, -0x3d4c

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 645
    :cond_2
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p2

    move v2, v1

    move v6, v1

    .line 644
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 647
    .end local v5           #m:Landroid/graphics/Matrix;
    :cond_3
    if-nez p3, :cond_4

    .line 648
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 650
    :cond_4
    return-object p2
.end method

.method static puckSpeed(I)F
    .locals 2
    .parameter "cpuLevel"

    .prologue
    .line 81
    invoke-static {p0}, Lcom/jjcgames/android/airhockey/Game;->cpuMalletSpeed(I)F

    move-result v0

    const/high16 v1, 0x4080

    div-float/2addr v0, v1

    return v0
.end method

.method private runGame(Landroid/content/Context;Lcom/jjcgames/android/airhockey/GameActivity$Finisher;Landroid/view/SurfaceHolder;IIFFLandroid/content/Intent;)V
    .locals 192
    .parameter "context"
    .parameter "finisher"
    .parameter "surfaceHolder"
    .parameter "screenWidth"
    .parameter "screenHeight"
    .parameter "xdpi"
    .parameter "ydpi"
    .parameter "intent"

    .prologue
    .line 1009
    const-string v7, "Air Hockey"

    const-string v8, "Game thread started."

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    move/from16 v0, p4

    move/from16 v1, p5

    if-le v0, v1, :cond_7

    const/4 v7, 0x1

    move/from16 v162, v7

    .line 1017
    .local v162, rotate:Z
    :goto_0
    sget-object v7, Lcom/jjcgames/android/airhockey/Game;->eglSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v7}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 1019
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v5

    check-cast v5, Ljavax/microedition/khronos/egl/EGL10;

    .line 1020
    .local v5, egl:Ljavax/microedition/khronos/egl/EGL10;
    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v5, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v6

    .line 1021
    .local v6, display:Ljavax/microedition/khronos/egl/EGLDisplay;
    const/4 v7, 0x2

    new-array v7, v7, [I

    invoke-interface {v5, v6, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    .line 1024
    const/4 v7, 0x1

    new-array v8, v7, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 1025
    .local v8, configs:[Ljavax/microedition/khronos/egl/EGLConfig;
    const/4 v7, 0x3

    new-array v7, v7, [I

    const/4 v9, 0x0

    .line 1027
    const/16 v10, 0x3025

    aput v10, v7, v9

    const/4 v9, 0x2

    const/16 v10, 0x3038

    aput v10, v7, v9

    .line 1028
    array-length v9, v8

    const/4 v10, 0x1

    new-array v10, v10, [I

    .line 1025
    invoke-interface/range {v5 .. v10}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 1029
    const/4 v7, 0x0

    aget-object v69, v8, v7

    .line 1032
    .local v69, config:Ljavax/microedition/khronos/egl/EGLConfig;
    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    const/4 v8, 0x0

    .line 1031
    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v69

    move-object v3, v7

    move-object v4, v8

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    .end local v8           #configs:[Ljavax/microedition/khronos/egl/EGLConfig;
    move-result-object v83

    .line 1034
    .local v83, eglContext:Ljavax/microedition/khronos/egl/EGLContext;
    const/4 v7, 0x0

    .line 1033
    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v69

    move-object/from16 v3, p3

    move-object v4, v7

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v171

    .line 1035
    .local v171, surface:Ljavax/microedition/khronos/egl/EGLSurface;
    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v171

    move-object/from16 v3, v171

    move-object/from16 v4, v83

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1036
    invoke-virtual/range {v83 .. v83}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v9

    check-cast v9, Ljavax/microedition/khronos/opengles/GL11;

    .line 1039
    .local v9, gl:Ljavax/microedition/khronos/opengles/GL11;
    const/16 v7, 0xbd0

    invoke-interface {v9, v7}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    .line 1040
    const/16 v7, 0xc50

    const/16 v8, 0x1101

    invoke-interface {v9, v7, v8}, Ljavax/microedition/khronos/opengles/GL11;->glHint(II)V

    .line 1041
    const/16 v7, 0xde1

    invoke-interface {v9, v7}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 1042
    const/16 v7, 0x302

    const/16 v8, 0x303

    invoke-interface {v9, v7, v8}, Ljavax/microedition/khronos/opengles/GL11;->glBlendFunc(II)V

    .line 1044
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move v1, v7

    move v2, v8

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glViewport(IIII)V

    .line 1045
    const/16 v7, 0x1701

    invoke-interface {v9, v7}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 1046
    invoke-interface {v9}, Ljavax/microedition/khronos/opengles/GL11;->glLoadIdentity()V

    .line 1047
    const/4 v10, 0x0

    move/from16 v0, p4

    int-to-float v0, v0

    move v11, v0

    const/4 v12, 0x0

    move/from16 v0, p5

    int-to-float v0, v0

    move v13, v0

    const/4 v14, 0x0

    const/high16 v15, 0x3f80

    invoke-interface/range {v9 .. v15}, Ljavax/microedition/khronos/opengles/GL11;->glOrthof(FFFFFF)V

    .line 1048
    const/16 v7, 0x1700

    invoke-interface {v9, v7}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 1049
    invoke-interface {v9}, Ljavax/microedition/khronos/opengles/GL11;->glLoadIdentity()V

    .line 1051
    const v7, 0x8074

    invoke-interface {v9, v7}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    .line 1052
    const v7, 0x8078

    invoke-interface {v9, v7}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    .line 1053
    const/4 v7, 0x0

    const/high16 v8, 0x3f80

    const/4 v10, 0x0

    const/high16 v11, 0x3f80

    invoke-interface {v9, v7, v8, v10, v11}, Ljavax/microedition/khronos/opengles/GL11;->glClearColor(FFFF)V

    .line 1056
    new-instance v42, Lcom/jjcgames/android/airhockey/Game$Texture;

    const-string v7, "table"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move-object v1, v7

    move v2, v8

    move/from16 v3, v162

    invoke-static {v0, v1, v2, v3}, Lcom/jjcgames/android/airhockey/Game;->getBitmap(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object/from16 v0, v42

    move-object v1, v9

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/jjcgames/android/airhockey/Game$Texture;-><init>(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;)V

    .line 1057
    .local v42, tableTexture:Lcom/jjcgames/android/airhockey/Game$Texture;
    const/4 v7, 0x0

    invoke-static {v9, v7}, Lcom/jjcgames/android/airhockey/Game;->setTextureParams(Ljavax/microedition/khronos/opengles/GL10;Z)V

    .line 1059
    new-instance v109, Lcom/jjcgames/android/airhockey/Game$Texture;

    const-string v7, "mallet"

    const/4 v8, 0x1

    move-object/from16 v0, p1

    move-object v1, v7

    move v2, v8

    move/from16 v3, v162

    invoke-static {v0, v1, v2, v3}, Lcom/jjcgames/android/airhockey/Game;->getBitmap(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object/from16 v0, v109

    move-object v1, v9

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/jjcgames/android/airhockey/Game$Texture;-><init>(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;)V

    .line 1060
    .local v109, malletTexture:Lcom/jjcgames/android/airhockey/Game$Texture;
    const/4 v7, 0x1

    invoke-static {v9, v7}, Lcom/jjcgames/android/airhockey/Game;->setTextureParams(Ljavax/microedition/khronos/opengles/GL10;Z)V

    .line 1062
    new-instance v149, Lcom/jjcgames/android/airhockey/Game$Texture;

    const-string v7, "puck"

    const/4 v8, 0x1

    move-object/from16 v0, p1

    move-object v1, v7

    move v2, v8

    move/from16 v3, v162

    invoke-static {v0, v1, v2, v3}, Lcom/jjcgames/android/airhockey/Game;->getBitmap(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object/from16 v0, v149

    move-object v1, v9

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/jjcgames/android/airhockey/Game$Texture;-><init>(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;)V

    .line 1063
    .local v149, puckTexture:Lcom/jjcgames/android/airhockey/Game$Texture;
    const/4 v7, 0x1

    invoke-static {v9, v7}, Lcom/jjcgames/android/airhockey/Game;->setTextureParams(Ljavax/microedition/khronos/opengles/GL10;Z)V

    .line 1064
    const/4 v7, 0x2

    move v0, v7

    new-array v0, v0, [Lcom/jjcgames/android/airhockey/Game$Texture;

    move-object/from16 v167, v0

    .line 1065
    .local v167, scoreTextures:[Lcom/jjcgames/android/airhockey/Game$Texture;
    const/16 v100, 0x0

    .local v100, i:I
    :goto_1
    move-object/from16 v0, v167

    array-length v0, v0

    move v7, v0

    move/from16 v0, v100

    move v1, v7

    if-lt v0, v1, :cond_8

    .line 1069
    const/4 v7, 0x2

    move v0, v7

    new-array v0, v0, [Lcom/jjcgames/android/airhockey/Game$Texture;

    move-object/from16 v90, v0

    .line 1070
    .local v90, gameEndTextures:[Lcom/jjcgames/android/airhockey/Game$Texture;
    const/16 v100, 0x0

    :goto_2
    move-object/from16 v0, v90

    array-length v0, v0

    move v7, v0

    move/from16 v0, v100

    move v1, v7

    if-lt v0, v1, :cond_9

    .line 1075
    const/4 v7, 0x3

    move v0, v7

    new-array v0, v0, [I

    move-object/from16 v67, v0

    .line 1076
    .local v67, buffers:[I
    move-object/from16 v0, v67

    array-length v0, v0

    move v7, v0

    const/4 v8, 0x0

    move-object v0, v9

    move v1, v7

    move-object/from16 v2, v67

    move v3, v8

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    .line 1078
    const/4 v7, 0x0

    aget v155, v67, v7

    .line 1079
    .local v155, quadVertexBuffer:I
    const/4 v7, 0x1

    aget v154, v67, v7

    .line 1080
    .local v154, quadTexBuffer:I
    const/4 v7, 0x2

    aget v151, v67, v7

    .line 1082
    .local v151, quadIndexBuffer:I
    const/16 v63, 0x4

    .line 1083
    .local v63, QUAD_SIZE:I
    const/16 v61, 0x3

    .line 1085
    .local v61, COORDS_PER_VERTEX:I
    const/16 v7, 0x30

    invoke-static {v7}, Lcom/jjcgames/android/airhockey/Game;->nativeDirectByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 1086
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v156

    .line 1087
    .local v156, quadVertices:Ljava/nio/FloatBuffer;
    const/16 v64, 0x2

    .line 1089
    .local v64, TEXCOORDS_PER_VERTEX:I
    const/16 v7, 0x20

    invoke-static {v7}, Lcom/jjcgames/android/airhockey/Game;->nativeDirectByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 1090
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v153

    .line 1092
    .local v153, quadTex:Ljava/nio/FloatBuffer;
    const/16 v7, 0x8

    invoke-static {v7}, Lcom/jjcgames/android/airhockey/Game;->nativeDirectByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v152

    .line 1093
    .local v152, quadIndices:Ljava/nio/ShortBuffer;
    const/16 v7, 0xc

    new-array v7, v7, [F

    fill-array-data v7, :array_0

    move-object/from16 v0, v156

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 1099
    const/4 v7, 0x0

    move-object/from16 v0, v156

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1100
    const/16 v7, 0x8

    new-array v7, v7, [F

    fill-array-data v7, :array_1

    move-object/from16 v0, v153

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 1106
    const/4 v7, 0x0

    move-object/from16 v0, v153

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1107
    const/4 v7, 0x4

    new-array v7, v7, [S

    const/4 v8, 0x1

    .line 1108
    const/4 v10, 0x1

    aput-short v10, v7, v8

    const/4 v8, 0x2

    const/4 v10, 0x2

    aput-short v10, v7, v8

    const/4 v8, 0x3

    const/4 v10, 0x3

    aput-short v10, v7, v8

    .line 1107
    move-object/from16 v0, v152

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 1110
    const/4 v7, 0x0

    move-object/from16 v0, v152

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 1112
    const/16 v62, 0x4

    .line 1113
    .local v62, FLOAT_BYTES:I
    const v7, 0x8892

    move-object v0, v9

    move v1, v7

    move/from16 v2, v155

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 1114
    const v7, 0x8892

    .line 1115
    invoke-virtual/range {v156 .. v156}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v8

    mul-int/lit8 v8, v8, 0x4

    .line 1116
    const v10, 0x88e4

    .line 1114
    move-object v0, v9

    move v1, v7

    move v2, v8

    move-object/from16 v3, v156

    move v4, v10

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 1117
    const/4 v7, 0x3

    const/16 v8, 0x1406

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface {v9, v7, v8, v10, v11}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    .line 1119
    const v7, 0x8892

    move-object v0, v9

    move v1, v7

    move/from16 v2, v154

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 1120
    const v7, 0x8892

    .line 1121
    invoke-virtual/range {v153 .. v153}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v8

    mul-int/lit8 v8, v8, 0x4

    .line 1122
    const v10, 0x88e4

    .line 1120
    move-object v0, v9

    move v1, v7

    move v2, v8

    move-object/from16 v3, v153

    move v4, v10

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 1123
    const/4 v7, 0x2

    const/16 v8, 0x1406

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface {v9, v7, v8, v10, v11}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 1125
    const v7, 0x8892

    const/4 v8, 0x0

    invoke-interface {v9, v7, v8}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 1127
    const v7, 0x8893

    move-object v0, v9

    move v1, v7

    move/from16 v2, v151

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 1128
    const v7, 0x8893

    .line 1129
    invoke-virtual/range {v152 .. v152}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    .line 1130
    const v10, 0x88e4

    .line 1128
    move-object v0, v9

    move v1, v7

    move v2, v8

    move-object/from16 v3, v152

    move v4, v10

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 1133
    const/16 v7, 0x2300

    .line 1134
    const/16 v8, 0x2200

    const/16 v10, 0x1e01

    .line 1133
    invoke-interface {v9, v7, v8, v10}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvx(III)V

    .line 1137
    new-instance v169, Landroid/media/SoundPool;

    const/16 v7, 0x20

    const/4 v8, 0x3

    const/4 v10, 0x0

    move-object/from16 v0, v169

    move v1, v7

    move v2, v8

    move v3, v10

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    .line 1143
    .local v169, sp:Landroid/media/SoundPool;
    const/16 v78, 0x2

    .line 1145
    .local v78, digits:I
    new-instance v136, Ljava/util/ArrayList;

    invoke-direct/range {v136 .. v136}, Ljava/util/ArrayList;-><init>()V

    .line 1146
    .local v136, puckMallet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v142, Ljava/util/ArrayList;

    invoke-direct/range {v142 .. v142}, Ljava/util/ArrayList;-><init>()V

    .line 1147
    .local v142, puckRail:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v93, Ljava/util/ArrayList;

    invoke-direct/range {v93 .. v93}, Ljava/util/ArrayList;-><init>()V

    .line 1149
    .local v93, goal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-class v7, Lcom/jjcgames/android/airhockey/R$raw;

    invoke-virtual {v7}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v85

    .line 1150
    .local v85, fields:[Ljava/lang/reflect/Field;
    move-object/from16 v0, v85

    array-length v0, v0

    move v7, v0

    const/4 v8, 0x0

    .end local v100           #i:I
    :goto_3
    if-lt v8, v7, :cond_a

    .line 1175
    move-object/from16 v0, p1

    move-object/from16 v1, v169

    move-object/from16 v2, v142

    invoke-static {v0, v1, v2}, Lcom/jjcgames/android/airhockey/Game;->loadAll(Landroid/content/Context;Landroid/media/SoundPool;Ljava/util/ArrayList;)[I

    move-result-object v144

    .line 1179
    .local v144, puckRailSounds:[I
    move-object/from16 v139, v144

    .line 1180
    .local v139, puckMalletSounds:[I
    move-object/from16 v0, p1

    move-object/from16 v1, v169

    move-object/from16 v2, v93

    invoke-static {v0, v1, v2}, Lcom/jjcgames/android/airhockey/Game;->loadAll(Landroid/content/Context;Landroid/media/SoundPool;Ljava/util/ArrayList;)[I

    move-result-object v98

    .line 1189
    .local v98, goalSounds:[I
    const v7, 0x431f5f4f

    cmpl-float v7, p6, v7

    if-nez v7, :cond_0

    const v7, 0x43a06b88

    cmpl-float v7, p7, v7

    if-nez v7, :cond_0

    .line 1190
    const p7, 0x4338ba2e

    move/from16 p6, p7

    .line 1194
    :cond_0
    const v7, 0x3e912231

    .line 1196
    if-eqz v162, :cond_f

    move/from16 v8, p6

    .line 1194
    :goto_4
    mul-float/2addr v7, v8

    .line 1197
    if-eqz v162, :cond_10

    move/from16 v8, p4

    :goto_5
    int-to-float v8, v8

    .line 1194
    div-float/2addr v7, v8

    .line 1198
    const v8, 0x3f5d9d52

    .line 1194
    div-float/2addr v7, v8

    .line 1199
    const/high16 v8, 0x4000

    .line 1194
    mul-float v86, v7, v8

    .line 1202
    .local v86, fingerMalletOffset:F
    if-eqz v162, :cond_11

    move/from16 v7, p4

    :goto_6
    int-to-float v7, v7

    const v8, 0x3e555555

    mul-float/2addr v7, v8

    .line 1201
    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jjcgames/android/airhockey/Game;->touchJumpThresholdPixelsSquare:F

    .line 1203
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jjcgames/android/airhockey/Game;->touchJumpThresholdPixelsSquare:F

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jjcgames/android/airhockey/Game;->touchJumpThresholdPixelsSquare:F

    move v8, v0

    mul-float/2addr v7, v8

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jjcgames/android/airhockey/Game;->touchJumpThresholdPixelsSquare:F

    .line 1206
    const-string v7, "players"

    const/4 v8, 0x1

    move-object/from16 v0, p8

    move-object v1, v7

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_12

    const/4 v7, 0x1

    :goto_7
    move v0, v7

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jjcgames/android/airhockey/Game;->twoPlayer:Z

    .line 1207
    const-string v7, "player_id"

    const/4 v8, -0x1

    move-object/from16 v0, p8

    move-object v1, v7

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v124

    .line 1209
    .local v124, playerID:I
    const-string v7, "match_games"

    const/4 v8, 0x1

    move-object/from16 v0, p8

    move-object v1, v7

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/lit8 v13, v7, 0x1

    .line 1210
    .local v13, matchWinningGames:I
    const-string v7, "cpu_level"

    const/16 v8, 0xc8

    move-object/from16 v0, p8

    move-object v1, v7

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v73

    .line 1211
    .local v73, cpuLevel:I
    const-string v7, "puck_speed_custom"

    .line 1212
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->twoPlayer:Z

    move v8, v0

    if-eqz v8, :cond_13

    const/high16 v8, 0x4000

    .line 1211
    :goto_8
    move-object/from16 v0, p8

    move-object v1, v7

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v146

    .line 1213
    .local v146, puckSpeedLimit:F
    const-string v7, "sound"

    const/4 v8, 0x0

    move-object/from16 v0, p8

    move-object v1, v7

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v168

    .line 1216
    .local v168, sound:Z
    const/4 v7, 0x2

    move v0, v7

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 1217
    .local v19, score:[I
    const/4 v7, 0x2

    move v0, v7

    new-array v0, v0, [I

    move-object/from16 v92, v0

    .line 1218
    .local v92, games:[I
    const/4 v7, 0x2

    move v0, v7

    new-array v0, v0, [I

    move-object/from16 v110, v0

    .line 1219
    .local v110, matchGoals:[I
    const/16 v91, -0x1

    .line 1220
    .local v91, gameWinner:I
    const/16 v111, -0x1

    .line 1221
    .local v111, matchWinner:I
    const/16 v160, 0x0

    .line 1222
    .local v160, readyToContinue:Z
    const/16 v190, 0x0

    .line 1223
    .local v190, winScreenInitiallyTouched:Z
    const/16 v89, 0x0

    .line 1225
    .local v89, frameNumber:I
    const/16 v70, 0x0

    .line 1230
    .local v70, control:I
    const/16 v71, 0x1

    .line 1231
    .local v71, cpu:I
    const/16 v99, 0x0

    .line 1238
    .local v99, human:I
    const/4 v7, 0x2

    move v0, v7

    new-array v0, v0, [Landroid/graphics/PointF;

    move-object/from16 v123, v0

    .line 1239
    .local v123, player:[Landroid/graphics/PointF;
    const/16 v100, 0x0

    .restart local v100       #i:I
    :goto_9
    move-object/from16 v0, v123

    array-length v0, v0

    move v7, v0

    move/from16 v0, v100

    move v1, v7

    if-lt v0, v1, :cond_14

    .line 1242
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->twoPlayer:Z

    move v7, v0

    if-nez v7, :cond_1

    .line 1243
    const/4 v7, 0x1

    aget-object v7, v123, v7

    invoke-static {v7}, Lcom/jjcgames/android/airhockey/Game;->initialCPUMalletPosition(Landroid/graphics/PointF;)V

    .line 1245
    :cond_1
    move-object/from16 v0, v123

    array-length v0, v0

    move v7, v0

    move v0, v7

    new-array v0, v0, [Landroid/graphics/PointF;

    move-object/from16 v125, v0

    .line 1246
    .local v125, playerLast:[Landroid/graphics/PointF;
    const/16 v100, 0x0

    :goto_a
    move-object/from16 v0, v125

    array-length v0, v0

    move v7, v0

    move/from16 v0, v100

    move v1, v7

    if-lt v0, v1, :cond_15

    .line 1254
    move-object/from16 v0, v123

    array-length v0, v0

    move v7, v0

    move v0, v7

    new-array v0, v0, [Landroid/graphics/PointF;

    move-object/from16 v126, v0

    .line 1255
    .local v126, playerLastLast:[Landroid/graphics/PointF;
    const/16 v100, 0x0

    :goto_b
    move-object/from16 v0, v126

    array-length v0, v0

    move v7, v0

    move/from16 v0, v100

    move v1, v7

    if-lt v0, v1, :cond_16

    .line 1259
    new-instance v21, Landroid/graphics/PointF;

    sget-object v7, Lcom/jjcgames/android/airhockey/Game;->initialPuckPosition:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    sget-object v8, Lcom/jjcgames/android/airhockey/Game;->initialPuckPosition:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v21

    move v1, v7

    move v2, v8

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1260
    .local v21, puck:Landroid/graphics/PointF;
    new-instance v134, Landroid/graphics/PointF;

    invoke-direct/range {v134 .. v134}, Landroid/graphics/PointF;-><init>()V

    .line 1261
    .local v134, puckLast:Landroid/graphics/PointF;
    move-object/from16 v0, v134

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 1262
    new-instance v135, Landroid/graphics/PointF;

    invoke-direct/range {v135 .. v135}, Landroid/graphics/PointF;-><init>()V

    .line 1263
    .local v135, puckLastLast:Landroid/graphics/PointF;
    move-object/from16 v0, v135

    move-object/from16 v1, v134

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 1266
    move-object/from16 v0, v123

    array-length v0, v0

    move v7, v0

    move v0, v7

    new-array v0, v0, [Landroid/graphics/PointF;

    move-object/from16 v129, v0

    .line 1267
    .local v129, playerV:[Landroid/graphics/PointF;
    const/16 v100, 0x0

    :goto_c
    move-object/from16 v0, v129

    array-length v0, v0

    move v7, v0

    move/from16 v0, v100

    move v1, v7

    if-lt v0, v1, :cond_17

    .line 1270
    new-instance v23, Landroid/graphics/PointF;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v23

    move v1, v7

    move v2, v8

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1271
    .local v23, puckV:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Lcom/jjcgames/android/airhockey/Game;->initialPuckVelocity(Landroid/graphics/PointF;)V

    .line 1274
    const/16 v161, 0x1

    .line 1275
    .local v161, retarget:Z
    new-instance v173, Landroid/graphics/PointF;

    const/4 v7, 0x1

    aget-object v7, v123, v7

    iget v7, v7, Landroid/graphics/PointF;->x:F

    const/4 v8, 0x1

    aget-object v8, v123, v8

    iget v8, v8, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v173

    move v1, v7

    move v2, v8

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1276
    .local v173, target:Landroid/graphics/PointF;
    const/16 v130, 0x0

    .line 1277
    .local v130, pointStartCountdown:F
    const/16 v159, 0x0

    .line 1279
    .local v159, reactionTimeLeft:F
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10

    const-wide/high16 v14, 0x3fe0

    cmpg-double v7, v10, v14

    if-gez v7, :cond_2

    .line 1280
    sget-object v7, Lcom/jjcgames/android/airhockey/Game;->initialPuckPosition:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    neg-float v7, v7

    move v0, v7

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 1283
    :cond_2
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_3

    .line 1284
    const/high16 v130, 0x3f80

    .line 1289
    :cond_3
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/jjcgames/android/airhockey/Game;->stateReader(Landroid/content/Context;)Ljava/io/BufferedReader;

    move-result-object v170

    .line 1290
    .local v170, state:Ljava/io/BufferedReader;
    invoke-virtual/range {v170 .. v170}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v66

    .line 1291
    .local v66, activity:Ljava/lang/String;
    const-class v7, Lcom/jjcgames/android/airhockey/GameActivity;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v66

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1292
    invoke-virtual/range {v170 .. v170}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_18

    const/4 v7, 0x1

    :goto_d
    move v0, v7

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jjcgames/android/airhockey/Game;->twoPlayer:Z

    .line 1293
    invoke-virtual/range {v170 .. v170}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 1294
    invoke-virtual/range {v170 .. v170}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v146

    .line 1295
    invoke-virtual/range {v170 .. v170}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v168

    .line 1296
    const/4 v7, 0x0

    invoke-virtual/range {v170 .. v170}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v92, v7

    .line 1297
    const/4 v7, 0x1

    invoke-virtual/range {v170 .. v170}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v92, v7

    .line 1298
    const/4 v7, 0x0

    invoke-virtual/range {v170 .. v170}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v19, v7

    .line 1299
    const/4 v7, 0x1

    invoke-virtual/range {v170 .. v170}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v19, v7

    .line 1300
    const/4 v7, 0x0

    invoke-virtual/range {v170 .. v170}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v110, v7

    .line 1301
    const/4 v7, 0x1

    invoke-virtual/range {v170 .. v170}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v110, v7

    .line 1302
    invoke-virtual/range {v170 .. v170}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    move v0, v7

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 1303
    invoke-virtual/range {v170 .. v170}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    move v0, v7

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 1304
    invoke-virtual/range {v170 .. v170}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    move v0, v7

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 1305
    invoke-virtual/range {v170 .. v170}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    move v0, v7

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 1306
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->twoPlayer:Z

    move v7, v0

    if-nez v7, :cond_4

    .line 1307
    invoke-virtual/range {v170 .. v170}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v124

    .line 1308
    invoke-virtual/range {v170 .. v170}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v73

    .line 1309
    const/4 v7, 0x1

    aget-object v7, v123, v7

    invoke-virtual/range {v170 .. v170}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, v7, Landroid/graphics/PointF;->x:F

    .line 1310
    const/4 v7, 0x1

    aget-object v7, v123, v7

    invoke-virtual/range {v170 .. v170}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, v7, Landroid/graphics/PointF;->y:F

    .line 1311
    const/4 v7, 0x1

    aget-object v7, v129, v7

    invoke-virtual/range {v170 .. v170}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, v7, Landroid/graphics/PointF;->x:F

    .line 1312
    const/4 v7, 0x1

    aget-object v7, v129, v7

    invoke-virtual/range {v170 .. v170}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, v7, Landroid/graphics/PointF;->y:F

    .line 1313
    invoke-virtual/range {v170 .. v170}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v161

    .line 1314
    invoke-virtual/range {v170 .. v170}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    move v0, v7

    move-object/from16 v1, v173

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 1315
    invoke-virtual/range {v170 .. v170}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    move v0, v7

    move-object/from16 v1, v173

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 1316
    invoke-virtual/range {v170 .. v170}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v130

    .line 1317
    invoke-virtual/range {v170 .. v170}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v159

    .line 1323
    :cond_4
    const/16 v100, 0x0

    :goto_e
    move-object/from16 v0, v19

    array-length v0, v0

    move v7, v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_5

    move/from16 v0, v100

    move v1, v7

    if-lt v0, v1, :cond_19

    .line 1355
    .end local v66           #activity:Ljava/lang/String;
    .end local v170           #state:Ljava/io/BufferedReader;
    :cond_5
    :goto_f
    const-string v7, "state"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 1358
    mul-float v147, v146, v146

    .line 1360
    .local v147, puckSpeedLimitSquare:F
    move/from16 v0, v73

    int-to-float v0, v0

    move v7, v0

    const/high16 v8, 0x447a

    div-float v74, v7, v8

    .line 1361
    .local v74, cpuLevelF:F
    invoke-static/range {v73 .. v73}, Lcom/jjcgames/android/airhockey/Game;->cpuMalletSpeed(I)F

    move-result v114

    .line 1363
    .local v114, maxCPUMalletSpeed:F
    mul-float v115, v114, v114

    .line 1364
    .local v115, maxCPUMalletSpeedSquare:F
    move/from16 v112, v114

    .line 1366
    .local v112, maxCPUMalletAcceleration:F
    mul-float v113, v112, v112

    .line 1367
    .local v113, maxCPUMalletAccelerationSquare:F
    const/high16 v7, 0x3f80

    sub-float v7, v7, v74

    const/high16 v8, 0x3e80

    mul-float v72, v7, v8

    .line 1368
    .local v72, cpuEstimationAccuracyFudge:F
    const/high16 v7, 0x3f80

    sub-float v7, v7, v74

    const v8, 0x3e4ccccd

    mul-float v75, v7, v8

    .local v75, cpuReactionTime:F
    move-object v14, v9

    move/from16 v15, v162

    move/from16 v16, p4

    move/from16 v17, p5

    move-object/from16 v18, v167

    .line 1370
    invoke-static/range {v14 .. v19}, Lcom/jjcgames/android/airhockey/Game;->setupScoreTextures(Ljavax/microedition/khronos/opengles/GL10;ZII[Lcom/jjcgames/android/airhockey/Game$Texture;[I)V

    .line 1372
    const/high16 v7, 0x3e00

    move/from16 v0, p4

    int-to-float v0, v0

    move v8, v0

    mul-float/2addr v7, v8

    .line 1373
    const/4 v8, 0x0

    aget-object v8, v167, v8

    iget v8, v8, Lcom/jjcgames/android/airhockey/Game$Texture;->width:I

    int-to-float v8, v8

    const/high16 v10, 0x4000

    div-float/2addr v8, v10

    .line 1372
    sub-float/2addr v7, v8

    move v0, v7

    float-to-int v0, v0

    move/from16 v163, v0

    .line 1374
    .local v163, scorePosition0x:I
    const v7, 0x3ccccccd

    move/from16 v0, p5

    int-to-float v0, v0

    move v8, v0

    mul-float/2addr v7, v8

    .line 1375
    const/4 v8, 0x0

    aget-object v8, v167, v8

    iget v8, v8, Lcom/jjcgames/android/airhockey/Game$Texture;->height:I

    int-to-float v8, v8

    const/high16 v10, 0x4000

    div-float/2addr v8, v10

    .line 1374
    sub-float/2addr v7, v8

    move v0, v7

    float-to-int v0, v0

    move/from16 v164, v0

    .line 1376
    .local v164, scorePosition0y:I
    const/high16 v7, 0x3f60

    move/from16 v0, p4

    int-to-float v0, v0

    move v8, v0

    mul-float/2addr v7, v8

    .line 1377
    const/4 v8, 0x1

    aget-object v8, v167, v8

    iget v8, v8, Lcom/jjcgames/android/airhockey/Game$Texture;->width:I

    int-to-float v8, v8

    const/high16 v10, 0x4000

    div-float/2addr v8, v10

    .line 1376
    sub-float/2addr v7, v8

    move v0, v7

    float-to-int v0, v0

    move/from16 v165, v0

    .line 1378
    .local v165, scorePosition1x:I
    const v7, 0x3f79999a

    move/from16 v0, p5

    int-to-float v0, v0

    move v8, v0

    mul-float/2addr v7, v8

    .line 1379
    const/4 v8, 0x1

    aget-object v8, v167, v8

    iget v8, v8, Lcom/jjcgames/android/airhockey/Game$Texture;->height:I

    int-to-float v8, v8

    const/high16 v10, 0x4000

    div-float/2addr v8, v10

    .line 1378
    sub-float/2addr v7, v8

    move v0, v7

    float-to-int v0, v0

    move/from16 v166, v0

    .line 1383
    .local v166, scorePosition1y:I
    new-instance v28, Landroid/graphics/PointF;

    invoke-direct/range {v28 .. v28}, Landroid/graphics/PointF;-><init>()V

    .line 1384
    .local v28, p:Landroid/graphics/PointF;
    new-instance v30, Landroid/graphics/PointF;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v30

    move v1, v7

    move v2, v8

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1388
    .local v30, pZero:Landroid/graphics/PointF;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1394
    const/16 v185, 0x0

    .line 1397
    .local v185, touchedThisFrame:Z
    const v84, 0x3c888889

    .line 1398
    .local v84, elapsedTime:F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const/high16 v7, 0x447a

    mul-float v7, v7, v84

    float-to-long v14, v7

    sub-long v103, v10, v14

    .line 1399
    .local v103, lastT:J
    :goto_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->threadFinishing:Z

    move v7, v0

    if-eqz v7, :cond_1c

    .line 2219
    invoke-static {v9}, Lcom/jjcgames/android/airhockey/Game$Texture;->deleteAll(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 2225
    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v8, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v9, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 2224
    .end local v9           #gl:Ljavax/microedition/khronos/opengles/GL11;
    invoke-interface {v5, v6, v7, v8, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 2226
    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v171

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 2227
    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v83

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 2228
    invoke-interface {v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 2231
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->movingOn:Z

    move v7, v0

    if-nez v7, :cond_89

    .line 2233
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/jjcgames/android/airhockey/Game;->stateWriter(Landroid/content/Context;)Ljava/io/Writer;

    move-result-object v170

    .line 2235
    .local v170, state:Ljava/io/Writer;
    new-instance v7, Ljava/lang/StringBuilder;

    const-class v8, Lcom/jjcgames/android/airhockey/GameActivity;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2236
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->twoPlayer:Z

    move v8, v0

    if-eqz v8, :cond_88

    const-string v8, "2"

    :goto_11
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2237
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2238
    move-object v0, v7

    move/from16 v1, v146

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2239
    move-object v0, v7

    move/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2240
    const/4 v8, 0x0

    aget v8, v92, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2241
    const/4 v8, 0x1

    aget v8, v92, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2242
    const/4 v8, 0x0

    aget v8, v19, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2243
    const/4 v8, 0x1

    aget v8, v19, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2244
    const/4 v8, 0x0

    aget v8, v110, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2245
    const/4 v8, 0x1

    aget v8, v110, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2246
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2247
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2248
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2249
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2235
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2234
    move-object/from16 v0, v170

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2250
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->twoPlayer:Z

    move v7, v0

    if-nez v7, :cond_6

    .line 2252
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static/range {v124 .. v124}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2253
    move-object v0, v7

    move/from16 v1, v73

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2254
    const/4 v8, 0x1

    aget-object v8, v123, v8

    iget v8, v8, Landroid/graphics/PointF;->x:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2255
    const/4 v8, 0x1

    aget-object v8, v123, v8

    iget v8, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2256
    const/4 v8, 0x1

    aget-object v8, v129, v8

    iget v8, v8, Landroid/graphics/PointF;->x:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2257
    const/4 v8, 0x1

    aget-object v8, v129, v8

    iget v8, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2258
    move-object v0, v7

    move/from16 v1, v161

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2259
    move-object/from16 v0, v173

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2260
    move-object/from16 v0, v173

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2261
    move-object v0, v7

    move/from16 v1, v130

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2262
    move-object v0, v7

    move/from16 v1, v159

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2252
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2251
    move-object/from16 v0, v170

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2264
    :cond_6
    invoke-virtual/range {v170 .. v170}, Ljava/io/Writer;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 2279
    .end local v170           #state:Ljava/io/Writer;
    :goto_12
    sget-object v7, Lcom/jjcgames/android/airhockey/Game;->eglSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v7}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2281
    const-string v7, "Air Hockey"

    const-string v8, "Game thread finishing."

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
    return-void

    .line 1012
    .end local v5           #egl:Ljavax/microedition/khronos/egl/EGL10;
    .end local v6           #display:Ljavax/microedition/khronos/egl/EGLDisplay;
    .end local v13           #matchWinningGames:I
    .end local v19           #score:[I
    .end local v21           #puck:Landroid/graphics/PointF;
    .end local v23           #puckV:Landroid/graphics/PointF;
    .end local v28           #p:Landroid/graphics/PointF;
    .end local v30           #pZero:Landroid/graphics/PointF;
    .end local v42           #tableTexture:Lcom/jjcgames/android/airhockey/Game$Texture;
    .end local v61           #COORDS_PER_VERTEX:I
    .end local v62           #FLOAT_BYTES:I
    .end local v63           #QUAD_SIZE:I
    .end local v64           #TEXCOORDS_PER_VERTEX:I
    .end local v67           #buffers:[I
    .end local v69           #config:Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v70           #control:I
    .end local v71           #cpu:I
    .end local v72           #cpuEstimationAccuracyFudge:F
    .end local v73           #cpuLevel:I
    .end local v74           #cpuLevelF:F
    .end local v75           #cpuReactionTime:F
    .end local v78           #digits:I
    .end local v83           #eglContext:Ljavax/microedition/khronos/egl/EGLContext;
    .end local v84           #elapsedTime:F
    .end local v85           #fields:[Ljava/lang/reflect/Field;
    .end local v86           #fingerMalletOffset:F
    .end local v89           #frameNumber:I
    .end local v90           #gameEndTextures:[Lcom/jjcgames/android/airhockey/Game$Texture;
    .end local v91           #gameWinner:I
    .end local v92           #games:[I
    .end local v93           #goal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v98           #goalSounds:[I
    .end local v99           #human:I
    .end local v100           #i:I
    .end local v103           #lastT:J
    .end local v109           #malletTexture:Lcom/jjcgames/android/airhockey/Game$Texture;
    .end local v110           #matchGoals:[I
    .end local v111           #matchWinner:I
    .end local v112           #maxCPUMalletAcceleration:F
    .end local v113           #maxCPUMalletAccelerationSquare:F
    .end local v114           #maxCPUMalletSpeed:F
    .end local v115           #maxCPUMalletSpeedSquare:F
    .end local v123           #player:[Landroid/graphics/PointF;
    .end local v124           #playerID:I
    .end local v125           #playerLast:[Landroid/graphics/PointF;
    .end local v126           #playerLastLast:[Landroid/graphics/PointF;
    .end local v129           #playerV:[Landroid/graphics/PointF;
    .end local v130           #pointStartCountdown:F
    .end local v134           #puckLast:Landroid/graphics/PointF;
    .end local v135           #puckLastLast:Landroid/graphics/PointF;
    .end local v136           #puckMallet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v139           #puckMalletSounds:[I
    .end local v142           #puckRail:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v144           #puckRailSounds:[I
    .end local v146           #puckSpeedLimit:F
    .end local v147           #puckSpeedLimitSquare:F
    .end local v149           #puckTexture:Lcom/jjcgames/android/airhockey/Game$Texture;
    .end local v151           #quadIndexBuffer:I
    .end local v152           #quadIndices:Ljava/nio/ShortBuffer;
    .end local v153           #quadTex:Ljava/nio/FloatBuffer;
    .end local v154           #quadTexBuffer:I
    .end local v155           #quadVertexBuffer:I
    .end local v156           #quadVertices:Ljava/nio/FloatBuffer;
    .end local v159           #reactionTimeLeft:F
    .end local v160           #readyToContinue:Z
    .end local v161           #retarget:Z
    .end local v162           #rotate:Z
    .end local v163           #scorePosition0x:I
    .end local v164           #scorePosition0y:I
    .end local v165           #scorePosition1x:I
    .end local v166           #scorePosition1y:I
    .end local v167           #scoreTextures:[Lcom/jjcgames/android/airhockey/Game$Texture;
    .end local v168           #sound:Z
    .end local v169           #sp:Landroid/media/SoundPool;
    .end local v171           #surface:Ljavax/microedition/khronos/egl/EGLSurface;
    .end local v173           #target:Landroid/graphics/PointF;
    .end local v185           #touchedThisFrame:Z
    .end local v190           #winScreenInitiallyTouched:Z
    :cond_7
    const/4 v7, 0x0

    move/from16 v162, v7

    goto/16 :goto_0

    .line 1066
    .restart local v5       #egl:Ljavax/microedition/khronos/egl/EGL10;
    .restart local v6       #display:Ljavax/microedition/khronos/egl/EGLDisplay;
    .restart local v9       #gl:Ljavax/microedition/khronos/opengles/GL11;
    .restart local v42       #tableTexture:Lcom/jjcgames/android/airhockey/Game$Texture;
    .restart local v69       #config:Ljavax/microedition/khronos/egl/EGLConfig;
    .restart local v83       #eglContext:Ljavax/microedition/khronos/egl/EGLContext;
    .restart local v100       #i:I
    .restart local v109       #malletTexture:Lcom/jjcgames/android/airhockey/Game$Texture;
    .restart local v149       #puckTexture:Lcom/jjcgames/android/airhockey/Game$Texture;
    .restart local v162       #rotate:Z
    .restart local v167       #scoreTextures:[Lcom/jjcgames/android/airhockey/Game$Texture;
    .restart local v171       #surface:Ljavax/microedition/khronos/egl/EGLSurface;
    :cond_8
    new-instance v7, Lcom/jjcgames/android/airhockey/Game$Texture;

    invoke-direct {v7, v9}, Lcom/jjcgames/android/airhockey/Game$Texture;-><init>(Ljavax/microedition/khronos/opengles/GL10;)V

    aput-object v7, v167, v100

    .line 1067
    const/4 v7, 0x0

    invoke-static {v9, v7}, Lcom/jjcgames/android/airhockey/Game;->setTextureParams(Ljavax/microedition/khronos/opengles/GL10;Z)V

    .line 1065
    add-int/lit8 v100, v100, 0x1

    goto/16 :goto_1

    .line 1071
    .restart local v90       #gameEndTextures:[Lcom/jjcgames/android/airhockey/Game$Texture;
    :cond_9
    new-instance v7, Lcom/jjcgames/android/airhockey/Game$Texture;

    invoke-direct {v7, v9}, Lcom/jjcgames/android/airhockey/Game$Texture;-><init>(Ljavax/microedition/khronos/opengles/GL10;)V

    aput-object v7, v90, v100

    .line 1072
    const/4 v7, 0x0

    invoke-static {v9, v7}, Lcom/jjcgames/android/airhockey/Game;->setTextureParams(Ljavax/microedition/khronos/opengles/GL10;Z)V

    .line 1070
    add-int/lit8 v100, v100, 0x1

    goto/16 :goto_2

    .line 1150
    .end local v100           #i:I
    .restart local v61       #COORDS_PER_VERTEX:I
    .restart local v62       #FLOAT_BYTES:I
    .restart local v63       #QUAD_SIZE:I
    .restart local v64       #TEXCOORDS_PER_VERTEX:I
    .restart local v67       #buffers:[I
    .restart local v78       #digits:I
    .restart local v85       #fields:[Ljava/lang/reflect/Field;
    .restart local v93       #goal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v136       #puckMallet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v142       #puckRail:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v151       #quadIndexBuffer:I
    .restart local v152       #quadIndices:Ljava/nio/ShortBuffer;
    .restart local v153       #quadTex:Ljava/nio/FloatBuffer;
    .restart local v154       #quadTexBuffer:I
    .restart local v155       #quadVertexBuffer:I
    .restart local v156       #quadVertices:Ljava/nio/FloatBuffer;
    .restart local v169       #sp:Landroid/media/SoundPool;
    :cond_a
    aget-object v100, v85, v8

    .line 1151
    .local v100, i:Ljava/lang/reflect/Field;
    invoke-virtual/range {v100 .. v100}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v117

    .line 1152
    .local v117, name:Ljava/lang/String;
    invoke-virtual/range {v117 .. v117}, Ljava/lang/String;->length()I

    move-result v116

    .line 1153
    .local v116, n:I
    const/4 v10, 0x2

    move/from16 v0, v116

    move v1, v10

    if-ge v0, v1, :cond_c

    .line 1150
    :cond_b
    :goto_13
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 1156
    :cond_c
    const/4 v10, 0x0

    const/4 v11, 0x2

    sub-int v11, v116, v11

    move-object/from16 v0, v117

    move v1, v10

    move v2, v11

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v188

    .line 1158
    .local v188, type:Ljava/lang/String;
    const-string v10, "puckmallet"

    move-object/from16 v0, v188

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 1159
    move-object/from16 v65, v136

    .line 1168
    .local v65, a:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_14
    const/4 v10, 0x0

    :try_start_2
    move-object/from16 v0, v100

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v65

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_13

    .line 1169
    :catch_0
    move-exception v10

    move-object/from16 v82, v10

    .line 1170
    .local v82, e:Ljava/lang/IllegalArgumentException;
    sget-boolean v10, Lcom/jjcgames/android/airhockey/Game;->$assertionsDisabled:Z

    if-nez v10, :cond_b

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 1160
    .end local v65           #a:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v82           #e:Ljava/lang/IllegalArgumentException;
    :cond_d
    const-string v10, "puckrail"

    move-object/from16 v0, v188

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 1161
    move-object/from16 v65, v142

    .restart local v65       #a:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto :goto_14

    .line 1162
    .end local v65           #a:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_e
    const-string v10, "goal"

    move-object/from16 v0, v188

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1163
    move-object/from16 v65, v93

    .restart local v65       #a:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto :goto_14

    .line 1171
    :catch_1
    move-exception v10

    move-object/from16 v82, v10

    .line 1172
    .local v82, e:Ljava/lang/IllegalAccessException;
    sget-boolean v10, Lcom/jjcgames/android/airhockey/Game;->$assertionsDisabled:Z

    if-nez v10, :cond_b

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .end local v65           #a:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v82           #e:Ljava/lang/IllegalAccessException;
    .end local v100           #i:Ljava/lang/reflect/Field;
    .end local v116           #n:I
    .end local v117           #name:Ljava/lang/String;
    .end local v188           #type:Ljava/lang/String;
    .restart local v98       #goalSounds:[I
    .restart local v139       #puckMalletSounds:[I
    .restart local v144       #puckRailSounds:[I
    :cond_f
    move/from16 v8, p7

    .line 1196
    goto/16 :goto_4

    :cond_10
    move/from16 v8, p5

    .line 1197
    goto/16 :goto_5

    .restart local v86       #fingerMalletOffset:F
    :cond_11
    move/from16 v7, p5

    .line 1202
    goto/16 :goto_6

    .line 1206
    :cond_12
    const/4 v7, 0x0

    goto/16 :goto_7

    .line 1212
    .restart local v13       #matchWinningGames:I
    .restart local v73       #cpuLevel:I
    .restart local v124       #playerID:I
    :cond_13
    invoke-static/range {v73 .. v73}, Lcom/jjcgames/android/airhockey/Game;->puckSpeed(I)F

    move-result v8

    goto/16 :goto_8

    .line 1240
    .restart local v19       #score:[I
    .restart local v70       #control:I
    .restart local v71       #cpu:I
    .restart local v89       #frameNumber:I
    .restart local v91       #gameWinner:I
    .restart local v92       #games:[I
    .restart local v99       #human:I
    .local v100, i:I
    .restart local v110       #matchGoals:[I
    .restart local v111       #matchWinner:I
    .restart local v123       #player:[Landroid/graphics/PointF;
    .restart local v146       #puckSpeedLimit:F
    .restart local v160       #readyToContinue:Z
    .restart local v168       #sound:Z
    .restart local v190       #winScreenInitiallyTouched:Z
    :cond_14
    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7}, Landroid/graphics/PointF;-><init>()V

    aput-object v7, v123, v100

    .line 1239
    add-int/lit8 v100, v100, 0x1

    goto/16 :goto_9

    .line 1247
    .restart local v125       #playerLast:[Landroid/graphics/PointF;
    :cond_15
    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7}, Landroid/graphics/PointF;-><init>()V

    aput-object v7, v125, v100

    .line 1248
    aget-object v7, v125, v100

    aget-object v8, v123, v100

    invoke-virtual {v7, v8}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 1246
    add-int/lit8 v100, v100, 0x1

    goto/16 :goto_a

    .line 1256
    .restart local v126       #playerLastLast:[Landroid/graphics/PointF;
    :cond_16
    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7}, Landroid/graphics/PointF;-><init>()V

    aput-object v7, v126, v100

    .line 1257
    aget-object v7, v126, v100

    aget-object v8, v125, v100

    invoke-virtual {v7, v8}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 1255
    add-int/lit8 v100, v100, 0x1

    goto/16 :goto_b

    .line 1268
    .restart local v21       #puck:Landroid/graphics/PointF;
    .restart local v129       #playerV:[Landroid/graphics/PointF;
    .restart local v134       #puckLast:Landroid/graphics/PointF;
    .restart local v135       #puckLastLast:Landroid/graphics/PointF;
    :cond_17
    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7}, Landroid/graphics/PointF;-><init>()V

    aput-object v7, v129, v100

    .line 1267
    add-int/lit8 v100, v100, 0x1

    goto/16 :goto_c

    .line 1292
    .restart local v23       #puckV:Landroid/graphics/PointF;
    .restart local v66       #activity:Ljava/lang/String;
    .restart local v130       #pointStartCountdown:F
    .restart local v159       #reactionTimeLeft:F
    .restart local v161       #retarget:Z
    .local v170, state:Ljava/io/BufferedReader;
    .restart local v173       #target:Landroid/graphics/PointF;
    :cond_18
    const/4 v7, 0x0

    goto/16 :goto_d

    .line 1324
    :cond_19
    :try_start_3
    aget v7, v19, v100

    const/4 v8, 0x7

    if-ne v7, v8, :cond_1b

    .line 1325
    aget v7, v92, v100

    if-ne v7, v13, :cond_1a

    .line 1326
    move/from16 v111, v100

    .line 1330
    :goto_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->touched:Z

    move/from16 v190, v0

    .line 1331
    const/4 v7, 0x0

    aget-object v7, v90, v7

    .line 1332
    const/4 v8, 0x0

    .line 1335
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->twoPlayer:Z

    move v14, v0

    .line 1336
    const/4 v10, 0x0

    aget v15, v19, v10

    const/4 v10, 0x1

    aget v16, v19, v10

    const/4 v10, 0x0

    aget v17, v92, v10

    const/4 v10, 0x1

    aget v18, v92, v10

    move-object/from16 v10, p1

    move/from16 v11, p4

    move/from16 v12, p5

    .line 1333
    invoke-static/range {v10 .. v18}, Lcom/jjcgames/android/airhockey/Game;->makeGameEndBitmap(Landroid/content/Context;IIIZIIII)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 1337
    const/4 v11, 0x1

    move/from16 v0, v162

    move v1, v8

    move-object v2, v10

    move v3, v11

    invoke-static {v0, v1, v2, v3}, Lcom/jjcgames/android/airhockey/Game;->prepareScoreBitmap(ZZLandroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1331
    invoke-virtual {v7, v9, v8}, Lcom/jjcgames/android/airhockey/Game$Texture;->loadBitmap(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;)V

    .line 1338
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->twoPlayer:Z

    move v7, v0

    if-eqz v7, :cond_5

    .line 1339
    const/4 v7, 0x1

    aget-object v7, v90, v7

    .line 1340
    const/4 v8, 0x1

    .line 1343
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->twoPlayer:Z

    move v14, v0

    .line 1344
    const/4 v10, 0x1

    aget v15, v19, v10

    const/4 v10, 0x0

    aget v16, v19, v10

    const/4 v10, 0x1

    aget v17, v92, v10

    const/4 v10, 0x0

    aget v18, v92, v10

    move-object/from16 v10, p1

    move/from16 v11, p4

    move/from16 v12, p5

    .line 1341
    invoke-static/range {v10 .. v18}, Lcom/jjcgames/android/airhockey/Game;->makeGameEndBitmap(Landroid/content/Context;IIIZIIII)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 1345
    const/4 v11, 0x1

    move/from16 v0, v162

    move v1, v8

    move-object v2, v10

    move v3, v11

    invoke-static {v0, v1, v2, v3}, Lcom/jjcgames/android/airhockey/Game;->prepareScoreBitmap(ZZLandroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1339
    invoke-virtual {v7, v9, v8}, Lcom/jjcgames/android/airhockey/Game$Texture;->loadBitmap(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_5

    goto/16 :goto_f

    .line 1351
    .end local v66           #activity:Ljava/lang/String;
    .end local v170           #state:Ljava/io/BufferedReader;
    :catch_2
    move-exception v7

    goto/16 :goto_f

    .line 1328
    .restart local v66       #activity:Ljava/lang/String;
    .restart local v170       #state:Ljava/io/BufferedReader;
    :cond_1a
    move/from16 v91, v100

    goto :goto_15

    .line 1323
    :cond_1b
    add-int/lit8 v100, v100, 0x1

    goto/16 :goto_e

    .line 1401
    .end local v66           #activity:Ljava/lang/String;
    .end local v170           #state:Ljava/io/BufferedReader;
    .restart local v28       #p:Landroid/graphics/PointF;
    .restart local v30       #pZero:Landroid/graphics/PointF;
    .restart local v72       #cpuEstimationAccuracyFudge:F
    .restart local v74       #cpuLevelF:F
    .restart local v75       #cpuReactionTime:F
    .restart local v84       #elapsedTime:F
    .restart local v103       #lastT:J
    .restart local v112       #maxCPUMalletAcceleration:F
    .restart local v113       #maxCPUMalletAccelerationSquare:F
    .restart local v114       #maxCPUMalletSpeed:F
    .restart local v115       #maxCPUMalletSpeedSquare:F
    .restart local v147       #puckSpeedLimitSquare:F
    .restart local v163       #scorePosition0x:I
    .restart local v164       #scorePosition0y:I
    .restart local v165       #scorePosition1x:I
    .restart local v166       #scorePosition1y:I
    .restart local v185       #touchedThisFrame:Z
    :cond_1c
    move/from16 v102, v84

    .line 1402
    .local v102, lastElapsedTime:F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v182

    .line 1403
    .local v182, time:J
    sub-long v10, v182, v103

    long-to-float v7, v10

    const/high16 v8, 0x447a

    div-float v84, v7, v8

    .line 1404
    const/4 v7, 0x0

    cmpg-float v7, v84, v7

    if-gtz v7, :cond_1d

    .line 1406
    move/from16 v84, v102

    .line 1408
    :cond_1d
    move-wide/from16 v103, v182

    .line 1411
    const/4 v7, -0x1

    move/from16 v0, v111

    move v1, v7

    if-ne v0, v1, :cond_1e

    const/4 v7, -0x1

    move/from16 v0, v91

    move v1, v7

    if-eq v0, v1, :cond_22

    .line 1412
    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->paused:Z

    move v7, v0

    if-eqz v7, :cond_20

    .line 1414
    monitor-enter p0

    .line 1418
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    .line 1414
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1420
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 1422
    monitor-enter p0

    .line 1423
    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->touched:Z

    move v7, v0

    if-eqz v7, :cond_3a

    .line 1424
    if-nez v190, :cond_1f

    .line 1425
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->twoPlayer:Z

    move v7, v0

    if-eqz v7, :cond_39

    .line 1426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjcgames/android/airhockey/Game;->touch:Landroid/graphics/PointF;

    move-object v7, v0

    move-object/from16 v0, v28

    move-object v1, v7

    move/from16 v2, v162

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/jjcgames/android/airhockey/Game;->screenToPlayfield(Landroid/graphics/PointF;Landroid/graphics/PointF;ZII)V

    .line 1428
    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_37

    const/4 v7, 0x1

    move/from16 v128, v7

    .line 1429
    .local v128, playerTouched:I
    :goto_16
    const/4 v7, -0x1

    move/from16 v0, v111

    move v1, v7

    if-eq v0, v1, :cond_38

    .line 1430
    move/from16 v0, v128

    move/from16 v1, v111

    if-ne v0, v1, :cond_1f

    .line 1431
    const/16 v160, 0x1

    .line 1422
    .end local v128           #playerTouched:I
    :cond_1f
    :goto_17
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1451
    :cond_20
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->paused:Z

    move v7, v0

    if-nez v7, :cond_22

    .line 1453
    const/4 v7, -0x1

    move/from16 v0, v111

    move v1, v7

    if-eq v0, v1, :cond_3c

    .line 1454
    invoke-virtual/range {p0 .. p0}, Lcom/jjcgames/android/airhockey/Game;->setQuitting()V

    .line 1455
    new-instance v101, Landroid/content/Intent;

    invoke-direct/range {v101 .. v101}, Landroid/content/Intent;-><init>()V

    .line 1456
    .local v101, in:Landroid/content/Intent;
    const-string v7, "games0"

    const/4 v8, 0x0

    aget v8, v92, v8

    move-object/from16 v0, v101

    move-object v1, v7

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1457
    const-string v7, "games1"

    const/4 v8, 0x1

    aget v8, v92, v8

    move-object/from16 v0, v101

    move-object v1, v7

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1458
    const-string v7, "goals0"

    const/4 v8, 0x0

    aget v8, v110, v8

    move-object/from16 v0, v101

    move-object v1, v7

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1459
    const-string v7, "goals1"

    const/4 v8, 0x1

    aget v8, v110, v8

    move-object/from16 v0, v101

    move-object v1, v7

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1460
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->twoPlayer:Z

    move v7, v0

    if-nez v7, :cond_21

    const/4 v7, -0x2

    move/from16 v0, v124

    move v1, v7

    if-eq v0, v1, :cond_21

    .line 1461
    const-string v7, "player_id"

    move-object/from16 v0, v101

    move-object v1, v7

    move/from16 v2, v124

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1462
    const-string v7, "cpu_level"

    move-object/from16 v0, v101

    move-object v1, v7

    move/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1464
    const-class v7, Lcom/jjcgames/android/airhockey/PostMatchActivity;

    .line 1463
    move-object/from16 v0, v101

    move-object/from16 v1, p1

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1466
    :cond_21
    move-object/from16 v0, p2

    move-object/from16 v1, v101

    invoke-virtual {v0, v1}, Lcom/jjcgames/android/airhockey/GameActivity$Finisher;->finish(Landroid/content/Intent;)V

    .line 1469
    const/4 v7, 0x1

    move v0, v7

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jjcgames/android/airhockey/Game;->paused:Z

    .line 1480
    .end local v101           #in:Landroid/content/Intent;
    :goto_18
    const/16 v160, 0x0

    .line 1486
    :cond_22
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->paused:Z

    move v7, v0

    if-nez v7, :cond_2f

    .line 1487
    move/from16 v120, v70

    .line 1488
    .local v120, oldControl:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->twoPlayer:Z

    move v7, v0

    if-eqz v7, :cond_23

    .line 1489
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_3e

    const/4 v7, 0x1

    move/from16 v70, v7

    .line 1491
    :cond_23
    :goto_19
    move/from16 v0, v120

    move/from16 v1, v70

    if-eq v0, v1, :cond_3f

    const/4 v7, 0x1

    move/from16 v68, v7

    .line 1494
    .local v68, changeOfControl:Z
    :goto_1a
    monitor-enter p0

    .line 1495
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    .line 1494
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1497
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 1499
    monitor-enter p0

    .line 1500
    move/from16 v184, v185

    .line 1502
    .local v184, touchedLastFrame:Z
    :try_start_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->touched:Z

    move v7, v0

    if-eqz v7, :cond_26

    .line 1503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjcgames/android/airhockey/Game;->touch:Landroid/graphics/PointF;

    move-object v7, v0

    move-object/from16 v0, v28

    move-object v1, v7

    move/from16 v2, v162

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/jjcgames/android/airhockey/Game;->screenToPlayfield(Landroid/graphics/PointF;Landroid/graphics/PointF;ZII)V

    .line 1505
    if-nez v70, :cond_40

    .line 1506
    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    add-float v7, v7, v86

    move v0, v7

    move-object/from16 v1, v28

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 1510
    :goto_1b
    const v7, 0x3e0a00c4

    move-object/from16 v0, v28

    move v1, v7

    invoke-static {v0, v1}, Lcom/jjcgames/android/airhockey/Game;->clampToPlayfieldBorder(Landroid/graphics/PointF;F)Z

    .line 1511
    if-nez v70, :cond_41

    .line 1512
    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    const v8, -0x41f5ff3c

    cmpl-float v7, v7, v8

    if-lez v7, :cond_24

    .line 1513
    const v7, -0x41f5ff3c

    move v0, v7

    move-object/from16 v1, v28

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 1520
    :cond_24
    :goto_1c
    if-nez v68, :cond_25

    if-nez v184, :cond_42

    .line 1521
    :cond_25
    aget-object v7, v123, v70

    move-object v0, v7

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 1522
    aget-object v7, v129, v70

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v10}, Landroid/graphics/PointF;->set(FF)V

    .line 1529
    :cond_26
    :goto_1d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->touched:Z

    move/from16 v185, v0

    .line 1499
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1532
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->twoPlayer:Z

    move v7, v0

    if-nez v7, :cond_2a

    .line 1534
    move-object/from16 v0, v173

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move v7, v0

    const/4 v8, 0x1

    aget-object v8, v123, v8

    iget v8, v8, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v8

    div-float v180, v7, v84

    .line 1536
    .local v180, targetVX:F
    move-object/from16 v0, v173

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    const/4 v8, 0x1

    aget-object v8, v123, v8

    iget v8, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v8

    div-float v181, v7, v84

    .line 1538
    .local v181, targetVY:F
    mul-float v7, v180, v180

    mul-float v8, v181, v181

    add-float v179, v7, v8

    .line 1540
    .local v179, targetVSizeSquare:F
    cmpl-float v7, v179, v115

    if-lez v7, :cond_27

    .line 1543
    move/from16 v0, v179

    float-to-double v0, v0

    move-wide v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    move-wide v0, v10

    double-to-float v0, v0

    move/from16 v178, v0

    .line 1544
    .local v178, targetVSize:F
    div-float v7, v180, v178

    mul-float v180, v7, v114

    .line 1546
    div-float v7, v181, v178

    mul-float v181, v7, v114

    .line 1551
    .end local v178           #targetVSize:F
    :cond_27
    const/4 v7, 0x1

    aget-object v7, v129, v7

    iget v7, v7, Landroid/graphics/PointF;->x:F

    const/4 v8, 0x1

    aget-object v8, v129, v8

    iget v8, v8, Landroid/graphics/PointF;->x:F

    mul-float/2addr v7, v8

    .line 1552
    const/4 v8, 0x1

    aget-object v8, v129, v8

    iget v8, v8, Landroid/graphics/PointF;->y:F

    const/4 v10, 0x1

    aget-object v10, v129, v10

    iget v10, v10, Landroid/graphics/PointF;->y:F

    mul-float/2addr v8, v10

    .line 1551
    add-float v76, v7, v8

    .line 1554
    .local v76, cpuVSizeSquare:F
    cmpg-float v7, v179, v76

    if-gez v7, :cond_43

    .line 1556
    const/4 v7, 0x1

    aget-object v7, v129, v7

    move/from16 v0, v180

    move-object v1, v7

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 1557
    const/4 v7, 0x1

    aget-object v7, v129, v7

    move/from16 v0, v181

    move-object v1, v7

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 1583
    :goto_1e
    const/4 v7, 0x1

    aget-object v7, v123, v7

    move-object/from16 v0, v28

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 1584
    const v7, 0x3e0a00c4

    move-object/from16 v0, v28

    move v1, v7

    invoke-static {v0, v1}, Lcom/jjcgames/android/airhockey/Game;->clampToPlayfieldBorder(Landroid/graphics/PointF;F)Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 1585
    const/4 v7, 0x1

    aget-object v7, v123, v7

    iget v7, v7, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move v8, v0

    sub-float v121, v7, v8

    .line 1586
    .local v121, overX:F
    const/4 v7, 0x0

    cmpl-float v7, v121, v7

    if-eqz v7, :cond_28

    .line 1587
    const/4 v7, 0x1

    aget-object v7, v129, v7

    move/from16 v0, v121

    neg-float v0, v0

    move v8, v0

    div-float v8, v8, v84

    iput v8, v7, Landroid/graphics/PointF;->x:F

    .line 1589
    :cond_28
    const/4 v7, 0x1

    aget-object v7, v123, v7

    iget v7, v7, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v8, v0

    sub-float v122, v7, v8

    .line 1590
    .local v122, overY:F
    const/4 v7, 0x0

    cmpl-float v7, v122, v7

    if-eqz v7, :cond_29

    .line 1591
    const/4 v7, 0x1

    aget-object v7, v129, v7

    move/from16 v0, v122

    neg-float v0, v0

    move v8, v0

    div-float v8, v8, v84

    iput v8, v7, Landroid/graphics/PointF;->y:F

    .line 1594
    :cond_29
    const/4 v7, 0x1

    aget-object v7, v129, v7

    iget v7, v7, Landroid/graphics/PointF;->x:F

    const/4 v8, 0x1

    aget-object v8, v129, v8

    iget v8, v8, Landroid/graphics/PointF;->x:F

    mul-float/2addr v7, v8

    .line 1595
    const/4 v8, 0x1

    aget-object v8, v129, v8

    iget v8, v8, Landroid/graphics/PointF;->y:F

    const/4 v10, 0x1

    aget-object v10, v129, v10

    iget v10, v10, Landroid/graphics/PointF;->y:F

    mul-float/2addr v8, v10

    .line 1594
    add-float v77, v7, v8

    .line 1596
    .local v77, cpuVSizeSquare1:F
    cmpl-float v7, v77, v115

    if-lez v7, :cond_2a

    .line 1599
    move/from16 v0, v77

    float-to-double v0, v0

    move-wide v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v7, v10

    .line 1598
    div-float v88, v114, v7

    .line 1600
    .local v88, fixScaler:F
    const/4 v7, 0x1

    aget-object v7, v129, v7

    iget v8, v7, Landroid/graphics/PointF;->x:F

    mul-float v8, v8, v88

    iput v8, v7, Landroid/graphics/PointF;->x:F

    .line 1601
    const/4 v7, 0x1

    aget-object v7, v129, v7

    iget v8, v7, Landroid/graphics/PointF;->y:F

    mul-float v8, v8, v88

    iput v8, v7, Landroid/graphics/PointF;->y:F

    .line 1608
    .end local v76           #cpuVSizeSquare:F
    .end local v77           #cpuVSizeSquare1:F
    .end local v88           #fixScaler:F
    .end local v121           #overX:F
    .end local v122           #overY:F
    .end local v179           #targetVSizeSquare:F
    .end local v180           #targetVX:F
    .end local v181           #targetVY:F
    :cond_2a
    const/16 v138, 0x0

    .line 1609
    .local v138, puckMalletPlayed:Z
    const/16 v143, 0x0

    .line 1614
    .local v143, puckRailPlayed:Z
    const/16 v58, 0x0

    .line 1615
    .local v58, COLLISION_NONE:I
    const/16 v59, 0x1

    .line 1616
    .local v59, COLLISION_PLAYER:I
    const/16 v47, 0x2

    .line 1617
    .local v47, COLLISION_CPU:I
    const/16 v51, 0x3

    .line 1618
    .local v51, COLLISION_LEFTRIGHT:I
    const/16 v60, 0x4

    .line 1619
    .local v60, COLLISION_TOPBOTTOM:I
    const/16 v49, 0x5

    .line 1620
    .local v49, COLLISION_GOALCORNER:I
    const/16 v50, 0x6

    .line 1621
    .local v50, COLLISION_GOALSIDE:I
    const/16 v48, 0x7

    .line 1625
    .local v48, COLLISION_GOALBACK:I
    const/16 v54, 0x8

    .line 1627
    .local v54, COLLISION_MALLETLEFTRIGHT0:I
    const/16 v55, 0x9

    .line 1628
    .local v55, COLLISION_MALLETLEFTRIGHT1:I
    const/16 v56, 0xa

    .line 1630
    .local v56, COLLISION_MALLETTOPBOTTOM0:I
    const/16 v57, 0xb

    .line 1631
    .local v57, COLLISION_MALLETTOPBOTTOM1:I
    const/16 v52, 0xc

    .line 1633
    .local v52, COLLISION_MALLETCENTERLINE0:I
    const/16 v53, 0xd

    .line 1635
    .local v53, COLLISION_MALLETCENTERLINE1:I
    move/from16 v26, v84

    .line 1636
    .local v26, remainingTime:F
    :cond_2b
    :goto_1f
    const/4 v7, 0x0

    cmpl-float v7, v26, v7

    if-gtz v7, :cond_45

    .line 2042
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->twoPlayer:Z

    move v7, v0

    if-nez v7, :cond_2d

    .line 2043
    const/4 v7, 0x0

    cmpl-float v7, v130, v7

    if-lez v7, :cond_2c

    .line 2044
    sub-float v130, v130, v84

    .line 2046
    :cond_2c
    const/4 v7, 0x0

    cmpl-float v7, v159, v7

    if-lez v7, :cond_2d

    .line 2047
    sub-float v159, v159, v84

    .line 2051
    :cond_2d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->twoPlayer:Z

    move v7, v0

    if-nez v7, :cond_2f

    if-eqz v161, :cond_2f

    .line 2052
    const/4 v7, 0x0

    cmpg-float v7, v130, v7

    if-gtz v7, :cond_2f

    const/4 v7, 0x0

    cmpg-float v7, v159, v7

    if-gtz v7, :cond_2f

    .line 2054
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    const/4 v8, 0x1

    aget-object v8, v123, v8

    iget v8, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v8

    const v8, -0x427a4338

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_81

    .line 2057
    const/4 v7, 0x1

    aget-object v7, v123, v7

    iget v7, v7, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move v8, v0

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_80

    const/4 v7, 0x1

    move/from16 v79, v7

    .line 2059
    .local v79, direction:I
    :goto_20
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move v7, v0

    move/from16 v0, v79

    int-to-float v0, v0

    move v8, v0

    .line 2060
    const v10, 0x3e4cdf28

    mul-float/2addr v8, v10

    const/high16 v10, 0x3fc0

    mul-float/2addr v8, v10

    .line 2059
    add-float/2addr v7, v8

    .line 2061
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v8, v0

    const v10, 0x3eccdf28

    add-float/2addr v8, v10

    .line 2058
    move-object/from16 v0, v173

    move v1, v7

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 2107
    .end local v79           #direction:I
    :goto_21
    if-nez v161, :cond_2e

    .line 2108
    move-object/from16 v0, v173

    move/from16 v1, v72

    invoke-static {v0, v1}, Lcom/jjcgames/android/airhockey/Game;->fudge(Landroid/graphics/PointF;F)V

    .line 2110
    :cond_2e
    const v7, 0x3e0a00c4

    move-object/from16 v0, v173

    move v1, v7

    invoke-static {v0, v1}, Lcom/jjcgames/android/airhockey/Game;->clampToPlayfieldBorder(Landroid/graphics/PointF;F)Z

    .line 2120
    .end local v26           #remainingTime:F
    .end local v47           #COLLISION_CPU:I
    .end local v48           #COLLISION_GOALBACK:I
    .end local v49           #COLLISION_GOALCORNER:I
    .end local v50           #COLLISION_GOALSIDE:I
    .end local v51           #COLLISION_LEFTRIGHT:I
    .end local v52           #COLLISION_MALLETCENTERLINE0:I
    .end local v53           #COLLISION_MALLETCENTERLINE1:I
    .end local v54           #COLLISION_MALLETLEFTRIGHT0:I
    .end local v55           #COLLISION_MALLETLEFTRIGHT1:I
    .end local v56           #COLLISION_MALLETTOPBOTTOM0:I
    .end local v57           #COLLISION_MALLETTOPBOTTOM1:I
    .end local v58           #COLLISION_NONE:I
    .end local v59           #COLLISION_PLAYER:I
    .end local v60           #COLLISION_TOPBOTTOM:I
    .end local v68           #changeOfControl:Z
    .end local v120           #oldControl:I
    .end local v138           #puckMalletPlayed:Z
    .end local v143           #puckRailPlayed:Z
    .end local v184           #touchedLastFrame:Z
    :cond_2f
    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v31, v9

    move/from16 v32, p4

    move/from16 v33, p5

    move-object/from16 v34, v42

    invoke-static/range {v31 .. v36}, Lcom/jjcgames/android/airhockey/Game;->drawTexture(Ljavax/microedition/khronos/opengles/GL11;IILcom/jjcgames/android/airhockey/Game$Texture;II)V

    .line 2134
    const/16 v7, 0xbe2

    invoke-interface {v9, v7}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 2135
    move-object/from16 v0, v28

    move-object/from16 v1, v21

    move/from16 v2, v162

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/jjcgames/android/airhockey/Game;->playfieldToScreenGL(Landroid/graphics/PointF;Landroid/graphics/PointF;ZII)V

    .line 2136
    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move v7, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v8, v0

    move-object v0, v9

    move-object/from16 v1, v149

    move v2, v7

    move v3, v8

    invoke-static {v0, v1, v2, v3}, Lcom/jjcgames/android/airhockey/Game;->drawQuad(Ljavax/microedition/khronos/opengles/GL11;Lcom/jjcgames/android/airhockey/Game$Texture;FF)V

    .line 2137
    if-eqz v185, :cond_30

    .line 2138
    aget-object v7, v123, v70

    move-object/from16 v0, v28

    move-object v1, v7

    move/from16 v2, v162

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/jjcgames/android/airhockey/Game;->playfieldToScreenGL(Landroid/graphics/PointF;Landroid/graphics/PointF;ZII)V

    .line 2140
    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move v7, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v8, v0

    move-object v0, v9

    move-object/from16 v1, v109

    move v2, v7

    move v3, v8

    invoke-static {v0, v1, v2, v3}, Lcom/jjcgames/android/airhockey/Game;->drawQuad(Ljavax/microedition/khronos/opengles/GL11;Lcom/jjcgames/android/airhockey/Game$Texture;FF)V

    .line 2142
    :cond_30
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->twoPlayer:Z

    move v7, v0

    if-nez v7, :cond_31

    .line 2143
    const/4 v7, 0x1

    aget-object v7, v123, v7

    move-object/from16 v0, v28

    move-object v1, v7

    move/from16 v2, v162

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/jjcgames/android/airhockey/Game;->playfieldToScreenGL(Landroid/graphics/PointF;Landroid/graphics/PointF;ZII)V

    .line 2145
    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move v7, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v8, v0

    move-object v0, v9

    move-object/from16 v1, v109

    move v2, v7

    move v3, v8

    invoke-static {v0, v1, v2, v3}, Lcom/jjcgames/android/airhockey/Game;->drawQuad(Ljavax/microedition/khronos/opengles/GL11;Lcom/jjcgames/android/airhockey/Game$Texture;FF)V

    .line 2147
    :cond_31
    const/16 v7, 0xbe2

    invoke-interface {v9, v7}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    .line 2152
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    const v8, 0x3f6f4867

    cmpl-float v7, v7, v8

    if-lez v7, :cond_86

    .line 2154
    const/16 v43, 0x0

    move/from16 v0, p5

    int-to-float v0, v0

    move v7, v0

    .line 2155
    move/from16 v0, p5

    int-to-float v0, v0

    move v8, v0

    const v10, 0x3e098ab8

    mul-float/2addr v8, v10

    const/high16 v10, 0x4000

    div-float/2addr v8, v10

    sub-float/2addr v7, v8

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    move-wide v0, v10

    double-to-int v0, v0

    move/from16 v44, v0

    move-object/from16 v39, v9

    move/from16 v40, p4

    move/from16 v41, p5

    move/from16 v45, p4

    move/from16 v46, p5

    .line 2153
    invoke-static/range {v39 .. v46}, Lcom/jjcgames/android/airhockey/Game;->drawSubTexture(Ljavax/microedition/khronos/opengles/GL11;IILcom/jjcgames/android/airhockey/Game$Texture;IIII)V

    .line 2164
    :cond_32
    :goto_22
    const/4 v7, 0x0

    aget-object v34, v167, v7

    move-object/from16 v31, v9

    move/from16 v32, p4

    move/from16 v33, p5

    move/from16 v35, v163

    move/from16 v36, v164

    invoke-static/range {v31 .. v36}, Lcom/jjcgames/android/airhockey/Game;->drawTexture(Ljavax/microedition/khronos/opengles/GL11;IILcom/jjcgames/android/airhockey/Game$Texture;II)V

    .line 2166
    const/4 v7, 0x1

    aget-object v34, v167, v7

    move-object/from16 v31, v9

    move/from16 v32, p4

    move/from16 v33, p5

    move/from16 v35, v165

    move/from16 v36, v166

    invoke-static/range {v31 .. v36}, Lcom/jjcgames/android/airhockey/Game;->drawTexture(Ljavax/microedition/khronos/opengles/GL11;IILcom/jjcgames/android/airhockey/Game$Texture;II)V

    .line 2169
    const/4 v7, -0x1

    move/from16 v0, v91

    move v1, v7

    if-ne v0, v1, :cond_33

    const/4 v7, -0x1

    move/from16 v0, v111

    move v1, v7

    if-eq v0, v1, :cond_35

    .line 2170
    :cond_33
    const/16 v7, 0xbe2

    invoke-interface {v9, v7}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 2173
    const/4 v7, 0x0

    aget-object v34, v90, v7

    .line 2174
    div-int/lit8 v7, p4, 0x2

    const/4 v8, 0x0

    aget-object v8, v90, v8

    iget v8, v8, Lcom/jjcgames/android/airhockey/Game$Texture;->width:I

    div-int/lit8 v8, v8, 0x2

    sub-int v35, v7, v8

    .line 2176
    move/from16 v0, p5

    int-to-float v0, v0

    move v7, v0

    const v8, 0x3f5d9d52

    mul-float/2addr v7, v8

    const/high16 v8, 0x4080

    div-float/2addr v7, v8

    .line 2177
    move/from16 v0, p5

    int-to-float v0, v0

    move v8, v0

    const v10, 0x3e098ab8

    mul-float/2addr v8, v10

    const/high16 v10, 0x4000

    div-float/2addr v8, v10

    .line 2176
    add-float/2addr v7, v8

    .line 2178
    const/4 v8, 0x0

    aget-object v8, v90, v8

    iget v8, v8, Lcom/jjcgames/android/airhockey/Game$Texture;->height:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    .line 2175
    sub-float/2addr v7, v8

    move v0, v7

    float-to-int v0, v0

    move/from16 v36, v0

    move-object/from16 v31, v9

    move/from16 v32, p4

    move/from16 v33, p5

    .line 2172
    invoke-static/range {v31 .. v36}, Lcom/jjcgames/android/airhockey/Game;->drawTexture(Ljavax/microedition/khronos/opengles/GL11;IILcom/jjcgames/android/airhockey/Game$Texture;II)V

    .line 2179
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->twoPlayer:Z

    move v7, v0

    if-eqz v7, :cond_34

    .line 2181
    const/4 v7, 0x1

    aget-object v34, v90, v7

    .line 2182
    div-int/lit8 v7, p4, 0x2

    const/4 v8, 0x1

    aget-object v8, v90, v8

    iget v8, v8, Lcom/jjcgames/android/airhockey/Game$Texture;->width:I

    div-int/lit8 v8, v8, 0x2

    sub-int v35, v7, v8

    .line 2184
    move/from16 v0, p5

    int-to-float v0, v0

    move v7, v0

    const v8, 0x3f5d9d52

    mul-float/2addr v7, v8

    const/high16 v8, 0x4040

    mul-float/2addr v7, v8

    const/high16 v8, 0x4080

    div-float/2addr v7, v8

    .line 2185
    move/from16 v0, p5

    int-to-float v0, v0

    move v8, v0

    const v10, 0x3e098ab8

    mul-float/2addr v8, v10

    const/high16 v10, 0x4000

    div-float/2addr v8, v10

    .line 2184
    add-float/2addr v7, v8

    .line 2186
    const/4 v8, 0x1

    aget-object v8, v90, v8

    iget v8, v8, Lcom/jjcgames/android/airhockey/Game$Texture;->height:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    .line 2183
    sub-float/2addr v7, v8

    move v0, v7

    float-to-int v0, v0

    move/from16 v36, v0

    move-object/from16 v31, v9

    move/from16 v32, p4

    move/from16 v33, p5

    .line 2180
    invoke-static/range {v31 .. v36}, Lcom/jjcgames/android/airhockey/Game;->drawTexture(Ljavax/microedition/khronos/opengles/GL11;IILcom/jjcgames/android/airhockey/Game$Texture;II)V

    .line 2188
    :cond_34
    const/16 v7, 0xbe2

    invoke-interface {v9, v7}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    .line 2200
    :cond_35
    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v171

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v7

    if-nez v7, :cond_36

    .line 2201
    invoke-interface {v5}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v7

    const/16 v8, 0x300e

    if-ne v7, v8, :cond_36

    .line 2202
    const/4 v7, 0x1

    move v0, v7

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jjcgames/android/airhockey/Game;->threadFinishing:Z

    .line 2206
    :cond_36
    const/16 v100, 0x0

    :goto_23
    move-object/from16 v0, v123

    array-length v0, v0

    move v7, v0

    move/from16 v0, v100

    move v1, v7

    if-lt v0, v1, :cond_87

    .line 2215
    move-object/from16 v0, v134

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 2216
    add-int/lit8 v89, v89, 0x1

    goto/16 :goto_10

    .line 1414
    :catchall_0
    move-exception v7

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v7

    .line 1428
    :cond_37
    const/4 v7, 0x0

    move/from16 v128, v7

    goto/16 :goto_16

    .line 1434
    .restart local v128       #playerTouched:I
    :cond_38
    move/from16 v0, v128

    move/from16 v1, v91

    if-ne v0, v1, :cond_1f

    .line 1435
    const/16 v160, 0x1

    goto/16 :goto_17

    .line 1439
    .end local v128           #playerTouched:I
    :cond_39
    const/16 v160, 0x1

    goto/16 :goto_17

    .line 1443
    :cond_3a
    if-eqz v160, :cond_3b

    .line 1444
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lcom/jjcgames/android/airhockey/Game;->resume()V

    goto/16 :goto_17

    .line 1422
    :catchall_1
    move-exception v7

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v7

    .line 1445
    :cond_3b
    if-eqz v190, :cond_1f

    .line 1446
    const/16 v190, 0x0

    goto/16 :goto_17

    .line 1471
    :cond_3c
    const/16 v100, 0x0

    :goto_24
    move-object/from16 v0, v19

    array-length v0, v0

    move v7, v0

    move/from16 v0, v100

    move v1, v7

    if-lt v0, v1, :cond_3d

    move-object v14, v9

    move/from16 v15, v162

    move/from16 v16, p4

    move/from16 v17, p5

    move-object/from16 v18, v167

    .line 1474
    invoke-static/range {v14 .. v19}, Lcom/jjcgames/android/airhockey/Game;->setupScoreTextures(Ljavax/microedition/khronos/opengles/GL10;ZII[Lcom/jjcgames/android/airhockey/Game$Texture;[I)V

    .line 1477
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1478
    const/16 v91, -0x1

    goto/16 :goto_18

    .line 1472
    :cond_3d
    const/4 v7, 0x0

    aput v7, v19, v100

    .line 1471
    add-int/lit8 v100, v100, 0x1

    goto :goto_24

    .line 1489
    .restart local v120       #oldControl:I
    :cond_3e
    const/4 v7, 0x0

    move/from16 v70, v7

    goto/16 :goto_19

    .line 1491
    :cond_3f
    const/4 v7, 0x0

    move/from16 v68, v7

    goto/16 :goto_1a

    .line 1494
    .restart local v68       #changeOfControl:Z
    :catchall_2
    move-exception v7

    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v7

    .line 1508
    .restart local v184       #touchedLastFrame:Z
    :cond_40
    :try_start_b
    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    sub-float v7, v7, v86

    move v0, v7

    move-object/from16 v1, v28

    iput v0, v1, Landroid/graphics/PointF;->y:F

    goto/16 :goto_1b

    .line 1499
    :catchall_3
    move-exception v7

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v7

    .line 1516
    :cond_41
    :try_start_c
    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    const v8, 0x3e0a00c4

    cmpg-float v7, v7, v8

    if-gez v7, :cond_24

    .line 1517
    const v7, 0x3e0a00c4

    move v0, v7

    move-object/from16 v1, v28

    iput v0, v1, Landroid/graphics/PointF;->y:F

    goto/16 :goto_1c

    .line 1524
    :cond_42
    aget-object v7, v129, v70

    .line 1525
    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move v8, v0

    aget-object v10, v123, v70

    iget v10, v10, Landroid/graphics/PointF;->x:F

    sub-float/2addr v8, v10

    div-float v8, v8, v84

    .line 1526
    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v10, v0

    aget-object v11, v123, v70

    iget v11, v11, Landroid/graphics/PointF;->y:F

    sub-float/2addr v10, v11

    div-float v10, v10, v84

    .line 1524
    invoke-virtual {v7, v8, v10}, Landroid/graphics/PointF;->set(FF)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto/16 :goto_1d

    .line 1561
    .restart local v76       #cpuVSizeSquare:F
    .restart local v179       #targetVSizeSquare:F
    .restart local v180       #targetVX:F
    .restart local v181       #targetVY:F
    :cond_43
    const/4 v7, 0x1

    aget-object v7, v129, v7

    iget v7, v7, Landroid/graphics/PointF;->x:F

    sub-float v7, v180, v7

    div-float v176, v7, v84

    .line 1563
    .local v176, targetAX:F
    const/4 v7, 0x1

    aget-object v7, v129, v7

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float v7, v181, v7

    div-float v177, v7, v84

    .line 1565
    .local v177, targetAY:F
    mul-float v7, v176, v176

    mul-float v8, v177, v177

    add-float v175, v7, v8

    .line 1567
    .local v175, targetASizeSquare:F
    cmpl-float v7, v175, v113

    if-lez v7, :cond_44

    .line 1570
    move/from16 v0, v175

    float-to-double v0, v0

    move-wide v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    move-wide v0, v10

    double-to-float v0, v0

    move/from16 v174, v0

    .line 1571
    .local v174, targetASize:F
    div-float v7, v176, v174

    mul-float v176, v7, v112

    .line 1573
    div-float v7, v177, v174

    mul-float v177, v7, v112

    .line 1577
    .end local v174           #targetASize:F
    :cond_44
    const/4 v7, 0x1

    aget-object v7, v129, v7

    iget v8, v7, Landroid/graphics/PointF;->x:F

    mul-float v10, v176, v84

    add-float/2addr v8, v10

    iput v8, v7, Landroid/graphics/PointF;->x:F

    .line 1578
    const/4 v7, 0x1

    aget-object v7, v129, v7

    iget v8, v7, Landroid/graphics/PointF;->y:F

    mul-float v10, v177, v84

    add-float/2addr v8, v10

    iput v8, v7, Landroid/graphics/PointF;->y:F

    goto/16 :goto_1e

    .line 1637
    .end local v76           #cpuVSizeSquare:F
    .end local v175           #targetASizeSquare:F
    .end local v176           #targetAX:F
    .end local v177           #targetAY:F
    .end local v179           #targetVSizeSquare:F
    .end local v180           #targetVX:F
    .end local v181           #targetVY:F
    .restart local v26       #remainingTime:F
    .restart local v47       #COLLISION_CPU:I
    .restart local v48       #COLLISION_GOALBACK:I
    .restart local v49       #COLLISION_GOALCORNER:I
    .restart local v50       #COLLISION_GOALSIDE:I
    .restart local v51       #COLLISION_LEFTRIGHT:I
    .restart local v52       #COLLISION_MALLETCENTERLINE0:I
    .restart local v53       #COLLISION_MALLETCENTERLINE1:I
    .restart local v54       #COLLISION_MALLETLEFTRIGHT0:I
    .restart local v55       #COLLISION_MALLETLEFTRIGHT1:I
    .restart local v56       #COLLISION_MALLETTOPBOTTOM0:I
    .restart local v57       #COLLISION_MALLETTOPBOTTOM1:I
    .restart local v58       #COLLISION_NONE:I
    .restart local v59       #COLLISION_PLAYER:I
    .restart local v60       #COLLISION_TOPBOTTOM:I
    .restart local v138       #puckMalletPlayed:Z
    .restart local v143       #puckRailPlayed:Z
    :cond_45
    move/from16 v38, v26

    .line 1638
    .local v38, firstT:F
    const/16 v87, 0x0

    .line 1640
    .local v87, firstCollision:I
    if-eqz v185, :cond_46

    .line 1642
    aget-object v20, v123, v70

    aget-object v22, v129, v70

    .line 1643
    const v24, 0x3e0a00c4

    const v25, 0x3d85bcc8

    .line 1641
    invoke-static/range {v20 .. v26}, Lcom/jjcgames/android/airhockey/Game;->collisionTime(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;FFF)F

    move-result v172

    .line 1644
    .local v172, t:F
    const/4 v7, 0x0

    cmpl-float v7, v172, v7

    if-lez v7, :cond_46

    cmpg-float v7, v172, v38

    if-gez v7, :cond_46

    .line 1645
    move/from16 v38, v172

    .line 1646
    const/16 v87, 0x1

    .line 1650
    .end local v172           #t:F
    :cond_46
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->twoPlayer:Z

    move v7, v0

    if-nez v7, :cond_47

    .line 1652
    const/4 v7, 0x1

    aget-object v20, v123, v7

    const/4 v7, 0x1

    aget-object v22, v129, v7

    .line 1653
    const v24, 0x3e0a00c4

    const v25, 0x3d85bcc8

    .line 1651
    invoke-static/range {v20 .. v26}, Lcom/jjcgames/android/airhockey/Game;->collisionTime(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;FFF)F

    move-result v172

    .line 1654
    .restart local v172       #t:F
    const/4 v7, 0x0

    cmpl-float v7, v172, v7

    if-lez v7, :cond_47

    cmpg-float v7, v172, v38

    if-gez v7, :cond_47

    .line 1655
    move/from16 v38, v172

    .line 1656
    const/16 v87, 0x2

    .line 1660
    .end local v172           #t:F
    :cond_47
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move v7, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move v8, v0

    mul-float v8, v8, v26

    add-float v131, v7, v8

    .line 1661
    .local v131, puckDestX:F
    invoke-static/range {v131 .. v131}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x3f2a0a15

    sub-float v140, v7, v8

    .line 1662
    .local v140, puckOverShoot:F
    const/4 v7, 0x0

    cmpl-float v7, v140, v7

    if-lez v7, :cond_48

    .line 1663
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move v7, v0

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    div-float v7, v140, v7

    sub-float v172, v26, v7

    .line 1664
    .restart local v172       #t:F
    const/4 v7, 0x0

    cmpl-float v7, v172, v7

    if-lez v7, :cond_48

    cmpg-float v7, v172, v38

    if-gez v7, :cond_48

    .line 1665
    move/from16 v38, v172

    .line 1666
    const/16 v87, 0x3

    .line 1671
    .end local v172           #t:F
    :cond_48
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_49

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v8, v0

    invoke-static {v7, v8}, Lcom/jjcgames/android/airhockey/Game;->sameSign(FF)Z

    move-result v7

    if-nez v7, :cond_51

    .line 1672
    :cond_49
    const/16 v133, 0x0

    .line 1698
    .local v133, puckHeadingIntoGoal:Z
    :goto_25
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v8, v0

    mul-float v8, v8, v26

    add-float v132, v7, v8

    .line 1699
    .local v132, puckDestY:F
    invoke-static/range {v132 .. v132}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x3f6f4867

    sub-float v140, v7, v8

    .line 1701
    const v7, 0x3e272bfa

    cmpl-float v7, v140, v7

    if-lez v7, :cond_4a

    .line 1702
    const v7, 0x3f8c89b3

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v8, v0

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    sub-float/2addr v7, v8

    .line 1703
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v8, v0

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 1702
    div-float v172, v7, v8

    .line 1704
    .restart local v172       #t:F
    const/4 v7, 0x0

    cmpl-float v7, v172, v7

    if-lez v7, :cond_4a

    cmpg-float v7, v172, v38

    if-gez v7, :cond_4a

    .line 1705
    move/from16 v38, v172

    .line 1706
    const/16 v87, 0x7

    .line 1709
    .end local v172           #t:F
    :cond_4a
    const/4 v7, 0x0

    cmpl-float v7, v140, v7

    if-lez v7, :cond_4b

    .line 1710
    if-eqz v133, :cond_57

    .line 1711
    const v7, 0x3d85bcc8

    cmpl-float v7, v140, v7

    if-ltz v7, :cond_4b

    .line 1713
    invoke-static/range {v131 .. v131}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x3ebc5b2c

    sub-float v141, v7, v8

    .line 1714
    .local v141, puckOverShootInside:F
    const/4 v7, 0x0

    cmpl-float v7, v141, v7

    if-lez v7, :cond_4b

    .line 1716
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move v7, v0

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    div-float v7, v141, v7

    .line 1715
    sub-float v172, v26, v7

    .line 1717
    .restart local v172       #t:F
    const/4 v7, 0x0

    cmpl-float v7, v172, v7

    if-lez v7, :cond_4b

    cmpg-float v7, v172, v38

    if-gez v7, :cond_4b

    .line 1718
    move/from16 v38, v172

    .line 1719
    const/16 v87, 0x6

    .line 1761
    .end local v141           #puckOverShootInside:F
    .end local v172           #t:F
    :cond_4b
    :goto_26
    const/16 v100, 0x0

    :goto_27
    move-object/from16 v0, v123

    array-length v0, v0

    move v7, v0

    move/from16 v0, v100

    move v1, v7

    if-lt v0, v1, :cond_5c

    .line 1813
    if-nez v87, :cond_63

    .line 1814
    const/high16 v119, 0x3f80

    .line 1819
    .local v119, notQuite:F
    :goto_28
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move v7, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move v8, v0

    mul-float v8, v8, v38

    mul-float v8, v8, v119

    add-float/2addr v7, v8

    move v0, v7

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 1820
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    mul-float v7, v7, v38

    mul-float v150, v7, v119

    .line 1821
    .local v150, puckYChange:F
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    add-float v7, v7, v150

    move v0, v7

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 1822
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->twoPlayer:Z

    move v7, v0

    if-nez v7, :cond_4c

    .line 1823
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    const v8, 0x3d85bcc8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static/range {v150 .. v150}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_4c

    .line 1828
    const/16 v161, 0x1

    .line 1829
    move/from16 v159, v75

    .line 1832
    :cond_4c
    const/16 v100, 0x0

    :goto_29
    move-object/from16 v0, v123

    array-length v0, v0

    move v7, v0

    move/from16 v0, v100

    move v1, v7

    if-lt v0, v1, :cond_64

    .line 1843
    const/16 v137, 0x0

    .line 1844
    .local v137, puckMalletCollision:Z
    const/4 v7, 0x1

    move/from16 v0, v87

    move v1, v7

    if-ne v0, v1, :cond_68

    .line 1845
    aget-object v32, v125, v70

    .line 1846
    aget-object v34, v129, v70

    .line 1847
    const v35, 0x3d03126f

    const v36, 0x3d9fbe77

    const v37, 0x3f59999a

    move-object/from16 v31, v134

    move-object/from16 v33, v23

    .line 1845
    invoke-static/range {v31 .. v38}, Lcom/jjcgames/android/airhockey/Game;->collide(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;FFFF)V

    .line 1848
    if-eqz v168, :cond_4d

    if-nez v138, :cond_4d

    .line 1850
    aget-object v7, v129, v70

    move-object/from16 v0, v23

    move-object v1, v7

    invoke-static {v0, v1}, Lcom/jjcgames/android/airhockey/Game;->collisionVolume(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v7

    .line 1849
    move-object/from16 v0, v169

    move-object/from16 v1, v139

    move v2, v7

    invoke-static {v0, v1, v2}, Lcom/jjcgames/android/airhockey/Game;->playRandom(Landroid/media/SoundPool;[IF)V

    .line 1851
    const/16 v138, 0x1

    .line 1853
    :cond_4d
    const/16 v137, 0x1

    .line 1854
    move/from16 v159, v75

    .line 2022
    :cond_4e
    :goto_2a
    if-eqz v137, :cond_50

    .line 2024
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move v7, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move v8, v0

    mul-float/2addr v7, v8

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v8, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v10, v0

    mul-float/2addr v8, v10

    add-float v148, v7, v8

    .line 2025
    .local v148, puckSpeedSquare:F
    cmpl-float v7, v148, v147

    if-lez v7, :cond_4f

    .line 2027
    move/from16 v0, v148

    float-to-double v0, v0

    move-wide v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    move-wide v0, v10

    double-to-float v0, v0

    move/from16 v145, v0

    .line 2028
    .local v145, puckSpeed:F
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move v7, v0

    div-float v7, v7, v145

    mul-float v7, v7, v146

    move v0, v7

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 2029
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    div-float v7, v7, v145

    mul-float v7, v7, v146

    move v0, v7

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 2032
    .end local v145           #puckSpeed:F
    :cond_4f
    const/16 v161, 0x1

    .line 2035
    .end local v148           #puckSpeedSquare:F
    :cond_50
    sub-float v26, v26, v38

    .line 2037
    if-nez v87, :cond_2b

    .line 2038
    const/16 v26, 0x0

    goto/16 :goto_1f

    .line 1673
    .end local v119           #notQuite:F
    .end local v132           #puckDestY:F
    .end local v133           #puckHeadingIntoGoal:Z
    .end local v137           #puckMalletCollision:Z
    .end local v150           #puckYChange:F
    :cond_51
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    const/high16 v8, -0x4080

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_52

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    const/high16 v8, 0x3f80

    cmpl-float v7, v7, v8

    if-lez v7, :cond_53

    .line 1682
    :cond_52
    const/16 v133, 0x1

    .restart local v133       #puckHeadingIntoGoal:Z
    goto/16 :goto_25

    .line 1685
    .end local v133           #puckHeadingIntoGoal:Z
    :cond_53
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_54

    const/4 v7, 0x1

    :goto_2b
    int-to-float v7, v7

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v8, v0

    sub-float/2addr v7, v8

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v8, v0

    div-float v95, v7, v8

    .line 1687
    .local v95, goalLineTime:F
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move v7, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move v8, v0

    mul-float v8, v8, v95

    add-float v96, v7, v8

    .line 1689
    .local v96, goalLineXPosition:F
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_55

    const v7, 0x3f6f4867

    .line 1690
    :goto_2c
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v8, v0

    .line 1689
    sub-float/2addr v7, v8

    .line 1690
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v8, v0

    .line 1689
    div-float v187, v7, v8

    .line 1692
    .local v187, touchingGoalLineTime:F
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move v7, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move v8, v0

    mul-float v8, v8, v187

    add-float v186, v7, v8

    .line 1694
    .local v186, touchingGoalLinePosition:F
    invoke-static/range {v96 .. v96}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x3ebc5b2c

    cmpg-float v7, v7, v8

    if-gez v7, :cond_56

    .line 1695
    invoke-static/range {v186 .. v186}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x3ebc5b2c

    cmpg-float v7, v7, v8

    if-gez v7, :cond_56

    const/4 v7, 0x1

    move/from16 v133, v7

    .line 1693
    .restart local v133       #puckHeadingIntoGoal:Z
    :goto_2d
    goto/16 :goto_25

    .line 1685
    .end local v95           #goalLineTime:F
    .end local v96           #goalLineXPosition:F
    .end local v133           #puckHeadingIntoGoal:Z
    .end local v186           #touchingGoalLinePosition:F
    .end local v187           #touchingGoalLineTime:F
    :cond_54
    const/4 v7, -0x1

    goto :goto_2b

    .line 1689
    .restart local v95       #goalLineTime:F
    .restart local v96       #goalLineXPosition:F
    :cond_55
    const v7, -0x4090b799

    goto :goto_2c

    .line 1695
    .restart local v186       #touchingGoalLinePosition:F
    .restart local v187       #touchingGoalLineTime:F
    :cond_56
    const/4 v7, 0x0

    move/from16 v133, v7

    goto :goto_2d

    .line 1724
    .end local v95           #goalLineTime:F
    .end local v96           #goalLineXPosition:F
    .end local v186           #touchingGoalLinePosition:F
    .end local v187           #touchingGoalLineTime:F
    .restart local v132       #puckDestY:F
    .restart local v133       #puckHeadingIntoGoal:Z
    :cond_57
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    move/from16 v0, v132

    move v1, v7

    invoke-static {v0, v1}, Lcom/jjcgames/android/airhockey/Game;->sameSign(FF)Z

    move-result v7

    if-eqz v7, :cond_4b

    .line 1728
    invoke-static/range {v131 .. v131}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x3eddca5e

    cmpg-float v7, v7, v8

    if-gez v7, :cond_5a

    .line 1731
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move v7, v0

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_58

    const/4 v7, 0x1

    :goto_2e
    int-to-float v7, v7

    const v8, 0x3f5dca5e

    mul-float/2addr v7, v8

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    .line 1732
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v8, v0

    const/4 v10, 0x0

    cmpl-float v8, v8, v10

    if-lez v8, :cond_59

    const/4 v8, 0x1

    :goto_2f
    int-to-float v8, v8

    .line 1730
    move-object/from16 v0, v28

    move v1, v7

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 1734
    const v31, 0x3d85bcc8

    const/16 v32, 0x0

    const/high16 v33, -0x4080

    move-object/from16 v27, v21

    move-object/from16 v29, v23

    .line 1733
    invoke-static/range {v27 .. v33}, Lcom/jjcgames/android/airhockey/Game;->collisionTime(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;FFF)F

    move-result v172

    .line 1738
    .restart local v172       #t:F
    :goto_30
    const/4 v7, 0x0

    cmpl-float v7, v172, v7

    if-lez v7, :cond_5b

    cmpg-float v7, v172, v38

    if-gez v7, :cond_5b

    .line 1739
    move/from16 v38, v172

    .line 1740
    const/16 v87, 0x5

    goto/16 :goto_26

    .line 1731
    .end local v172           #t:F
    :cond_58
    const/4 v7, -0x1

    goto :goto_2e

    .line 1732
    :cond_59
    const/4 v8, -0x1

    goto :goto_2f

    .line 1736
    :cond_5a
    const v172, 0x7f7fffff

    .restart local v172       #t:F
    goto :goto_30

    .line 1741
    :cond_5b
    const v7, 0x7f7fffff

    cmpg-float v7, v172, v7

    if-ltz v7, :cond_4b

    .line 1748
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    div-float v7, v140, v7

    .line 1747
    sub-float v172, v26, v7

    .line 1749
    const/4 v7, 0x0

    cmpl-float v7, v172, v7

    if-lez v7, :cond_4b

    cmpg-float v7, v172, v38

    if-gez v7, :cond_4b

    .line 1750
    move/from16 v38, v172

    .line 1751
    const/16 v87, 0x4

    goto/16 :goto_26

    .line 1762
    .end local v172           #t:F
    :cond_5c
    move/from16 v0, v100

    move/from16 v1, v70

    if-ne v0, v1, :cond_5d

    if-eqz v185, :cond_5e

    .line 1763
    :cond_5d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->twoPlayer:Z

    move v7, v0

    if-eqz v7, :cond_5f

    move/from16 v0, v100

    move/from16 v1, v70

    if-eq v0, v1, :cond_5f

    .line 1761
    :cond_5e
    :goto_31
    add-int/lit8 v100, v100, 0x1

    goto/16 :goto_27

    .line 1769
    :cond_5f
    aget-object v7, v123, v100

    iget v7, v7, Landroid/graphics/PointF;->x:F

    aget-object v8, v129, v100

    iget v8, v8, Landroid/graphics/PointF;->x:F

    mul-float v8, v8, v26

    add-float/2addr v7, v8

    .line 1768
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 1770
    const v8, 0x3f18417d

    .line 1768
    sub-float v107, v7, v8

    .line 1771
    .local v107, malletOvershootX:F
    const/4 v7, 0x0

    cmpl-float v7, v107, v7

    if-lez v7, :cond_60

    .line 1773
    aget-object v7, v129, v100

    iget v7, v7, Landroid/graphics/PointF;->x:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    div-float v7, v107, v7

    .line 1772
    sub-float v172, v26, v7

    .line 1776
    .restart local v172       #t:F
    const/4 v7, 0x0

    cmpl-float v7, v172, v7

    if-lez v7, :cond_60

    cmpg-float v7, v172, v38

    if-gez v7, :cond_60

    .line 1777
    move/from16 v38, v172

    .line 1778
    add-int/lit8 v87, v100, 0x8

    .line 1782
    .end local v172           #t:F
    :cond_60
    aget-object v7, v123, v100

    iget v7, v7, Landroid/graphics/PointF;->y:F

    aget-object v8, v129, v100

    iget v8, v8, Landroid/graphics/PointF;->y:F

    mul-float v8, v8, v26

    add-float v105, v7, v8

    .line 1784
    .local v105, malletDestY:F
    invoke-static/range {v105 .. v105}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x3f5d7fcf

    sub-float v108, v7, v8

    .line 1785
    .local v108, malletOvershootY:F
    const/4 v7, 0x0

    cmpl-float v7, v108, v7

    if-lez v7, :cond_61

    .line 1787
    aget-object v7, v129, v100

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    div-float v7, v108, v7

    .line 1786
    sub-float v172, v26, v7

    .line 1788
    .restart local v172       #t:F
    const/4 v7, 0x0

    cmpl-float v7, v172, v7

    if-lez v7, :cond_61

    cmpg-float v7, v172, v38

    if-gez v7, :cond_61

    .line 1789
    move/from16 v38, v172

    .line 1790
    add-int/lit8 v87, v100, 0xa

    .line 1794
    .end local v172           #t:F
    :cond_61
    if-nez v100, :cond_62

    const/4 v7, 0x1

    :goto_32
    int-to-float v7, v7

    mul-float v7, v7, v105

    const v8, 0x3e0a00c4

    add-float v106, v7, v8

    .line 1795
    .local v106, malletOverline:F
    const/4 v7, 0x0

    cmpl-float v7, v106, v7

    if-lez v7, :cond_5e

    .line 1797
    aget-object v7, v129, v100

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    div-float v7, v106, v7

    .line 1796
    sub-float v172, v26, v7

    .line 1798
    .restart local v172       #t:F
    const/4 v7, 0x0

    cmpl-float v7, v172, v7

    if-lez v7, :cond_5e

    cmpg-float v7, v172, v38

    if-gez v7, :cond_5e

    .line 1799
    move/from16 v38, v172

    .line 1801
    add-int/lit8 v87, v100, 0xc

    .line 1800
    goto/16 :goto_31

    .line 1794
    .end local v106           #malletOverline:F
    .end local v172           #t:F
    :cond_62
    const/4 v7, -0x1

    goto :goto_32

    .line 1816
    .end local v105           #malletDestY:F
    .end local v107           #malletOvershootX:F
    .end local v108           #malletOvershootY:F
    :cond_63
    const v119, 0x3f7fbe77

    .restart local v119       #notQuite:F
    goto/16 :goto_28

    .line 1833
    .restart local v150       #puckYChange:F
    :cond_64
    move/from16 v0, v100

    move/from16 v1, v70

    if-ne v0, v1, :cond_65

    if-eqz v185, :cond_66

    .line 1834
    :cond_65
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->twoPlayer:Z

    move v7, v0

    if-eqz v7, :cond_67

    move/from16 v0, v100

    move/from16 v1, v70

    if-eq v0, v1, :cond_67

    .line 1832
    :cond_66
    :goto_33
    add-int/lit8 v100, v100, 0x1

    goto/16 :goto_29

    .line 1839
    :cond_67
    aget-object v7, v123, v100

    iget v8, v7, Landroid/graphics/PointF;->x:F

    aget-object v10, v129, v100

    iget v10, v10, Landroid/graphics/PointF;->x:F

    mul-float v10, v10, v38

    mul-float v10, v10, v119

    add-float/2addr v8, v10

    iput v8, v7, Landroid/graphics/PointF;->x:F

    .line 1840
    aget-object v7, v123, v100

    iget v8, v7, Landroid/graphics/PointF;->y:F

    aget-object v10, v129, v100

    iget v10, v10, Landroid/graphics/PointF;->y:F

    mul-float v10, v10, v38

    mul-float v10, v10, v119

    add-float/2addr v8, v10

    iput v8, v7, Landroid/graphics/PointF;->y:F

    goto :goto_33

    .line 1855
    .restart local v137       #puckMalletCollision:Z
    :cond_68
    const/4 v7, 0x2

    move/from16 v0, v87

    move v1, v7

    if-ne v0, v1, :cond_6a

    .line 1856
    const/4 v7, 0x1

    aget-object v32, v125, v7

    .line 1857
    const/4 v7, 0x1

    aget-object v34, v129, v7

    .line 1858
    const v35, 0x3d03126f

    const v36, 0x3d9fbe77

    const v37, 0x3f59999a

    move-object/from16 v31, v134

    move-object/from16 v33, v23

    .line 1856
    invoke-static/range {v31 .. v38}, Lcom/jjcgames/android/airhockey/Game;->collide(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;FFFF)V

    .line 1859
    if-eqz v168, :cond_69

    if-nez v138, :cond_69

    .line 1861
    const/4 v7, 0x1

    aget-object v7, v129, v7

    move-object/from16 v0, v23

    move-object v1, v7

    invoke-static {v0, v1}, Lcom/jjcgames/android/airhockey/Game;->collisionVolume(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v7

    .line 1860
    move-object/from16 v0, v169

    move-object/from16 v1, v139

    move v2, v7

    invoke-static {v0, v1, v2}, Lcom/jjcgames/android/airhockey/Game;->playRandom(Landroid/media/SoundPool;[IF)V

    .line 1862
    const/16 v138, 0x1

    .line 1864
    :cond_69
    const/16 v137, 0x1

    goto/16 :goto_2a

    .line 1865
    :cond_6a
    const/4 v7, 0x3

    move/from16 v0, v87

    move v1, v7

    if-ne v0, v1, :cond_6b

    .line 1866
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move v7, v0

    neg-float v7, v7

    const v8, 0x3f59999a

    mul-float/2addr v7, v8

    move v0, v7

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 1867
    if-eqz v168, :cond_4e

    if-nez v143, :cond_4e

    .line 1869
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move v7, v0

    invoke-static {v7}, Lcom/jjcgames/android/airhockey/Game;->collisionVolume(F)F

    move-result v7

    .line 1868
    move-object/from16 v0, v169

    move-object/from16 v1, v144

    move v2, v7

    invoke-static {v0, v1, v2}, Lcom/jjcgames/android/airhockey/Game;->playRandom(Landroid/media/SoundPool;[IF)V

    .line 1870
    const/16 v143, 0x1

    goto/16 :goto_2a

    .line 1872
    :cond_6b
    const/4 v7, 0x4

    move/from16 v0, v87

    move v1, v7

    if-ne v0, v1, :cond_6d

    .line 1873
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    neg-float v7, v7

    const v8, 0x3f59999a

    mul-float/2addr v7, v8

    move v0, v7

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 1874
    if-eqz v168, :cond_6c

    if-nez v143, :cond_6c

    .line 1876
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    invoke-static {v7}, Lcom/jjcgames/android/airhockey/Game;->collisionVolume(F)F

    move-result v7

    .line 1875
    move-object/from16 v0, v169

    move-object/from16 v1, v144

    move v2, v7

    invoke-static {v0, v1, v2}, Lcom/jjcgames/android/airhockey/Game;->playRandom(Landroid/media/SoundPool;[IF)V

    .line 1877
    const/16 v143, 0x1

    .line 1879
    :cond_6c
    const/16 v161, 0x1

    .line 1880
    move/from16 v159, v75

    goto/16 :goto_2a

    .line 1881
    :cond_6d
    const/4 v7, 0x5

    move/from16 v0, v87

    move v1, v7

    if-ne v0, v1, :cond_6f

    .line 1882
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move v7, v0

    neg-float v7, v7

    const v8, 0x3f59999a

    mul-float/2addr v7, v8

    move v0, v7

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 1883
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    neg-float v7, v7

    const v8, 0x3f59999a

    mul-float/2addr v7, v8

    move v0, v7

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 1884
    if-eqz v168, :cond_6e

    if-nez v143, :cond_6e

    .line 1886
    invoke-static/range {v23 .. v23}, Lcom/jjcgames/android/airhockey/Game;->collisionVolume(Landroid/graphics/PointF;)F

    move-result v7

    .line 1885
    move-object/from16 v0, v169

    move-object/from16 v1, v144

    move v2, v7

    invoke-static {v0, v1, v2}, Lcom/jjcgames/android/airhockey/Game;->playRandom(Landroid/media/SoundPool;[IF)V

    .line 1887
    const/16 v143, 0x1

    .line 1889
    :cond_6e
    const/16 v161, 0x1

    .line 1890
    move/from16 v159, v75

    goto/16 :goto_2a

    .line 1891
    :cond_6f
    const/4 v7, 0x6

    move/from16 v0, v87

    move v1, v7

    if-ne v0, v1, :cond_70

    .line 1896
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move v7, v0

    neg-float v7, v7

    move v0, v7

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 1897
    if-eqz v168, :cond_4e

    if-nez v143, :cond_4e

    .line 1899
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move v7, v0

    invoke-static {v7}, Lcom/jjcgames/android/airhockey/Game;->collisionVolume(F)F

    move-result v7

    .line 1898
    move-object/from16 v0, v169

    move-object/from16 v1, v144

    move v2, v7

    invoke-static {v0, v1, v2}, Lcom/jjcgames/android/airhockey/Game;->playRandom(Landroid/media/SoundPool;[IF)V

    .line 1900
    const/16 v143, 0x1

    goto/16 :goto_2a

    .line 1902
    :cond_70
    const/4 v7, 0x7

    move/from16 v0, v87

    move v1, v7

    if-ne v0, v1, :cond_7a

    .line 1903
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_73

    .line 1904
    const/4 v7, 0x0

    aget v8, v19, v7

    add-int/lit8 v8, v8, 0x1

    aput v8, v19, v7

    .line 1905
    const/4 v7, 0x0

    aget v8, v110, v7

    add-int/lit8 v8, v8, 0x1

    aput v8, v110, v7

    .line 1907
    sget-object v7, Lcom/jjcgames/android/airhockey/Game;->initialPuckPosition:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    sget-object v8, Lcom/jjcgames/android/airhockey/Game;->initialPuckPosition:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    neg-float v8, v8

    .line 1906
    move-object/from16 v0, v21

    move v1, v7

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 1908
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->twoPlayer:Z

    move v7, v0

    if-nez v7, :cond_71

    .line 1912
    const/4 v7, 0x1

    aget-object v7, v123, v7

    invoke-static {v7}, Lcom/jjcgames/android/airhockey/Game;->initialCPUMalletPosition(Landroid/graphics/PointF;)V

    .line 1913
    const/4 v7, 0x1

    aget-object v7, v123, v7

    iget v7, v7, Landroid/graphics/PointF;->x:F

    const/4 v8, 0x1

    aget-object v8, v123, v8

    iget v8, v8, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v173

    move v1, v7

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 1914
    const/4 v7, 0x1

    aget-object v7, v129, v7

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v10}, Landroid/graphics/PointF;->set(FF)V

    .line 1916
    const/high16 v130, 0x3f80

    .line 1923
    :cond_71
    :goto_34
    const/16 v100, 0x0

    :goto_35
    move-object/from16 v0, v19

    array-length v0, v0

    move v7, v0

    move/from16 v0, v100

    move v1, v7

    if-lt v0, v1, :cond_74

    .line 1992
    :goto_36
    if-eqz v168, :cond_72

    .line 1993
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    invoke-static {v7}, Lcom/jjcgames/android/airhockey/Game;->collisionVolume(F)F

    move-result v7

    move-object/from16 v0, v169

    move-object/from16 v1, v98

    move v2, v7

    invoke-static {v0, v1, v2}, Lcom/jjcgames/android/airhockey/Game;->playRandom(Landroid/media/SoundPool;[IF)V

    :cond_72
    move-object v14, v9

    move/from16 v15, v162

    move/from16 v16, p4

    move/from16 v17, p5

    move-object/from16 v18, v167

    .line 1995
    invoke-static/range {v14 .. v19}, Lcom/jjcgames/android/airhockey/Game;->setupScoreTextures(Ljavax/microedition/khronos/opengles/GL10;ZII[Lcom/jjcgames/android/airhockey/Game$Texture;[I)V

    .line 1998
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1999
    invoke-static/range {v23 .. v23}, Lcom/jjcgames/android/airhockey/Game;->initialPuckVelocity(Landroid/graphics/PointF;)V

    .line 2001
    const/16 v161, 0x1

    goto/16 :goto_2a

    .line 1919
    :cond_73
    const/4 v7, 0x1

    aget v8, v19, v7

    add-int/lit8 v8, v8, 0x1

    aput v8, v19, v7

    .line 1920
    const/4 v7, 0x1

    aget v8, v110, v7

    add-int/lit8 v8, v8, 0x1

    aput v8, v110, v7

    .line 1921
    sget-object v7, Lcom/jjcgames/android/airhockey/Game;->initialPuckPosition:Landroid/graphics/PointF;

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    goto :goto_34

    .line 1924
    :cond_74
    aget v7, v19, v100

    const/4 v8, 0x7

    if-ne v7, v8, :cond_79

    .line 1925
    aget v7, v92, v100

    add-int/lit8 v7, v7, 0x1

    aput v7, v92, v100

    if-ne v7, v13, :cond_78

    .line 1926
    move/from16 v111, v100

    .line 1928
    const/4 v7, -0x2

    move/from16 v0, v124

    move v1, v7

    if-eq v0, v1, :cond_76

    .line 1930
    :try_start_d
    new-instance v7, Lcom/jjcgames/android/airhockey/Player;

    move-object v0, v7

    move-object/from16 v1, p1

    move/from16 v2, v124

    invoke-direct {v0, v1, v2}, Lcom/jjcgames/android/airhockey/Player;-><init>(Landroid/content/Context;I)V

    .line 1931
    move-object v0, v7

    iget v0, v0, Lcom/jjcgames/android/airhockey/Player;->level:I

    move/from16 v127, v0

    .line 1936
    .local v127, playerLevel:I
    sub-int v7, v73, v127

    int-to-float v7, v7

    const/high16 v8, 0x40e0

    div-float v97, v7, v8

    .line 1939
    .local v97, goalReward:F
    const/4 v7, 0x0

    aget v7, v110, v7

    .line 1940
    const/4 v8, 0x1

    aget v8, v110, v8

    .line 1939
    sub-int v94, v7, v8

    .line 1947
    .local v94, goalAdvantage:I
    if-nez v111, :cond_75

    .line 1949
    const/4 v7, 0x1

    move/from16 v0, v94

    move v1, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v94

    .line 1953
    :cond_75
    move/from16 v0, v94

    int-to-float v0, v0

    move v7, v0

    .line 1952
    mul-float v7, v7, v97

    float-to-int v7, v7

    add-int v118, v127, v7

    .line 1955
    .local v118, newLevel:I
    const/4 v7, 0x1

    .line 1954
    move/from16 v0, v118

    move v1, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v118

    .line 1957
    const/16 v7, 0x3e8

    .line 1956
    move/from16 v0, v118

    move v1, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v118

    .line 1958
    move-object/from16 v0, p1

    move/from16 v1, v124

    move/from16 v2, v73

    move/from16 v3, v118

    invoke-static {v0, v1, v2, v3}, Lcom/jjcgames/android/airhockey/Player;->addNewMatch(Landroid/content/Context;III)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    .line 1967
    .end local v94           #goalAdvantage:I
    .end local v97           #goalReward:F
    .end local v118           #newLevel:I
    .end local v127           #playerLevel:I
    :cond_76
    :goto_37
    move/from16 v190, v185

    .line 1968
    const/16 v185, 0x0

    .line 1969
    const/4 v7, 0x0

    aget-object v7, v90, v7

    .line 1970
    const/4 v8, 0x0

    .line 1973
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->twoPlayer:Z

    move v14, v0

    .line 1974
    const/4 v10, 0x0

    aget v15, v19, v10

    const/4 v10, 0x1

    aget v16, v19, v10

    .line 1975
    const/4 v10, 0x0

    aget v17, v92, v10

    const/4 v10, 0x1

    aget v18, v92, v10

    move-object/from16 v10, p1

    move/from16 v11, p4

    move/from16 v12, p5

    .line 1971
    invoke-static/range {v10 .. v18}, Lcom/jjcgames/android/airhockey/Game;->makeGameEndBitmap(Landroid/content/Context;IIIZIIII)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 1976
    const/4 v11, 0x1

    move/from16 v0, v162

    move v1, v8

    move-object v2, v10

    move v3, v11

    invoke-static {v0, v1, v2, v3}, Lcom/jjcgames/android/airhockey/Game;->prepareScoreBitmap(ZZLandroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1969
    invoke-virtual {v7, v9, v8}, Lcom/jjcgames/android/airhockey/Game$Texture;->loadBitmap(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;)V

    .line 1977
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->twoPlayer:Z

    move v7, v0

    if-eqz v7, :cond_77

    .line 1978
    const/4 v7, 0x1

    aget-object v7, v90, v7

    .line 1979
    const/4 v8, 0x1

    .line 1982
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->twoPlayer:Z

    move v14, v0

    .line 1983
    const/4 v10, 0x1

    aget v15, v19, v10

    const/4 v10, 0x0

    aget v16, v19, v10

    .line 1984
    const/4 v10, 0x1

    aget v17, v92, v10

    const/4 v10, 0x0

    aget v18, v92, v10

    move-object/from16 v10, p1

    move/from16 v11, p4

    move/from16 v12, p5

    .line 1980
    invoke-static/range {v10 .. v18}, Lcom/jjcgames/android/airhockey/Game;->makeGameEndBitmap(Landroid/content/Context;IIIZIIII)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 1985
    const/4 v11, 0x1

    move/from16 v0, v162

    move v1, v8

    move-object v2, v10

    move v3, v11

    invoke-static {v0, v1, v2, v3}, Lcom/jjcgames/android/airhockey/Game;->prepareScoreBitmap(ZZLandroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1978
    invoke-virtual {v7, v9, v8}, Lcom/jjcgames/android/airhockey/Game$Texture;->loadBitmap(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;)V

    .line 1987
    :cond_77
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1988
    invoke-virtual/range {p0 .. p0}, Lcom/jjcgames/android/airhockey/Game;->pause()V

    goto/16 :goto_36

    .line 1965
    :cond_78
    move/from16 v91, v100

    goto :goto_37

    .line 1923
    :cond_79
    add-int/lit8 v100, v100, 0x1

    goto/16 :goto_35

    .line 2003
    :cond_7a
    const/16 v7, 0x8

    move/from16 v0, v87

    move v1, v7

    if-eq v0, v1, :cond_7b

    .line 2004
    const/16 v7, 0x9

    move/from16 v0, v87

    move v1, v7

    if-ne v0, v1, :cond_7c

    .line 2006
    :cond_7b
    const/16 v7, 0x8

    sub-int v7, v87, v7

    aget-object v7, v129, v7

    .line 2007
    const/4 v8, 0x0

    .line 2006
    iput v8, v7, Landroid/graphics/PointF;->x:F

    goto/16 :goto_2a

    .line 2009
    :cond_7c
    const/16 v7, 0xa

    move/from16 v0, v87

    move v1, v7

    if-eq v0, v1, :cond_7d

    .line 2010
    const/16 v7, 0xb

    move/from16 v0, v87

    move v1, v7

    if-ne v0, v1, :cond_7e

    .line 2012
    :cond_7d
    const/16 v7, 0xa

    sub-int v7, v87, v7

    aget-object v7, v129, v7

    .line 2013
    const/4 v8, 0x0

    .line 2012
    iput v8, v7, Landroid/graphics/PointF;->y:F

    goto/16 :goto_2a

    .line 2015
    :cond_7e
    const/16 v7, 0xc

    move/from16 v0, v87

    move v1, v7

    if-eq v0, v1, :cond_7f

    .line 2016
    const/16 v7, 0xd

    move/from16 v0, v87

    move v1, v7

    if-ne v0, v1, :cond_4e

    .line 2018
    :cond_7f
    const/16 v7, 0xc

    sub-int v7, v87, v7

    aget-object v7, v129, v7

    .line 2019
    const/4 v8, 0x0

    .line 2018
    iput v8, v7, Landroid/graphics/PointF;->y:F

    goto/16 :goto_2a

    .line 2057
    .end local v38           #firstT:F
    .end local v87           #firstCollision:I
    .end local v119           #notQuite:F
    .end local v131           #puckDestX:F
    .end local v132           #puckDestY:F
    .end local v133           #puckHeadingIntoGoal:Z
    .end local v137           #puckMalletCollision:Z
    .end local v140           #puckOverShoot:F
    .end local v150           #puckYChange:F
    :cond_80
    const/4 v7, -0x1

    move/from16 v79, v7

    goto/16 :goto_20

    .line 2062
    :cond_81
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    const v8, 0x3d85bcc8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_83

    .line 2063
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_82

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    const/high16 v8, 0x41a0

    div-float v8, v114, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_83

    .line 2066
    :cond_82
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move v7, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v8, v0

    move-object/from16 v0, v173

    move v1, v7

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_21

    .line 2079
    :cond_83
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v191, v0

    .line 2080
    .local v191, x:F
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v189, v0

    .line 2084
    .local v189, vX:F
    const v7, 0x3f4904ee

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v8, v0

    sub-float/2addr v7, v8

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v8, v0

    div-float v80, v7, v8

    .line 2087
    .local v80, dlt:F
    mul-float v7, v189, v80

    add-float v81, v191, v7

    .line 2089
    .local v81, dlx:F
    :goto_38
    const v7, -0x40d5f5eb

    cmpg-float v7, v81, v7

    if-ltz v7, :cond_84

    const v7, 0x3f2a0a15

    cmpl-float v7, v81, v7

    if-gtz v7, :cond_84

    .line 2101
    const v7, 0x3f4904ee

    move-object/from16 v0, v173

    move/from16 v1, v81

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 2102
    const/16 v161, 0x0

    goto/16 :goto_21

    .line 2091
    :cond_84
    const v7, -0x40d5f5eb

    cmpg-float v7, v81, v7

    if-gez v7, :cond_85

    const v7, -0x40d5f5eb

    move/from16 v157, v7

    .line 2093
    .local v157, railX:F
    :goto_39
    sub-float v7, v157, v191

    div-float v158, v7, v189

    .line 2094
    .local v158, rct:F
    sub-float v80, v80, v158

    .line 2095
    move/from16 v191, v157

    .line 2096
    move/from16 v0, v189

    neg-float v0, v0

    move v7, v0

    const v8, 0x3f59999a

    mul-float v189, v7, v8

    .line 2098
    mul-float v7, v189, v80

    add-float v81, v191, v7

    goto :goto_38

    .line 2091
    .end local v157           #railX:F
    .end local v158           #rct:F
    :cond_85
    const v7, 0x3f2a0a15

    move/from16 v157, v7

    goto :goto_39

    .line 2157
    .end local v26           #remainingTime:F
    .end local v47           #COLLISION_CPU:I
    .end local v48           #COLLISION_GOALBACK:I
    .end local v49           #COLLISION_GOALCORNER:I
    .end local v50           #COLLISION_GOALSIDE:I
    .end local v51           #COLLISION_LEFTRIGHT:I
    .end local v52           #COLLISION_MALLETCENTERLINE0:I
    .end local v53           #COLLISION_MALLETCENTERLINE1:I
    .end local v54           #COLLISION_MALLETLEFTRIGHT0:I
    .end local v55           #COLLISION_MALLETLEFTRIGHT1:I
    .end local v56           #COLLISION_MALLETTOPBOTTOM0:I
    .end local v57           #COLLISION_MALLETTOPBOTTOM1:I
    .end local v58           #COLLISION_NONE:I
    .end local v59           #COLLISION_PLAYER:I
    .end local v60           #COLLISION_TOPBOTTOM:I
    .end local v68           #changeOfControl:Z
    .end local v80           #dlt:F
    .end local v81           #dlx:F
    .end local v120           #oldControl:I
    .end local v138           #puckMalletPlayed:Z
    .end local v143           #puckRailPlayed:Z
    .end local v184           #touchedLastFrame:Z
    .end local v189           #vX:F
    .end local v191           #x:F
    :cond_86
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    const v8, -0x4090b799

    cmpg-float v7, v7, v8

    if-gez v7, :cond_32

    .line 2159
    const/16 v43, 0x0

    const/16 v44, 0x0

    .line 2161
    move/from16 v0, p5

    int-to-float v0, v0

    move v7, v0

    const v8, 0x3e098ab8

    mul-float/2addr v7, v8

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    float-to-double v10, v7

    .line 2160
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    move-wide v0, v10

    double-to-int v0, v0

    move/from16 v46, v0

    move-object/from16 v39, v9

    move/from16 v40, p4

    move/from16 v41, p5

    move/from16 v45, p4

    .line 2158
    invoke-static/range {v39 .. v46}, Lcom/jjcgames/android/airhockey/Game;->drawSubTexture(Ljavax/microedition/khronos/opengles/GL11;IILcom/jjcgames/android/airhockey/Game$Texture;IIII)V

    goto/16 :goto_22

    .line 2210
    :cond_87
    aget-object v7, v125, v100

    aget-object v8, v123, v100

    invoke-virtual {v7, v8}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 2206
    add-int/lit8 v100, v100, 0x1

    goto/16 :goto_23

    .line 2236
    .end local v9           #gl:Ljavax/microedition/khronos/opengles/GL11;
    .end local v102           #lastElapsedTime:F
    .end local v182           #time:J
    .local v170, state:Ljava/io/Writer;
    :cond_88
    :try_start_e
    const-string v8, "1"
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3

    goto/16 :goto_11

    .line 2265
    .end local v170           #state:Ljava/io/Writer;
    :catch_3
    move-exception v7

    move-object/from16 v82, v7

    .line 2266
    .local v82, e:Ljava/io/IOException;
    const-string v7, "state"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    goto/16 :goto_12

    .line 2269
    .end local v82           #e:Ljava/io/IOException;
    :cond_89
    new-instance v101, Landroid/content/Intent;

    invoke-direct/range {v101 .. v101}, Landroid/content/Intent;-><init>()V

    .line 2270
    .restart local v101       #in:Landroid/content/Intent;
    const/4 v7, -0x2

    move/from16 v0, v124

    move v1, v7

    if-ne v0, v1, :cond_8a

    .line 2271
    const-class v7, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;

    move-object/from16 v0, v101

    move-object/from16 v1, p1

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2273
    :cond_8a
    move-object/from16 v0, p2

    move-object/from16 v1, v101

    invoke-virtual {v0, v1}, Lcom/jjcgames/android/airhockey/GameActivity$Finisher;->finish(Landroid/content/Intent;)V

    .line 2275
    const/4 v7, 0x0

    move v0, v7

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jjcgames/android/airhockey/Game;->movingOn:Z

    goto/16 :goto_12

    .line 1960
    .end local v101           #in:Landroid/content/Intent;
    .restart local v9       #gl:Ljavax/microedition/khronos/opengles/GL11;
    .restart local v26       #remainingTime:F
    .restart local v38       #firstT:F
    .restart local v47       #COLLISION_CPU:I
    .restart local v48       #COLLISION_GOALBACK:I
    .restart local v49       #COLLISION_GOALCORNER:I
    .restart local v50       #COLLISION_GOALSIDE:I
    .restart local v51       #COLLISION_LEFTRIGHT:I
    .restart local v52       #COLLISION_MALLETCENTERLINE0:I
    .restart local v53       #COLLISION_MALLETCENTERLINE1:I
    .restart local v54       #COLLISION_MALLETLEFTRIGHT0:I
    .restart local v55       #COLLISION_MALLETLEFTRIGHT1:I
    .restart local v56       #COLLISION_MALLETTOPBOTTOM0:I
    .restart local v57       #COLLISION_MALLETTOPBOTTOM1:I
    .restart local v58       #COLLISION_NONE:I
    .restart local v59       #COLLISION_PLAYER:I
    .restart local v60       #COLLISION_TOPBOTTOM:I
    .restart local v68       #changeOfControl:Z
    .restart local v87       #firstCollision:I
    .restart local v102       #lastElapsedTime:F
    .restart local v119       #notQuite:F
    .restart local v120       #oldControl:I
    .restart local v131       #puckDestX:F
    .restart local v132       #puckDestY:F
    .restart local v133       #puckHeadingIntoGoal:Z
    .restart local v137       #puckMalletCollision:Z
    .restart local v138       #puckMalletPlayed:Z
    .restart local v140       #puckOverShoot:F
    .restart local v143       #puckRailPlayed:Z
    .restart local v150       #puckYChange:F
    .restart local v182       #time:J
    .restart local v184       #touchedLastFrame:Z
    :catch_4
    move-exception v7

    goto/16 :goto_37

    .line 1353
    .end local v26           #remainingTime:F
    .end local v28           #p:Landroid/graphics/PointF;
    .end local v30           #pZero:Landroid/graphics/PointF;
    .end local v38           #firstT:F
    .end local v47           #COLLISION_CPU:I
    .end local v48           #COLLISION_GOALBACK:I
    .end local v49           #COLLISION_GOALCORNER:I
    .end local v50           #COLLISION_GOALSIDE:I
    .end local v51           #COLLISION_LEFTRIGHT:I
    .end local v52           #COLLISION_MALLETCENTERLINE0:I
    .end local v53           #COLLISION_MALLETCENTERLINE1:I
    .end local v54           #COLLISION_MALLETLEFTRIGHT0:I
    .end local v55           #COLLISION_MALLETLEFTRIGHT1:I
    .end local v56           #COLLISION_MALLETTOPBOTTOM0:I
    .end local v57           #COLLISION_MALLETTOPBOTTOM1:I
    .end local v58           #COLLISION_NONE:I
    .end local v59           #COLLISION_PLAYER:I
    .end local v60           #COLLISION_TOPBOTTOM:I
    .end local v68           #changeOfControl:Z
    .end local v72           #cpuEstimationAccuracyFudge:F
    .end local v74           #cpuLevelF:F
    .end local v75           #cpuReactionTime:F
    .end local v84           #elapsedTime:F
    .end local v87           #firstCollision:I
    .end local v102           #lastElapsedTime:F
    .end local v103           #lastT:J
    .end local v112           #maxCPUMalletAcceleration:F
    .end local v113           #maxCPUMalletAccelerationSquare:F
    .end local v114           #maxCPUMalletSpeed:F
    .end local v115           #maxCPUMalletSpeedSquare:F
    .end local v119           #notQuite:F
    .end local v120           #oldControl:I
    .end local v131           #puckDestX:F
    .end local v132           #puckDestY:F
    .end local v133           #puckHeadingIntoGoal:Z
    .end local v137           #puckMalletCollision:Z
    .end local v138           #puckMalletPlayed:Z
    .end local v140           #puckOverShoot:F
    .end local v143           #puckRailPlayed:Z
    .end local v147           #puckSpeedLimitSquare:F
    .end local v150           #puckYChange:F
    .end local v163           #scorePosition0x:I
    .end local v164           #scorePosition0y:I
    .end local v165           #scorePosition1x:I
    .end local v166           #scorePosition1y:I
    .end local v182           #time:J
    .end local v184           #touchedLastFrame:Z
    .end local v185           #touchedThisFrame:Z
    :catch_5
    move-exception v7

    goto/16 :goto_f

    .line 1352
    :catch_6
    move-exception v7

    goto/16 :goto_f

    .line 1093
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0xbft
        0x0t 0x0t 0x0t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0xbft
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 1100
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private static sameSign(FF)Z
    .locals 4
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 756
    cmpg-float v0, p0, v1

    if-gez v0, :cond_1

    .line 757
    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    move v0, v3

    .line 759
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 757
    goto :goto_0

    .line 759
    :cond_1
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method private static screenToPlayfield(Landroid/graphics/PointF;Landroid/graphics/PointF;ZII)V
    .locals 5
    .parameter "playfield"
    .parameter "screen"
    .parameter "rotate"
    .parameter "screenWidth"
    .parameter "screenHeight"

    .prologue
    const/high16 v4, -0x4080

    const v3, 0x3f5d9d52

    const/high16 v2, 0x4000

    .line 325
    if-eqz p2, :cond_0

    .line 326
    iget v0, p1, Landroid/graphics/PointF;->x:F

    int-to-float v1, p3

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    mul-float/2addr v0, v2

    .line 327
    int-to-float v1, p3

    div-float/2addr v0, v1

    div-float/2addr v0, v3

    mul-float/2addr v0, v4

    .line 326
    iput v0, p0, Landroid/graphics/PointF;->y:F

    .line 328
    iget v0, p1, Landroid/graphics/PointF;->y:F

    int-to-float v1, p4

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    mul-float/2addr v0, v2

    .line 329
    int-to-float v1, p3

    div-float/2addr v0, v1

    div-float/2addr v0, v3

    mul-float/2addr v0, v4

    .line 328
    iput v0, p0, Landroid/graphics/PointF;->x:F

    .line 336
    :goto_0
    return-void

    .line 331
    :cond_0
    iget v0, p1, Landroid/graphics/PointF;->y:F

    int-to-float v1, p4

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    mul-float/2addr v0, v2

    .line 332
    int-to-float v1, p4

    div-float/2addr v0, v1

    div-float/2addr v0, v3

    mul-float/2addr v0, v4

    .line 331
    iput v0, p0, Landroid/graphics/PointF;->y:F

    .line 333
    iget v0, p1, Landroid/graphics/PointF;->x:F

    int-to-float v1, p3

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    mul-float/2addr v0, v2

    .line 334
    int-to-float v1, p4

    div-float/2addr v0, v1

    div-float/2addr v0, v3

    .line 333
    iput v0, p0, Landroid/graphics/PointF;->x:F

    goto :goto_0
.end method

.method private static setTextureParams(Ljavax/microedition/khronos/opengles/GL10;Z)V
    .locals 6
    .parameter "gl"
    .parameter "linear"

    .prologue
    const v5, 0x812f

    const/16 v4, 0x2601

    const/16 v3, 0x2600

    const/16 v2, 0xde1

    .line 845
    const/16 v0, 0x2801

    .line 846
    if-eqz p1, :cond_0

    move v1, v4

    .line 845
    :goto_0
    invoke-interface {p0, v2, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 847
    const/16 v0, 0x2800

    .line 848
    if-eqz p1, :cond_1

    move v1, v4

    .line 847
    :goto_1
    invoke-interface {p0, v2, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 850
    const/16 v0, 0x2802

    .line 849
    invoke-interface {p0, v2, v0, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 852
    const/16 v0, 0x2803

    .line 851
    invoke-interface {p0, v2, v0, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 853
    return-void

    :cond_0
    move v1, v3

    .line 846
    goto :goto_0

    :cond_1
    move v1, v3

    .line 848
    goto :goto_1
.end method

.method private static setupScoreTextures(Ljavax/microedition/khronos/opengles/GL10;ZII[Lcom/jjcgames/android/airhockey/Game$Texture;[I)V
    .locals 5
    .parameter "gl"
    .parameter "rotate"
    .parameter "screenWidth"
    .parameter "screenHeight"
    .parameter "textures"
    .parameter "scores"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 959
    aget-object v0, p4, v3

    .line 960
    aget v1, p5, v3

    aget v2, p5, v4

    invoke-static {p2, p3, v1, v2}, Lcom/jjcgames/android/airhockey/Game;->makeScoreBitmap(IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 961
    invoke-static {p1, v3, v1, v3}, Lcom/jjcgames/android/airhockey/Game;->prepareScoreBitmap(ZZLandroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 959
    invoke-virtual {v0, p0, v1}, Lcom/jjcgames/android/airhockey/Game$Texture;->loadBitmap(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;)V

    .line 962
    aget-object v0, p4, v4

    .line 963
    aget v1, p5, v4

    aget v2, p5, v3

    invoke-static {p2, p3, v1, v2}, Lcom/jjcgames/android/airhockey/Game;->makeScoreBitmap(IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 964
    invoke-static {p1, v4, v1, v3}, Lcom/jjcgames/android/airhockey/Game;->prepareScoreBitmap(ZZLandroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 962
    invoke-virtual {v0, p0, v1}, Lcom/jjcgames/android/airhockey/Game$Texture;->loadBitmap(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;)V

    .line 965
    return-void
.end method

.method static stateReader(Landroid/content/Context;)Ljava/io/BufferedReader;
    .locals 4
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    .line 64
    const-string v2, "state"

    invoke-virtual {p0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    sget-object v3, Lcom/jjcgames/android/airhockey/Game;->STATE_FILE_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    const/16 v2, 0x400

    .line 63
    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    return-object v0
.end method

.method static stateWriter(Landroid/content/Context;)Ljava/io/Writer;
    .locals 3
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Ljava/io/OutputStreamWriter;

    .line 69
    const-string v1, "state"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    sget-object v2, Lcom/jjcgames/android/airhockey/Game;->STATE_FILE_CHARSET:Ljava/nio/charset/Charset;

    .line 68
    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    return-object v0
.end method


# virtual methods
.method finish()V
    .locals 2

    .prologue
    .line 265
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jjcgames/android/airhockey/Game;->threadFinishing:Z

    .line 267
    :try_start_0
    iget-object v1, p0, Lcom/jjcgames/android/airhockey/Game;->gameThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :cond_0
    return-void

    .line 268
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 269
    .local v0, e:Ljava/lang/InterruptedException;
    sget-boolean v1, Lcom/jjcgames/android/airhockey/Game;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public go(Landroid/content/Context;Lcom/jjcgames/android/airhockey/GameActivity$Finisher;Landroid/view/SurfaceHolder;IIFFLandroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "finisher"
    .parameter "holder"
    .parameter "width"
    .parameter "height"
    .parameter "xdpi"
    .parameter "ydpi"
    .parameter "intent"

    .prologue
    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jjcgames/android/airhockey/Game;->threadFinishing:Z

    .line 198
    new-instance v0, Lcom/jjcgames/android/airhockey/Game$1;

    const-string v2, "Game"

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/jjcgames/android/airhockey/Game$1;-><init>(Lcom/jjcgames/android/airhockey/Game;Ljava/lang/String;Landroid/content/Context;Lcom/jjcgames/android/airhockey/GameActivity$Finisher;Landroid/view/SurfaceHolder;IIFFLandroid/content/Intent;)V

    iput-object v0, p0, Lcom/jjcgames/android/airhockey/Game;->gameThread:Ljava/lang/Thread;

    .line 205
    iget-object v0, p0, Lcom/jjcgames/android/airhockey/Game;->gameThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 206
    return-void
.end method

.method declared-synchronized onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    .line 209
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 210
    .local v0, action:I
    const/4 v5, 0x2

    if-eq v0, v5, :cond_0

    .line 211
    if-nez v0, :cond_6

    .line 213
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 214
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 215
    .local v3, y:F
    iget v5, p0, Lcom/jjcgames/android/airhockey/Game;->ignoreJumpTouchesCount:I

    if-nez v5, :cond_1

    .line 216
    iget-boolean v5, p0, Lcom/jjcgames/android/airhockey/Game;->twoPlayer:Z

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/jjcgames/android/airhockey/Game;->paused:Z

    if-nez v5, :cond_5

    .line 217
    iget-object v5, p0, Lcom/jjcgames/android/airhockey/Game;->touch:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float v2, v5, v1

    .line 218
    .local v2, xDiff:F
    iget-object v5, p0, Lcom/jjcgames/android/airhockey/Game;->touch:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float v4, v5, v3

    .line 219
    .local v4, yDiff:F
    mul-float v5, v2, v2

    mul-float v6, v4, v4

    add-float/2addr v5, v6

    .line 220
    iget v6, p0, Lcom/jjcgames/android/airhockey/Game;->touchJumpThresholdPixelsSquare:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    .line 222
    const/4 v5, 0x7

    iput v5, p0, Lcom/jjcgames/android/airhockey/Game;->ignoreJumpTouchesCount:I

    .line 223
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/jjcgames/android/airhockey/Game;->touched:Z

    .line 231
    .end local v2           #xDiff:F
    .end local v4           #yDiff:F
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/jjcgames/android/airhockey/Game;->touch:Landroid/graphics/PointF;

    iput v1, v5, Landroid/graphics/PointF;->x:F

    .line 232
    iget-object v5, p0, Lcom/jjcgames/android/airhockey/Game;->touch:Landroid/graphics/PointF;

    iput v3, v5, Landroid/graphics/PointF;->y:F

    .line 236
    .end local v1           #x:F
    .end local v3           #y:F
    :goto_1
    iget v5, p0, Lcom/jjcgames/android/airhockey/Game;->ignoreJumpTouchesCount:I

    if-lez v5, :cond_2

    .line 237
    iget v5, p0, Lcom/jjcgames/android/airhockey/Game;->ignoreJumpTouchesCount:I

    sub-int/2addr v5, v7

    iput v5, p0, Lcom/jjcgames/android/airhockey/Game;->ignoreJumpTouchesCount:I

    .line 243
    :cond_2
    iget-boolean v5, p0, Lcom/jjcgames/android/airhockey/Game;->paused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_3

    .line 245
    const-wide/16 v5, 0x3e8

    :try_start_1
    invoke-virtual {p0, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 253
    :cond_3
    :goto_2
    monitor-exit p0

    return v7

    .line 225
    .restart local v1       #x:F
    .restart local v2       #xDiff:F
    .restart local v3       #y:F
    .restart local v4       #yDiff:F
    :cond_4
    const/4 v5, 0x1

    :try_start_2
    iput-boolean v5, p0, Lcom/jjcgames/android/airhockey/Game;->touched:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 209
    .end local v0           #action:I
    .end local v1           #x:F
    .end local v2           #xDiff:F
    .end local v3           #y:F
    .end local v4           #yDiff:F
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 228
    .restart local v0       #action:I
    .restart local v1       #x:F
    .restart local v3       #y:F
    :cond_5
    const/4 v5, 0x1

    :try_start_3
    iput-boolean v5, p0, Lcom/jjcgames/android/airhockey/Game;->touched:Z

    goto :goto_0

    .line 234
    .end local v1           #x:F
    .end local v3           #y:F
    :cond_6
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/jjcgames/android/airhockey/Game;->touched:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 246
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method pause()V
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jjcgames/android/airhockey/Game;->paused:Z

    .line 258
    return-void
.end method

.method resume()V
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jjcgames/android/airhockey/Game;->paused:Z

    .line 262
    return-void
.end method

.method setQuitting()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 274
    iput-boolean v0, p0, Lcom/jjcgames/android/airhockey/Game;->movingOn:Z

    .line 275
    iput-boolean v0, p0, Lcom/jjcgames/android/airhockey/Game;->threadFinishing:Z

    .line 276
    return-void
.end method
