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

.field private static final centerlineFoulPoint:F = -0.13476853f

.field private static final centerlineThickness:F = 0.016575757f

.field private static decodeResourceMethod:Ljava/lang/reflect/Method; = null

.field private static final defenseLineY:F = 0.7852315f

.field private static drawTextureSupported:Z = false

.field private static final eglSemaphore:Ljava/util/concurrent/Semaphore; = null

.field private static final gameEndBitmapSizeX:F = 0.8f

.field private static final gameEndBitmapSizeY:F = 0.25f

.field private static final gameWinningGoals:I = 0x7

.field private static final getDensity:Ljava/lang/reflect/Method; = null

.field private static final goalDepth:F = 0.1632537f

.field private static final goalWidth:F = 0.8663691f

.field static final guestCPULevel:I = 0xc8

.field private static final ignoreJumpTouches:I = 0x7

#the value of this static final field might be set in the static constructor
.field private static final initialMalletPositionY:F = 0.0f

.field private static final initialPuckPosition:Landroid/graphics/PointF; = null

.field private static final malletMass:F = 0.078f

.field private static final malletRadius:F = 0.13476853f

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

.field private static final screenPlayfieldProportionX:F = 0.9472954f

.field private static final setDensity:Ljava/lang/reflect/Method; = null

.field static final startingLevel:I = 0xc8

.field private static final touchJumpThresholdFraction:F = 0.20833333f

.field static final twoPlayerSuggestedPuckSpeed:F = 2.0f

.field static final twoPlayerSuggestedPuckSpeedMultitouch:F = 3.1f

.field private static unscaledBitmapFactoryOptions:Ljava/lang/Object;


# instance fields
.field private fingerMalletOffsetMM:F

.field private gameThread:Ljava/lang/Thread;

.field private ignoreJumpTouchesCount:I

.field private volatile movingOn:Z

.field private multitouch:Z

.field private volatile paused:Z

.field private rotate:Z

.field private screenHeight:I

.field private screenPlayfieldProportion:F

.field private screenWidth:I

.field private volatile threadFinishing:Z

.field private touchJumpThresholdPixelsSquare:F

.field protected final touchPointer:[I

.field protected final touches:[Landroid/graphics/PointF;

.field private twoPlayer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-class v8, Landroid/graphics/Bitmap;

    .line 56
    const-class v1, Lcom/jjcgames/android/airhockey/Game;

    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v7

    :goto_0
    sput-boolean v1, Lcom/jjcgames/android/airhockey/Game;->$assertionsDisabled:Z

    .line 60
    const-string v1, "US-ASCII"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    sput-object v1, Lcom/jjcgames/android/airhockey/Game;->STATE_FILE_CHARSET:Ljava/nio/charset/Charset;

    .line 63
    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    sput-object v1, Lcom/jjcgames/android/airhockey/Game;->PLAYER_FILE_CHARSET:Ljava/nio/charset/Charset;

    .line 139
    new-instance v1, Landroid/graphics/PointF;

    const/4 v2, 0x0

    const/high16 v3, -0x4100

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    sput-object v1, Lcom/jjcgames/android/airhockey/Game;->initialPuckPosition:Landroid/graphics/PointF;

    .line 141
    sget-object v1, Lcom/jjcgames/android/airhockey/Game;->initialPuckPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    neg-float v1, v1

    const v2, 0x3d85bcc8

    add-float/2addr v1, v2

    const v2, 0x3e0a00c3

    add-float/2addr v1, v2

    const v2, 0x3d4ccccd

    add-float/2addr v1, v2

    .line 140
    sput v1, Lcom/jjcgames/android/airhockey/Game;->initialMalletPositionY:F

    .line 165
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v7}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v1, Lcom/jjcgames/android/airhockey/Game;->eglSemaphore:Ljava/util/concurrent/Semaphore;

    .line 200
    sput-boolean v6, Lcom/jjcgames/android/airhockey/Game;->drawTextureSupported:Z

    .line 315
    sput-object v4, Lcom/jjcgames/android/airhockey/Game;->decodeResourceMethod:Ljava/lang/reflect/Method;

    .line 316
    sput-object v4, Lcom/jjcgames/android/airhockey/Game;->unscaledBitmapFactoryOptions:Ljava/lang/Object;

    .line 320
    :try_start_0
    const-string v1, "android.graphics.BitmapFactory$Options"

    .line 319
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 322
    .local v0, bitmapFactoryOptionsCls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 321
    sput-object v1, Lcom/jjcgames/android/airhockey/Game;->unscaledBitmapFactoryOptions:Ljava/lang/Object;

    .line 323
    const-string v1, "inScaled"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 324
    sget-object v2, Lcom/jjcgames/android/airhockey/Game;->unscaledBitmapFactoryOptions:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 325
    const-class v1, Landroid/graphics/BitmapFactory;

    .line 326
    const-string v2, "decodeResource"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    .line 327
    const-class v5, Landroid/content/res/Resources;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 325
    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/jjcgames/android/airhockey/Game;->decodeResourceMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    .end local v0           #bitmapFactoryOptionsCls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_1
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    sput-object v1, Lcom/jjcgames/android/airhockey/Game;->broadphaseA:Landroid/graphics/RectF;

    .line 481
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    sput-object v1, Lcom/jjcgames/android/airhockey/Game;->broadphaseB:Landroid/graphics/RectF;

    .line 849
    const-class v1, Landroid/graphics/Bitmap;

    const-string v1, "getDensity"

    new-array v2, v6, [Ljava/lang/Class;

    invoke-static {v8, v1, v2}, Lcom/jjcgames/android/airhockey/Game;->getMethodOrNull(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 848
    sput-object v1, Lcom/jjcgames/android/airhockey/Game;->getDensity:Ljava/lang/reflect/Method;

    .line 851
    const-class v1, Landroid/graphics/Bitmap;

    const-string v1, "setDensity"

    new-array v2, v7, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v6

    invoke-static {v8, v1, v2}, Lcom/jjcgames/android/airhockey/Game;->getMethodOrNull(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 850
    sput-object v1, Lcom/jjcgames/android/airhockey/Game;->setDensity:Ljava/lang/reflect/Method;

    .line 988
    const/4 v1, 0x4

    new-array v1, v1, [I

    sput-object v1, Lcom/jjcgames/android/airhockey/Game;->scratchInt4:[I

    .line 1078
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    sput-object v1, Lcom/jjcgames/android/airhockey/Game;->random:Ljava/util/Random;

    return-void

    :cond_0
    move v1, v6

    .line 56
    goto/16 :goto_0

    .line 334
    :catch_0
    move-exception v1

    goto :goto_1

    .line 333
    :catch_1
    move-exception v1

    goto :goto_1

    .line 332
    :catch_2
    move-exception v1

    goto :goto_1

    .line 331
    :catch_3
    move-exception v1

    goto :goto_1

    .line 330
    :catch_4
    move-exception v1

    goto :goto_1

    .line 329
    :catch_5
    move-exception v1

    goto :goto_1

    .line 328
    :catch_6
    move-exception v1

    goto :goto_1
.end method

.method constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const v0, 0x40e66666

    iput v0, p0, Lcom/jjcgames/android/airhockey/Game;->fingerMalletOffsetMM:F

    .line 167
    iput-boolean v3, p0, Lcom/jjcgames/android/airhockey/Game;->threadFinishing:Z

    .line 168
    iput-boolean v3, p0, Lcom/jjcgames/android/airhockey/Game;->paused:Z

    .line 171
    iput-boolean v3, p0, Lcom/jjcgames/android/airhockey/Game;->movingOn:Z

    .line 175
    new-array v0, v4, [Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    aput-object v1, v0, v3

    const/4 v1, 0x1

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/jjcgames/android/airhockey/Game;->touches:[Landroid/graphics/PointF;

    .line 176
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/jjcgames/android/airhockey/Game;->touchPointer:[I

    .line 194
    const v0, 0x461c4000

    iput v0, p0, Lcom/jjcgames/android/airhockey/Game;->touchJumpThresholdPixelsSquare:F

    .line 196
    iput v3, p0, Lcom/jjcgames/android/airhockey/Game;->ignoreJumpTouchesCount:I

    .line 56
    return-void

    .line 176
    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method static synthetic access$0(I)I
    .locals 1
    .parameter

    .prologue
    .line 822
    invoke-static {p0}, Lcom/jjcgames/android/airhockey/Game;->nextPowerOfTwo(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 852
    invoke-static {p0, p1}, Lcom/jjcgames/android/airhockey/Game;->setDensity(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$2()Z
    .locals 1

    .prologue
    .line 200
    sget-boolean v0, Lcom/jjcgames/android/airhockey/Game;->drawTextureSupported:Z

    return v0
.end method

.method static synthetic access$3(Lcom/jjcgames/android/airhockey/Game;Landroid/content/Context;Lcom/jjcgames/android/airhockey/GameActivity$Finisher;Landroid/view/SurfaceHolder;IIFFLandroid/content/Intent;)V
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
    .line 1105
    invoke-direct/range {p0 .. p8}, Lcom/jjcgames/android/airhockey/Game;->runGame(Landroid/content/Context;Lcom/jjcgames/android/airhockey/GameActivity$Finisher;Landroid/view/SurfaceHolder;IIFFLandroid/content/Intent;)V

    return-void
.end method

.method private static addMargin(Landroid/graphics/RectF;F)V
    .locals 1
    .parameter "r"
    .parameter "margin"

    .prologue
    .line 473
    iget v0, p0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 474
    iget v0, p0, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 475
    iget v0, p0, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 476
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 477
    return-void
.end method

.method private static clampToPlayfieldBorder(Landroid/graphics/PointF;F)Z
    .locals 7
    .parameter "point"
    .parameter "margin"

    .prologue
    .line 427
    const/4 v1, 0x0

    .line 428
    .local v1, clamped:Z
    const/high16 v6, 0x3f80

    sub-float v5, v6, p1

    .line 429
    .local v5, topEdge:F
    iget v6, p0, Landroid/graphics/PointF;->y:F

    cmpl-float v6, v6, v5

    if-lez v6, :cond_2

    .line 430
    iput v5, p0, Landroid/graphics/PointF;->y:F

    .line 431
    const/4 v1, 0x1

    .line 439
    :cond_0
    :goto_0
    const v3, 0x3f3ac1ae

    .line 440
    .local v3, playfieldRight:F
    const v6, 0x3f3ac1ae

    sub-float v4, v6, p1

    .line 441
    .local v4, rightEdge:F
    iget v6, p0, Landroid/graphics/PointF;->x:F

    cmpl-float v6, v6, v4

    if-lez v6, :cond_3

    .line 442
    iput v4, p0, Landroid/graphics/PointF;->x:F

    .line 443
    const/4 v1, 0x1

    .line 451
    :cond_1
    :goto_1
    return v1

    .line 433
    .end local v3           #playfieldRight:F
    .end local v4           #rightEdge:F
    :cond_2
    const/high16 v6, -0x4080

    add-float v0, v6, p1

    .line 434
    .local v0, bottomEdge:F
    iget v6, p0, Landroid/graphics/PointF;->y:F

    cmpg-float v6, v6, v0

    if-gez v6, :cond_0

    .line 435
    iput v0, p0, Landroid/graphics/PointF;->y:F

    .line 436
    const/4 v1, 0x1

    goto :goto_0

    .line 445
    .end local v0           #bottomEdge:F
    .restart local v3       #playfieldRight:F
    .restart local v4       #rightEdge:F
    :cond_3
    const v6, -0x40c53e52

    add-float v2, v6, p1

    .line 446
    .local v2, leftEdge:F
    iget v6, p0, Landroid/graphics/PointF;->x:F

    cmpg-float v6, v6, v2

    if-gez v6, :cond_1

    .line 447
    iput v2, p0, Landroid/graphics/PointF;->x:F

    .line 448
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
    .line 562
    iget v6, p2, Landroid/graphics/PointF;->x:F

    .line 563
    .local v6, vAx:F
    iget v7, p2, Landroid/graphics/PointF;->y:F

    .line 564
    .local v7, vAy:F
    iget v8, p3, Landroid/graphics/PointF;->x:F

    .line 565
    .local v8, vBx:F
    iget v9, p3, Landroid/graphics/PointF;->y:F

    .line 566
    .local v9, vBy:F
    iget v2, p0, Landroid/graphics/PointF;->x:F

    mul-float v3, v6, p7

    add-float/2addr v2, v3

    .line 567
    .local v2, rAx:F
    iget p0, p0, Landroid/graphics/PointF;->y:F

    .end local p0
    mul-float v3, v7, p7

    add-float/2addr v3, p0

    .line 568
    .local v3, rAy:F
    iget p0, p1, Landroid/graphics/PointF;->x:F

    mul-float v4, v8, p7

    add-float/2addr v4, p0

    .line 569
    .local v4, rBx:F
    iget p0, p1, Landroid/graphics/PointF;->y:F

    mul-float p1, v9, p7

    add-float p7, p0, p1

    .line 574
    .local p7, rBy:F
    sub-float p0, p7, v3

    float-to-double p0, p0

    .line 575
    sub-float v5, v4, v2

    float-to-double v10, v5

    .line 573
    invoke-static {p0, p1, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    .end local p1
    move-result-wide p0

    double-to-float p0, p0

    .line 578
    .local p0, angleA:F
    mul-float p1, v6, v6

    mul-float v5, v7, v7

    add-float/2addr p1, v5

    float-to-double v10, p1

    .line 577
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v5, v10

    .line 580
    .local v5, vAMag:F
    float-to-double v10, v7

    float-to-double v6, v6

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    .end local v6           #vAx:F
    move-result-wide v6

    double-to-float p1, v6

    .line 582
    .local p1, vAAngle:F
    sub-float p1, p0, p1

    .line 584
    .local p1, diffAngleA:F
    float-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v6, v5

    .line 586
    .local v6, vAMagAlongAngleA:F
    const/4 v7, 0x0

    .line 588
    .local v7, vAMagNormalToAngleA:F
    float-to-double v10, p1

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float p1, v10

    mul-float/2addr v5, p1

    .line 593
    .end local v7           #vAMagNormalToAngleA:F
    .local v5, vAMagNormalToAngleA:F
    sub-float p1, v3, p7

    float-to-double v10, p1

    .line 594
    sub-float p1, v2, v4

    float-to-double v2, p1

    .line 592
    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    .end local v2           #rAx:F
    .end local p1           #diffAngleA:F
    move-result-wide v2

    double-to-float p1, v2

    .line 597
    .local p1, angleB:F
    mul-float p7, v8, v8

    mul-float v2, v9, v9

    add-float p7, p7, v2

    move/from16 v0, p7

    float-to-double v0, v0

    move-wide v2, v0

    .line 596
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .end local p7           #rBy:F
    move-result-wide v2

    double-to-float v2, v2

    .line 599
    .local v2, vBMag:F
    float-to-double v3, v9

    float-to-double v7, v8

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    .end local v3           #rAy:F
    move-result-wide v3

    move-wide v0, v3

    double-to-float v0, v0

    move/from16 p7, v0

    .line 601
    .local p7, vBAngle:F
    sub-float p7, p1, p7

    .line 603
    .local p7, diffAngleB:F
    move/from16 v0, p7

    float-to-double v0, v0

    move-wide v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v4, v3, v2

    .line 605
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

    .line 607
    .local v7, vBMagNormalToAngleB:F
    add-float v2, p4, p5

    .line 608
    .local v2, massSum:F
    const/high16 p7, 0x3f80

    add-float p7, p7, p6

    .line 609
    .local p7, cor1:F
    const/4 v3, 0x0

    .line 611
    .local v3, vAMagAlongAngleAPostCollision:F
    mul-float v3, p7, p5

    neg-float v8, v4

    mul-float/2addr v3, v8

    .line 612
    mul-float v8, p6, p5

    sub-float v8, p4, v8

    mul-float/2addr v8, v6

    .line 611
    add-float/2addr v3, v8

    div-float/2addr v3, v2

    .line 615
    mul-float p7, p7, p4

    neg-float v6, v6

    mul-float p7, p7, v6

    .line 616
    mul-float p4, p4, p6

    sub-float p4, p5, p4

    mul-float p4, p4, v4

    .line 615
    add-float p4, p4, p7

    div-float p4, p4, v2

    .line 619
    .local p4, vBMagAlongAngleBPostCollision:F
    move/from16 p7, v3

    .line 620
    .end local v6           #vAMagAlongAngleA:F
    .local p7, vAMagAlongAngleA:F
    move/from16 v2, p4

    .line 622
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

    .line 623
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

    .line 624
    .local p5, sinAngleA:F
    move/from16 p0, p5

    .line 627
    .local p0, cosNormalToAngleA:F
    move/from16 v0, p4

    neg-float v0, v0

    move/from16 p6, v0

    .line 630
    .local p6, sinNormalToAngleA:F
    mul-float p4, p4, p7

    .line 631
    mul-float/2addr p0, v5

    add-float p0, p0, p4

    .line 630
    iput p0, p2, Landroid/graphics/PointF;->x:F

    .line 632
    .end local p0           #cosNormalToAngleA:F
    .end local p4           #cosAngleA:F
    mul-float p0, p5, p7

    .line 633
    mul-float p4, p6, v5

    add-float p0, p0, p4

    .line 632
    iput p0, p2, Landroid/graphics/PointF;->y:F

    .line 635
    move v0, p1

    float-to-double v0, v0

    move-wide/from16 p4, v0

    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide p4

    move-wide/from16 v0, p4

    double-to-float v0, v0

    move p0, v0

    .line 636
    .local p0, cosAngleB:F
    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    .end local p1           #angleB:F
    move-result-wide p1

    double-to-float p2, p1

    .line 637
    .local p2, sinAngleB:F
    move p1, p2

    .line 640
    .local p1, cosNormalToAngleB:F
    move v0, p0

    neg-float v0, v0

    move/from16 p4, v0

    .line 643
    .local p4, sinNormalToAngleB:F
    mul-float/2addr p0, v2

    .line 644
    mul-float/2addr p1, v7

    add-float/2addr p0, p1

    .line 643
    iput p0, p3, Landroid/graphics/PointF;->x:F

    .line 645
    .end local p0           #cosAngleB:F
    .end local p1           #cosNormalToAngleB:F
    mul-float p0, p2, v2

    .line 646
    mul-float p1, p4, v7

    add-float/2addr p0, p1

    .line 645
    iput p0, p3, Landroid/graphics/PointF;->y:F

    .line 647
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
    .line 489
    iget v0, p0, Landroid/graphics/PointF;->x:F

    .line 490
    .local v0, rAx:F
    iget v1, p0, Landroid/graphics/PointF;->y:F

    .line 491
    .local v1, rAy:F
    iget v2, p1, Landroid/graphics/PointF;->x:F

    .line 492
    .local v2, rBx:F
    iget v3, p1, Landroid/graphics/PointF;->y:F

    .line 493
    .local v3, rBy:F
    iget p1, p2, Landroid/graphics/PointF;->x:F

    .line 494
    .local p1, vAx:F
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 495
    .local p2, vAy:F
    iget v4, p3, Landroid/graphics/PointF;->x:F

    .line 496
    .local v4, vBx:F
    iget p3, p3, Landroid/graphics/PointF;->y:F

    .line 499
    .local p3, vBy:F
    const/4 p0, 0x0

    cmpl-float p0, p6, p0

    if-lez p0, :cond_0

    .line 500
    .end local p0
    sget-object p0, Lcom/jjcgames/android/airhockey/Game;->broadphaseA:Landroid/graphics/RectF;

    .line 501
    mul-float v5, p2, p6

    add-float/2addr v5, v1

    .line 502
    mul-float v6, p1, p6

    add-float/2addr v6, v0

    .line 500
    invoke-virtual {p0, v0, v5, v6, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 503
    sget-object p0, Lcom/jjcgames/android/airhockey/Game;->broadphaseA:Landroid/graphics/RectF;

    invoke-static {p0}, Lcom/jjcgames/android/airhockey/Game;->fixInverted(Landroid/graphics/RectF;)V

    .line 504
    sget-object p0, Lcom/jjcgames/android/airhockey/Game;->broadphaseA:Landroid/graphics/RectF;

    invoke-static {p0, p4}, Lcom/jjcgames/android/airhockey/Game;->addMargin(Landroid/graphics/RectF;F)V

    .line 505
    sget-object p0, Lcom/jjcgames/android/airhockey/Game;->broadphaseB:Landroid/graphics/RectF;

    .line 506
    mul-float v5, p3, p6

    add-float/2addr v5, v3

    .line 507
    mul-float v6, v4, p6

    add-float/2addr v6, v2

    .line 505
    invoke-virtual {p0, v2, v5, v6, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 508
    sget-object p0, Lcom/jjcgames/android/airhockey/Game;->broadphaseB:Landroid/graphics/RectF;

    invoke-static {p0}, Lcom/jjcgames/android/airhockey/Game;->fixInverted(Landroid/graphics/RectF;)V

    .line 509
    sget-object p0, Lcom/jjcgames/android/airhockey/Game;->broadphaseB:Landroid/graphics/RectF;

    invoke-static {p0, p5}, Lcom/jjcgames/android/airhockey/Game;->addMargin(Landroid/graphics/RectF;F)V

    .line 514
    :cond_0
    const/4 p0, 0x0

    cmpg-float p0, p6, p0

    if-ltz p0, :cond_1

    .line 515
    sget-object p0, Lcom/jjcgames/android/airhockey/Game;->broadphaseB:Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->left:F

    sget-object p6, Lcom/jjcgames/android/airhockey/Game;->broadphaseA:Landroid/graphics/RectF;

    .end local p6
    iget p6, p6, Landroid/graphics/RectF;->right:F

    cmpg-float p0, p0, p6

    if-gez p0, :cond_2

    .line 516
    sget-object p0, Lcom/jjcgames/android/airhockey/Game;->broadphaseB:Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->top:F

    sget-object p6, Lcom/jjcgames/android/airhockey/Game;->broadphaseA:Landroid/graphics/RectF;

    iget p6, p6, Landroid/graphics/RectF;->bottom:F

    cmpl-float p0, p0, p6

    if-lez p0, :cond_2

    .line 517
    sget-object p0, Lcom/jjcgames/android/airhockey/Game;->broadphaseB:Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->right:F

    sget-object p6, Lcom/jjcgames/android/airhockey/Game;->broadphaseA:Landroid/graphics/RectF;

    iget p6, p6, Landroid/graphics/RectF;->left:F

    cmpl-float p0, p0, p6

    if-lez p0, :cond_2

    .line 518
    sget-object p0, Lcom/jjcgames/android/airhockey/Game;->broadphaseB:Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    sget-object p6, Lcom/jjcgames/android/airhockey/Game;->broadphaseA:Landroid/graphics/RectF;

    iget p6, p6, Landroid/graphics/RectF;->top:F

    cmpg-float p0, p0, p6

    if-gez p0, :cond_2

    .line 531
    :cond_1
    mul-float p0, p1, p1

    mul-float p6, v4, v4

    add-float/2addr p0, p6

    const/high16 p6, 0x4000

    mul-float/2addr p6, p1

    mul-float/2addr p6, v4

    sub-float/2addr p0, p6

    .line 532
    mul-float p6, p2, p2

    .line 531
    add-float/2addr p0, p6

    .line 532
    mul-float p6, p3, p3

    .line 531
    add-float/2addr p0, p6

    .line 532
    const/high16 p6, 0x4000

    mul-float/2addr p6, p2

    mul-float/2addr p6, p3

    .line 531
    sub-float/2addr p0, p6

    .line 533
    .local p0, a:F
    const/high16 p6, 0x4000

    .line 534
    mul-float v5, v0, p1

    mul-float v6, v2, v4

    add-float/2addr v5, v6

    mul-float/2addr p1, v2

    sub-float p1, v5, p1

    mul-float/2addr v4, v0

    sub-float/2addr p1, v4

    .line 535
    mul-float v4, v1, p2

    .line 534
    add-float/2addr p1, v4

    .line 535
    mul-float v4, v3, p3

    .line 534
    add-float/2addr p1, v4

    .line 535
    mul-float/2addr p2, v3

    .line 534
    sub-float/2addr p1, p2

    .line 535
    mul-float p2, v1, p3

    .line 533
    sub-float/2addr p1, p2

    mul-float/2addr p1, p6

    .line 536
    .local p1, b:F
    add-float p2, p4, p5

    .line 538
    .local p2, radiusSum:F
    mul-float p3, v0, v0

    mul-float p4, v2, v2

    add-float/2addr p3, p4

    mul-float p4, v1, v1

    add-float/2addr p3, p4

    mul-float p4, v3, v3

    add-float/2addr p3, p4

    const/high16 p4, 0x4000

    .line 539
    mul-float p5, v0, v2

    mul-float p6, v1, v3

    add-float/2addr p5, p6

    mul-float/2addr p4, p5

    .line 538
    sub-float/2addr p3, p4

    .line 539
    mul-float/2addr p2, p2

    .line 538
    sub-float p2, p3, p2

    .line 541
    .local p2, c:F
    mul-float p3, p1, p1

    const/high16 p4, 0x4080

    mul-float/2addr p4, p0

    mul-float/2addr p2, p4

    sub-float p2, p3, p2

    .line 542
    .local p2, discriminant:F
    const/4 p3, 0x0

    cmpl-float p3, p2, p3

    if-ltz p3, :cond_2

    .line 543
    .end local v4           #vBx:F
    .end local p3           #vBy:F
    .end local p4
    .end local p5
    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    .end local p2           #discriminant:F
    move-result-wide p2

    double-to-float p2, p2

    .line 544
    .local p2, sqrtD:F
    const/high16 p3, 0x4000

    mul-float/2addr p3, p0

    .line 545
    .local p3, twoA:F
    neg-float p0, p1

    add-float/2addr p0, p2

    div-float/2addr p0, p3

    .line 546
    .local p0, t1:F
    neg-float p1, p1

    sub-float/2addr p1, p2

    div-float/2addr p1, p3

    .line 548
    .local p1, t2:F
    const/4 p2, 0x0

    cmpl-float p2, p0, p2

    if-ltz p2, :cond_2

    .end local p2           #sqrtD:F
    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_2

    .line 549
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    .line 553
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
    .line 1087
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
    .line 1094
    mul-float v0, p0, p0

    mul-float v1, p1, p1

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 1093
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
    .line 1098
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
    .line 1102
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
    .line 82
    int-to-float v0, p0

    const/high16 v1, 0x447a

    div-float/2addr v0, v1

    const/high16 v1, 0x4248

    mul-float/2addr v0, v1

    return v0
.end method

.method private static decodeResourceUnscaled(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "res"
    .parameter "id"

    .prologue
    .line 340
    sget-object v1, Lcom/jjcgames/android/airhockey/Game;->decodeResourceMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 341
    sget-object v1, Lcom/jjcgames/android/airhockey/Game;->unscaledBitmapFactoryOptions:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 344
    :try_start_0
    sget-object v1, Lcom/jjcgames/android/airhockey/Game;->decodeResourceMethod:Ljava/lang/reflect/Method;

    .line 345
    const/4 v2, 0x0

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Lcom/jjcgames/android/airhockey/Game;->unscaledBitmapFactoryOptions:Ljava/lang/Object;

    .line 344
    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/graphics/Bitmap;

    move-object p0, v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .end local p0
    move-object v1, p0

    .line 351
    :goto_0
    return-object v1

    .line 348
    .restart local p0
    :catch_0
    move-exception v1

    .line 351
    :cond_0
    :goto_1
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 347
    :catch_1
    move-exception v1

    goto :goto_1

    .line 346
    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method private static drawQuad(Ljavax/microedition/khronos/opengles/GL10;Lcom/jjcgames/android/airhockey/Game$Texture;FF)V
    .locals 3
    .parameter "gl"
    .parameter "texture"
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v2, 0x3f80

    .line 959
    const/16 v0, 0x1702

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 960
    invoke-interface {p0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 961
    iget v0, p1, Lcom/jjcgames/android/airhockey/Game$Texture;->coordScaleX:F

    iget v1, p1, Lcom/jjcgames/android/airhockey/Game$Texture;->coordScaleY:F

    invoke-interface {p0, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 962
    const/16 v0, 0x1700

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 964
    invoke-interface {p0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 965
    const/4 v0, 0x0

    invoke-interface {p0, p2, p3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 966
    iget v0, p1, Lcom/jjcgames/android/airhockey/Game$Texture;->width:I

    int-to-float v0, v0

    iget v1, p1, Lcom/jjcgames/android/airhockey/Game$Texture;->height:I

    int-to-float v1, v1

    invoke-interface {p0, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 967
    const/16 v0, 0xde1

    iget v1, p1, Lcom/jjcgames/android/airhockey/Game$Texture;->name:I

    invoke-interface {p0, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 968
    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-interface {p0, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 969
    invoke-interface {p0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 970
    return-void
.end method

.method static drawShadowedBackground(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "c"

    .prologue
    .line 727
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 728
    .local v5, p:Landroid/graphics/Paint;
    const/high16 v0, -0x6000

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 729
    invoke-virtual {p0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x41a0

    div-float v1, v0, v2

    .line 731
    .local v1, shadowSize:F
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->SOLID:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 730
    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 733
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

    .line 732
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 734
    return-void
.end method

.method private static drawSubTexture(Ljavax/microedition/khronos/opengles/GL10;IILcom/jjcgames/android/airhockey/Game$Texture;IIII)V
    .locals 9
    .parameter "gl"
    .parameter "screenWidth"
    .parameter "screenHeight"
    .parameter "texture"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v8, 0x4000

    const/4 v6, 0x0

    const/16 v7, 0xde1

    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    .line 1010
    iget v1, p3, Lcom/jjcgames/android/airhockey/Game$Texture;->name:I

    invoke-interface {p0, v7, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 1012
    sget-boolean v1, Lcom/jjcgames/android/airhockey/Game;->drawTextureSupported:Z

    if-nez v1, :cond_0

    .line 1013
    const/16 v1, 0x1702

    invoke-interface {p0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 1014
    invoke-interface {p0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 1016
    iget v1, p3, Lcom/jjcgames/android/airhockey/Game$Texture;->coordScaleX:F

    iget v2, p3, Lcom/jjcgames/android/airhockey/Game$Texture;->coordScaleY:F

    invoke-interface {p0, v1, v2, v5}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 1019
    int-to-float v1, p6

    int-to-float v2, p1

    div-float/2addr v1, v2

    .line 1020
    move/from16 v0, p7

    int-to-float v0, v0

    move v2, v0

    int-to-float v3, p2

    div-float/2addr v2, v3

    .line 1018
    invoke-interface {p0, v1, v2, v5}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 1022
    int-to-float v1, p4

    int-to-float v2, p1

    div-float/2addr v1, v2

    .line 1023
    int-to-float v2, p5

    int-to-float v3, p2

    div-float/2addr v2, v3

    .line 1021
    invoke-interface {p0, v1, v2, v6}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 1024
    const/16 v1, 0x1700

    invoke-interface {p0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 1025
    invoke-interface {p0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 1026
    int-to-float v1, p4

    int-to-float v2, p6

    div-float/2addr v2, v8

    add-float/2addr v1, v2

    int-to-float v2, p5

    move/from16 v0, p7

    int-to-float v0, v0

    move v3, v0

    div-float/2addr v3, v8

    add-float/2addr v2, v3

    invoke-interface {p0, v1, v2, v6}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 1027
    int-to-float v1, p6

    move/from16 v0, p7

    int-to-float v0, v0

    move v2, v0

    invoke-interface {p0, v1, v2, v5}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 1028
    const/4 v1, 0x6

    const/4 v2, 0x4

    invoke-interface {p0, v1, v4, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 1029
    invoke-interface {p0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 1054
    .end local p0
    :goto_0
    return-void

    .line 1038
    .restart local p0
    :cond_0
    sget-object v1, Lcom/jjcgames/android/airhockey/Game;->scratchInt4:[I

    aput p4, v1, v4

    .line 1039
    sget-object v1, Lcom/jjcgames/android/airhockey/Game;->scratchInt4:[I

    const/4 v2, 0x1

    aput p5, v1, v2

    .line 1040
    sget-object v1, Lcom/jjcgames/android/airhockey/Game;->scratchInt4:[I

    const/4 v2, 0x2

    aput p6, v1, v2

    .line 1041
    sget-object v1, Lcom/jjcgames/android/airhockey/Game;->scratchInt4:[I

    const/4 v2, 0x3

    aput p7, v1, v2

    .line 1042
    move-object v0, p0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    move-object v1, v0

    .line 1043
    const v2, 0x8b9d

    sget-object v3, Lcom/jjcgames/android/airhockey/Game;->scratchInt4:[I

    .line 1042
    invoke-interface {v1, v7, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(II[II)V

    .line 1044
    move-object v0, p0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11Ext;

    move-object v1, v0

    move v2, p4

    move v3, p5

    move v5, p6

    move/from16 v6, p7

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexiOES(IIIII)V

    .line 1048
    sget-object v1, Lcom/jjcgames/android/airhockey/Game;->scratchInt4:[I

    aput v4, v1, v4

    .line 1049
    sget-object v1, Lcom/jjcgames/android/airhockey/Game;->scratchInt4:[I

    const/4 v2, 0x1

    aput v4, v1, v2

    .line 1050
    sget-object v1, Lcom/jjcgames/android/airhockey/Game;->scratchInt4:[I

    const/4 v2, 0x2

    iget v3, p3, Lcom/jjcgames/android/airhockey/Game$Texture;->width:I

    aput v3, v1, v2

    .line 1051
    sget-object v1, Lcom/jjcgames/android/airhockey/Game;->scratchInt4:[I

    const/4 v2, 0x3

    iget v3, p3, Lcom/jjcgames/android/airhockey/Game$Texture;->height:I

    aput v3, v1, v2

    .line 1052
    check-cast p0, Ljavax/microedition/khronos/opengles/GL11;

    .line 1053
    .end local p0
    const v1, 0x8b9d

    sget-object v2, Lcom/jjcgames/android/airhockey/Game;->scratchInt4:[I

    .line 1052
    invoke-interface {p0, v7, v1, v2, v4}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(II[II)V

    goto :goto_0
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

    .line 993
    sget-boolean v1, Lcom/jjcgames/android/airhockey/Game;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/jjcgames/android/airhockey/Game;->drawTextureSupported:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 995
    :cond_0
    const/16 v1, 0xde1

    iget v2, p1, Lcom/jjcgames/android/airhockey/Game$Texture;->name:I

    invoke-interface {p0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 996
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

    .line 997
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

    .line 998
    sget-object v1, Lcom/jjcgames/android/airhockey/Game;->scratchInt4:[I

    iget v2, p4, Lcom/jjcgames/android/airhockey/Game$Texture;->width:I

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v7

    .line 999
    sget-object v1, Lcom/jjcgames/android/airhockey/Game;->scratchInt4:[I

    iget v2, p4, Lcom/jjcgames/android/airhockey/Game$Texture;->height:I

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v8

    .line 1000
    move-object v0, p0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    move-object v1, v0

    const/16 v2, 0xde1

    .line 1001
    const v3, 0x8b9d

    sget-object v5, Lcom/jjcgames/android/airhockey/Game;->scratchInt4:[I

    .line 1000
    invoke-interface {v1, v2, v3, v5, v4}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(II[II)V

    .line 1002
    move-object v0, p0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11Ext;

    move-object v1, v0

    .line 1003
    sget-object v2, Lcom/jjcgames/android/airhockey/Game;->scratchInt4:[I

    aget v2, v2, v4

    sget-object v3, Lcom/jjcgames/android/airhockey/Game;->scratchInt4:[I

    aget v3, v3, v6

    sget-object v5, Lcom/jjcgames/android/airhockey/Game;->scratchInt4:[I

    aget v5, v5, v7

    sget-object v6, Lcom/jjcgames/android/airhockey/Game;->scratchInt4:[I

    aget v6, v6, v8

    .line 1002
    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexiOES(IIIII)V

    .line 1004
    return-void
.end method

.method private static drawTexture(Ljavax/microedition/khronos/opengles/GL10;IILcom/jjcgames/android/airhockey/Game$Texture;II)V
    .locals 7
    .parameter "gl"
    .parameter "screenWidth"
    .parameter "screenHeight"
    .parameter "texture"
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v4, 0x4000

    .line 975
    sget-boolean v1, Lcom/jjcgames/android/airhockey/Game;->drawTextureSupported:Z

    if-nez v1, :cond_0

    .line 977
    int-to-float v1, p4

    iget v2, p3, Lcom/jjcgames/android/airhockey/Game$Texture;->width:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    .line 978
    int-to-float v2, p5

    iget v3, p3, Lcom/jjcgames/android/airhockey/Game$Texture;->height:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 976
    invoke-static {p0, p3, v1, v2}, Lcom/jjcgames/android/airhockey/Game;->drawQuad(Ljavax/microedition/khronos/opengles/GL10;Lcom/jjcgames/android/airhockey/Game$Texture;FF)V

    .line 985
    :goto_0
    return-void

    .line 982
    :cond_0
    const/16 v1, 0xde1

    iget v2, p3, Lcom/jjcgames/android/airhockey/Game$Texture;->name:I

    invoke-interface {p0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 983
    move-object v0, p0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11Ext;

    move-object v1, v0

    .line 984
    const/4 v4, 0x0

    iget v5, p3, Lcom/jjcgames/android/airhockey/Game$Texture;->width:I

    iget v6, p3, Lcom/jjcgames/android/airhockey/Game$Texture;->height:I

    move v2, p4

    move v3, p5

    .line 983
    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexiOES(IIIII)V

    goto :goto_0
.end method

.method private static fixInverted(Landroid/graphics/RectF;)V
    .locals 3
    .parameter "r"

    .prologue
    .line 460
    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 461
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 462
    .local v0, t:F
    iget v1, p0, Landroid/graphics/RectF;->top:F

    iput v1, p0, Landroid/graphics/RectF;->bottom:F

    .line 463
    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 465
    .end local v0           #t:F
    :cond_0
    iget v1, p0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 466
    iget v0, p0, Landroid/graphics/RectF;->left:F

    .line 467
    .restart local v0       #t:F
    iget v1, p0, Landroid/graphics/RectF;->right:F

    iput v1, p0, Landroid/graphics/RectF;->left:F

    .line 468
    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 470
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

    .line 455
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

    .line 456
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

    .line 457
    return-void
.end method

.method static getBitmap(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "context"
    .parameter "name"
    .parameter "alpha"
    .parameter "rotate"

    .prologue
    .line 357
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 358
    .local v3, r:Landroid/content/res/Resources;
    const-class v0, Lcom/jjcgames/android/airhockey/Game;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    .line 359
    .local v2, packageName:Ljava/lang/String;
    const-string v0, "drawable"

    .line 360
    .local v0, resType:Ljava/lang/String;
    const-string v0, "drawable"

    .end local v0           #resType:Ljava/lang/String;
    invoke-virtual {v3, p1, v0, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 361
    .local v1, i:I
    const/4 v0, 0x0

    .line 362
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 364
    :try_start_0
    invoke-static {v3, v1}, Lcom/jjcgames/android/airhockey/Game;->decodeResourceUnscaled(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 369
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 372
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

    .line 373
    const-string v0, "drawable"

    .line 372
    invoke-virtual {v3, p1, v0, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 371
    invoke-static {v3, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 376
    .local p1, large:Landroid/graphics/Bitmap;
    const-string v0, "window"

    .line 375
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/WindowManager;

    .line 376
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 378
    .local p0, d:Landroid/view/Display;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x44f0

    div-float/2addr v0, v1

    .line 379
    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    .end local v1           #i:I
    move-result v1

    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result p0

    .end local p0           #d:Landroid/view/Display;
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float p0, p0

    .line 378
    mul-float/2addr p0, v0

    .line 381
    .local p0, height:F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 382
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 381
    div-float/2addr v0, v1

    mul-float/2addr v0, p0

    float-to-int v0, v0

    .line 383
    float-to-int p0, p0

    const/4 v1, 0x1

    .line 380
    invoke-static {p1, v0, p0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .end local p0           #height:F
    move-result-object v0

    .line 385
    .end local p1           #large:Landroid/graphics/Bitmap;
    .restart local v0       #b:Landroid/graphics/Bitmap;
    :cond_1
    if-eqz p3, :cond_2

    .line 386
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 387
    .local v5, m:Landroid/graphics/Matrix;
    const/high16 p0, -0x3d4c

    invoke-virtual {v5, p0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 389
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .end local v2           #packageName:Ljava/lang/String;
    move-result v3

    .end local v3           #r:Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x0

    .line 388
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 391
    .end local v5           #m:Landroid/graphics/Matrix;
    :cond_2
    if-nez p2, :cond_3

    .line 392
    sget-object p0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 393
    sget-boolean p0, Lcom/jjcgames/android/airhockey/Game;->$assertionsDisabled:Z

    if-nez p0, :cond_3

    if-nez v0, :cond_3

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 365
    .restart local v1       #i:I
    .restart local v2       #packageName:Ljava/lang/String;
    .restart local v3       #r:Landroid/content/res/Resources;
    .local p0, context:Landroid/content/Context;
    .local p1, name:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 366
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    .local v1, i:I
    goto/16 :goto_0

    .line 395
    .end local v1           #i:I
    .end local v2           #packageName:Ljava/lang/String;
    .end local v3           #r:Landroid/content/res/Resources;
    .end local p0           #context:Landroid/content/Context;
    .end local p1           #name:Ljava/lang/String;
    :cond_3
    return-object v0
.end method

.method private static varargs getMethodOrNull(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .parameter
    .parameter "name"
    .parameter "parameterTypes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .local p0, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 840
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 844
    :goto_0
    return-object v1

    .line 841
    :catch_0
    move-exception v0

    .line 842
    .local v0, e:Ljava/lang/SecurityException;
    goto :goto_0

    .line 843
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 844
    .local v0, e:Ljava/lang/NoSuchMethodException;
    goto :goto_0
.end method

.method private static initialMalletPosition(Landroid/graphics/PointF;I)V
    .locals 3
    .parameter "p"
    .parameter "player"

    .prologue
    const/high16 v2, 0x4000

    .line 666
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

    .line 667
    if-nez p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    int-to-float v0, v0

    sget v1, Lcom/jjcgames/android/airhockey/Game;->initialMalletPositionY:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/PointF;->y:F

    .line 668
    return-void

    .line 667
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static initialPuckVelocity(Landroid/graphics/PointF;)V
    .locals 6
    .parameter "puckV"

    .prologue
    const/high16 v5, 0x4000

    const/high16 v4, 0x3f00

    const v3, 0x3cf5c28f

    .line 654
    .line 655
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    sub-float/2addr v0, v4

    mul-float/2addr v0, v5

    mul-float/2addr v0, v3

    .line 656
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    double-to-float v1, v1

    sub-float/2addr v1, v4

    mul-float/2addr v1, v5

    mul-float/2addr v1, v3

    .line 654
    invoke-virtual {p0, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 657
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
    .line 1071
    .local p2, resIDs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [I

    .line 1072
    .local v1, sounds:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 1075
    return-object v1

    .line 1073
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

    .line 1072
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
    .line 741
    move/from16 v0, p5

    move/from16 v1, p6

    if-le v0, v1, :cond_3

    const/16 p5, 0x1

    move/from16 v13, p5

    .line 742
    .end local p5
    .local v13, win:Z
    :goto_0
    const/16 p5, 0x1

    move/from16 v0, p3

    move/from16 v1, p5

    if-le v0, v1, :cond_4

    .line 743
    move/from16 v0, p7

    move/from16 v1, p3

    if-eq v0, v1, :cond_0

    move/from16 v0, p8

    move/from16 v1, p3

    if-ne v0, v1, :cond_4

    :cond_0
    const/16 p5, 0x1

    .line 745
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

    .line 746
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 p2, v0

    const/high16 p6, 0x3e80

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

    .line 747
    sget-object p6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 744
    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p6

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 748
    .local p1, b:Landroid/graphics/Bitmap;
    new-instance p2, Landroid/graphics/Canvas;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 750
    .local p2, c:Landroid/graphics/Canvas;
    const/16 p6, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 751
    invoke-static/range {p2 .. p2}, Lcom/jjcgames/android/airhockey/Game;->drawShadowedBackground(Landroid/graphics/Canvas;)V

    .line 753
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p6

    .line 754
    .local p6, r:Landroid/content/res/Resources;
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 755
    .local v11, textPaint:Landroid/graphics/Paint;
    sget-object p0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .end local p0
    move-object v0, v11

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 756
    const/16 p0, 0x1

    move-object v0, v11

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 758
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10, v11}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 759
    .local v10, msgPaint:Landroid/graphics/Paint;
    if-eqz v13, :cond_5

    const p0, -0xff0100

    :goto_2
    move-object v0, v10

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 760
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    move/from16 v0, p0

    int-to-float v0, v0

    move/from16 p0, v0

    if-eqz p5, :cond_6

    const v5, 0x3daccccd

    :goto_3
    mul-float p0, p0, v5

    move-object v0, v10

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 761
    const p0, -0x41b33333

    move-object v0, v10

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 764
    if-eqz v13, :cond_8

    .line 765
    if-eqz p5, :cond_7

    const p0, 0x7f07002e

    .line 769
    .local p0, mId:I
    :goto_4
    move-object/from16 v0, p6

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 770
    .local v8, msg:Ljava/lang/String;
    new-instance p0, Landroid/graphics/Rect;

    .end local p0           #mId:I
    invoke-direct/range {p0 .. p0}, Landroid/graphics/Rect;-><init>()V

    .line 771
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

    .line 772
    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 p5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v5, v0

    sub-int v9, p5, v5

    .line 774
    .local v9, msgHeight:I
    int-to-float v6, v9

    .line 775
    .local v6, totalHeight:F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p5

    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 p5, v0

    const v5, 0x3dcccccd

    mul-float v5, v5, p5

    .line 777
    .local v5, margin:F
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v11}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 778
    .local v7, matchProgressPaint:Landroid/graphics/Paint;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p5

    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 p5, v0

    const v12, 0x3d866666

    mul-float p5, p5, v12

    move-object v0, v7

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 779
    const p5, -0x333334

    move-object v0, v7

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 780
    const/16 p5, 0x0

    .line 781
    .local p5, matchProgressHeight:I
    const v12, 0x7f07002d

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 782
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

    .line 781
    .end local p8
    aput-object p8, v14, p7

    move-object/from16 v0, p6

    move v1, v12

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p8

    .line 783
    .local p8, matchProgress:Ljava/lang/String;
    const/16 p7, 0x1

    move/from16 v0, p3

    move/from16 v1, p7

    if-le v0, v1, :cond_e

    .line 785
    const/16 p5, 0x0

    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->length()I

    .end local p5           #matchProgressHeight:I
    move-result p7

    .line 784
    move-object v0, v7

    move-object/from16 v1, p8

    move/from16 v2, p5

    move/from16 v3, p7

    move-object/from16 v4, p0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 786
    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 p5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 p7, v0

    sub-int p5, p5, p7

    .line 787
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

    .line 790
    .end local p7           #totalHeight:F
    .local v12, totalHeight:F
    :goto_5
    new-instance p7, Landroid/graphics/Paint;

    move-object/from16 v0, p7

    move-object v1, v11

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 791
    .local p7, continuePaint:Landroid/graphics/Paint;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p5

    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 p5, v0

    const/high16 v11, 0x3d40

    mul-float p5, p5, v11

    move-object/from16 v0, p7

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 792
    .end local v11           #textPaint:Landroid/graphics/Paint;
    const/16 p5, -0x1

    move-object/from16 v0, p7

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 793
    const/16 p5, 0x0

    .line 794
    .local p5, continueHeight:I
    if-eqz p4, :cond_a

    .line 795
    const v11, 0x7f070031

    .line 794
    :goto_6
    move-object/from16 v0, p6

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p6

    .line 797
    .local p6, continueMsg:Ljava/lang/String;
    if-nez v13, :cond_1

    if-nez p4, :cond_d

    .line 799
    :cond_1
    const/16 p5, 0x0

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    .end local p5           #continueHeight:I
    move-result v11

    .line 798
    move-object/from16 v0, p7

    move-object/from16 v1, p6

    move/from16 v2, p5

    move v3, v11

    move-object/from16 v4, p0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 800
    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 p5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 p0, v0

    .end local p0           #bounds:Landroid/graphics/Rect;
    sub-int p0, p5, p0

    .line 801
    .local p0, continueHeight:I
    move/from16 v0, p0

    int-to-float v0, v0

    move/from16 p5, v0

    add-float p5, p5, v5

    add-float p5, p5, v12

    .end local v12           #totalHeight:F
    .local p5, totalHeight:F
    move/from16 v11, p5

    .line 803
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

    .line 804
    .local p5, middle:F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    const/high16 v14, 0x4000

    div-float/2addr v11, v14

    sub-float v11, v12, v11

    .line 805
    .local v11, y:F
    int-to-float v9, v9

    add-float/2addr v9, v11

    .line 806
    .end local v11           #y:F
    .local v9, y:F
    move-object/from16 v0, p2

    move-object v1, v8

    move/from16 v2, p5

    move v3, v9

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 807
    const/4 v8, 0x1

    move/from16 v0, p3

    move v1, v8

    if-le v0, v1, :cond_c

    .line 808
    .end local v8           #msg:Ljava/lang/String;
    move v0, v6

    int-to-float v0, v0

    move/from16 p3, v0

    add-float p3, p3, v5

    add-float p3, p3, v9

    .line 809
    .end local v9           #y:F
    .local p3, y:F
    move-object/from16 v0, p2

    move-object/from16 v1, p8

    move/from16 v2, p5

    move/from16 v3, p3

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 811
    :goto_8
    if-nez v13, :cond_2

    if-nez p4, :cond_b

    .line 812
    :cond_2
    move/from16 v0, p0

    int-to-float v0, v0

    move/from16 p0, v0

    add-float p0, p0, v5

    add-float p0, p0, p3

    .line 813
    .end local p3           #y:F
    .local p0, y:F
    move-object/from16 v0, p2

    move-object/from16 v1, p6

    move/from16 v2, p5

    move/from16 v3, p0

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 815
    :goto_9
    return-object p1

    .line 741
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

    .line 743
    .end local p5           #score:I
    .restart local v13       #win:Z
    :cond_4
    const/16 p5, 0x0

    goto/16 :goto_1

    .line 759
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

    .line 760
    :cond_6
    const/high16 v5, 0x3e10

    goto/16 :goto_3

    .line 765
    :cond_7
    const p0, 0x7f07002b

    goto/16 :goto_4

    .line 767
    :cond_8
    if-eqz p5, :cond_9

    const p0, 0x7f07002f

    .local p0, mId:I
    :goto_a
    goto/16 :goto_4

    .end local p0           #mId:I
    :cond_9
    const p0, 0x7f07002c

    goto :goto_a

    .line 796
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
    const v11, 0x7f070030

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
    .line 674
    int-to-float p0, p0

    const v0, 0x3dcccccd

    mul-float/2addr p0, v0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .end local p0
    move-result-wide v0

    double-to-int p0, v0

    .line 675
    int-to-float p1, p1

    const v0, 0x3d23d70a

    mul-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .end local p1
    move-result-wide v0

    double-to-int p1, v0

    .line 676
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 673
    invoke-static {p0, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 677
    .local p0, b:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 679
    .local v0, c:Landroid/graphics/Canvas;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 680
    .local v1, p:Landroid/graphics/Paint;
    const/high16 p1, -0x100

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 681
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 683
    const/high16 p1, -0x1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 684
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const v2, 0x3f666666

    mul-float/2addr p1, v2

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 685
    const p1, -0x41b33333

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 686
    sget-object p1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 687
    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 689
    const/4 p1, 0x2

    new-array v3, p1, [I

    const/4 p1, 0x0

    aput p2, v3, p1

    const/4 p1, 0x1

    aput p3, v3, p1

    .line 690
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

    .line 703
    return-object p0

    .line 691
    :cond_0
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 692
    .local p1, bounds:Landroid/graphics/Rect;
    aget p2, v3, p3

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 693
    .local v2, s:Ljava/lang/String;
    const/4 p2, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v2, p2, v4, p1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 694
    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    .end local p1           #bounds:Landroid/graphics/Rect;
    sub-int/2addr p2, p1

    .line 695
    .local p2, height:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 v4, 0x4080

    div-float/2addr p1, v4

    .line 696
    .local p1, x:F
    const/4 v4, 0x1

    if-ne p3, v4, :cond_1

    .line 697
    const/high16 v4, 0x4040

    mul-float/2addr p1, v4

    move v4, p1

    .line 699
    .end local p1           #x:F
    .local v4, x:F
    :goto_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    .line 700
    .local p1, bHeight:I
    sub-int p2, p1, p2

    div-int/lit8 p2, p2, 0x2

    .end local p2           #height:I
    sub-int/2addr p1, p2

    int-to-float p1, p1

    invoke-virtual {v0, v2, v4, p1, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 690
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
    .line 819
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
    .line 824
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    if-lt v0, p0, :cond_0

    .line 825
    return v0

    .line 824
    :cond_0
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static opponentLevel(I)I
    .locals 2
    .parameter "playerLevel"

    .prologue
    .line 78
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

    .line 1083
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

    .line 1084
    return-void
.end method

.method private playfieldToScreenGL(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 3
    .parameter "screen"
    .parameter "playfield"

    .prologue
    const/high16 v2, 0x4000

    .line 413
    iget-boolean v0, p0, Lcom/jjcgames/android/airhockey/Game;->rotate:Z

    if-eqz v0, :cond_0

    .line 414
    iget v0, p2, Landroid/graphics/PointF;->y:F

    const/high16 v1, -0x4080

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/jjcgames/android/airhockey/Game;->screenPlayfieldProportion:F

    mul-float/2addr v0, v1

    .line 415
    iget v1, p0, Lcom/jjcgames/android/airhockey/Game;->screenWidth:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    iget v1, p0, Lcom/jjcgames/android/airhockey/Game;->screenWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 414
    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 416
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/jjcgames/android/airhockey/Game;->screenPlayfieldProportion:F

    mul-float/2addr v0, v1

    .line 417
    iget v1, p0, Lcom/jjcgames/android/airhockey/Game;->screenWidth:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    iget v1, p0, Lcom/jjcgames/android/airhockey/Game;->screenHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 416
    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 424
    :goto_0
    return-void

    .line 419
    :cond_0
    iget v0, p2, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/jjcgames/android/airhockey/Game;->screenPlayfieldProportion:F

    mul-float/2addr v0, v1

    .line 420
    iget v1, p0, Lcom/jjcgames/android/airhockey/Game;->screenHeight:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    iget v1, p0, Lcom/jjcgames/android/airhockey/Game;->screenHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 419
    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 421
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/jjcgames/android/airhockey/Game;->screenPlayfieldProportion:F

    mul-float/2addr v0, v1

    .line 422
    iget v1, p0, Lcom/jjcgames/android/airhockey/Game;->screenHeight:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    iget v1, p0, Lcom/jjcgames/android/airhockey/Game;->screenWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 421
    iput v0, p1, Landroid/graphics/PointF;->x:F

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

    .line 709
    if-nez p0, :cond_0

    if-eqz p1, :cond_3

    .line 710
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 711
    .local v5, m:Landroid/graphics/Matrix;
    if-eqz p1, :cond_1

    .line 712
    const/high16 v0, 0x4334

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 714
    :cond_1
    if-eqz p0, :cond_2

    .line 715
    const/high16 v0, -0x3d4c

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 718
    :cond_2
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p2

    move v2, v1

    move v6, v1

    .line 717
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 720
    .end local v5           #m:Landroid/graphics/Matrix;
    :cond_3
    if-nez p3, :cond_4

    .line 721
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 723
    :cond_4
    return-object p2
.end method

.method static puckSpeed(I)F
    .locals 2
    .parameter "cpuLevel"

    .prologue
    .line 86
    invoke-static {p0}, Lcom/jjcgames/android/airhockey/Game;->cpuMalletSpeed(I)F

    move-result v0

    const/high16 v1, 0x4080

    div-float/2addr v0, v1

    return v0
.end method

.method private runGame(Landroid/content/Context;Lcom/jjcgames/android/airhockey/GameActivity$Finisher;Landroid/view/SurfaceHolder;IIFFLandroid/content/Intent;)V
    .locals 194
    .parameter "context"
    .parameter "finisher"
    .parameter "surfaceHolder"
    .parameter "screenWidth"
    .parameter "screenHeight"
    .parameter "xdpi"
    .parameter "ydpi"
    .parameter "intent"

    .prologue
    .line 1110
    const-string v7, "Air Hockey"

    const-string v8, "Game thread started."

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    move/from16 v0, p4

    move/from16 v1, p5

    if-le v0, v1, :cond_6

    const/4 v7, 0x1

    :goto_0
    move v0, v7

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jjcgames/android/airhockey/Game;->rotate:Z

    .line 1114
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jjcgames/android/airhockey/Game;->screenWidth:I

    .line 1115
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jjcgames/android/airhockey/Game;->screenHeight:I

    .line 1120
    sget-object v7, Lcom/jjcgames/android/airhockey/Game;->eglSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v7}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 1122
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v5

    check-cast v5, Ljavax/microedition/khronos/egl/EGL10;

    .line 1123
    .local v5, egl:Ljavax/microedition/khronos/egl/EGL10;
    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v5, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v6

    .line 1124
    .local v6, display:Ljavax/microedition/khronos/egl/EGLDisplay;
    const/4 v7, 0x2

    new-array v7, v7, [I

    invoke-interface {v5, v6, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    .line 1127
    const/4 v7, 0x1

    new-array v8, v7, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 1128
    .local v8, configs:[Ljavax/microedition/khronos/egl/EGLConfig;
    const/4 v7, 0x3

    new-array v7, v7, [I

    const/4 v9, 0x0

    .line 1130
    const/16 v10, 0x3025

    aput v10, v7, v9

    const/4 v9, 0x2

    const/16 v10, 0x3038

    aput v10, v7, v9

    .line 1131
    array-length v9, v8

    const/4 v10, 0x1

    new-array v10, v10, [I

    .line 1128
    invoke-interface/range {v5 .. v10}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 1132
    const/4 v7, 0x0

    aget-object v68, v8, v7

    .line 1135
    .local v68, config:Ljavax/microedition/khronos/egl/EGLConfig;
    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    const/4 v8, 0x0

    .line 1134
    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v68

    move-object v3, v7

    move-object v4, v8

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    .end local v8           #configs:[Ljavax/microedition/khronos/egl/EGLConfig;
    move-result-object v81

    .line 1137
    .local v81, eglContext:Ljavax/microedition/khronos/egl/EGLContext;
    const/4 v7, 0x0

    .line 1136
    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v68

    move-object/from16 v3, p3

    move-object v4, v7

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v172

    .line 1138
    .local v172, surface:Ljavax/microedition/khronos/egl/EGLSurface;
    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v172

    move-object/from16 v3, v172

    move-object/from16 v4, v81

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1139
    invoke-virtual/range {v81 .. v81}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v9

    check-cast v9, Ljavax/microedition/khronos/opengles/GL10;

    .line 1142
    .local v9, gl:Ljavax/microedition/khronos/opengles/GL10;
    sget-object v167, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .line 1143
    .local v167, sdk:Ljava/lang/String;
    const-string v7, "1"

    move-object/from16 v0, v167

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "2"

    move-object/from16 v0, v167

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1146
    :cond_0
    const/16 v191, 0x1

    .line 1147
    .local v191, vbosSupported:Z
    const/4 v7, 0x1

    sput-boolean v7, Lcom/jjcgames/android/airhockey/Game;->drawTextureSupported:Z

    .line 1191
    :goto_1
    const/16 v7, 0xbd0

    invoke-interface {v9, v7}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 1192
    const/16 v7, 0xc50

    const/16 v8, 0x1101

    invoke-interface {v9, v7, v8}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    .line 1193
    const/16 v7, 0xde1

    invoke-interface {v9, v7}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 1194
    const/16 v7, 0x302

    const/16 v8, 0x303

    invoke-interface {v9, v7, v8}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 1196
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move v1, v7

    move v2, v8

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 1197
    const/16 v7, 0x1701

    invoke-interface {v9, v7}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 1198
    invoke-interface {v9}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 1199
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

    invoke-interface/range {v9 .. v15}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    .line 1200
    const/16 v7, 0x1700

    invoke-interface {v9, v7}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 1201
    invoke-interface {v9}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 1203
    const v7, 0x8074

    invoke-interface {v9, v7}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 1204
    const v7, 0x8078

    invoke-interface {v9, v7}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 1205
    const/4 v7, 0x0

    const/high16 v8, 0x3f80

    const/4 v10, 0x0

    const/high16 v11, 0x3f80

    invoke-interface {v9, v7, v8, v10, v11}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 1208
    new-instance v42, Lcom/jjcgames/android/airhockey/Game$Texture;

    const-string v7, "table"

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->rotate:Z

    move v10, v0

    move-object/from16 v0, p1

    move-object v1, v7

    move v2, v8

    move v3, v10

    invoke-static {v0, v1, v2, v3}, Lcom/jjcgames/android/airhockey/Game;->getBitmap(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object/from16 v0, v42

    move-object v1, v9

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/jjcgames/android/airhockey/Game$Texture;-><init>(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;)V

    .line 1209
    .local v42, tableTexture:Lcom/jjcgames/android/airhockey/Game$Texture;
    const/4 v7, 0x0

    invoke-static {v9, v7}, Lcom/jjcgames/android/airhockey/Game;->setTextureParams(Ljavax/microedition/khronos/opengles/GL10;Z)V

    .line 1211
    new-instance v111, Lcom/jjcgames/android/airhockey/Game$Texture;

    const-string v7, "mallet"

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->rotate:Z

    move v10, v0

    move-object/from16 v0, p1

    move-object v1, v7

    move v2, v8

    move v3, v10

    invoke-static {v0, v1, v2, v3}, Lcom/jjcgames/android/airhockey/Game;->getBitmap(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object/from16 v0, v111

    move-object v1, v9

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/jjcgames/android/airhockey/Game$Texture;-><init>(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;)V

    .line 1212
    .local v111, malletTexture:Lcom/jjcgames/android/airhockey/Game$Texture;
    const/4 v7, 0x1

    invoke-static {v9, v7}, Lcom/jjcgames/android/airhockey/Game;->setTextureParams(Ljavax/microedition/khronos/opengles/GL10;Z)V

    .line 1214
    new-instance v151, Lcom/jjcgames/android/airhockey/Game$Texture;

    const-string v7, "puck"

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->rotate:Z

    move v10, v0

    move-object/from16 v0, p1

    move-object v1, v7

    move v2, v8

    move v3, v10

    invoke-static {v0, v1, v2, v3}, Lcom/jjcgames/android/airhockey/Game;->getBitmap(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object/from16 v0, v151

    move-object v1, v9

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/jjcgames/android/airhockey/Game$Texture;-><init>(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;)V

    .line 1215
    .local v151, puckTexture:Lcom/jjcgames/android/airhockey/Game$Texture;
    const/4 v7, 0x1

    invoke-static {v9, v7}, Lcom/jjcgames/android/airhockey/Game;->setTextureParams(Ljavax/microedition/khronos/opengles/GL10;Z)V

    .line 1216
    const/4 v7, 0x2

    move v0, v7

    new-array v0, v0, [Lcom/jjcgames/android/airhockey/Game$Texture;

    move-object/from16 v166, v0

    .line 1217
    .local v166, scoreTextures:[Lcom/jjcgames/android/airhockey/Game$Texture;
    const/16 v100, 0x0

    .local v100, i:I
    :goto_2
    move-object/from16 v0, v166

    array-length v0, v0

    move v7, v0

    move/from16 v0, v100

    move v1, v7

    if-lt v0, v1, :cond_b

    .line 1221
    const/4 v7, 0x2

    move v0, v7

    new-array v0, v0, [Lcom/jjcgames/android/airhockey/Game$Texture;

    move-object/from16 v89, v0

    .line 1222
    .local v89, gameEndTextures:[Lcom/jjcgames/android/airhockey/Game$Texture;
    const/16 v100, 0x0

    :goto_3
    move-object/from16 v0, v89

    array-length v0, v0

    move v7, v0

    move/from16 v0, v100

    move v1, v7

    if-lt v0, v1, :cond_c

    .line 1227
    const/16 v63, 0x4

    .line 1228
    .local v63, QUAD_SIZE:I
    const/16 v61, 0x3

    .line 1230
    .local v61, COORDS_PER_VERTEX:I
    const/16 v7, 0x30

    invoke-static {v7}, Lcom/jjcgames/android/airhockey/Game;->nativeDirectByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 1231
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v156

    .line 1232
    .local v156, quadVertices:Ljava/nio/FloatBuffer;
    const/16 v64, 0x2

    .line 1234
    .local v64, TEXCOORDS_PER_VERTEX:I
    const/16 v7, 0x20

    invoke-static {v7}, Lcom/jjcgames/android/airhockey/Game;->nativeDirectByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 1235
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v153

    .line 1236
    .local v153, quadTex:Ljava/nio/FloatBuffer;
    const/16 v7, 0xc

    new-array v7, v7, [F

    fill-array-data v7, :array_0

    move-object/from16 v0, v156

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 1242
    const/4 v7, 0x0

    move-object/from16 v0, v156

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1243
    const/16 v7, 0x8

    new-array v7, v7, [F

    fill-array-data v7, :array_1

    move-object/from16 v0, v153

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 1249
    const/4 v7, 0x0

    move-object/from16 v0, v153

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1251
    if-eqz v191, :cond_d

    .line 1252
    move-object v0, v9

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    move-object/from16 v92, v0

    .line 1254
    .local v92, gl11:Ljavax/microedition/khronos/opengles/GL11;
    const/4 v7, 0x2

    move v0, v7

    new-array v0, v0, [I

    move-object/from16 v67, v0

    .line 1255
    .local v67, buffers:[I
    move-object/from16 v0, v67

    array-length v0, v0

    move v7, v0

    const/4 v8, 0x0

    move-object/from16 v0, v92

    move v1, v7

    move-object/from16 v2, v67

    move v3, v8

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    .line 1257
    const/4 v7, 0x0

    aget v155, v67, v7

    .line 1258
    .local v155, quadVertexBuffer:I
    const/4 v7, 0x1

    aget v154, v67, v7

    .line 1260
    .local v154, quadTexBuffer:I
    const/16 v62, 0x4

    .line 1261
    .local v62, FLOAT_BYTES:I
    const v7, 0x8892

    move-object/from16 v0, v92

    move v1, v7

    move/from16 v2, v155

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 1262
    const v7, 0x8892

    .line 1263
    invoke-virtual/range {v156 .. v156}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v8

    mul-int/lit8 v8, v8, 0x4

    .line 1264
    const v10, 0x88e4

    .line 1262
    move-object/from16 v0, v92

    move v1, v7

    move v2, v8

    move-object/from16 v3, v156

    move v4, v10

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 1265
    const/4 v7, 0x3

    const/16 v8, 0x1406

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, v92

    move v1, v7

    move v2, v8

    move v3, v10

    move v4, v11

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    .line 1267
    const v7, 0x8892

    move-object/from16 v0, v92

    move v1, v7

    move/from16 v2, v154

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 1268
    const v7, 0x8892

    .line 1269
    invoke-virtual/range {v153 .. v153}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v8

    mul-int/lit8 v8, v8, 0x4

    .line 1270
    const v10, 0x88e4

    .line 1268
    move-object/from16 v0, v92

    move v1, v7

    move v2, v8

    move-object/from16 v3, v153

    move v4, v10

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 1271
    const/4 v7, 0x2

    const/16 v8, 0x1406

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, v92

    move v1, v7

    move v2, v8

    move v3, v10

    move v4, v11

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 1273
    const v7, 0x8892

    const/4 v8, 0x0

    move-object/from16 v0, v92

    move v1, v7

    move v2, v8

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 1281
    .end local v62           #FLOAT_BYTES:I
    .end local v67           #buffers:[I
    .end local v92           #gl11:Ljavax/microedition/khronos/opengles/GL11;
    .end local v154           #quadTexBuffer:I
    .end local v155           #quadVertexBuffer:I
    :goto_4
    const/16 v7, 0x2300

    .line 1282
    const/16 v8, 0x2200

    const/16 v10, 0x1e01

    .line 1281
    invoke-interface {v9, v7, v8, v10}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    .line 1285
    new-instance v169, Landroid/media/SoundPool;

    const/16 v7, 0x20

    const/4 v8, 0x3

    const/4 v10, 0x0

    move-object/from16 v0, v169

    move v1, v7

    move v2, v8

    move v3, v10

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    .line 1291
    .local v169, sp:Landroid/media/SoundPool;
    const/16 v76, 0x2

    .line 1293
    .local v76, digits:I
    new-instance v138, Ljava/util/ArrayList;

    invoke-direct/range {v138 .. v138}, Ljava/util/ArrayList;-><init>()V

    .line 1294
    .local v138, puckMallet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v144, Ljava/util/ArrayList;

    invoke-direct/range {v144 .. v144}, Ljava/util/ArrayList;-><init>()V

    .line 1295
    .local v144, puckRail:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v93, Ljava/util/ArrayList;

    invoke-direct/range {v93 .. v93}, Ljava/util/ArrayList;-><init>()V

    .line 1297
    .local v93, goal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-class v7, Lcom/jjcgames/android/airhockey/R$raw;

    invoke-virtual {v7}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v84

    .line 1298
    .local v84, fields:[Ljava/lang/reflect/Field;
    move-object/from16 v0, v84

    array-length v0, v0

    move v7, v0

    const/4 v8, 0x0

    .end local v100           #i:I
    :goto_5
    if-lt v8, v7, :cond_e

    .line 1323
    move-object/from16 v0, p1

    move-object/from16 v1, v169

    move-object/from16 v2, v144

    invoke-static {v0, v1, v2}, Lcom/jjcgames/android/airhockey/Game;->loadAll(Landroid/content/Context;Landroid/media/SoundPool;Ljava/util/ArrayList;)[I

    move-result-object v146

    .line 1327
    .local v146, puckRailSounds:[I
    move-object/from16 v141, v146

    .line 1328
    .local v141, puckMalletSounds:[I
    move-object/from16 v0, p1

    move-object/from16 v1, v169

    move-object/from16 v2, v93

    invoke-static {v0, v1, v2}, Lcom/jjcgames/android/airhockey/Game;->loadAll(Landroid/content/Context;Landroid/media/SoundPool;Ljava/util/ArrayList;)[I

    move-result-object v98

    .line 1337
    .local v98, goalSounds:[I
    const v7, 0x431f5f4f

    cmpl-float v7, p6, v7

    if-nez v7, :cond_1

    const v7, 0x43a06b88

    cmpl-float v7, p7, v7

    if-nez v7, :cond_1

    .line 1338
    const p7, 0x4338ba2e

    move/from16 p6, p7

    .line 1342
    :cond_1
    const v7, 0x3f7281f4

    move/from16 v0, p4

    int-to-float v0, v0

    move v8, v0

    mul-float/2addr v7, v8

    .line 1343
    const v8, 0x3faf7557

    mul-float/2addr v7, v8

    move/from16 v0, p5

    int-to-float v0, v0

    move v8, v0

    div-float/2addr v7, v8

    .line 1342
    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jjcgames/android/airhockey/Game;->screenPlayfieldProportion:F

    .line 1345
    const/high16 v7, 0x4370

    cmpl-float v7, p7, v7

    if-ltz v7, :cond_2

    .line 1346
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jjcgames/android/airhockey/Game;->fingerMalletOffsetMM:F

    move v7, v0

    const/high16 v8, 0x3fa0

    mul-float/2addr v7, v8

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jjcgames/android/airhockey/Game;->fingerMalletOffsetMM:F

    .line 1350
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jjcgames/android/airhockey/Game;->fingerMalletOffsetMM:F

    move v7, v0

    .line 1351
    const v8, 0x3d214270

    .line 1350
    mul-float/2addr v7, v8

    .line 1352
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->rotate:Z

    move v8, v0

    if-eqz v8, :cond_13

    move/from16 v8, p6

    .line 1350
    :goto_6
    mul-float/2addr v7, v8

    .line 1353
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->rotate:Z

    move v8, v0

    if-eqz v8, :cond_14

    move/from16 v8, p4

    :goto_7
    int-to-float v8, v8

    .line 1350
    div-float/2addr v7, v8

    .line 1354
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jjcgames/android/airhockey/Game;->screenPlayfieldProportion:F

    move v8, v0

    .line 1350
    div-float/2addr v7, v8

    .line 1355
    const/high16 v8, 0x4000

    .line 1350
    mul-float v85, v7, v8

    .line 1358
    .local v85, fingerMalletOffset:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->rotate:Z

    move v7, v0

    if-eqz v7, :cond_15

    move/from16 v7, p4

    :goto_8
    int-to-float v7, v7

    const v8, 0x3e555555

    mul-float/2addr v7, v8

    .line 1357
    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jjcgames/android/airhockey/Game;->touchJumpThresholdPixelsSquare:F

    .line 1359
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

    .line 1362
    const-string v7, "players"

    const/4 v8, 0x1

    move-object/from16 v0, p8

    move-object v1, v7

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_16

    const/4 v7, 0x1

    :goto_9
    move v0, v7

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jjcgames/android/airhockey/Game;->twoPlayer:Z

    .line 1363
    const-string v7, "multitouch"

    const/4 v8, 0x0

    move-object/from16 v0, p8

    move-object v1, v7

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    move v0, v7

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jjcgames/android/airhockey/Game;->multitouch:Z

    .line 1364
    const-string v7, "player_id"

    const/4 v8, -0x1

    move-object/from16 v0, p8

    move-object v1, v7

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v128

    .line 1366
    .local v128, playerID:I
    const-string v7, "match_games"

    const/4 v8, 0x1

    move-object/from16 v0, p8

    move-object v1, v7

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/lit8 v13, v7, 0x1

    .line 1367
    .local v13, matchWinningGames:I
    const-string v7, "cpu_level"

    const/16 v8, 0xc8

    move-object/from16 v0, p8

    move-object v1, v7

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v71

    .line 1368
    .local v71, cpuLevel:I
    const v7, 0x3b4ccccd

    move/from16 v0, p4

    int-to-float v0, v0

    move v8, v0

    mul-float v170, v7, v8

    .line 1369
    .local v170, speedFactor:F
    const-string v7, "puck_speed_custom"

    .line 1370
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->twoPlayer:Z

    move v8, v0

    if-eqz v8, :cond_18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->multitouch:Z

    move v8, v0

    if-eqz v8, :cond_17

    .line 1371
    const v8, 0x40466666

    .line 1369
    :goto_a
    move-object/from16 v0, p8

    move-object v1, v7

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v148

    .line 1374
    .local v148, puckSpeedLimit:F
    const-string v7, "sound"

    const/4 v8, 0x0

    move-object/from16 v0, p8

    move-object v1, v7

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v168

    .line 1377
    .local v168, sound:Z
    const/4 v7, 0x2

    move v0, v7

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 1378
    .local v19, score:[I
    const/4 v7, 0x2

    move v0, v7

    new-array v0, v0, [I

    move-object/from16 v91, v0

    .line 1379
    .local v91, games:[I
    const/4 v7, 0x2

    move v0, v7

    new-array v0, v0, [I

    move-object/from16 v112, v0

    .line 1380
    .local v112, matchGoals:[I
    const/16 v90, -0x1

    .line 1381
    .local v90, gameWinner:I
    const/16 v113, -0x1

    .line 1382
    .local v113, matchWinner:I
    const/16 v160, 0x0

    .line 1383
    .local v160, readyToContinue:Z
    const/16 v192, 0x0

    .line 1384
    .local v192, winScreenInitiallyTouched:Z
    const/16 v88, 0x0

    .line 1389
    .local v88, frameNumber:I
    const/16 v69, 0x1

    .line 1390
    .local v69, cpu:I
    const/16 v99, 0x0

    .line 1397
    .local v99, human:I
    const/4 v7, 0x2

    move v0, v7

    new-array v0, v0, [Landroid/graphics/PointF;

    move-object/from16 v127, v0

    .line 1398
    .local v127, player:[Landroid/graphics/PointF;
    const/16 v100, 0x0

    .restart local v100       #i:I
    :goto_b
    move-object/from16 v0, v127

    array-length v0, v0

    move v7, v0

    move/from16 v0, v100

    move v1, v7

    if-lt v0, v1, :cond_19

    .line 1410
    move-object/from16 v0, v127

    array-length v0, v0

    move v7, v0

    move v0, v7

    new-array v0, v0, [Landroid/graphics/PointF;

    move-object/from16 v129, v0

    .line 1411
    .local v129, playerLast:[Landroid/graphics/PointF;
    const/16 v100, 0x0

    :goto_c
    move-object/from16 v0, v129

    array-length v0, v0

    move v7, v0

    move/from16 v0, v100

    move v1, v7

    if-lt v0, v1, :cond_1b

    .line 1419
    move-object/from16 v0, v127

    array-length v0, v0

    move v7, v0

    move v0, v7

    new-array v0, v0, [Landroid/graphics/PointF;

    move-object/from16 v130, v0

    .line 1420
    .local v130, playerLastLast:[Landroid/graphics/PointF;
    const/16 v100, 0x0

    :goto_d
    move-object/from16 v0, v130

    array-length v0, v0

    move v7, v0

    move/from16 v0, v100

    move v1, v7

    if-lt v0, v1, :cond_1c

    .line 1424
    new-instance v20, Landroid/graphics/PointF;

    sget-object v7, Lcom/jjcgames/android/airhockey/Game;->initialPuckPosition:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    sget-object v8, Lcom/jjcgames/android/airhockey/Game;->initialPuckPosition:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v20

    move v1, v7

    move v2, v8

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1425
    .local v20, puck:Landroid/graphics/PointF;
    new-instance v31, Landroid/graphics/PointF;

    invoke-direct/range {v31 .. v31}, Landroid/graphics/PointF;-><init>()V

    .line 1426
    .local v31, puckLast:Landroid/graphics/PointF;
    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 1427
    new-instance v137, Landroid/graphics/PointF;

    invoke-direct/range {v137 .. v137}, Landroid/graphics/PointF;-><init>()V

    .line 1428
    .local v137, puckLastLast:Landroid/graphics/PointF;
    move-object/from16 v0, v137

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 1431
    move-object/from16 v0, v127

    array-length v0, v0

    move v7, v0

    move v0, v7

    new-array v0, v0, [Landroid/graphics/PointF;

    move-object/from16 v132, v0

    .line 1432
    .local v132, playerV:[Landroid/graphics/PointF;
    const/16 v100, 0x0

    :goto_e
    move-object/from16 v0, v132

    array-length v0, v0

    move v7, v0

    move/from16 v0, v100

    move v1, v7

    if-lt v0, v1, :cond_1d

    .line 1435
    new-instance v22, Landroid/graphics/PointF;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v22

    move v1, v7

    move v2, v8

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1436
    .local v22, puckV:Landroid/graphics/PointF;
    invoke-static/range {v22 .. v22}, Lcom/jjcgames/android/airhockey/Game;->initialPuckVelocity(Landroid/graphics/PointF;)V

    .line 1439
    const/16 v161, 0x1

    .line 1440
    .local v161, retarget:Z
    new-instance v174, Landroid/graphics/PointF;

    const/4 v7, 0x1

    aget-object v7, v127, v7

    iget v7, v7, Landroid/graphics/PointF;->x:F

    const/4 v8, 0x1

    aget-object v8, v127, v8

    iget v8, v8, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v174

    move v1, v7

    move v2, v8

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1441
    .local v174, target:Landroid/graphics/PointF;
    const/16 v133, 0x0

    .line 1442
    .local v133, pointStartCountdown:F
    const/16 v159, 0x0

    .line 1444
    .local v159, reactionTimeLeft:F
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10

    const-wide/high16 v14, 0x3fe0

    cmpg-double v7, v10, v14

    if-gez v7, :cond_3

    .line 1445
    sget-object v7, Lcom/jjcgames/android/airhockey/Game;->initialPuckPosition:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    neg-float v7, v7

    move v0, v7

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 1448
    :cond_3
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_4

    .line 1449
    const/high16 v133, 0x3f80

    .line 1454
    :cond_4
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/jjcgames/android/airhockey/Game;->stateReader(Landroid/content/Context;)Ljava/io/BufferedReader;

    move-result-object v171

    .line 1455
    .local v171, state:Ljava/io/BufferedReader;
    invoke-virtual/range {v171 .. v171}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v66

    .line 1456
    .local v66, activity:Ljava/lang/String;
    const-class v7, Lcom/jjcgames/android/airhockey/GameActivity;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v66

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1457
    invoke-virtual/range {v171 .. v171}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1e

    const/4 v7, 0x1

    :goto_f
    move v0, v7

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jjcgames/android/airhockey/Game;->twoPlayer:Z

    .line 1458
    invoke-virtual/range {v171 .. v171}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 1459
    invoke-virtual/range {v171 .. v171}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v148

    .line 1460
    invoke-virtual/range {v171 .. v171}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v168

    .line 1461
    const/4 v7, 0x0

    invoke-virtual/range {v171 .. v171}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v91, v7

    .line 1462
    const/4 v7, 0x1

    invoke-virtual/range {v171 .. v171}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v91, v7

    .line 1463
    const/4 v7, 0x0

    invoke-virtual/range {v171 .. v171}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v19, v7

    .line 1464
    const/4 v7, 0x1

    invoke-virtual/range {v171 .. v171}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v19, v7

    .line 1465
    const/4 v7, 0x0

    invoke-virtual/range {v171 .. v171}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v112, v7

    .line 1466
    const/4 v7, 0x1

    invoke-virtual/range {v171 .. v171}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v112, v7

    .line 1467
    invoke-virtual/range {v171 .. v171}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    move v0, v7

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 1468
    invoke-virtual/range {v171 .. v171}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    move v0, v7

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 1469
    invoke-virtual/range {v171 .. v171}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    move v0, v7

    move-object/from16 v1, v22

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 1470
    invoke-virtual/range {v171 .. v171}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    move v0, v7

    move-object/from16 v1, v22

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 1471
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->twoPlayer:Z

    move v7, v0

    if-eqz v7, :cond_1f

    .line 1472
    invoke-virtual/range {v171 .. v171}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    move v0, v7

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jjcgames/android/airhockey/Game;->multitouch:Z

    .line 1490
    :goto_10
    const/16 v100, 0x0

    :goto_11
    move-object/from16 v0, v19

    array-length v0, v0

    move v7, v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_5

    move/from16 v0, v100

    move v1, v7

    if-lt v0, v1, :cond_20

    .line 1522
    .end local v66           #activity:Ljava/lang/String;
    .end local v171           #state:Ljava/io/BufferedReader;
    :cond_5
    :goto_12
    const-string v7, "state"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 1525
    mul-float v149, v148, v148

    .line 1527
    .local v149, puckSpeedLimitSquare:F
    move/from16 v0, v71

    int-to-float v0, v0

    move v7, v0

    const/high16 v8, 0x447a

    div-float v72, v7, v8

    .line 1528
    .local v72, cpuLevelF:F
    invoke-static/range {v71 .. v71}, Lcom/jjcgames/android/airhockey/Game;->cpuMalletSpeed(I)F

    move-result v7

    mul-float v116, v7, v170

    .line 1531
    .local v116, maxCPUMalletSpeed:F
    mul-float v117, v116, v116

    .line 1532
    .local v117, maxCPUMalletSpeedSquare:F
    move/from16 v114, v116

    .line 1534
    .local v114, maxCPUMalletAcceleration:F
    mul-float v115, v114, v114

    .line 1535
    .local v115, maxCPUMalletAccelerationSquare:F
    const/high16 v7, 0x3f80

    sub-float v7, v7, v72

    const/high16 v8, 0x3e80

    mul-float v70, v7, v8

    .line 1536
    .local v70, cpuEstimationAccuracyFudge:F
    const/high16 v7, 0x3f80

    sub-float v7, v7, v72

    const v8, 0x3e4ccccd

    mul-float v73, v7, v8

    .line 1538
    .local v73, cpuReactionTime:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->rotate:Z

    move v15, v0

    move-object v14, v9

    move/from16 v16, p4

    move/from16 v17, p5

    move-object/from16 v18, v166

    invoke-static/range {v14 .. v19}, Lcom/jjcgames/android/airhockey/Game;->setupScoreTextures(Ljavax/microedition/khronos/opengles/GL10;ZII[Lcom/jjcgames/android/airhockey/Game$Texture;[I)V

    .line 1540
    const/high16 v7, 0x3e00

    move/from16 v0, p4

    int-to-float v0, v0

    move v8, v0

    mul-float/2addr v7, v8

    .line 1541
    const/4 v8, 0x0

    aget-object v8, v166, v8

    iget v8, v8, Lcom/jjcgames/android/airhockey/Game$Texture;->width:I

    int-to-float v8, v8

    const/high16 v10, 0x4000

    div-float/2addr v8, v10

    .line 1540
    sub-float/2addr v7, v8

    move v0, v7

    float-to-int v0, v0

    move/from16 v162, v0

    .line 1542
    .local v162, scorePosition0x:I
    const v7, 0x3ccccccd

    move/from16 v0, p5

    int-to-float v0, v0

    move v8, v0

    mul-float/2addr v7, v8

    .line 1543
    const/4 v8, 0x0

    aget-object v8, v166, v8

    iget v8, v8, Lcom/jjcgames/android/airhockey/Game$Texture;->height:I

    int-to-float v8, v8

    const/high16 v10, 0x4000

    div-float/2addr v8, v10

    .line 1542
    sub-float/2addr v7, v8

    move v0, v7

    float-to-int v0, v0

    move/from16 v163, v0

    .line 1544
    .local v163, scorePosition0y:I
    const/high16 v7, 0x3f60

    move/from16 v0, p4

    int-to-float v0, v0

    move v8, v0

    mul-float/2addr v7, v8

    .line 1545
    const/4 v8, 0x1

    aget-object v8, v166, v8

    iget v8, v8, Lcom/jjcgames/android/airhockey/Game$Texture;->width:I

    int-to-float v8, v8

    const/high16 v10, 0x4000

    div-float/2addr v8, v10

    .line 1544
    sub-float/2addr v7, v8

    move v0, v7

    float-to-int v0, v0

    move/from16 v164, v0

    .line 1546
    .local v164, scorePosition1x:I
    const v7, 0x3f79999a

    move/from16 v0, p5

    int-to-float v0, v0

    move v8, v0

    mul-float/2addr v7, v8

    .line 1547
    const/4 v8, 0x1

    aget-object v8, v166, v8

    iget v8, v8, Lcom/jjcgames/android/airhockey/Game$Texture;->height:I

    int-to-float v8, v8

    const/high16 v10, 0x4000

    div-float/2addr v8, v10

    .line 1546
    sub-float/2addr v7, v8

    move v0, v7

    float-to-int v0, v0

    move/from16 v165, v0

    .line 1551
    .local v165, scorePosition1y:I
    new-instance v21, Landroid/graphics/PointF;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/PointF;-><init>()V

    .line 1552
    .local v21, p:Landroid/graphics/PointF;
    new-instance v23, Landroid/graphics/PointF;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v23

    move v1, v7

    move v2, v8

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1556
    .local v23, pZero:Landroid/graphics/PointF;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1562
    move-object/from16 v0, v127

    array-length v0, v0

    move v7, v0

    move v0, v7

    new-array v0, v0, [Z

    move-object/from16 v186, v0

    .line 1563
    .local v186, touchedLastFrame:[Z
    move-object/from16 v0, v127

    array-length v0, v0

    move v7, v0

    move v0, v7

    new-array v0, v0, [Z

    move-object/from16 v185, v0

    .line 1564
    .local v185, touched:[Z
    const/16 v100, 0x0

    :goto_13
    move-object/from16 v0, v127

    array-length v0, v0

    move v7, v0

    move/from16 v0, v100

    move v1, v7

    if-lt v0, v1, :cond_25

    .line 1571
    const v82, 0x3c888889

    .line 1572
    .local v82, elapsedTime:F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const/high16 v7, 0x447a

    mul-float v7, v7, v82

    float-to-long v14, v7

    sub-long v103, v10, v14

    .line 1573
    .local v103, lastT:J
    :goto_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->threadFinishing:Z

    move v7, v0

    if-eqz v7, :cond_26

    .line 2368
    invoke-static {v9}, Lcom/jjcgames/android/airhockey/Game$Texture;->deleteAll(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 2374
    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v8, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v9, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 2373
    .end local v9           #gl:Ljavax/microedition/khronos/opengles/GL10;
    invoke-interface {v5, v6, v7, v8, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 2375
    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v172

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 2376
    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v81

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 2377
    invoke-interface {v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 2380
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->movingOn:Z

    move v7, v0

    if-nez v7, :cond_8f

    .line 2382
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/jjcgames/android/airhockey/Game;->stateWriter(Landroid/content/Context;)Ljava/io/Writer;

    move-result-object v171

    .line 2384
    .local v171, state:Ljava/io/Writer;
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

    .line 2385
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->twoPlayer:Z

    move v8, v0

    if-eqz v8, :cond_8d

    const-string v8, "2"

    :goto_15
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2386
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2387
    move-object v0, v7

    move/from16 v1, v148

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2388
    move-object v0, v7

    move/from16 v1, v168

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2389
    const/4 v8, 0x0

    aget v8, v91, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2390
    const/4 v8, 0x1

    aget v8, v91, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2391
    const/4 v8, 0x0

    aget v8, v19, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2392
    const/4 v8, 0x1

    aget v8, v19, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2393
    const/4 v8, 0x0

    aget v8, v112, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2394
    const/4 v8, 0x1

    aget v8, v112, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2395
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2396
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2397
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2398
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2384
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2383
    move-object/from16 v0, v171

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2399
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->twoPlayer:Z

    move v7, v0

    if-eqz v7, :cond_8e

    .line 2400
    new-instance v7, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->multitouch:Z

    move v8, v0

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v171

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2415
    :goto_16
    invoke-virtual/range {v171 .. v171}, Ljava/io/Writer;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 2430
    .end local v171           #state:Ljava/io/Writer;
    :goto_17
    sget-object v7, Lcom/jjcgames/android/airhockey/Game;->eglSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v7}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2432
    const-string v7, "Air Hockey"

    const-string v8, "Game thread finishing."

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2433
    return-void

    .line 1113
    .end local v5           #egl:Ljavax/microedition/khronos/egl/EGL10;
    .end local v6           #display:Ljavax/microedition/khronos/egl/EGLDisplay;
    .end local v13           #matchWinningGames:I
    .end local v19           #score:[I
    .end local v20           #puck:Landroid/graphics/PointF;
    .end local v21           #p:Landroid/graphics/PointF;
    .end local v22           #puckV:Landroid/graphics/PointF;
    .end local v23           #pZero:Landroid/graphics/PointF;
    .end local v31           #puckLast:Landroid/graphics/PointF;
    .end local v42           #tableTexture:Lcom/jjcgames/android/airhockey/Game$Texture;
    .end local v61           #COORDS_PER_VERTEX:I
    .end local v63           #QUAD_SIZE:I
    .end local v64           #TEXCOORDS_PER_VERTEX:I
    .end local v68           #config:Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v69           #cpu:I
    .end local v70           #cpuEstimationAccuracyFudge:F
    .end local v71           #cpuLevel:I
    .end local v72           #cpuLevelF:F
    .end local v73           #cpuReactionTime:F
    .end local v76           #digits:I
    .end local v81           #eglContext:Ljavax/microedition/khronos/egl/EGLContext;
    .end local v82           #elapsedTime:F
    .end local v84           #fields:[Ljava/lang/reflect/Field;
    .end local v85           #fingerMalletOffset:F
    .end local v88           #frameNumber:I
    .end local v89           #gameEndTextures:[Lcom/jjcgames/android/airhockey/Game$Texture;
    .end local v90           #gameWinner:I
    .end local v91           #games:[I
    .end local v93           #goal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v98           #goalSounds:[I
    .end local v99           #human:I
    .end local v100           #i:I
    .end local v103           #lastT:J
    .end local v111           #malletTexture:Lcom/jjcgames/android/airhockey/Game$Texture;
    .end local v112           #matchGoals:[I
    .end local v113           #matchWinner:I
    .end local v114           #maxCPUMalletAcceleration:F
    .end local v115           #maxCPUMalletAccelerationSquare:F
    .end local v116           #maxCPUMalletSpeed:F
    .end local v117           #maxCPUMalletSpeedSquare:F
    .end local v127           #player:[Landroid/graphics/PointF;
    .end local v128           #playerID:I
    .end local v129           #playerLast:[Landroid/graphics/PointF;
    .end local v130           #playerLastLast:[Landroid/graphics/PointF;
    .end local v132           #playerV:[Landroid/graphics/PointF;
    .end local v133           #pointStartCountdown:F
    .end local v137           #puckLastLast:Landroid/graphics/PointF;
    .end local v138           #puckMallet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v141           #puckMalletSounds:[I
    .end local v144           #puckRail:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v146           #puckRailSounds:[I
    .end local v148           #puckSpeedLimit:F
    .end local v149           #puckSpeedLimitSquare:F
    .end local v151           #puckTexture:Lcom/jjcgames/android/airhockey/Game$Texture;
    .end local v153           #quadTex:Ljava/nio/FloatBuffer;
    .end local v156           #quadVertices:Ljava/nio/FloatBuffer;
    .end local v159           #reactionTimeLeft:F
    .end local v160           #readyToContinue:Z
    .end local v161           #retarget:Z
    .end local v162           #scorePosition0x:I
    .end local v163           #scorePosition0y:I
    .end local v164           #scorePosition1x:I
    .end local v165           #scorePosition1y:I
    .end local v166           #scoreTextures:[Lcom/jjcgames/android/airhockey/Game$Texture;
    .end local v167           #sdk:Ljava/lang/String;
    .end local v168           #sound:Z
    .end local v169           #sp:Landroid/media/SoundPool;
    .end local v170           #speedFactor:F
    .end local v172           #surface:Ljavax/microedition/khronos/egl/EGLSurface;
    .end local v174           #target:Landroid/graphics/PointF;
    .end local v185           #touched:[Z
    .end local v186           #touchedLastFrame:[Z
    .end local v191           #vbosSupported:Z
    .end local v192           #winScreenInitiallyTouched:Z
    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1150
    .restart local v5       #egl:Ljavax/microedition/khronos/egl/EGL10;
    .restart local v6       #display:Ljavax/microedition/khronos/egl/EGLDisplay;
    .restart local v9       #gl:Ljavax/microedition/khronos/opengles/GL10;
    .restart local v68       #config:Ljavax/microedition/khronos/egl/EGLConfig;
    .restart local v81       #eglContext:Ljavax/microedition/khronos/egl/EGLContext;
    .restart local v167       #sdk:Ljava/lang/String;
    .restart local v172       #surface:Ljavax/microedition/khronos/egl/EGLSurface;
    :cond_7
    const/16 v7, 0x1f03

    invoke-interface {v9, v7}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v83

    .line 1151
    .local v83, extensions:[Ljava/lang/String;
    invoke-static/range {v83 .. v83}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 1155
    const-string v7, "(\\d+)\\.(\\d+)"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 1156
    const/16 v8, 0x1f02

    invoke-interface {v9, v8}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v8

    .line 1155
    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v105

    .line 1158
    .local v105, m:Ljava/util/regex/Matcher;
    invoke-virtual/range {v105 .. v105}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1159
    const/4 v7, 0x1

    move-object/from16 v0, v105

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v106

    .line 1160
    .local v106, major:I
    const/4 v7, 0x2

    move-object/from16 v0, v105

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v118

    .line 1166
    .local v118, minor:I
    :goto_18
    sget-object v119, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1167
    .local v119, model:Ljava/lang/String;
    const-string v7, "MB200"

    move-object/from16 v0, v119

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "MB300"

    move-object/from16 v0, v119

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 1168
    sget-object v7, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v8, "SPH-M900"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 1174
    :cond_8
    const/16 v191, 0x0

    .line 1187
    .restart local v191       #vbosSupported:Z
    const-string v7, "GL_OES_draw_texture"

    move-object/from16 v0, v83

    move-object v1, v7

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    if-lez v7, :cond_a

    const/4 v7, 0x1

    .line 1186
    :goto_19
    sput-boolean v7, Lcom/jjcgames/android/airhockey/Game;->drawTextureSupported:Z

    goto/16 :goto_1

    .line 1162
    .end local v106           #major:I
    .end local v118           #minor:I
    .end local v119           #model:Ljava/lang/String;
    .end local v191           #vbosSupported:Z
    :cond_9
    const/16 v106, 0x1

    .line 1163
    .restart local v106       #major:I
    const/16 v118, 0x0

    .restart local v118       #minor:I
    goto :goto_18

    .line 1187
    .restart local v119       #model:Ljava/lang/String;
    .restart local v191       #vbosSupported:Z
    :cond_a
    const/4 v7, 0x0

    goto :goto_19

    .line 1218
    .end local v83           #extensions:[Ljava/lang/String;
    .end local v105           #m:Ljava/util/regex/Matcher;
    .end local v106           #major:I
    .end local v118           #minor:I
    .end local v119           #model:Ljava/lang/String;
    .restart local v42       #tableTexture:Lcom/jjcgames/android/airhockey/Game$Texture;
    .restart local v100       #i:I
    .restart local v111       #malletTexture:Lcom/jjcgames/android/airhockey/Game$Texture;
    .restart local v151       #puckTexture:Lcom/jjcgames/android/airhockey/Game$Texture;
    .restart local v166       #scoreTextures:[Lcom/jjcgames/android/airhockey/Game$Texture;
    :cond_b
    new-instance v7, Lcom/jjcgames/android/airhockey/Game$Texture;

    invoke-direct {v7, v9}, Lcom/jjcgames/android/airhockey/Game$Texture;-><init>(Ljavax/microedition/khronos/opengles/GL10;)V

    aput-object v7, v166, v100

    .line 1219
    const/4 v7, 0x0

    invoke-static {v9, v7}, Lcom/jjcgames/android/airhockey/Game;->setTextureParams(Ljavax/microedition/khronos/opengles/GL10;Z)V

    .line 1217
    add-int/lit8 v100, v100, 0x1

    goto/16 :goto_2

    .line 1223
    .restart local v89       #gameEndTextures:[Lcom/jjcgames/android/airhockey/Game$Texture;
    :cond_c
    new-instance v7, Lcom/jjcgames/android/airhockey/Game$Texture;

    invoke-direct {v7, v9}, Lcom/jjcgames/android/airhockey/Game$Texture;-><init>(Ljavax/microedition/khronos/opengles/GL10;)V

    aput-object v7, v89, v100

    .line 1224
    const/4 v7, 0x0

    invoke-static {v9, v7}, Lcom/jjcgames/android/airhockey/Game;->setTextureParams(Ljavax/microedition/khronos/opengles/GL10;Z)V

    .line 1222
    add-int/lit8 v100, v100, 0x1

    goto/16 :goto_3

    .line 1275
    .restart local v61       #COORDS_PER_VERTEX:I
    .restart local v63       #QUAD_SIZE:I
    .restart local v64       #TEXCOORDS_PER_VERTEX:I
    .restart local v153       #quadTex:Ljava/nio/FloatBuffer;
    .restart local v156       #quadVertices:Ljava/nio/FloatBuffer;
    :cond_d
    const/4 v7, 0x3

    const/16 v8, 0x1406

    const/4 v10, 0x0

    move-object v0, v9

    move v1, v7

    move v2, v8

    move v3, v10

    move-object/from16 v4, v156

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 1277
    const/4 v7, 0x2

    const/16 v8, 0x1406

    const/4 v10, 0x0

    move-object v0, v9

    move v1, v7

    move v2, v8

    move v3, v10

    move-object/from16 v4, v153

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    goto/16 :goto_4

    .line 1298
    .end local v100           #i:I
    .restart local v76       #digits:I
    .restart local v84       #fields:[Ljava/lang/reflect/Field;
    .restart local v93       #goal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v138       #puckMallet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v144       #puckRail:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v169       #sp:Landroid/media/SoundPool;
    :cond_e
    aget-object v100, v84, v8

    .line 1299
    .local v100, i:Ljava/lang/reflect/Field;
    invoke-virtual/range {v100 .. v100}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v121

    .line 1300
    .local v121, name:Ljava/lang/String;
    invoke-virtual/range {v121 .. v121}, Ljava/lang/String;->length()I

    move-result v120

    .line 1301
    .local v120, n:I
    const/4 v10, 0x2

    move/from16 v0, v120

    move v1, v10

    if-ge v0, v1, :cond_10

    .line 1298
    :cond_f
    :goto_1a
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_5

    .line 1304
    :cond_10
    const/4 v10, 0x0

    const/4 v11, 0x2

    sub-int v11, v120, v11

    move-object/from16 v0, v121

    move v1, v10

    move v2, v11

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v189

    .line 1306
    .local v189, type:Ljava/lang/String;
    const-string v10, "puckmallet"

    move-object/from16 v0, v189

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 1307
    move-object/from16 v65, v138

    .line 1316
    .local v65, a:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_1b
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

    goto :goto_1a

    .line 1317
    :catch_0
    move-exception v10

    move-object/from16 v80, v10

    .line 1318
    .local v80, e:Ljava/lang/IllegalArgumentException;
    sget-boolean v10, Lcom/jjcgames/android/airhockey/Game;->$assertionsDisabled:Z

    if-nez v10, :cond_f

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 1308
    .end local v65           #a:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v80           #e:Ljava/lang/IllegalArgumentException;
    :cond_11
    const-string v10, "puckrail"

    move-object/from16 v0, v189

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 1309
    move-object/from16 v65, v144

    .restart local v65       #a:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto :goto_1b

    .line 1310
    .end local v65           #a:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_12
    const-string v10, "goal"

    move-object/from16 v0, v189

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 1311
    move-object/from16 v65, v93

    .restart local v65       #a:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto :goto_1b

    .line 1319
    :catch_1
    move-exception v10

    move-object/from16 v80, v10

    .line 1320
    .local v80, e:Ljava/lang/IllegalAccessException;
    sget-boolean v10, Lcom/jjcgames/android/airhockey/Game;->$assertionsDisabled:Z

    if-nez v10, :cond_f

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .end local v65           #a:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v80           #e:Ljava/lang/IllegalAccessException;
    .end local v100           #i:Ljava/lang/reflect/Field;
    .end local v120           #n:I
    .end local v121           #name:Ljava/lang/String;
    .end local v189           #type:Ljava/lang/String;
    .restart local v98       #goalSounds:[I
    .restart local v141       #puckMalletSounds:[I
    .restart local v146       #puckRailSounds:[I
    :cond_13
    move/from16 v8, p7

    .line 1352
    goto/16 :goto_6

    :cond_14
    move/from16 v8, p5

    .line 1353
    goto/16 :goto_7

    .restart local v85       #fingerMalletOffset:F
    :cond_15
    move/from16 v7, p5

    .line 1358
    goto/16 :goto_8

    .line 1362
    :cond_16
    const/4 v7, 0x0

    goto/16 :goto_9

    .line 1372
    .restart local v13       #matchWinningGames:I
    .restart local v71       #cpuLevel:I
    .restart local v128       #playerID:I
    .restart local v170       #speedFactor:F
    :cond_17
    const/high16 v8, 0x4000

    goto/16 :goto_a

    .line 1373
    :cond_18
    invoke-static/range {v71 .. v71}, Lcom/jjcgames/android/airhockey/Game;->puckSpeed(I)F

    move-result v8

    mul-float v8, v8, v170

    goto/16 :goto_a

    .line 1399
    .restart local v19       #score:[I
    .restart local v69       #cpu:I
    .restart local v88       #frameNumber:I
    .restart local v90       #gameWinner:I
    .restart local v91       #games:[I
    .restart local v99       #human:I
    .local v100, i:I
    .restart local v112       #matchGoals:[I
    .restart local v113       #matchWinner:I
    .restart local v127       #player:[Landroid/graphics/PointF;
    .restart local v148       #puckSpeedLimit:F
    .restart local v160       #readyToContinue:Z
    .restart local v168       #sound:Z
    .restart local v192       #winScreenInitiallyTouched:Z
    :cond_19
    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7}, Landroid/graphics/PointF;-><init>()V

    aput-object v7, v127, v100

    .line 1401
    aget-object v7, v127, v100

    move-object v0, v7

    move/from16 v1, v100

    invoke-static {v0, v1}, Lcom/jjcgames/android/airhockey/Game;->initialMalletPosition(Landroid/graphics/PointF;I)V

    .line 1402
    new-instance v21, Landroid/graphics/PointF;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/PointF;-><init>()V

    .line 1403
    .restart local v21       #p:Landroid/graphics/PointF;
    aget-object v7, v127, v100

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 1404
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    if-nez v100, :cond_1a

    const/4 v8, -0x1

    :goto_1c
    int-to-float v8, v8

    mul-float v8, v8, v85

    add-float/2addr v7, v8

    move v0, v7

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 1405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjcgames/android/airhockey/Game;->touches:[Landroid/graphics/PointF;

    move-object v7, v0

    aget-object v7, v7, v100

    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/jjcgames/android/airhockey/Game;->playfieldToScreenGL(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 1408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjcgames/android/airhockey/Game;->touches:[Landroid/graphics/PointF;

    move-object v7, v0

    aget-object v7, v7, v100

    const/4 v8, 0x1

    sub-int v8, p5, v8

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjcgames/android/airhockey/Game;->touches:[Landroid/graphics/PointF;

    move-object v10, v0

    aget-object v10, v10, v100

    iget v10, v10, Landroid/graphics/PointF;->y:F

    sub-float/2addr v8, v10

    iput v8, v7, Landroid/graphics/PointF;->y:F

    .line 1398
    add-int/lit8 v100, v100, 0x1

    goto/16 :goto_b

    .line 1404
    :cond_1a
    const/4 v8, 0x1

    goto :goto_1c

    .line 1412
    .end local v21           #p:Landroid/graphics/PointF;
    .restart local v129       #playerLast:[Landroid/graphics/PointF;
    :cond_1b
    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7}, Landroid/graphics/PointF;-><init>()V

    aput-object v7, v129, v100

    .line 1413
    aget-object v7, v129, v100

    aget-object v8, v127, v100

    invoke-virtual {v7, v8}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 1411
    add-int/lit8 v100, v100, 0x1

    goto/16 :goto_c

    .line 1421
    .restart local v130       #playerLastLast:[Landroid/graphics/PointF;
    :cond_1c
    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7}, Landroid/graphics/PointF;-><init>()V

    aput-object v7, v130, v100

    .line 1422
    aget-object v7, v130, v100

    aget-object v8, v129, v100

    invoke-virtual {v7, v8}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 1420
    add-int/lit8 v100, v100, 0x1

    goto/16 :goto_d

    .line 1433
    .restart local v20       #puck:Landroid/graphics/PointF;
    .restart local v31       #puckLast:Landroid/graphics/PointF;
    .restart local v132       #playerV:[Landroid/graphics/PointF;
    .restart local v137       #puckLastLast:Landroid/graphics/PointF;
    :cond_1d
    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7}, Landroid/graphics/PointF;-><init>()V

    aput-object v7, v132, v100

    .line 1432
    add-int/lit8 v100, v100, 0x1

    goto/16 :goto_e

    .line 1457
    .restart local v22       #puckV:Landroid/graphics/PointF;
    .restart local v66       #activity:Ljava/lang/String;
    .restart local v133       #pointStartCountdown:F
    .restart local v159       #reactionTimeLeft:F
    .restart local v161       #retarget:Z
    .local v171, state:Ljava/io/BufferedReader;
    .restart local v174       #target:Landroid/graphics/PointF;
    :cond_1e
    const/4 v7, 0x0

    goto/16 :goto_f

    .line 1474
    :cond_1f
    :try_start_3
    invoke-virtual/range {v171 .. v171}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v128

    .line 1475
    invoke-virtual/range {v171 .. v171}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v71

    .line 1476
    const/4 v7, 0x1

    aget-object v7, v127, v7

    invoke-virtual/range {v171 .. v171}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, v7, Landroid/graphics/PointF;->x:F

    .line 1477
    const/4 v7, 0x1

    aget-object v7, v127, v7

    invoke-virtual/range {v171 .. v171}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, v7, Landroid/graphics/PointF;->y:F

    .line 1478
    const/4 v7, 0x1

    aget-object v7, v132, v7

    invoke-virtual/range {v171 .. v171}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, v7, Landroid/graphics/PointF;->x:F

    .line 1479
    const/4 v7, 0x1

    aget-object v7, v132, v7

    invoke-virtual/range {v171 .. v171}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, v7, Landroid/graphics/PointF;->y:F

    .line 1480
    invoke-virtual/range {v171 .. v171}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v161

    .line 1481
    invoke-virtual/range {v171 .. v171}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    move v0, v7

    move-object/from16 v1, v174

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 1482
    invoke-virtual/range {v171 .. v171}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    move v0, v7

    move-object/from16 v1, v174

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 1483
    invoke-virtual/range {v171 .. v171}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v133

    .line 1484
    invoke-virtual/range {v171 .. v171}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v159

    goto/16 :goto_10

    .line 1491
    :cond_20
    aget v7, v19, v100

    const/4 v8, 0x7

    if-ne v7, v8, :cond_24

    .line 1492
    move/from16 v90, v100

    .line 1493
    aget v7, v91, v100

    if-ne v7, v13, :cond_21

    .line 1494
    move/from16 v113, v100

    .line 1496
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjcgames/android/airhockey/Game;->touchPointer:[I

    move-object v7, v0

    .line 1497
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->twoPlayer:Z

    move v8, v0

    if-eqz v8, :cond_22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->multitouch:Z

    move v8, v0

    if-eqz v8, :cond_22

    move/from16 v8, v90

    .line 1496
    :goto_1d
    aget v7, v7, v8

    .line 1497
    const/4 v8, -0x1

    .line 1496
    if-eq v7, v8, :cond_23

    const/4 v7, 0x1

    move/from16 v192, v7

    .line 1498
    :goto_1e
    const/4 v7, 0x0

    aget-object v7, v89, v7

    .line 1499
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->rotate:Z

    move v8, v0

    const/16 v21, 0x0

    .line 1502
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->twoPlayer:Z

    move v14, v0

    .line 1503
    const/4 v10, 0x0

    aget v15, v19, v10

    const/4 v10, 0x1

    aget v16, v19, v10

    const/4 v10, 0x0

    aget v17, v91, v10

    const/4 v10, 0x1

    aget v18, v91, v10

    move-object/from16 v10, p1

    move/from16 v11, p4

    move/from16 v12, p5

    .line 1500
    invoke-static/range {v10 .. v18}, Lcom/jjcgames/android/airhockey/Game;->makeGameEndBitmap(Landroid/content/Context;IIIZIIII)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 1504
    const/4 v11, 0x1

    move v0, v8

    move/from16 v1, v21

    move-object v2, v10

    move v3, v11

    invoke-static {v0, v1, v2, v3}, Lcom/jjcgames/android/airhockey/Game;->prepareScoreBitmap(ZZLandroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1498
    invoke-virtual {v7, v9, v8}, Lcom/jjcgames/android/airhockey/Game$Texture;->loadBitmap(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;)V

    .line 1505
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->twoPlayer:Z

    move v7, v0

    if-eqz v7, :cond_5

    .line 1506
    const/4 v7, 0x1

    aget-object v7, v89, v7

    .line 1507
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->rotate:Z

    move v8, v0

    const/16 v21, 0x1

    .line 1510
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->twoPlayer:Z

    move v14, v0

    .line 1511
    const/4 v10, 0x1

    aget v15, v19, v10

    const/4 v10, 0x0

    aget v16, v19, v10

    const/4 v10, 0x1

    aget v17, v91, v10

    const/4 v10, 0x0

    aget v18, v91, v10

    move-object/from16 v10, p1

    move/from16 v11, p4

    move/from16 v12, p5

    .line 1508
    invoke-static/range {v10 .. v18}, Lcom/jjcgames/android/airhockey/Game;->makeGameEndBitmap(Landroid/content/Context;IIIZIIII)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 1512
    const/4 v11, 0x1

    move v0, v8

    move/from16 v1, v21

    move-object v2, v10

    move v3, v11

    invoke-static {v0, v1, v2, v3}, Lcom/jjcgames/android/airhockey/Game;->prepareScoreBitmap(ZZLandroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1506
    invoke-virtual {v7, v9, v8}, Lcom/jjcgames/android/airhockey/Game$Texture;->loadBitmap(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_5

    goto/16 :goto_12

    .line 1518
    .end local v66           #activity:Ljava/lang/String;
    .end local v171           #state:Ljava/io/BufferedReader;
    :catch_2
    move-exception v7

    goto/16 :goto_12

    .line 1497
    .restart local v66       #activity:Ljava/lang/String;
    .restart local v171       #state:Ljava/io/BufferedReader;
    :cond_22
    const/4 v8, 0x0

    goto :goto_1d

    .line 1496
    :cond_23
    const/4 v7, 0x0

    move/from16 v192, v7

    goto :goto_1e

    .line 1490
    :cond_24
    add-int/lit8 v100, v100, 0x1

    goto/16 :goto_11

    .line 1565
    .end local v66           #activity:Ljava/lang/String;
    .end local v171           #state:Ljava/io/BufferedReader;
    .restart local v21       #p:Landroid/graphics/PointF;
    .restart local v23       #pZero:Landroid/graphics/PointF;
    .restart local v70       #cpuEstimationAccuracyFudge:F
    .restart local v72       #cpuLevelF:F
    .restart local v73       #cpuReactionTime:F
    .restart local v114       #maxCPUMalletAcceleration:F
    .restart local v115       #maxCPUMalletAccelerationSquare:F
    .restart local v116       #maxCPUMalletSpeed:F
    .restart local v117       #maxCPUMalletSpeedSquare:F
    .restart local v149       #puckSpeedLimitSquare:F
    .restart local v162       #scorePosition0x:I
    .restart local v163       #scorePosition0y:I
    .restart local v164       #scorePosition1x:I
    .restart local v165       #scorePosition1y:I
    .restart local v185       #touched:[Z
    .restart local v186       #touchedLastFrame:[Z
    :cond_25
    const/4 v7, 0x0

    aput-boolean v7, v186, v100

    .line 1566
    const/4 v7, 0x0

    aput-boolean v7, v185, v100

    .line 1564
    add-int/lit8 v100, v100, 0x1

    goto/16 :goto_13

    .line 1575
    .restart local v82       #elapsedTime:F
    .restart local v103       #lastT:J
    :cond_26
    move/from16 v102, v82

    .line 1576
    .local v102, lastElapsedTime:F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v183

    .line 1577
    .local v183, time:J
    sub-long v10, v183, v103

    long-to-float v7, v10

    const/high16 v8, 0x447a

    div-float v82, v7, v8

    .line 1578
    const/4 v7, 0x0

    cmpg-float v7, v82, v7

    if-gtz v7, :cond_27

    .line 1580
    move/from16 v82, v102

    .line 1582
    :cond_27
    move-wide/from16 v103, v183

    .line 1585
    const/4 v7, -0x1

    move/from16 v0, v90

    move v1, v7

    if-eq v0, v1, :cond_2b

    .line 1586
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->paused:Z

    move v7, v0

    if-eqz v7, :cond_29

    .line 1588
    monitor-enter p0

    .line 1592
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    .line 1588
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1594
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 1596
    monitor-enter p0

    .line 1597
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjcgames/android/airhockey/Game;->touchPointer:[I

    move-object v7, v0

    .line 1598
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->twoPlayer:Z

    move v8, v0

    if-eqz v8, :cond_3a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->multitouch:Z

    move v8, v0

    if-eqz v8, :cond_3a

    move/from16 v8, v90

    .line 1597
    :goto_1f
    aget v7, v7, v8

    .line 1598
    const/4 v8, -0x1

    .line 1597
    if-eq v7, v8, :cond_3b

    .line 1600
    if-nez v192, :cond_28

    .line 1601
    const/16 v160, 0x1

    .line 1596
    :cond_28
    :goto_20
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1612
    :cond_29
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->paused:Z

    move v7, v0

    if-nez v7, :cond_2b

    .line 1614
    const/4 v7, -0x1

    move/from16 v0, v113

    move v1, v7

    if-eq v0, v1, :cond_3d

    .line 1615
    invoke-virtual/range {p0 .. p0}, Lcom/jjcgames/android/airhockey/Game;->setQuitting()V

    .line 1616
    new-instance v101, Landroid/content/Intent;

    invoke-direct/range {v101 .. v101}, Landroid/content/Intent;-><init>()V

    .line 1617
    .local v101, in:Landroid/content/Intent;
    const-string v7, "games0"

    const/4 v8, 0x0

    aget v8, v91, v8

    move-object/from16 v0, v101

    move-object v1, v7

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1618
    const-string v7, "games1"

    const/4 v8, 0x1

    aget v8, v91, v8

    move-object/from16 v0, v101

    move-object v1, v7

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1619
    const-string v7, "goals0"

    const/4 v8, 0x0

    aget v8, v112, v8

    move-object/from16 v0, v101

    move-object v1, v7

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1620
    const-string v7, "goals1"

    const/4 v8, 0x1

    aget v8, v112, v8

    move-object/from16 v0, v101

    move-object v1, v7

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1621
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->twoPlayer:Z

    move v7, v0

    if-nez v7, :cond_2a

    const/4 v7, -0x2

    move/from16 v0, v128

    move v1, v7

    if-eq v0, v1, :cond_2a

    .line 1622
    const-string v7, "player_id"

    move-object/from16 v0, v101

    move-object v1, v7

    move/from16 v2, v128

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1623
    const-string v7, "cpu_level"

    move-object/from16 v0, v101

    move-object v1, v7

    move/from16 v2, v71

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1625
    const-class v7, Lcom/jjcgames/android/airhockey/PostMatchActivity;

    .line 1624
    move-object/from16 v0, v101

    move-object/from16 v1, p1

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1627
    :cond_2a
    move-object/from16 v0, p2

    move-object/from16 v1, v101

    invoke-virtual {v0, v1}, Lcom/jjcgames/android/airhockey/GameActivity$Finisher;->finish(Landroid/content/Intent;)V

    .line 1630
    const/4 v7, 0x1

    move v0, v7

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jjcgames/android/airhockey/Game;->paused:Z

    .line 1641
    .end local v101           #in:Landroid/content/Intent;
    :goto_21
    const/16 v160, 0x0

    .line 1647
    :cond_2b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->paused:Z

    move v7, v0

    if-nez v7, :cond_34

    .line 1649
    monitor-enter p0

    .line 1650
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    .line 1649
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1652
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 1654
    monitor-enter p0

    .line 1655
    :try_start_7
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_3f

    const/4 v7, 0x1

    move/from16 v123, v7

    .line 1657
    .local v123, nonMultiTouchControlPlayer:I
    :goto_22
    const/16 v100, 0x0

    :goto_23
    move-object/from16 v0, v127

    array-length v0, v0

    move v7, v0

    move/from16 v0, v100

    move v1, v7

    if-lt v0, v1, :cond_40

    .line 1654
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1703
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->twoPlayer:Z

    move v7, v0

    if-nez v7, :cond_2f

    .line 1705
    move-object/from16 v0, v174

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move v7, v0

    const/4 v8, 0x1

    aget-object v8, v127, v8

    iget v8, v8, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v8

    div-float v181, v7, v82

    .line 1707
    .local v181, targetVX:F
    move-object/from16 v0, v174

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    const/4 v8, 0x1

    aget-object v8, v127, v8

    iget v8, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v8

    div-float v182, v7, v82

    .line 1709
    .local v182, targetVY:F
    mul-float v7, v181, v181

    mul-float v8, v182, v182

    add-float v180, v7, v8

    .line 1711
    .local v180, targetVSizeSquare:F
    cmpl-float v7, v180, v117

    if-lez v7, :cond_2c

    .line 1714
    move/from16 v0, v180

    float-to-double v0, v0

    move-wide v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    move-wide v0, v10

    double-to-float v0, v0

    move/from16 v179, v0

    .line 1715
    .local v179, targetVSize:F
    div-float v7, v181, v179

    mul-float v181, v7, v116

    .line 1717
    div-float v7, v182, v179

    mul-float v182, v7, v116

    .line 1722
    .end local v179           #targetVSize:F
    :cond_2c
    const/4 v7, 0x1

    aget-object v7, v132, v7

    iget v7, v7, Landroid/graphics/PointF;->x:F

    const/4 v8, 0x1

    aget-object v8, v132, v8

    iget v8, v8, Landroid/graphics/PointF;->x:F

    mul-float/2addr v7, v8

    .line 1723
    const/4 v8, 0x1

    aget-object v8, v132, v8

    iget v8, v8, Landroid/graphics/PointF;->y:F

    const/4 v10, 0x1

    aget-object v10, v132, v10

    iget v10, v10, Landroid/graphics/PointF;->y:F

    mul-float/2addr v8, v10

    .line 1722
    add-float v74, v7, v8

    .line 1725
    .local v74, cpuVSizeSquare:F
    cmpg-float v7, v180, v74

    if-gez v7, :cond_4a

    .line 1727
    const/4 v7, 0x1

    aget-object v7, v132, v7

    move/from16 v0, v181

    move-object v1, v7

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 1728
    const/4 v7, 0x1

    aget-object v7, v132, v7

    move/from16 v0, v182

    move-object v1, v7

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 1754
    :goto_24
    const/4 v7, 0x1

    aget-object v7, v127, v7

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 1755
    const v7, 0x3e0a00c3

    move-object/from16 v0, v21

    move v1, v7

    invoke-static {v0, v1}, Lcom/jjcgames/android/airhockey/Game;->clampToPlayfieldBorder(Landroid/graphics/PointF;F)Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 1756
    const/4 v7, 0x1

    aget-object v7, v127, v7

    iget v7, v7, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move v8, v0

    sub-float v125, v7, v8

    .line 1757
    .local v125, overX:F
    const/4 v7, 0x0

    cmpl-float v7, v125, v7

    if-eqz v7, :cond_2d

    .line 1758
    const/4 v7, 0x1

    aget-object v7, v132, v7

    move/from16 v0, v125

    neg-float v0, v0

    move v8, v0

    div-float v8, v8, v82

    iput v8, v7, Landroid/graphics/PointF;->x:F

    .line 1760
    :cond_2d
    const/4 v7, 0x1

    aget-object v7, v127, v7

    iget v7, v7, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v8, v0

    sub-float v126, v7, v8

    .line 1761
    .local v126, overY:F
    const/4 v7, 0x0

    cmpl-float v7, v126, v7

    if-eqz v7, :cond_2e

    .line 1762
    const/4 v7, 0x1

    aget-object v7, v132, v7

    move/from16 v0, v126

    neg-float v0, v0

    move v8, v0

    div-float v8, v8, v82

    iput v8, v7, Landroid/graphics/PointF;->y:F

    .line 1765
    :cond_2e
    const/4 v7, 0x1

    aget-object v7, v132, v7

    iget v7, v7, Landroid/graphics/PointF;->x:F

    const/4 v8, 0x1

    aget-object v8, v132, v8

    iget v8, v8, Landroid/graphics/PointF;->x:F

    mul-float/2addr v7, v8

    .line 1766
    const/4 v8, 0x1

    aget-object v8, v132, v8

    iget v8, v8, Landroid/graphics/PointF;->y:F

    const/4 v10, 0x1

    aget-object v10, v132, v10

    iget v10, v10, Landroid/graphics/PointF;->y:F

    mul-float/2addr v8, v10

    .line 1765
    add-float v75, v7, v8

    .line 1767
    .local v75, cpuVSizeSquare1:F
    cmpl-float v7, v75, v117

    if-lez v7, :cond_2f

    .line 1770
    move/from16 v0, v75

    float-to-double v0, v0

    move-wide v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v7, v10

    .line 1769
    div-float v87, v116, v7

    .line 1771
    .local v87, fixScaler:F
    const/4 v7, 0x1

    aget-object v7, v132, v7

    iget v8, v7, Landroid/graphics/PointF;->x:F

    mul-float v8, v8, v87

    iput v8, v7, Landroid/graphics/PointF;->x:F

    .line 1772
    const/4 v7, 0x1

    aget-object v7, v132, v7

    iget v8, v7, Landroid/graphics/PointF;->y:F

    mul-float v8, v8, v87

    iput v8, v7, Landroid/graphics/PointF;->y:F

    .line 1779
    .end local v74           #cpuVSizeSquare:F
    .end local v75           #cpuVSizeSquare1:F
    .end local v87           #fixScaler:F
    .end local v125           #overX:F
    .end local v126           #overY:F
    .end local v180           #targetVSizeSquare:F
    .end local v181           #targetVX:F
    .end local v182           #targetVY:F
    :cond_2f
    const/16 v140, 0x0

    .line 1780
    .local v140, puckMalletPlayed:Z
    const/16 v145, 0x0

    .line 1785
    .local v145, puckRailPlayed:Z
    const/16 v59, 0x0

    .line 1786
    .local v59, COLLISION_NONE:I
    const/16 v50, 0x1

    .line 1787
    .local v50, COLLISION_LEFTRIGHT:I
    const/16 v60, 0x2

    .line 1788
    .local v60, COLLISION_TOPBOTTOM:I
    const/16 v48, 0x3

    .line 1789
    .local v48, COLLISION_GOALCORNER:I
    const/16 v49, 0x4

    .line 1790
    .local v49, COLLISION_GOALSIDE:I
    const/16 v47, 0x5

    .line 1794
    .local v47, COLLISION_GOALBACK:I
    const/16 v55, 0x6

    .line 1796
    .local v55, COLLISION_MALLETPUCK0:I
    const/16 v56, 0x7

    .line 1797
    .local v56, COLLISION_MALLETPUCK1:I
    const/16 v53, 0x8

    .line 1799
    .local v53, COLLISION_MALLETLEFTRIGHT0:I
    const/16 v54, 0x9

    .line 1800
    .local v54, COLLISION_MALLETLEFTRIGHT1:I
    const/16 v57, 0xa

    .line 1802
    .local v57, COLLISION_MALLETTOPBOTTOM0:I
    const/16 v58, 0xb

    .line 1803
    .local v58, COLLISION_MALLETTOPBOTTOM1:I
    const/16 v51, 0xc

    .line 1805
    .local v51, COLLISION_MALLETCENTERLINE0:I
    const/16 v52, 0xd

    .line 1807
    .local v52, COLLISION_MALLETCENTERLINE1:I
    move/from16 v30, v82

    .line 1808
    .local v30, remainingTime:F
    :cond_30
    :goto_25
    const/4 v7, 0x0

    cmpl-float v7, v30, v7

    if-gtz v7, :cond_4c

    .line 2196
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->twoPlayer:Z

    move v7, v0

    if-nez v7, :cond_32

    .line 2197
    const/4 v7, 0x0

    cmpl-float v7, v133, v7

    if-lez v7, :cond_31

    .line 2198
    sub-float v133, v133, v82

    .line 2200
    :cond_31
    const/4 v7, 0x0

    cmpl-float v7, v159, v7

    if-lez v7, :cond_32

    .line 2201
    sub-float v159, v159, v82

    .line 2205
    :cond_32
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->twoPlayer:Z

    move v7, v0

    if-nez v7, :cond_34

    if-eqz v161, :cond_34

    .line 2206
    const/4 v7, 0x0

    cmpg-float v7, v133, v7

    if-gtz v7, :cond_34

    const/4 v7, 0x0

    cmpg-float v7, v159, v7

    if-gtz v7, :cond_34

    .line 2208
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    const/4 v8, 0x1

    aget-object v8, v127, v8

    iget v8, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v8

    const v8, -0x427a4338

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_84

    .line 2211
    const/4 v7, 0x1

    aget-object v7, v127, v7

    iget v7, v7, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move v8, v0

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_83

    const/4 v7, 0x1

    move/from16 v77, v7

    .line 2213
    .local v77, direction:I
    :goto_26
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move v7, v0

    move/from16 v0, v77

    int-to-float v0, v0

    move v8, v0

    .line 2214
    const v10, 0x3e4cdf27

    mul-float/2addr v8, v10

    const/high16 v10, 0x3fc0

    mul-float/2addr v8, v10

    .line 2213
    add-float/2addr v7, v8

    .line 2215
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v8, v0

    const v10, 0x3eccdf27

    add-float/2addr v8, v10

    .line 2212
    move-object/from16 v0, v174

    move v1, v7

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 2261
    .end local v77           #direction:I
    :goto_27
    if-nez v161, :cond_33

    .line 2262
    move-object/from16 v0, v174

    move/from16 v1, v70

    invoke-static {v0, v1}, Lcom/jjcgames/android/airhockey/Game;->fudge(Landroid/graphics/PointF;F)V

    .line 2264
    :cond_33
    const v7, 0x3e0a00c3

    move-object/from16 v0, v174

    move v1, v7

    invoke-static {v0, v1}, Lcom/jjcgames/android/airhockey/Game;->clampToPlayfieldBorder(Landroid/graphics/PointF;F)Z

    .line 2274
    .end local v30           #remainingTime:F
    .end local v47           #COLLISION_GOALBACK:I
    .end local v48           #COLLISION_GOALCORNER:I
    .end local v49           #COLLISION_GOALSIDE:I
    .end local v50           #COLLISION_LEFTRIGHT:I
    .end local v51           #COLLISION_MALLETCENTERLINE0:I
    .end local v52           #COLLISION_MALLETCENTERLINE1:I
    .end local v53           #COLLISION_MALLETLEFTRIGHT0:I
    .end local v54           #COLLISION_MALLETLEFTRIGHT1:I
    .end local v55           #COLLISION_MALLETPUCK0:I
    .end local v56           #COLLISION_MALLETPUCK1:I
    .end local v57           #COLLISION_MALLETTOPBOTTOM0:I
    .end local v58           #COLLISION_MALLETTOPBOTTOM1:I
    .end local v59           #COLLISION_NONE:I
    .end local v60           #COLLISION_TOPBOTTOM:I
    .end local v123           #nonMultiTouchControlPlayer:I
    .end local v140           #puckMalletPlayed:Z
    .end local v145           #puckRailPlayed:Z
    :cond_34
    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v24, v9

    move/from16 v25, p4

    move/from16 v26, p5

    move-object/from16 v27, v42

    invoke-static/range {v24 .. v29}, Lcom/jjcgames/android/airhockey/Game;->drawTexture(Ljavax/microedition/khronos/opengles/GL10;IILcom/jjcgames/android/airhockey/Game$Texture;II)V

    .line 2286
    const/16 v7, 0xbe2

    invoke-interface {v9, v7}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 2287
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/jjcgames/android/airhockey/Game;->playfieldToScreenGL(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 2288
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move v7, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v8, v0

    move-object v0, v9

    move-object/from16 v1, v151

    move v2, v7

    move v3, v8

    invoke-static {v0, v1, v2, v3}, Lcom/jjcgames/android/airhockey/Game;->drawQuad(Ljavax/microedition/khronos/opengles/GL10;Lcom/jjcgames/android/airhockey/Game$Texture;FF)V

    .line 2289
    const/16 v100, 0x0

    :goto_28
    move-object/from16 v0, v127

    array-length v0, v0

    move v7, v0

    move/from16 v0, v100

    move v1, v7

    if-lt v0, v1, :cond_89

    .line 2296
    const/16 v7, 0xbe2

    invoke-interface {v9, v7}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 2301
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    const v8, 0x3f6f4867

    cmpl-float v7, v7, v8

    if-lez v7, :cond_8b

    .line 2303
    const/16 v43, 0x0

    move/from16 v0, p5

    int-to-float v0, v0

    move v7, v0

    .line 2304
    move/from16 v0, p5

    int-to-float v0, v0

    move v8, v0

    const/high16 v10, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jjcgames/android/airhockey/Game;->screenPlayfieldProportion:F

    move v11, v0

    sub-float/2addr v10, v11

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

    .line 2302
    invoke-static/range {v39 .. v46}, Lcom/jjcgames/android/airhockey/Game;->drawSubTexture(Ljavax/microedition/khronos/opengles/GL10;IILcom/jjcgames/android/airhockey/Game$Texture;IIII)V

    .line 2313
    :cond_35
    :goto_29
    const/4 v7, 0x0

    aget-object v27, v166, v7

    move-object/from16 v24, v9

    move/from16 v25, p4

    move/from16 v26, p5

    move/from16 v28, v162

    move/from16 v29, v163

    invoke-static/range {v24 .. v29}, Lcom/jjcgames/android/airhockey/Game;->drawTexture(Ljavax/microedition/khronos/opengles/GL10;IILcom/jjcgames/android/airhockey/Game$Texture;II)V

    .line 2315
    const/4 v7, 0x1

    aget-object v27, v166, v7

    move-object/from16 v24, v9

    move/from16 v25, p4

    move/from16 v26, p5

    move/from16 v28, v164

    move/from16 v29, v165

    invoke-static/range {v24 .. v29}, Lcom/jjcgames/android/airhockey/Game;->drawTexture(Ljavax/microedition/khronos/opengles/GL10;IILcom/jjcgames/android/airhockey/Game$Texture;II)V

    .line 2318
    const/4 v7, -0x1

    move/from16 v0, v90

    move v1, v7

    if-ne v0, v1, :cond_36

    const/4 v7, -0x1

    move/from16 v0, v113

    move v1, v7

    if-eq v0, v1, :cond_38

    .line 2319
    :cond_36
    const/16 v7, 0xbe2

    invoke-interface {v9, v7}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 2322
    const/4 v7, 0x0

    aget-object v27, v89, v7

    .line 2323
    div-int/lit8 v7, p4, 0x2

    const/4 v8, 0x0

    aget-object v8, v89, v8

    iget v8, v8, Lcom/jjcgames/android/airhockey/Game$Texture;->width:I

    div-int/lit8 v8, v8, 0x2

    sub-int v28, v7, v8

    .line 2325
    move/from16 v0, p5

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jjcgames/android/airhockey/Game;->screenPlayfieldProportion:F

    move v8, v0

    mul-float/2addr v7, v8

    const/high16 v8, 0x4080

    div-float/2addr v7, v8

    .line 2326
    move/from16 v0, p5

    int-to-float v0, v0

    move v8, v0

    const/high16 v10, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jjcgames/android/airhockey/Game;->screenPlayfieldProportion:F

    move v11, v0

    sub-float/2addr v10, v11

    mul-float/2addr v8, v10

    const/high16 v10, 0x4000

    div-float/2addr v8, v10

    .line 2325
    add-float/2addr v7, v8

    .line 2327
    const/4 v8, 0x0

    aget-object v8, v89, v8

    iget v8, v8, Lcom/jjcgames/android/airhockey/Game$Texture;->height:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    .line 2324
    sub-float/2addr v7, v8

    move v0, v7

    float-to-int v0, v0

    move/from16 v29, v0

    move-object/from16 v24, v9

    move/from16 v25, p4

    move/from16 v26, p5

    .line 2321
    invoke-static/range {v24 .. v29}, Lcom/jjcgames/android/airhockey/Game;->drawTexture(Ljavax/microedition/khronos/opengles/GL10;IILcom/jjcgames/android/airhockey/Game$Texture;II)V

    .line 2328
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->twoPlayer:Z

    move v7, v0

    if-eqz v7, :cond_37

    .line 2330
    const/4 v7, 0x1

    aget-object v27, v89, v7

    .line 2331
    div-int/lit8 v7, p4, 0x2

    const/4 v8, 0x1

    aget-object v8, v89, v8

    iget v8, v8, Lcom/jjcgames/android/airhockey/Game$Texture;->width:I

    div-int/lit8 v8, v8, 0x2

    sub-int v28, v7, v8

    .line 2333
    move/from16 v0, p5

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jjcgames/android/airhockey/Game;->screenPlayfieldProportion:F

    move v8, v0

    mul-float/2addr v7, v8

    const/high16 v8, 0x4040

    mul-float/2addr v7, v8

    const/high16 v8, 0x4080

    div-float/2addr v7, v8

    .line 2334
    move/from16 v0, p5

    int-to-float v0, v0

    move v8, v0

    const/high16 v10, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jjcgames/android/airhockey/Game;->screenPlayfieldProportion:F

    move v11, v0

    sub-float/2addr v10, v11

    mul-float/2addr v8, v10

    const/high16 v10, 0x4000

    div-float/2addr v8, v10

    .line 2333
    add-float/2addr v7, v8

    .line 2335
    const/4 v8, 0x1

    aget-object v8, v89, v8

    iget v8, v8, Lcom/jjcgames/android/airhockey/Game$Texture;->height:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    .line 2332
    sub-float/2addr v7, v8

    move v0, v7

    float-to-int v0, v0

    move/from16 v29, v0

    move-object/from16 v24, v9

    move/from16 v25, p4

    move/from16 v26, p5

    .line 2329
    invoke-static/range {v24 .. v29}, Lcom/jjcgames/android/airhockey/Game;->drawTexture(Ljavax/microedition/khronos/opengles/GL10;IILcom/jjcgames/android/airhockey/Game$Texture;II)V

    .line 2337
    :cond_37
    const/16 v7, 0xbe2

    invoke-interface {v9, v7}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 2349
    :cond_38
    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v172

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v7

    if-nez v7, :cond_39

    .line 2350
    invoke-interface {v5}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v7

    const/16 v8, 0x300e

    if-ne v7, v8, :cond_39

    .line 2351
    const/4 v7, 0x1

    move v0, v7

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jjcgames/android/airhockey/Game;->threadFinishing:Z

    .line 2355
    :cond_39
    const/16 v100, 0x0

    :goto_2a
    move-object/from16 v0, v127

    array-length v0, v0

    move v7, v0

    move/from16 v0, v100

    move v1, v7

    if-lt v0, v1, :cond_8c

    .line 2364
    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 2365
    add-int/lit8 v88, v88, 0x1

    goto/16 :goto_14

    .line 1588
    :catchall_0
    move-exception v7

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v7

    .line 1598
    :cond_3a
    const/4 v8, 0x0

    goto/16 :goto_1f

    .line 1604
    :cond_3b
    if-eqz v160, :cond_3c

    .line 1605
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lcom/jjcgames/android/airhockey/Game;->resume()V

    goto/16 :goto_20

    .line 1596
    :catchall_1
    move-exception v7

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v7

    .line 1606
    :cond_3c
    if-eqz v192, :cond_28

    .line 1607
    const/16 v192, 0x0

    goto/16 :goto_20

    .line 1632
    :cond_3d
    const/16 v100, 0x0

    :goto_2b
    move-object/from16 v0, v19

    array-length v0, v0

    move v7, v0

    move/from16 v0, v100

    move v1, v7

    if-lt v0, v1, :cond_3e

    .line 1636
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->rotate:Z

    move v15, v0

    move-object v14, v9

    move/from16 v16, p4

    move/from16 v17, p5

    move-object/from16 v18, v166

    .line 1635
    invoke-static/range {v14 .. v19}, Lcom/jjcgames/android/airhockey/Game;->setupScoreTextures(Ljavax/microedition/khronos/opengles/GL10;ZII[Lcom/jjcgames/android/airhockey/Game$Texture;[I)V

    .line 1638
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1639
    const/16 v90, -0x1

    goto/16 :goto_21

    .line 1633
    :cond_3e
    const/4 v7, 0x0

    aput v7, v19, v100

    .line 1632
    add-int/lit8 v100, v100, 0x1

    goto :goto_2b

    .line 1649
    :catchall_2
    move-exception v7

    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v7

    .line 1655
    :cond_3f
    const/4 v7, 0x0

    move/from16 v123, v7

    goto/16 :goto_22

    .line 1658
    .restart local v123       #nonMultiTouchControlPlayer:I
    :cond_40
    :try_start_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->twoPlayer:Z

    move v7, v0

    if-eqz v7, :cond_43

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->multitouch:Z

    move v7, v0

    if-nez v7, :cond_43

    .line 1659
    move/from16 v0, v100

    move/from16 v1, v123

    if-eq v0, v1, :cond_43

    .line 1661
    const/4 v7, 0x0

    aput-boolean v7, v185, v100

    .line 1665
    :goto_2c
    aget-boolean v7, v185, v100

    if-nez v7, :cond_45

    .line 1666
    const/4 v7, 0x0

    aput-boolean v7, v186, v100

    .line 1667
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->twoPlayer:Z

    move v7, v0

    if-nez v7, :cond_41

    const/4 v7, 0x1

    move/from16 v0, v100

    move v1, v7

    if-eq v0, v1, :cond_42

    .line 1668
    :cond_41
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->twoPlayer:Z

    move v7, v0

    if-eqz v7, :cond_45

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->multitouch:Z

    move v7, v0

    if-nez v7, :cond_45

    .line 1657
    :cond_42
    :goto_2d
    add-int/lit8 v100, v100, 0x1

    goto/16 :goto_23

    .line 1663
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjcgames/android/airhockey/Game;->touchPointer:[I

    move-object v7, v0

    aget v7, v7, v100

    const/4 v8, -0x1

    if-eq v7, v8, :cond_44

    const/4 v7, 0x1

    :goto_2e
    aput-boolean v7, v185, v100

    goto :goto_2c

    .line 1654
    .end local v123           #nonMultiTouchControlPlayer:I
    :catchall_3
    move-exception v7

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v7

    .line 1663
    .restart local v123       #nonMultiTouchControlPlayer:I
    :cond_44
    const/4 v7, 0x0

    goto :goto_2e

    .line 1673
    :cond_45
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjcgames/android/airhockey/Game;->touches:[Landroid/graphics/PointF;

    move-object v7, v0

    aget-object v7, v7, v100

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/jjcgames/android/airhockey/Game;->screenToPlayfield(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 1674
    if-nez v100, :cond_47

    .line 1675
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    add-float v7, v7, v85

    move v0, v7

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 1679
    :goto_2f
    const v7, 0x3e0a00c3

    move-object/from16 v0, v21

    move v1, v7

    invoke-static {v0, v1}, Lcom/jjcgames/android/airhockey/Game;->clampToPlayfieldBorder(Landroid/graphics/PointF;F)Z

    .line 1680
    if-nez v100, :cond_48

    .line 1681
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    const v8, -0x41f5ff3d

    cmpl-float v7, v7, v8

    if-lez v7, :cond_46

    .line 1682
    const v7, -0x41f5ff3d

    move v0, v7

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 1689
    :cond_46
    :goto_30
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->twoPlayer:Z

    move v7, v0

    if-eqz v7, :cond_49

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->multitouch:Z

    move v7, v0

    if-nez v7, :cond_49

    .line 1690
    aget-boolean v7, v185, v100

    if-eqz v7, :cond_49

    aget-boolean v7, v186, v100

    if-nez v7, :cond_49

    .line 1692
    aget-object v7, v127, v100

    move-object v0, v7

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 1693
    aget-object v7, v132, v100

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v10}, Landroid/graphics/PointF;->set(FF)V

    .line 1694
    const/4 v7, 0x1

    aput-boolean v7, v186, v100

    goto :goto_2d

    .line 1677
    :cond_47
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    sub-float v7, v7, v85

    move v0, v7

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/PointF;->y:F

    goto :goto_2f

    .line 1685
    :cond_48
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    const v8, 0x3e0a00c3

    cmpg-float v7, v7, v8

    if-gez v7, :cond_46

    .line 1686
    const v7, 0x3e0a00c3

    move v0, v7

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/PointF;->y:F

    goto :goto_30

    .line 1696
    :cond_49
    aget-object v7, v132, v100

    .line 1697
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move v8, v0

    aget-object v10, v127, v100

    iget v10, v10, Landroid/graphics/PointF;->x:F

    sub-float/2addr v8, v10

    div-float v8, v8, v82

    .line 1698
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v10, v0

    aget-object v11, v127, v100

    iget v11, v11, Landroid/graphics/PointF;->y:F

    sub-float/2addr v10, v11

    div-float v10, v10, v82

    .line 1696
    invoke-virtual {v7, v8, v10}, Landroid/graphics/PointF;->set(FF)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto/16 :goto_2d

    .line 1732
    .restart local v74       #cpuVSizeSquare:F
    .restart local v180       #targetVSizeSquare:F
    .restart local v181       #targetVX:F
    .restart local v182       #targetVY:F
    :cond_4a
    const/4 v7, 0x1

    aget-object v7, v132, v7

    iget v7, v7, Landroid/graphics/PointF;->x:F

    sub-float v7, v181, v7

    div-float v177, v7, v82

    .line 1734
    .local v177, targetAX:F
    const/4 v7, 0x1

    aget-object v7, v132, v7

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float v7, v182, v7

    div-float v178, v7, v82

    .line 1736
    .local v178, targetAY:F
    mul-float v7, v177, v177

    mul-float v8, v178, v178

    add-float v176, v7, v8

    .line 1738
    .local v176, targetASizeSquare:F
    cmpl-float v7, v176, v115

    if-lez v7, :cond_4b

    .line 1741
    move/from16 v0, v176

    float-to-double v0, v0

    move-wide v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    move-wide v0, v10

    double-to-float v0, v0

    move/from16 v175, v0

    .line 1742
    .local v175, targetASize:F
    div-float v7, v177, v175

    mul-float v177, v7, v114

    .line 1744
    div-float v7, v178, v175

    mul-float v178, v7, v114

    .line 1748
    .end local v175           #targetASize:F
    :cond_4b
    const/4 v7, 0x1

    aget-object v7, v132, v7

    iget v8, v7, Landroid/graphics/PointF;->x:F

    mul-float v10, v177, v82

    add-float/2addr v8, v10

    iput v8, v7, Landroid/graphics/PointF;->x:F

    .line 1749
    const/4 v7, 0x1

    aget-object v7, v132, v7

    iget v8, v7, Landroid/graphics/PointF;->y:F

    mul-float v10, v178, v82

    add-float/2addr v8, v10

    iput v8, v7, Landroid/graphics/PointF;->y:F

    goto/16 :goto_24

    .line 1809
    .end local v74           #cpuVSizeSquare:F
    .end local v176           #targetASizeSquare:F
    .end local v177           #targetAX:F
    .end local v178           #targetAY:F
    .end local v180           #targetVSizeSquare:F
    .end local v181           #targetVX:F
    .end local v182           #targetVY:F
    .restart local v30       #remainingTime:F
    .restart local v47       #COLLISION_GOALBACK:I
    .restart local v48       #COLLISION_GOALCORNER:I
    .restart local v49       #COLLISION_GOALSIDE:I
    .restart local v50       #COLLISION_LEFTRIGHT:I
    .restart local v51       #COLLISION_MALLETCENTERLINE0:I
    .restart local v52       #COLLISION_MALLETCENTERLINE1:I
    .restart local v53       #COLLISION_MALLETLEFTRIGHT0:I
    .restart local v54       #COLLISION_MALLETLEFTRIGHT1:I
    .restart local v55       #COLLISION_MALLETPUCK0:I
    .restart local v56       #COLLISION_MALLETPUCK1:I
    .restart local v57       #COLLISION_MALLETTOPBOTTOM0:I
    .restart local v58       #COLLISION_MALLETTOPBOTTOM1:I
    .restart local v59       #COLLISION_NONE:I
    .restart local v60       #COLLISION_TOPBOTTOM:I
    .restart local v140       #puckMalletPlayed:Z
    .restart local v145       #puckRailPlayed:Z
    :cond_4c
    move/from16 v38, v30

    .line 1810
    .local v38, firstT:F
    const/16 v86, 0x0

    .line 1813
    .local v86, firstCollision:I
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move v7, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move v8, v0

    mul-float v8, v8, v30

    add-float v134, v7, v8

    .line 1814
    .local v134, puckDestX:F
    invoke-static/range {v134 .. v134}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x3f2a0a15

    sub-float v142, v7, v8

    .line 1815
    .local v142, puckOverShoot:F
    const/4 v7, 0x0

    cmpl-float v7, v142, v7

    if-lez v7, :cond_4d

    .line 1816
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move v7, v0

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    div-float v7, v142, v7

    sub-float v173, v30, v7

    .line 1817
    .local v173, t:F
    const/4 v7, 0x0

    cmpl-float v7, v173, v7

    if-lez v7, :cond_4d

    cmpg-float v7, v173, v38

    if-gez v7, :cond_4d

    .line 1818
    move/from16 v38, v173

    .line 1819
    const/16 v86, 0x1

    .line 1824
    .end local v173           #t:F
    :cond_4d
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_4e

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v8, v0

    invoke-static {v7, v8}, Lcom/jjcgames/android/airhockey/Game;->sameSign(FF)Z

    move-result v7

    if-nez v7, :cond_57

    .line 1825
    :cond_4e
    const/16 v136, 0x0

    .line 1851
    .local v136, puckHeadingIntoGoal:Z
    :goto_31
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v8, v0

    mul-float v8, v8, v30

    add-float v135, v7, v8

    .line 1852
    .local v135, puckDestY:F
    invoke-static/range {v135 .. v135}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x3f6f4867

    sub-float v142, v7, v8

    .line 1854
    const v7, 0x3e272bfa

    cmpl-float v7, v142, v7

    if-lez v7, :cond_4f

    .line 1855
    const v7, 0x3f8c89b3

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v8, v0

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    sub-float/2addr v7, v8

    .line 1856
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v8, v0

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 1855
    div-float v173, v7, v8

    .line 1857
    .restart local v173       #t:F
    const/4 v7, 0x0

    cmpl-float v7, v173, v7

    if-lez v7, :cond_4f

    cmpg-float v7, v173, v38

    if-gez v7, :cond_4f

    .line 1858
    move/from16 v38, v173

    .line 1859
    const/16 v86, 0x5

    .line 1862
    .end local v173           #t:F
    :cond_4f
    const/4 v7, 0x0

    cmpl-float v7, v142, v7

    if-lez v7, :cond_50

    .line 1863
    if-eqz v136, :cond_5d

    .line 1864
    const v7, 0x3d85bcc8

    cmpl-float v7, v142, v7

    if-ltz v7, :cond_50

    .line 1866
    invoke-static/range {v134 .. v134}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x3ebc5b2c

    sub-float v143, v7, v8

    .line 1867
    .local v143, puckOverShootInside:F
    const/4 v7, 0x0

    cmpl-float v7, v143, v7

    if-lez v7, :cond_50

    .line 1869
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move v7, v0

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    div-float v7, v143, v7

    .line 1868
    sub-float v173, v30, v7

    .line 1870
    .restart local v173       #t:F
    const/4 v7, 0x0

    cmpl-float v7, v173, v7

    if-lez v7, :cond_50

    cmpg-float v7, v173, v38

    if-gez v7, :cond_50

    .line 1871
    move/from16 v38, v173

    .line 1872
    const/16 v86, 0x4

    .line 1914
    .end local v143           #puckOverShootInside:F
    .end local v173           #t:F
    :cond_50
    :goto_32
    const/16 v100, 0x0

    :goto_33
    move-object/from16 v0, v127

    array-length v0, v0

    move v7, v0

    move/from16 v0, v100

    move v1, v7

    if-lt v0, v1, :cond_62

    .line 1972
    if-nez v86, :cond_69

    .line 1973
    const/high16 v124, 0x3f80

    .line 1978
    .local v124, notQuite:F
    :goto_34
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move v7, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move v8, v0

    mul-float v8, v8, v38

    mul-float v8, v8, v124

    add-float/2addr v7, v8

    move v0, v7

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 1979
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    mul-float v7, v7, v38

    mul-float v152, v7, v124

    .line 1980
    .local v152, puckYChange:F
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    add-float v7, v7, v152

    move v0, v7

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 1981
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->twoPlayer:Z

    move v7, v0

    if-nez v7, :cond_51

    .line 1982
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    const v8, 0x3d85bcc8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static/range {v152 .. v152}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_51

    .line 1987
    const/16 v161, 0x1

    .line 1988
    move/from16 v159, v73

    .line 1991
    :cond_51
    const/16 v100, 0x0

    :goto_35
    move-object/from16 v0, v127

    array-length v0, v0

    move v7, v0

    move/from16 v0, v100

    move v1, v7

    if-lt v0, v1, :cond_6a

    .line 2000
    const/16 v139, 0x0

    .line 2001
    .local v139, puckMalletCollision:Z
    const/4 v7, 0x6

    move/from16 v0, v86

    move v1, v7

    if-eq v0, v1, :cond_52

    .line 2002
    const/4 v7, 0x7

    move/from16 v0, v86

    move v1, v7

    if-ne v0, v1, :cond_6c

    .line 2004
    :cond_52
    const/4 v7, 0x6

    sub-int v100, v86, v7

    .line 2005
    aget-object v32, v129, v100

    .line 2006
    aget-object v34, v132, v100

    .line 2007
    const v35, 0x3d03126f

    const v36, 0x3d9fbe77

    const v37, 0x3f59999a

    move-object/from16 v33, v22

    .line 2005
    invoke-static/range {v31 .. v38}, Lcom/jjcgames/android/airhockey/Game;->collide(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;FFFF)V

    .line 2008
    if-eqz v168, :cond_53

    if-nez v140, :cond_53

    .line 2010
    aget-object v7, v132, v100

    move-object/from16 v0, v22

    move-object v1, v7

    invoke-static {v0, v1}, Lcom/jjcgames/android/airhockey/Game;->collisionVolume(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v7

    .line 2009
    move-object/from16 v0, v169

    move-object/from16 v1, v141

    move v2, v7

    invoke-static {v0, v1, v2}, Lcom/jjcgames/android/airhockey/Game;->playRandom(Landroid/media/SoundPool;[IF)V

    .line 2011
    const/16 v140, 0x1

    .line 2013
    :cond_53
    const/16 v139, 0x1

    .line 2014
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->twoPlayer:Z

    move v7, v0

    if-nez v7, :cond_54

    const/4 v7, 0x1

    move/from16 v0, v100

    move v1, v7

    if-eq v0, v1, :cond_54

    .line 2015
    move/from16 v159, v73

    .line 2176
    :cond_54
    :goto_36
    if-eqz v139, :cond_56

    .line 2178
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move v7, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move v8, v0

    mul-float/2addr v7, v8

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v8, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v10, v0

    mul-float/2addr v8, v10

    add-float v150, v7, v8

    .line 2179
    .local v150, puckSpeedSquare:F
    cmpl-float v7, v150, v149

    if-lez v7, :cond_55

    .line 2181
    move/from16 v0, v150

    float-to-double v0, v0

    move-wide v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    move-wide v0, v10

    double-to-float v0, v0

    move/from16 v147, v0

    .line 2182
    .local v147, puckSpeed:F
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move v7, v0

    div-float v7, v7, v147

    mul-float v7, v7, v148

    move v0, v7

    move-object/from16 v1, v22

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 2183
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    div-float v7, v7, v147

    mul-float v7, v7, v148

    move v0, v7

    move-object/from16 v1, v22

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 2186
    .end local v147           #puckSpeed:F
    :cond_55
    const/16 v161, 0x1

    .line 2189
    .end local v150           #puckSpeedSquare:F
    :cond_56
    sub-float v30, v30, v38

    .line 2191
    if-nez v86, :cond_30

    .line 2192
    const/16 v30, 0x0

    goto/16 :goto_25

    .line 1826
    .end local v124           #notQuite:F
    .end local v135           #puckDestY:F
    .end local v136           #puckHeadingIntoGoal:Z
    .end local v139           #puckMalletCollision:Z
    .end local v152           #puckYChange:F
    :cond_57
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    const/high16 v8, -0x4080

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_58

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    const/high16 v8, 0x3f80

    cmpl-float v7, v7, v8

    if-lez v7, :cond_59

    .line 1835
    :cond_58
    const/16 v136, 0x1

    .restart local v136       #puckHeadingIntoGoal:Z
    goto/16 :goto_31

    .line 1838
    .end local v136           #puckHeadingIntoGoal:Z
    :cond_59
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_5a

    const/4 v7, 0x1

    :goto_37
    int-to-float v7, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v8, v0

    sub-float/2addr v7, v8

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v8, v0

    div-float v95, v7, v8

    .line 1840
    .local v95, goalLineTime:F
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move v7, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move v8, v0

    mul-float v8, v8, v95

    add-float v96, v7, v8

    .line 1842
    .local v96, goalLineXPosition:F
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_5b

    const v7, 0x3f6f4867

    .line 1843
    :goto_38
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v8, v0

    .line 1842
    sub-float/2addr v7, v8

    .line 1843
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v8, v0

    .line 1842
    div-float v188, v7, v8

    .line 1845
    .local v188, touchingGoalLineTime:F
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move v7, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move v8, v0

    mul-float v8, v8, v188

    add-float v187, v7, v8

    .line 1847
    .local v187, touchingGoalLinePosition:F
    invoke-static/range {v96 .. v96}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x3ebc5b2c

    cmpg-float v7, v7, v8

    if-gez v7, :cond_5c

    .line 1848
    invoke-static/range {v187 .. v187}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x3ebc5b2c

    cmpg-float v7, v7, v8

    if-gez v7, :cond_5c

    const/4 v7, 0x1

    move/from16 v136, v7

    .line 1846
    .restart local v136       #puckHeadingIntoGoal:Z
    :goto_39
    goto/16 :goto_31

    .line 1838
    .end local v95           #goalLineTime:F
    .end local v96           #goalLineXPosition:F
    .end local v136           #puckHeadingIntoGoal:Z
    .end local v187           #touchingGoalLinePosition:F
    .end local v188           #touchingGoalLineTime:F
    :cond_5a
    const/4 v7, -0x1

    goto :goto_37

    .line 1842
    .restart local v95       #goalLineTime:F
    .restart local v96       #goalLineXPosition:F
    :cond_5b
    const v7, -0x4090b799

    goto :goto_38

    .line 1848
    .restart local v187       #touchingGoalLinePosition:F
    .restart local v188       #touchingGoalLineTime:F
    :cond_5c
    const/4 v7, 0x0

    move/from16 v136, v7

    goto :goto_39

    .line 1877
    .end local v95           #goalLineTime:F
    .end local v96           #goalLineXPosition:F
    .end local v187           #touchingGoalLinePosition:F
    .end local v188           #touchingGoalLineTime:F
    .restart local v135       #puckDestY:F
    .restart local v136       #puckHeadingIntoGoal:Z
    :cond_5d
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    move/from16 v0, v135

    move v1, v7

    invoke-static {v0, v1}, Lcom/jjcgames/android/airhockey/Game;->sameSign(FF)Z

    move-result v7

    if-eqz v7, :cond_50

    .line 1881
    invoke-static/range {v134 .. v134}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x3eddca5e

    cmpg-float v7, v7, v8

    if-gez v7, :cond_60

    .line 1884
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move v7, v0

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_5e

    const/4 v7, 0x1

    :goto_3a
    int-to-float v7, v7

    const v8, 0x3f5dca5e

    mul-float/2addr v7, v8

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    .line 1885
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v8, v0

    const/4 v10, 0x0

    cmpl-float v8, v8, v10

    if-lez v8, :cond_5f

    const/4 v8, 0x1

    :goto_3b
    int-to-float v8, v8

    .line 1883
    move-object/from16 v0, v21

    move v1, v7

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 1887
    const v24, 0x3d85bcc8

    const/16 v25, 0x0

    const/high16 v26, -0x4080

    .line 1886
    invoke-static/range {v20 .. v26}, Lcom/jjcgames/android/airhockey/Game;->collisionTime(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;FFF)F

    move-result v173

    .line 1891
    .restart local v173       #t:F
    :goto_3c
    const/4 v7, 0x0

    cmpl-float v7, v173, v7

    if-lez v7, :cond_61

    cmpg-float v7, v173, v38

    if-gez v7, :cond_61

    .line 1892
    move/from16 v38, v173

    .line 1893
    const/16 v86, 0x3

    goto/16 :goto_32

    .line 1884
    .end local v173           #t:F
    :cond_5e
    const/4 v7, -0x1

    goto :goto_3a

    .line 1885
    :cond_5f
    const/4 v8, -0x1

    goto :goto_3b

    .line 1889
    :cond_60
    const v173, 0x7f7fffff

    .restart local v173       #t:F
    goto :goto_3c

    .line 1894
    :cond_61
    const v7, 0x7f7fffff

    cmpg-float v7, v173, v7

    if-ltz v7, :cond_50

    .line 1901
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    div-float v7, v142, v7

    .line 1900
    sub-float v173, v30, v7

    .line 1902
    const/4 v7, 0x0

    cmpl-float v7, v173, v7

    if-lez v7, :cond_50

    cmpg-float v7, v173, v38

    if-gez v7, :cond_50

    .line 1903
    move/from16 v38, v173

    .line 1904
    const/16 v86, 0x2

    goto/16 :goto_32

    .line 1915
    .end local v173           #t:F
    :cond_62
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->twoPlayer:Z

    move v7, v0

    if-eqz v7, :cond_64

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->multitouch:Z

    move v7, v0

    if-nez v7, :cond_64

    aget-boolean v7, v185, v100

    if-nez v7, :cond_64

    .line 1914
    :cond_63
    :goto_3d
    add-int/lit8 v100, v100, 0x1

    goto/16 :goto_33

    .line 1920
    :cond_64
    aget-object v24, v127, v100

    aget-object v26, v132, v100

    .line 1921
    const v28, 0x3e0a00c3

    const v29, 0x3d85bcc8

    move-object/from16 v25, v20

    move-object/from16 v27, v22

    .line 1919
    invoke-static/range {v24 .. v30}, Lcom/jjcgames/android/airhockey/Game;->collisionTime(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;FFF)F

    move-result v173

    .line 1922
    .restart local v173       #t:F
    const/4 v7, 0x0

    cmpl-float v7, v173, v7

    if-lez v7, :cond_65

    cmpg-float v7, v173, v38

    if-gez v7, :cond_65

    .line 1923
    move/from16 v38, v173

    .line 1924
    add-int/lit8 v86, v100, 0x6

    .line 1928
    :cond_65
    aget-object v7, v127, v100

    iget v7, v7, Landroid/graphics/PointF;->x:F

    aget-object v8, v132, v100

    iget v8, v8, Landroid/graphics/PointF;->x:F

    mul-float v8, v8, v30

    add-float/2addr v7, v8

    .line 1927
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 1929
    const v8, 0x3f18417d

    .line 1927
    sub-float v109, v7, v8

    .line 1930
    .local v109, malletOvershootX:F
    const/4 v7, 0x0

    cmpl-float v7, v109, v7

    if-lez v7, :cond_66

    .line 1932
    aget-object v7, v132, v100

    iget v7, v7, Landroid/graphics/PointF;->x:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    div-float v7, v109, v7

    .line 1931
    sub-float v173, v30, v7

    .line 1935
    const/4 v7, 0x0

    cmpl-float v7, v173, v7

    if-lez v7, :cond_66

    cmpg-float v7, v173, v38

    if-gez v7, :cond_66

    .line 1936
    move/from16 v38, v173

    .line 1937
    add-int/lit8 v86, v100, 0x8

    .line 1941
    :cond_66
    aget-object v7, v127, v100

    iget v7, v7, Landroid/graphics/PointF;->y:F

    aget-object v8, v132, v100

    iget v8, v8, Landroid/graphics/PointF;->y:F

    mul-float v8, v8, v30

    add-float v107, v7, v8

    .line 1943
    .local v107, malletDestY:F
    invoke-static/range {v107 .. v107}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x3f5d7fcf

    sub-float v110, v7, v8

    .line 1944
    .local v110, malletOvershootY:F
    const/4 v7, 0x0

    cmpl-float v7, v110, v7

    if-lez v7, :cond_67

    .line 1946
    aget-object v7, v132, v100

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    div-float v7, v110, v7

    .line 1945
    sub-float v173, v30, v7

    .line 1947
    const/4 v7, 0x0

    cmpl-float v7, v173, v7

    if-lez v7, :cond_67

    cmpg-float v7, v173, v38

    if-gez v7, :cond_67

    .line 1948
    move/from16 v38, v173

    .line 1949
    add-int/lit8 v86, v100, 0xa

    .line 1953
    :cond_67
    if-nez v100, :cond_68

    const/4 v7, 0x1

    :goto_3e
    int-to-float v7, v7

    mul-float v7, v7, v107

    const v8, 0x3e0a00c3

    add-float v108, v7, v8

    .line 1954
    .local v108, malletOverline:F
    const/4 v7, 0x0

    cmpl-float v7, v108, v7

    if-lez v7, :cond_63

    .line 1956
    aget-object v7, v132, v100

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    div-float v7, v108, v7

    .line 1955
    sub-float v173, v30, v7

    .line 1957
    const/4 v7, 0x0

    cmpl-float v7, v173, v7

    if-lez v7, :cond_63

    cmpg-float v7, v173, v38

    if-gez v7, :cond_63

    .line 1958
    move/from16 v38, v173

    .line 1960
    add-int/lit8 v86, v100, 0xc

    .line 1959
    goto/16 :goto_3d

    .line 1953
    .end local v108           #malletOverline:F
    :cond_68
    const/4 v7, -0x1

    goto :goto_3e

    .line 1975
    .end local v107           #malletDestY:F
    .end local v109           #malletOvershootX:F
    .end local v110           #malletOvershootY:F
    .end local v173           #t:F
    :cond_69
    const v124, 0x3f7fbe77

    .restart local v124       #notQuite:F
    goto/16 :goto_34

    .line 1992
    .restart local v152       #puckYChange:F
    :cond_6a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->twoPlayer:Z

    move v7, v0

    if-eqz v7, :cond_6b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->multitouch:Z

    move v7, v0

    if-nez v7, :cond_6b

    aget-boolean v7, v185, v100

    if-nez v7, :cond_6b

    .line 1991
    :goto_3f
    add-int/lit8 v100, v100, 0x1

    goto/16 :goto_35

    .line 1996
    :cond_6b
    aget-object v7, v127, v100

    iget v8, v7, Landroid/graphics/PointF;->x:F

    aget-object v10, v132, v100

    iget v10, v10, Landroid/graphics/PointF;->x:F

    mul-float v10, v10, v38

    mul-float v10, v10, v124

    add-float/2addr v8, v10

    iput v8, v7, Landroid/graphics/PointF;->x:F

    .line 1997
    aget-object v7, v127, v100

    iget v8, v7, Landroid/graphics/PointF;->y:F

    aget-object v10, v132, v100

    iget v10, v10, Landroid/graphics/PointF;->y:F

    mul-float v10, v10, v38

    mul-float v10, v10, v124

    add-float/2addr v8, v10

    iput v8, v7, Landroid/graphics/PointF;->y:F

    goto :goto_3f

    .line 2017
    .restart local v139       #puckMalletCollision:Z
    :cond_6c
    const/4 v7, 0x1

    move/from16 v0, v86

    move v1, v7

    if-ne v0, v1, :cond_6d

    .line 2018
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move v7, v0

    neg-float v7, v7

    const v8, 0x3f59999a

    mul-float/2addr v7, v8

    move v0, v7

    move-object/from16 v1, v22

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 2019
    if-eqz v168, :cond_54

    if-nez v145, :cond_54

    .line 2021
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move v7, v0

    invoke-static {v7}, Lcom/jjcgames/android/airhockey/Game;->collisionVolume(F)F

    move-result v7

    .line 2020
    move-object/from16 v0, v169

    move-object/from16 v1, v146

    move v2, v7

    invoke-static {v0, v1, v2}, Lcom/jjcgames/android/airhockey/Game;->playRandom(Landroid/media/SoundPool;[IF)V

    .line 2022
    const/16 v145, 0x1

    goto/16 :goto_36

    .line 2024
    :cond_6d
    const/4 v7, 0x2

    move/from16 v0, v86

    move v1, v7

    if-ne v0, v1, :cond_6f

    .line 2025
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    neg-float v7, v7

    const v8, 0x3f59999a

    mul-float/2addr v7, v8

    move v0, v7

    move-object/from16 v1, v22

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 2026
    if-eqz v168, :cond_6e

    if-nez v145, :cond_6e

    .line 2028
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    invoke-static {v7}, Lcom/jjcgames/android/airhockey/Game;->collisionVolume(F)F

    move-result v7

    .line 2027
    move-object/from16 v0, v169

    move-object/from16 v1, v146

    move v2, v7

    invoke-static {v0, v1, v2}, Lcom/jjcgames/android/airhockey/Game;->playRandom(Landroid/media/SoundPool;[IF)V

    .line 2029
    const/16 v145, 0x1

    .line 2031
    :cond_6e
    const/16 v161, 0x1

    .line 2032
    move/from16 v159, v73

    goto/16 :goto_36

    .line 2033
    :cond_6f
    const/4 v7, 0x3

    move/from16 v0, v86

    move v1, v7

    if-ne v0, v1, :cond_71

    .line 2034
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move v7, v0

    neg-float v7, v7

    const v8, 0x3f59999a

    mul-float/2addr v7, v8

    move v0, v7

    move-object/from16 v1, v22

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 2035
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    neg-float v7, v7

    const v8, 0x3f59999a

    mul-float/2addr v7, v8

    move v0, v7

    move-object/from16 v1, v22

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 2036
    if-eqz v168, :cond_70

    if-nez v145, :cond_70

    .line 2038
    invoke-static/range {v22 .. v22}, Lcom/jjcgames/android/airhockey/Game;->collisionVolume(Landroid/graphics/PointF;)F

    move-result v7

    .line 2037
    move-object/from16 v0, v169

    move-object/from16 v1, v146

    move v2, v7

    invoke-static {v0, v1, v2}, Lcom/jjcgames/android/airhockey/Game;->playRandom(Landroid/media/SoundPool;[IF)V

    .line 2039
    const/16 v145, 0x1

    .line 2041
    :cond_70
    const/16 v161, 0x1

    .line 2042
    move/from16 v159, v73

    goto/16 :goto_36

    .line 2043
    :cond_71
    const/4 v7, 0x4

    move/from16 v0, v86

    move v1, v7

    if-ne v0, v1, :cond_72

    .line 2048
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move v7, v0

    neg-float v7, v7

    move v0, v7

    move-object/from16 v1, v22

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 2049
    if-eqz v168, :cond_54

    if-nez v145, :cond_54

    .line 2051
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move v7, v0

    invoke-static {v7}, Lcom/jjcgames/android/airhockey/Game;->collisionVolume(F)F

    move-result v7

    .line 2050
    move-object/from16 v0, v169

    move-object/from16 v1, v146

    move v2, v7

    invoke-static {v0, v1, v2}, Lcom/jjcgames/android/airhockey/Game;->playRandom(Landroid/media/SoundPool;[IF)V

    .line 2052
    const/16 v145, 0x1

    goto/16 :goto_36

    .line 2054
    :cond_72
    const/4 v7, 0x5

    move/from16 v0, v86

    move v1, v7

    if-ne v0, v1, :cond_7d

    .line 2055
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_75

    .line 2056
    const/4 v7, 0x0

    aget v8, v19, v7

    add-int/lit8 v8, v8, 0x1

    aput v8, v19, v7

    .line 2057
    const/4 v7, 0x0

    aget v8, v112, v7

    add-int/lit8 v8, v8, 0x1

    aput v8, v112, v7

    .line 2059
    sget-object v7, Lcom/jjcgames/android/airhockey/Game;->initialPuckPosition:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    sget-object v8, Lcom/jjcgames/android/airhockey/Game;->initialPuckPosition:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    neg-float v8, v8

    .line 2058
    move-object/from16 v0, v20

    move v1, v7

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 2060
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->twoPlayer:Z

    move v7, v0

    if-nez v7, :cond_73

    .line 2064
    const/4 v7, 0x1

    aget-object v7, v127, v7

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/jjcgames/android/airhockey/Game;->initialMalletPosition(Landroid/graphics/PointF;I)V

    .line 2065
    const/4 v7, 0x1

    aget-object v7, v127, v7

    iget v7, v7, Landroid/graphics/PointF;->x:F

    const/4 v8, 0x1

    aget-object v8, v127, v8

    iget v8, v8, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v174

    move v1, v7

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 2066
    const/4 v7, 0x1

    aget-object v7, v132, v7

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v10}, Landroid/graphics/PointF;->set(FF)V

    .line 2068
    const/high16 v133, 0x3f80

    .line 2075
    :cond_73
    :goto_40
    const/16 v100, 0x0

    :goto_41
    move-object/from16 v0, v19

    array-length v0, v0

    move v7, v0

    move/from16 v0, v100

    move v1, v7

    if-lt v0, v1, :cond_76

    .line 2146
    :goto_42
    if-eqz v168, :cond_74

    .line 2147
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    invoke-static {v7}, Lcom/jjcgames/android/airhockey/Game;->collisionVolume(F)F

    move-result v7

    move-object/from16 v0, v169

    move-object/from16 v1, v98

    move v2, v7

    invoke-static {v0, v1, v2}, Lcom/jjcgames/android/airhockey/Game;->playRandom(Landroid/media/SoundPool;[IF)V

    .line 2149
    :cond_74
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->rotate:Z

    move v15, v0

    move-object v14, v9

    move/from16 v16, p4

    move/from16 v17, p5

    move-object/from16 v18, v166

    invoke-static/range {v14 .. v19}, Lcom/jjcgames/android/airhockey/Game;->setupScoreTextures(Ljavax/microedition/khronos/opengles/GL10;ZII[Lcom/jjcgames/android/airhockey/Game$Texture;[I)V

    .line 2152
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2153
    invoke-static/range {v22 .. v22}, Lcom/jjcgames/android/airhockey/Game;->initialPuckVelocity(Landroid/graphics/PointF;)V

    .line 2155
    const/16 v161, 0x1

    goto/16 :goto_36

    .line 2071
    :cond_75
    const/4 v7, 0x1

    aget v8, v19, v7

    add-int/lit8 v8, v8, 0x1

    aput v8, v19, v7

    .line 2072
    const/4 v7, 0x1

    aget v8, v112, v7

    add-int/lit8 v8, v8, 0x1

    aput v8, v112, v7

    .line 2073
    sget-object v7, Lcom/jjcgames/android/airhockey/Game;->initialPuckPosition:Landroid/graphics/PointF;

    move-object/from16 v0, v20

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    goto :goto_40

    .line 2076
    :cond_76
    aget v7, v19, v100

    const/4 v8, 0x7

    if-ne v7, v8, :cond_7c

    .line 2077
    move/from16 v90, v100

    .line 2078
    aget v7, v91, v100

    add-int/lit8 v7, v7, 0x1

    aput v7, v91, v100

    if-ne v7, v13, :cond_7a

    .line 2079
    move/from16 v113, v100

    .line 2081
    const/4 v7, -0x2

    move/from16 v0, v128

    move v1, v7

    if-eq v0, v1, :cond_78

    .line 2083
    :try_start_d
    new-instance v7, Lcom/jjcgames/android/airhockey/Player;

    move-object v0, v7

    move-object/from16 v1, p1

    move/from16 v2, v128

    invoke-direct {v0, v1, v2}, Lcom/jjcgames/android/airhockey/Player;-><init>(Landroid/content/Context;I)V

    .line 2084
    move-object v0, v7

    iget v0, v0, Lcom/jjcgames/android/airhockey/Player;->level:I

    move/from16 v131, v0

    .line 2089
    .local v131, playerLevel:I
    sub-int v7, v71, v131

    int-to-float v7, v7

    const/high16 v8, 0x40e0

    div-float v97, v7, v8

    .line 2092
    .local v97, goalReward:F
    const/4 v7, 0x0

    aget v7, v112, v7

    .line 2093
    const/4 v8, 0x1

    aget v8, v112, v8

    .line 2092
    sub-int v94, v7, v8

    .line 2100
    .local v94, goalAdvantage:I
    if-nez v113, :cond_77

    .line 2102
    const/4 v7, 0x1

    move/from16 v0, v94

    move v1, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v94

    .line 2106
    :cond_77
    move/from16 v0, v94

    int-to-float v0, v0

    move v7, v0

    .line 2105
    mul-float v7, v7, v97

    float-to-int v7, v7

    add-int v122, v131, v7

    .line 2108
    .local v122, newLevel:I
    const/4 v7, 0x1

    .line 2107
    move/from16 v0, v122

    move v1, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v122

    .line 2110
    const/16 v7, 0x3e8

    .line 2109
    move/from16 v0, v122

    move v1, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v122

    .line 2111
    move-object/from16 v0, p1

    move/from16 v1, v128

    move/from16 v2, v71

    move/from16 v3, v122

    invoke-static {v0, v1, v2, v3}, Lcom/jjcgames/android/airhockey/Player;->addNewMatch(Landroid/content/Context;III)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    .line 2121
    .end local v94           #goalAdvantage:I
    .end local v97           #goalReward:F
    .end local v122           #newLevel:I
    .end local v131           #playerLevel:I
    :cond_78
    :goto_43
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->twoPlayer:Z

    move v7, v0

    if-eqz v7, :cond_7b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->multitouch:Z

    move v7, v0

    if-eqz v7, :cond_7b

    move/from16 v7, v90

    .line 2120
    :goto_44
    aget-boolean v192, v185, v7

    .line 2123
    const/4 v7, 0x0

    aget-object v7, v89, v7

    .line 2124
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->rotate:Z

    move v8, v0

    const/16 v24, 0x0

    .line 2127
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->twoPlayer:Z

    move v14, v0

    .line 2128
    const/4 v10, 0x0

    aget v15, v19, v10

    const/4 v10, 0x1

    aget v16, v19, v10

    .line 2129
    const/4 v10, 0x0

    aget v17, v91, v10

    const/4 v10, 0x1

    aget v18, v91, v10

    move-object/from16 v10, p1

    move/from16 v11, p4

    move/from16 v12, p5

    .line 2125
    invoke-static/range {v10 .. v18}, Lcom/jjcgames/android/airhockey/Game;->makeGameEndBitmap(Landroid/content/Context;IIIZIIII)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 2130
    const/4 v11, 0x1

    move v0, v8

    move/from16 v1, v24

    move-object v2, v10

    move v3, v11

    invoke-static {v0, v1, v2, v3}, Lcom/jjcgames/android/airhockey/Game;->prepareScoreBitmap(ZZLandroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 2123
    invoke-virtual {v7, v9, v8}, Lcom/jjcgames/android/airhockey/Game$Texture;->loadBitmap(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;)V

    .line 2131
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->twoPlayer:Z

    move v7, v0

    if-eqz v7, :cond_79

    .line 2132
    const/4 v7, 0x1

    aget-object v7, v89, v7

    .line 2133
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->rotate:Z

    move v8, v0

    const/16 v24, 0x1

    .line 2136
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->twoPlayer:Z

    move v14, v0

    .line 2137
    const/4 v10, 0x1

    aget v15, v19, v10

    const/4 v10, 0x0

    aget v16, v19, v10

    .line 2138
    const/4 v10, 0x1

    aget v17, v91, v10

    const/4 v10, 0x0

    aget v18, v91, v10

    move-object/from16 v10, p1

    move/from16 v11, p4

    move/from16 v12, p5

    .line 2134
    invoke-static/range {v10 .. v18}, Lcom/jjcgames/android/airhockey/Game;->makeGameEndBitmap(Landroid/content/Context;IIIZIIII)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 2139
    const/4 v11, 0x1

    move v0, v8

    move/from16 v1, v24

    move-object v2, v10

    move v3, v11

    invoke-static {v0, v1, v2, v3}, Lcom/jjcgames/android/airhockey/Game;->prepareScoreBitmap(ZZLandroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 2132
    invoke-virtual {v7, v9, v8}, Lcom/jjcgames/android/airhockey/Game$Texture;->loadBitmap(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;)V

    .line 2141
    :cond_79
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2142
    invoke-virtual/range {p0 .. p0}, Lcom/jjcgames/android/airhockey/Game;->pause()V

    goto/16 :goto_42

    .line 2118
    :cond_7a
    move/from16 v90, v100

    goto/16 :goto_43

    .line 2121
    :cond_7b
    const/4 v7, 0x0

    goto :goto_44

    .line 2075
    :cond_7c
    add-int/lit8 v100, v100, 0x1

    goto/16 :goto_41

    .line 2157
    :cond_7d
    const/16 v7, 0x8

    move/from16 v0, v86

    move v1, v7

    if-eq v0, v1, :cond_7e

    .line 2158
    const/16 v7, 0x9

    move/from16 v0, v86

    move v1, v7

    if-ne v0, v1, :cond_7f

    .line 2160
    :cond_7e
    const/16 v7, 0x8

    sub-int v7, v86, v7

    aget-object v7, v132, v7

    .line 2161
    const/4 v8, 0x0

    .line 2160
    iput v8, v7, Landroid/graphics/PointF;->x:F

    goto/16 :goto_36

    .line 2163
    :cond_7f
    const/16 v7, 0xa

    move/from16 v0, v86

    move v1, v7

    if-eq v0, v1, :cond_80

    .line 2164
    const/16 v7, 0xb

    move/from16 v0, v86

    move v1, v7

    if-ne v0, v1, :cond_81

    .line 2166
    :cond_80
    const/16 v7, 0xa

    sub-int v7, v86, v7

    aget-object v7, v132, v7

    .line 2167
    const/4 v8, 0x0

    .line 2166
    iput v8, v7, Landroid/graphics/PointF;->y:F

    goto/16 :goto_36

    .line 2169
    :cond_81
    const/16 v7, 0xc

    move/from16 v0, v86

    move v1, v7

    if-eq v0, v1, :cond_82

    .line 2170
    const/16 v7, 0xd

    move/from16 v0, v86

    move v1, v7

    if-ne v0, v1, :cond_54

    .line 2172
    :cond_82
    const/16 v7, 0xc

    sub-int v7, v86, v7

    aget-object v7, v132, v7

    .line 2173
    const/4 v8, 0x0

    .line 2172
    iput v8, v7, Landroid/graphics/PointF;->y:F

    goto/16 :goto_36

    .line 2211
    .end local v38           #firstT:F
    .end local v86           #firstCollision:I
    .end local v124           #notQuite:F
    .end local v134           #puckDestX:F
    .end local v135           #puckDestY:F
    .end local v136           #puckHeadingIntoGoal:Z
    .end local v139           #puckMalletCollision:Z
    .end local v142           #puckOverShoot:F
    .end local v152           #puckYChange:F
    :cond_83
    const/4 v7, -0x1

    move/from16 v77, v7

    goto/16 :goto_26

    .line 2216
    :cond_84
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    const v8, 0x3d85bcc8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_86

    .line 2217
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_85

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    const/high16 v8, 0x41a0

    div-float v8, v116, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_86

    .line 2220
    :cond_85
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move v7, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v8, v0

    move-object/from16 v0, v174

    move v1, v7

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_27

    .line 2233
    :cond_86
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v193, v0

    .line 2234
    .local v193, x:F
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v190, v0

    .line 2238
    .local v190, vX:F
    const v7, 0x3f4904ee

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v8, v0

    sub-float/2addr v7, v8

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v8, v0

    div-float v78, v7, v8

    .line 2241
    .local v78, dlt:F
    mul-float v7, v190, v78

    add-float v79, v193, v7

    .line 2243
    .local v79, dlx:F
    :goto_45
    const v7, -0x40d5f5eb

    cmpg-float v7, v79, v7

    if-ltz v7, :cond_87

    const v7, 0x3f2a0a15

    cmpl-float v7, v79, v7

    if-gtz v7, :cond_87

    .line 2255
    const v7, 0x3f4904ee

    move-object/from16 v0, v174

    move/from16 v1, v79

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 2256
    const/16 v161, 0x0

    goto/16 :goto_27

    .line 2245
    :cond_87
    const v7, -0x40d5f5eb

    cmpg-float v7, v79, v7

    if-gez v7, :cond_88

    const v7, -0x40d5f5eb

    move/from16 v157, v7

    .line 2247
    .local v157, railX:F
    :goto_46
    sub-float v7, v157, v193

    div-float v158, v7, v190

    .line 2248
    .local v158, rct:F
    sub-float v78, v78, v158

    .line 2249
    move/from16 v193, v157

    .line 2250
    move/from16 v0, v190

    neg-float v0, v0

    move v7, v0

    const v8, 0x3f59999a

    mul-float v190, v7, v8

    .line 2252
    mul-float v7, v190, v78

    add-float v79, v193, v7

    goto :goto_45

    .line 2245
    .end local v157           #railX:F
    .end local v158           #rct:F
    :cond_88
    const v7, 0x3f2a0a15

    move/from16 v157, v7

    goto :goto_46

    .line 2290
    .end local v30           #remainingTime:F
    .end local v47           #COLLISION_GOALBACK:I
    .end local v48           #COLLISION_GOALCORNER:I
    .end local v49           #COLLISION_GOALSIDE:I
    .end local v50           #COLLISION_LEFTRIGHT:I
    .end local v51           #COLLISION_MALLETCENTERLINE0:I
    .end local v52           #COLLISION_MALLETCENTERLINE1:I
    .end local v53           #COLLISION_MALLETLEFTRIGHT0:I
    .end local v54           #COLLISION_MALLETLEFTRIGHT1:I
    .end local v55           #COLLISION_MALLETPUCK0:I
    .end local v56           #COLLISION_MALLETPUCK1:I
    .end local v57           #COLLISION_MALLETTOPBOTTOM0:I
    .end local v58           #COLLISION_MALLETTOPBOTTOM1:I
    .end local v59           #COLLISION_NONE:I
    .end local v60           #COLLISION_TOPBOTTOM:I
    .end local v78           #dlt:F
    .end local v79           #dlx:F
    .end local v123           #nonMultiTouchControlPlayer:I
    .end local v140           #puckMalletPlayed:Z
    .end local v145           #puckRailPlayed:Z
    .end local v190           #vX:F
    .end local v193           #x:F
    :cond_89
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->twoPlayer:Z

    move v7, v0

    if-eqz v7, :cond_8a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjcgames/android/airhockey/Game;->multitouch:Z

    move v7, v0

    if-nez v7, :cond_8a

    aget-boolean v7, v185, v100

    if-nez v7, :cond_8a

    .line 2289
    :goto_47
    add-int/lit8 v100, v100, 0x1

    goto/16 :goto_28

    .line 2293
    :cond_8a
    aget-object v7, v127, v100

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/jjcgames/android/airhockey/Game;->playfieldToScreenGL(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 2294
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move v7, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v8, v0

    move-object v0, v9

    move-object/from16 v1, v111

    move v2, v7

    move v3, v8

    invoke-static {v0, v1, v2, v3}, Lcom/jjcgames/android/airhockey/Game;->drawQuad(Ljavax/microedition/khronos/opengles/GL10;Lcom/jjcgames/android/airhockey/Game$Texture;FF)V

    goto :goto_47

    .line 2306
    :cond_8b
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v7, v0

    const v8, -0x4090b799

    cmpg-float v7, v7, v8

    if-gez v7, :cond_35

    .line 2308
    const/16 v43, 0x0

    const/16 v44, 0x0

    .line 2310
    move/from16 v0, p5

    int-to-float v0, v0

    move v7, v0

    const/high16 v8, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jjcgames/android/airhockey/Game;->screenPlayfieldProportion:F

    move v10, v0

    sub-float/2addr v8, v10

    mul-float/2addr v7, v8

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    float-to-double v10, v7

    .line 2309
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    move-wide v0, v10

    double-to-int v0, v0

    move/from16 v46, v0

    move-object/from16 v39, v9

    move/from16 v40, p4

    move/from16 v41, p5

    move/from16 v45, p4

    .line 2307
    invoke-static/range {v39 .. v46}, Lcom/jjcgames/android/airhockey/Game;->drawSubTexture(Ljavax/microedition/khronos/opengles/GL10;IILcom/jjcgames/android/airhockey/Game$Texture;IIII)V

    goto/16 :goto_29

    .line 2359
    :cond_8c
    aget-object v7, v129, v100

    aget-object v8, v127, v100

    invoke-virtual {v7, v8}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 2355
    add-int/lit8 v100, v100, 0x1

    goto/16 :goto_2a

    .line 2385
    .end local v9           #gl:Ljavax/microedition/khronos/opengles/GL10;
    .end local v102           #lastElapsedTime:F
    .end local v183           #time:J
    .local v171, state:Ljava/io/Writer;
    :cond_8d
    :try_start_e
    const-string v8, "1"

    goto/16 :goto_15

    .line 2403
    :cond_8e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static/range {v128 .. v128}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2404
    move-object v0, v7

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2405
    const/4 v8, 0x1

    aget-object v8, v127, v8

    iget v8, v8, Landroid/graphics/PointF;->x:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2406
    const/4 v8, 0x1

    aget-object v8, v127, v8

    iget v8, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2407
    const/4 v8, 0x1

    aget-object v8, v132, v8

    iget v8, v8, Landroid/graphics/PointF;->x:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2408
    const/4 v8, 0x1

    aget-object v8, v132, v8

    iget v8, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2409
    move-object v0, v7

    move/from16 v1, v161

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2410
    move-object/from16 v0, v174

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2411
    move-object/from16 v0, v174

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2412
    move-object v0, v7

    move/from16 v1, v133

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2413
    move-object v0, v7

    move/from16 v1, v159

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2403
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2402
    move-object/from16 v0, v171

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3

    goto/16 :goto_16

    .line 2416
    .end local v171           #state:Ljava/io/Writer;
    :catch_3
    move-exception v7

    move-object/from16 v80, v7

    .line 2417
    .local v80, e:Ljava/io/IOException;
    const-string v7, "state"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    goto/16 :goto_17

    .line 2420
    .end local v80           #e:Ljava/io/IOException;
    :cond_8f
    new-instance v101, Landroid/content/Intent;

    invoke-direct/range {v101 .. v101}, Landroid/content/Intent;-><init>()V

    .line 2421
    .restart local v101       #in:Landroid/content/Intent;
    const/4 v7, -0x2

    move/from16 v0, v128

    move v1, v7

    if-ne v0, v1, :cond_90

    .line 2422
    const-class v7, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;

    move-object/from16 v0, v101

    move-object/from16 v1, p1

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2424
    :cond_90
    move-object/from16 v0, p2

    move-object/from16 v1, v101

    invoke-virtual {v0, v1}, Lcom/jjcgames/android/airhockey/GameActivity$Finisher;->finish(Landroid/content/Intent;)V

    .line 2426
    const/4 v7, 0x0

    move v0, v7

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jjcgames/android/airhockey/Game;->movingOn:Z

    goto/16 :goto_17

    .line 2113
    .end local v101           #in:Landroid/content/Intent;
    .restart local v9       #gl:Ljavax/microedition/khronos/opengles/GL10;
    .restart local v30       #remainingTime:F
    .restart local v38       #firstT:F
    .restart local v47       #COLLISION_GOALBACK:I
    .restart local v48       #COLLISION_GOALCORNER:I
    .restart local v49       #COLLISION_GOALSIDE:I
    .restart local v50       #COLLISION_LEFTRIGHT:I
    .restart local v51       #COLLISION_MALLETCENTERLINE0:I
    .restart local v52       #COLLISION_MALLETCENTERLINE1:I
    .restart local v53       #COLLISION_MALLETLEFTRIGHT0:I
    .restart local v54       #COLLISION_MALLETLEFTRIGHT1:I
    .restart local v55       #COLLISION_MALLETPUCK0:I
    .restart local v56       #COLLISION_MALLETPUCK1:I
    .restart local v57       #COLLISION_MALLETTOPBOTTOM0:I
    .restart local v58       #COLLISION_MALLETTOPBOTTOM1:I
    .restart local v59       #COLLISION_NONE:I
    .restart local v60       #COLLISION_TOPBOTTOM:I
    .restart local v86       #firstCollision:I
    .restart local v102       #lastElapsedTime:F
    .restart local v123       #nonMultiTouchControlPlayer:I
    .restart local v124       #notQuite:F
    .restart local v134       #puckDestX:F
    .restart local v135       #puckDestY:F
    .restart local v136       #puckHeadingIntoGoal:Z
    .restart local v139       #puckMalletCollision:Z
    .restart local v140       #puckMalletPlayed:Z
    .restart local v142       #puckOverShoot:F
    .restart local v145       #puckRailPlayed:Z
    .restart local v152       #puckYChange:F
    .restart local v183       #time:J
    :catch_4
    move-exception v7

    goto/16 :goto_43

    .line 1520
    .end local v21           #p:Landroid/graphics/PointF;
    .end local v23           #pZero:Landroid/graphics/PointF;
    .end local v30           #remainingTime:F
    .end local v38           #firstT:F
    .end local v47           #COLLISION_GOALBACK:I
    .end local v48           #COLLISION_GOALCORNER:I
    .end local v49           #COLLISION_GOALSIDE:I
    .end local v50           #COLLISION_LEFTRIGHT:I
    .end local v51           #COLLISION_MALLETCENTERLINE0:I
    .end local v52           #COLLISION_MALLETCENTERLINE1:I
    .end local v53           #COLLISION_MALLETLEFTRIGHT0:I
    .end local v54           #COLLISION_MALLETLEFTRIGHT1:I
    .end local v55           #COLLISION_MALLETPUCK0:I
    .end local v56           #COLLISION_MALLETPUCK1:I
    .end local v57           #COLLISION_MALLETTOPBOTTOM0:I
    .end local v58           #COLLISION_MALLETTOPBOTTOM1:I
    .end local v59           #COLLISION_NONE:I
    .end local v60           #COLLISION_TOPBOTTOM:I
    .end local v70           #cpuEstimationAccuracyFudge:F
    .end local v72           #cpuLevelF:F
    .end local v73           #cpuReactionTime:F
    .end local v82           #elapsedTime:F
    .end local v86           #firstCollision:I
    .end local v102           #lastElapsedTime:F
    .end local v103           #lastT:J
    .end local v114           #maxCPUMalletAcceleration:F
    .end local v115           #maxCPUMalletAccelerationSquare:F
    .end local v116           #maxCPUMalletSpeed:F
    .end local v117           #maxCPUMalletSpeedSquare:F
    .end local v123           #nonMultiTouchControlPlayer:I
    .end local v124           #notQuite:F
    .end local v134           #puckDestX:F
    .end local v135           #puckDestY:F
    .end local v136           #puckHeadingIntoGoal:Z
    .end local v139           #puckMalletCollision:Z
    .end local v140           #puckMalletPlayed:Z
    .end local v142           #puckOverShoot:F
    .end local v145           #puckRailPlayed:Z
    .end local v149           #puckSpeedLimitSquare:F
    .end local v152           #puckYChange:F
    .end local v162           #scorePosition0x:I
    .end local v163           #scorePosition0y:I
    .end local v164           #scorePosition1x:I
    .end local v165           #scorePosition1y:I
    .end local v183           #time:J
    .end local v185           #touched:[Z
    .end local v186           #touchedLastFrame:[Z
    :catch_5
    move-exception v7

    goto/16 :goto_12

    .line 1519
    :catch_6
    move-exception v7

    goto/16 :goto_12

    .line 1236
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

    .line 1243
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

    .line 829
    cmpg-float v0, p0, v1

    if-gez v0, :cond_1

    .line 830
    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    move v0, v3

    .line 832
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 830
    goto :goto_0

    .line 832
    :cond_1
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method private static setDensity(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "n"
    .parameter "b"

    .prologue
    .line 853
    sget-object v0, Lcom/jjcgames/android/airhockey/Game;->setDensity:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jjcgames/android/airhockey/Game;->getDensity:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    .line 862
    :cond_0
    :goto_0
    return-void

    .line 857
    :cond_1
    :try_start_0
    sget-object v0, Lcom/jjcgames/android/airhockey/Game;->setDensity:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/jjcgames/android/airhockey/Game;->getDensity:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 858
    :catch_0
    move-exception v0

    goto :goto_0

    .line 860
    :catch_1
    move-exception v0

    goto :goto_0

    .line 859
    :catch_2
    move-exception v0

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

    .line 947
    const/16 v0, 0x2801

    .line 948
    if-eqz p1, :cond_0

    move v1, v4

    .line 947
    :goto_0
    invoke-interface {p0, v2, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 949
    const/16 v0, 0x2800

    .line 950
    if-eqz p1, :cond_1

    move v1, v4

    .line 949
    :goto_1
    invoke-interface {p0, v2, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 952
    const/16 v0, 0x2802

    .line 951
    invoke-interface {p0, v2, v0, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 954
    const/16 v0, 0x2803

    .line 953
    invoke-interface {p0, v2, v0, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 955
    return-void

    :cond_0
    move v1, v3

    .line 948
    goto :goto_0

    :cond_1
    move v1, v3

    .line 950
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

    .line 1060
    aget-object v0, p4, v3

    .line 1061
    aget v1, p5, v3

    aget v2, p5, v4

    invoke-static {p2, p3, v1, v2}, Lcom/jjcgames/android/airhockey/Game;->makeScoreBitmap(IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1062
    invoke-static {p1, v3, v1, v3}, Lcom/jjcgames/android/airhockey/Game;->prepareScoreBitmap(ZZLandroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1060
    invoke-virtual {v0, p0, v1}, Lcom/jjcgames/android/airhockey/Game$Texture;->loadBitmap(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;)V

    .line 1063
    aget-object v0, p4, v4

    .line 1064
    aget v1, p5, v4

    aget v2, p5, v3

    invoke-static {p2, p3, v1, v2}, Lcom/jjcgames/android/airhockey/Game;->makeScoreBitmap(IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1065
    invoke-static {p1, v4, v1, v3}, Lcom/jjcgames/android/airhockey/Game;->prepareScoreBitmap(ZZLandroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1063
    invoke-virtual {v0, p0, v1}, Lcom/jjcgames/android/airhockey/Game$Texture;->loadBitmap(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;)V

    .line 1066
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
    .line 68
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    .line 69
    const-string v2, "state"

    invoke-virtual {p0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    sget-object v3, Lcom/jjcgames/android/airhockey/Game;->STATE_FILE_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    const/16 v2, 0x400

    .line 68
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
    .line 73
    new-instance v0, Ljava/io/OutputStreamWriter;

    .line 74
    const-string v1, "state"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    sget-object v2, Lcom/jjcgames/android/airhockey/Game;->STATE_FILE_CHARSET:Ljava/nio/charset/Charset;

    .line 73
    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    return-object v0
.end method


# virtual methods
.method finish()V
    .locals 2

    .prologue
    .line 289
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jjcgames/android/airhockey/Game;->threadFinishing:Z

    .line 291
    :try_start_0
    iget-object v1, p0, Lcom/jjcgames/android/airhockey/Game;->gameThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :cond_0
    return-void

    .line 292
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 293
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
    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jjcgames/android/airhockey/Game;->threadFinishing:Z

    .line 212
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

    .line 219
    iget-object v0, p0, Lcom/jjcgames/android/airhockey/Game;->gameThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 220
    return-void
.end method

.method declared-synchronized onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    const/4 v8, -0x1

    const/4 v10, 0x1

    .line 223
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 224
    .local v0, action:I
    const/4 v6, 0x2

    if-eq v0, v6, :cond_0

    .line 225
    if-nez v0, :cond_6

    .line 227
    :cond_0
    iget-object v6, p0, Lcom/jjcgames/android/airhockey/Game;->touches:[Landroid/graphics/PointF;

    const/4 v7, 0x0

    aget-object v1, v6, v7

    .line 228
    .local v1, touch:Landroid/graphics/PointF;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 229
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 230
    .local v4, y:F
    iget v6, p0, Lcom/jjcgames/android/airhockey/Game;->ignoreJumpTouchesCount:I

    if-nez v6, :cond_1

    .line 231
    iget-boolean v6, p0, Lcom/jjcgames/android/airhockey/Game;->twoPlayer:Z

    if-eqz v6, :cond_5

    iget-boolean v6, p0, Lcom/jjcgames/android/airhockey/Game;->paused:Z

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/jjcgames/android/airhockey/Game;->touchPointer:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    if-eq v6, v8, :cond_5

    .line 232
    iget v6, v1, Landroid/graphics/PointF;->x:F

    sub-float v3, v6, v2

    .line 233
    .local v3, xDiff:F
    iget v6, v1, Landroid/graphics/PointF;->y:F

    sub-float v5, v6, v4

    .line 234
    .local v5, yDiff:F
    mul-float v6, v3, v3

    mul-float v7, v5, v5

    add-float/2addr v6, v7

    .line 235
    iget v7, p0, Lcom/jjcgames/android/airhockey/Game;->touchJumpThresholdPixelsSquare:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_4

    .line 237
    const/4 v6, 0x7

    iput v6, p0, Lcom/jjcgames/android/airhockey/Game;->ignoreJumpTouchesCount:I

    .line 238
    iget-object v6, p0, Lcom/jjcgames/android/airhockey/Game;->touchPointer:[I

    const/4 v7, 0x0

    const/4 v8, -0x1

    aput v8, v6, v7

    .line 246
    .end local v3           #xDiff:F
    .end local v5           #yDiff:F
    :cond_1
    :goto_0
    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 247
    iput v4, v1, Landroid/graphics/PointF;->y:F

    .line 251
    .end local v1           #touch:Landroid/graphics/PointF;
    .end local v2           #x:F
    .end local v4           #y:F
    :goto_1
    iget v6, p0, Lcom/jjcgames/android/airhockey/Game;->ignoreJumpTouchesCount:I

    if-lez v6, :cond_2

    .line 252
    iget v6, p0, Lcom/jjcgames/android/airhockey/Game;->ignoreJumpTouchesCount:I

    sub-int/2addr v6, v10

    iput v6, p0, Lcom/jjcgames/android/airhockey/Game;->ignoreJumpTouchesCount:I

    .line 255
    :cond_2
    iget-boolean v6, p0, Lcom/jjcgames/android/airhockey/Game;->twoPlayer:Z

    if-eqz v6, :cond_3

    .line 256
    iget-object v6, p0, Lcom/jjcgames/android/airhockey/Game;->touchPointer:[I

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/jjcgames/android/airhockey/Game;->touchPointer:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    aput v8, v6, v7

    .line 257
    iget-object v6, p0, Lcom/jjcgames/android/airhockey/Game;->touches:[Landroid/graphics/PointF;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    iget-object v7, p0, Lcom/jjcgames/android/airhockey/Game;->touches:[Landroid/graphics/PointF;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 260
    :cond_3
    invoke-virtual {p0}, Lcom/jjcgames/android/airhockey/Game;->waitForNextEvent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    monitor-exit p0

    return v10

    .line 240
    .restart local v1       #touch:Landroid/graphics/PointF;
    .restart local v2       #x:F
    .restart local v3       #xDiff:F
    .restart local v4       #y:F
    .restart local v5       #yDiff:F
    :cond_4
    :try_start_1
    iget-object v6, p0, Lcom/jjcgames/android/airhockey/Game;->touchPointer:[I

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v6, v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 223
    .end local v0           #action:I
    .end local v1           #touch:Landroid/graphics/PointF;
    .end local v2           #x:F
    .end local v3           #xDiff:F
    .end local v4           #y:F
    .end local v5           #yDiff:F
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 243
    .restart local v0       #action:I
    .restart local v1       #touch:Landroid/graphics/PointF;
    .restart local v2       #x:F
    .restart local v4       #y:F
    :cond_5
    :try_start_2
    iget-object v6, p0, Lcom/jjcgames/android/airhockey/Game;->touchPointer:[I

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v6, v7

    goto :goto_0

    .line 249
    .end local v1           #touch:Landroid/graphics/PointF;
    .end local v2           #x:F
    .end local v4           #y:F
    :cond_6
    iget-object v6, p0, Lcom/jjcgames/android/airhockey/Game;->touchPointer:[I

    const/4 v7, 0x0

    const/4 v8, -0x1

    aput v8, v6, v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method pause()V
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jjcgames/android/airhockey/Game;->paused:Z

    .line 282
    return-void
.end method

.method resume()V
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jjcgames/android/airhockey/Game;->paused:Z

    .line 286
    return-void
.end method

.method protected screenToPlayfield(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 4
    .parameter "playfield"
    .parameter "screen"

    .prologue
    const/high16 v3, -0x4080

    const/high16 v2, 0x4000

    .line 399
    iget-boolean v0, p0, Lcom/jjcgames/android/airhockey/Game;->rotate:Z

    if-eqz v0, :cond_0

    .line 400
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/jjcgames/android/airhockey/Game;->screenWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    mul-float/2addr v0, v2

    .line 401
    iget v1, p0, Lcom/jjcgames/android/airhockey/Game;->screenWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/jjcgames/android/airhockey/Game;->screenPlayfieldProportion:F

    div-float/2addr v0, v1

    mul-float/2addr v0, v3

    .line 400
    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 402
    iget v0, p2, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/jjcgames/android/airhockey/Game;->screenHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    mul-float/2addr v0, v2

    .line 403
    iget v1, p0, Lcom/jjcgames/android/airhockey/Game;->screenWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/jjcgames/android/airhockey/Game;->screenPlayfieldProportion:F

    div-float/2addr v0, v1

    mul-float/2addr v0, v3

    .line 402
    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 410
    :goto_0
    return-void

    .line 405
    :cond_0
    iget v0, p2, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/jjcgames/android/airhockey/Game;->screenHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    mul-float/2addr v0, v2

    .line 406
    iget v1, p0, Lcom/jjcgames/android/airhockey/Game;->screenHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/jjcgames/android/airhockey/Game;->screenPlayfieldProportion:F

    div-float/2addr v0, v1

    mul-float/2addr v0, v3

    .line 405
    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 407
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/jjcgames/android/airhockey/Game;->screenWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    mul-float/2addr v0, v2

    .line 408
    iget v1, p0, Lcom/jjcgames/android/airhockey/Game;->screenHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/jjcgames/android/airhockey/Game;->screenPlayfieldProportion:F

    div-float/2addr v0, v1

    .line 407
    iput v0, p1, Landroid/graphics/PointF;->x:F

    goto :goto_0
.end method

.method setQuitting()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 298
    iput-boolean v0, p0, Lcom/jjcgames/android/airhockey/Game;->movingOn:Z

    .line 299
    iput-boolean v0, p0, Lcom/jjcgames/android/airhockey/Game;->threadFinishing:Z

    .line 300
    return-void
.end method

.method declared-synchronized waitForNextEvent()V
    .locals 2

    .prologue
    .line 269
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/jjcgames/android/airhockey/Game;->paused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 271
    const-wide/16 v0, 0x3e8

    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 278
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 272
    :catch_0
    move-exception v0

    goto :goto_0

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
