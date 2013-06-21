.class public Lcom/stickycoding/rokon/DimensionalObject;
.super Lcom/stickycoding/rokon/Point;
.source "DimensionalObject.java"


# instance fields
.field protected acceleration:F

.field protected accelerationX:F

.field protected accelerationY:F

.field protected angularAcceleration:F

.field protected angularVelocity:F

.field protected finishHeight:F

.field protected finishWidth:F

.field protected finishX:F

.field protected finishY:F

.field protected height:F

.field protected moveTime:I

.field protected moveType:I

.field protected moving:Z

.field protected scaleFromCentre:Z

.field protected speedX:F

.field protected speedY:F

.field protected startHeight:F

.field protected startTime:J

.field protected startWidth:F

.field protected startX:F

.field protected startY:F

.field protected terminalAngularVelocity:F

.field protected terminalSpeedX:F

.field protected terminalSpeedY:F

.field protected terminalVelocity:F

.field protected useTerminalAngularVelocity:Z

.field protected useTerminalSpeedX:Z

.field protected useTerminalSpeedY:Z

.field protected useTerminalVelocity:Z

.field protected velocity:F

.field protected velocityAngle:F

.field protected velocityXFactor:F

.field protected velocityYFactor:F

.field protected width:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/stickycoding/rokon/Point;-><init>(FF)V

    .line 31
    iput p3, p0, Lcom/stickycoding/rokon/DimensionalObject;->width:F

    .line 32
    iput p4, p0, Lcom/stickycoding/rokon/DimensionalObject;->height:F

    .line 33
    return-void
.end method


# virtual methods
.method public centre(FF)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v1, 0x4000

    .line 197
    iget v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->width:F

    div-float/2addr v0, v1

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/stickycoding/rokon/DimensionalObject;->setX(F)V

    .line 198
    iget v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->height:F

    div-float/2addr v0, v1

    sub-float v0, p2, v0

    invoke-virtual {p0, v0}, Lcom/stickycoding/rokon/DimensionalObject;->setY(F)V

    .line 199
    return-void
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->height:F

    return v0
.end method

.method public getRatio()F
    .locals 2

    .prologue
    .line 42
    iget v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->width:F

    iget v1, p0, Lcom/stickycoding/rokon/DimensionalObject;->height:F

    div-float/2addr v0, v1

    return v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->width:F

    return v0
.end method

.method public grow(FF)V
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x0

    .line 181
    iget v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->width:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->width:F

    .line 182
    iget v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->height:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->height:F

    .line 183
    iget v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->width:F

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->height:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 184
    :cond_0
    const-string v0, "StaticObject.grow"

    const-string v1, "Dimensions < 0"

    invoke-static {v0, v1}, Lcom/stickycoding/rokon/Debug;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->width:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    iput v2, p0, Lcom/stickycoding/rokon/DimensionalObject;->width:F

    .line 186
    :cond_1
    iget v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->height:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    iput v2, p0, Lcom/stickycoding/rokon/DimensionalObject;->height:F

    .line 188
    :cond_2
    return-void
.end method

.method public growHeight(F)V
    .locals 3
    .parameter "height"

    .prologue
    const/4 v2, 0x0

    .line 122
    iget v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->height:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->height:F

    .line 123
    iget v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->width:F

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->height:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 124
    :cond_0
    const-string v0, "StaticObject.growHeight"

    const-string v1, "Dimensions < 0"

    invoke-static {v0, v1}, Lcom/stickycoding/rokon/Debug;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->width:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    iput v2, p0, Lcom/stickycoding/rokon/DimensionalObject;->width:F

    .line 126
    :cond_1
    iget v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->height:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    iput v2, p0, Lcom/stickycoding/rokon/DimensionalObject;->height:F

    .line 128
    :cond_2
    return-void
.end method

.method public growWidth(F)V
    .locals 3
    .parameter "width"

    .prologue
    const/4 v2, 0x0

    .line 108
    iget v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->width:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->width:F

    .line 109
    iget v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->width:F

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->height:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 110
    :cond_0
    const-string v0, "StaticObject.growWidth"

    const-string v1, "Dimensions < 0"

    invoke-static {v0, v1}, Lcom/stickycoding/rokon/Debug;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->width:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    iput v2, p0, Lcom/stickycoding/rokon/DimensionalObject;->width:F

    .line 112
    :cond_1
    iget v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->height:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    iput v2, p0, Lcom/stickycoding/rokon/DimensionalObject;->height:F

    .line 114
    :cond_2
    return-void
.end method

.method public isMoving()Z
    .locals 1

    .prologue
    .line 348
    iget-boolean v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->moving:Z

    return v0
.end method

.method public move(FFFFI)V
    .locals 7
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "time"

    .prologue
    .line 299
    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/stickycoding/rokon/DimensionalObject;->move(FFFFII)V

    .line 300
    return-void
.end method

.method public move(FFFFII)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "time"
    .parameter "movementType"

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/stickycoding/rokon/DimensionalObject;->getX()F

    move-result v0

    iput v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->startX:F

    .line 314
    invoke-virtual {p0}, Lcom/stickycoding/rokon/DimensionalObject;->getY()F

    move-result v0

    iput v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->startY:F

    .line 315
    iget v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->width:F

    iput v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->startWidth:F

    .line 316
    iget v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->height:F

    iput v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->startHeight:F

    .line 317
    sget-wide v0, Lcom/stickycoding/rokon/Time;->loopTicks:J

    iput-wide v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->startTime:J

    .line 318
    iput p5, p0, Lcom/stickycoding/rokon/DimensionalObject;->moveTime:I

    .line 319
    iput p6, p0, Lcom/stickycoding/rokon/DimensionalObject;->moveType:I

    .line 320
    iput p1, p0, Lcom/stickycoding/rokon/DimensionalObject;->finishX:F

    .line 321
    iput p2, p0, Lcom/stickycoding/rokon/DimensionalObject;->finishY:F

    .line 322
    iput p3, p0, Lcom/stickycoding/rokon/DimensionalObject;->finishWidth:F

    .line 323
    iput p4, p0, Lcom/stickycoding/rokon/DimensionalObject;->finishHeight:F

    .line 324
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->scaleFromCentre:Z

    .line 325
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->moving:Z

    .line 326
    return-void
.end method

.method public move(FFI)V
    .locals 7
    .parameter "x"
    .parameter "y"
    .parameter "time"

    .prologue
    .line 274
    iget v3, p0, Lcom/stickycoding/rokon/DimensionalObject;->width:F

    iget v4, p0, Lcom/stickycoding/rokon/DimensionalObject;->height:F

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/stickycoding/rokon/DimensionalObject;->move(FFFFII)V

    .line 275
    return-void
.end method

.method public move(FFII)V
    .locals 7
    .parameter "x"
    .parameter "y"
    .parameter "time"
    .parameter "movementType"

    .prologue
    .line 286
    iget v3, p0, Lcom/stickycoding/rokon/DimensionalObject;->width:F

    iget v4, p0, Lcom/stickycoding/rokon/DimensionalObject;->height:F

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/stickycoding/rokon/DimensionalObject;->move(FFFFII)V

    .line 287
    return-void
.end method

.method protected onUpdate()V
    .locals 0

    .prologue
    .line 202
    invoke-super {p0}, Lcom/stickycoding/rokon/Point;->onUpdate()V

    .line 203
    invoke-virtual {p0}, Lcom/stickycoding/rokon/DimensionalObject;->updateMove()V

    .line 204
    return-void
.end method

.method public resize(F)V
    .locals 2
    .parameter "width"

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/stickycoding/rokon/DimensionalObject;->getRatio()F

    move-result v0

    .line 51
    .local v0, ratio:F
    iput p1, p0, Lcom/stickycoding/rokon/DimensionalObject;->width:F

    .line 52
    div-float v1, p1, v0

    iput v1, p0, Lcom/stickycoding/rokon/DimensionalObject;->height:F

    .line 53
    return-void
.end method

.method public resize(FFI)V
    .locals 7
    .parameter "width"
    .parameter "height"
    .parameter "time"

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/stickycoding/rokon/DimensionalObject;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/stickycoding/rokon/DimensionalObject;->getY()F

    move-result v2

    const/4 v6, 0x1

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/stickycoding/rokon/DimensionalObject;->move(FFFFII)V

    .line 252
    return-void
.end method

.method public resize(FFII)V
    .locals 7
    .parameter "width"
    .parameter "height"
    .parameter "time"
    .parameter "movementType"

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/stickycoding/rokon/DimensionalObject;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/stickycoding/rokon/DimensionalObject;->getY()F

    move-result v2

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/stickycoding/rokon/DimensionalObject;->move(FFFFII)V

    .line 264
    return-void
.end method

.method public scaleFromCentre(FFII)V
    .locals 4
    .parameter "width"
    .parameter "height"
    .parameter "time"
    .parameter "movementType"

    .prologue
    const/4 v3, 0x1

    const/high16 v2, 0x4000

    .line 329
    iget v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->width:F

    iput v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->startWidth:F

    .line 330
    iget v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->height:F

    iput v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->startHeight:F

    .line 331
    invoke-virtual {p0}, Lcom/stickycoding/rokon/DimensionalObject;->getX()F

    move-result v0

    iget v1, p0, Lcom/stickycoding/rokon/DimensionalObject;->width:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->startX:F

    .line 332
    invoke-virtual {p0}, Lcom/stickycoding/rokon/DimensionalObject;->getY()F

    move-result v0

    iget v1, p0, Lcom/stickycoding/rokon/DimensionalObject;->height:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->startY:F

    .line 333
    sget-wide v0, Lcom/stickycoding/rokon/Time;->loopTicks:J

    iput-wide v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->startTime:J

    .line 334
    iput p3, p0, Lcom/stickycoding/rokon/DimensionalObject;->moveTime:I

    .line 335
    iput p4, p0, Lcom/stickycoding/rokon/DimensionalObject;->moveType:I

    .line 336
    iput p1, p0, Lcom/stickycoding/rokon/DimensionalObject;->finishWidth:F

    .line 337
    iput p2, p0, Lcom/stickycoding/rokon/DimensionalObject;->finishHeight:F

    .line 338
    iput-boolean v3, p0, Lcom/stickycoding/rokon/DimensionalObject;->scaleFromCentre:Z

    .line 339
    iput-boolean v3, p0, Lcom/stickycoding/rokon/DimensionalObject;->moving:Z

    .line 340
    return-void
.end method

.method public setHeight(F)V
    .locals 0
    .parameter "height"

    .prologue
    .line 88
    iput p1, p0, Lcom/stickycoding/rokon/DimensionalObject;->height:F

    .line 89
    return-void
.end method

.method public setSize(FF)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 98
    iput p1, p0, Lcom/stickycoding/rokon/DimensionalObject;->width:F

    .line 99
    iput p2, p0, Lcom/stickycoding/rokon/DimensionalObject;->height:F

    .line 100
    return-void
.end method

.method public setWidth(F)V
    .locals 0
    .parameter "width"

    .prologue
    .line 79
    iput p1, p0, Lcom/stickycoding/rokon/DimensionalObject;->width:F

    .line 80
    return-void
.end method

.method public shrink(FF)V
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x0

    .line 165
    iget v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->width:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->width:F

    .line 166
    iget v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->height:F

    sub-float/2addr v0, p2

    iput v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->height:F

    .line 167
    iget v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->width:F

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->height:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 168
    :cond_0
    const-string v0, "StaticObject.shrink"

    const-string v1, "Dimensions < 0"

    invoke-static {v0, v1}, Lcom/stickycoding/rokon/Debug;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->width:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    iput v2, p0, Lcom/stickycoding/rokon/DimensionalObject;->width:F

    .line 170
    :cond_1
    iget v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->height:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    iput v2, p0, Lcom/stickycoding/rokon/DimensionalObject;->height:F

    .line 172
    :cond_2
    return-void
.end method

.method public shrinkHeight(F)V
    .locals 3
    .parameter "height"

    .prologue
    const/4 v2, 0x0

    .line 150
    iget v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->height:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->height:F

    .line 151
    iget v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->width:F

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->height:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 152
    :cond_0
    const-string v0, "StaticObject.shrinkHeight"

    const-string v1, "Dimensions < 0"

    invoke-static {v0, v1}, Lcom/stickycoding/rokon/Debug;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->width:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    iput v2, p0, Lcom/stickycoding/rokon/DimensionalObject;->width:F

    .line 154
    :cond_1
    iget v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->height:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    iput v2, p0, Lcom/stickycoding/rokon/DimensionalObject;->height:F

    .line 156
    :cond_2
    return-void
.end method

.method public shrinkWidth(F)V
    .locals 3
    .parameter "width"

    .prologue
    const/4 v2, 0x0

    .line 136
    iget v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->width:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->width:F

    .line 137
    iget v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->width:F

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->height:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 138
    :cond_0
    const-string v0, "StaticObject.shrinkWidth"

    const-string v1, "Dimensions < 0"

    invoke-static {v0, v1}, Lcom/stickycoding/rokon/Debug;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->width:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    iput v2, p0, Lcom/stickycoding/rokon/DimensionalObject;->width:F

    .line 140
    :cond_1
    iget v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->height:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    iput v2, p0, Lcom/stickycoding/rokon/DimensionalObject;->height:F

    .line 142
    :cond_2
    return-void
.end method

.method public stopMove()V
    .locals 1

    .prologue
    .line 353
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->moving:Z

    .line 354
    return-void
.end method

.method public stopScale()V
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stickycoding/rokon/DimensionalObject;->moving:Z

    .line 358
    return-void
.end method

.method protected updateMove()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x3f80

    .line 207
    iget-boolean v2, p0, Lcom/stickycoding/rokon/DimensionalObject;->moving:Z

    if-eqz v2, :cond_0

    .line 208
    sget-wide v2, Lcom/stickycoding/rokon/Time;->loopTicks:J

    iget-wide v4, p0, Lcom/stickycoding/rokon/DimensionalObject;->startTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    iget v3, p0, Lcom/stickycoding/rokon/DimensionalObject;->moveTime:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 209
    .local v1, position:F
    iget v2, p0, Lcom/stickycoding/rokon/DimensionalObject;->moveType:I

    invoke-static {v1, v2}, Lcom/stickycoding/rokon/Movement;->getPosition(FI)F

    move-result v0

    .line 210
    .local v0, factor:F
    iget-boolean v2, p0, Lcom/stickycoding/rokon/DimensionalObject;->scaleFromCentre:Z

    if-nez v2, :cond_2

    .line 211
    cmpl-float v2, v1, v6

    if-ltz v2, :cond_1

    .line 212
    iget v2, p0, Lcom/stickycoding/rokon/DimensionalObject;->finishX:F

    iget v3, p0, Lcom/stickycoding/rokon/DimensionalObject;->finishY:F

    invoke-virtual {p0, v2, v3}, Lcom/stickycoding/rokon/DimensionalObject;->setXY(FF)V

    .line 213
    iget v2, p0, Lcom/stickycoding/rokon/DimensionalObject;->finishWidth:F

    iput v2, p0, Lcom/stickycoding/rokon/DimensionalObject;->width:F

    .line 214
    iget v2, p0, Lcom/stickycoding/rokon/DimensionalObject;->finishHeight:F

    iput v2, p0, Lcom/stickycoding/rokon/DimensionalObject;->height:F

    .line 215
    iput-boolean v7, p0, Lcom/stickycoding/rokon/DimensionalObject;->moving:Z

    .line 216
    sget-object v2, Lcom/stickycoding/rokon/RokonActivity;->currentScene:Lcom/stickycoding/rokon/Scene;

    invoke-virtual {v2, p0}, Lcom/stickycoding/rokon/Scene;->onMoveEnd(Lcom/stickycoding/rokon/DimensionalObject;)V

    .line 241
    .end local v0           #factor:F
    .end local v1           #position:F
    :cond_0
    :goto_0
    return-void

    .line 219
    .restart local v0       #factor:F
    .restart local v1       #position:F
    :cond_1
    iget v2, p0, Lcom/stickycoding/rokon/DimensionalObject;->startX:F

    iget v3, p0, Lcom/stickycoding/rokon/DimensionalObject;->finishX:F

    iget v4, p0, Lcom/stickycoding/rokon/DimensionalObject;->startX:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/stickycoding/rokon/DimensionalObject;->setX(F)V

    .line 220
    iget v2, p0, Lcom/stickycoding/rokon/DimensionalObject;->startY:F

    iget v3, p0, Lcom/stickycoding/rokon/DimensionalObject;->finishY:F

    iget v4, p0, Lcom/stickycoding/rokon/DimensionalObject;->startY:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/stickycoding/rokon/DimensionalObject;->setY(F)V

    .line 221
    iget v2, p0, Lcom/stickycoding/rokon/DimensionalObject;->startWidth:F

    iget v3, p0, Lcom/stickycoding/rokon/DimensionalObject;->finishWidth:F

    iget v4, p0, Lcom/stickycoding/rokon/DimensionalObject;->startWidth:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, p0, Lcom/stickycoding/rokon/DimensionalObject;->width:F

    .line 222
    iget v2, p0, Lcom/stickycoding/rokon/DimensionalObject;->startHeight:F

    iget v3, p0, Lcom/stickycoding/rokon/DimensionalObject;->finishHeight:F

    iget v4, p0, Lcom/stickycoding/rokon/DimensionalObject;->startHeight:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, p0, Lcom/stickycoding/rokon/DimensionalObject;->height:F

    goto :goto_0

    .line 225
    :cond_2
    iget v2, p0, Lcom/stickycoding/rokon/DimensionalObject;->startX:F

    iget v3, p0, Lcom/stickycoding/rokon/DimensionalObject;->speedX:F

    sget v4, Lcom/stickycoding/rokon/Time;->loopTicksFraction:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/stickycoding/rokon/DimensionalObject;->startX:F

    .line 226
    iget v2, p0, Lcom/stickycoding/rokon/DimensionalObject;->startY:F

    iget v3, p0, Lcom/stickycoding/rokon/DimensionalObject;->speedY:F

    sget v4, Lcom/stickycoding/rokon/Time;->loopTicksFraction:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/stickycoding/rokon/DimensionalObject;->startY:F

    .line 227
    cmpl-float v2, v1, v6

    if-ltz v2, :cond_3

    .line 228
    iget v2, p0, Lcom/stickycoding/rokon/DimensionalObject;->finishWidth:F

    iput v2, p0, Lcom/stickycoding/rokon/DimensionalObject;->width:F

    .line 229
    iget v2, p0, Lcom/stickycoding/rokon/DimensionalObject;->finishHeight:F

    iput v2, p0, Lcom/stickycoding/rokon/DimensionalObject;->height:F

    .line 230
    iget v2, p0, Lcom/stickycoding/rokon/DimensionalObject;->startX:F

    iget v3, p0, Lcom/stickycoding/rokon/DimensionalObject;->startY:F

    invoke-virtual {p0, v2, v3}, Lcom/stickycoding/rokon/DimensionalObject;->centre(FF)V

    .line 231
    iput-boolean v7, p0, Lcom/stickycoding/rokon/DimensionalObject;->moving:Z

    .line 232
    sget-object v2, Lcom/stickycoding/rokon/RokonActivity;->currentScene:Lcom/stickycoding/rokon/Scene;

    invoke-virtual {v2, p0}, Lcom/stickycoding/rokon/Scene;->onMoveEnd(Lcom/stickycoding/rokon/DimensionalObject;)V

    goto :goto_0

    .line 235
    :cond_3
    iget v2, p0, Lcom/stickycoding/rokon/DimensionalObject;->startWidth:F

    iget v3, p0, Lcom/stickycoding/rokon/DimensionalObject;->finishWidth:F

    iget v4, p0, Lcom/stickycoding/rokon/DimensionalObject;->startWidth:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, p0, Lcom/stickycoding/rokon/DimensionalObject;->width:F

    .line 236
    iget v2, p0, Lcom/stickycoding/rokon/DimensionalObject;->startHeight:F

    iget v3, p0, Lcom/stickycoding/rokon/DimensionalObject;->finishHeight:F

    iget v4, p0, Lcom/stickycoding/rokon/DimensionalObject;->startHeight:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, p0, Lcom/stickycoding/rokon/DimensionalObject;->height:F

    .line 237
    iget v2, p0, Lcom/stickycoding/rokon/DimensionalObject;->startX:F

    iget v3, p0, Lcom/stickycoding/rokon/DimensionalObject;->startY:F

    invoke-virtual {p0, v2, v3}, Lcom/stickycoding/rokon/DimensionalObject;->centre(FF)V

    goto :goto_0
.end method
