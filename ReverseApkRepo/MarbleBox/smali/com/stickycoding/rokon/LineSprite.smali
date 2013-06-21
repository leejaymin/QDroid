.class public Lcom/stickycoding/rokon/LineSprite;
.super Lcom/stickycoding/rokon/Sprite;
.source "LineSprite.java"


# instance fields
.field protected lineBuffer:Lcom/stickycoding/rokon/BufferObject;

.field protected x1:F

.field protected x2:F

.field protected y1:F

.field protected y2:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 1
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    const/high16 v0, 0x3f80

    .line 26
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/stickycoding/rokon/Sprite;-><init>(FFFF)V

    .line 27
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stickycoding/rokon/LineSprite;->setLine(FFFF)V

    .line 28
    return-void
.end method


# virtual methods
.method protected onDrawNormal(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 28
    .parameter "gl"

    .prologue
    .line 84
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/LineSprite;->alpha:F

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/LineSprite;->blendFunction:Lcom/stickycoding/rokon/BlendFunction;

    move-object v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/stickycoding/rokon/LineSprite;->getX()F

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/stickycoding/rokon/LineSprite;->getY()F

    move-result v10

    const/high16 v11, 0x3f80

    const/high16 v12, 0x3f80

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/LineSprite;->lineBuffer:Lcom/stickycoding/rokon/BufferObject;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/LineSprite;->red:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/LineSprite;->green:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/LineSprite;->blue:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/LineSprite;->alpha:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/LineSprite;->lineWidth:F

    move/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-static/range {v1 .. v27}, Lcom/stickycoding/rokon/GLHelper;->drawNormal(ZFFFFLcom/stickycoding/rokon/BlendFunction;Lcom/stickycoding/rokon/BufferObject;IFFFFFZFFZLcom/stickycoding/rokon/BufferObject;FFFFFZLcom/stickycoding/rokon/Texture;ILcom/stickycoding/rokon/ColourBuffer;)V

    .line 85
    return-void
.end method

.method public setLine(FFFF)V
    .locals 4
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/stickycoding/rokon/LineSprite;->setXY(FF)V

    .line 60
    sub-float v0, p3, p1

    sub-float v1, p4, p2

    invoke-virtual {p0, v0, v1}, Lcom/stickycoding/rokon/LineSprite;->setSize(FF)V

    .line 61
    iput p1, p0, Lcom/stickycoding/rokon/LineSprite;->x1:F

    .line 62
    iput p2, p0, Lcom/stickycoding/rokon/LineSprite;->y1:F

    .line 63
    iput p3, p0, Lcom/stickycoding/rokon/LineSprite;->x2:F

    .line 64
    iput p4, p0, Lcom/stickycoding/rokon/LineSprite;->y2:F

    .line 65
    iget-object v0, p0, Lcom/stickycoding/rokon/LineSprite;->lineBuffer:Lcom/stickycoding/rokon/BufferObject;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/stickycoding/rokon/BufferObject;

    invoke-direct {v0, v2}, Lcom/stickycoding/rokon/BufferObject;-><init>(I)V

    iput-object v0, p0, Lcom/stickycoding/rokon/LineSprite;->lineBuffer:Lcom/stickycoding/rokon/BufferObject;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/stickycoding/rokon/LineSprite;->lineBuffer:Lcom/stickycoding/rokon/BufferObject;

    new-array v1, v2, [F

    const/4 v2, 0x0

    aput v3, v1, v2

    const/4 v2, 0x1

    aput v3, v1, v2

    const/4 v2, 0x2

    sub-float v3, p3, p1

    aput v3, v1, v2

    const/4 v2, 0x3

    sub-float v3, p4, p2

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/stickycoding/rokon/BufferObject;->updateRaw([F)V

    .line 69
    return-void
.end method

.method public setLineEnd(FF)V
    .locals 2
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 47
    iget v0, p0, Lcom/stickycoding/rokon/LineSprite;->x1:F

    iget v1, p0, Lcom/stickycoding/rokon/LineSprite;->y1:F

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/stickycoding/rokon/LineSprite;->setLine(FFFF)V

    .line 48
    return-void
.end method

.method public setLineStart(FF)V
    .locals 2
    .parameter "x1"
    .parameter "y1"

    .prologue
    .line 37
    iget v0, p0, Lcom/stickycoding/rokon/LineSprite;->x2:F

    iget v1, p0, Lcom/stickycoding/rokon/LineSprite;->y2:F

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/stickycoding/rokon/LineSprite;->setLine(FFFF)V

    .line 38
    return-void
.end method

.method public setTexture(Lcom/stickycoding/rokon/Texture;)V
    .locals 0
    .parameter "texture"

    .prologue
    .line 77
    return-void
.end method
