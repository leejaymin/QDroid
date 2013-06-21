.class public Lcom/jellybus/fx_sub/CropViewController;
.super Landroid/view/View;
.source "CropViewController.java"


# static fields
.field private static final TOUCH_TOLERANCE:F = 30.0f


# instance fields
.field private final BOTTOM:I

.field private final LEFT:I

.field private MIN_SIZE:F

.field private final RIGHT:I

.field private final TOP:I

.field private crop_sub_layout:Landroid/view/View;

.field private height:I

.field private isRatioMode:Z

.field private isSubOn:Z

.field private isViewSet:Z

.field private isWidthBigRatio:Z

.field private mCenter:Landroid/graphics/PointF;

.field private mDrag:[Z

.field private mRect:Landroid/graphics/RectF;

.field private pointsSet:Z

.field private ratio:F

.field private ratio_minH:F

.field private ratio_minW:F

.field private selectedLine:I

.field private startRectXY:Landroid/graphics/PointF;

.field private startXY:Landroid/graphics/PointF;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "c"

    .prologue
    const/4 v1, 0x1

    .line 50
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 18
    const/high16 v0, 0x4248

    iput v0, p0, Lcom/jellybus/fx_sub/CropViewController;->MIN_SIZE:F

    .line 20
    const/4 v0, 0x5

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/jellybus/fx_sub/CropViewController;->mDrag:[Z

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jellybus/fx_sub/CropViewController;->pointsSet:Z

    .line 30
    iput-boolean v1, p0, Lcom/jellybus/fx_sub/CropViewController;->isSubOn:Z

    .line 32
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/jellybus/fx_sub/CropViewController;->startXY:Landroid/graphics/PointF;

    .line 33
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/jellybus/fx_sub/CropViewController;->startRectXY:Landroid/graphics/PointF;

    .line 38
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/jellybus/fx_sub/CropViewController;->ratio:F

    .line 41
    iput v1, p0, Lcom/jellybus/fx_sub/CropViewController;->LEFT:I

    .line 42
    const/4 v0, 0x2

    iput v0, p0, Lcom/jellybus/fx_sub/CropViewController;->TOP:I

    .line 43
    const/4 v0, 0x3

    iput v0, p0, Lcom/jellybus/fx_sub/CropViewController;->RIGHT:I

    .line 44
    const/4 v0, 0x4

    iput v0, p0, Lcom/jellybus/fx_sub/CropViewController;->BOTTOM:I

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "c"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x1

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/high16 v0, 0x4248

    iput v0, p0, Lcom/jellybus/fx_sub/CropViewController;->MIN_SIZE:F

    .line 20
    const/4 v0, 0x5

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/jellybus/fx_sub/CropViewController;->mDrag:[Z

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jellybus/fx_sub/CropViewController;->pointsSet:Z

    .line 30
    iput-boolean v1, p0, Lcom/jellybus/fx_sub/CropViewController;->isSubOn:Z

    .line 32
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/jellybus/fx_sub/CropViewController;->startXY:Landroid/graphics/PointF;

    .line 33
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/jellybus/fx_sub/CropViewController;->startRectXY:Landroid/graphics/PointF;

    .line 38
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/jellybus/fx_sub/CropViewController;->ratio:F

    .line 41
    iput v1, p0, Lcom/jellybus/fx_sub/CropViewController;->LEFT:I

    .line 42
    const/4 v0, 0x2

    iput v0, p0, Lcom/jellybus/fx_sub/CropViewController;->TOP:I

    .line 43
    const/4 v0, 0x3

    iput v0, p0, Lcom/jellybus/fx_sub/CropViewController;->RIGHT:I

    .line 44
    const/4 v0, 0x4

    iput v0, p0, Lcom/jellybus/fx_sub/CropViewController;->BOTTOM:I

    .line 55
    return-void
.end method

.method private checkCenter(FF)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 191
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/jellybus/fx_sub/CropViewController;->mDrag:[Z

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 196
    invoke-direct {p0, p1, p2}, Lcom/jellybus/fx_sub/CropViewController;->isInCenterBoundaries(FF)Z

    move-result v1

    :goto_1
    return v1

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/jellybus/fx_sub/CropViewController;->mDrag:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    .line 193
    const/4 v1, 0x0

    goto :goto_1

    .line 191
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private interceptSide(FFF)Z
    .locals 1
    .parameter "side"
    .parameter "a"
    .parameter "margin"

    .prologue
    .line 186
    sub-float v0, p1, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p3

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInBoundariesX(FFF)Z
    .locals 1
    .parameter "left"
    .parameter "right"
    .parameter "margin"

    .prologue
    .line 206
    cmpl-float v0, p1, p3

    if-lez v0, :cond_0

    iget v0, p0, Lcom/jellybus/fx_sub/CropViewController;->width:I

    int-to-float v0, v0

    sub-float/2addr v0, p3

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInBoundariesY(FFF)Z
    .locals 1
    .parameter "top"
    .parameter "bottom"
    .parameter "margin"

    .prologue
    .line 210
    cmpl-float v0, p1, p3

    if-lez v0, :cond_0

    iget v0, p0, Lcom/jellybus/fx_sub/CropViewController;->height:I

    int-to-float v0, v0

    sub-float/2addr v0, p3

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInCenterBoundaries(FF)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, p2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maxSizeLT()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 466
    iget-object v1, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_0

    .line 467
    iget-object v1, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iput v3, v1, Landroid/graphics/RectF;->left:F

    .line 468
    iget-boolean v1, p0, Lcom/jellybus/fx_sub/CropViewController;->isWidthBigRatio:Z

    if-eqz v1, :cond_2

    .line 469
    iget-object v1, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/jellybus/fx_sub/CropViewController;->ratio:F

    div-float v0, v1, v2

    .line 470
    .local v0, value:F
    iget-object v1, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 476
    .end local v0           #value:F
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_1

    .line 477
    iget-object v1, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iput v3, v1, Landroid/graphics/RectF;->top:F

    .line 478
    iget-boolean v1, p0, Lcom/jellybus/fx_sub/CropViewController;->isWidthBigRatio:Z

    if-eqz v1, :cond_3

    .line 479
    iget-object v1, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/jellybus/fx_sub/CropViewController;->ratio:F

    mul-float v0, v1, v2

    .line 480
    .restart local v0       #value:F
    iget-object v1, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 486
    .end local v0           #value:F
    :cond_1
    :goto_1
    return-void

    .line 472
    :cond_2
    iget-object v1, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/jellybus/fx_sub/CropViewController;->ratio:F

    mul-float v0, v1, v2

    .line 473
    .restart local v0       #value:F
    iget-object v1, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->top:F

    goto :goto_0

    .line 482
    .end local v0           #value:F
    :cond_3
    iget-object v1, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/jellybus/fx_sub/CropViewController;->ratio:F

    div-float v0, v1, v2

    .line 483
    .restart local v0       #value:F
    iget-object v1, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->left:F

    goto :goto_1
.end method

.method private maxSizeRB()V
    .locals 3

    .prologue
    .line 490
    iget-object v1, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/jellybus/fx_sub/CropViewController;->width:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 491
    iget-object v1, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/jellybus/fx_sub/CropViewController;->width:I

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 492
    iget-boolean v1, p0, Lcom/jellybus/fx_sub/CropViewController;->isWidthBigRatio:Z

    if-eqz v1, :cond_2

    .line 493
    iget-object v1, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p0, Lcom/jellybus/fx_sub/CropViewController;->ratio:F

    div-float v0, v1, v2

    .line 494
    .local v0, value:F
    iget-object v1, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 500
    .end local v0           #value:F
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/jellybus/fx_sub/CropViewController;->height:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 501
    iget-object v1, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/jellybus/fx_sub/CropViewController;->height:I

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 502
    iget-boolean v1, p0, Lcom/jellybus/fx_sub/CropViewController;->isWidthBigRatio:Z

    if-eqz v1, :cond_3

    .line 503
    iget-object v1, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v2, p0, Lcom/jellybus/fx_sub/CropViewController;->ratio:F

    mul-float v0, v1, v2

    .line 504
    .restart local v0       #value:F
    iget-object v1, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 510
    .end local v0           #value:F
    :cond_1
    :goto_1
    return-void

    .line 496
    :cond_2
    iget-object v1, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p0, Lcom/jellybus/fx_sub/CropViewController;->ratio:F

    mul-float v0, v1, v2

    .line 497
    .restart local v0       #value:F
    iget-object v1, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    .line 506
    .end local v0           #value:F
    :cond_3
    iget-object v1, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v2, p0, Lcom/jellybus/fx_sub/CropViewController;->ratio:F

    div-float v0, v1, v2

    .line 507
    .restart local v0       #value:F
    iget-object v1, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->right:F

    goto :goto_1
.end method

.method private resetMinSize(F)V
    .locals 2
    .parameter "f"

    .prologue
    const/high16 v1, 0x4000

    .line 133
    iget v0, p0, Lcom/jellybus/fx_sub/CropViewController;->MIN_SIZE:F

    mul-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 134
    div-float v0, p1, v1

    iput v0, p0, Lcom/jellybus/fx_sub/CropViewController;->MIN_SIZE:F

    .line 135
    :cond_0
    return-void
.end method

.method private selectLine(FF)V
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/high16 v3, 0x4000

    .line 217
    iget-object v0, p0, Lcom/jellybus/fx_sub/CropViewController;->mDrag:[Z

    aget-boolean v0, v0, v4

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    const/high16 v1, 0x41f0

    invoke-direct {p0, v0, p1, v1}, Lcom/jellybus/fx_sub/CropViewController;->interceptSide(FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/jellybus/fx_sub/CropViewController;->mDrag:[Z

    aput-boolean v4, v0, v4

    .line 219
    iget-object v0, p0, Lcom/jellybus/fx_sub/CropViewController;->startRectXY:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0, v1, v7}, Landroid/graphics/PointF;->set(FF)V

    .line 220
    iget-boolean v0, p0, Lcom/jellybus/fx_sub/CropViewController;->isRatioMode:Z

    if-eqz v0, :cond_0

    .line 222
    iput v4, p0, Lcom/jellybus/fx_sub/CropViewController;->selectedLine:I

    .line 224
    iget-object v0, p0, Lcom/jellybus/fx_sub/CropViewController;->startRectXY:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 225
    iget-boolean v0, p0, Lcom/jellybus/fx_sub/CropViewController;->isWidthBigRatio:Z

    if-eqz v0, :cond_5

    .line 226
    iget v0, p0, Lcom/jellybus/fx_sub/CropViewController;->MIN_SIZE:F

    mul-float/2addr v0, v3

    iget v1, p0, Lcom/jellybus/fx_sub/CropViewController;->ratio:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jellybus/fx_sub/CropViewController;->ratio_minW:F

    .line 227
    iget v0, p0, Lcom/jellybus/fx_sub/CropViewController;->MIN_SIZE:F

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/jellybus/fx_sub/CropViewController;->ratio_minH:F

    .line 235
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/jellybus/fx_sub/CropViewController;->mDrag:[Z

    aget-boolean v0, v0, v5

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    const/high16 v1, 0x41f0

    invoke-direct {p0, v0, p2, v1}, Lcom/jellybus/fx_sub/CropViewController;->interceptSide(FFF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/jellybus/fx_sub/CropViewController;->mDrag:[Z

    aput-boolean v4, v0, v5

    .line 237
    iget-object v0, p0, Lcom/jellybus/fx_sub/CropViewController;->startRectXY:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v7, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 238
    iget-boolean v0, p0, Lcom/jellybus/fx_sub/CropViewController;->isRatioMode:Z

    if-eqz v0, :cond_1

    .line 239
    iput v5, p0, Lcom/jellybus/fx_sub/CropViewController;->selectedLine:I

    .line 240
    iget-object v0, p0, Lcom/jellybus/fx_sub/CropViewController;->startRectXY:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 241
    iget-boolean v0, p0, Lcom/jellybus/fx_sub/CropViewController;->isWidthBigRatio:Z

    if-eqz v0, :cond_6

    .line 242
    iget v0, p0, Lcom/jellybus/fx_sub/CropViewController;->MIN_SIZE:F

    mul-float/2addr v0, v3

    iget v1, p0, Lcom/jellybus/fx_sub/CropViewController;->ratio:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jellybus/fx_sub/CropViewController;->ratio_minW:F

    .line 243
    iget v0, p0, Lcom/jellybus/fx_sub/CropViewController;->MIN_SIZE:F

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/jellybus/fx_sub/CropViewController;->ratio_minH:F

    .line 251
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/jellybus/fx_sub/CropViewController;->mDrag:[Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    const/high16 v1, 0x41f0

    invoke-direct {p0, v0, p1, v1}, Lcom/jellybus/fx_sub/CropViewController;->interceptSide(FFF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 252
    iget-object v0, p0, Lcom/jellybus/fx_sub/CropViewController;->mDrag:[Z

    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    .line 253
    iget-object v0, p0, Lcom/jellybus/fx_sub/CropViewController;->startRectXY:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0, v1, v7}, Landroid/graphics/PointF;->set(FF)V

    .line 254
    iget-boolean v0, p0, Lcom/jellybus/fx_sub/CropViewController;->isRatioMode:Z

    if-eqz v0, :cond_2

    .line 255
    const/4 v0, 0x3

    iput v0, p0, Lcom/jellybus/fx_sub/CropViewController;->selectedLine:I

    .line 256
    iget-object v0, p0, Lcom/jellybus/fx_sub/CropViewController;->startRectXY:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 257
    iget-boolean v0, p0, Lcom/jellybus/fx_sub/CropViewController;->isWidthBigRatio:Z

    if-eqz v0, :cond_7

    .line 258
    iget v0, p0, Lcom/jellybus/fx_sub/CropViewController;->MIN_SIZE:F

    mul-float/2addr v0, v3

    iget v1, p0, Lcom/jellybus/fx_sub/CropViewController;->ratio:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jellybus/fx_sub/CropViewController;->ratio_minW:F

    .line 259
    iget v0, p0, Lcom/jellybus/fx_sub/CropViewController;->MIN_SIZE:F

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/jellybus/fx_sub/CropViewController;->ratio_minH:F

    .line 267
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/jellybus/fx_sub/CropViewController;->mDrag:[Z

    aget-boolean v0, v0, v6

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    const/high16 v1, 0x41f0

    invoke-direct {p0, v0, p2, v1}, Lcom/jellybus/fx_sub/CropViewController;->interceptSide(FFF)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 268
    iget-object v0, p0, Lcom/jellybus/fx_sub/CropViewController;->mDrag:[Z

    aput-boolean v4, v0, v6

    .line 269
    iget-object v0, p0, Lcom/jellybus/fx_sub/CropViewController;->startRectXY:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v7, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 270
    iget-boolean v0, p0, Lcom/jellybus/fx_sub/CropViewController;->isRatioMode:Z

    if-eqz v0, :cond_3

    .line 271
    iput v6, p0, Lcom/jellybus/fx_sub/CropViewController;->selectedLine:I

    .line 272
    iget-object v0, p0, Lcom/jellybus/fx_sub/CropViewController;->startRectXY:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 273
    iget-boolean v0, p0, Lcom/jellybus/fx_sub/CropViewController;->isWidthBigRatio:Z

    if-eqz v0, :cond_8

    .line 274
    iget v0, p0, Lcom/jellybus/fx_sub/CropViewController;->MIN_SIZE:F

    mul-float/2addr v0, v3

    iget v1, p0, Lcom/jellybus/fx_sub/CropViewController;->ratio:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jellybus/fx_sub/CropViewController;->ratio_minW:F

    .line 275
    iget v0, p0, Lcom/jellybus/fx_sub/CropViewController;->MIN_SIZE:F

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/jellybus/fx_sub/CropViewController;->ratio_minH:F

    .line 284
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/jellybus/fx_sub/CropViewController;->mDrag:[Z

    aget-boolean v0, v0, v4

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/jellybus/fx_sub/CropViewController;->mDrag:[Z

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_9

    .line 285
    iget-object v0, p0, Lcom/jellybus/fx_sub/CropViewController;->startRectXY:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 319
    :cond_4
    :goto_4
    return-void

    .line 229
    :cond_5
    iget v0, p0, Lcom/jellybus/fx_sub/CropViewController;->MIN_SIZE:F

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/jellybus/fx_sub/CropViewController;->ratio_minW:F

    .line 230
    iget v0, p0, Lcom/jellybus/fx_sub/CropViewController;->MIN_SIZE:F

    mul-float/2addr v0, v3

    iget v1, p0, Lcom/jellybus/fx_sub/CropViewController;->ratio:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jellybus/fx_sub/CropViewController;->ratio_minH:F

    goto/16 :goto_0

    .line 245
    :cond_6
    iget v0, p0, Lcom/jellybus/fx_sub/CropViewController;->MIN_SIZE:F

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/jellybus/fx_sub/CropViewController;->ratio_minW:F

    .line 246
    iget v0, p0, Lcom/jellybus/fx_sub/CropViewController;->MIN_SIZE:F

    mul-float/2addr v0, v3

    iget v1, p0, Lcom/jellybus/fx_sub/CropViewController;->ratio:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jellybus/fx_sub/CropViewController;->ratio_minH:F

    goto/16 :goto_1

    .line 261
    :cond_7
    iget v0, p0, Lcom/jellybus/fx_sub/CropViewController;->MIN_SIZE:F

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/jellybus/fx_sub/CropViewController;->ratio_minW:F

    .line 262
    iget v0, p0, Lcom/jellybus/fx_sub/CropViewController;->MIN_SIZE:F

    mul-float/2addr v0, v3

    iget v1, p0, Lcom/jellybus/fx_sub/CropViewController;->ratio:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jellybus/fx_sub/CropViewController;->ratio_minH:F

    goto/16 :goto_2

    .line 277
    :cond_8
    iget v0, p0, Lcom/jellybus/fx_sub/CropViewController;->MIN_SIZE:F

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/jellybus/fx_sub/CropViewController;->ratio_minW:F

    .line 278
    iget v0, p0, Lcom/jellybus/fx_sub/CropViewController;->MIN_SIZE:F

    mul-float/2addr v0, v3

    iget v1, p0, Lcom/jellybus/fx_sub/CropViewController;->ratio:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jellybus/fx_sub/CropViewController;->ratio_minH:F

    goto :goto_3

    .line 289
    :cond_9
    iget-object v0, p0, Lcom/jellybus/fx_sub/CropViewController;->mDrag:[Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/jellybus/fx_sub/CropViewController;->mDrag:[Z

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_a

    .line 290
    iget-object v0, p0, Lcom/jellybus/fx_sub/CropViewController;->startRectXY:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 291
    iget-boolean v0, p0, Lcom/jellybus/fx_sub/CropViewController;->isRatioMode:Z

    if-eqz v0, :cond_4

    .line 293
    iget-object v0, p0, Lcom/jellybus/fx_sub/CropViewController;->startRectXY:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0, v1, v7}, Landroid/graphics/PointF;->set(FF)V

    .line 294
    iget-object v0, p0, Lcom/jellybus/fx_sub/CropViewController;->startRectXY:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 296
    iget-object v0, p0, Lcom/jellybus/fx_sub/CropViewController;->mDrag:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v5

    .line 297
    iget-object v0, p0, Lcom/jellybus/fx_sub/CropViewController;->mDrag:[Z

    aput-boolean v4, v0, v6

    .line 298
    const/4 v0, 0x3

    iput v0, p0, Lcom/jellybus/fx_sub/CropViewController;->selectedLine:I

    goto :goto_4

    .line 303
    :cond_a
    iget-object v0, p0, Lcom/jellybus/fx_sub/CropViewController;->mDrag:[Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/jellybus/fx_sub/CropViewController;->mDrag:[Z

    aget-boolean v0, v0, v6

    if-eqz v0, :cond_b

    .line 304
    iget-object v0, p0, Lcom/jellybus/fx_sub/CropViewController;->startRectXY:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_4

    .line 308
    :cond_b
    iget-object v0, p0, Lcom/jellybus/fx_sub/CropViewController;->mDrag:[Z

    aget-boolean v0, v0, v4

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/jellybus/fx_sub/CropViewController;->mDrag:[Z

    aget-boolean v0, v0, v6

    if-eqz v0, :cond_4

    .line 309
    iget-object v0, p0, Lcom/jellybus/fx_sub/CropViewController;->startRectXY:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 310
    iget-boolean v0, p0, Lcom/jellybus/fx_sub/CropViewController;->isRatioMode:Z

    if-eqz v0, :cond_4

    .line 311
    iget-object v0, p0, Lcom/jellybus/fx_sub/CropViewController;->startRectXY:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0, v1, v7}, Landroid/graphics/PointF;->set(FF)V

    .line 312
    iget-object v0, p0, Lcom/jellybus/fx_sub/CropViewController;->startRectXY:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 313
    iget-object v0, p0, Lcom/jellybus/fx_sub/CropViewController;->mDrag:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v6

    .line 314
    iget-object v0, p0, Lcom/jellybus/fx_sub/CropViewController;->mDrag:[Z

    aput-boolean v4, v0, v5

    .line 315
    iput v4, p0, Lcom/jellybus/fx_sub/CropViewController;->selectedLine:I

    goto/16 :goto_4
.end method

.method private setPoints()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 107
    sget v0, Lcom/jellybus/fx_sub/PictureController;->viewType:I

    if-eq v0, v6, :cond_0

    sget v0, Lcom/jellybus/fx_sub/PictureController;->viewType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 109
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/jellybus/fx_sub/CropViewController;->width:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/jellybus/fx_sub/CropViewController;->height:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x8

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/jellybus/fx_sub/CropViewController;->height:I

    div-int/lit8 v2, v2, 0x8

    int-to-float v2, v2

    iget v3, p0, Lcom/jellybus/fx_sub/CropViewController;->width:I

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/jellybus/fx_sub/CropViewController;->height:I

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/jellybus/fx_sub/CropViewController;->height:I

    mul-int/lit8 v4, v4, 0x7

    div-int/lit8 v4, v4, 0x8

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    .line 110
    iget-object v0, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/jellybus/fx_sub/CropViewController;->resetMinSize(F)V

    .line 116
    :goto_0
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/jellybus/fx_sub/CropViewController;->mCenter:Landroid/graphics/PointF;

    .line 117
    iput-boolean v6, p0, Lcom/jellybus/fx_sub/CropViewController;->pointsSet:Z

    .line 118
    return-void

    .line 113
    :cond_1
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/jellybus/fx_sub/CropViewController;->width:I

    div-int/lit8 v1, v1, 0x8

    int-to-float v1, v1

    iget v2, p0, Lcom/jellybus/fx_sub/CropViewController;->height:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/jellybus/fx_sub/CropViewController;->width:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x8

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/jellybus/fx_sub/CropViewController;->width:I

    mul-int/lit8 v3, v3, 0x7

    div-int/lit8 v3, v3, 0x8

    int-to-float v3, v3

    iget v4, p0, Lcom/jellybus/fx_sub/CropViewController;->height:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/jellybus/fx_sub/CropViewController;->width:I

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x8

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    .line 114
    iget-object v0, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/jellybus/fx_sub/CropViewController;->resetMinSize(F)V

    goto :goto_0
.end method

.method private touchMove(FF)V
    .locals 10
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x4000

    .line 325
    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->mDrag:[Z

    const/4 v4, 0x0

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_3

    .line 326
    new-instance v0, Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/jellybus/fx_sub/CropViewController;->startXY:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float v4, p1, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/jellybus/fx_sub/CropViewController;->startXY:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float v5, p1, v5

    add-float/2addr v4, v5

    invoke-direct {v0, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 327
    .local v0, moveX:Landroid/graphics/PointF;
    new-instance v1, Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/jellybus/fx_sub/CropViewController;->startXY:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float v4, p2, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/jellybus/fx_sub/CropViewController;->startXY:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float v5, p2, v5

    add-float/2addr v4, v5

    invoke-direct {v1, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 329
    .local v1, moveY:Landroid/graphics/PointF;
    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v3, v4, v7}, Lcom/jellybus/fx_sub/CropViewController;->isInBoundariesX(FFF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 330
    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iput v4, v3, Landroid/graphics/RectF;->left:F

    .line 331
    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/PointF;->y:F

    iput v4, v3, Landroid/graphics/RectF;->right:F

    .line 334
    :cond_0
    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v4, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v3, v4, v7}, Lcom/jellybus/fx_sub/CropViewController;->isInBoundariesY(FFF)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 335
    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iput v4, v3, Landroid/graphics/RectF;->top:F

    .line 336
    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v4, v1, Landroid/graphics/PointF;->y:F

    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    .line 339
    :cond_1
    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->startXY:Landroid/graphics/PointF;

    invoke-virtual {v3, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 461
    .end local v0           #moveX:Landroid/graphics/PointF;
    .end local v1           #moveY:Landroid/graphics/PointF;
    :cond_2
    :goto_0
    return-void

    .line 346
    :cond_3
    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->startXY:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float v0, p1, v3

    .line 347
    .local v0, moveX:F
    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->startXY:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float v1, p2, v3

    .line 349
    .local v1, moveY:F
    iget-boolean v3, p0, Lcom/jellybus/fx_sub/CropViewController;->isRatioMode:Z

    if-eqz v3, :cond_5

    .line 350
    iget v3, p0, Lcom/jellybus/fx_sub/CropViewController;->selectedLine:I

    if-eq v3, v5, :cond_4

    iget v3, p0, Lcom/jellybus/fx_sub/CropViewController;->selectedLine:I

    if-ne v3, v9, :cond_b

    .line 352
    :cond_4
    iget-boolean v3, p0, Lcom/jellybus/fx_sub/CropViewController;->isWidthBigRatio:Z

    if-eqz v3, :cond_a

    .line 353
    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    add-float v2, v3, v0

    .line 354
    .local v2, value:F
    iget v3, p0, Lcom/jellybus/fx_sub/CropViewController;->ratio:F

    div-float/2addr v2, v3

    .line 355
    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float v1, v2, v3

    .line 380
    .end local v2           #value:F
    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->mDrag:[Z

    aget-boolean v3, v3, v5

    if-eqz v3, :cond_6

    .line 381
    iget-boolean v3, p0, Lcom/jellybus/fx_sub/CropViewController;->isRatioMode:Z

    if-eqz v3, :cond_e

    .line 383
    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/jellybus/fx_sub/CropViewController;->startRectXY:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v0

    iput v4, v3, Landroid/graphics/RectF;->left:F

    .line 384
    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/jellybus/fx_sub/CropViewController;->startRectXY:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, v1

    iput v4, v3, Landroid/graphics/RectF;->top:F

    .line 386
    invoke-direct {p0}, Lcom/jellybus/fx_sub/CropViewController;->maxSizeLT()V

    .line 388
    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/jellybus/fx_sub/CropViewController;->ratio_minW:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6

    .line 389
    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget v5, p0, Lcom/jellybus/fx_sub/CropViewController;->ratio_minW:F

    sub-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->left:F

    .line 390
    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Lcom/jellybus/fx_sub/CropViewController;->ratio_minH:F

    sub-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->top:F

    .line 401
    :cond_6
    :goto_2
    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->mDrag:[Z

    aget-boolean v3, v3, v8

    if-eqz v3, :cond_7

    .line 402
    iget-boolean v3, p0, Lcom/jellybus/fx_sub/CropViewController;->isRatioMode:Z

    if-eqz v3, :cond_10

    .line 403
    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/jellybus/fx_sub/CropViewController;->startRectXY:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v0

    iput v4, v3, Landroid/graphics/RectF;->left:F

    .line 404
    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/jellybus/fx_sub/CropViewController;->startRectXY:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, v1

    iput v4, v3, Landroid/graphics/RectF;->top:F

    .line 405
    invoke-direct {p0}, Lcom/jellybus/fx_sub/CropViewController;->maxSizeLT()V

    .line 406
    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/jellybus/fx_sub/CropViewController;->ratio_minH:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_7

    .line 407
    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Lcom/jellybus/fx_sub/CropViewController;->ratio_minH:F

    sub-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->top:F

    .line 408
    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget v5, p0, Lcom/jellybus/fx_sub/CropViewController;->ratio_minW:F

    sub-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->left:F

    .line 419
    :cond_7
    :goto_3
    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->mDrag:[Z

    aget-boolean v3, v3, v9

    if-eqz v3, :cond_8

    .line 420
    iget-boolean v3, p0, Lcom/jellybus/fx_sub/CropViewController;->isRatioMode:Z

    if-eqz v3, :cond_12

    .line 421
    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/jellybus/fx_sub/CropViewController;->startRectXY:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v0

    iput v4, v3, Landroid/graphics/RectF;->right:F

    .line 422
    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/jellybus/fx_sub/CropViewController;->startRectXY:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, v1

    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    .line 423
    invoke-direct {p0}, Lcom/jellybus/fx_sub/CropViewController;->maxSizeRB()V

    .line 424
    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/jellybus/fx_sub/CropViewController;->ratio_minW:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_8

    .line 425
    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, p0, Lcom/jellybus/fx_sub/CropViewController;->ratio_minW:F

    add-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->right:F

    .line 426
    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, p0, Lcom/jellybus/fx_sub/CropViewController;->ratio_minH:F

    add-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    .line 438
    :cond_8
    :goto_4
    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->mDrag:[Z

    const/4 v4, 0x4

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_9

    .line 439
    iget-boolean v3, p0, Lcom/jellybus/fx_sub/CropViewController;->isRatioMode:Z

    if-eqz v3, :cond_14

    .line 440
    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/jellybus/fx_sub/CropViewController;->startRectXY:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v0

    iput v4, v3, Landroid/graphics/RectF;->right:F

    .line 441
    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/jellybus/fx_sub/CropViewController;->startRectXY:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, v1

    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    .line 442
    invoke-direct {p0}, Lcom/jellybus/fx_sub/CropViewController;->maxSizeRB()V

    .line 443
    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/jellybus/fx_sub/CropViewController;->ratio_minH:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_9

    .line 444
    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, p0, Lcom/jellybus/fx_sub/CropViewController;->ratio_minW:F

    add-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->right:F

    .line 445
    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, p0, Lcom/jellybus/fx_sub/CropViewController;->ratio_minH:F

    add-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    .line 458
    :cond_9
    :goto_5
    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/jellybus/fx_sub/CropViewController;->mCenter:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/jellybus/fx_sub/CropViewController;->mCenter:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-nez v3, :cond_2

    .line 459
    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->mCenter:Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v5, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_0

    .line 357
    :cond_a
    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    add-float v2, v3, v0

    .line 358
    .restart local v2       #value:F
    iget v3, p0, Lcom/jellybus/fx_sub/CropViewController;->ratio:F

    mul-float/2addr v2, v3

    .line 359
    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float v1, v2, v3

    goto/16 :goto_1

    .line 361
    .end local v2           #value:F
    :cond_b
    iget v3, p0, Lcom/jellybus/fx_sub/CropViewController;->selectedLine:I

    if-eq v3, v8, :cond_c

    iget v3, p0, Lcom/jellybus/fx_sub/CropViewController;->selectedLine:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    .line 363
    :cond_c
    iget-boolean v3, p0, Lcom/jellybus/fx_sub/CropViewController;->isWidthBigRatio:Z

    if-eqz v3, :cond_d

    .line 364
    move v0, v1

    .line 365
    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    add-float v2, v3, v1

    .line 366
    .restart local v2       #value:F
    iget v3, p0, Lcom/jellybus/fx_sub/CropViewController;->ratio:F

    mul-float/2addr v2, v3

    .line 367
    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float v0, v2, v3

    goto/16 :goto_1

    .line 369
    .end local v2           #value:F
    :cond_d
    move v0, v1

    .line 370
    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    add-float v2, v3, v1

    .line 371
    .restart local v2       #value:F
    iget v3, p0, Lcom/jellybus/fx_sub/CropViewController;->ratio:F

    div-float/2addr v2, v3

    .line 372
    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float v0, v2, v3

    goto/16 :goto_1

    .line 393
    .end local v2           #value:F
    :cond_e
    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/jellybus/fx_sub/CropViewController;->startRectXY:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v0

    iput v4, v3, Landroid/graphics/RectF;->left:F

    .line 394
    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    cmpg-float v3, v3, v7

    if-gtz v3, :cond_f

    .line 395
    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iput v7, v3, Landroid/graphics/RectF;->left:F

    .line 396
    :cond_f
    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/jellybus/fx_sub/CropViewController;->MIN_SIZE:F

    mul-float/2addr v4, v6

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6

    .line 397
    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget v5, p0, Lcom/jellybus/fx_sub/CropViewController;->MIN_SIZE:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->left:F

    goto/16 :goto_2

    .line 411
    :cond_10
    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/jellybus/fx_sub/CropViewController;->startRectXY:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, v1

    iput v4, v3, Landroid/graphics/RectF;->top:F

    .line 412
    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    cmpg-float v3, v3, v7

    if-gtz v3, :cond_11

    .line 413
    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iput v7, v3, Landroid/graphics/RectF;->top:F

    .line 414
    :cond_11
    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/jellybus/fx_sub/CropViewController;->MIN_SIZE:F

    mul-float/2addr v4, v6

    cmpg-float v3, v3, v4

    if-gez v3, :cond_7

    .line 415
    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Lcom/jellybus/fx_sub/CropViewController;->MIN_SIZE:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->top:F

    goto/16 :goto_3

    .line 429
    :cond_12
    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/jellybus/fx_sub/CropViewController;->startRectXY:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v0

    iput v4, v3, Landroid/graphics/RectF;->right:F

    .line 431
    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/jellybus/fx_sub/CropViewController;->width:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_13

    .line 432
    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v4, p0, Lcom/jellybus/fx_sub/CropViewController;->width:I

    int-to-float v4, v4

    iput v4, v3, Landroid/graphics/RectF;->right:F

    .line 433
    :cond_13
    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/jellybus/fx_sub/CropViewController;->MIN_SIZE:F

    mul-float/2addr v4, v6

    cmpg-float v3, v3, v4

    if-gez v3, :cond_8

    .line 434
    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, p0, Lcom/jellybus/fx_sub/CropViewController;->MIN_SIZE:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->right:F

    goto/16 :goto_4

    .line 448
    :cond_14
    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/jellybus/fx_sub/CropViewController;->startRectXY:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, v1

    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    .line 450
    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/jellybus/fx_sub/CropViewController;->height:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_15

    .line 451
    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v4, p0, Lcom/jellybus/fx_sub/CropViewController;->height:I

    int-to-float v4, v4

    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    .line 452
    :cond_15
    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/jellybus/fx_sub/CropViewController;->MIN_SIZE:F

    mul-float/2addr v4, v6

    cmpg-float v3, v3, v4

    if-gez v3, :cond_9

    .line 453
    iget-object v3, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, p0, Lcom/jellybus/fx_sub/CropViewController;->MIN_SIZE:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_5
.end method

.method private touchUp()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 177
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/jellybus/fx_sub/CropViewController;->mDrag:[Z

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/jellybus/fx_sub/CropViewController;->startXY:Landroid/graphics/PointF;

    invoke-virtual {v1, v3, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 181
    iget-object v1, p0, Lcom/jellybus/fx_sub/CropViewController;->startRectXY:Landroid/graphics/PointF;

    invoke-virtual {v1, v3, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 182
    return-void

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/jellybus/fx_sub/CropViewController;->mDrag:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getMinSize()F
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/jellybus/fx_sub/CropViewController;->MIN_SIZE:F

    return v0
.end method

.method public getRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jellybus/fx_sub/CropViewController;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jellybus/fx_sub/CropViewController;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/high16 v6, 0x40a0

    const/4 v1, 0x0

    .line 529
    iget-boolean v0, p0, Lcom/jellybus/fx_sub/CropViewController;->isViewSet:Z

    if-eqz v0, :cond_1

    .line 530
    iget-boolean v0, p0, Lcom/jellybus/fx_sub/CropViewController;->pointsSet:Z

    if-nez v0, :cond_0

    .line 531
    invoke-direct {p0}, Lcom/jellybus/fx_sub/CropViewController;->setPoints()V

    .line 533
    :cond_0
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 534
    .local v5, p:Landroid/graphics/Paint;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 535
    const/high16 v0, -0x100

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 536
    const/16 v0, 0x96

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 537
    iget-object v0, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    .line 538
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/CropViewController;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/jellybus/fx_sub/CropViewController;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 539
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 540
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 541
    const/high16 v0, 0x4040

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 542
    const v0, -0x333334

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 543
    iget-object v0, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v6, v6, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 545
    .end local v5           #p:Landroid/graphics/Paint;
    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 139
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 140
    iget-boolean v0, p0, Lcom/jellybus/fx_sub/CropViewController;->isViewSet:Z

    if-eqz v0, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/jellybus/fx_sub/CropViewController;->setPoints()V

    .line 142
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 145
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 146
    .local v0, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 147
    .local v1, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 169
    :cond_0
    :goto_0
    return v4

    .line 149
    :pswitch_0
    invoke-direct {p0, v0, v1}, Lcom/jellybus/fx_sub/CropViewController;->selectLine(FF)V

    .line 150
    iget-object v2, p0, Lcom/jellybus/fx_sub/CropViewController;->startXY:Landroid/graphics/PointF;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 151
    invoke-direct {p0, v0, v1}, Lcom/jellybus/fx_sub/CropViewController;->checkCenter(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 153
    iget-object v2, p0, Lcom/jellybus/fx_sub/CropViewController;->startXY:Landroid/graphics/PointF;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 154
    iget-object v2, p0, Lcom/jellybus/fx_sub/CropViewController;->mDrag:[Z

    aput-boolean v4, v2, v3

    .line 156
    :cond_1
    iget-object v2, p0, Lcom/jellybus/fx_sub/CropViewController;->crop_sub_layout:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 159
    :pswitch_1
    invoke-direct {p0}, Lcom/jellybus/fx_sub/CropViewController;->touchUp()V

    .line 160
    iget-boolean v2, p0, Lcom/jellybus/fx_sub/CropViewController;->isSubOn:Z

    if-eqz v2, :cond_0

    .line 161
    iget-object v2, p0, Lcom/jellybus/fx_sub/CropViewController;->crop_sub_layout:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 165
    :pswitch_2
    invoke-direct {p0, v0, v1}, Lcom/jellybus/fx_sub/CropViewController;->touchMove(FF)V

    .line 166
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/CropViewController;->invalidate()V

    goto :goto_0

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public resetPoints(Landroid/graphics/RectF;)V
    .locals 3
    .parameter "rect"

    .prologue
    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    .line 123
    iput-object p1, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    .line 124
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/jellybus/fx_sub/CropViewController;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/jellybus/fx_sub/CropViewController;->mCenter:Landroid/graphics/PointF;

    .line 125
    return-void
.end method

.method public setControllViewSize(IIII)V
    .locals 6
    .parameter "viewW"
    .parameter "viewH"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v5, 0x0

    .line 95
    iput p3, p0, Lcom/jellybus/fx_sub/CropViewController;->width:I

    .line 96
    iput p4, p0, Lcom/jellybus/fx_sub/CropViewController;->height:I

    .line 97
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 98
    .local v0, m:Landroid/graphics/Matrix;
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-direct {v1, v5, v5, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 99
    new-instance v2, Landroid/graphics/RectF;

    iget v3, p0, Lcom/jellybus/fx_sub/CropViewController;->width:I

    int-to-float v3, v3

    iget v4, p0, Lcom/jellybus/fx_sub/CropViewController;->height:I

    int-to-float v4, v4

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    .line 98
    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 101
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jellybus/fx_sub/CropViewController;->isViewSet:Z

    .line 102
    return-void
.end method

.method public setRatio(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 82
    cmpl-float v0, p1, p2

    if-lez v0, :cond_0

    .line 83
    div-float v0, p1, p2

    iput v0, p0, Lcom/jellybus/fx_sub/CropViewController;->ratio:F

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jellybus/fx_sub/CropViewController;->isWidthBigRatio:Z

    .line 89
    :goto_0
    return-void

    .line 86
    :cond_0
    div-float v0, p2, p1

    iput v0, p0, Lcom/jellybus/fx_sub/CropViewController;->ratio:F

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jellybus/fx_sub/CropViewController;->isWidthBigRatio:Z

    goto :goto_0
.end method

.method public setRatioMode(Z)V
    .locals 0
    .parameter "isRatioMode"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/jellybus/fx_sub/CropViewController;->isRatioMode:Z

    .line 79
    return-void
.end method

.method public setSubLayer(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/jellybus/fx_sub/CropViewController;->crop_sub_layout:Landroid/view/View;

    .line 67
    return-void
.end method

.method public setSubToggle(Z)V
    .locals 0
    .parameter "isSubOn"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/jellybus/fx_sub/CropViewController;->isSubOn:Z

    .line 63
    return-void
.end method
