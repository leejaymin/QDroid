.class final Lcom/mosaicture/crop/m;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/view/View;

.field b:Z

.field c:Z

.field d:Landroid/graphics/Rect;

.field e:Landroid/graphics/RectF;

.field f:Landroid/graphics/Matrix;

.field private g:Lcom/mosaicture/crop/n;

.field private h:Landroid/graphics/RectF;

.field private i:Z

.field private j:F

.field private k:Z

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:Landroid/graphics/drawable/Drawable;

.field private final n:Landroid/graphics/Paint;

.field private final o:Landroid/graphics/Paint;

.field private final p:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/mosaicture/crop/n;->a:Lcom/mosaicture/crop/n;

    iput-object v0, p0, Lcom/mosaicture/crop/m;->g:Lcom/mosaicture/crop/n;

    iput-boolean v1, p0, Lcom/mosaicture/crop/m;->i:Z

    iput-boolean v1, p0, Lcom/mosaicture/crop/m;->k:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mosaicture/crop/m;->n:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mosaicture/crop/m;->o:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mosaicture/crop/m;->p:Landroid/graphics/Paint;

    iput-object p1, p0, Lcom/mosaicture/crop/m;->a:Landroid/view/View;

    return-void
.end method

.method private c()Landroid/graphics/Rect;
    .locals 5

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/mosaicture/crop/m;->e:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/mosaicture/crop/m;->e:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/mosaicture/crop/m;->e:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/mosaicture/crop/m;->e:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/mosaicture/crop/m;->f:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method


# virtual methods
.method public final a(FF)I
    .locals 9

    const/16 v4, 0x20

    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x1

    const/high16 v7, 0x41a0

    invoke-direct {p0}, Lcom/mosaicture/crop/m;->c()Landroid/graphics/Rect;

    move-result-object v5

    iget-boolean v0, p0, Lcom/mosaicture/crop/m;->k:Z

    if-eqz v0, :cond_5

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p1, v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p2, v2

    mul-float v3, v0, v0

    mul-float v5, v2, v2

    add-float/2addr v3, v5

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-int v3, v5

    iget-object v5, p0, Lcom/mosaicture/crop/m;->d:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v6, v3, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    cmpg-float v0, v2, v8

    if-gez v0, :cond_1

    const/16 v1, 0x8

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/16 v1, 0x10

    goto :goto_0

    :cond_2
    cmpg-float v0, v0, v8

    if-gez v0, :cond_3

    const/4 v1, 0x2

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    goto :goto_0

    :cond_4
    if-ge v3, v5, :cond_0

    move v1, v4

    goto :goto_0

    :cond_5
    iget v0, v5, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float/2addr v0, v7

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_9

    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    add-float/2addr v0, v7

    cmpg-float v0, p2, v0

    if-gez v0, :cond_9

    move v0, v1

    :goto_1
    iget v3, v5, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v3, v7

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_6

    iget v3, v5, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    add-float/2addr v3, v7

    cmpg-float v3, p1, v3

    if-gez v3, :cond_6

    move v2, v1

    :cond_6
    iget v3, v5, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v7

    if-gez v3, :cond_c

    if-eqz v0, :cond_c

    const/4 v3, 0x3

    :goto_2
    iget v6, v5, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    sub-float/2addr v6, p1

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v7

    if-gez v6, :cond_7

    if-eqz v0, :cond_7

    or-int/lit8 v3, v3, 0x4

    :cond_7
    iget v0, v5, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v7

    if-gez v0, :cond_8

    if-eqz v2, :cond_8

    or-int/lit8 v3, v3, 0x8

    :cond_8
    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v7

    if-gez v0, :cond_b

    if-eqz v2, :cond_b

    or-int/lit8 v3, v3, 0x10

    move v0, v3

    :goto_3
    if-ne v0, v1, :cond_a

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v4

    goto :goto_0

    :cond_9
    move v0, v2

    goto :goto_1

    :cond_a
    move v1, v0

    goto/16 :goto_0

    :cond_b
    move v0, v3

    goto :goto_3

    :cond_c
    move v3, v1

    goto :goto_2
.end method

.method public final a()Landroid/graphics/Rect;
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/mosaicture/crop/m;->e:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/mosaicture/crop/m;->e:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/mosaicture/crop/m;->e:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/mosaicture/crop/m;->e:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method final a(IFF)V
    .locals 8

    const/16 v6, -0xa

    const/4 v1, 0x1

    const/high16 v3, 0x41c8

    const/high16 v7, 0x4000

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/mosaicture/crop/m;->c()Landroid/graphics/Rect;

    move-result-object v2

    if-ne p1, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v4, 0x20

    if-ne p1, v4, :cond_1

    iget-object v1, p0, Lcom/mosaicture/crop/m;->e:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    mul-float/2addr v1, p2

    iget-object v3, p0, Lcom/mosaicture/crop/m;->e:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v3, v2

    mul-float/2addr v2, p3

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/mosaicture/crop/m;->d:Landroid/graphics/Rect;

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/mosaicture/crop/m;->e:Landroid/graphics/RectF;

    invoke-virtual {v4, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v1, p0, Lcom/mosaicture/crop/m;->e:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/mosaicture/crop/m;->h:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/mosaicture/crop/m;->e:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v4

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v4, p0, Lcom/mosaicture/crop/m;->h:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/mosaicture/crop/m;->e:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual {v1, v2, v4}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v1, p0, Lcom/mosaicture/crop/m;->e:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/mosaicture/crop/m;->h:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/mosaicture/crop/m;->e:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v4

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v4, p0, Lcom/mosaicture/crop/m;->h:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/mosaicture/crop/m;->e:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/RectF;->offset(FF)V

    invoke-direct {p0}, Lcom/mosaicture/crop/m;->c()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/mosaicture/crop/m;->d:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/mosaicture/crop/m;->d:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v6, v6}, Landroid/graphics/Rect;->inset(II)V

    iget-object v0, p0, Lcom/mosaicture/crop/m;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    and-int/lit8 v4, p1, 0x6

    if-nez v4, :cond_2

    move p2, v0

    :cond_2
    and-int/lit8 v4, p1, 0x18

    if-nez v4, :cond_3

    move p3, v0

    :cond_3
    iget-object v4, p0, Lcom/mosaicture/crop/m;->e:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float/2addr v4, p2

    iget-object v5, p0, Lcom/mosaicture/crop/m;->e:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v5, v2

    mul-float v5, p3, v2

    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_c

    const/4 v2, -0x1

    :goto_1
    int-to-float v2, v2

    mul-float/2addr v2, v4

    and-int/lit8 v4, p1, 0x8

    if-eqz v4, :cond_4

    const/4 v1, -0x1

    :cond_4
    int-to-float v1, v1

    mul-float/2addr v1, v5

    iget-boolean v4, p0, Lcom/mosaicture/crop/m;->i:Z

    if-eqz v4, :cond_5

    cmpl-float v4, v2, v0

    if-eqz v4, :cond_d

    iget v1, p0, Lcom/mosaicture/crop/m;->j:F

    div-float v1, v2, v1

    :cond_5
    :goto_2
    new-instance v4, Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/mosaicture/crop/m;->e:Landroid/graphics/RectF;

    invoke-direct {v4, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    cmpl-float v5, v2, v0

    if-lez v5, :cond_6

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v5

    mul-float v6, v7, v2

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/mosaicture/crop/m;->h:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_6

    iget-object v2, p0, Lcom/mosaicture/crop/m;->h:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v2, v5

    div-float/2addr v2, v7

    iget-boolean v5, p0, Lcom/mosaicture/crop/m;->i:Z

    if-eqz v5, :cond_6

    iget v1, p0, Lcom/mosaicture/crop/m;->j:F

    div-float v1, v2, v1

    :cond_6
    cmpl-float v5, v1, v0

    if-lez v5, :cond_7

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v5

    mul-float v6, v7, v1

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/mosaicture/crop/m;->h:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_7

    iget-object v1, p0, Lcom/mosaicture/crop/m;->h:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v5

    sub-float/2addr v1, v5

    div-float/2addr v1, v7

    iget-boolean v5, p0, Lcom/mosaicture/crop/m;->i:Z

    if-eqz v5, :cond_7

    iget v2, p0, Lcom/mosaicture/crop/m;->j:F

    mul-float/2addr v2, v1

    :cond_7
    neg-float v2, v2

    neg-float v1, v1

    invoke-virtual {v4, v2, v1}, Landroid/graphics/RectF;->inset(FF)V

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpg-float v1, v1, v3

    if-gez v1, :cond_8

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float v1, v3, v1

    neg-float v1, v1

    div-float/2addr v1, v7

    invoke-virtual {v4, v1, v0}, Landroid/graphics/RectF;->inset(FF)V

    :cond_8
    iget-boolean v1, p0, Lcom/mosaicture/crop/m;->i:Z

    if-eqz v1, :cond_e

    iget v1, p0, Lcom/mosaicture/crop/m;->j:F

    div-float v1, v3, v1

    :goto_3
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpg-float v2, v2, v1

    if-gez v2, :cond_9

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v2

    sub-float/2addr v1, v2

    neg-float v1, v1

    div-float/2addr v1, v7

    invoke-virtual {v4, v0, v1}, Landroid/graphics/RectF;->inset(FF)V

    :cond_9
    iget v1, v4, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/mosaicture/crop/m;->h:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_f

    iget-object v1, p0, Lcom/mosaicture/crop/m;->h:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    invoke-virtual {v4, v1, v0}, Landroid/graphics/RectF;->offset(FF)V

    :cond_a
    :goto_4
    iget v1, v4, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/mosaicture/crop/m;->h:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_10

    iget-object v1, p0, Lcom/mosaicture/crop/m;->h:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v2, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    invoke-virtual {v4, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    :cond_b
    :goto_5
    iget-object v0, p0, Lcom/mosaicture/crop/m;->e:Landroid/graphics/RectF;

    invoke-virtual {v0, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-direct {p0}, Lcom/mosaicture/crop/m;->c()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/mosaicture/crop/m;->d:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/mosaicture/crop/m;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    :cond_c
    move v2, v1

    goto/16 :goto_1

    :cond_d
    cmpl-float v4, v1, v0

    if-eqz v4, :cond_5

    iget v2, p0, Lcom/mosaicture/crop/m;->j:F

    mul-float/2addr v2, v1

    goto/16 :goto_2

    :cond_e
    move v1, v3

    goto :goto_3

    :cond_f
    iget v1, v4, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/mosaicture/crop/m;->h:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_a

    iget v1, v4, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/mosaicture/crop/m;->h:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    neg-float v1, v1

    invoke-virtual {v4, v1, v0}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_4

    :cond_10
    iget v1, v4, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/mosaicture/crop/m;->h:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_b

    iget v1, v4, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/mosaicture/crop/m;->h:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v2

    neg-float v1, v1

    invoke-virtual {v4, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_5
.end method

.method protected final a(Landroid/graphics/Canvas;)V
    .locals 12

    const v7, -0xcf4b1b

    const/high16 v6, 0x4000

    iget-boolean v0, p0, Lcom/mosaicture/crop/m;->c:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iget-boolean v0, p0, Lcom/mosaicture/crop/m;->b:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mosaicture/crop/m;->p:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/mosaicture/crop/m;->d:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/mosaicture/crop/m;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/mosaicture/crop/m;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-boolean v0, p0, Lcom/mosaicture/crop/m;->k:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mosaicture/crop/m;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/mosaicture/crop/m;->d:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/mosaicture/crop/m;->d:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    div-float v5, v0, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/mosaicture/crop/m;->d:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    div-float/2addr v3, v6

    add-float/2addr v3, v5

    div-float/2addr v0, v6

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v4, v3, v0, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/mosaicture/crop/m;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    sget-object v0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    iget-boolean v0, p0, Lcom/mosaicture/crop/m;->b:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mosaicture/crop/m;->n:Landroid/graphics/Paint;

    :goto_2
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Lcom/mosaicture/crop/m;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/mosaicture/crop/m;->g:Lcom/mosaicture/crop/n;

    sget-object v1, Lcom/mosaicture/crop/n;->c:Lcom/mosaicture/crop/n;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/mosaicture/crop/m;->k:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mosaicture/crop/m;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/mosaicture/crop/m;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    const-wide v2, 0x3fe921fb54442d18L

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    iget-object v4, p0, Lcom/mosaicture/crop/m;->d:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000

    div-double/2addr v4, v6

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    iget-object v3, p0, Lcom/mosaicture/crop/m;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/mosaicture/crop/m;->d:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v3, v2

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v3, v0

    iget-object v3, p0, Lcom/mosaicture/crop/m;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/mosaicture/crop/m;->d:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int v2, v3, v2

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v2, v1

    iget-object v2, p0, Lcom/mosaicture/crop/m;->m:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/mosaicture/crop/m;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/mosaicture/crop/m;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/mosaicture/crop/m;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :cond_3
    new-instance v0, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/mosaicture/crop/m;->d:Landroid/graphics/Rect;

    invoke-direct {v0, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, v3}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/mosaicture/crop/m;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/mosaicture/crop/m;->o:Landroid/graphics/Paint;

    goto/16 :goto_2

    :cond_5
    iget-object v0, p0, Lcom/mosaicture/crop/m;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/mosaicture/crop/m;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/mosaicture/crop/m;->d:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/mosaicture/crop/m;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/mosaicture/crop/m;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/mosaicture/crop/m;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/mosaicture/crop/m;->d:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/mosaicture/crop/m;->d:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Lcom/mosaicture/crop/m;->d:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/mosaicture/crop/m;->d:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/mosaicture/crop/m;->d:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget-object v9, p0, Lcom/mosaicture/crop/m;->d:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/mosaicture/crop/m;->l:Landroid/graphics/drawable/Drawable;

    sub-int v9, v0, v4

    sub-int v10, v7, v5

    add-int/2addr v0, v4

    add-int v11, v7, v5

    invoke-virtual {v8, v9, v10, v0, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/mosaicture/crop/m;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/mosaicture/crop/m;->l:Landroid/graphics/drawable/Drawable;

    sub-int v8, v1, v4

    sub-int v9, v7, v5

    add-int/2addr v1, v4

    add-int/2addr v7, v5

    invoke-virtual {v0, v8, v9, v1, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/mosaicture/crop/m;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/mosaicture/crop/m;->l:Landroid/graphics/drawable/Drawable;

    sub-int v1, v6, v4

    sub-int v7, v2, v5

    add-int v8, v6, v4

    add-int/2addr v2, v5

    invoke-virtual {v0, v1, v7, v8, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/mosaicture/crop/m;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/mosaicture/crop/m;->l:Landroid/graphics/drawable/Drawable;

    sub-int v1, v6, v4

    sub-int v2, v3, v5

    add-int/2addr v4, v6

    add-int/2addr v3, v5

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/mosaicture/crop/m;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method public final a(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZ)V
    .locals 5

    const/16 v4, 0x7d

    const/4 v0, 0x1

    const/16 v3, 0x32

    if-eqz p4, :cond_0

    move p5, v0

    :cond_0
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v1, p0, Lcom/mosaicture/crop/m;->f:Landroid/graphics/Matrix;

    iput-object p3, p0, Lcom/mosaicture/crop/m;->e:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/mosaicture/crop/m;->h:Landroid/graphics/RectF;

    iput-boolean p5, p0, Lcom/mosaicture/crop/m;->i:Z

    iput-boolean p4, p0, Lcom/mosaicture/crop/m;->k:Z

    iget-object v1, p0, Lcom/mosaicture/crop/m;->e:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/mosaicture/crop/m;->e:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/mosaicture/crop/m;->j:F

    invoke-direct {p0}, Lcom/mosaicture/crop/m;->c()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/mosaicture/crop/m;->d:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/mosaicture/crop/m;->n:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v1, p0, Lcom/mosaicture/crop/m;->o:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v1, p0, Lcom/mosaicture/crop/m;->p:Landroid/graphics/Paint;

    const/high16 v2, 0x40c0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/mosaicture/crop/m;->p:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/mosaicture/crop/m;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Lcom/mosaicture/crop/n;->a:Lcom/mosaicture/crop/n;

    iput-object v0, p0, Lcom/mosaicture/crop/m;->g:Lcom/mosaicture/crop/n;

    iget-object v0, p0, Lcom/mosaicture/crop/m;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/mosaicture/crop/m;->l:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f02001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mosaicture/crop/m;->m:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final a(Lcom/mosaicture/crop/n;)V
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/crop/m;->g:Lcom/mosaicture/crop/n;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lcom/mosaicture/crop/m;->g:Lcom/mosaicture/crop/n;

    iget-object v0, p0, Lcom/mosaicture/crop/m;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    invoke-direct {p0}, Lcom/mosaicture/crop/m;->c()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/mosaicture/crop/m;->d:Landroid/graphics/Rect;

    return-void
.end method
