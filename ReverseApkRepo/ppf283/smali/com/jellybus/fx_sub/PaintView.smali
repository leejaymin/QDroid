.class public Lcom/jellybus/fx_sub/PaintView;
.super Lcom/jellybus/fx_sub/PaintController;
.source "PaintView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jellybus/fx_sub/PaintView$GestureListener;,
        Lcom/jellybus/fx_sub/PaintView$ScaleListener;
    }
.end annotation


# static fields
.field static final MIN_ZOOM:F = 0.9f

.field private static final TOUCH_TOLERANCE:F = 4.0f


# instance fields
.field private brushPaint:Landroid/graphics/Paint;

.field private mBlur:Landroid/graphics/MaskFilter;

.field protected mCurrentScaleFactor:F

.field protected mDoubleTapDirection:I

.field private mEmboss:Landroid/graphics/MaskFilter;

.field protected mGestureDetector:Landroid/view/GestureDetector;

.field protected mGestureListener:Lcom/jellybus/fx_sub/PaintView$GestureListener;

.field private mPath:Landroid/graphics/Path;

.field protected mScaleDetector:Landroid/view/ScaleGestureDetector;

.field protected mScaleFactor:F

.field protected mScaleListener:Lcom/jellybus/fx_sub/PaintView$ScaleListener;

.field protected mTouchSlop:I

.field private mX:F

.field private mY:F

.field private paths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field private previousX:F

.field private previousY:F

.field private undonePaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/jellybus/fx_sub/PaintController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jellybus/fx_sub/PaintView;->paths:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jellybus/fx_sub/PaintView;->undonePaths:Ljava/util/ArrayList;

    .line 51
    return-void
.end method

.method static synthetic access$0(Lcom/jellybus/fx_sub/PaintView;)F
    .locals 1
    .parameter

    .prologue
    .line 36
    iget v0, p0, Lcom/jellybus/fx_sub/PaintView;->previousX:F

    return v0
.end method

.method static synthetic access$1(Lcom/jellybus/fx_sub/PaintView;)F
    .locals 1
    .parameter

    .prologue
    .line 36
    iget v0, p0, Lcom/jellybus/fx_sub/PaintView;->previousY:F

    return v0
.end method

.method static synthetic access$2(Lcom/jellybus/fx_sub/PaintView;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput p1, p0, Lcom/jellybus/fx_sub/PaintView;->previousX:F

    return-void
.end method

.method static synthetic access$3(Lcom/jellybus/fx_sub/PaintView;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput p1, p0, Lcom/jellybus/fx_sub/PaintView;->previousY:F

    return-void
.end method

.method private touch_move(FF)V
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v3, 0x4080

    const/high16 v7, 0x4000

    .line 128
    iget v2, p0, Lcom/jellybus/fx_sub/PaintView;->mX:F

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 129
    .local v0, dx:F
    iget v2, p0, Lcom/jellybus/fx_sub/PaintView;->mY:F

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 130
    .local v1, dy:F
    cmpl-float v2, v0, v3

    if-gez v2, :cond_0

    cmpl-float v2, v1, v3

    if-ltz v2, :cond_1

    .line 132
    :cond_0
    iget-object v2, p0, Lcom/jellybus/fx_sub/PaintView;->mPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/jellybus/fx_sub/PaintView;->mX:F

    iget v4, p0, Lcom/jellybus/fx_sub/PaintView;->mY:F

    iget v5, p0, Lcom/jellybus/fx_sub/PaintView;->mX:F

    add-float/2addr v5, p1

    div-float/2addr v5, v7

    iget v6, p0, Lcom/jellybus/fx_sub/PaintView;->mY:F

    add-float/2addr v6, p2

    div-float/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 134
    iput p1, p0, Lcom/jellybus/fx_sub/PaintView;->mX:F

    .line 135
    iput p2, p0, Lcom/jellybus/fx_sub/PaintView;->mY:F

    .line 137
    :cond_1
    return-void
.end method

.method private touch_start(FF)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 121
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/jellybus/fx_sub/PaintView;->mPath:Landroid/graphics/Path;

    .line 122
    iget-object v0, p0, Lcom/jellybus/fx_sub/PaintView;->paths:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jellybus/fx_sub/PaintView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v0, p0, Lcom/jellybus/fx_sub/PaintView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 124
    iput p1, p0, Lcom/jellybus/fx_sub/PaintView;->mX:F

    .line 125
    iput p2, p0, Lcom/jellybus/fx_sub/PaintView;->mY:F

    .line 126
    return-void
.end method

.method private touch_up()V
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/jellybus/fx_sub/PaintView;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/jellybus/fx_sub/PaintView;->mX:F

    iget v2, p0, Lcom/jellybus/fx_sub/PaintView;->mY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 141
    return-void
.end method


# virtual methods
.method protected init()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 56
    invoke-super {p0}, Lcom/jellybus/fx_sub/PaintController;->init()V

    .line 57
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/jellybus/fx_sub/PaintView;->mTouchSlop:I

    .line 58
    new-instance v0, Lcom/jellybus/fx_sub/PaintView$GestureListener;

    invoke-direct {v0, p0}, Lcom/jellybus/fx_sub/PaintView$GestureListener;-><init>(Lcom/jellybus/fx_sub/PaintView;)V

    iput-object v0, p0, Lcom/jellybus/fx_sub/PaintView;->mGestureListener:Lcom/jellybus/fx_sub/PaintView$GestureListener;

    .line 59
    new-instance v0, Lcom/jellybus/fx_sub/PaintView$ScaleListener;

    invoke-direct {v0, p0}, Lcom/jellybus/fx_sub/PaintView$ScaleListener;-><init>(Lcom/jellybus/fx_sub/PaintView;)V

    iput-object v0, p0, Lcom/jellybus/fx_sub/PaintView;->mScaleListener:Lcom/jellybus/fx_sub/PaintView$ScaleListener;

    .line 61
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/jellybus/fx_sub/PaintView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/jellybus/fx_sub/PaintView;->mScaleListener:Lcom/jellybus/fx_sub/PaintView$ScaleListener;

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/jellybus/fx_sub/PaintView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 62
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/jellybus/fx_sub/PaintView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/jellybus/fx_sub/PaintView;->mGestureListener:Lcom/jellybus/fx_sub/PaintView$GestureListener;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lcom/jellybus/fx_sub/PaintView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 63
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/jellybus/fx_sub/PaintView;->mCurrentScaleFactor:F

    .line 64
    iput v4, p0, Lcom/jellybus/fx_sub/PaintView;->mDoubleTapDirection:I

    .line 66
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jellybus/fx_sub/PaintView;->brushPaint:Landroid/graphics/Paint;

    .line 67
    iget-object v0, p0, Lcom/jellybus/fx_sub/PaintView;->brushPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 68
    iget-object v0, p0, Lcom/jellybus/fx_sub/PaintView;->brushPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 69
    iget-object v0, p0, Lcom/jellybus/fx_sub/PaintView;->brushPaint:Landroid/graphics/Paint;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    iget-object v0, p0, Lcom/jellybus/fx_sub/PaintView;->brushPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 71
    iget-object v0, p0, Lcom/jellybus/fx_sub/PaintView;->brushPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 72
    iget-object v0, p0, Lcom/jellybus/fx_sub/PaintView;->brushPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 73
    iget-object v0, p0, Lcom/jellybus/fx_sub/PaintView;->brushPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4140

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 74
    return-void
.end method

.method protected onDoubleTapPost(FF)F
    .locals 2
    .parameter "scale"
    .parameter "maxZoom"

    .prologue
    const/4 v1, 0x1

    .line 161
    iget v0, p0, Lcom/jellybus/fx_sub/PaintView;->mDoubleTapDirection:I

    if-ne v0, v1, :cond_1

    .line 162
    iget v0, p0, Lcom/jellybus/fx_sub/PaintView;->mScaleFactor:F

    const/high16 v1, 0x4000

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_0

    .line 163
    iget v0, p0, Lcom/jellybus/fx_sub/PaintView;->mScaleFactor:F

    add-float p2, p1, v0

    .line 170
    .end local p2
    :goto_0
    return p2

    .line 165
    .restart local p2
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/jellybus/fx_sub/PaintView;->mDoubleTapDirection:I

    goto :goto_0

    .line 169
    :cond_1
    iput v1, p0, Lcom/jellybus/fx_sub/PaintView;->mDoubleTapDirection:I

    .line 170
    const/high16 p2, 0x3f80

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 256
    invoke-super {p0, p1}, Lcom/jellybus/fx_sub/PaintController;->onDraw(Landroid/graphics/Canvas;)V

    .line 275
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/high16 v4, 0x3f80

    .line 86
    iget-object v3, p0, Lcom/jellybus/fx_sub/PaintView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 87
    iget-object v3, p0, Lcom/jellybus/fx_sub/PaintView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v3}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/jellybus/fx_sub/PaintView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 88
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 89
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 90
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 91
    .local v2, y:F
    and-int/lit16 v3, v0, 0xff

    packed-switch v3, :pswitch_data_0

    .line 111
    :goto_0
    :pswitch_0
    const/4 v3, 0x1

    return v3

    .line 93
    :pswitch_1
    invoke-direct {p0, v1, v2}, Lcom/jellybus/fx_sub/PaintView;->touch_start(FF)V

    .line 94
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/PaintView;->invalidate()V

    goto :goto_0

    .line 100
    :pswitch_2
    invoke-direct {p0, v1, v2}, Lcom/jellybus/fx_sub/PaintView;->touch_move(FF)V

    .line 101
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/PaintView;->invalidate()V

    goto :goto_0

    .line 104
    :pswitch_3
    invoke-direct {p0}, Lcom/jellybus/fx_sub/PaintView;->touch_up()V

    .line 105
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/PaintView;->getScale()F

    move-result v3

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 106
    const/high16 v3, 0x4248

    invoke-virtual {p0, v4, v3}, Lcom/jellybus/fx_sub/PaintView;->zoomTo(FF)V

    .line 108
    :cond_1
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/PaintView;->invalidate()V

    goto :goto_0

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onZoom(F)V
    .locals 1
    .parameter "scale"

    .prologue
    .line 155
    invoke-super {p0, p1}, Lcom/jellybus/fx_sub/PaintController;->onZoom(F)V

    .line 156
    iget-object v0, p0, Lcom/jellybus/fx_sub/PaintView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    iput p1, p0, Lcom/jellybus/fx_sub/PaintView;->mCurrentScaleFactor:F

    .line 157
    :cond_0
    return-void
.end method

.method public setImageAllBitmapReset(Lcom/jellybus/fx_sub/PaintBitmap;Z)V
    .locals 2
    .parameter "bitmap"
    .parameter "reset"

    .prologue
    .line 79
    invoke-super {p0, p1, p2}, Lcom/jellybus/fx_sub/PaintController;->setImageAllBitmapReset(Lcom/jellybus/fx_sub/PaintBitmap;Z)V

    .line 80
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/PaintView;->getMaxZoom()F

    move-result v0

    const/high16 v1, 0x4040

    div-float/2addr v0, v1

    iput v0, p0, Lcom/jellybus/fx_sub/PaintView;->mScaleFactor:F

    .line 81
    return-void
.end method
