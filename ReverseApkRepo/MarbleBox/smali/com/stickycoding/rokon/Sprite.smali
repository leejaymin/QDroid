.class public Lcom/stickycoding/rokon/Sprite;
.super Lcom/stickycoding/rokon/GameObject;
.source "Sprite.java"

# interfaces
.implements Lcom/stickycoding/rokon/Updateable;


# static fields
.field public static final MAX_MODIFIERS:I = 0x8

.field public static final ROTATE_TO_ANTI_CLOCKWISE:I = 0x2

.field public static final ROTATE_TO_AUTOMATIC:I = 0x0

.field public static final ROTATE_TO_CLOCKWISE:I = 0x1


# instance fields
.field protected isMoveTo:Z

.field protected isRotateTo:Z

.field protected modifier:[Lcom/stickycoding/rokon/Modifier;

.field protected modifierCount:I

.field protected moveToCallback:Lcom/stickycoding/rokon/Callback;

.field protected moveToFinalX:F

.field protected moveToFinalY:F

.field protected moveToStartTime:J

.field protected moveToStartX:F

.field protected moveToStartY:F

.field protected moveToTime:J

.field protected moveToType:I

.field protected polygon:Lcom/stickycoding/rokon/Polygon;

.field protected rotateToAngle:F

.field protected rotateToAngleStart:F

.field protected rotateToCallback:Lcom/stickycoding/rokon/Callback;

.field protected rotateToDirection:I

.field protected rotateToStartTime:J

.field protected rotateToTime:I

.field protected rotateToType:I


# direct methods
.method public constructor <init>(FFFF)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stickycoding/rokon/GameObject;-><init>(FFFF)V

    .line 27
    iput v1, p0, Lcom/stickycoding/rokon/Sprite;->modifierCount:I

    .line 28
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/stickycoding/rokon/Modifier;

    iput-object v0, p0, Lcom/stickycoding/rokon/Sprite;->modifier:[Lcom/stickycoding/rokon/Modifier;

    .line 30
    iput-boolean v1, p0, Lcom/stickycoding/rokon/Sprite;->isRotateTo:Z

    .line 36
    sget-object v0, Lcom/stickycoding/rokon/Rokon;->rectangle:Lcom/stickycoding/rokon/Polygon;

    iput-object v0, p0, Lcom/stickycoding/rokon/Sprite;->polygon:Lcom/stickycoding/rokon/Polygon;

    .line 634
    iput-boolean v1, p0, Lcom/stickycoding/rokon/Sprite;->isMoveTo:Z

    .line 86
    return-void
.end method


# virtual methods
.method public accelerate(FF)V
    .locals 3
    .parameter "acceleration"
    .parameter "angle"

    .prologue
    const v2, 0x3c8efa35

    .line 285
    iput p1, p0, Lcom/stickycoding/rokon/Sprite;->acceleration:F

    .line 286
    iput p2, p0, Lcom/stickycoding/rokon/Sprite;->velocityAngle:F

    .line 287
    mul-float v0, p2, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/stickycoding/rokon/Sprite;->velocityXFactor:F

    .line 288
    mul-float v0, p2, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/stickycoding/rokon/Sprite;->velocityYFactor:F

    .line 289
    return-void
.end method

.method public accelerate(FFF)V
    .locals 1
    .parameter "acceleration"
    .parameter "angle"
    .parameter "terminalVelocity"

    .prologue
    .line 299
    invoke-virtual {p0, p1, p2}, Lcom/stickycoding/rokon/Sprite;->accelerate(FF)V

    .line 300
    iput p3, p0, Lcom/stickycoding/rokon/Sprite;->terminalVelocity:F

    .line 301
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stickycoding/rokon/Sprite;->useTerminalVelocity:Z

    .line 302
    return-void
.end method

.method public accelerateX(F)V
    .locals 0
    .parameter "accelerationX"

    .prologue
    .line 248
    iput p1, p0, Lcom/stickycoding/rokon/Sprite;->accelerationX:F

    .line 249
    return-void
.end method

.method public accelerateX(FF)V
    .locals 1
    .parameter "accelerationX"
    .parameter "terminalSpeedX"

    .prologue
    .line 252
    iput p1, p0, Lcom/stickycoding/rokon/Sprite;->accelerationX:F

    .line 253
    iput p2, p0, Lcom/stickycoding/rokon/Sprite;->terminalSpeedX:F

    .line 254
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stickycoding/rokon/Sprite;->useTerminalSpeedX:Z

    .line 255
    return-void
.end method

.method public accelerateY(F)V
    .locals 0
    .parameter "accelerationY"

    .prologue
    .line 263
    iput p1, p0, Lcom/stickycoding/rokon/Sprite;->accelerationY:F

    .line 264
    return-void
.end method

.method public accelerateY(FF)V
    .locals 1
    .parameter "accelerationY"
    .parameter "terminalSpeedY"

    .prologue
    .line 273
    iput p1, p0, Lcom/stickycoding/rokon/Sprite;->accelerationY:F

    .line 274
    iput p2, p0, Lcom/stickycoding/rokon/Sprite;->terminalSpeedY:F

    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stickycoding/rokon/Sprite;->useTerminalSpeedY:Z

    .line 276
    return-void
.end method

.method public addModifier(Lcom/stickycoding/rokon/Modifier;)Z
    .locals 2
    .parameter "modifier"

    .prologue
    .line 740
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 748
    const-string v1, "Tried addModifier, Sprite is full [8]"

    invoke-static {v1}, Lcom/stickycoding/rokon/Debug;->warning(Ljava/lang/String;)V

    .line 749
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 741
    :cond_0
    iget-object v1, p0, Lcom/stickycoding/rokon/Sprite;->modifier:[Lcom/stickycoding/rokon/Modifier;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    .line 742
    iget-object v1, p0, Lcom/stickycoding/rokon/Sprite;->modifier:[Lcom/stickycoding/rokon/Modifier;

    aput-object p1, v1, v0

    .line 743
    invoke-virtual {p1, p0}, Lcom/stickycoding/rokon/Modifier;->onCreate(Lcom/stickycoding/rokon/Sprite;)V

    .line 744
    iget v1, p0, Lcom/stickycoding/rokon/Sprite;->modifierCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/stickycoding/rokon/Sprite;->modifierCount:I

    .line 745
    const/4 v1, 0x1

    goto :goto_1

    .line 740
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public clearModifiers()V
    .locals 3

    .prologue
    .line 771
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 774
    return-void

    .line 772
    :cond_0
    iget-object v1, p0, Lcom/stickycoding/rokon/Sprite;->modifier:[Lcom/stickycoding/rokon/Modifier;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 771
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getAcceleration()F
    .locals 1

    .prologue
    .line 386
    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->acceleration:F

    return v0
.end method

.method public getAccelerationX()F
    .locals 1

    .prologue
    .line 372
    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->accelerationX:F

    return v0
.end method

.method public getAccelerationY()F
    .locals 1

    .prologue
    .line 379
    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->accelerationY:F

    return v0
.end method

.method public getAngularAcceleration()F
    .locals 1

    .prologue
    .line 393
    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->angularAcceleration:F

    return v0
.end method

.method public getAngularVelocity()F
    .locals 1

    .prologue
    .line 400
    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->angularVelocity:F

    return v0
.end method

.method public getPolygon()Lcom/stickycoding/rokon/Polygon;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/stickycoding/rokon/Sprite;->polygon:Lcom/stickycoding/rokon/Polygon;

    return-object v0
.end method

.method public getSpeedX()F
    .locals 1

    .prologue
    .line 421
    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->speedX:F

    return v0
.end method

.method public getSpeedY()F
    .locals 1

    .prologue
    .line 428
    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->speedY:F

    return v0
.end method

.method public getTerminalAngularVelocity()F
    .locals 1

    .prologue
    .line 456
    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->terminalAngularVelocity:F

    return v0
.end method

.method public getTerminalSpeedX()F
    .locals 1

    .prologue
    .line 435
    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->terminalSpeedX:F

    return v0
.end method

.method public getTerminalSpeedY()F
    .locals 1

    .prologue
    .line 442
    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->terminalSpeedY:F

    return v0
.end method

.method public getTerminalVelocity()F
    .locals 1

    .prologue
    .line 449
    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->terminalVelocity:F

    return v0
.end method

.method public getVelocity()F
    .locals 1

    .prologue
    .line 414
    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->velocity:F

    return v0
.end method

.method public getVelocityAngle()F
    .locals 1

    .prologue
    .line 407
    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->velocityAngle:F

    return v0
.end method

.method public getVertex(I)[F
    .locals 10
    .parameter "index"

    .prologue
    const/high16 v8, 0x3f00

    .line 64
    iget v5, p0, Lcom/stickycoding/rokon/Sprite;->rotation:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/stickycoding/rokon/Sprite;->getX()F

    move-result v5

    invoke-virtual {p0}, Lcom/stickycoding/rokon/Sprite;->getWidth()F

    move-result v6

    iget-object v7, p0, Lcom/stickycoding/rokon/Sprite;->polygon:Lcom/stickycoding/rokon/Polygon;

    iget-object v7, v7, Lcom/stickycoding/rokon/Polygon;->vertex:[Lcom/stickycoding/rokon/Point;

    aget-object v7, v7, p1

    invoke-virtual {v7}, Lcom/stickycoding/rokon/Point;->getX()F

    move-result v7

    mul-float/2addr v6, v7

    add-float v3, v5, v6

    .line 66
    .local v3, x:F
    invoke-virtual {p0}, Lcom/stickycoding/rokon/Sprite;->getY()F

    move-result v5

    invoke-virtual {p0}, Lcom/stickycoding/rokon/Sprite;->getHeight()F

    move-result v6

    iget-object v7, p0, Lcom/stickycoding/rokon/Sprite;->polygon:Lcom/stickycoding/rokon/Polygon;

    iget-object v7, v7, Lcom/stickycoding/rokon/Polygon;->vertex:[Lcom/stickycoding/rokon/Point;

    aget-object v7, v7, p1

    invoke-virtual {v7}, Lcom/stickycoding/rokon/Point;->getY()F

    move-result v7

    mul-float/2addr v6, v7

    add-float v4, v5, v6

    .line 67
    .local v4, y:F
    invoke-virtual {p0}, Lcom/stickycoding/rokon/Sprite;->getX()F

    move-result v5

    invoke-virtual {p0}, Lcom/stickycoding/rokon/Sprite;->getWidth()F

    move-result v6

    mul-float/2addr v6, v8

    add-float v1, v5, v6

    .line 68
    .local v1, pivotX:F
    invoke-virtual {p0}, Lcom/stickycoding/rokon/Sprite;->getY()F

    move-result v5

    invoke-virtual {p0}, Lcom/stickycoding/rokon/Sprite;->getHeight()F

    move-result v6

    mul-float/2addr v6, v8

    add-float v2, v5, v6

    .line 69
    .local v2, pivotY:F
    iget v5, p0, Lcom/stickycoding/rokon/Sprite;->rotation:F

    invoke-static {v5, v3, v4, v1, v2}, Lcom/stickycoding/rokon/MathHelper;->rotate(FFFFF)[F

    move-result-object v0

    .local v0, f:[F
    move-object v5, v0

    .line 72
    .end local v0           #f:[F
    .end local v1           #pivotX:F
    .end local v2           #pivotY:F
    .end local v3           #x:F
    .end local v4           #y:F
    :goto_0
    return-object v5

    :cond_0
    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/stickycoding/rokon/Sprite;->getX()F

    move-result v7

    invoke-virtual {p0}, Lcom/stickycoding/rokon/Sprite;->getWidth()F

    move-result v8

    iget-object v9, p0, Lcom/stickycoding/rokon/Sprite;->polygon:Lcom/stickycoding/rokon/Polygon;

    iget-object v9, v9, Lcom/stickycoding/rokon/Polygon;->vertex:[Lcom/stickycoding/rokon/Point;

    aget-object v9, v9, p1

    invoke-virtual {v9}, Lcom/stickycoding/rokon/Point;->getX()F

    move-result v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    aput v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/stickycoding/rokon/Sprite;->getY()F

    move-result v7

    invoke-virtual {p0}, Lcom/stickycoding/rokon/Sprite;->getHeight()F

    move-result v8

    iget-object v9, p0, Lcom/stickycoding/rokon/Sprite;->polygon:Lcom/stickycoding/rokon/Polygon;

    iget-object v9, v9, Lcom/stickycoding/rokon/Polygon;->vertex:[Lcom/stickycoding/rokon/Point;

    aget-object v9, v9, p1

    invoke-virtual {v9}, Lcom/stickycoding/rokon/Point;->getY()F

    move-result v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    aput v7, v5, v6

    goto :goto_0
.end method

.method public intersects(Lcom/stickycoding/rokon/Sprite;)Z
    .locals 1
    .parameter "sprite"

    .prologue
    .line 784
    invoke-static {p0, p1}, Lcom/stickycoding/rokon/MathHelper;->intersects(Lcom/stickycoding/rokon/Sprite;Lcom/stickycoding/rokon/Sprite;)Z

    move-result v0

    return v0
.end method

.method public isUsingTerminalAngularVelocity()Z
    .locals 1

    .prologue
    .line 365
    iget-boolean v0, p0, Lcom/stickycoding/rokon/Sprite;->useTerminalAngularVelocity:Z

    return v0
.end method

.method public isUsingTerminalSpeedX()Z
    .locals 1

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/stickycoding/rokon/Sprite;->useTerminalSpeedX:Z

    return v0
.end method

.method public isUsingTerminalSpeedY()Z
    .locals 1

    .prologue
    .line 337
    iget-boolean v0, p0, Lcom/stickycoding/rokon/Sprite;->useTerminalSpeedY:Z

    return v0
.end method

.method public isUsingTerminalVelocity()Z
    .locals 1

    .prologue
    .line 351
    iget-boolean v0, p0, Lcom/stickycoding/rokon/Sprite;->useTerminalVelocity:Z

    return v0
.end method

.method public moveTo(FFJ)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "time"

    .prologue
    .line 698
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/stickycoding/rokon/Sprite;->moveTo(FFJI)V

    .line 699
    return-void
.end method

.method public moveTo(FFJI)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "time"
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    .line 656
    iget-boolean v0, p0, Lcom/stickycoding/rokon/Sprite;->isMoveTo:Z

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/stickycoding/rokon/Sprite;->parentScene:Lcom/stickycoding/rokon/Scene;

    iget-boolean v0, v0, Lcom/stickycoding/rokon/Scene;->useInvoke:Z

    if-eqz v0, :cond_0

    .line 658
    const-string v0, "onMoveToCancel"

    invoke-virtual {p0, v0}, Lcom/stickycoding/rokon/Sprite;->attemptInvoke(Ljava/lang/String;)Z

    .line 662
    :cond_0
    iput v1, p0, Lcom/stickycoding/rokon/Sprite;->accelerationX:F

    .line 663
    iput v1, p0, Lcom/stickycoding/rokon/Sprite;->accelerationY:F

    .line 664
    iput v1, p0, Lcom/stickycoding/rokon/Sprite;->acceleration:F

    .line 665
    iput v1, p0, Lcom/stickycoding/rokon/Sprite;->speedX:F

    .line 666
    iput v1, p0, Lcom/stickycoding/rokon/Sprite;->speedY:F

    .line 667
    iput v1, p0, Lcom/stickycoding/rokon/Sprite;->velocity:F

    .line 668
    iput v1, p0, Lcom/stickycoding/rokon/Sprite;->velocityXFactor:F

    .line 669
    iput v1, p0, Lcom/stickycoding/rokon/Sprite;->velocityYFactor:F

    .line 670
    iput v1, p0, Lcom/stickycoding/rokon/Sprite;->velocityAngle:F

    .line 671
    iput v1, p0, Lcom/stickycoding/rokon/Sprite;->terminalSpeedX:F

    .line 672
    iput v1, p0, Lcom/stickycoding/rokon/Sprite;->terminalSpeedY:F

    .line 673
    iput v1, p0, Lcom/stickycoding/rokon/Sprite;->terminalVelocity:F

    .line 675
    invoke-virtual {p0}, Lcom/stickycoding/rokon/Sprite;->getX()F

    move-result v0

    iput v0, p0, Lcom/stickycoding/rokon/Sprite;->moveToStartX:F

    .line 676
    invoke-virtual {p0}, Lcom/stickycoding/rokon/Sprite;->getY()F

    move-result v0

    iput v0, p0, Lcom/stickycoding/rokon/Sprite;->moveToStartY:F

    .line 677
    iput p1, p0, Lcom/stickycoding/rokon/Sprite;->moveToFinalX:F

    .line 678
    iput p2, p0, Lcom/stickycoding/rokon/Sprite;->moveToFinalY:F

    .line 679
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stickycoding/rokon/Sprite;->isMoveTo:Z

    .line 680
    iput p5, p0, Lcom/stickycoding/rokon/Sprite;->moveToType:I

    .line 681
    sget-wide v0, Lcom/stickycoding/rokon/Time;->loopTicks:J

    iput-wide v0, p0, Lcom/stickycoding/rokon/Sprite;->moveToStartTime:J

    .line 682
    iput-wide p3, p0, Lcom/stickycoding/rokon/Sprite;->moveToTime:J

    .line 684
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/stickycoding/rokon/Sprite;->moveToCallback:Lcom/stickycoding/rokon/Callback;

    .line 685
    return-void
.end method

.method public moveTo(FFJILcom/stickycoding/rokon/Callback;)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "time"
    .parameter "type"
    .parameter "callback"

    .prologue
    .line 641
    invoke-virtual/range {p0 .. p5}, Lcom/stickycoding/rokon/Sprite;->moveTo(FFJI)V

    .line 642
    iput-object p6, p0, Lcom/stickycoding/rokon/Sprite;->moveToCallback:Lcom/stickycoding/rokon/Callback;

    .line 643
    return-void
.end method

.method public onRemove()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-super {p0}, Lcom/stickycoding/rokon/GameObject;->onRemove()V

    .line 93
    iput-object v0, p0, Lcom/stickycoding/rokon/Sprite;->rotateToCallback:Lcom/stickycoding/rokon/Callback;

    .line 94
    iput-object v0, p0, Lcom/stickycoding/rokon/Sprite;->moveToCallback:Lcom/stickycoding/rokon/Callback;

    .line 95
    return-void
.end method

.method public onUpdate()V
    .locals 1

    .prologue
    .line 169
    invoke-super {p0}, Lcom/stickycoding/rokon/GameObject;->onUpdate()V

    .line 170
    iget-boolean v0, p0, Lcom/stickycoding/rokon/Sprite;->isMoveTo:Z

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/stickycoding/rokon/Sprite;->onUpdateMoveTo()V

    .line 173
    :cond_0
    iget-boolean v0, p0, Lcom/stickycoding/rokon/Sprite;->isRotateTo:Z

    if-eqz v0, :cond_1

    .line 174
    invoke-virtual {p0}, Lcom/stickycoding/rokon/Sprite;->onUpdateRotateTo()V

    .line 176
    :cond_1
    invoke-virtual {p0}, Lcom/stickycoding/rokon/Sprite;->updatePosition()V

    .line 177
    invoke-virtual {p0}, Lcom/stickycoding/rokon/Sprite;->updateModifiers()V

    .line 178
    return-void
.end method

.method protected onUpdateMoveTo()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 702
    sget-wide v2, Lcom/stickycoding/rokon/Time;->loopTicks:J

    iget-wide v4, p0, Lcom/stickycoding/rokon/Sprite;->moveToStartTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    iget-wide v3, p0, Lcom/stickycoding/rokon/Sprite;->moveToTime:J

    long-to-float v3, v3

    div-float v1, v2, v3

    .line 703
    .local v1, position:F
    iget v2, p0, Lcom/stickycoding/rokon/Sprite;->moveToType:I

    invoke-static {v1, v2}, Lcom/stickycoding/rokon/Movement;->getPosition(FI)F

    move-result v0

    .line 704
    .local v0, movementFactor:F
    const/high16 v2, 0x3f80

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_2

    .line 705
    iget v2, p0, Lcom/stickycoding/rokon/Sprite;->moveToFinalX:F

    invoke-virtual {p0, v2}, Lcom/stickycoding/rokon/Sprite;->setX(F)V

    .line 706
    iget v2, p0, Lcom/stickycoding/rokon/Sprite;->moveToFinalY:F

    invoke-virtual {p0, v2}, Lcom/stickycoding/rokon/Sprite;->setY(F)V

    .line 707
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/stickycoding/rokon/Sprite;->isMoveTo:Z

    .line 708
    iget-object v2, p0, Lcom/stickycoding/rokon/Sprite;->moveToCallback:Lcom/stickycoding/rokon/Callback;

    if-eqz v2, :cond_0

    .line 709
    iget-object v2, p0, Lcom/stickycoding/rokon/Sprite;->moveToCallback:Lcom/stickycoding/rokon/Callback;

    invoke-virtual {p0, v2}, Lcom/stickycoding/rokon/Sprite;->attemptInvoke(Lcom/stickycoding/rokon/Callback;)Z

    .line 711
    :cond_0
    iget-object v2, p0, Lcom/stickycoding/rokon/Sprite;->parentScene:Lcom/stickycoding/rokon/Scene;

    iget-boolean v2, v2, Lcom/stickycoding/rokon/Scene;->useInvoke:Z

    if-eqz v2, :cond_1

    .line 712
    const-string v2, "onMoveToComplete"

    invoke-virtual {p0, v2}, Lcom/stickycoding/rokon/Sprite;->attemptInvoke(Ljava/lang/String;)Z

    .line 714
    :cond_1
    iput v6, p0, Lcom/stickycoding/rokon/Sprite;->accelerationX:F

    .line 715
    iput v6, p0, Lcom/stickycoding/rokon/Sprite;->accelerationY:F

    .line 716
    iput v6, p0, Lcom/stickycoding/rokon/Sprite;->acceleration:F

    .line 717
    iput v6, p0, Lcom/stickycoding/rokon/Sprite;->speedX:F

    .line 718
    iput v6, p0, Lcom/stickycoding/rokon/Sprite;->speedY:F

    .line 719
    iput v6, p0, Lcom/stickycoding/rokon/Sprite;->velocity:F

    .line 720
    iput v6, p0, Lcom/stickycoding/rokon/Sprite;->velocityXFactor:F

    .line 721
    iput v6, p0, Lcom/stickycoding/rokon/Sprite;->velocityYFactor:F

    .line 722
    iput v6, p0, Lcom/stickycoding/rokon/Sprite;->velocityAngle:F

    .line 723
    iput v6, p0, Lcom/stickycoding/rokon/Sprite;->terminalSpeedX:F

    .line 724
    iput v6, p0, Lcom/stickycoding/rokon/Sprite;->terminalSpeedY:F

    .line 725
    iput v6, p0, Lcom/stickycoding/rokon/Sprite;->terminalVelocity:F

    .line 730
    :goto_0
    return-void

    .line 728
    :cond_2
    iget v2, p0, Lcom/stickycoding/rokon/Sprite;->moveToStartX:F

    iget v3, p0, Lcom/stickycoding/rokon/Sprite;->moveToFinalX:F

    iget v4, p0, Lcom/stickycoding/rokon/Sprite;->moveToStartX:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/stickycoding/rokon/Sprite;->setX(F)V

    .line 729
    iget v2, p0, Lcom/stickycoding/rokon/Sprite;->moveToStartY:F

    iget v3, p0, Lcom/stickycoding/rokon/Sprite;->moveToFinalY:F

    iget v4, p0, Lcom/stickycoding/rokon/Sprite;->moveToStartY:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/stickycoding/rokon/Sprite;->setY(F)V

    goto :goto_0
.end method

.method protected onUpdateRotateTo()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 610
    sget-wide v2, Lcom/stickycoding/rokon/Time;->loopTicks:J

    iget-wide v4, p0, Lcom/stickycoding/rokon/Sprite;->rotateToStartTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    iget v3, p0, Lcom/stickycoding/rokon/Sprite;->rotateToTime:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 611
    .local v1, position:F
    iget v2, p0, Lcom/stickycoding/rokon/Sprite;->rotateToType:I

    invoke-static {v1, v2}, Lcom/stickycoding/rokon/Movement;->getPosition(FI)F

    move-result v0

    .line 612
    .local v0, movementFactor:F
    const/high16 v2, 0x3f80

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_2

    .line 613
    iget v2, p0, Lcom/stickycoding/rokon/Sprite;->rotateToAngle:F

    iput v2, p0, Lcom/stickycoding/rokon/Sprite;->rotation:F

    .line 614
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/stickycoding/rokon/Sprite;->isRotateTo:Z

    .line 615
    iget-object v2, p0, Lcom/stickycoding/rokon/Sprite;->parentScene:Lcom/stickycoding/rokon/Scene;

    iget-boolean v2, v2, Lcom/stickycoding/rokon/Scene;->useInvoke:Z

    if-eqz v2, :cond_0

    .line 616
    const-string v2, "onRotateToComplete"

    invoke-virtual {p0, v2}, Lcom/stickycoding/rokon/Sprite;->attemptInvoke(Ljava/lang/String;)Z

    .line 618
    :cond_0
    iget-object v2, p0, Lcom/stickycoding/rokon/Sprite;->rotateToCallback:Lcom/stickycoding/rokon/Callback;

    if-eqz v2, :cond_1

    .line 619
    iget-object v2, p0, Lcom/stickycoding/rokon/Sprite;->rotateToCallback:Lcom/stickycoding/rokon/Callback;

    invoke-virtual {p0, v2}, Lcom/stickycoding/rokon/Sprite;->attemptInvoke(Lcom/stickycoding/rokon/Callback;)Z

    .line 621
    :cond_1
    iput v6, p0, Lcom/stickycoding/rokon/Sprite;->angularVelocity:F

    .line 622
    iput v6, p0, Lcom/stickycoding/rokon/Sprite;->angularAcceleration:F

    .line 623
    iput v6, p0, Lcom/stickycoding/rokon/Sprite;->terminalAngularVelocity:F

    .line 632
    :goto_0
    return-void

    .line 627
    :cond_2
    iget v2, p0, Lcom/stickycoding/rokon/Sprite;->rotateToDirection:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 628
    iget v2, p0, Lcom/stickycoding/rokon/Sprite;->rotateToAngleStart:F

    iget v3, p0, Lcom/stickycoding/rokon/Sprite;->rotateToAngle:F

    iget v4, p0, Lcom/stickycoding/rokon/Sprite;->rotateToAngleStart:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, p0, Lcom/stickycoding/rokon/Sprite;->rotation:F

    goto :goto_0

    .line 630
    :cond_3
    iget v2, p0, Lcom/stickycoding/rokon/Sprite;->rotateToAngleStart:F

    iget v3, p0, Lcom/stickycoding/rokon/Sprite;->rotateToAngleStart:F

    iget v4, p0, Lcom/stickycoding/rokon/Sprite;->rotateToAngle:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/stickycoding/rokon/Sprite;->rotation:F

    goto :goto_0
.end method

.method public removeModifier(Lcom/stickycoding/rokon/Modifier;)V
    .locals 3
    .parameter "modifier"

    .prologue
    .line 758
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 765
    :goto_1
    return-void

    .line 759
    :cond_0
    iget-object v1, p0, Lcom/stickycoding/rokon/Sprite;->modifier:[Lcom/stickycoding/rokon/Modifier;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 760
    iget-object v1, p0, Lcom/stickycoding/rokon/Sprite;->modifier:[Lcom/stickycoding/rokon/Modifier;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 761
    iget v1, p0, Lcom/stickycoding/rokon/Sprite;->modifierCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/stickycoding/rokon/Sprite;->modifierCount:I

    goto :goto_1

    .line 758
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public rotateTo(FIII)V
    .locals 5
    .parameter "angle"
    .parameter "direction"
    .parameter "time"
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/high16 v2, 0x4334

    .line 539
    iget-boolean v0, p0, Lcom/stickycoding/rokon/Sprite;->isRotateTo:Z

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/stickycoding/rokon/Sprite;->parentScene:Lcom/stickycoding/rokon/Scene;

    iget-boolean v0, v0, Lcom/stickycoding/rokon/Scene;->useInvoke:Z

    if-eqz v0, :cond_0

    const-string v0, "onRotateToCancel"

    invoke-virtual {p0, v0}, Lcom/stickycoding/rokon/Sprite;->attemptInvoke(Ljava/lang/String;)Z

    .line 543
    :cond_0
    iput v1, p0, Lcom/stickycoding/rokon/Sprite;->angularVelocity:F

    .line 544
    iput v1, p0, Lcom/stickycoding/rokon/Sprite;->angularAcceleration:F

    .line 545
    iput v1, p0, Lcom/stickycoding/rokon/Sprite;->terminalAngularVelocity:F

    .line 547
    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->rotation:F

    iput v0, p0, Lcom/stickycoding/rokon/Sprite;->rotateToAngleStart:F

    .line 548
    iput p1, p0, Lcom/stickycoding/rokon/Sprite;->rotateToAngle:F

    .line 549
    iput p2, p0, Lcom/stickycoding/rokon/Sprite;->rotateToDirection:I

    .line 550
    iput-boolean v3, p0, Lcom/stickycoding/rokon/Sprite;->isRotateTo:Z

    .line 551
    iput p4, p0, Lcom/stickycoding/rokon/Sprite;->rotateToType:I

    .line 552
    sget-wide v0, Lcom/stickycoding/rokon/Time;->loopTicks:J

    iput-wide v0, p0, Lcom/stickycoding/rokon/Sprite;->rotateToStartTime:J

    .line 553
    iput p3, p0, Lcom/stickycoding/rokon/Sprite;->rotateToTime:I

    .line 555
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/stickycoding/rokon/Sprite;->rotateToCallback:Lcom/stickycoding/rokon/Callback;

    .line 557
    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->rotation:F

    const v1, 0x40c90fdb

    rem-float/2addr v0, v1

    iput v0, p0, Lcom/stickycoding/rokon/Sprite;->rotation:F

    .line 559
    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->rotateToDirection:I

    if-nez v0, :cond_1

    .line 560
    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->rotation:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_5

    .line 561
    cmpl-float v0, p1, v2

    if-lez v0, :cond_3

    .line 562
    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->rotation:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 563
    iput v4, p0, Lcom/stickycoding/rokon/Sprite;->rotateToDirection:I

    .line 591
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Rotating from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/stickycoding/rokon/Sprite;->rotation:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/stickycoding/rokon/Sprite;->rotateToDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stickycoding/rokon/Debug;->print(Ljava/lang/String;)V

    .line 592
    return-void

    .line 565
    :cond_2
    iput v3, p0, Lcom/stickycoding/rokon/Sprite;->rotateToDirection:I

    goto :goto_0

    .line 568
    :cond_3
    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->rotation:F

    sub-float/2addr v0, v2

    cmpl-float v0, p1, v0

    if-lez v0, :cond_4

    .line 569
    iput v4, p0, Lcom/stickycoding/rokon/Sprite;->rotateToDirection:I

    goto :goto_0

    .line 571
    :cond_4
    iput v3, p0, Lcom/stickycoding/rokon/Sprite;->rotateToDirection:I

    goto :goto_0

    .line 575
    :cond_5
    cmpl-float v0, p1, v2

    if-lez v0, :cond_7

    .line 576
    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->rotation:F

    add-float/2addr v0, v2

    cmpl-float v0, p1, v0

    if-lez v0, :cond_6

    .line 577
    iput v4, p0, Lcom/stickycoding/rokon/Sprite;->rotateToDirection:I

    .line 578
    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->rotateToAngleStart:F

    const/high16 v1, 0x43b4

    add-float/2addr v0, v1

    iput v0, p0, Lcom/stickycoding/rokon/Sprite;->rotateToAngleStart:F

    goto :goto_0

    .line 580
    :cond_6
    iput v3, p0, Lcom/stickycoding/rokon/Sprite;->rotateToDirection:I

    goto :goto_0

    .line 583
    :cond_7
    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->rotation:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_8

    .line 584
    iput v3, p0, Lcom/stickycoding/rokon/Sprite;->rotateToDirection:I

    goto :goto_0

    .line 586
    :cond_8
    iput v4, p0, Lcom/stickycoding/rokon/Sprite;->rotateToDirection:I

    goto :goto_0
.end method

.method public rotateTo(FIIILcom/stickycoding/rokon/Callback;)V
    .locals 0
    .parameter "angle"
    .parameter "direction"
    .parameter "time"
    .parameter "type"
    .parameter "callback"

    .prologue
    .line 605
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stickycoding/rokon/Sprite;->rotateTo(FIII)V

    .line 606
    iput-object p5, p0, Lcom/stickycoding/rokon/Sprite;->rotateToCallback:Lcom/stickycoding/rokon/Callback;

    .line 607
    return-void
.end method

.method public setAngularAcceleration(F)V
    .locals 0
    .parameter "acceleration"

    .prologue
    .line 518
    iput p1, p0, Lcom/stickycoding/rokon/Sprite;->angularAcceleration:F

    .line 519
    return-void
.end method

.method public setAngularVelocity(F)V
    .locals 0
    .parameter "angularVelocity"

    .prologue
    .line 527
    iput p1, p0, Lcom/stickycoding/rokon/Sprite;->angularVelocity:F

    .line 528
    return-void
.end method

.method public setPolygon(Lcom/stickycoding/rokon/Polygon;)V
    .locals 0
    .parameter "polygon"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/stickycoding/rokon/Sprite;->polygon:Lcom/stickycoding/rokon/Polygon;

    .line 45
    return-void
.end method

.method public setSpeed(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 215
    iput p1, p0, Lcom/stickycoding/rokon/Sprite;->speedX:F

    .line 216
    iput p2, p0, Lcom/stickycoding/rokon/Sprite;->speedY:F

    .line 217
    return-void
.end method

.method public setSpeedX(F)V
    .locals 0
    .parameter "x"

    .prologue
    .line 196
    iput p1, p0, Lcom/stickycoding/rokon/Sprite;->speedX:F

    .line 197
    return-void
.end method

.method public setSpeedY(F)V
    .locals 0
    .parameter "y"

    .prologue
    .line 205
    iput p1, p0, Lcom/stickycoding/rokon/Sprite;->speedY:F

    .line 206
    return-void
.end method

.method public setTerminalAngularVelocity(F)V
    .locals 1
    .parameter "terminalAngularVelocity"

    .prologue
    .line 508
    iput p1, p0, Lcom/stickycoding/rokon/Sprite;->terminalAngularVelocity:F

    .line 509
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stickycoding/rokon/Sprite;->useTerminalAngularVelocity:Z

    .line 510
    return-void
.end method

.method public setTerminalSpeed(FF)V
    .locals 1
    .parameter "terminalSpeedX"
    .parameter "terminalSpeedY"

    .prologue
    const/4 v0, 0x1

    .line 486
    iput p1, p0, Lcom/stickycoding/rokon/Sprite;->terminalSpeedX:F

    .line 487
    iput p2, p0, Lcom/stickycoding/rokon/Sprite;->terminalSpeedY:F

    .line 488
    iput-boolean v0, p0, Lcom/stickycoding/rokon/Sprite;->useTerminalSpeedX:Z

    .line 489
    iput-boolean v0, p0, Lcom/stickycoding/rokon/Sprite;->useTerminalSpeedY:Z

    .line 490
    return-void
.end method

.method public setTerminalSpeedX(F)V
    .locals 1
    .parameter "terminalSpeedX"

    .prologue
    .line 465
    iput p1, p0, Lcom/stickycoding/rokon/Sprite;->terminalSpeedX:F

    .line 466
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stickycoding/rokon/Sprite;->useTerminalSpeedX:Z

    .line 467
    return-void
.end method

.method public setTerminalSpeedY(F)V
    .locals 1
    .parameter "terminalSpeedY"

    .prologue
    .line 475
    iput p1, p0, Lcom/stickycoding/rokon/Sprite;->terminalSpeedY:F

    .line 476
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stickycoding/rokon/Sprite;->useTerminalSpeedY:Z

    .line 477
    return-void
.end method

.method public setTerminalVelocity(F)V
    .locals 1
    .parameter "terminalVelocity"

    .prologue
    .line 498
    iput p1, p0, Lcom/stickycoding/rokon/Sprite;->terminalVelocity:F

    .line 499
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stickycoding/rokon/Sprite;->useTerminalVelocity:Z

    .line 500
    return-void
.end method

.method public setVelocity(FF)V
    .locals 3
    .parameter "velocity"
    .parameter "angle"

    .prologue
    const v2, 0x3c8efa35

    .line 236
    iput p1, p0, Lcom/stickycoding/rokon/Sprite;->velocity:F

    .line 237
    iput p2, p0, Lcom/stickycoding/rokon/Sprite;->velocityAngle:F

    .line 238
    mul-float v0, p2, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/stickycoding/rokon/Sprite;->velocityXFactor:F

    .line 239
    mul-float v0, p2, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/stickycoding/rokon/Sprite;->velocityYFactor:F

    .line 240
    return-void
.end method

.method public setVelocity(I)V
    .locals 1
    .parameter "velocity"

    .prologue
    .line 226
    int-to-float v0, p1

    iput v0, p0, Lcom/stickycoding/rokon/Sprite;->velocity:F

    .line 227
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stickycoding/rokon/Sprite;->isMoveTo:Z

    .line 102
    iput v1, p0, Lcom/stickycoding/rokon/Sprite;->accelerationX:F

    .line 103
    iput v1, p0, Lcom/stickycoding/rokon/Sprite;->accelerationY:F

    .line 104
    iput v1, p0, Lcom/stickycoding/rokon/Sprite;->acceleration:F

    .line 105
    iput v1, p0, Lcom/stickycoding/rokon/Sprite;->speedX:F

    .line 106
    iput v1, p0, Lcom/stickycoding/rokon/Sprite;->speedY:F

    .line 107
    iput v1, p0, Lcom/stickycoding/rokon/Sprite;->velocity:F

    .line 108
    iput v1, p0, Lcom/stickycoding/rokon/Sprite;->velocityXFactor:F

    .line 109
    iput v1, p0, Lcom/stickycoding/rokon/Sprite;->velocityYFactor:F

    .line 110
    iput v1, p0, Lcom/stickycoding/rokon/Sprite;->velocityAngle:F

    .line 111
    iput v1, p0, Lcom/stickycoding/rokon/Sprite;->terminalSpeedX:F

    .line 112
    iput v1, p0, Lcom/stickycoding/rokon/Sprite;->terminalSpeedY:F

    .line 113
    iput v1, p0, Lcom/stickycoding/rokon/Sprite;->terminalVelocity:F

    .line 114
    iput v1, p0, Lcom/stickycoding/rokon/Sprite;->angularVelocity:F

    .line 115
    iput v1, p0, Lcom/stickycoding/rokon/Sprite;->angularAcceleration:F

    .line 116
    iput v1, p0, Lcom/stickycoding/rokon/Sprite;->terminalAngularVelocity:F

    .line 117
    return-void
.end method

.method public stopUsingTerminalAngularVelocity()V
    .locals 1

    .prologue
    .line 358
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stickycoding/rokon/Sprite;->useTerminalAngularVelocity:Z

    .line 359
    return-void
.end method

.method public stopUsingTerminalSpeed()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 322
    iput-boolean v0, p0, Lcom/stickycoding/rokon/Sprite;->useTerminalSpeedX:Z

    .line 323
    iput-boolean v0, p0, Lcom/stickycoding/rokon/Sprite;->useTerminalSpeedY:Z

    .line 324
    return-void
.end method

.method public stopUsingTerminalSpeedX()V
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stickycoding/rokon/Sprite;->useTerminalSpeedX:Z

    .line 309
    return-void
.end method

.method public stopUsingTerminalSpeedY()V
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stickycoding/rokon/Sprite;->useTerminalSpeedY:Z

    .line 316
    return-void
.end method

.method public stopUsingTerminalVelocity()V
    .locals 1

    .prologue
    .line 344
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stickycoding/rokon/Sprite;->useTerminalVelocity:Z

    .line 345
    return-void
.end method

.method protected updateModifiers()V
    .locals 2

    .prologue
    .line 181
    iget v1, p0, Lcom/stickycoding/rokon/Sprite;->modifierCount:I

    if-lez v1, :cond_0

    .line 182
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    .line 188
    .end local v0           #i:I
    :cond_0
    return-void

    .line 183
    .restart local v0       #i:I
    :cond_1
    iget-object v1, p0, Lcom/stickycoding/rokon/Sprite;->modifier:[Lcom/stickycoding/rokon/Modifier;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 184
    iget-object v1, p0, Lcom/stickycoding/rokon/Sprite;->modifier:[Lcom/stickycoding/rokon/Modifier;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lcom/stickycoding/rokon/Modifier;->onUpdate(Lcom/stickycoding/rokon/Sprite;)V

    .line 182
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected updatePosition()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 120
    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->accelerationX:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->accelerationY:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->speedX:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->speedY:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->velocity:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->angularVelocity:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->angularAcceleration:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->accelerationX:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_4

    .line 122
    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->speedX:F

    iget v1, p0, Lcom/stickycoding/rokon/Sprite;->accelerationX:F

    sget v2, Lcom/stickycoding/rokon/Time;->loopTicksFraction:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/stickycoding/rokon/Sprite;->speedX:F

    .line 123
    iget-boolean v0, p0, Lcom/stickycoding/rokon/Sprite;->useTerminalSpeedX:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->accelerationX:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->speedX:F

    iget v1, p0, Lcom/stickycoding/rokon/Sprite;->terminalSpeedX:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_3

    :cond_2
    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->accelerationX:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_4

    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->speedY:F

    iget v1, p0, Lcom/stickycoding/rokon/Sprite;->terminalSpeedX:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 124
    :cond_3
    iput v3, p0, Lcom/stickycoding/rokon/Sprite;->accelerationX:F

    .line 125
    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->terminalSpeedX:F

    iput v0, p0, Lcom/stickycoding/rokon/Sprite;->speedX:F

    .line 126
    iget-object v0, p0, Lcom/stickycoding/rokon/Sprite;->parentScene:Lcom/stickycoding/rokon/Scene;

    iget-boolean v0, v0, Lcom/stickycoding/rokon/Scene;->useInvoke:Z

    if-eqz v0, :cond_4

    const-string v0, "onReachTerminalSpeedX"

    invoke-virtual {p0, v0}, Lcom/stickycoding/rokon/Sprite;->attemptInvoke(Ljava/lang/String;)Z

    .line 129
    :cond_4
    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->accelerationY:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_7

    .line 130
    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->speedY:F

    iget v1, p0, Lcom/stickycoding/rokon/Sprite;->accelerationY:F

    sget v2, Lcom/stickycoding/rokon/Time;->loopTicksFraction:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/stickycoding/rokon/Sprite;->speedY:F

    .line 131
    iget-boolean v0, p0, Lcom/stickycoding/rokon/Sprite;->useTerminalSpeedY:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->accelerationY:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_5

    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->speedY:F

    iget v1, p0, Lcom/stickycoding/rokon/Sprite;->terminalSpeedY:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_6

    :cond_5
    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->accelerationY:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_7

    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->speedY:F

    iget v1, p0, Lcom/stickycoding/rokon/Sprite;->terminalSpeedY:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    .line 132
    :cond_6
    iput v3, p0, Lcom/stickycoding/rokon/Sprite;->accelerationY:F

    .line 133
    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->terminalSpeedY:F

    iput v0, p0, Lcom/stickycoding/rokon/Sprite;->speedY:F

    .line 134
    iget-object v0, p0, Lcom/stickycoding/rokon/Sprite;->parentScene:Lcom/stickycoding/rokon/Scene;

    iget-boolean v0, v0, Lcom/stickycoding/rokon/Scene;->useInvoke:Z

    if-eqz v0, :cond_7

    const-string v0, "onReachTerminalSpeedY"

    invoke-virtual {p0, v0}, Lcom/stickycoding/rokon/Sprite;->attemptInvoke(Ljava/lang/String;)Z

    .line 137
    :cond_7
    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->speedX:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_8

    .line 138
    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->speedX:F

    sget v1, Lcom/stickycoding/rokon/Time;->loopTicksFraction:F

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/stickycoding/rokon/Sprite;->moveX(F)V

    .line 140
    :cond_8
    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->speedY:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_9

    .line 141
    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->speedY:F

    sget v1, Lcom/stickycoding/rokon/Time;->loopTicksFraction:F

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/stickycoding/rokon/Sprite;->moveY(F)V

    .line 143
    :cond_9
    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->acceleration:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_c

    .line 144
    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->velocity:F

    iget v1, p0, Lcom/stickycoding/rokon/Sprite;->acceleration:F

    sget v2, Lcom/stickycoding/rokon/Time;->loopTicksFraction:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/stickycoding/rokon/Sprite;->velocity:F

    .line 145
    iget-boolean v0, p0, Lcom/stickycoding/rokon/Sprite;->useTerminalVelocity:Z

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->acceleration:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_a

    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->velocity:F

    iget v1, p0, Lcom/stickycoding/rokon/Sprite;->terminalVelocity:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_b

    :cond_a
    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->acceleration:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_c

    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->velocity:F

    iget v1, p0, Lcom/stickycoding/rokon/Sprite;->terminalVelocity:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_c

    .line 146
    :cond_b
    iput v3, p0, Lcom/stickycoding/rokon/Sprite;->acceleration:F

    .line 147
    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->terminalVelocity:F

    iput v0, p0, Lcom/stickycoding/rokon/Sprite;->velocity:F

    .line 148
    iget-object v0, p0, Lcom/stickycoding/rokon/Sprite;->parentScene:Lcom/stickycoding/rokon/Scene;

    iget-boolean v0, v0, Lcom/stickycoding/rokon/Scene;->useInvoke:Z

    if-eqz v0, :cond_c

    const-string v0, "onReachTerminalVelocity"

    invoke-virtual {p0, v0}, Lcom/stickycoding/rokon/Sprite;->attemptInvoke(Ljava/lang/String;)Z

    .line 151
    :cond_c
    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->velocity:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_d

    .line 152
    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->velocityXFactor:F

    iget v1, p0, Lcom/stickycoding/rokon/Sprite;->velocity:F

    sget v2, Lcom/stickycoding/rokon/Time;->loopTicksFraction:F

    mul-float/2addr v1, v2

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/stickycoding/rokon/Sprite;->moveX(F)V

    .line 153
    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->velocityYFactor:F

    iget v1, p0, Lcom/stickycoding/rokon/Sprite;->velocity:F

    sget v2, Lcom/stickycoding/rokon/Time;->loopTicksFraction:F

    mul-float/2addr v1, v2

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/stickycoding/rokon/Sprite;->moveY(F)V

    .line 155
    :cond_d
    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->angularAcceleration:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_10

    .line 156
    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->angularVelocity:F

    iget v1, p0, Lcom/stickycoding/rokon/Sprite;->angularAcceleration:F

    sget v2, Lcom/stickycoding/rokon/Time;->loopTicksFraction:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/stickycoding/rokon/Sprite;->angularVelocity:F

    .line 157
    iget-boolean v0, p0, Lcom/stickycoding/rokon/Sprite;->useTerminalAngularVelocity:Z

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->angularAcceleration:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_e

    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->angularVelocity:F

    iget v1, p0, Lcom/stickycoding/rokon/Sprite;->terminalAngularVelocity:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_f

    :cond_e
    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->angularAcceleration:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_10

    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->angularVelocity:F

    iget v1, p0, Lcom/stickycoding/rokon/Sprite;->terminalAngularVelocity:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_10

    .line 158
    :cond_f
    iput v3, p0, Lcom/stickycoding/rokon/Sprite;->angularAcceleration:F

    .line 159
    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->terminalAngularVelocity:F

    iput v0, p0, Lcom/stickycoding/rokon/Sprite;->angularVelocity:F

    .line 160
    const-string v0, "onReachTerminalAngularVelocity"

    invoke-virtual {p0, v0}, Lcom/stickycoding/rokon/Sprite;->attemptInvoke(Ljava/lang/String;)Z

    .line 163
    :cond_10
    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->angularVelocity:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_0

    .line 164
    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->rotation:F

    iget v1, p0, Lcom/stickycoding/rokon/Sprite;->angularVelocity:F

    sget v2, Lcom/stickycoding/rokon/Time;->loopTicksFraction:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/stickycoding/rokon/Sprite;->rotation:F

    goto/16 :goto_0
.end method
