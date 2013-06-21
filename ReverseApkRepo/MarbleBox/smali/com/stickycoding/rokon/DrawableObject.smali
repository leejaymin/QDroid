.class public Lcom/stickycoding/rokon/DrawableObject;
.super Lcom/stickycoding/rokon/BasicGameObject;
.source "DrawableObject.java"

# interfaces
.implements Lcom/stickycoding/rokon/Drawable;
.implements Lcom/stickycoding/rokon/Updateable;


# instance fields
.field protected alpha:F

.field protected animated:Z

.field protected animationCustomPosition:I

.field protected animationEndTile:I

.field private animationFrameTicks:J

.field private animationLastTicks:J

.field protected animationLoops:I

.field protected animationReturnToStart:Z

.field protected animationStartTile:I

.field protected blendFunction:Lcom/stickycoding/rokon/BlendFunction;

.field protected blue:F

.field protected border:Z

.field protected borderAlpha:F

.field protected borderBlue:F

.field protected borderGreen:F

.field protected borderRed:F

.field protected buffer:Lcom/stickycoding/rokon/BufferObject;

.field protected colourBuffer:Lcom/stickycoding/rokon/ColourBuffer;

.field protected customAnimationSequence:[I

.field protected fadeStart:F

.field protected fadeStartTime:J

.field protected fadeTime:I

.field protected fadeTo:F

.field protected fadeType:I

.field protected fadeUp:Z

.field protected fill:Z

.field protected forceDrawType:I

.field protected freezeAnimation:Z

.field protected green:F

.field protected hasCustomAnimation:Z

.field protected invisible:Z

.field protected isFading:Z

.field private isOnScreen:Z

.field protected killNextUpdate:Z

.field private lastOnScreen:J

.field protected lineWidth:F

.field protected red:F

.field protected texture:Lcom/stickycoding/rokon/Texture;

.field protected textureTile:I

.field protected z:I


# direct methods
.method public constructor <init>(FFFF)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    .line 206
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stickycoding/rokon/BasicGameObject;-><init>(FFFF)V

    .line 13
    iput-boolean v2, p0, Lcom/stickycoding/rokon/DrawableObject;->killNextUpdate:Z

    .line 15
    iput v2, p0, Lcom/stickycoding/rokon/DrawableObject;->z:I

    .line 17
    iput v2, p0, Lcom/stickycoding/rokon/DrawableObject;->forceDrawType:I

    .line 18
    iput v1, p0, Lcom/stickycoding/rokon/DrawableObject;->red:F

    iput v1, p0, Lcom/stickycoding/rokon/DrawableObject;->green:F

    iput v1, p0, Lcom/stickycoding/rokon/DrawableObject;->blue:F

    iput v1, p0, Lcom/stickycoding/rokon/DrawableObject;->alpha:F

    .line 21
    iput v2, p0, Lcom/stickycoding/rokon/DrawableObject;->textureTile:I

    .line 36
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/stickycoding/rokon/DrawableObject;->lineWidth:F

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stickycoding/rokon/DrawableObject;->fill:Z

    .line 38
    iput v3, p0, Lcom/stickycoding/rokon/DrawableObject;->borderRed:F

    iput v3, p0, Lcom/stickycoding/rokon/DrawableObject;->borderGreen:F

    iput v3, p0, Lcom/stickycoding/rokon/DrawableObject;->borderBlue:F

    iput v1, p0, Lcom/stickycoding/rokon/DrawableObject;->borderAlpha:F

    .line 409
    iput-boolean v2, p0, Lcom/stickycoding/rokon/DrawableObject;->isOnScreen:Z

    .line 410
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/stickycoding/rokon/DrawableObject;->lastOnScreen:J

    .line 207
    invoke-virtual {p0}, Lcom/stickycoding/rokon/DrawableObject;->doBuffer()V

    .line 208
    return-void
.end method

.method public constructor <init>(FFFFLcom/stickycoding/rokon/Texture;)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "texture"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    .line 211
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stickycoding/rokon/BasicGameObject;-><init>(FFFF)V

    .line 13
    iput-boolean v2, p0, Lcom/stickycoding/rokon/DrawableObject;->killNextUpdate:Z

    .line 15
    iput v2, p0, Lcom/stickycoding/rokon/DrawableObject;->z:I

    .line 17
    iput v2, p0, Lcom/stickycoding/rokon/DrawableObject;->forceDrawType:I

    .line 18
    iput v1, p0, Lcom/stickycoding/rokon/DrawableObject;->red:F

    iput v1, p0, Lcom/stickycoding/rokon/DrawableObject;->green:F

    iput v1, p0, Lcom/stickycoding/rokon/DrawableObject;->blue:F

    iput v1, p0, Lcom/stickycoding/rokon/DrawableObject;->alpha:F

    .line 21
    iput v2, p0, Lcom/stickycoding/rokon/DrawableObject;->textureTile:I

    .line 36
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/stickycoding/rokon/DrawableObject;->lineWidth:F

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stickycoding/rokon/DrawableObject;->fill:Z

    .line 38
    iput v3, p0, Lcom/stickycoding/rokon/DrawableObject;->borderRed:F

    iput v3, p0, Lcom/stickycoding/rokon/DrawableObject;->borderGreen:F

    iput v3, p0, Lcom/stickycoding/rokon/DrawableObject;->borderBlue:F

    iput v1, p0, Lcom/stickycoding/rokon/DrawableObject;->borderAlpha:F

    .line 409
    iput-boolean v2, p0, Lcom/stickycoding/rokon/DrawableObject;->isOnScreen:Z

    .line 410
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/stickycoding/rokon/DrawableObject;->lastOnScreen:J

    .line 212
    invoke-virtual {p0, p5}, Lcom/stickycoding/rokon/DrawableObject;->setTexture(Lcom/stickycoding/rokon/Texture;)V

    .line 213
    invoke-virtual {p0}, Lcom/stickycoding/rokon/DrawableObject;->doBuffer()V

    .line 214
    return-void
.end method


# virtual methods
.method public animate(IIJ)V
    .locals 7
    .parameter "startTile"
    .parameter "endTile"
    .parameter "frameTime"

    .prologue
    .line 588
    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/stickycoding/rokon/DrawableObject;->animate(IIJIZ)V

    .line 589
    return-void
.end method

.method public animate(IIJIZ)V
    .locals 3
    .parameter "startTile"
    .parameter "endTile"
    .parameter "frameTime"
    .parameter "loops"
    .parameter "returnToStart"

    .prologue
    const/4 v2, 0x0

    .line 568
    iput p1, p0, Lcom/stickycoding/rokon/DrawableObject;->animationStartTile:I

    .line 569
    iput p2, p0, Lcom/stickycoding/rokon/DrawableObject;->animationEndTile:I

    .line 570
    iput-wide p3, p0, Lcom/stickycoding/rokon/DrawableObject;->animationFrameTicks:J

    .line 571
    iput p5, p0, Lcom/stickycoding/rokon/DrawableObject;->animationLoops:I

    .line 572
    sget-wide v0, Lcom/stickycoding/rokon/Time;->loopTicks:J

    iput-wide v0, p0, Lcom/stickycoding/rokon/DrawableObject;->animationLastTicks:J

    .line 573
    iput p1, p0, Lcom/stickycoding/rokon/DrawableObject;->textureTile:I

    .line 574
    iput-boolean v2, p0, Lcom/stickycoding/rokon/DrawableObject;->hasCustomAnimation:Z

    .line 575
    iput-boolean p6, p0, Lcom/stickycoding/rokon/DrawableObject;->animationReturnToStart:Z

    .line 576
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stickycoding/rokon/DrawableObject;->animated:Z

    .line 577
    iput-boolean v2, p0, Lcom/stickycoding/rokon/DrawableObject;->freezeAnimation:Z

    .line 578
    return-void
.end method

.method public animate([IJ)V
    .locals 6
    .parameter "animationTiles"
    .parameter "frameTime"

    .prologue
    .line 627
    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/stickycoding/rokon/DrawableObject;->animate([IJIZ)V

    .line 628
    return-void
.end method

.method public animate([IJIZ)V
    .locals 4
    .parameter "animationTiles"
    .parameter "frameTime"
    .parameter "loops"
    .parameter "returnToStart"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 600
    iput-boolean v3, p0, Lcom/stickycoding/rokon/DrawableObject;->hasCustomAnimation:Z

    .line 601
    aget v0, p1, v2

    iput v0, p0, Lcom/stickycoding/rokon/DrawableObject;->textureTile:I

    .line 602
    iput-boolean p5, p0, Lcom/stickycoding/rokon/DrawableObject;->animationReturnToStart:Z

    .line 603
    iput p4, p0, Lcom/stickycoding/rokon/DrawableObject;->animationLoops:I

    .line 604
    sget-wide v0, Lcom/stickycoding/rokon/Time;->loopTicks:J

    iput-wide v0, p0, Lcom/stickycoding/rokon/DrawableObject;->animationLastTicks:J

    .line 605
    iput-wide p2, p0, Lcom/stickycoding/rokon/DrawableObject;->animationFrameTicks:J

    .line 606
    iput-object p1, p0, Lcom/stickycoding/rokon/DrawableObject;->customAnimationSequence:[I

    .line 607
    const/4 v0, -0x1

    iput v0, p0, Lcom/stickycoding/rokon/DrawableObject;->animationCustomPosition:I

    .line 608
    iput-boolean v3, p0, Lcom/stickycoding/rokon/DrawableObject;->animated:Z

    .line 609
    iput-boolean v2, p0, Lcom/stickycoding/rokon/DrawableObject;->freezeAnimation:Z

    .line 610
    return-void
.end method

.method protected doBuffer()V
    .locals 1

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/stickycoding/rokon/DrawableObject;->isVBO()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    sget-object v0, Lcom/stickycoding/rokon/Rokon;->triangleStripBoxBuffer:Lcom/stickycoding/rokon/BufferObject;

    iput-object v0, p0, Lcom/stickycoding/rokon/DrawableObject;->buffer:Lcom/stickycoding/rokon/BufferObject;

    .line 222
    :cond_0
    return-void
.end method

.method public fade(FFII)V
    .locals 3
    .parameter "startAlpha"
    .parameter "alpha"
    .parameter "time"
    .parameter "movementType"

    .prologue
    const/4 v2, 0x1

    .line 176
    cmpl-float v0, p2, p1

    if-nez v0, :cond_0

    .line 186
    :goto_0
    return-void

    .line 177
    :cond_0
    iput p1, p0, Lcom/stickycoding/rokon/DrawableObject;->alpha:F

    .line 178
    iput p4, p0, Lcom/stickycoding/rokon/DrawableObject;->fadeType:I

    .line 179
    iput-boolean v2, p0, Lcom/stickycoding/rokon/DrawableObject;->isFading:Z

    .line 180
    iput p3, p0, Lcom/stickycoding/rokon/DrawableObject;->fadeTime:I

    .line 181
    sget-wide v0, Lcom/stickycoding/rokon/Time;->loopTicks:J

    iput-wide v0, p0, Lcom/stickycoding/rokon/DrawableObject;->fadeStartTime:J

    .line 182
    iput p2, p0, Lcom/stickycoding/rokon/DrawableObject;->fadeTo:F

    .line 183
    iget v0, p0, Lcom/stickycoding/rokon/DrawableObject;->alpha:F

    iput v0, p0, Lcom/stickycoding/rokon/DrawableObject;->fadeStart:F

    .line 184
    cmpl-float v0, p2, p1

    if-lez v0, :cond_1

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/stickycoding/rokon/DrawableObject;->fadeUp:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public fade(FI)V
    .locals 2
    .parameter "alpha"
    .parameter "time"

    .prologue
    .line 164
    iget v0, p0, Lcom/stickycoding/rokon/DrawableObject;->alpha:F

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/stickycoding/rokon/DrawableObject;->fade(FFII)V

    .line 165
    return-void
.end method

.method public fade(FII)V
    .locals 1
    .parameter "alpha"
    .parameter "time"
    .parameter "movementType"

    .prologue
    .line 154
    iget v0, p0, Lcom/stickycoding/rokon/DrawableObject;->alpha:F

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/stickycoding/rokon/DrawableObject;->fade(FFII)V

    .line 155
    return-void
.end method

.method public forceDrawType(I)V
    .locals 1
    .parameter "drawType"

    .prologue
    .line 269
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 270
    invoke-static {}, Lcom/stickycoding/rokon/device/Graphics;->isSupportsVBO()Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    const-string v0, "Tried forcing DrawableObject to VBO, device does not support it"

    invoke-static {v0}, Lcom/stickycoding/rokon/Debug;->warning(Ljava/lang/String;)V

    .line 272
    const/4 p1, 0x2

    .line 275
    :cond_0
    iput p1, p0, Lcom/stickycoding/rokon/DrawableObject;->forceDrawType:I

    .line 276
    return-void
.end method

.method public freezeAnimation()V
    .locals 1

    .prologue
    .line 790
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stickycoding/rokon/DrawableObject;->freezeAnimation:Z

    .line 791
    return-void
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Lcom/stickycoding/rokon/DrawableObject;->alpha:F

    return v0
.end method

.method public getBlendFunction()Lcom/stickycoding/rokon/BlendFunction;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/stickycoding/rokon/DrawableObject;->blendFunction:Lcom/stickycoding/rokon/BlendFunction;

    return-object v0
.end method

.method public getBlue()F
    .locals 1

    .prologue
    .line 323
    iget v0, p0, Lcom/stickycoding/rokon/DrawableObject;->blue:F

    return v0
.end method

.method public getColourBuffer()Lcom/stickycoding/rokon/ColourBuffer;
    .locals 1

    .prologue
    .line 770
    iget-object v0, p0, Lcom/stickycoding/rokon/DrawableObject;->colourBuffer:Lcom/stickycoding/rokon/ColourBuffer;

    return-object v0
.end method

.method public getGreen()F
    .locals 1

    .prologue
    .line 307
    iget v0, p0, Lcom/stickycoding/rokon/DrawableObject;->green:F

    return v0
.end method

.method public getLineWidth()F
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/stickycoding/rokon/DrawableObject;->lineWidth:F

    return v0
.end method

.method public getParentLayer()Lcom/stickycoding/rokon/Layer;
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lcom/stickycoding/rokon/DrawableObject;->parentLayer:Lcom/stickycoding/rokon/Layer;

    return-object v0
.end method

.method public getRed()F
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lcom/stickycoding/rokon/DrawableObject;->red:F

    return v0
.end method

.method public getTexture()Lcom/stickycoding/rokon/Texture;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/stickycoding/rokon/DrawableObject;->texture:Lcom/stickycoding/rokon/Texture;

    return-object v0
.end method

.method public getTextureTile()I
    .locals 1

    .prologue
    .line 485
    iget v0, p0, Lcom/stickycoding/rokon/DrawableObject;->textureTile:I

    return v0
.end method

.method public getTextureTileColumn()I
    .locals 2

    .prologue
    .line 513
    iget v0, p0, Lcom/stickycoding/rokon/DrawableObject;->textureTile:I

    iget-object v1, p0, Lcom/stickycoding/rokon/DrawableObject;->texture:Lcom/stickycoding/rokon/Texture;

    iget v1, v1, Lcom/stickycoding/rokon/Texture;->columns:I

    rem-int/2addr v0, v1

    return v0
.end method

.method public getTextureTileRow()I
    .locals 3

    .prologue
    .line 503
    iget v1, p0, Lcom/stickycoding/rokon/DrawableObject;->textureTile:I

    iget-object v2, p0, Lcom/stickycoding/rokon/DrawableObject;->texture:Lcom/stickycoding/rokon/Texture;

    iget v2, v2, Lcom/stickycoding/rokon/Texture;->columns:I

    rem-int/2addr v1, v2

    int-to-float v0, v1

    .line 504
    .local v0, col:F
    iget v1, p0, Lcom/stickycoding/rokon/DrawableObject;->textureTile:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iget-object v2, p0, Lcom/stickycoding/rokon/DrawableObject;->texture:Lcom/stickycoding/rokon/Texture;

    iget v2, v2, Lcom/stickycoding/rokon/Texture;->columns:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public getZ()I
    .locals 1

    .prologue
    .line 719
    iget v0, p0, Lcom/stickycoding/rokon/DrawableObject;->z:I

    return v0
.end method

.method public hasColourBuffer()Z
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Lcom/stickycoding/rokon/DrawableObject;->colourBuffer:Lcom/stickycoding/rokon/ColourBuffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stickycoding/rokon/DrawableObject;->invisible:Z

    .line 128
    return-void
.end method

.method public isAlive()Z
    .locals 1

    .prologue
    .line 550
    iget-boolean v0, p0, Lcom/stickycoding/rokon/DrawableObject;->killNextUpdate:Z

    if-eqz v0, :cond_0

    .line 551
    invoke-virtual {p0}, Lcom/stickycoding/rokon/DrawableObject;->onRemove()V

    .line 552
    const/4 v0, 0x0

    .line 554
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isAnimation()Z
    .locals 1

    .prologue
    .line 613
    iget-boolean v0, p0, Lcom/stickycoding/rokon/DrawableObject;->animated:Z

    return v0
.end method

.method public isFading()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/stickycoding/rokon/DrawableObject;->isFading:Z

    return v0
.end method

.method public isFreezeAnimation()Z
    .locals 1

    .prologue
    .line 617
    iget-boolean v0, p0, Lcom/stickycoding/rokon/DrawableObject;->freezeAnimation:Z

    return v0
.end method

.method public isOnScreen()Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/high16 v7, 0x4000

    .line 418
    sget-wide v3, Lcom/stickycoding/rokon/Time;->drawTicks:J

    iget-wide v5, p0, Lcom/stickycoding/rokon/DrawableObject;->lastOnScreen:J

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    iget-boolean v3, p0, Lcom/stickycoding/rokon/DrawableObject;->isOnScreen:Z

    .line 456
    :goto_0
    return v3

    .line 419
    :cond_0
    sget-wide v3, Lcom/stickycoding/rokon/Time;->drawTicks:J

    iput-wide v3, p0, Lcom/stickycoding/rokon/DrawableObject;->lastOnScreen:J

    .line 420
    iget-boolean v3, p0, Lcom/stickycoding/rokon/DrawableObject;->invisible:Z

    if-eqz v3, :cond_1

    .line 421
    iput-boolean v8, p0, Lcom/stickycoding/rokon/DrawableObject;->isOnScreen:Z

    move v3, v8

    .line 422
    goto :goto_0

    .line 424
    :cond_1
    iget v3, p0, Lcom/stickycoding/rokon/DrawableObject;->width:F

    iget v4, p0, Lcom/stickycoding/rokon/DrawableObject;->height:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    iget v3, p0, Lcom/stickycoding/rokon/DrawableObject;->width:F

    move v0, v3

    .line 425
    .local v0, maxSize:F
    :goto_1
    iget-object v3, p0, Lcom/stickycoding/rokon/DrawableObject;->parentLayer:Lcom/stickycoding/rokon/Layer;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/stickycoding/rokon/DrawableObject;->parentScene:Lcom/stickycoding/rokon/Scene;

    if-nez v3, :cond_4

    .line 426
    :cond_2
    iput-boolean v8, p0, Lcom/stickycoding/rokon/DrawableObject;->isOnScreen:Z

    move v3, v8

    .line 427
    goto :goto_0

    .line 424
    .end local v0           #maxSize:F
    :cond_3
    iget v3, p0, Lcom/stickycoding/rokon/DrawableObject;->height:F

    move v0, v3

    goto :goto_1

    .line 429
    .restart local v0       #maxSize:F
    :cond_4
    iget-object v3, p0, Lcom/stickycoding/rokon/DrawableObject;->parentLayer:Lcom/stickycoding/rokon/Layer;

    iget-boolean v3, v3, Lcom/stickycoding/rokon/Layer;->ignoreWindow:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/stickycoding/rokon/DrawableObject;->parentScene:Lcom/stickycoding/rokon/Scene;

    iget-object v3, v3, Lcom/stickycoding/rokon/Scene;->window:Lcom/stickycoding/rokon/Window;

    if-nez v3, :cond_7

    .line 430
    :cond_5
    invoke-virtual {p0}, Lcom/stickycoding/rokon/DrawableObject;->getX()F

    move-result v3

    div-float v4, v0, v7

    sub-float/2addr v3, v4

    sget v4, Lcom/stickycoding/rokon/RokonActivity;->gameWidth:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6

    invoke-virtual {p0}, Lcom/stickycoding/rokon/DrawableObject;->getX()F

    move-result v3

    add-float/2addr v3, v0

    div-float v4, v0, v7

    add-float/2addr v3, v4

    cmpl-float v3, v3, v9

    if-lez v3, :cond_6

    invoke-virtual {p0}, Lcom/stickycoding/rokon/DrawableObject;->getY()F

    move-result v3

    div-float v4, v0, v7

    sub-float/2addr v3, v4

    sget v4, Lcom/stickycoding/rokon/RokonActivity;->gameHeight:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6

    invoke-virtual {p0}, Lcom/stickycoding/rokon/DrawableObject;->getY()F

    move-result v3

    add-float/2addr v3, v0

    div-float v4, v0, v7

    add-float/2addr v3, v4

    cmpl-float v3, v3, v9

    if-lez v3, :cond_6

    .line 431
    iput-boolean v10, p0, Lcom/stickycoding/rokon/DrawableObject;->isOnScreen:Z

    .line 456
    :cond_6
    :goto_2
    iget-boolean v3, p0, Lcom/stickycoding/rokon/DrawableObject;->isOnScreen:Z

    goto :goto_0

    .line 434
    :cond_7
    const/4 v2, 0x0

    .line 435
    .local v2, validY:Z
    const/4 v1, 0x0

    .line 436
    .local v1, validX:Z
    iget-object v3, p0, Lcom/stickycoding/rokon/DrawableObject;->parentScene:Lcom/stickycoding/rokon/Scene;

    iget-object v3, v3, Lcom/stickycoding/rokon/Scene;->window:Lcom/stickycoding/rokon/Window;

    iget v3, v3, Lcom/stickycoding/rokon/Window;->height:F

    cmpg-float v3, v3, v9

    if-gez v3, :cond_a

    .line 437
    invoke-virtual {p0}, Lcom/stickycoding/rokon/DrawableObject;->getY()F

    move-result v3

    div-float v4, v0, v7

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/stickycoding/rokon/DrawableObject;->parentScene:Lcom/stickycoding/rokon/Scene;

    iget-object v4, v4, Lcom/stickycoding/rokon/Scene;->window:Lcom/stickycoding/rokon/Window;

    invoke-virtual {v4}, Lcom/stickycoding/rokon/Window;->getY()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_8

    invoke-virtual {p0}, Lcom/stickycoding/rokon/DrawableObject;->getY()F

    move-result v3

    add-float/2addr v3, v0

    div-float v4, v0, v7

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/stickycoding/rokon/DrawableObject;->parentScene:Lcom/stickycoding/rokon/Scene;

    iget-object v4, v4, Lcom/stickycoding/rokon/Scene;->window:Lcom/stickycoding/rokon/Window;

    iget v4, v4, Lcom/stickycoding/rokon/Window;->height:F

    iget-object v5, p0, Lcom/stickycoding/rokon/DrawableObject;->parentScene:Lcom/stickycoding/rokon/Scene;

    iget-object v5, v5, Lcom/stickycoding/rokon/Scene;->window:Lcom/stickycoding/rokon/Window;

    invoke-virtual {v5}, Lcom/stickycoding/rokon/Window;->getY()F

    move-result v5

    add-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_8

    .line 438
    const/4 v2, 0x1

    .line 445
    :cond_8
    :goto_3
    iget-object v3, p0, Lcom/stickycoding/rokon/DrawableObject;->parentScene:Lcom/stickycoding/rokon/Scene;

    iget-object v3, v3, Lcom/stickycoding/rokon/Scene;->window:Lcom/stickycoding/rokon/Window;

    iget v3, v3, Lcom/stickycoding/rokon/Window;->width:F

    cmpg-float v3, v3, v9

    if-gez v3, :cond_b

    .line 446
    invoke-virtual {p0}, Lcom/stickycoding/rokon/DrawableObject;->getX()F

    move-result v3

    div-float v4, v0, v7

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/stickycoding/rokon/DrawableObject;->parentScene:Lcom/stickycoding/rokon/Scene;

    iget-object v4, v4, Lcom/stickycoding/rokon/Scene;->window:Lcom/stickycoding/rokon/Window;

    invoke-virtual {v4}, Lcom/stickycoding/rokon/Window;->getX()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_9

    invoke-virtual {p0}, Lcom/stickycoding/rokon/DrawableObject;->getX()F

    move-result v3

    add-float/2addr v3, v0

    div-float v4, v0, v7

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/stickycoding/rokon/DrawableObject;->parentScene:Lcom/stickycoding/rokon/Scene;

    iget-object v4, v4, Lcom/stickycoding/rokon/Scene;->window:Lcom/stickycoding/rokon/Window;

    iget v4, v4, Lcom/stickycoding/rokon/Window;->width:F

    iget-object v5, p0, Lcom/stickycoding/rokon/DrawableObject;->parentScene:Lcom/stickycoding/rokon/Scene;

    iget-object v5, v5, Lcom/stickycoding/rokon/Scene;->window:Lcom/stickycoding/rokon/Window;

    invoke-virtual {v5}, Lcom/stickycoding/rokon/Window;->getX()F

    move-result v5

    add-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_9

    .line 447
    const/4 v1, 0x1

    .line 454
    :cond_9
    :goto_4
    if-eqz v1, :cond_c

    if-eqz v2, :cond_c

    move v3, v10

    :goto_5
    iput-boolean v3, p0, Lcom/stickycoding/rokon/DrawableObject;->isOnScreen:Z

    goto :goto_2

    .line 441
    :cond_a
    invoke-virtual {p0}, Lcom/stickycoding/rokon/DrawableObject;->getY()F

    move-result v3

    div-float v4, v0, v7

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/stickycoding/rokon/DrawableObject;->parentScene:Lcom/stickycoding/rokon/Scene;

    iget-object v4, v4, Lcom/stickycoding/rokon/Scene;->window:Lcom/stickycoding/rokon/Window;

    iget v4, v4, Lcom/stickycoding/rokon/Window;->height:F

    iget-object v5, p0, Lcom/stickycoding/rokon/DrawableObject;->parentScene:Lcom/stickycoding/rokon/Scene;

    iget-object v5, v5, Lcom/stickycoding/rokon/Scene;->window:Lcom/stickycoding/rokon/Window;

    invoke-virtual {v5}, Lcom/stickycoding/rokon/Window;->getY()F

    move-result v5

    add-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_8

    invoke-virtual {p0}, Lcom/stickycoding/rokon/DrawableObject;->getY()F

    move-result v3

    add-float/2addr v3, v0

    div-float v4, v0, v7

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/stickycoding/rokon/DrawableObject;->parentScene:Lcom/stickycoding/rokon/Scene;

    iget-object v4, v4, Lcom/stickycoding/rokon/Scene;->window:Lcom/stickycoding/rokon/Window;

    invoke-virtual {v4}, Lcom/stickycoding/rokon/Window;->getY()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_8

    .line 442
    const/4 v2, 0x1

    goto :goto_3

    .line 450
    :cond_b
    invoke-virtual {p0}, Lcom/stickycoding/rokon/DrawableObject;->getX()F

    move-result v3

    div-float v4, v0, v7

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/stickycoding/rokon/DrawableObject;->parentScene:Lcom/stickycoding/rokon/Scene;

    iget-object v4, v4, Lcom/stickycoding/rokon/Scene;->window:Lcom/stickycoding/rokon/Window;

    invoke-virtual {v4}, Lcom/stickycoding/rokon/Window;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/stickycoding/rokon/DrawableObject;->parentScene:Lcom/stickycoding/rokon/Scene;

    iget-object v5, v5, Lcom/stickycoding/rokon/Scene;->window:Lcom/stickycoding/rokon/Window;

    iget v5, v5, Lcom/stickycoding/rokon/Window;->width:F

    add-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_9

    invoke-virtual {p0}, Lcom/stickycoding/rokon/DrawableObject;->getX()F

    move-result v3

    add-float/2addr v3, v0

    div-float v4, v0, v7

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/stickycoding/rokon/DrawableObject;->parentScene:Lcom/stickycoding/rokon/Scene;

    iget-object v4, v4, Lcom/stickycoding/rokon/Scene;->window:Lcom/stickycoding/rokon/Window;

    invoke-virtual {v4}, Lcom/stickycoding/rokon/Window;->getX()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_9

    .line 451
    const/4 v1, 0x1

    goto :goto_4

    :cond_c
    move v3, v8

    .line 454
    goto :goto_5
.end method

.method public isTouchable()Z
    .locals 1

    .prologue
    .line 695
    const/4 v0, 0x0

    return v0
.end method

.method public isVBO()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 69
    iget v0, p0, Lcom/stickycoding/rokon/DrawableObject;->forceDrawType:I

    if-eq v0, v1, :cond_0

    sget v0, Lcom/stickycoding/rokon/DrawPriority;->drawPriority:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/stickycoding/rokon/DrawableObject;->invisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public noBorder()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stickycoding/rokon/DrawableObject;->fill:Z

    .line 52
    return-void
.end method

.method public onAdd(Lcom/stickycoding/rokon/Layer;)V
    .locals 1
    .parameter "layer"

    .prologue
    .line 529
    iput-object p1, p0, Lcom/stickycoding/rokon/DrawableObject;->parentLayer:Lcom/stickycoding/rokon/Layer;

    .line 530
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stickycoding/rokon/DrawableObject;->killNextUpdate:Z

    .line 531
    return-void
.end method

.method public onDraw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .parameter "gl"

    .prologue
    const-string v1, "DrawableObject.onDraw"

    .line 371
    iget-boolean v0, p0, Lcom/stickycoding/rokon/DrawableObject;->invisible:Z

    if-eqz v0, :cond_0

    .line 397
    :goto_0
    return-void

    .line 372
    :cond_0
    iget v0, p0, Lcom/stickycoding/rokon/DrawableObject;->forceDrawType:I

    packed-switch v0, :pswitch_data_0

    .line 396
    const-string v0, "DrawableObject.onDraw"

    const-string v0, "Invalid forced draw priority"

    invoke-static {v1, v0}, Lcom/stickycoding/rokon/Debug;->warning(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 374
    :pswitch_0
    sget v0, Lcom/stickycoding/rokon/DrawPriority;->drawPriority:I

    packed-switch v0, :pswitch_data_1

    .line 386
    const-string v0, "DrawableObject.onDraw"

    const-string v0, "Invalid draw priority on DrawableObject"

    invoke-static {v1, v0}, Lcom/stickycoding/rokon/Debug;->warning(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 376
    :pswitch_1
    invoke-static {}, Lcom/stickycoding/rokon/device/Graphics;->isSupportsVBO()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    invoke-virtual {p0, p1}, Lcom/stickycoding/rokon/DrawableObject;->onDrawVBO(Ljavax/microedition/khronos/opengles/GL10;)V

    goto :goto_0

    .line 380
    :cond_1
    invoke-virtual {p0, p1}, Lcom/stickycoding/rokon/DrawableObject;->onDrawNormal(Ljavax/microedition/khronos/opengles/GL10;)V

    goto :goto_0

    .line 383
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/stickycoding/rokon/DrawableObject;->onDrawNormal(Ljavax/microedition/khronos/opengles/GL10;)V

    goto :goto_0

    .line 390
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/stickycoding/rokon/DrawableObject;->onDrawNormal(Ljavax/microedition/khronos/opengles/GL10;)V

    goto :goto_0

    .line 393
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/stickycoding/rokon/DrawableObject;->onDrawVBO(Ljavax/microedition/khronos/opengles/GL10;)V

    goto :goto_0

    .line 372
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 374
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onDrawNormal(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 28
    .parameter "gl"

    .prologue
    .line 402
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/stickycoding/rokon/DrawableObject;->fill:Z

    move v1, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/DrawableObject;->red:F

    move v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/DrawableObject;->green:F

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/DrawableObject;->blue:F

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/DrawableObject;->alpha:F

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/DrawableObject;->blendFunction:Lcom/stickycoding/rokon/BlendFunction;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/DrawableObject;->buffer:Lcom/stickycoding/rokon/BufferObject;

    move-object v7, v0

    const/4 v8, 0x5

    invoke-virtual/range {p0 .. p0}, Lcom/stickycoding/rokon/DrawableObject;->getX()F

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/stickycoding/rokon/DrawableObject;->getY()F

    move-result v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/DrawableObject;->width:F

    move v11, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/DrawableObject;->height:F

    move v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/DrawableObject;->rotation:F

    move v13, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/stickycoding/rokon/DrawableObject;->rotateAboutPoint:Z

    move v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/DrawableObject;->rotationPivotX:F

    move v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/DrawableObject;->rotationPivotY:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/stickycoding/rokon/DrawableObject;->border:Z

    move/from16 v17, v0

    sget-object v18, Lcom/stickycoding/rokon/Rokon;->lineLoopBoxBuffer:Lcom/stickycoding/rokon/BufferObject;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/DrawableObject;->borderRed:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/DrawableObject;->borderGreen:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/DrawableObject;->borderBlue:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/DrawableObject;->borderAlpha:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/DrawableObject;->lineWidth:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/DrawableObject;->texture:Lcom/stickycoding/rokon/Texture;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    const/16 v24, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/DrawableObject;->texture:Lcom/stickycoding/rokon/Texture;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/DrawableObject;->textureTile:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/DrawableObject;->colourBuffer:Lcom/stickycoding/rokon/ColourBuffer;

    move-object/from16 v27, v0

    invoke-static/range {v1 .. v27}, Lcom/stickycoding/rokon/GLHelper;->drawNormal(ZFFFFLcom/stickycoding/rokon/BlendFunction;Lcom/stickycoding/rokon/BufferObject;IFFFFFZFFZLcom/stickycoding/rokon/BufferObject;FFFFFZLcom/stickycoding/rokon/Texture;ILcom/stickycoding/rokon/ColourBuffer;)V

    .line 403
    return-void

    .line 402
    :cond_0
    const/16 v24, 0x0

    goto :goto_0
.end method

.method protected onDrawVBO(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 28
    .parameter "gl"

    .prologue
    .line 406
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/stickycoding/rokon/DrawableObject;->fill:Z

    move v1, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/DrawableObject;->red:F

    move v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/DrawableObject;->green:F

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/DrawableObject;->blue:F

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/DrawableObject;->alpha:F

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/DrawableObject;->blendFunction:Lcom/stickycoding/rokon/BlendFunction;

    move-object v6, v0

    sget-object v7, Lcom/stickycoding/rokon/Rokon;->arrayVBO:Lcom/stickycoding/rokon/vbo/ArrayVBO;

    const/4 v8, 0x5

    invoke-virtual/range {p0 .. p0}, Lcom/stickycoding/rokon/DrawableObject;->getX()F

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/stickycoding/rokon/DrawableObject;->getY()F

    move-result v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/DrawableObject;->width:F

    move v11, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/DrawableObject;->height:F

    move v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/DrawableObject;->rotation:F

    move v13, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/stickycoding/rokon/DrawableObject;->rotateAboutPoint:Z

    move v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/DrawableObject;->rotationPivotX:F

    move v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/DrawableObject;->rotationPivotY:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/stickycoding/rokon/DrawableObject;->border:Z

    move/from16 v17, v0

    sget-object v18, Lcom/stickycoding/rokon/Rokon;->boxArrayVBO:Lcom/stickycoding/rokon/vbo/ArrayVBO;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/DrawableObject;->borderRed:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/DrawableObject;->borderGreen:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/DrawableObject;->borderBlue:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/DrawableObject;->borderAlpha:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/DrawableObject;->lineWidth:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/DrawableObject;->texture:Lcom/stickycoding/rokon/Texture;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    const/16 v24, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/DrawableObject;->texture:Lcom/stickycoding/rokon/Texture;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/DrawableObject;->textureTile:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/DrawableObject;->colourBuffer:Lcom/stickycoding/rokon/ColourBuffer;

    move-object/from16 v27, v0

    invoke-static/range {v1 .. v27}, Lcom/stickycoding/rokon/GLHelper;->drawVBO(ZFFFFLcom/stickycoding/rokon/BlendFunction;Lcom/stickycoding/rokon/vbo/ArrayVBO;IFFFFFZFFZLcom/stickycoding/rokon/vbo/ArrayVBO;FFFFFZLcom/stickycoding/rokon/Texture;ILcom/stickycoding/rokon/ColourBuffer;)V

    .line 407
    return-void

    .line 406
    :cond_0
    const/16 v24, 0x0

    goto :goto_0
.end method

.method public onRemove()V
    .locals 0

    .prologue
    .line 536
    return-void
.end method

.method public onTouch(FFIII)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "action"
    .parameter "pointerCount"
    .parameter "pointerId"

    .prologue
    .line 702
    return-void
.end method

.method public onTouchDown(FFIII)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "action"
    .parameter "pointerCount"
    .parameter "pointerId"

    .prologue
    .line 698
    return-void
.end method

.method public onTouchMove(FFIII)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "action"
    .parameter "pointerCount"
    .parameter "pointerId"

    .prologue
    .line 704
    return-void
.end method

.method public onTouchUp(FFIII)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "action"
    .parameter "pointerCount"
    .parameter "pointerId"

    .prologue
    .line 700
    return-void
.end method

.method public onUpdate()V
    .locals 0

    .prologue
    .line 520
    invoke-super {p0}, Lcom/stickycoding/rokon/BasicGameObject;->onUpdate()V

    .line 521
    invoke-virtual {p0}, Lcom/stickycoding/rokon/DrawableObject;->updateFadeTo()V

    .line 522
    invoke-virtual {p0}, Lcom/stickycoding/rokon/DrawableObject;->updateAnimation()V

    .line 523
    return-void
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 542
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stickycoding/rokon/DrawableObject;->killNextUpdate:Z

    .line 543
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/stickycoding/rokon/DrawableObject;->parentLayer:Lcom/stickycoding/rokon/Layer;

    .line 544
    return-void
.end method

.method public removeColourBuffer()V
    .locals 1

    .prologue
    .line 786
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/stickycoding/rokon/DrawableObject;->colourBuffer:Lcom/stickycoding/rokon/ColourBuffer;

    .line 787
    return-void
.end method

.method public setAlpha(F)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 332
    iput p1, p0, Lcom/stickycoding/rokon/DrawableObject;->alpha:F

    .line 333
    return-void
.end method

.method public setBlendFunction(Lcom/stickycoding/rokon/BlendFunction;)V
    .locals 0
    .parameter "blendFunction"

    .prologue
    .line 251
    iput-object p1, p0, Lcom/stickycoding/rokon/DrawableObject;->blendFunction:Lcom/stickycoding/rokon/BlendFunction;

    .line 252
    return-void
.end method

.method public setBlue(F)V
    .locals 0
    .parameter "blue"

    .prologue
    .line 316
    iput p1, p0, Lcom/stickycoding/rokon/DrawableObject;->blue:F

    .line 317
    return-void
.end method

.method public setBorder(FFFF)V
    .locals 1
    .parameter "red"
    .parameter "green"
    .parameter "blue"
    .parameter "alpha"

    .prologue
    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stickycoding/rokon/DrawableObject;->border:Z

    .line 83
    iput p1, p0, Lcom/stickycoding/rokon/DrawableObject;->borderRed:F

    .line 84
    iput p2, p0, Lcom/stickycoding/rokon/DrawableObject;->borderGreen:F

    .line 85
    iput p3, p0, Lcom/stickycoding/rokon/DrawableObject;->borderBlue:F

    .line 86
    iput p4, p0, Lcom/stickycoding/rokon/DrawableObject;->borderAlpha:F

    .line 87
    return-void
.end method

.method public setBorder(Z)V
    .locals 0
    .parameter "border"

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/stickycoding/rokon/DrawableObject;->border:Z

    .line 121
    return-void
.end method

.method public setColourBuffer(Lcom/stickycoding/rokon/ColourBuffer;)V
    .locals 0
    .parameter "colourBuffer"

    .prologue
    .line 761
    iput-object p1, p0, Lcom/stickycoding/rokon/DrawableObject;->colourBuffer:Lcom/stickycoding/rokon/ColourBuffer;

    .line 762
    return-void
.end method

.method public setGreen(F)V
    .locals 0
    .parameter "green"

    .prologue
    .line 300
    iput p1, p0, Lcom/stickycoding/rokon/DrawableObject;->green:F

    .line 301
    return-void
.end method

.method public setLineWidth(F)V
    .locals 0
    .parameter "lineWidth"

    .prologue
    .line 95
    iput p1, p0, Lcom/stickycoding/rokon/DrawableObject;->lineWidth:F

    .line 96
    return-void
.end method

.method public setRGB(FFF)V
    .locals 0
    .parameter "red"
    .parameter "green"
    .parameter "blue"

    .prologue
    .line 350
    iput p1, p0, Lcom/stickycoding/rokon/DrawableObject;->red:F

    .line 351
    iput p2, p0, Lcom/stickycoding/rokon/DrawableObject;->green:F

    .line 352
    iput p3, p0, Lcom/stickycoding/rokon/DrawableObject;->blue:F

    .line 353
    return-void
.end method

.method public setRGBA(FFFF)V
    .locals 0
    .parameter "red"
    .parameter "green"
    .parameter "blue"
    .parameter "alpha"

    .prologue
    .line 364
    iput p1, p0, Lcom/stickycoding/rokon/DrawableObject;->red:F

    .line 365
    iput p2, p0, Lcom/stickycoding/rokon/DrawableObject;->green:F

    .line 366
    iput p3, p0, Lcom/stickycoding/rokon/DrawableObject;->blue:F

    .line 367
    iput p4, p0, Lcom/stickycoding/rokon/DrawableObject;->alpha:F

    .line 368
    return-void
.end method

.method public setRed(F)V
    .locals 0
    .parameter "red"

    .prologue
    .line 284
    iput p1, p0, Lcom/stickycoding/rokon/DrawableObject;->red:F

    .line 285
    return-void
.end method

.method public setTexture(Lcom/stickycoding/rokon/Texture;)V
    .locals 0
    .parameter "texture"

    .prologue
    .line 230
    iput-object p1, p0, Lcom/stickycoding/rokon/DrawableObject;->texture:Lcom/stickycoding/rokon/Texture;

    .line 231
    return-void
.end method

.method public setTextureTile(I)V
    .locals 0
    .parameter "tileIndex"

    .prologue
    .line 465
    iput p1, p0, Lcom/stickycoding/rokon/DrawableObject;->textureTile:I

    .line 466
    return-void
.end method

.method public setTextureTile(II)V
    .locals 1
    .parameter "column"
    .parameter "row"

    .prologue
    .line 476
    iget-object v0, p0, Lcom/stickycoding/rokon/DrawableObject;->texture:Lcom/stickycoding/rokon/Texture;

    iget v0, v0, Lcom/stickycoding/rokon/Texture;->columns:I

    mul-int/2addr v0, p2

    add-int/2addr v0, p1

    iput v0, p0, Lcom/stickycoding/rokon/DrawableObject;->textureTile:I

    .line 477
    return-void
.end method

.method public setTextureTile(Lcom/stickycoding/rokon/Texture;I)V
    .locals 0
    .parameter "texture"
    .parameter "tileIndex"

    .prologue
    .line 240
    invoke-virtual {p0, p1}, Lcom/stickycoding/rokon/DrawableObject;->setTexture(Lcom/stickycoding/rokon/Texture;)V

    .line 241
    iput p2, p0, Lcom/stickycoding/rokon/DrawableObject;->textureTile:I

    .line 242
    return-void
.end method

.method public setZ(I)V
    .locals 0
    .parameter "z"

    .prologue
    .line 728
    iput p1, p0, Lcom/stickycoding/rokon/DrawableObject;->z:I

    .line 729
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stickycoding/rokon/DrawableObject;->invisible:Z

    .line 135
    return-void
.end method

.method public stopAnimation()V
    .locals 1

    .prologue
    .line 742
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stickycoding/rokon/DrawableObject;->animated:Z

    .line 743
    return-void
.end method

.method public stopAnimation(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 751
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stickycoding/rokon/DrawableObject;->animated:Z

    .line 752
    invoke-virtual {p0, p1}, Lcom/stickycoding/rokon/DrawableObject;->setTextureTile(I)V

    .line 753
    return-void
.end method

.method public stopFade()V
    .locals 1

    .prologue
    .line 735
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stickycoding/rokon/DrawableObject;->isFading:Z

    .line 736
    return-void
.end method

.method public unfreezeAnimation()V
    .locals 1

    .prologue
    .line 794
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stickycoding/rokon/DrawableObject;->freezeAnimation:Z

    .line 795
    return-void
.end method

.method protected updateAnimation()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 631
    iget-boolean v3, p0, Lcom/stickycoding/rokon/DrawableObject;->animated:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/stickycoding/rokon/DrawableObject;->freezeAnimation:Z

    if-eqz v3, :cond_1

    .line 689
    :cond_0
    :goto_0
    return-void

    .line 632
    :cond_1
    sget-wide v3, Lcom/stickycoding/rokon/Time;->loopTicks:J

    iget-wide v5, p0, Lcom/stickycoding/rokon/DrawableObject;->animationLastTicks:J

    sub-long/2addr v3, v5

    iget-wide v5, p0, Lcom/stickycoding/rokon/DrawableObject;->animationFrameTicks:J

    sub-long v1, v3, v5

    .line 633
    .local v1, tickDifference:J
    cmp-long v3, v1, v9

    if-lez v3, :cond_0

    .line 634
    const/4 v0, 0x0

    .line 635
    .local v0, frameSkip:I
    :goto_1
    cmp-long v3, v1, v9

    if-gtz v3, :cond_2

    .line 639
    iget-boolean v3, p0, Lcom/stickycoding/rokon/DrawableObject;->hasCustomAnimation:Z

    if-eqz v3, :cond_9

    .line 640
    :goto_2
    if-gtz v0, :cond_3

    .line 687
    :goto_3
    iget-wide v3, p0, Lcom/stickycoding/rokon/DrawableObject;->animationLastTicks:J

    sub-long/2addr v3, v1

    iput-wide v3, p0, Lcom/stickycoding/rokon/DrawableObject;->animationLastTicks:J

    goto :goto_0

    .line 636
    :cond_2
    iget-wide v3, p0, Lcom/stickycoding/rokon/DrawableObject;->animationFrameTicks:J

    sub-long/2addr v1, v3

    .line 637
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 641
    :cond_3
    iget v3, p0, Lcom/stickycoding/rokon/DrawableObject;->animationCustomPosition:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/stickycoding/rokon/DrawableObject;->animationCustomPosition:I

    .line 642
    iget v3, p0, Lcom/stickycoding/rokon/DrawableObject;->animationCustomPosition:I

    iget-object v4, p0, Lcom/stickycoding/rokon/DrawableObject;->customAnimationSequence:[I

    array-length v4, v4

    if-lt v3, v4, :cond_4

    .line 643
    iput v7, p0, Lcom/stickycoding/rokon/DrawableObject;->animationCustomPosition:I

    .line 644
    iget v3, p0, Lcom/stickycoding/rokon/DrawableObject;->animationLoops:I

    if-lez v3, :cond_4

    .line 645
    iget v3, p0, Lcom/stickycoding/rokon/DrawableObject;->animationLoops:I

    sub-int/2addr v3, v8

    iput v3, p0, Lcom/stickycoding/rokon/DrawableObject;->animationLoops:I

    .line 646
    iget v3, p0, Lcom/stickycoding/rokon/DrawableObject;->animationLoops:I

    if-nez v3, :cond_4

    .line 647
    iget-boolean v3, p0, Lcom/stickycoding/rokon/DrawableObject;->animationReturnToStart:Z

    if-eqz v3, :cond_5

    .line 648
    iget v3, p0, Lcom/stickycoding/rokon/DrawableObject;->animationStartTile:I

    iput v3, p0, Lcom/stickycoding/rokon/DrawableObject;->textureTile:I

    .line 649
    iput-boolean v7, p0, Lcom/stickycoding/rokon/DrawableObject;->animated:Z

    .line 650
    iget-object v3, p0, Lcom/stickycoding/rokon/DrawableObject;->parentScene:Lcom/stickycoding/rokon/Scene;

    invoke-virtual {v3, p0}, Lcom/stickycoding/rokon/Scene;->onAnimationEnd(Lcom/stickycoding/rokon/DrawableObject;)V

    .line 660
    :cond_4
    iget-object v3, p0, Lcom/stickycoding/rokon/DrawableObject;->customAnimationSequence:[I

    iget v4, p0, Lcom/stickycoding/rokon/DrawableObject;->animationCustomPosition:I

    aget v3, v3, v4

    iput v3, p0, Lcom/stickycoding/rokon/DrawableObject;->textureTile:I

    .line 661
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 652
    :cond_5
    iget v3, p0, Lcom/stickycoding/rokon/DrawableObject;->animationCustomPosition:I

    sub-int/2addr v3, v8

    iput v3, p0, Lcom/stickycoding/rokon/DrawableObject;->animationCustomPosition:I

    .line 653
    iput-boolean v7, p0, Lcom/stickycoding/rokon/DrawableObject;->animated:Z

    .line 654
    iget-object v3, p0, Lcom/stickycoding/rokon/DrawableObject;->parentScene:Lcom/stickycoding/rokon/Scene;

    invoke-virtual {v3, p0}, Lcom/stickycoding/rokon/Scene;->onAnimationEnd(Lcom/stickycoding/rokon/DrawableObject;)V

    goto :goto_3

    .line 665
    :cond_6
    iget v3, p0, Lcom/stickycoding/rokon/DrawableObject;->textureTile:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/stickycoding/rokon/DrawableObject;->textureTile:I

    .line 666
    iget v3, p0, Lcom/stickycoding/rokon/DrawableObject;->textureTile:I

    iget v4, p0, Lcom/stickycoding/rokon/DrawableObject;->animationEndTile:I

    if-le v3, v4, :cond_8

    .line 667
    iget v3, p0, Lcom/stickycoding/rokon/DrawableObject;->animationLoops:I

    if-lez v3, :cond_7

    .line 668
    iget v3, p0, Lcom/stickycoding/rokon/DrawableObject;->animationLoops:I

    sub-int/2addr v3, v8

    iput v3, p0, Lcom/stickycoding/rokon/DrawableObject;->animationLoops:I

    .line 669
    iget v3, p0, Lcom/stickycoding/rokon/DrawableObject;->animationLoops:I

    if-nez v3, :cond_7

    .line 670
    iget-boolean v3, p0, Lcom/stickycoding/rokon/DrawableObject;->animationReturnToStart:Z

    if-eqz v3, :cond_a

    .line 671
    iget v3, p0, Lcom/stickycoding/rokon/DrawableObject;->animationStartTile:I

    iput v3, p0, Lcom/stickycoding/rokon/DrawableObject;->textureTile:I

    .line 672
    iput-boolean v7, p0, Lcom/stickycoding/rokon/DrawableObject;->animated:Z

    .line 673
    iget-object v3, p0, Lcom/stickycoding/rokon/DrawableObject;->parentScene:Lcom/stickycoding/rokon/Scene;

    invoke-virtual {v3, p0}, Lcom/stickycoding/rokon/Scene;->onAnimationEnd(Lcom/stickycoding/rokon/DrawableObject;)V

    .line 682
    :cond_7
    iget v3, p0, Lcom/stickycoding/rokon/DrawableObject;->animationStartTile:I

    iput v3, p0, Lcom/stickycoding/rokon/DrawableObject;->textureTile:I

    .line 684
    :cond_8
    add-int/lit8 v0, v0, -0x1

    .line 664
    :cond_9
    if-gtz v0, :cond_6

    goto :goto_3

    .line 675
    :cond_a
    iget v3, p0, Lcom/stickycoding/rokon/DrawableObject;->textureTile:I

    sub-int/2addr v3, v8

    iput v3, p0, Lcom/stickycoding/rokon/DrawableObject;->textureTile:I

    .line 676
    iput-boolean v7, p0, Lcom/stickycoding/rokon/DrawableObject;->animated:Z

    .line 677
    iget-object v3, p0, Lcom/stickycoding/rokon/DrawableObject;->parentScene:Lcom/stickycoding/rokon/Scene;

    invoke-virtual {v3, p0}, Lcom/stickycoding/rokon/Scene;->onAnimationEnd(Lcom/stickycoding/rokon/DrawableObject;)V

    goto/16 :goto_3
.end method

.method protected updateFadeTo()V
    .locals 6

    .prologue
    .line 189
    iget-boolean v2, p0, Lcom/stickycoding/rokon/DrawableObject;->isFading:Z

    if-nez v2, :cond_0

    .line 203
    :goto_0
    return-void

    .line 190
    :cond_0
    sget-wide v2, Lcom/stickycoding/rokon/Time;->loopTicks:J

    iget-wide v4, p0, Lcom/stickycoding/rokon/DrawableObject;->fadeStartTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    iget v3, p0, Lcom/stickycoding/rokon/DrawableObject;->fadeTime:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 191
    .local v1, position:F
    iget v2, p0, Lcom/stickycoding/rokon/DrawableObject;->fadeType:I

    invoke-static {v1, v2}, Lcom/stickycoding/rokon/Movement;->getPosition(FI)F

    move-result v0

    .line 192
    .local v0, factor:F
    const/high16 v2, 0x3f80

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_1

    .line 193
    iget v2, p0, Lcom/stickycoding/rokon/DrawableObject;->fadeTo:F

    iput v2, p0, Lcom/stickycoding/rokon/DrawableObject;->alpha:F

    .line 194
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/stickycoding/rokon/DrawableObject;->isFading:Z

    .line 195
    iget-object v2, p0, Lcom/stickycoding/rokon/DrawableObject;->parentScene:Lcom/stickycoding/rokon/Scene;

    invoke-virtual {v2, p0}, Lcom/stickycoding/rokon/Scene;->onFadeEnd(Lcom/stickycoding/rokon/DrawableObject;)V

    goto :goto_0

    .line 198
    :cond_1
    iget-boolean v2, p0, Lcom/stickycoding/rokon/DrawableObject;->fadeUp:Z

    if-eqz v2, :cond_2

    .line 199
    iget v2, p0, Lcom/stickycoding/rokon/DrawableObject;->fadeStart:F

    iget v3, p0, Lcom/stickycoding/rokon/DrawableObject;->fadeTo:F

    iget v4, p0, Lcom/stickycoding/rokon/DrawableObject;->fadeStart:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/stickycoding/rokon/DrawableObject;->setAlpha(F)V

    goto :goto_0

    .line 201
    :cond_2
    iget v2, p0, Lcom/stickycoding/rokon/DrawableObject;->fadeStart:F

    iget v3, p0, Lcom/stickycoding/rokon/DrawableObject;->fadeStart:F

    iget v4, p0, Lcom/stickycoding/rokon/DrawableObject;->fadeTo:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    sub-float/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/stickycoding/rokon/DrawableObject;->setAlpha(F)V

    goto :goto_0
.end method

.method public useDefaultLineWidth()V
    .locals 1

    .prologue
    .line 111
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/stickycoding/rokon/DrawableObject;->lineWidth:F

    .line 112
    return-void
.end method
