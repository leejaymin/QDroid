.class public final Lcom/mosaicture/zoom/o;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    rem-int/lit16 v0, p2, 0x168

    iput v0, p0, Lcom/mosaicture/zoom/o;->b:I

    invoke-virtual {p0, p1}, Lcom/mosaicture/zoom/o;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private f()V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget v1, p0, Lcom/mosaicture/zoom/o;->e:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/mosaicture/zoom/o;->f:I

    div-int/lit8 v2, v2, 0x2

    neg-int v3, v1

    int-to-float v3, v3

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget v2, p0, Lcom/mosaicture/zoom/o;->b:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/mosaicture/zoom/o;->e:I

    int-to-float v2, v2

    iget v3, p0, Lcom/mosaicture/zoom/o;->f:I

    int-to-float v3, v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/mosaicture/zoom/o;->c:I

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/mosaicture/zoom/o;->d:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/mosaicture/zoom/o;->b:I

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/mosaicture/zoom/o;->b:I

    invoke-direct {p0}, Lcom/mosaicture/zoom/o;->f()V

    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .locals 1

    iput-object p1, p0, Lcom/mosaicture/zoom/o;->a:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/mosaicture/zoom/o;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/mosaicture/zoom/o;->e:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/mosaicture/zoom/o;->f:I

    invoke-direct {p0}, Lcom/mosaicture/zoom/o;->f()V

    :cond_0
    return-void
.end method

.method public final b()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/zoom/o;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final c()Landroid/graphics/Matrix;
    .locals 3

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget v1, p0, Lcom/mosaicture/zoom/o;->b:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/mosaicture/zoom/o;->e:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/mosaicture/zoom/o;->f:I

    div-int/lit8 v2, v2, 0x2

    neg-int v1, v1

    int-to-float v1, v1

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget v1, p0, Lcom/mosaicture/zoom/o;->b:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    iget v1, p0, Lcom/mosaicture/zoom/o;->c:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/mosaicture/zoom/o;->d:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_0
    return-object v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/mosaicture/zoom/o;->d:I

    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/mosaicture/zoom/o;->c:I

    return v0
.end method
