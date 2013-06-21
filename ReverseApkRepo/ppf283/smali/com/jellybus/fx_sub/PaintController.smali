.class public Lcom/jellybus/fx_sub/PaintController;
.super Landroid/widget/ImageView;
.source "PaintController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jellybus/fx_sub/PaintController$Command;,
        Lcom/jellybus/fx_sub/PaintController$OnBitmapChangedListener;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "image"


# instance fields
.field protected final MAX_ZOOM:F

.field protected mBaseMatrix:Landroid/graphics/Matrix;

.field protected final mBitmapDisplayed:Lcom/jellybus/fx_sub/PaintBitmap;

.field protected final mDisplayMatrix:Landroid/graphics/Matrix;

.field protected mHandler:Landroid/os/Handler;

.field private mListener:Lcom/jellybus/fx_sub/PaintController$OnBitmapChangedListener;

.field protected final mMatrixValues:[F

.field protected mMaxZoom:F

.field protected mOnLayoutRunnable:Ljava/lang/Runnable;

.field protected mSuppMatrix:Landroid/graphics/Matrix;

.field protected mThisHeight:I

.field protected mThisWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 45
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/jellybus/fx_sub/PaintController;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 30
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/jellybus/fx_sub/PaintController;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jellybus/fx_sub/PaintController;->mHandler:Landroid/os/Handler;

    .line 32
    iput-object v2, p0, Lcom/jellybus/fx_sub/PaintController;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 34
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/jellybus/fx_sub/PaintController;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 35
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/jellybus/fx_sub/PaintController;->mMatrixValues:[F

    .line 36
    iput v1, p0, Lcom/jellybus/fx_sub/PaintController;->mThisWidth:I

    iput v1, p0, Lcom/jellybus/fx_sub/PaintController;->mThisHeight:I

    .line 38
    new-instance v0, Lcom/jellybus/fx_sub/PaintBitmap;

    invoke-direct {v0, v2}, Lcom/jellybus/fx_sub/PaintBitmap;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/jellybus/fx_sub/PaintController;->mBitmapDisplayed:Lcom/jellybus/fx_sub/PaintBitmap;

    .line 39
    const/high16 v0, 0x4000

    iput v0, p0, Lcom/jellybus/fx_sub/PaintController;->MAX_ZOOM:F

    .line 46
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/PaintController;->init()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/jellybus/fx_sub/PaintController;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 30
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/jellybus/fx_sub/PaintController;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jellybus/fx_sub/PaintController;->mHandler:Landroid/os/Handler;

    .line 32
    iput-object v2, p0, Lcom/jellybus/fx_sub/PaintController;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 34
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/jellybus/fx_sub/PaintController;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 35
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/jellybus/fx_sub/PaintController;->mMatrixValues:[F

    .line 36
    iput v1, p0, Lcom/jellybus/fx_sub/PaintController;->mThisWidth:I

    iput v1, p0, Lcom/jellybus/fx_sub/PaintController;->mThisHeight:I

    .line 38
    new-instance v0, Lcom/jellybus/fx_sub/PaintBitmap;

    invoke-direct {v0, v2}, Lcom/jellybus/fx_sub/PaintBitmap;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/jellybus/fx_sub/PaintController;->mBitmapDisplayed:Lcom/jellybus/fx_sub/PaintBitmap;

    .line 39
    const/high16 v0, 0x4000

    iput v0, p0, Lcom/jellybus/fx_sub/PaintController;->MAX_ZOOM:F

    .line 52
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/PaintController;->init()V

    .line 53
    return-void
.end method


# virtual methods
.method protected center(ZZ)V
    .locals 3
    .parameter "horizontal"
    .parameter "vertical"

    .prologue
    const/4 v2, 0x0

    .line 217
    iget-object v1, p0, Lcom/jellybus/fx_sub/PaintController;->mBitmapDisplayed:Lcom/jellybus/fx_sub/PaintBitmap;

    invoke-virtual {v1}, Lcom/jellybus/fx_sub/PaintBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/jellybus/fx_sub/PaintController;->getCenter(ZZ)Landroid/graphics/RectF;

    move-result-object v0

    .line 219
    .local v0, rect:Landroid/graphics/RectF;
    iget v1, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    iget v1, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 220
    :cond_2
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v1, v2}, Lcom/jellybus/fx_sub/PaintController;->postTranslate(FF)V

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 66
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/jellybus/fx_sub/PaintController;->setImageBitmapReset(Landroid/graphics/Bitmap;Z)V

    .line 67
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/jellybus/fx_sub/PaintController;->mBitmapDisplayed:Lcom/jellybus/fx_sub/PaintBitmap;

    invoke-virtual {v0}, Lcom/jellybus/fx_sub/PaintBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/jellybus/fx_sub/PaintController;->mBitmapDisplayed:Lcom/jellybus/fx_sub/PaintBitmap;

    invoke-virtual {v0}, Lcom/jellybus/fx_sub/PaintBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/jellybus/fx_sub/PaintController;->mBitmapDisplayed:Lcom/jellybus/fx_sub/PaintBitmap;

    invoke-virtual {v0}, Lcom/jellybus/fx_sub/PaintBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 390
    :cond_0
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/PaintController;->clear()V

    .line 391
    return-void
.end method

.method protected getBitmapRect()Landroid/graphics/RectF;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 198
    iget-object v2, p0, Lcom/jellybus/fx_sub/PaintController;->mBitmapDisplayed:Lcom/jellybus/fx_sub/PaintBitmap;

    invoke-virtual {v2}, Lcom/jellybus/fx_sub/PaintBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 202
    :goto_0
    return-object v1

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/PaintController;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 200
    .local v0, m:Landroid/graphics/Matrix;
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/jellybus/fx_sub/PaintController;->mBitmapDisplayed:Lcom/jellybus/fx_sub/PaintBitmap;

    invoke-virtual {v2}, Lcom/jellybus/fx_sub/PaintBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/jellybus/fx_sub/PaintController;->mBitmapDisplayed:Lcom/jellybus/fx_sub/PaintBitmap;

    invoke-virtual {v3}, Lcom/jellybus/fx_sub/PaintBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 201
    .local v1, rect:Landroid/graphics/RectF;
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    goto :goto_0
.end method

.method protected getCenter(ZZ)Landroid/graphics/RectF;
    .locals 11
    .parameter "horizontal"
    .parameter "vertical"

    .prologue
    const/high16 v10, 0x4000

    const/4 v9, 0x0

    .line 231
    iget-object v7, p0, Lcom/jellybus/fx_sub/PaintController;->mBitmapDisplayed:Lcom/jellybus/fx_sub/PaintBitmap;

    invoke-virtual {v7}, Lcom/jellybus/fx_sub/PaintBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    if-nez v7, :cond_0

    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, v9, v9, v9, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 256
    :goto_0
    return-object v7

    .line 232
    :cond_0
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/PaintController;->getBitmapRect()Landroid/graphics/RectF;

    move-result-object v3

    .line 233
    .local v3, rect:Landroid/graphics/RectF;
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v2

    .line 234
    .local v2, height:F
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v6

    .line 235
    .local v6, width:F
    const/4 v0, 0x0

    .local v0, deltaX:F
    const/4 v1, 0x0

    .line 236
    .local v1, deltaY:F
    if-eqz p2, :cond_1

    .line 237
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/PaintController;->getHeight()I

    move-result v4

    .line 238
    .local v4, viewHeight:I
    int-to-float v7, v4

    cmpg-float v7, v2, v7

    if-gez v7, :cond_3

    .line 239
    int-to-float v7, v4

    sub-float/2addr v7, v2

    div-float/2addr v7, v10

    iget v8, v3, Landroid/graphics/RectF;->top:F

    sub-float v1, v7, v8

    .line 246
    .end local v4           #viewHeight:I
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 247
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/PaintController;->getWidth()I

    move-result v5

    .line 248
    .local v5, viewWidth:I
    int-to-float v7, v5

    cmpg-float v7, v6, v7

    if-gez v7, :cond_5

    .line 249
    int-to-float v7, v5

    sub-float/2addr v7, v6

    div-float/2addr v7, v10

    iget v8, v3, Landroid/graphics/RectF;->left:F

    sub-float v0, v7, v8

    .line 256
    .end local v5           #viewWidth:I
    :cond_2
    :goto_2
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, v0, v1, v9, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    .line 240
    .restart local v4       #viewHeight:I
    :cond_3
    iget v7, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v7, v7, v9

    if-lez v7, :cond_4

    .line 241
    iget v7, v3, Landroid/graphics/RectF;->top:F

    neg-float v1, v7

    goto :goto_1

    .line 242
    :cond_4
    iget v7, v3, Landroid/graphics/RectF;->bottom:F

    int-to-float v8, v4

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1

    .line 243
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/PaintController;->getHeight()I

    move-result v7

    int-to-float v7, v7

    iget v8, v3, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v7, v8

    goto :goto_1

    .line 250
    .end local v4           #viewHeight:I
    .restart local v5       #viewWidth:I
    :cond_5
    iget v7, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v7, v7, v9

    if-lez v7, :cond_6

    .line 251
    iget v7, v3, Landroid/graphics/RectF;->left:F

    neg-float v0, v7

    goto :goto_2

    .line 252
    :cond_6
    iget v7, v3, Landroid/graphics/RectF;->right:F

    int-to-float v8, v5

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2

    .line 253
    int-to-float v7, v5

    iget v8, v3, Landroid/graphics/RectF;->right:F

    sub-float v0, v7, v8

    goto :goto_2
.end method

.method public getDisplayBitmap()Lcom/jellybus/fx_sub/PaintBitmap;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/jellybus/fx_sub/PaintController;->mBitmapDisplayed:Lcom/jellybus/fx_sub/PaintBitmap;

    return-object v0
.end method

.method protected getImageViewMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/jellybus/fx_sub/PaintController;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/jellybus/fx_sub/PaintController;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 166
    iget-object v0, p0, Lcom/jellybus/fx_sub/PaintController;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/jellybus/fx_sub/PaintController;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 167
    iget-object v0, p0, Lcom/jellybus/fx_sub/PaintController;->mDisplayMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getMaxZoom()F
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/jellybus/fx_sub/PaintController;->mMaxZoom:F

    return v0
.end method

.method protected getProperBaseMatrix(Lcom/jellybus/fx_sub/PaintBitmap;Landroid/graphics/Matrix;)V
    .locals 10
    .parameter "bitmap"
    .parameter "matrix"

    .prologue
    const/high16 v9, 0x4000

    .line 178
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/PaintController;->getWidth()I

    move-result v7

    int-to-float v4, v7

    .line 179
    .local v4, viewWidth:F
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/PaintController;->getHeight()I

    move-result v7

    int-to-float v3, v7

    .line 180
    .local v3, viewHeight:F
    invoke-virtual {p1}, Lcom/jellybus/fx_sub/PaintBitmap;->getWidth()I

    move-result v7

    int-to-float v5, v7

    .line 181
    .local v5, w:F
    invoke-virtual {p1}, Lcom/jellybus/fx_sub/PaintBitmap;->getHeight()I

    move-result v7

    int-to-float v0, v7

    .line 182
    .local v0, h:F
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 183
    div-float v7, v4, v5

    invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 184
    .local v6, widthScale:F
    div-float v7, v3, v0

    invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 185
    .local v1, heightScale:F
    invoke-static {v6, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 186
    .local v2, scale:F
    invoke-virtual {p2, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 187
    mul-float v7, v5, v2

    sub-float v7, v4, v7

    div-float/2addr v7, v9

    mul-float v8, v0, v2

    sub-float v8, v3, v8

    div-float/2addr v8, v9

    invoke-virtual {p2, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 188
    return-void
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/jellybus/fx_sub/PaintController;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/jellybus/fx_sub/PaintController;->getScale(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method protected getScale(Landroid/graphics/Matrix;)F
    .locals 1
    .parameter "matrix"

    .prologue
    .line 207
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jellybus/fx_sub/PaintController;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    return v0
.end method

.method protected getValue(Landroid/graphics/Matrix;I)F
    .locals 1
    .parameter "matrix"
    .parameter "whichValue"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/jellybus/fx_sub/PaintController;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 193
    iget-object v0, p0, Lcom/jellybus/fx_sub/PaintController;->mMatrixValues:[F

    aget v0, v0, p2

    return v0
.end method

.method protected init()V
    .locals 1

    .prologue
    .line 61
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/jellybus/fx_sub/PaintController;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 62
    return-void
.end method

.method protected maxZoom()F
    .locals 5

    .prologue
    .line 128
    iget-object v3, p0, Lcom/jellybus/fx_sub/PaintController;->mBitmapDisplayed:Lcom/jellybus/fx_sub/PaintBitmap;

    invoke-virtual {v3}, Lcom/jellybus/fx_sub/PaintBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_0

    const/high16 v2, 0x3f80

    .line 132
    :goto_0
    return v2

    .line 129
    :cond_0
    iget-object v3, p0, Lcom/jellybus/fx_sub/PaintController;->mBitmapDisplayed:Lcom/jellybus/fx_sub/PaintBitmap;

    invoke-virtual {v3}, Lcom/jellybus/fx_sub/PaintBitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/jellybus/fx_sub/PaintController;->mThisWidth:I

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 130
    .local v1, fw:F
    iget-object v3, p0, Lcom/jellybus/fx_sub/PaintController;->mBitmapDisplayed:Lcom/jellybus/fx_sub/PaintBitmap;

    invoke-virtual {v3}, Lcom/jellybus/fx_sub/PaintBitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/jellybus/fx_sub/PaintController;->mThisHeight:I

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 131
    .local v0, fh:F
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v4, 0x4080

    mul-float v2, v3, v4

    .line 132
    .local v2, max:F
    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 72
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 73
    sub-int v1, p4, p2

    iput v1, p0, Lcom/jellybus/fx_sub/PaintController;->mThisWidth:I

    .line 74
    sub-int v1, p5, p3

    iput v1, p0, Lcom/jellybus/fx_sub/PaintController;->mThisHeight:I

    .line 75
    iget-object v0, p0, Lcom/jellybus/fx_sub/PaintController;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 76
    .local v0, r:Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 77
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jellybus/fx_sub/PaintController;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 78
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/jellybus/fx_sub/PaintController;->mBitmapDisplayed:Lcom/jellybus/fx_sub/PaintBitmap;

    invoke-virtual {v1}, Lcom/jellybus/fx_sub/PaintBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 81
    iget-object v1, p0, Lcom/jellybus/fx_sub/PaintController;->mBitmapDisplayed:Lcom/jellybus/fx_sub/PaintBitmap;

    iget-object v2, p0, Lcom/jellybus/fx_sub/PaintController;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v1, v2}, Lcom/jellybus/fx_sub/PaintController;->getProperBaseMatrix(Lcom/jellybus/fx_sub/PaintBitmap;Landroid/graphics/Matrix;)V

    .line 82
    sget-object v1, Lcom/jellybus/fx_sub/PaintController$Command;->Layout:Lcom/jellybus/fx_sub/PaintController$Command;

    invoke-virtual {p0}, Lcom/jellybus/fx_sub/PaintController;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/jellybus/fx_sub/PaintController;->setImageMatrix(Lcom/jellybus/fx_sub/PaintController$Command;Landroid/graphics/Matrix;)V

    .line 84
    :cond_1
    return-void
.end method

.method protected onZoom(F)V
    .locals 0
    .parameter "scale"

    .prologue
    .line 297
    return-void
.end method

.method protected panBy(FF)V
    .locals 5
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 306
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/PaintController;->getBitmapRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 307
    .local v0, rect:Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p1, p2, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 308
    .local v1, srect:Landroid/graphics/RectF;
    invoke-virtual {p0, v0, v1}, Lcom/jellybus/fx_sub/PaintController;->updateRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 309
    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v2, v3}, Lcom/jellybus/fx_sub/PaintController;->postTranslate(FF)V

    .line 310
    invoke-virtual {p0, v4, v4}, Lcom/jellybus/fx_sub/PaintController;->center(ZZ)V

    .line 311
    return-void
.end method

.method protected postScale(FFF)V
    .locals 2
    .parameter "scale"
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/jellybus/fx_sub/PaintController;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 268
    sget-object v0, Lcom/jellybus/fx_sub/PaintController$Command;->Zoom:Lcom/jellybus/fx_sub/PaintController$Command;

    invoke-virtual {p0}, Lcom/jellybus/fx_sub/PaintController;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/jellybus/fx_sub/PaintController;->setImageMatrix(Lcom/jellybus/fx_sub/PaintController$Command;Landroid/graphics/Matrix;)V

    .line 269
    return-void
.end method

.method protected postTranslate(FF)V
    .locals 2
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/jellybus/fx_sub/PaintController;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 262
    sget-object v0, Lcom/jellybus/fx_sub/PaintController$Command;->Move:Lcom/jellybus/fx_sub/PaintController$Command;

    invoke-virtual {p0}, Lcom/jellybus/fx_sub/PaintController;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/jellybus/fx_sub/PaintController;->setImageMatrix(Lcom/jellybus/fx_sub/PaintController$Command;Landroid/graphics/Matrix;)V

    .line 263
    return-void
.end method

.method public scrollBy(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 301
    invoke-virtual {p0, p1, p2}, Lcom/jellybus/fx_sub/PaintController;->panBy(FF)V

    .line 302
    return-void
.end method

.method protected scrollBy(FFF)V
    .locals 8
    .parameter "distanceX"
    .parameter "distanceY"
    .parameter "durationMs"

    .prologue
    .line 329
    move v5, p1

    .line 330
    .local v5, dx:F
    move v6, p2

    .line 331
    .local v6, dy:F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 332
    .local v3, startTime:J
    iget-object v7, p0, Lcom/jellybus/fx_sub/PaintController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/jellybus/fx_sub/PaintController$2;

    move-object v1, p0

    move v2, p3

    invoke-direct/range {v0 .. v6}, Lcom/jellybus/fx_sub/PaintController$2;-><init>(Lcom/jellybus/fx_sub/PaintController;FJFF)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 354
    return-void
.end method

.method public setImageAllBitmapReset(Lcom/jellybus/fx_sub/PaintBitmap;Z)V
    .locals 3
    .parameter "bitmap"
    .parameter "reset"

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/PaintController;->getWidth()I

    move-result v0

    .line 95
    .local v0, viewWidth:I
    if-gtz v0, :cond_1

    .line 96
    new-instance v1, Lcom/jellybus/fx_sub/PaintController$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/jellybus/fx_sub/PaintController$1;-><init>(Lcom/jellybus/fx_sub/PaintController;Lcom/jellybus/fx_sub/PaintBitmap;Z)V

    iput-object v1, p0, Lcom/jellybus/fx_sub/PaintController;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    invoke-virtual {p1}, Lcom/jellybus/fx_sub/PaintBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 107
    iget-object v1, p0, Lcom/jellybus/fx_sub/PaintController;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, v1}, Lcom/jellybus/fx_sub/PaintController;->getProperBaseMatrix(Lcom/jellybus/fx_sub/PaintBitmap;Landroid/graphics/Matrix;)V

    .line 108
    invoke-virtual {p1}, Lcom/jellybus/fx_sub/PaintBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jellybus/fx_sub/PaintController;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 114
    :goto_1
    if-eqz p2, :cond_2

    .line 115
    iget-object v1, p0, Lcom/jellybus/fx_sub/PaintController;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 118
    :cond_2
    sget-object v1, Lcom/jellybus/fx_sub/PaintController$Command;->Reset:Lcom/jellybus/fx_sub/PaintController$Command;

    invoke-virtual {p0}, Lcom/jellybus/fx_sub/PaintController;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/jellybus/fx_sub/PaintController;->setImageMatrix(Lcom/jellybus/fx_sub/PaintController$Command;Landroid/graphics/Matrix;)V

    .line 119
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/PaintController;->maxZoom()F

    move-result v1

    iput v1, p0, Lcom/jellybus/fx_sub/PaintController;->mMaxZoom:F

    .line 121
    iget-object v1, p0, Lcom/jellybus/fx_sub/PaintController;->mListener:Lcom/jellybus/fx_sub/PaintController$OnBitmapChangedListener;

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/jellybus/fx_sub/PaintController;->mListener:Lcom/jellybus/fx_sub/PaintController$OnBitmapChangedListener;

    invoke-virtual {p1}, Lcom/jellybus/fx_sub/PaintBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/jellybus/fx_sub/PaintController$OnBitmapChangedListener;->onBitmapChanged(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 110
    :cond_3
    iget-object v1, p0, Lcom/jellybus/fx_sub/PaintController;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 111
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/jellybus/fx_sub/PaintController;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 148
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 149
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/PaintController;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 150
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 151
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/jellybus/fx_sub/PaintController;->mBitmapDisplayed:Lcom/jellybus/fx_sub/PaintBitmap;

    invoke-virtual {v1, p1}, Lcom/jellybus/fx_sub/PaintBitmap;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 154
    iget-object v1, p0, Lcom/jellybus/fx_sub/PaintController;->mBitmapDisplayed:Lcom/jellybus/fx_sub/PaintBitmap;

    invoke-virtual {v1}, Lcom/jellybus/fx_sub/PaintBitmap;->setRotation()V

    .line 155
    return-void
.end method

.method public setImageBitmapReset(Landroid/graphics/Bitmap;Z)V
    .locals 1
    .parameter "bitmap"
    .parameter "reset"

    .prologue
    .line 88
    new-instance v0, Lcom/jellybus/fx_sub/PaintBitmap;

    invoke-direct {v0, p1}, Lcom/jellybus/fx_sub/PaintBitmap;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0, p2}, Lcom/jellybus/fx_sub/PaintController;->setImageAllBitmapReset(Lcom/jellybus/fx_sub/PaintBitmap;Z)V

    .line 89
    return-void
.end method

.method protected setImageMatrix(Lcom/jellybus/fx_sub/PaintController$Command;Landroid/graphics/Matrix;)V
    .locals 0
    .parameter "command"
    .parameter "matrix"

    .prologue
    .line 226
    invoke-virtual {p0, p2}, Lcom/jellybus/fx_sub/PaintController;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 227
    return-void
.end method

.method public setOnBitmapChangedListener(Lcom/jellybus/fx_sub/PaintController$OnBitmapChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/jellybus/fx_sub/PaintController;->mListener:Lcom/jellybus/fx_sub/PaintController$OnBitmapChangedListener;

    .line 57
    return-void
.end method

.method protected updateRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 5
    .parameter "bitmapRect"
    .parameter "scrollRect"

    .prologue
    const/4 v4, 0x0

    .line 315
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/PaintController;->getWidth()I

    move-result v2

    int-to-float v1, v2

    .line 316
    .local v1, width:F
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/PaintController;->getHeight()I

    move-result v2

    int-to-float v0, v2

    .line 318
    .local v0, height:F
    iget v2, p1, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_0

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v2, v2, v0

    if-gtz v2, :cond_0

    iput v4, p2, Landroid/graphics/RectF;->top:F

    .line 319
    :cond_0
    iget v2, p1, Landroid/graphics/RectF;->left:F

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_1

    iget v2, p1, Landroid/graphics/RectF;->right:F

    cmpg-float v2, v2, v1

    if-gtz v2, :cond_1

    iput v4, p2, Landroid/graphics/RectF;->left:F

    .line 320
    :cond_1
    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v3

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_2

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_2

    iget v2, p1, Landroid/graphics/RectF;->top:F

    sub-float v2, v4, v2

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p2, Landroid/graphics/RectF;->top:F

    .line 321
    :cond_2
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget v3, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v3

    sub-float v3, v0, v4

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_3

    iget v2, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_3

    sub-float v2, v0, v4

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p2, Landroid/graphics/RectF;->top:F

    .line 322
    :cond_3
    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v3

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_4

    iget v2, p1, Landroid/graphics/RectF;->left:F

    sub-float v2, v4, v2

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p2, Landroid/graphics/RectF;->left:F

    .line 323
    :cond_4
    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v3

    sub-float v3, v1, v4

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_5

    sub-float v2, v1, v4

    iget v3, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p2, Landroid/graphics/RectF;->left:F

    .line 325
    :cond_5
    return-void
.end method

.method protected zoomTo(F)V
    .locals 4
    .parameter "scale"

    .prologue
    const/high16 v3, 0x4000

    .line 273
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/PaintController;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v3

    .line 274
    .local v0, cx:F
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/PaintController;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v3

    .line 275
    .local v1, cy:F
    invoke-virtual {p0, p1, v0, v1}, Lcom/jellybus/fx_sub/PaintController;->zoomTo(FFF)V

    .line 276
    return-void
.end method

.method public zoomTo(FF)V
    .locals 4
    .parameter "scale"
    .parameter "durationMs"

    .prologue
    const/high16 v3, 0x4000

    .line 280
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/PaintController;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v3

    .line 281
    .local v0, cx:F
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/PaintController;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v3

    .line 282
    .local v1, cy:F
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/jellybus/fx_sub/PaintController;->zoomTo(FFFF)V

    .line 283
    return-void
.end method

.method protected zoomTo(FFF)V
    .locals 4
    .parameter "scale"
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    const/4 v3, 0x1

    .line 287
    iget v2, p0, Lcom/jellybus/fx_sub/PaintController;->mMaxZoom:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    iget p1, p0, Lcom/jellybus/fx_sub/PaintController;->mMaxZoom:F

    .line 288
    :cond_0
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/PaintController;->getScale()F

    move-result v1

    .line 289
    .local v1, oldScale:F
    div-float v0, p1, v1

    .line 290
    .local v0, deltaScale:F
    invoke-virtual {p0, v0, p2, p3}, Lcom/jellybus/fx_sub/PaintController;->postScale(FFF)V

    .line 291
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/PaintController;->getScale()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/jellybus/fx_sub/PaintController;->onZoom(F)V

    .line 292
    invoke-virtual {p0, v3, v3}, Lcom/jellybus/fx_sub/PaintController;->center(ZZ)V

    .line 293
    return-void
.end method

.method protected zoomTo(FFFF)V
    .locals 11
    .parameter "scale"
    .parameter "centerX"
    .parameter "centerY"
    .parameter "durationMs"

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/PaintController;->getScale()F

    move-result v9

    .line 359
    .local v9, getScale:F
    const/high16 v0, 0x3f80

    cmpl-float v0, v9, v0

    if-lez v0, :cond_0

    .line 360
    move v9, p1

    .line 361
    const/high16 p1, 0x3f80

    .line 363
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 364
    .local v3, startTime:J
    sub-float v0, p1, v9

    div-float v6, v0, p4

    .line 365
    .local v6, incrementPerMs:F
    move v5, v9

    .line 366
    .local v5, oldScale:F
    iget-object v10, p0, Lcom/jellybus/fx_sub/PaintController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/jellybus/fx_sub/PaintController$3;

    move-object v1, p0

    move v2, p4

    move v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/jellybus/fx_sub/PaintController$3;-><init>(Lcom/jellybus/fx_sub/PaintController;FJFFFF)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 381
    return-void
.end method
