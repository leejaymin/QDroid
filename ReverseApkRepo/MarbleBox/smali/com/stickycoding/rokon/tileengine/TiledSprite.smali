.class public Lcom/stickycoding/rokon/tileengine/TiledSprite;
.super Lcom/stickycoding/rokon/Sprite;
.source "TiledSprite.java"


# instance fields
.field protected targetTileX:I

.field protected targetTileY:I

.field protected tileOffset:F

.field protected tileX:I

.field protected tileY:I

.field protected tiledLayer:Lcom/stickycoding/rokon/tileengine/TiledLayer;


# direct methods
.method public constructor <init>(Lcom/stickycoding/rokon/tileengine/TiledLayer;IIFF)V
    .locals 1
    .parameter "tiledLayer"
    .parameter "tileX"
    .parameter "tileY"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, v0, v0, p4, p5}, Lcom/stickycoding/rokon/Sprite;-><init>(FFFF)V

    .line 21
    iput-object p1, p0, Lcom/stickycoding/rokon/tileengine/TiledSprite;->tiledLayer:Lcom/stickycoding/rokon/tileengine/TiledLayer;

    .line 22
    iput p2, p0, Lcom/stickycoding/rokon/tileengine/TiledSprite;->tileX:I

    .line 23
    iput p3, p0, Lcom/stickycoding/rokon/tileengine/TiledSprite;->tileY:I

    .line 24
    invoke-virtual {p0}, Lcom/stickycoding/rokon/tileengine/TiledSprite;->updateDrawPositions()V

    .line 25
    return-void
.end method


# virtual methods
.method public getTargetTileX()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/stickycoding/rokon/tileengine/TiledSprite;->targetTileX:I

    return v0
.end method

.method public getTargetTileY()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/stickycoding/rokon/tileengine/TiledSprite;->targetTileY:I

    return v0
.end method

.method public getTileOffset()F
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/stickycoding/rokon/tileengine/TiledSprite;->tileOffset:F

    return v0
.end method

.method public getTileX()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/stickycoding/rokon/tileengine/TiledSprite;->tileX:I

    return v0
.end method

.method public getTileY()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/stickycoding/rokon/tileengine/TiledSprite;->tileY:I

    return v0
.end method

.method public onUpdate()V
    .locals 0

    .prologue
    .line 162
    invoke-super {p0}, Lcom/stickycoding/rokon/Sprite;->onUpdate()V

    .line 163
    return-void
.end method

.method public setTargetTile(II)V
    .locals 0
    .parameter "targetTileX"
    .parameter "targetTileY"

    .prologue
    .line 99
    iput p1, p0, Lcom/stickycoding/rokon/tileengine/TiledSprite;->targetTileX:I

    .line 100
    iput p2, p0, Lcom/stickycoding/rokon/tileengine/TiledSprite;->targetTileY:I

    .line 101
    invoke-virtual {p0}, Lcom/stickycoding/rokon/tileengine/TiledSprite;->updateDrawPositions()V

    .line 102
    return-void
.end method

.method public setTargetTileX(I)V
    .locals 0
    .parameter "targetTileX"

    .prologue
    .line 78
    iput p1, p0, Lcom/stickycoding/rokon/tileengine/TiledSprite;->targetTileX:I

    .line 79
    invoke-virtual {p0}, Lcom/stickycoding/rokon/tileengine/TiledSprite;->updateDrawPositions()V

    .line 80
    return-void
.end method

.method public setTargetTileY(I)V
    .locals 0
    .parameter "targetTileY"

    .prologue
    .line 88
    iput p1, p0, Lcom/stickycoding/rokon/tileengine/TiledSprite;->targetTileY:I

    .line 89
    invoke-virtual {p0}, Lcom/stickycoding/rokon/tileengine/TiledSprite;->updateDrawPositions()V

    .line 90
    return-void
.end method

.method public setTile(II)V
    .locals 0
    .parameter "tileX"
    .parameter "tileY"

    .prologue
    .line 67
    iput p1, p0, Lcom/stickycoding/rokon/tileengine/TiledSprite;->tileX:I

    .line 68
    iput p2, p0, Lcom/stickycoding/rokon/tileengine/TiledSprite;->tileY:I

    .line 69
    invoke-virtual {p0}, Lcom/stickycoding/rokon/tileengine/TiledSprite;->updateDrawPositions()V

    .line 70
    return-void
.end method

.method public setTileOffset(F)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 147
    iput p1, p0, Lcom/stickycoding/rokon/tileengine/TiledSprite;->tileOffset:F

    .line 148
    invoke-virtual {p0}, Lcom/stickycoding/rokon/tileengine/TiledSprite;->updateDrawPositions()V

    .line 149
    return-void
.end method

.method public setTileX(I)V
    .locals 0
    .parameter "tileX"

    .prologue
    .line 45
    iput p1, p0, Lcom/stickycoding/rokon/tileengine/TiledSprite;->tileX:I

    .line 46
    invoke-virtual {p0}, Lcom/stickycoding/rokon/tileengine/TiledSprite;->updateDrawPositions()V

    .line 47
    return-void
.end method

.method public setTileY(I)V
    .locals 0
    .parameter "tileY"

    .prologue
    .line 55
    iput p1, p0, Lcom/stickycoding/rokon/tileengine/TiledSprite;->tileY:I

    .line 56
    invoke-virtual {p0}, Lcom/stickycoding/rokon/tileengine/TiledSprite;->updateDrawPositions()V

    .line 57
    return-void
.end method

.method protected updateDrawPositions()V
    .locals 6

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 28
    iget v0, p0, Lcom/stickycoding/rokon/tileengine/TiledSprite;->tileOffset:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iput v1, p0, Lcom/stickycoding/rokon/tileengine/TiledSprite;->tileOffset:F

    .line 29
    :cond_0
    iget v0, p0, Lcom/stickycoding/rokon/tileengine/TiledSprite;->tileOffset:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    iput v2, p0, Lcom/stickycoding/rokon/tileengine/TiledSprite;->tileOffset:F

    .line 30
    :cond_1
    iget v0, p0, Lcom/stickycoding/rokon/tileengine/TiledSprite;->tileOffset:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 31
    iget-object v0, p0, Lcom/stickycoding/rokon/tileengine/TiledSprite;->tiledLayer:Lcom/stickycoding/rokon/tileengine/TiledLayer;

    iget v1, p0, Lcom/stickycoding/rokon/tileengine/TiledSprite;->tileX:I

    iget v2, p0, Lcom/stickycoding/rokon/tileengine/TiledSprite;->tileY:I

    invoke-virtual {v0, v1, v2}, Lcom/stickycoding/rokon/tileengine/TiledLayer;->getDrawX(II)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/stickycoding/rokon/tileengine/TiledSprite;->setX(F)V

    .line 32
    iget-object v0, p0, Lcom/stickycoding/rokon/tileengine/TiledSprite;->tiledLayer:Lcom/stickycoding/rokon/tileengine/TiledLayer;

    iget v1, p0, Lcom/stickycoding/rokon/tileengine/TiledSprite;->tileX:I

    iget v2, p0, Lcom/stickycoding/rokon/tileengine/TiledSprite;->tileY:I

    invoke-virtual {v0, v1, v2}, Lcom/stickycoding/rokon/tileengine/TiledLayer;->getDrawY(II)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/stickycoding/rokon/tileengine/TiledSprite;->setY(F)V

    .line 37
    :goto_0
    return-void

    .line 34
    :cond_2
    iget-object v0, p0, Lcom/stickycoding/rokon/tileengine/TiledSprite;->tiledLayer:Lcom/stickycoding/rokon/tileengine/TiledLayer;

    iget v1, p0, Lcom/stickycoding/rokon/tileengine/TiledSprite;->tileX:I

    iget v2, p0, Lcom/stickycoding/rokon/tileengine/TiledSprite;->tileY:I

    iget v3, p0, Lcom/stickycoding/rokon/tileengine/TiledSprite;->targetTileX:I

    iget v4, p0, Lcom/stickycoding/rokon/tileengine/TiledSprite;->targetTileY:I

    iget v5, p0, Lcom/stickycoding/rokon/tileengine/TiledSprite;->tileOffset:F

    invoke-virtual/range {v0 .. v5}, Lcom/stickycoding/rokon/tileengine/TiledLayer;->getDrawX(IIIIF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/stickycoding/rokon/tileengine/TiledSprite;->setX(F)V

    .line 35
    iget-object v0, p0, Lcom/stickycoding/rokon/tileengine/TiledSprite;->tiledLayer:Lcom/stickycoding/rokon/tileengine/TiledLayer;

    iget v1, p0, Lcom/stickycoding/rokon/tileengine/TiledSprite;->tileY:I

    iget v2, p0, Lcom/stickycoding/rokon/tileengine/TiledSprite;->tileY:I

    iget v3, p0, Lcom/stickycoding/rokon/tileengine/TiledSprite;->targetTileX:I

    iget v4, p0, Lcom/stickycoding/rokon/tileengine/TiledSprite;->targetTileY:I

    iget v5, p0, Lcom/stickycoding/rokon/tileengine/TiledSprite;->tileOffset:F

    invoke-virtual/range {v0 .. v5}, Lcom/stickycoding/rokon/tileengine/TiledLayer;->getDrawY(IIIIF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/stickycoding/rokon/tileengine/TiledSprite;->setY(F)V

    goto :goto_0
.end method
