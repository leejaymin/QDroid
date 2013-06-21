.class public Lcom/jellybus/fx_sub/StampUserDrawView;
.super Landroid/view/View;
.source "StampUserDrawView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final TOUCH_TOLERANCE:F = 18.0f


# instance fields
.field private big_stamp_idx:[Ljava/lang/Integer;

.field private bitmapPaint:Landroid/graphics/Paint;

.field private brushPaint:Landroid/graphics/Paint;

.field private centerX:I

.field private centerY:I

.field private curDegree:F

.field private curScale:F

.field private current_stamp:I

.field private figure:Landroid/graphics/Bitmap;

.field private figureStartX:F

.field private figureStartY:F

.field private figureX:F

.field private figureY:F

.field private figure_live:Landroid/graphics/Bitmap;

.field private height:I

.field private index:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private isMultiTouch:Z

.field private isRightFirst:Z

.field private isSingleTouch:Z

.field public isViewSet:Z

.field private mPath:Landroid/graphics/Path;

.field private mX:F

.field private mY:F

.field private multiDegree:F

.field private multiScale:F

.field public paths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field private startDegree:F

.field private startScale:F

.field private startX:F

.field private startY:F

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 65
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->paths:Ljava/util/ArrayList;

    .line 30
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->index:Ljava/util/ArrayList;

    .line 40
    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/Integer;

    .line 41
    const v2, 0x7f020205

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    .line 42
    const v2, 0x7f020208

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    .line 43
    const v2, 0x7f020209

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x3

    .line 44
    const v3, 0x7f02020a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    .line 45
    const v3, 0x7f02020b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 46
    const v3, 0x7f02020c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    .line 47
    const v3, 0x7f02020d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    .line 48
    const v3, 0x7f02020e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    .line 49
    const v3, 0x7f02020f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    .line 50
    const v3, 0x7f020206

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    .line 51
    const v3, 0x7f020207

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->big_stamp_idx:[Ljava/lang/Integer;

    .line 313
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->curScale:F

    .line 66
    invoke-virtual {p0, v4}, Lcom/jellybus/fx_sub/StampUserDrawView;->setFocusable(Z)V

    .line 67
    invoke-virtual {p0, v4}, Lcom/jellybus/fx_sub/StampUserDrawView;->setFocusableInTouchMode(Z)V

    .line 68
    invoke-virtual {p0, p0}, Lcom/jellybus/fx_sub/StampUserDrawView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 69
    new-instance v0, Landroid/graphics/DashPathEffect;

    new-array v1, v6, [F

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 70
    .local v0, dashPathEffect:Landroid/graphics/DashPathEffect;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->brushPaint:Landroid/graphics/Paint;

    .line 71
    iget-object v1, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->brushPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 72
    iget-object v1, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->brushPaint:Landroid/graphics/Paint;

    const-string v2, "#ff9000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    iget-object v1, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->brushPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 74
    iget-object v1, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->brushPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40e0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 75
    iget-object v1, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->brushPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 77
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->bitmapPaint:Landroid/graphics/Paint;

    .line 78
    iget-object v1, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 79
    iget-object v1, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->bitmapPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    iget-object v1, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->bitmapPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 82
    iget-object v1, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->index:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    iput-boolean v4, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->isViewSet:Z

    .line 86
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/StampUserDrawView;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->width:I

    .line 87
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/StampUserDrawView;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->height:I

    .line 88
    return-void

    .line 69
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x70t 0x41t
        0x0t 0x0t 0x70t 0x41t
    .end array-data
.end method

.method private getFinalStamp(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "result"

    .prologue
    .line 277
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 278
    .local v4, fullW:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 279
    .local v5, fullH:I
    const/4 v0, 0x4

    new-array v12, v0, [I

    .line 280
    .local v12, size:[I
    invoke-static {p1}, Lcom/jellybus/fx/Juliet;->setUserStamp(Landroid/graphics/Bitmap;)[I

    move-result-object v12

    .line 281
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removePreviewIndex()V

    .line 282
    invoke-static {p1}, Lcom/jellybus/fx/Juliet;->setPreviewIndex(Landroid/graphics/Bitmap;)V

    .line 284
    const/4 v0, 0x1

    aget v0, v12, v0

    const/4 v1, 0x0

    aget v1, v12, v1

    sub-int/2addr v0, v1

    add-int/lit8 v11, v0, 0x1

    .line 285
    .local v11, scaled_width:I
    const/4 v0, 0x3

    aget v0, v12, v0

    const/4 v1, 0x2

    aget v1, v12, v1

    sub-int/2addr v0, v1

    add-int/lit8 v10, v0, 0x1

    .line 287
    .local v10, scaled_height:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 288
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v10, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 290
    const/4 v0, 0x0

    aget v0, v12, v0

    const/4 v1, 0x1

    aget v1, v12, v1

    const/4 v2, 0x2

    aget v2, v12, v2

    const/4 v3, 0x3

    aget v3, v12, v3

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/jellybus/fx/Juliet;->setScaleStamp(IIIIIILandroid/graphics/Bitmap;)V

    .line 292
    const/16 v0, 0x190

    if-gt v11, v0, :cond_0

    const/16 v0, 0x190

    if-le v10, v0, :cond_1

    .line 293
    :cond_0
    const/high16 v0, 0x43c8

    int-to-float v1, v11

    div-float v7, v0, v1

    .line 294
    .local v7, rX:F
    const/high16 v0, 0x43c8

    int-to-float v1, v10

    div-float v8, v0, v1

    .line 295
    .local v8, rY:F
    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 296
    .local v9, ratio:F
    int-to-float v0, v11

    mul-float/2addr v0, v9

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v1, v10

    mul-float/2addr v1, v9

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 298
    .end local v7           #rX:F
    .end local v8           #rY:F
    .end local v9           #ratio:F
    :cond_1
    return-object p1
.end method

.method private multi_touch_move(Landroid/view/MotionEvent;)V
    .locals 14
    .parameter "event"

    .prologue
    const/4 v13, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 418
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 419
    .local v5, x0:F
    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 420
    .local v6, x1:F
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 421
    .local v7, y0:F
    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 422
    .local v8, y1:F
    iget-boolean v9, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->isRightFirst:Z

    if-eqz v9, :cond_0

    .line 423
    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 424
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 425
    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 426
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 431
    :cond_0
    sub-float v9, v7, v8

    float-to-double v9, v9

    sub-float v11, v5, v6

    float-to-double v11, v11

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v9

    double-to-float v4, v9

    .line 432
    .local v4, radian:F
    float-to-double v9, v4

    invoke-static {v9, v10}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v9

    double-to-float v0, v9

    .line 434
    .local v0, degree:F
    iget v9, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->multiDegree:F

    cmpl-float v9, v9, v13

    if-nez v9, :cond_1

    .line 435
    iput v0, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->multiDegree:F

    .line 437
    :cond_1
    iget v9, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->startDegree:F

    iget v10, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->multiDegree:F

    sub-float v10, v0, v10

    add-float/2addr v9, v10

    iput v9, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->curDegree:F

    .line 442
    sub-float v9, v5, v6

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 443
    .local v2, dx:F
    sub-float v9, v7, v8

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 444
    .local v3, dy:F
    mul-float v9, v2, v2

    mul-float v10, v3, v3

    add-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    double-to-float v1, v9

    .line 446
    .local v1, distance:F
    iget v9, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->multiScale:F

    cmpl-float v9, v9, v13

    if-nez v9, :cond_2

    .line 447
    iput v1, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->multiScale:F

    .line 449
    :cond_2
    iget v9, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->startScale:F

    iget v10, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->multiScale:F

    div-float v10, v1, v10

    const/high16 v11, 0x3f80

    sub-float/2addr v10, v11

    add-float/2addr v9, v10

    iput v9, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->curScale:F

    .line 451
    return-void
.end method

.method private touch_move(FF)V
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v3, 0x4190

    const/high16 v7, 0x4000

    .line 391
    iget v2, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->mX:F

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 392
    .local v0, dx:F
    iget v2, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->mY:F

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 393
    .local v1, dy:F
    cmpl-float v2, v0, v3

    if-gez v2, :cond_0

    cmpl-float v2, v1, v3

    if-ltz v2, :cond_1

    .line 394
    :cond_0
    iget v2, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->current_stamp:I

    if-nez v2, :cond_2

    .line 396
    iget-object v2, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->mPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->mX:F

    iget v4, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->mY:F

    iget v5, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->mX:F

    add-float/2addr v5, p1

    div-float/2addr v5, v7

    iget v6, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->mY:F

    add-float/2addr v6, p2

    div-float/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 398
    iput p1, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->mX:F

    .line 399
    iput p2, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->mY:F

    .line 408
    :cond_1
    :goto_0
    return-void

    .line 402
    :cond_2
    iget v2, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->figureX:F

    iget v3, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->figureStartX:F

    sub-float v3, p1, v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->figureX:F

    .line 403
    iget v2, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->figureY:F

    iget v3, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->figureStartY:F

    sub-float v3, p2, v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->figureY:F

    .line 404
    iput p1, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->figureStartX:F

    .line 405
    iput p2, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->figureStartY:F

    goto :goto_0
.end method

.method private touch_start(FF)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 376
    iget v0, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->current_stamp:I

    if-nez v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->paths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 380
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->mPath:Landroid/graphics/Path;

    .line 381
    iget-object v0, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->paths:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    iget-object v0, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 383
    iput p1, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->startX:F

    iput p1, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->mX:F

    .line 384
    iput p2, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->startY:F

    iput p2, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->mY:F

    .line 389
    :goto_0
    return-void

    .line 386
    :cond_0
    iput p1, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->figureStartX:F

    .line 387
    iput p2, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->figureStartY:F

    goto :goto_0
.end method

.method private touch_up()V
    .locals 5

    .prologue
    .line 411
    iget-object v0, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->mX:F

    iget v2, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->mY:F

    iget v3, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->startX:F

    iget v4, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->startY:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 412
    return-void
.end method


# virtual methods
.method public changeCurrentStamp(I)V
    .locals 6
    .parameter "stamp_idx"

    .prologue
    const/high16 v5, 0x4000

    const/4 v4, 0x0

    .line 107
    iget-object v1, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->figure:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->figure:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 109
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->figure:Landroid/graphics/Bitmap;

    .line 112
    :cond_0
    if-eqz p1, :cond_2

    .line 113
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 114
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 115
    const/4 v1, 0x4

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 116
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/StampUserDrawView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->big_stamp_idx:[Ljava/lang/Integer;

    add-int/lit8 v3, p1, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->figure:Landroid/graphics/Bitmap;

    .line 117
    iget v1, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->figureX:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_1

    iget v1, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->figureY:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_1

    .line 118
    iget v1, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->width:I

    int-to-float v1, v1

    div-float/2addr v1, v5

    iput v1, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->figureX:F

    .line 119
    iget v1, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->height:I

    int-to-float v1, v1

    div-float/2addr v1, v5

    iput v1, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->figureY:F

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->figure:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->centerX:I

    .line 122
    iget-object v1, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->figure:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->centerY:I

    .line 124
    .end local v0           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_2
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 129
    iget-boolean v2, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->isViewSet:Z

    if-eqz v2, :cond_0

    .line 130
    iget v2, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->current_stamp:I

    if-nez v2, :cond_2

    .line 132
    iget-object v2, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->paths:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 155
    :cond_0
    :goto_1
    return-void

    .line 132
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Path;

    .line 133
    .local v1, p:Landroid/graphics/Path;
    iget-object v3, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->brushPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 137
    .end local v1           #p:Landroid/graphics/Path;
    :cond_2
    iget-object v2, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->figure_live:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 138
    iget-object v2, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->figure_live:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 140
    :cond_3
    iget v2, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->width:I

    iget v3, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->height:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->figure_live:Landroid/graphics/Bitmap;

    .line 142
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->figure_live:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 143
    .local v0, c:Landroid/graphics/Canvas;
    const/16 v2, 0x96

    invoke-virtual {v0, v2, v5, v5, v5}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 145
    iget v2, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->curScale:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_4

    .line 146
    iget v2, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->curScale:F

    iget v3, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->curScale:F

    iget v4, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->figureX:F

    iget v5, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->figureY:F

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 148
    :cond_4
    iget v2, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->curDegree:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_5

    .line 149
    iget v2, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->curDegree:F

    iget v3, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->figureX:F

    iget v4, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->figureY:F

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 150
    :cond_5
    iget-object v2, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->figure:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->figureX:F

    iget v4, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->centerX:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->figureY:F

    iget v5, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->centerY:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 151
    iget-object v2, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->figure_live:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v6, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 91
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 92
    iput p1, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->width:I

    .line 93
    iput p2, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->height:I

    .line 94
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "arg0"
    .parameter "event"

    .prologue
    const/high16 v6, 0x4120

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 317
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 318
    .local v0, x:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 321
    .local v1, y:F
    cmpg-float v2, v0, v6

    if-gez v2, :cond_3

    .line 322
    const/high16 v0, 0x40a0

    .line 325
    :cond_0
    :goto_0
    cmpg-float v2, v1, v6

    if-gez v2, :cond_4

    .line 326
    const/high16 v1, 0x40a0

    .line 330
    :cond_1
    :goto_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 372
    :cond_2
    :goto_2
    return v4

    .line 323
    :cond_3
    iget v2, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->width:I

    add-int/lit8 v2, v2, -0xa

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    .line 324
    iget v2, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->width:I

    add-int/lit8 v2, v2, -0x5

    int-to-float v0, v2

    goto :goto_0

    .line 327
    :cond_4
    iget v2, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->height:I

    add-int/lit8 v2, v2, -0xa

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    .line 328
    iget v2, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->height:I

    add-int/lit8 v2, v2, -0x5

    int-to-float v1, v2

    goto :goto_1

    .line 333
    :sswitch_0
    iput-boolean v3, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->isSingleTouch:Z

    .line 334
    iput-boolean v4, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->isMultiTouch:Z

    .line 337
    iget v2, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->curDegree:F

    iput v2, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->startDegree:F

    .line 338
    iget v2, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->curScale:F

    iput v2, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->startScale:F

    .line 340
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 341
    iput-boolean v4, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->isRightFirst:Z

    goto :goto_2

    .line 344
    :sswitch_1
    invoke-direct {p0, v0, v1}, Lcom/jellybus/fx_sub/StampUserDrawView;->touch_start(FF)V

    .line 345
    iput-boolean v4, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->isSingleTouch:Z

    .line 346
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/StampUserDrawView;->invalidate()V

    goto :goto_2

    .line 349
    :sswitch_2
    iget-boolean v2, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->isMultiTouch:Z

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->current_stamp:I

    if-eqz v2, :cond_5

    .line 350
    invoke-direct {p0, p2}, Lcom/jellybus/fx_sub/StampUserDrawView;->multi_touch_move(Landroid/view/MotionEvent;)V

    .line 352
    :cond_5
    iget-boolean v2, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->isSingleTouch:Z

    if-eqz v2, :cond_6

    .line 353
    invoke-direct {p0, v0, v1}, Lcom/jellybus/fx_sub/StampUserDrawView;->touch_move(FF)V

    .line 355
    :cond_6
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/StampUserDrawView;->invalidate()V

    goto :goto_2

    .line 358
    :sswitch_3
    iget-boolean v2, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->isSingleTouch:Z

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->current_stamp:I

    if-nez v2, :cond_7

    .line 359
    invoke-direct {p0}, Lcom/jellybus/fx_sub/StampUserDrawView;->touch_up()V

    .line 360
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/StampUserDrawView;->invalidate()V

    .line 362
    :cond_7
    iput-boolean v3, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->isSingleTouch:Z

    goto :goto_2

    .line 366
    :sswitch_4
    iput-boolean v3, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->isMultiTouch:Z

    .line 367
    iput-boolean v3, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->isRightFirst:Z

    .line 368
    iput v5, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->multiDegree:F

    .line 369
    iput v5, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->multiScale:F

    goto :goto_2

    .line 330
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x5 -> :sswitch_0
        0x6 -> :sswitch_4
        0x105 -> :sswitch_0
        0x106 -> :sswitch_4
    .end sparse-switch
.end method

.method public removeBitmap()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 454
    iget-object v0, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->figure_live:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->figure_live:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 456
    iput-object v1, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->figure_live:Landroid/graphics/Bitmap;

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->figure:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 459
    iget-object v0, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->figure:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 460
    iput-object v1, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->figure:Landroid/graphics/Bitmap;

    .line 462
    :cond_1
    return-void
.end method

.method public scaleUserDrawStamp(FII)Landroid/graphics/Bitmap;
    .locals 30
    .parameter "r"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 160
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jellybus/fx_sub/StampUserDrawView;->isViewSet:Z

    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/jellybus/fx_sub/StampUserDrawView;->removeBitmap()V

    .line 163
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jellybus/fx_sub/StampUserDrawView;->current_stamp:I

    move/from16 v25, v0

    if-nez v25, :cond_5

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx_sub/StampUserDrawView;->paths:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v25

    if-eqz v25, :cond_3

    .line 166
    sget-object v25, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 167
    .local v13, picture:Landroid/graphics/Bitmap;
    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v13}, Lcom/jellybus/fx/Juliet;->getPreviewIndex(IILandroid/graphics/Bitmap;)V

    .line 169
    const/16 v25, 0x190

    move/from16 v0, p2

    move/from16 v1, v25

    if-gt v0, v1, :cond_0

    const/16 v25, 0x190

    move/from16 v0, p3

    move/from16 v1, v25

    if-le v0, v1, :cond_1

    .line 170
    :cond_0
    const/high16 v25, 0x43c8

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v16, v25, v26

    .line 171
    .local v16, rX:F
    const/high16 v25, 0x43c8

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v17, v25, v26

    .line 172
    .local v17, rY:F
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(FF)F

    move-result v18

    .line 173
    .local v18, ratio:F
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v25, v25, v18

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->round(F)I

    move-result v25

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v26, v26, v18

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->round(F)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v13, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 176
    .end local v16           #rX:F
    .end local v17           #rY:F
    .end local v18           #ratio:F
    :cond_1
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 177
    .local v10, newW:I
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 179
    .local v9, newH:I
    new-instance v25, Landroid/graphics/Path;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jellybus/fx_sub/StampUserDrawView;->mPath:Landroid/graphics/Path;

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx_sub/StampUserDrawView;->mPath:Landroid/graphics/Path;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    int-to-float v0, v10

    move/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v25 .. v29}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx_sub/StampUserDrawView;->mPath:Landroid/graphics/Path;

    move-object/from16 v25, v0

    int-to-float v0, v10

    move/from16 v26, v0

    const/16 v27, 0x0

    int-to-float v0, v10

    move/from16 v28, v0

    int-to-float v0, v9

    move/from16 v29, v0

    invoke-virtual/range {v25 .. v29}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx_sub/StampUserDrawView;->mPath:Landroid/graphics/Path;

    move-object/from16 v25, v0

    int-to-float v0, v10

    move/from16 v26, v0

    int-to-float v0, v9

    move/from16 v27, v0

    const/16 v28, 0x0

    int-to-float v0, v9

    move/from16 v29, v0

    invoke-virtual/range {v25 .. v29}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx_sub/StampUserDrawView;->mPath:Landroid/graphics/Path;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    int-to-float v0, v9

    move/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-virtual/range {v25 .. v29}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx_sub/StampUserDrawView;->paths:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx_sub/StampUserDrawView;->mPath:Landroid/graphics/Path;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    sget-object v25, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v25

    invoke-static {v10, v9, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 186
    .local v19, result:Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 187
    .local v4, canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx_sub/StampUserDrawView;->brushPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    const/high16 v26, 0x3f80

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx_sub/StampUserDrawView;->brushPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setColor(I)V

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx_sub/StampUserDrawView;->brushPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    sget-object v26, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx_sub/StampUserDrawView;->brushPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 191
    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v4, v13, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx_sub/StampUserDrawView;->paths:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_0
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-nez v26, :cond_2

    .line 195
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 270
    .end local v4           #canvas:Landroid/graphics/Canvas;
    .end local v9           #newH:I
    .end local v10           #newW:I
    .end local v19           #result:Landroid/graphics/Bitmap;
    :goto_1
    return-object v19

    .line 192
    .restart local v4       #canvas:Landroid/graphics/Canvas;
    .restart local v9       #newH:I
    .restart local v10       #newW:I
    .restart local v19       #result:Landroid/graphics/Bitmap;
    :cond_2
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Path;

    .line 193
    .local v11, p:Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx_sub/StampUserDrawView;->brushPaint:Landroid/graphics/Paint;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v4, v11, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 199
    .end local v4           #canvas:Landroid/graphics/Canvas;
    .end local v9           #newH:I
    .end local v10           #newW:I
    .end local v11           #p:Landroid/graphics/Path;
    .end local v13           #picture:Landroid/graphics/Bitmap;
    .end local v19           #result:Landroid/graphics/Bitmap;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx_sub/StampUserDrawView;->brushPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    const/16 v26, -0x1

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setColor(I)V

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx_sub/StampUserDrawView;->brushPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    sget-object v26, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx_sub/StampUserDrawView;->brushPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 202
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jellybus/fx_sub/StampUserDrawView;->width:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v15, v25, v26

    .line 203
    .local v15, rW:F
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jellybus/fx_sub/StampUserDrawView;->height:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v14, v25, v26

    .line 204
    .local v14, rH:F
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 205
    .local v8, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v8, v15, v14}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 208
    sget-object v25, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 209
    .local v7, line:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 210
    .local v5, canvas_line:Landroid/graphics/Canvas;
    invoke-virtual {v5, v8}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx_sub/StampUserDrawView;->paths:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_2
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-nez v26, :cond_4

    .line 216
    sget-object v25, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 217
    .restart local v19       #result:Landroid/graphics/Bitmap;
    sget-object v25, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 218
    .restart local v13       #picture:Landroid/graphics/Bitmap;
    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v13}, Lcom/jellybus/fx/Juliet;->getPreviewIndex(IILandroid/graphics/Bitmap;)V

    .line 220
    new-instance v6, Landroid/graphics/Canvas;

    move-object/from16 v0, v19

    invoke-direct {v6, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 221
    .local v6, canvas_result:Landroid/graphics/Canvas;
    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v6, v13, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 222
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 223
    .local v12, paint:Landroid/graphics/Paint;
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 224
    new-instance v25, Landroid/graphics/PorterDuffXfermode;

    sget-object v26, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v25 .. v26}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 225
    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v6, v7, v0, v1, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 226
    const/16 v25, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 228
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 229
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 230
    const/4 v7, 0x0

    .line 231
    const/4 v13, 0x0

    .line 233
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/jellybus/fx_sub/StampUserDrawView;->getFinalStamp(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v19

    goto/16 :goto_1

    .line 211
    .end local v6           #canvas_result:Landroid/graphics/Canvas;
    .end local v12           #paint:Landroid/graphics/Paint;
    .end local v13           #picture:Landroid/graphics/Bitmap;
    .end local v19           #result:Landroid/graphics/Bitmap;
    :cond_4
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Path;

    .line 212
    .restart local v11       #p:Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx_sub/StampUserDrawView;->brushPaint:Landroid/graphics/Paint;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v5, v11, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 237
    .end local v5           #canvas_line:Landroid/graphics/Canvas;
    .end local v7           #line:Landroid/graphics/Bitmap;
    .end local v8           #matrix:Landroid/graphics/Matrix;
    .end local v11           #p:Landroid/graphics/Path;
    .end local v14           #rH:F
    .end local v15           #rW:F
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jellybus/fx_sub/StampUserDrawView;->figureX:F

    move/from16 v25, v0

    div-float v22, v25, p1

    .line 238
    .local v22, stampX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jellybus/fx_sub/StampUserDrawView;->figureY:F

    move/from16 v25, v0

    div-float v23, v25, p1

    .line 239
    .local v23, stampY:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jellybus/fx_sub/StampUserDrawView;->centerX:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v25, v25, p1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jellybus/fx_sub/StampUserDrawView;->curScale:F

    move/from16 v26, v0

    mul-float v24, v25, v26

    .line 240
    .local v24, stamp_center:F
    add-float v25, v22, v24

    sub-float v26, v22, v24

    sub-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v21, v0

    .line 243
    .local v21, stampSize:I
    invoke-virtual/range {p0 .. p0}, Lcom/jellybus/fx_sub/StampUserDrawView;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx_sub/StampUserDrawView;->big_stamp_idx:[Ljava/lang/Integer;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jellybus/fx_sub/StampUserDrawView;->current_stamp:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, -0x1

    aget-object v26, v26, v27

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    invoke-static/range {v25 .. v26}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 244
    .local v20, stamp:Landroid/graphics/Bitmap;
    const/16 v25, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v21

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 245
    sget-object v25, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 246
    .restart local v7       #line:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 247
    .restart local v5       #canvas_line:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jellybus/fx_sub/StampUserDrawView;->curDegree:F

    move/from16 v25, v0

    const/16 v26, 0x0

    cmpl-float v25, v25, v26

    if-eqz v25, :cond_6

    .line 248
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jellybus/fx_sub/StampUserDrawView;->curDegree:F

    move/from16 v25, v0

    move/from16 v0, v25

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 249
    :cond_6
    sub-float v25, v22, v24

    sub-float v26, v23, v24

    const/16 v27, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v25

    move/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 250
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->recycle()V

    .line 253
    sget-object v25, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 254
    .restart local v13       #picture:Landroid/graphics/Bitmap;
    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v13}, Lcom/jellybus/fx/Juliet;->getPreviewIndex(IILandroid/graphics/Bitmap;)V

    .line 255
    sget-object v25, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 256
    .restart local v19       #result:Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    move-object/from16 v0, v19

    invoke-direct {v6, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 257
    .restart local v6       #canvas_result:Landroid/graphics/Canvas;
    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v6, v13, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 258
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 259
    .restart local v12       #paint:Landroid/graphics/Paint;
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 260
    new-instance v25, Landroid/graphics/PorterDuffXfermode;

    sget-object v26, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v25 .. v26}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 261
    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v6, v7, v0, v1, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 262
    const/16 v25, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 264
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 265
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 266
    const/4 v7, 0x0

    .line 267
    const/4 v13, 0x0

    .line 270
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/jellybus/fx_sub/StampUserDrawView;->getFinalStamp(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v19

    goto/16 :goto_1
.end method

.method public setCurrentStamp(I)V
    .locals 1
    .parameter "stamp_idx"

    .prologue
    .line 98
    iget v0, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->current_stamp:I

    if-eq v0, p1, :cond_0

    .line 99
    invoke-virtual {p0, p1}, Lcom/jellybus/fx_sub/StampUserDrawView;->changeCurrentStamp(I)V

    .line 100
    iput p1, p0, Lcom/jellybus/fx_sub/StampUserDrawView;->current_stamp:I

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/StampUserDrawView;->invalidate()V

    .line 103
    return-void
.end method
