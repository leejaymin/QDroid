.class public Lcom/mosaicture/zoom/ImageZoomViewTouchBase;
.super Landroid/widget/ImageView;


# instance fields
.field private a:Lcom/mosaicture/zoom/k;

.field protected i:Landroid/graphics/Matrix;

.field protected j:Landroid/graphics/Matrix;

.field protected k:Landroid/os/Handler;

.field protected l:Ljava/lang/Runnable;

.field protected m:F

.field protected final n:Landroid/graphics/Matrix;

.field protected final o:[F

.field protected p:I

.field protected q:I

.field protected final r:Lcom/mosaicture/zoom/o;

.field protected final s:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->i:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->j:Landroid/graphics/Matrix;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->k:Landroid/os/Handler;

    iput-object v2, p0, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->l:Ljava/lang/Runnable;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->n:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->o:[F

    iput v1, p0, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->p:I

    iput v1, p0, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->q:I

    new-instance v0, Lcom/mosaicture/zoom/o;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Lcom/mosaicture/zoom/o;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v0, p0, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->r:Lcom/mosaicture/zoom/o;

    const/high16 v0, 0x4000

    iput v0, p0, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->s:F

    invoke-virtual {p0}, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->i:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->j:Landroid/graphics/Matrix;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->k:Landroid/os/Handler;

    iput-object v2, p0, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->l:Ljava/lang/Runnable;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->n:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->o:[F

    iput v1, p0, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->p:I

    iput v1, p0, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->q:I

    new-instance v0, Lcom/mosaicture/zoom/o;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Lcom/mosaicture/zoom/o;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v0, p0, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->r:Lcom/mosaicture/zoom/o;

    const/high16 v0, 0x4000

    iput v0, p0, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->s:F

    invoke-virtual {p0}, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->a()V

    return-void
.end method

.method private a(FF)V
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    sget-object v0, Lcom/mosaicture/zoom/j;->b:Lcom/mosaicture/zoom/j;

    invoke-direct {p0}, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->f()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    :cond_0
    iget-object v0, p0, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->r:Lcom/mosaicture/zoom/o;

    invoke-virtual {v0, p1}, Lcom/mosaicture/zoom/o;->a(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->r:Lcom/mosaicture/zoom/o;

    invoke-virtual {v0, p2}, Lcom/mosaicture/zoom/o;->a(I)V

    return-void
.end method

.method private a(Lcom/mosaicture/zoom/o;Landroid/graphics/Matrix;)V
    .locals 7

    const/high16 v6, 0x4000

    invoke-virtual {p0}, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/mosaicture/zoom/o;->e()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/mosaicture/zoom/o;->d()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    div-float v4, v0, v2

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    div-float v5, v1, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-virtual {p1}, Lcom/mosaicture/zoom/o;->c()Landroid/graphics/Matrix;

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

.method private f()Landroid/graphics/Matrix;
    .locals 2

    iget-object v0, p0, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->n:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->i:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->n:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->n:Landroid/graphics/Matrix;

    return-object v0
.end method

.method private g()Landroid/graphics/RectF;
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->r:Lcom/mosaicture/zoom/o;

    invoke-virtual {v0}, Lcom/mosaicture/zoom/o;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->f()Landroid/graphics/Matrix;

    move-result-object v1

    new-instance v0, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->r:Lcom/mosaicture/zoom/o;

    invoke-virtual {v2}, Lcom/mosaicture/zoom/o;->b()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->r:Lcom/mosaicture/zoom/o;

    invoke-virtual {v3}, Lcom/mosaicture/zoom/o;->b()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v0, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    goto :goto_0
.end method

.method private h()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->r:Lcom/mosaicture/zoom/o;

    invoke-virtual {v0}, Lcom/mosaicture/zoom/o;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->d()Landroid/graphics/RectF;

    move-result-object v0

    iget v1, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    iget v1, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    :cond_2
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-direct {p0, v1, v0}, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->a(FF)V

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 1

    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method protected a(F)V
    .locals 0

    return-void
.end method

.method protected final a(FFF)V
    .locals 2

    iget v0, p0, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->m:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget p1, p0, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->m:F

    :cond_0
    invoke-virtual {p0}, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->c()F

    move-result v0

    div-float v0, p1, v0

    iget-object v1, p0, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->j:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    sget-object v0, Lcom/mosaicture/zoom/j;->c:Lcom/mosaicture/zoom/j;

    invoke-direct {p0}, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->f()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->c()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->a(F)V

    invoke-direct {p0}, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->h()V

    return-void
.end method

.method protected final a(FFFF)V
    .locals 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->c()F

    move-result v0

    sub-float v0, p1, v0

    div-float v6, v0, p4

    invoke-virtual {p0}, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->c()F

    move-result v5

    iget-object v9, p0, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->k:Landroid/os/Handler;

    new-instance v0, Lcom/mosaicture/zoom/i;

    move-object v1, p0

    move v2, p4

    move v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/mosaicture/zoom/i;-><init>(Lcom/mosaicture/zoom/ImageZoomViewTouchBase;FJFFFF)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;IZ)V
    .locals 1

    new-instance v0, Lcom/mosaicture/zoom/o;

    invoke-direct {v0, p1, p2}, Lcom/mosaicture/zoom/o;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {p0, v0, p3}, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->a(Lcom/mosaicture/zoom/o;Z)V

    return-void
.end method

.method public a(Lcom/mosaicture/zoom/o;Z)V
    .locals 3

    const-string v0, "image"

    const-string v1, "setImageRotateBitmapReset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->getWidth()I

    move-result v0

    if-gtz v0, :cond_1

    new-instance v0, Lcom/mosaicture/zoom/g;

    invoke-direct {v0, p0, p1, p2}, Lcom/mosaicture/zoom/g;-><init>(Lcom/mosaicture/zoom/ImageZoomViewTouchBase;Lcom/mosaicture/zoom/o;Z)V

    iput-object v0, p0, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->l:Ljava/lang/Runnable;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/mosaicture/zoom/o;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->i:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v0}, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->a(Lcom/mosaicture/zoom/o;Landroid/graphics/Matrix;)V

    invoke-virtual {p1}, Lcom/mosaicture/zoom/o;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mosaicture/zoom/o;->a()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->a(Landroid/graphics/Bitmap;I)V

    :goto_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    :cond_2
    sget-object v0, Lcom/mosaicture/zoom/j;->e:Lcom/mosaicture/zoom/j;

    invoke-direct {p0}, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->f()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->r:Lcom/mosaicture/zoom/o;

    invoke-virtual {v0}, Lcom/mosaicture/zoom/o;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_4

    const/high16 v0, 0x3f80

    :goto_2
    iput v0, p0, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->m:F

    iget-object v0, p0, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->a:Lcom/mosaicture/zoom/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->a:Lcom/mosaicture/zoom/k;

    invoke-virtual {p1}, Lcom/mosaicture/zoom/o;->b()Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->i:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->r:Lcom/mosaicture/zoom/o;

    invoke-virtual {v0}, Lcom/mosaicture/zoom/o;->e()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->p:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->r:Lcom/mosaicture/zoom/o;

    invoke-virtual {v1}, Lcom/mosaicture/zoom/o;->d()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->q:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x4080

    mul-float/2addr v0, v1

    goto :goto_2
.end method

.method public final b()F
    .locals 1

    iget v0, p0, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->m:F

    return v0
.end method

.method public final b(FF)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->c(FF)V

    return-void
.end method

.method public final c()F
    .locals 2

    iget-object v0, p0, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->o:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v0, p0, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->o:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method protected final c(FF)V
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->g()Landroid/graphics/RectF;

    move-result-object v0

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p1, p2, v6, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0}, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_0

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v4, v4, v3

    if-gtz v4, :cond_0

    iput v6, v1, Landroid/graphics/RectF;->top:F

    :cond_0
    iget v4, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_1

    iget v4, v0, Landroid/graphics/RectF;->right:F

    cmpg-float v4, v4, v2

    if-gtz v4, :cond_1

    iput v6, v1, Landroid/graphics/RectF;->left:F

    :cond_1
    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget v5, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v5

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_2

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, v4, v3

    if-lez v4, :cond_2

    iget v4, v0, Landroid/graphics/RectF;->top:F

    sub-float v4, v6, v4

    float-to-int v4, v4

    int-to-float v4, v4

    iput v4, v1, Landroid/graphics/RectF;->top:F

    :cond_2
    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget v5, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v5

    sub-float v5, v3, v6

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_3

    iget v4, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v4, v4, v6

    if-gez v4, :cond_3

    sub-float/2addr v3, v6

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, v1, Landroid/graphics/RectF;->top:F

    :cond_3
    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget v4, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v4

    cmpl-float v3, v3, v6

    if-ltz v3, :cond_4

    iget v3, v0, Landroid/graphics/RectF;->left:F

    sub-float v3, v6, v3

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, v1, Landroid/graphics/RectF;->left:F

    :cond_4
    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget v4, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v4

    sub-float v4, v2, v6

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_5

    sub-float/2addr v2, v6

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float v0, v2, v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, v1, Landroid/graphics/RectF;->left:F

    :cond_5
    iget v0, v1, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-direct {p0, v0, v1}, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->a(FF)V

    invoke-direct {p0}, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->h()V

    return-void
.end method

.method protected final d()Landroid/graphics/RectF;
    .locals 7

    const/high16 v6, 0x4000

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->r:Lcom/mosaicture/zoom/o;

    invoke-virtual {v0}, Lcom/mosaicture/zoom/o;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->g()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p0}, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->getHeight()I

    move-result v4

    int-to-float v5, v4

    cmpg-float v5, v0, v5

    if-gez v5, :cond_1

    int-to-float v4, v4

    sub-float v0, v4, v0

    div-float/2addr v0, v6

    iget v4, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v4

    :goto_1
    invoke-virtual {p0}, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->getWidth()I

    move-result v4

    int-to-float v5, v4

    cmpg-float v5, v3, v5

    if-gez v5, :cond_3

    int-to-float v4, v4

    sub-float v3, v4, v3

    div-float/2addr v3, v6

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float v2, v3, v2

    :goto_2
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v2, v0, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v0, v3

    goto :goto_0

    :cond_1
    iget v0, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget v0, v2, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    goto :goto_1

    :cond_2
    iget v0, v2, Landroid/graphics/RectF;->bottom:F

    int-to-float v4, v4

    cmpg-float v0, v0, v4

    if-gez v0, :cond_6

    invoke-virtual {p0}, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v4

    goto :goto_1

    :cond_3
    iget v3, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v3, v3, v1

    if-lez v3, :cond_4

    iget v2, v2, Landroid/graphics/RectF;->left:F

    neg-float v2, v2

    goto :goto_2

    :cond_4
    iget v3, v2, Landroid/graphics/RectF;->right:F

    int-to-float v5, v4

    cmpg-float v3, v3, v5

    if-gez v3, :cond_5

    int-to-float v3, v4

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float v2, v3, v2

    goto :goto_2

    :cond_5
    move v2, v1

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method protected final d(FF)V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v6, p0, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->k:Landroid/os/Handler;

    new-instance v0, Lcom/mosaicture/zoom/h;

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/mosaicture/zoom/h;-><init>(Lcom/mosaicture/zoom/ImageZoomViewTouchBase;JFF)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final e()V
    .locals 4

    const/high16 v2, 0x4000

    invoke-virtual {p0}, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    const/high16 v2, 0x3f80

    const/high16 v3, 0x4248

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->a(FFFF)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    sub-int v0, p4, p2

    iput v0, p0, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->p:I

    sub-int v0, p5, p3

    iput v0, p0, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->q:I

    iget-object v0, p0, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->l:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->l:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object v0, p0, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->r:Lcom/mosaicture/zoom/o;

    invoke-virtual {v0}, Lcom/mosaicture/zoom/o;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->r:Lcom/mosaicture/zoom/o;

    iget-object v1, p0, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->i:Landroid/graphics/Matrix;

    invoke-direct {p0, v0, v1}, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->a(Lcom/mosaicture/zoom/o;Landroid/graphics/Matrix;)V

    sget-object v0, Lcom/mosaicture/zoom/j;->d:Lcom/mosaicture/zoom/j;

    invoke-direct {p0}, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->f()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_1
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->a(Landroid/graphics/Bitmap;I)V

    return-void
.end method
