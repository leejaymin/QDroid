.class public Lcom/stickycoding/rokon/tileengine/TiledLayer;
.super Lcom/stickycoding/rokon/Layer;
.source "TiledLayer.java"


# direct methods
.method public constructor <init>(Lcom/stickycoding/rokon/Scene;I)V
    .locals 0
    .parameter "parentScene"
    .parameter "maximumDrawableObjects"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/stickycoding/rokon/Layer;-><init>(Lcom/stickycoding/rokon/Scene;I)V

    .line 19
    return-void
.end method


# virtual methods
.method public add(Lcom/stickycoding/rokon/DrawableObject;)V
    .locals 2
    .parameter "drawableObject"

    .prologue
    .line 34
    instance-of v0, p1, Lcom/stickycoding/rokon/tileengine/TiledSprite;

    if-eqz v0, :cond_0

    .line 35
    check-cast p1, Lcom/stickycoding/rokon/tileengine/TiledSprite;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/stickycoding/rokon/tileengine/TiledLayer;->add(Lcom/stickycoding/rokon/tileengine/TiledSprite;)V

    .line 39
    :goto_0
    return-void

    .line 38
    .restart local p1
    :cond_0
    const-string v0, "TiledLayer.add"

    const-string v1, "Tried adding oa non-TiledSprite to the TiledLayer"

    invoke-static {v0, v1}, Lcom/stickycoding/rokon/Debug;->warning(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public add(Lcom/stickycoding/rokon/tileengine/TiledSprite;)V
    .locals 0
    .parameter "tiledSprite"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/stickycoding/rokon/Layer;->add(Lcom/stickycoding/rokon/GameObject;)V

    .line 28
    return-void
.end method

.method public getDrawX(II)F
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 47
    const/high16 v0, -0x4080

    return v0
.end method

.method public getDrawX(IIIIF)F
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "targetX"
    .parameter "targetY"
    .parameter "offset"

    .prologue
    .line 65
    const/high16 v0, -0x4080

    return v0
.end method

.method public getDrawY(II)F
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 55
    const/high16 v0, -0x4080

    return v0
.end method

.method public getDrawY(IIIIF)F
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "targetX"
    .parameter "targetY"
    .parameter "offset"

    .prologue
    .line 76
    const/high16 v0, -0x4080

    return v0
.end method

.method public getTileX(FF)I
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 85
    const/4 v0, -0x1

    return v0
.end method

.method public getTileY(FF)I
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 94
    const/4 v0, -0x1

    return v0
.end method
