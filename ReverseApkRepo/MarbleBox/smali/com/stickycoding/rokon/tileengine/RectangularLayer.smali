.class public Lcom/stickycoding/rokon/tileengine/RectangularLayer;
.super Lcom/stickycoding/rokon/tileengine/TiledLayer;
.source "RectangularLayer.java"


# instance fields
.field protected height:F

.field protected width:F


# direct methods
.method public constructor <init>(Lcom/stickycoding/rokon/Scene;IFF)V
    .locals 0
    .parameter "parentScene"
    .parameter "maximumDrawableObjects"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/stickycoding/rokon/tileengine/TiledLayer;-><init>(Lcom/stickycoding/rokon/Scene;I)V

    .line 19
    iput p3, p0, Lcom/stickycoding/rokon/tileengine/RectangularLayer;->width:F

    .line 20
    iput p4, p0, Lcom/stickycoding/rokon/tileengine/RectangularLayer;->height:F

    .line 21
    return-void
.end method


# virtual methods
.method public getDrawX(II)F
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 28
    int-to-float v0, p1

    iget v1, p0, Lcom/stickycoding/rokon/tileengine/RectangularLayer;->width:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getDrawX(IIIIF)F
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "targetX"
    .parameter "targetY"
    .parameter "offset"

    .prologue
    .line 44
    int-to-float v0, p1

    iget v1, p0, Lcom/stickycoding/rokon/tileengine/RectangularLayer;->width:F

    mul-float/2addr v0, v1

    sub-int v1, p3, p1

    int-to-float v1, v1

    mul-float/2addr v1, p5

    iget v2, p0, Lcom/stickycoding/rokon/tileengine/RectangularLayer;->width:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getDrawY(II)F
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 36
    int-to-float v0, p2

    iget v1, p0, Lcom/stickycoding/rokon/tileengine/RectangularLayer;->height:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getDrawY(IIIIF)F
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "targetX"
    .parameter "targetY"
    .parameter "offset"

    .prologue
    .line 52
    int-to-float v0, p2

    iget v1, p0, Lcom/stickycoding/rokon/tileengine/RectangularLayer;->height:F

    mul-float/2addr v0, v1

    sub-int v1, p4, p2

    int-to-float v1, v1

    mul-float/2addr v1, p5

    iget v2, p0, Lcom/stickycoding/rokon/tileengine/RectangularLayer;->height:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getTileX(FF)I
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 60
    iget v0, p0, Lcom/stickycoding/rokon/tileengine/RectangularLayer;->width:F

    rem-float v0, p1, v0

    sub-float v0, p1, v0

    iget v1, p0, Lcom/stickycoding/rokon/tileengine/RectangularLayer;->width:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getTileY(FF)I
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 68
    iget v0, p0, Lcom/stickycoding/rokon/tileengine/RectangularLayer;->height:F

    rem-float v0, p2, v0

    sub-float v0, p2, v0

    iget v1, p0, Lcom/stickycoding/rokon/tileengine/RectangularLayer;->height:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
