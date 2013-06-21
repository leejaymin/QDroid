.class abstract Lcom/mosaicture/crop/ImageViewTouchBase;
.super Landroid/widget/ImageView;


# instance fields
.field private final a:Landroid/graphics/Matrix;

.field private final b:[F

.field private c:Lcom/mosaicture/crop/q;

.field private d:Ljava/lang/Runnable;

.field protected g:Landroid/graphics/Matrix;

.field protected h:Landroid/graphics/Matrix;

.field protected final i:Lcom/mosaicture/crop/t;

.field j:I

.field k:I

.field l:F

.field protected m:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/mosaicture/crop/ImageViewTouchBase;->g:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/mosaicture/crop/ImageViewTouchBase;->h:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/mosaicture/crop/ImageViewTouchBase;->a:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/mosaicture/crop/ImageViewTouchBase;->b:[F

    new-instance v0, Lcom/mosaicture/crop/t;

    invoke-direct {v0, v2}, Lcom/mosaicture/crop/t;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/mosaicture/crop/ImageViewTouchBase;->i:Lcom/mosaicture/crop/t;

    iput v1, p0, Lcom/mosaicture/crop/ImageViewTouchBase;->j:I

    iput v1, p0, Lcom/mosaicture/crop/ImageViewTouchBase;->k:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mosaicture/crop/ImageViewTouchBase;->m:Landroid/os/Handler;

    iput-object v2, p0, Lcom/mosaicture/crop/ImageViewTouchBase;->d:Ljava/lang/Runnable;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/mosaicture/crop/ImageViewTouchBase;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/mosaicture/crop/ImageViewTouchBase;->g:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/mosaicture/crop/ImageViewTouchBase;->h:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/mosaicture/crop/ImageViewTouchBase;->a:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/mosaicture/crop/ImageViewTouchBase;->b:[F

    new-instance v0, Lcom/mosaicture/crop/t;

    invoke-direct {v0, v2}, Lcom/mosaicture/crop/t;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/mosaicture/crop/ImageViewTouchBase;->i:Lcom/mosaicture/crop/t;

    iput v1, p0, Lcom/mosaicture/crop/ImageViewTouchBase;->j:I

    iput v1, p0, Lcom/mosaicture/crop/ImageViewTouchBase;->k:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mosaicture/crop/ImageViewTouchBase;->m:Landroid/os/Handler;

    iput-object v2, p0, Lcom/mosaicture/crop/ImageViewTouchBase;->d:Ljava/lang/Runnable;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/mosaicture/crop/ImageViewTouchBase;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/mosaicture/crop/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    :cond_0
    iget-object v0, p0, Lcom/mosaicture/crop/ImageViewTouchBase;->i:Lcom/mosaicture/crop/t;

    invoke-virtual {v0}, Lcom/mosaicture/crop/t;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/mosaicture/crop/ImageViewTouchBase;->i:Lcom/mosaicture/crop/t;

    invoke-virtual {v1, p1}, Lcom/mosaicture/crop/t;->a(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/mosaicture/crop/ImageViewTouchBase;->i:Lcom/mosaicture/crop/t;

    invoke-virtual {v1, p2}, Lcom/mosaicture/crop/t;->a(I)V

    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/mosaicture/crop/ImageViewTouchBase;->c:Lcom/mosaicture/crop/q;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mosaicture/crop/ImageViewTouchBase;->c:Lcom/mosaicture/crop/q;

    :cond_1
    return-void
.end method

.method private a(Lcom/mosaicture/crop/t;Landroid/graphics/Matrix;)V
    .locals 8

    const/high16 v7, 0x4040

    const/high16 v6, 0x4000

    invoke-virtual {p0}, Lcom/mosaicture/crop/ImageViewTouchBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/mosaicture/crop/ImageViewTouchBase;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/mosaicture/crop/t;->e()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/mosaicture/crop/t;->d()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    div-float v4, v0, v2

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    div-float v5, v1, v3

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-virtual {p1}, Lcom/mosaicture/crop/t;->c()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {p2, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    mul-float/2addr v2, v4

    sub-float/2addr v0, v2

    div-float/2addr v0, v6

    mul-float v2, v3, v4

    sub-float/2addr v1, v2

    div-float/2addr v1, v6

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method private d()Landroid/graphics/Matrix;
    .locals 2

    iget-object v0, p0, Lcom/mosaicture/crop/ImageViewTouchBase;->a:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/mosaicture/crop/ImageViewTouchBase;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/mosaicture/crop/ImageViewTouchBase;->a:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/mosaicture/crop/ImageViewTouchBase;->h:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Lcom/mosaicture/crop/ImageViewTouchBase;->a:Landroid/graphics/Matrix;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mosaicture/crop/ImageViewTouchBase;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected a(FF)V
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/crop/ImageViewTouchBase;->h:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method protected a(FFF)V
    .locals 2

    iget v0, p0, Lcom/mosaicture/crop/ImageViewTouchBase;->l:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget p1, p0, Lcom/mosaicture/crop/ImageViewTouchBase;->l:F

    :cond_0
    invoke-virtual {p0}, Lcom/mosaicture/crop/ImageViewTouchBase;->c()F

    move-result v0

    div-float v0, p1, v0

    iget-object v1, p0, Lcom/mosaicture/crop/ImageViewTouchBase;->h:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    invoke-direct {p0}, Lcom/mosaicture/crop/ImageViewTouchBase;->d()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mosaicture/crop/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Lcom/mosaicture/crop/ImageViewTouchBase;->b()V

    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .locals 2

    new-instance v0, Lcom/mosaicture/crop/t;

    invoke-direct {v0, p1}, Lcom/mosaicture/crop/t;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/mosaicture/crop/ImageViewTouchBase;->a(Lcom/mosaicture/crop/t;Z)V

    return-void
.end method

.method public final a(Lcom/mosaicture/crop/t;Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/mosaicture/crop/ImageViewTouchBase;->getWidth()I

    move-result v0

    if-gtz v0, :cond_0

    new-instance v0, Lcom/mosaicture/crop/o;

    invoke-direct {v0, p0, p1, p2}, Lcom/mosaicture/crop/o;-><init>(Lcom/mosaicture/crop/ImageViewTouchBase;Lcom/mosaicture/crop/t;Z)V

    iput-object v0, p0, Lcom/mosaicture/crop/ImageViewTouchBase;->d:Ljava/lang/Runnable;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/mosaicture/crop/t;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mosaicture/crop/ImageViewTouchBase;->g:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v0}, Lcom/mosaicture/crop/ImageViewTouchBase;->a(Lcom/mosaicture/crop/t;Landroid/graphics/Matrix;)V

    invoke-virtual {p1}, Lcom/mosaicture/crop/t;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mosaicture/crop/t;->a()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/mosaicture/crop/ImageViewTouchBase;->a(Landroid/graphics/Bitmap;I)V

    :goto_1
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/mosaicture/crop/ImageViewTouchBase;->h:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    :cond_1
    invoke-direct {p0}, Lcom/mosaicture/crop/ImageViewTouchBase;->d()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mosaicture/crop/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/mosaicture/crop/ImageViewTouchBase;->i:Lcom/mosaicture/crop/t;

    invoke-virtual {v0}, Lcom/mosaicture/crop/t;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_3

    const/high16 v0, 0x3f80

    :goto_2
    iput v0, p0, Lcom/mosaicture/crop/ImageViewTouchBase;->l:F

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/mosaicture/crop/ImageViewTouchBase;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mosaicture/crop/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/mosaicture/crop/ImageViewTouchBase;->i:Lcom/mosaicture/crop/t;

    invoke-virtual {v0}, Lcom/mosaicture/crop/t;->e()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/mosaicture/crop/ImageViewTouchBase;->j:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/mosaicture/crop/ImageViewTouchBase;->i:Lcom/mosaicture/crop/t;

    invoke-virtual {v1}, Lcom/mosaicture/crop/t;->d()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/mosaicture/crop/ImageViewTouchBase;->k:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x4080

    mul-float/2addr v0, v1

    goto :goto_2
.end method

.method protected final b()V
    .locals 7

    const/high16 v6, 0x4000

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/mosaicture/crop/ImageViewTouchBase;->i:Lcom/mosaicture/crop/t;

    invoke-virtual {v0}, Lcom/mosaicture/crop/t;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/mosaicture/crop/ImageViewTouchBase;->d()Landroid/graphics/Matrix;

    move-result-object v0

    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/mosaicture/crop/ImageViewTouchBase;->i:Lcom/mosaicture/crop/t;

    invoke-virtual {v3}, Lcom/mosaicture/crop/t;->b()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/mosaicture/crop/ImageViewTouchBase;->i:Lcom/mosaicture/crop/t;

    invoke-virtual {v4}, Lcom/mosaicture/crop/t;->b()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, v1, v1, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p0}, Lcom/mosaicture/crop/ImageViewTouchBase;->getHeight()I

    move-result v4

    int-to-float v5, v4

    cmpg-float v5, v0, v5

    if-gez v5, :cond_2

    int-to-float v4, v4

    sub-float v0, v4, v0

    div-float/2addr v0, v6

    iget v4, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v4

    :goto_1
    invoke-virtual {p0}, Lcom/mosaicture/crop/ImageViewTouchBase;->getWidth()I

    move-result v4

    int-to-float v5, v4

    cmpg-float v5, v3, v5

    if-gez v5, :cond_4

    int-to-float v1, v4

    sub-float/2addr v1, v3

    div-float/2addr v1, v6

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    :cond_1
    :goto_2
    invoke-virtual {p0, v1, v0}, Lcom/mosaicture/crop/ImageViewTouchBase;->a(FF)V

    invoke-direct {p0}, Lcom/mosaicture/crop/ImageViewTouchBase;->d()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mosaicture/crop/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    :cond_2
    iget v0, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget v0, v2, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    goto :goto_1

    :cond_3
    iget v0, v2, Landroid/graphics/RectF;->bottom:F

    int-to-float v4, v4

    cmpg-float v0, v0, v4

    if-gez v0, :cond_6

    invoke-virtual {p0}, Lcom/mosaicture/crop/ImageViewTouchBase;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v4

    goto :goto_1

    :cond_4
    iget v3, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v3, v3, v1

    if-lez v3, :cond_5

    iget v1, v2, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    goto :goto_2

    :cond_5
    iget v3, v2, Landroid/graphics/RectF;->right:F

    int-to-float v5, v4

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    int-to-float v1, v4

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method protected final b(FF)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/mosaicture/crop/ImageViewTouchBase;->a(FF)V

    invoke-direct {p0}, Lcom/mosaicture/crop/ImageViewTouchBase;->d()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mosaicture/crop/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method protected final b(FFF)V
    .locals 9

    invoke-virtual {p0}, Lcom/mosaicture/crop/ImageViewTouchBase;->c()F

    move-result v0

    sub-float v0, p1, v0

    const/high16 v1, 0x4396

    div-float v5, v0, v1

    invoke-virtual {p0}, Lcom/mosaicture/crop/ImageViewTouchBase;->c()F

    move-result v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v8, p0, Lcom/mosaicture/crop/ImageViewTouchBase;->m:Landroid/os/Handler;

    new-instance v0, Lcom/mosaicture/crop/p;

    move-object v1, p0

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/mosaicture/crop/p;-><init>(Lcom/mosaicture/crop/ImageViewTouchBase;JFFFF)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected final c()F
    .locals 2

    iget-object v0, p0, Lcom/mosaicture/crop/ImageViewTouchBase;->h:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/mosaicture/crop/ImageViewTouchBase;->b:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v0, p0, Lcom/mosaicture/crop/ImageViewTouchBase;->b:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/high16 v3, 0x4000

    const/high16 v2, 0x3f80

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/mosaicture/crop/ImageViewTouchBase;->c()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/mosaicture/crop/ImageViewTouchBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    invoke-virtual {p0}, Lcom/mosaicture/crop/ImageViewTouchBase;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0, v2, v0, v1}, Lcom/mosaicture/crop/ImageViewTouchBase;->a(FFF)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    sub-int v0, p4, p2

    iput v0, p0, Lcom/mosaicture/crop/ImageViewTouchBase;->j:I

    sub-int v0, p5, p3

    iput v0, p0, Lcom/mosaicture/crop/ImageViewTouchBase;->k:I

    iget-object v0, p0, Lcom/mosaicture/crop/ImageViewTouchBase;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mosaicture/crop/ImageViewTouchBase;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object v0, p0, Lcom/mosaicture/crop/ImageViewTouchBase;->i:Lcom/mosaicture/crop/t;

    invoke-virtual {v0}, Lcom/mosaicture/crop/t;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mosaicture/crop/ImageViewTouchBase;->i:Lcom/mosaicture/crop/t;

    iget-object v1, p0, Lcom/mosaicture/crop/ImageViewTouchBase;->g:Landroid/graphics/Matrix;

    invoke-direct {p0, v0, v1}, Lcom/mosaicture/crop/ImageViewTouchBase;->a(Lcom/mosaicture/crop/t;Landroid/graphics/Matrix;)V

    invoke-direct {p0}, Lcom/mosaicture/crop/ImageViewTouchBase;->d()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mosaicture/crop/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_1
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mosaicture/crop/ImageViewTouchBase;->a(Landroid/graphics/Bitmap;I)V

    return-void
.end method
