.class public Lten/thirty/three/resistoridlite/BandButtonColumn;
.super Ljava/lang/Object;
.source "BandButtonColumn.java"


# instance fields
.field public Bands:[Landroid/graphics/Bitmap;

.field public Buttons:[Landroid/graphics/RectF;

.field public LastTouch:I

.field bbPaint:Landroid/graphics/Paint;

.field dimImage:Landroid/graphics/Bitmap;

.field rect:Landroid/graphics/RectF;

.field sourceRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;[Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 9
    .parameter "bounds"
    .parameter "bands"
    .parameter "dimImg"

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lten/thirty/three/resistoridlite/BandButtonColumn;->bbPaint:Landroid/graphics/Paint;

    .line 43
    const/4 v2, -0x1

    iput v2, p0, Lten/thirty/three/resistoridlite/BandButtonColumn;->LastTouch:I

    .line 16
    new-instance v2, Landroid/graphics/Rect;

    aget-object v3, p2, v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v3, v6

    aget-object v4, p2, v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-direct {v2, v6, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lten/thirty/three/resistoridlite/BandButtonColumn;->sourceRect:Landroid/graphics/Rect;

    .line 18
    iput-object p1, p0, Lten/thirty/three/resistoridlite/BandButtonColumn;->rect:Landroid/graphics/RectF;

    .line 19
    iput-object p2, p0, Lten/thirty/three/resistoridlite/BandButtonColumn;->Bands:[Landroid/graphics/Bitmap;

    .line 20
    array-length v2, p2

    new-array v2, v2, [Landroid/graphics/RectF;

    iput-object v2, p0, Lten/thirty/three/resistoridlite/BandButtonColumn;->Buttons:[Landroid/graphics/RectF;

    .line 21
    iput-object p3, p0, Lten/thirty/three/resistoridlite/BandButtonColumn;->dimImage:Landroid/graphics/Bitmap;

    .line 22
    iget-object v2, p0, Lten/thirty/three/resistoridlite/BandButtonColumn;->bbPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 27
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    array-length v3, p2

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 29
    .local v0, buttonHeight:F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p2

    if-lt v1, v2, :cond_0

    .line 34
    return-void

    .line 31
    :cond_0
    iget-object v2, p0, Lten/thirty/three/resistoridlite/BandButtonColumn;->Buttons:[Landroid/graphics/RectF;

    new-instance v3, Landroid/graphics/RectF;

    iget-object v4, p0, Lten/thirty/three/resistoridlite/BandButtonColumn;->rect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    int-to-float v5, v1

    mul-float/2addr v5, v0

    iget v6, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v6

    iget-object v6, p0, Lten/thirty/three/resistoridlite/BandButtonColumn;->rect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    int-to-float v7, v1

    mul-float/2addr v7, v0

    add-float/2addr v7, v0

    iget v8, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v3, v2, v1

    .line 29
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;Z)V
    .locals 6
    .parameter "canvas"
    .parameter "dim"

    .prologue
    const/4 v5, 0x0

    .line 65
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lten/thirty/three/resistoridlite/BandButtonColumn;->Buttons:[Landroid/graphics/RectF;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 71
    if-eqz p2, :cond_0

    .line 73
    iget-object v1, p0, Lten/thirty/three/resistoridlite/BandButtonColumn;->dimImage:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lten/thirty/three/resistoridlite/BandButtonColumn;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1, v1, v5, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 76
    :cond_0
    return-void

    .line 68
    :cond_1
    iget-object v1, p0, Lten/thirty/three/resistoridlite/BandButtonColumn;->Bands:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    iget-object v2, p0, Lten/thirty/three/resistoridlite/BandButtonColumn;->sourceRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lten/thirty/three/resistoridlite/BandButtonColumn;->Buttons:[Landroid/graphics/RectF;

    aget-object v3, v3, v0

    iget-object v4, p0, Lten/thirty/three/resistoridlite/BandButtonColumn;->bbPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onTouch(FFZ)I
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "yOnly"

    .prologue
    .line 47
    if-eqz p3, :cond_0

    .line 48
    iget-object v1, p0, Lten/thirty/three/resistoridlite/BandButtonColumn;->Buttons:[Landroid/graphics/RectF;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x4040

    add-float p1, v1, v2

    .line 49
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lten/thirty/three/resistoridlite/BandButtonColumn;->Buttons:[Landroid/graphics/RectF;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 59
    const/4 v1, -0x1

    :goto_1
    return v1

    .line 52
    :cond_1
    iget-object v1, p0, Lten/thirty/three/resistoridlite/BandButtonColumn;->Buttons:[Landroid/graphics/RectF;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 54
    iput v0, p0, Lten/thirty/three/resistoridlite/BandButtonColumn;->LastTouch:I

    move v1, v0

    .line 55
    goto :goto_1

    .line 49
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
