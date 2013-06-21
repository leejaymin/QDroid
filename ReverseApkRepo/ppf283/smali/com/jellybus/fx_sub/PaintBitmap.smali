.class public Lcom/jellybus/fx_sub/PaintBitmap;
.super Ljava/lang/Object;
.source "PaintBitmap.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "RotateBitmap"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private mHeight:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p0, p1}, Lcom/jellybus/fx_sub/PaintBitmap;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 19
    return-void
.end method

.method private invalidate()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 44
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 45
    .local v2, matrix:Landroid/graphics/Matrix;
    iget v4, p0, Lcom/jellybus/fx_sub/PaintBitmap;->mBitmapWidth:I

    div-int/lit8 v0, v4, 0x2

    .line 46
    .local v0, cx:I
    iget v4, p0, Lcom/jellybus/fx_sub/PaintBitmap;->mBitmapHeight:I

    div-int/lit8 v1, v4, 0x2

    .line 47
    .local v1, cy:I
    neg-int v4, v0

    int-to-float v4, v4

    neg-int v5, v1

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 48
    int-to-float v4, v0

    int-to-float v5, v0

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 50
    new-instance v3, Landroid/graphics/RectF;

    iget v4, p0, Lcom/jellybus/fx_sub/PaintBitmap;->mBitmapWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/jellybus/fx_sub/PaintBitmap;->mBitmapHeight:I

    int-to-float v5, v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 51
    .local v3, rect:Landroid/graphics/RectF;
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 52
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/jellybus/fx_sub/PaintBitmap;->mWidth:I

    .line 53
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/jellybus/fx_sub/PaintBitmap;->mHeight:I

    .line 54
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/jellybus/fx_sub/PaintBitmap;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/jellybus/fx_sub/PaintBitmap;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/jellybus/fx_sub/PaintBitmap;->mWidth:I

    return v0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/jellybus/fx_sub/PaintBitmap;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/jellybus/fx_sub/PaintBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jellybus/fx_sub/PaintBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 72
    :cond_0
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/jellybus/fx_sub/PaintBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 35
    iget-object v0, p0, Lcom/jellybus/fx_sub/PaintBitmap;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/jellybus/fx_sub/PaintBitmap;->mBitmapWidth:I

    .line 37
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/jellybus/fx_sub/PaintBitmap;->mBitmapHeight:I

    .line 38
    invoke-direct {p0}, Lcom/jellybus/fx_sub/PaintBitmap;->invalidate()V

    .line 40
    :cond_0
    return-void
.end method

.method public setRotation()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/jellybus/fx_sub/PaintBitmap;->invalidate()V

    .line 24
    return-void
.end method
