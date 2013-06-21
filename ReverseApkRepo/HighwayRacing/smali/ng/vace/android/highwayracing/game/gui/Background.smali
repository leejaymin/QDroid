.class public Lng/vace/android/highwayracing/game/gui/Background;
.super Lng/vace/android/highwayracing/game/gui/GameElement;
.source "Background.java"


# instance fields
.field final maxWorldX:F

.field final maxWorldY:F

.field speedX:F

.field speedY:F

.field worldX:F

.field worldY:F


# direct methods
.method public constructor <init>(FFFFLandroid/graphics/Bitmap;FFFF)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "speedX"
    .parameter "speedY"
    .parameter "image"
    .parameter "maxWorldX"
    .parameter "maxWorldY"
    .parameter "startWorldX"
    .parameter "startWorldY"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p5}, Lng/vace/android/highwayracing/game/gui/GameElement;-><init>(FFLandroid/graphics/Bitmap;)V

    .line 22
    iput p3, p0, Lng/vace/android/highwayracing/game/gui/Background;->speedX:F

    .line 23
    iput p4, p0, Lng/vace/android/highwayracing/game/gui/Background;->speedY:F

    .line 24
    iput p6, p0, Lng/vace/android/highwayracing/game/gui/Background;->maxWorldX:F

    .line 25
    iput p7, p0, Lng/vace/android/highwayracing/game/gui/Background;->maxWorldY:F

    .line 26
    iput p8, p0, Lng/vace/android/highwayracing/game/gui/Background;->worldX:F

    .line 27
    iput p9, p0, Lng/vace/android/highwayracing/game/gui/Background;->worldY:F

    .line 28
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;II)V
    .locals 8
    .parameter "canvas"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 31
    invoke-virtual {p0}, Lng/vace/android/highwayracing/game/gui/Background;->updateBackgroundPosition()V

    .line 33
    int-to-float v4, p2

    iget-object v5, p0, Lng/vace/android/highwayracing/game/gui/Background;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v0, v4, v5

    .line 34
    .local v0, maxX:F
    int-to-float v4, p3

    iget-object v5, p0, Lng/vace/android/highwayracing/game/gui/Background;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v1, v4, v5

    .line 36
    .local v1, maxY:F
    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    .line 37
    invoke-static {v1}, Landroid/util/FloatMath;->ceil(F)F

    move-result v1

    .line 39
    const/4 v2, 0x0

    .local v2, x:I
    :goto_0
    int-to-float v4, v2

    cmpg-float v4, v4, v0

    if-gtz v4, :cond_1

    .line 40
    const/4 v3, 0x0

    .local v3, y:I
    :goto_1
    int-to-float v4, v3

    cmpg-float v4, v4, v1

    if-gtz v4, :cond_0

    .line 41
    iget-object v4, p0, Lng/vace/android/highwayracing/game/gui/Background;->image:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lng/vace/android/highwayracing/game/gui/Background;->getX()F

    move-result v5

    iget-object v6, p0, Lng/vace/android/highwayracing/game/gui/Background;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    mul-int/2addr v6, v2

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-virtual {p0}, Lng/vace/android/highwayracing/game/gui/Background;->getY()F

    move-result v6

    iget-object v7, p0, Lng/vace/android/highwayracing/game/gui/Background;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int/2addr v7, v3

    int-to-float v7, v7

    add-float/2addr v6, v7

    const/4 v7, 0x0

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 40
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 39
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 44
    .end local v3           #y:I
    :cond_1
    return-void
.end method

.method public getMaxWorldX()F
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lng/vace/android/highwayracing/game/gui/Background;->maxWorldX:F

    return v0
.end method

.method public getMaxWorldY()F
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lng/vace/android/highwayracing/game/gui/Background;->maxWorldY:F

    return v0
.end method

.method public getSpeedX()F
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lng/vace/android/highwayracing/game/gui/Background;->speedX:F

    return v0
.end method

.method public getSpeedY()F
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lng/vace/android/highwayracing/game/gui/Background;->speedY:F

    return v0
.end method

.method public getWorldX()F
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lng/vace/android/highwayracing/game/gui/Background;->worldX:F

    return v0
.end method

.method public getWorldY()F
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lng/vace/android/highwayracing/game/gui/Background;->worldY:F

    return v0
.end method

.method public setSpeed(FF)V
    .locals 0
    .parameter "speedX"
    .parameter "speedY"

    .prologue
    .line 79
    iput p1, p0, Lng/vace/android/highwayracing/game/gui/Background;->speedX:F

    .line 80
    iput p2, p0, Lng/vace/android/highwayracing/game/gui/Background;->speedY:F

    .line 81
    return-void
.end method

.method public updateBackgroundPosition()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 47
    iget v0, p0, Lng/vace/android/highwayracing/game/gui/Background;->x:F

    iget v1, p0, Lng/vace/android/highwayracing/game/gui/Background;->speedX:F

    add-float/2addr v0, v1

    iput v0, p0, Lng/vace/android/highwayracing/game/gui/Background;->x:F

    .line 48
    iget v0, p0, Lng/vace/android/highwayracing/game/gui/Background;->y:F

    iget v1, p0, Lng/vace/android/highwayracing/game/gui/Background;->speedY:F

    add-float/2addr v0, v1

    iput v0, p0, Lng/vace/android/highwayracing/game/gui/Background;->y:F

    .line 50
    iget v0, p0, Lng/vace/android/highwayracing/game/gui/Background;->worldX:F

    iget v1, p0, Lng/vace/android/highwayracing/game/gui/Background;->speedX:F

    add-float/2addr v0, v1

    iput v0, p0, Lng/vace/android/highwayracing/game/gui/Background;->worldX:F

    .line 51
    iget v0, p0, Lng/vace/android/highwayracing/game/gui/Background;->worldY:F

    iget v1, p0, Lng/vace/android/highwayracing/game/gui/Background;->speedY:F

    add-float/2addr v0, v1

    iput v0, p0, Lng/vace/android/highwayracing/game/gui/Background;->worldY:F

    .line 53
    iget v0, p0, Lng/vace/android/highwayracing/game/gui/Background;->speedX:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lng/vace/android/highwayracing/game/gui/Background;->x:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    .line 54
    iget-object v0, p0, Lng/vace/android/highwayracing/game/gui/Background;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lng/vace/android/highwayracing/game/gui/Background;->x:F

    .line 57
    :cond_0
    iget v0, p0, Lng/vace/android/highwayracing/game/gui/Background;->speedX:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    iget v0, p0, Lng/vace/android/highwayracing/game/gui/Background;->x:F

    iget-object v1, p0, Lng/vace/android/highwayracing/game/gui/Background;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 58
    iput v2, p0, Lng/vace/android/highwayracing/game/gui/Background;->x:F

    .line 61
    :cond_1
    iget v0, p0, Lng/vace/android/highwayracing/game/gui/Background;->speedY:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    iget v0, p0, Lng/vace/android/highwayracing/game/gui/Background;->y:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_2

    .line 62
    iget-object v0, p0, Lng/vace/android/highwayracing/game/gui/Background;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lng/vace/android/highwayracing/game/gui/Background;->y:F

    .line 65
    :cond_2
    iget v0, p0, Lng/vace/android/highwayracing/game/gui/Background;->speedY:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    iget v0, p0, Lng/vace/android/highwayracing/game/gui/Background;->y:F

    iget-object v1, p0, Lng/vace/android/highwayracing/game/gui/Background;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3

    .line 66
    iput v2, p0, Lng/vace/android/highwayracing/game/gui/Background;->y:F

    .line 68
    :cond_3
    return-void
.end method
