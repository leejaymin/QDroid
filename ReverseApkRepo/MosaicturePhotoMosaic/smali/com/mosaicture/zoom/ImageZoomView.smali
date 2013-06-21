.class public Lcom/mosaicture/zoom/ImageZoomView;
.super Landroid/view/View;

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/Rect;

.field private final c:Landroid/graphics/Rect;

.field private final d:Lcom/mosaicture/zoom/a;

.field private e:Landroid/graphics/Bitmap;

.field private f:Lcom/mosaicture/zoom/p;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/mosaicture/zoom/ImageZoomView;->a:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/mosaicture/zoom/ImageZoomView;->b:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/mosaicture/zoom/ImageZoomView;->c:Landroid/graphics/Rect;

    new-instance v0, Lcom/mosaicture/zoom/a;

    invoke-direct {v0}, Lcom/mosaicture/zoom/a;-><init>()V

    iput-object v0, p0, Lcom/mosaicture/zoom/ImageZoomView;->d:Lcom/mosaicture/zoom/a;

    return-void
.end method


# virtual methods
.method public final a()Lcom/mosaicture/zoom/a;
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/zoom/ImageZoomView;->d:Lcom/mosaicture/zoom/a;

    return-object v0
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .locals 5

    iput-object p1, p0, Lcom/mosaicture/zoom/ImageZoomView;->e:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/mosaicture/zoom/ImageZoomView;->d:Lcom/mosaicture/zoom/a;

    invoke-virtual {p0}, Lcom/mosaicture/zoom/ImageZoomView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/mosaicture/zoom/ImageZoomView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/mosaicture/zoom/ImageZoomView;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/mosaicture/zoom/ImageZoomView;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mosaicture/zoom/a;->a(FFFF)V

    iget-object v0, p0, Lcom/mosaicture/zoom/ImageZoomView;->d:Lcom/mosaicture/zoom/a;

    invoke-virtual {v0}, Lcom/mosaicture/zoom/a;->notifyObservers()V

    invoke-virtual {p0}, Lcom/mosaicture/zoom/ImageZoomView;->invalidate()V

    return-void
.end method

.method public final a(Lcom/mosaicture/zoom/p;)V
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/zoom/ImageZoomView;->f:Lcom/mosaicture/zoom/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mosaicture/zoom/ImageZoomView;->f:Lcom/mosaicture/zoom/p;

    invoke-virtual {v0, p0}, Lcom/mosaicture/zoom/p;->deleteObserver(Ljava/util/Observer;)V

    :cond_0
    iput-object p1, p0, Lcom/mosaicture/zoom/ImageZoomView;->f:Lcom/mosaicture/zoom/p;

    iget-object v0, p0, Lcom/mosaicture/zoom/ImageZoomView;->f:Lcom/mosaicture/zoom/p;

    invoke-virtual {v0, p0}, Lcom/mosaicture/zoom/p;->addObserver(Ljava/util/Observer;)V

    invoke-virtual {p0}, Lcom/mosaicture/zoom/ImageZoomView;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    const/4 v12, 0x0

    const/high16 v11, 0x4000

    iget-object v0, p0, Lcom/mosaicture/zoom/ImageZoomView;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mosaicture/zoom/ImageZoomView;->f:Lcom/mosaicture/zoom/p;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mosaicture/zoom/ImageZoomView;->d:Lcom/mosaicture/zoom/a;

    invoke-virtual {v0}, Lcom/mosaicture/zoom/a;->a()F

    move-result v0

    invoke-virtual {p0}, Lcom/mosaicture/zoom/ImageZoomView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/mosaicture/zoom/ImageZoomView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/mosaicture/zoom/ImageZoomView;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/mosaicture/zoom/ImageZoomView;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/mosaicture/zoom/ImageZoomView;->f:Lcom/mosaicture/zoom/p;

    invoke-virtual {v5}, Lcom/mosaicture/zoom/p;->a()F

    move-result v5

    iget-object v6, p0, Lcom/mosaicture/zoom/ImageZoomView;->f:Lcom/mosaicture/zoom/p;

    invoke-virtual {v6}, Lcom/mosaicture/zoom/p;->b()F

    move-result v6

    iget-object v7, p0, Lcom/mosaicture/zoom/ImageZoomView;->f:Lcom/mosaicture/zoom/p;

    invoke-virtual {v7, v0}, Lcom/mosaicture/zoom/p;->a(F)F

    move-result v7

    int-to-float v8, v1

    mul-float/2addr v7, v8

    int-to-float v8, v3

    div-float/2addr v7, v8

    iget-object v8, p0, Lcom/mosaicture/zoom/ImageZoomView;->f:Lcom/mosaicture/zoom/p;

    invoke-virtual {v8, v0}, Lcom/mosaicture/zoom/p;->b(F)F

    move-result v0

    int-to-float v8, v2

    mul-float/2addr v0, v8

    int-to-float v8, v4

    div-float/2addr v0, v8

    iget-object v8, p0, Lcom/mosaicture/zoom/ImageZoomView;->b:Landroid/graphics/Rect;

    int-to-float v9, v3

    mul-float/2addr v5, v9

    int-to-float v9, v1

    mul-float v10, v7, v11

    div-float/2addr v9, v10

    sub-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, v8, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/mosaicture/zoom/ImageZoomView;->b:Landroid/graphics/Rect;

    int-to-float v8, v4

    mul-float/2addr v6, v8

    int-to-float v8, v2

    mul-float v9, v0, v11

    div-float/2addr v8, v9

    sub-float/2addr v6, v8

    float-to-int v6, v6

    iput v6, v5, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/mosaicture/zoom/ImageZoomView;->b:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/mosaicture/zoom/ImageZoomView;->b:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    int-to-float v1, v1

    div-float/2addr v1, v7

    add-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, v5, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/mosaicture/zoom/ImageZoomView;->b:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/mosaicture/zoom/ImageZoomView;->b:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    int-to-float v2, v2

    div-float/2addr v2, v0

    add-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/mosaicture/zoom/ImageZoomView;->c:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/mosaicture/zoom/ImageZoomView;->getLeft()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/mosaicture/zoom/ImageZoomView;->c:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/mosaicture/zoom/ImageZoomView;->getTop()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/mosaicture/zoom/ImageZoomView;->c:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/mosaicture/zoom/ImageZoomView;->getRight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/mosaicture/zoom/ImageZoomView;->c:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/mosaicture/zoom/ImageZoomView;->getBottom()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/mosaicture/zoom/ImageZoomView;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/mosaicture/zoom/ImageZoomView;->c:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v5, p0, Lcom/mosaicture/zoom/ImageZoomView;->b:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    neg-int v5, v5

    int-to-float v5, v5

    mul-float/2addr v5, v7

    add-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/mosaicture/zoom/ImageZoomView;->b:Landroid/graphics/Rect;

    iput v12, v1, Landroid/graphics/Rect;->left:I

    :cond_0
    iget-object v1, p0, Lcom/mosaicture/zoom/ImageZoomView;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-le v1, v3, :cond_1

    iget-object v1, p0, Lcom/mosaicture/zoom/ImageZoomView;->c:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget-object v5, p0, Lcom/mosaicture/zoom/ImageZoomView;->b:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v3

    int-to-float v5, v5

    mul-float/2addr v5, v7

    sub-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/mosaicture/zoom/ImageZoomView;->b:Landroid/graphics/Rect;

    iput v3, v1, Landroid/graphics/Rect;->right:I

    :cond_1
    iget-object v1, p0, Lcom/mosaicture/zoom/ImageZoomView;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/mosaicture/zoom/ImageZoomView;->c:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/mosaicture/zoom/ImageZoomView;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/mosaicture/zoom/ImageZoomView;->b:Landroid/graphics/Rect;

    iput v12, v1, Landroid/graphics/Rect;->top:I

    :cond_2
    iget-object v1, p0, Lcom/mosaicture/zoom/ImageZoomView;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-le v1, v4, :cond_3

    iget-object v1, p0, Lcom/mosaicture/zoom/ImageZoomView;->c:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/mosaicture/zoom/ImageZoomView;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v0, v3

    sub-float v0, v2, v0

    float-to-int v0, v0

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/mosaicture/zoom/ImageZoomView;->b:Landroid/graphics/Rect;

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    :cond_3
    iget-object v0, p0, Lcom/mosaicture/zoom/ImageZoomView;->e:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/mosaicture/zoom/ImageZoomView;->b:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/mosaicture/zoom/ImageZoomView;->c:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/mosaicture/zoom/ImageZoomView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_4
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/mosaicture/zoom/ImageZoomView;->d:Lcom/mosaicture/zoom/a;

    sub-int v1, p4, p2

    int-to-float v1, v1

    sub-int v2, p5, p3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/mosaicture/zoom/ImageZoomView;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/mosaicture/zoom/ImageZoomView;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mosaicture/zoom/a;->a(FFFF)V

    iget-object v0, p0, Lcom/mosaicture/zoom/ImageZoomView;->d:Lcom/mosaicture/zoom/a;

    invoke-virtual {v0}, Lcom/mosaicture/zoom/a;->notifyObservers()V

    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Lcom/mosaicture/zoom/ImageZoomView;->invalidate()V

    return-void
.end method
