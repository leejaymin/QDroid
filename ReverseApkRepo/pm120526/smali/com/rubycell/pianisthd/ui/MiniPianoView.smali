.class public Lcom/rubycell/pianisthd/ui/MiniPianoView;
.super Landroid/widget/HorizontalScrollView;


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/graphics/Bitmap;

.field c:Landroid/graphics/Paint;

.field d:Landroid/graphics/Paint;

.field e:Z

.field f:F

.field g:F

.field h:F

.field i:F

.field j:Landroid/graphics/Rect;

.field k:Lcom/rubycell/pianisthd/ui/CustomScrollView;

.field l:Ljava/util/ArrayList;

.field m:I

.field n:Z

.field o:I

.field private p:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->a:Landroid/content/Context;

    iput-boolean v0, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->e:Z

    iput-boolean v0, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->n:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget v0, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->f:F

    iget v1, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->g:F

    iget v2, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->o:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->f:F

    iget v1, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->g:F

    iget v2, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->o:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    :goto_0
    iput v0, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->f:F

    iget-boolean v0, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->k:Lcom/rubycell/pianisthd/ui/CustomScrollView;

    iget v1, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->g:F

    iget v2, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->o:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->p:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->i:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1, v4}, Lcom/rubycell/pianisthd/ui/CustomScrollView;->scrollBy(II)V

    :goto_1
    invoke-virtual {p0}, Lcom/rubycell/pianisthd/ui/MiniPianoView;->invalidate()V

    return-void

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->k:Lcom/rubycell/pianisthd/ui/CustomScrollView;

    iget v1, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->g:F

    iget v2, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->o:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->p:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->i:F

    div-float/2addr v1, v2

    neg-float v1, v1

    float-to-int v1, v1

    invoke-virtual {v0, v1, v4}, Lcom/rubycell/pianisthd/ui/CustomScrollView;->scrollBy(II)V

    goto :goto_1
.end method

.method public final a(Landroid/view/MotionEvent;Ljava/util/ArrayList;I)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iput-object p2, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->l:Ljava/util/ArrayList;

    if-ne p3, v3, :cond_2

    sget v0, Lcom/rubycell/pianisthd/d/b;->c:I

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    iget-boolean v1, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->e:Z

    if-eqz v1, :cond_1

    sget v1, Lcom/rubycell/pianisthd/d/b;->d:I

    neg-int v1, v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x8

    :goto_1
    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :goto_2
    invoke-virtual {p0}, Lcom/rubycell/pianisthd/ui/MiniPianoView;->invalidate()V

    invoke-virtual {p0, p1}, Lcom/rubycell/pianisthd/ui/MiniPianoView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v0, v3

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    sget v0, Lcom/rubycell/pianisthd/d/b;->c:I

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    sget v1, Lcom/rubycell/pianisthd/d/b;->d:I

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_2
.end method

.method public final b()V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->f:F

    iget v1, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->g:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->g:F

    iget v2, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->o:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->i:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->f:F

    iget v1, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->g:F

    iget v2, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->o:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    :goto_0
    iput v0, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->f:F

    iget-boolean v0, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->k:Lcom/rubycell/pianisthd/ui/CustomScrollView;

    iget v1, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->g:F

    iget v2, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->o:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->p:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->i:F

    div-float/2addr v1, v2

    neg-float v1, v1

    float-to-int v1, v1

    invoke-virtual {v0, v1, v3}, Lcom/rubycell/pianisthd/ui/CustomScrollView;->scrollBy(II)V

    :goto_1
    invoke-virtual {p0}, Lcom/rubycell/pianisthd/ui/MiniPianoView;->invalidate()V

    return-void

    :cond_0
    iget v0, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->i:F

    iget v1, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->g:F

    sub-float/2addr v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->k:Lcom/rubycell/pianisthd/ui/CustomScrollView;

    iget v1, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->g:F

    iget v2, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->o:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->p:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->i:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1, v3}, Lcom/rubycell/pianisthd/ui/CustomScrollView;->scrollBy(II)V

    goto :goto_1
.end method

.method public final c()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget v0, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->f:F

    iget v1, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->g:F

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->f:F

    iget v1, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->g:F

    sub-float/2addr v0, v1

    :goto_0
    iput v0, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->f:F

    iget-boolean v0, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->k:Lcom/rubycell/pianisthd/ui/CustomScrollView;

    iget v1, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->g:F

    iget v2, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->p:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->i:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1, v3}, Lcom/rubycell/pianisthd/ui/CustomScrollView;->scrollBy(II)V

    :goto_1
    invoke-virtual {p0}, Lcom/rubycell/pianisthd/ui/MiniPianoView;->invalidate()V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->k:Lcom/rubycell/pianisthd/ui/CustomScrollView;

    iget v1, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->g:F

    iget v2, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->p:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->i:F

    div-float/2addr v1, v2

    neg-float v1, v1

    float-to-int v1, v1

    invoke-virtual {v0, v1, v3}, Lcom/rubycell/pianisthd/ui/CustomScrollView;->scrollBy(II)V

    goto :goto_1
.end method

.method public final d()V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->f:F

    iget v1, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->g:F

    const/high16 v2, 0x4000

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->i:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->f:F

    iget v1, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->g:F

    add-float/2addr v0, v1

    :goto_0
    iput v0, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->f:F

    iget-boolean v0, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->k:Lcom/rubycell/pianisthd/ui/CustomScrollView;

    iget v1, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->g:F

    iget v2, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->p:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->i:F

    div-float/2addr v1, v2

    neg-float v1, v1

    float-to-int v1, v1

    invoke-virtual {v0, v1, v3}, Lcom/rubycell/pianisthd/ui/CustomScrollView;->scrollBy(II)V

    :goto_1
    invoke-virtual {p0}, Lcom/rubycell/pianisthd/ui/MiniPianoView;->invalidate()V

    return-void

    :cond_0
    iget v0, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->i:F

    iget v1, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->g:F

    sub-float/2addr v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->k:Lcom/rubycell/pianisthd/ui/CustomScrollView;

    iget v1, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->g:F

    iget v2, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->p:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->i:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1, v3}, Lcom/rubycell/pianisthd/ui/CustomScrollView;->scrollBy(II)V

    goto :goto_1
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const/high16 v4, 0x4000

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->n:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->e:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x4334

    iget v1, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->i:F

    div-float/2addr v1, v4

    iget v3, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->h:F

    div-float/2addr v3, v4

    invoke-virtual {p1, v0, v1, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_1
    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->b:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget v1, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->f:F

    iget v0, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->g:F

    add-float v3, v1, v0

    iget v4, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->h:F

    iget-object v5, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->c:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/Rect;

    float-to-int v1, v1

    const/4 v2, 0x0

    float-to-int v3, v3

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->j:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2

    iget v0, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->i:F

    float-to-int v0, v0

    iget v1, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->h:F

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/rubycell/pianisthd/ui/MiniPianoView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    move v0, v6

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->l:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iget-boolean v2, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->e:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->i:F

    sub-float v2, v1, v2

    iget v3, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->f:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->p:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->i:F

    div-float/2addr v2, v3

    iget v3, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->g:F

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_2

    iget v3, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->i:F

    sub-float v1, v3, v1

    :goto_1
    iput v1, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->f:F

    iget v1, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->f:F

    cmpl-float v1, v1, v5

    if-ltz v1, :cond_3

    iget v1, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->f:F

    :goto_2
    iput v1, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->f:F

    move v1, v2

    :goto_3
    iget-object v2, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->k:Lcom/rubycell/pianisthd/ui/CustomScrollView;

    float-to-int v1, v1

    invoke-virtual {v2, v1, v6}, Lcom/rubycell/pianisthd/ui/CustomScrollView;->scrollBy(II)V

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/ui/MiniPianoView;->invalidate()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->i:F

    iget v3, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->g:F

    sub-float/2addr v1, v3

    goto :goto_1

    :cond_3
    move v1, v5

    goto :goto_2

    :cond_4
    iget v2, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->f:F

    sub-float v2, v1, v2

    iget v3, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->p:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->i:F

    div-float/2addr v2, v3

    cmpl-float v3, v1, v5

    if-ltz v3, :cond_5

    :goto_4
    iput v1, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->f:F

    iget v1, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->f:F

    iget v3, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->i:F

    iget v4, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->g:F

    sub-float/2addr v3, v4

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_6

    iget v1, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->f:F

    :goto_5
    iput v1, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->f:F

    move v1, v2

    goto :goto_3

    :cond_5
    move v1, v5

    goto :goto_4

    :cond_6
    iget v1, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->i:F

    iget v3, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->g:F

    sub-float/2addr v1, v3

    goto :goto_5
.end method

.method public setPosition()V
    .locals 5

    const/4 v4, 0x0

    const/high16 v2, 0x4000

    iget v0, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->p:F

    div-float/2addr v0, v2

    iget v1, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->i:F

    div-float/2addr v1, v2

    iput v1, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->f:F

    iget-boolean v1, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->e:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->k:Lcom/rubycell/pianisthd/ui/CustomScrollView;

    iget v2, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->p:F

    const/high16 v3, 0x4250

    div-float/2addr v2, v3

    iget v3, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->o:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0, v4}, Lcom/rubycell/pianisthd/ui/CustomScrollView;->scrollBy(II)V

    :goto_0
    invoke-virtual {p0}, Lcom/rubycell/pianisthd/ui/MiniPianoView;->invalidate()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->k:Lcom/rubycell/pianisthd/ui/CustomScrollView;

    float-to-int v0, v0

    invoke-virtual {v1, v0, v4}, Lcom/rubycell/pianisthd/ui/CustomScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method public setScrollView(Lcom/rubycell/pianisthd/ui/CustomScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->k:Lcom/rubycell/pianisthd/ui/CustomScrollView;

    return-void
.end method

.method public setType(IZ)V
    .locals 10

    const/16 v9, 0x64

    const/4 v8, 0x1

    const/16 v7, 0xff

    const/4 v6, 0x0

    const/high16 v5, 0x4250

    iput-boolean p2, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->e:Z

    iput p1, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->m:I

    invoke-static {}, Lcom/rubycell/pianisthd/d/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    invoke-virtual {p0}, Lcom/rubycell/pianisthd/ui/MiniPianoView;->invalidate()V

    return-void

    :cond_0
    iput-boolean v8, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->n:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->l:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/ui/MiniPianoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02011e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sget v1, Lcom/rubycell/pianisthd/d/b;->c:I

    int-to-float v1, v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    iput v1, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->i:F

    sget v1, Lcom/rubycell/pianisthd/d/b;->d:I

    int-to-float v1, v1

    const/high16 v2, 0x4140

    div-float/2addr v1, v2

    iput v1, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->h:F

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iget v2, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->i:F

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->h:F

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget v1, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->i:F

    float-to-int v1, v1

    iget v2, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->h:F

    float-to-int v2, v2

    invoke-static {v0, v1, v2, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->b:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->c:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->c:Landroid/graphics/Paint;

    invoke-static {v9, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->d:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->d:Landroid/graphics/Paint;

    invoke-static {v9, v7, v7, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->m:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->i:F

    sget v1, Lcom/rubycell/pianisthd/d/b;->N:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    div-float/2addr v0, v5

    iput v0, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->g:F

    sget v0, Lcom/rubycell/pianisthd/d/b;->N:I

    iput v0, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->o:I

    sget v0, Lcom/rubycell/pianisthd/d/b;->c:I

    int-to-float v0, v0

    sget v1, Lcom/rubycell/pianisthd/d/b;->N:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float/2addr v0, v5

    iput v0, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->p:F

    :goto_1
    iget-boolean v0, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->e:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->i:F

    iget v1, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->g:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->f:F

    goto/16 :goto_0

    :cond_1
    iget v0, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->i:F

    sget v1, Lcom/rubycell/pianisthd/d/b;->O:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    div-float/2addr v0, v5

    iput v0, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->g:F

    sget v0, Lcom/rubycell/pianisthd/d/b;->O:I

    iput v0, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->o:I

    sget v0, Lcom/rubycell/pianisthd/d/b;->c:I

    int-to-float v0, v0

    sget v1, Lcom/rubycell/pianisthd/d/b;->O:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float/2addr v0, v5

    iput v0, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->p:F

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/rubycell/pianisthd/ui/MiniPianoView;->f:F

    goto/16 :goto_0
.end method
