.class public Lcom/stickycoding/rokon/Point;
.super Lcom/badlogic/gdx/math/Vector2;
.source "Point.java"


# instance fields
.field private parent:Lcom/stickycoding/rokon/Point;


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    .line 24
    return-void
.end method


# virtual methods
.method public getParent()Lcom/stickycoding/rokon/Point;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/stickycoding/rokon/Point;->parent:Lcom/stickycoding/rokon/Point;

    return-object v0
.end method

.method public getX()F
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/stickycoding/rokon/Point;->parent:Lcom/stickycoding/rokon/Point;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/stickycoding/rokon/Point;->x:F

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/stickycoding/rokon/Point;->parent:Lcom/stickycoding/rokon/Point;

    invoke-virtual {v0}, Lcom/stickycoding/rokon/Point;->getX()F

    move-result v0

    iget v1, p0, Lcom/stickycoding/rokon/Point;->x:F

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method public getY()F
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/stickycoding/rokon/Point;->parent:Lcom/stickycoding/rokon/Point;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/stickycoding/rokon/Point;->y:F

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/stickycoding/rokon/Point;->parent:Lcom/stickycoding/rokon/Point;

    invoke-virtual {v0}, Lcom/stickycoding/rokon/Point;->getY()F

    move-result v0

    iget v1, p0, Lcom/stickycoding/rokon/Point;->y:F

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method public move(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 123
    iget v0, p0, Lcom/stickycoding/rokon/Point;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/stickycoding/rokon/Point;->x:F

    .line 124
    iget v0, p0, Lcom/stickycoding/rokon/Point;->y:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/stickycoding/rokon/Point;->y:F

    .line 125
    return-void
.end method

.method public moveVector(FF)V
    .locals 3
    .parameter "distance"
    .parameter "angle"

    .prologue
    .line 134
    iget v0, p0, Lcom/stickycoding/rokon/Point;->x:F

    float-to-double v1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/stickycoding/rokon/Point;->x:F

    .line 135
    iget v0, p0, Lcom/stickycoding/rokon/Point;->y:F

    float-to-double v1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/stickycoding/rokon/Point;->y:F

    .line 136
    return-void
.end method

.method public moveVector(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 2
    .parameter "vector"

    .prologue
    .line 144
    iget v0, p0, Lcom/stickycoding/rokon/Point;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/stickycoding/rokon/Point;->x:F

    .line 145
    iget v0, p0, Lcom/stickycoding/rokon/Point;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/stickycoding/rokon/Point;->y:F

    .line 146
    return-void
.end method

.method public moveX(F)V
    .locals 1
    .parameter "x"

    .prologue
    .line 104
    iget v0, p0, Lcom/stickycoding/rokon/Point;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/stickycoding/rokon/Point;->x:F

    .line 105
    return-void
.end method

.method public moveY(F)V
    .locals 1
    .parameter "y"

    .prologue
    .line 113
    iget v0, p0, Lcom/stickycoding/rokon/Point;->y:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/stickycoding/rokon/Point;->y:F

    .line 114
    return-void
.end method

.method protected onUpdate()V
    .locals 0

    .prologue
    .line 150
    return-void
.end method

.method public removeParent()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/stickycoding/rokon/Point;->parent:Lcom/stickycoding/rokon/Point;

    .line 40
    return-void
.end method

.method public setParent(Lcom/stickycoding/rokon/Point;)V
    .locals 0
    .parameter "point"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/stickycoding/rokon/Point;->parent:Lcom/stickycoding/rokon/Point;

    .line 33
    return-void
.end method

.method public setX(F)V
    .locals 0
    .parameter "x"

    .prologue
    .line 75
    iput p1, p0, Lcom/stickycoding/rokon/Point;->x:F

    .line 76
    return-void
.end method

.method public setXY(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 94
    iput p1, p0, Lcom/stickycoding/rokon/Point;->x:F

    .line 95
    iput p2, p0, Lcom/stickycoding/rokon/Point;->y:F

    .line 96
    return-void
.end method

.method public setY(F)V
    .locals 0
    .parameter "y"

    .prologue
    .line 84
    iput p1, p0, Lcom/stickycoding/rokon/Point;->y:F

    .line 85
    return-void
.end method
