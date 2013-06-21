.class public Lcom/stickycoding/rokon/PolygonSprite;
.super Lcom/stickycoding/rokon/Sprite;
.source "PolygonSprite.java"


# instance fields
.field protected polygonBuffer:Lcom/stickycoding/rokon/BufferObject;

.field protected polygonVBO:Lcom/stickycoding/rokon/vbo/ArrayVBO;


# direct methods
.method public constructor <init>(Lcom/stickycoding/rokon/Polygon;FFFF)V
    .locals 0
    .parameter "polygon"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 45
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/stickycoding/rokon/Sprite;-><init>(FFFF)V

    .line 46
    invoke-virtual {p0, p1}, Lcom/stickycoding/rokon/PolygonSprite;->setPolygon(Lcom/stickycoding/rokon/Polygon;)V

    .line 47
    return-void
.end method


# virtual methods
.method public getPolygon()Lcom/stickycoding/rokon/Polygon;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/stickycoding/rokon/PolygonSprite;->polygon:Lcom/stickycoding/rokon/Polygon;

    return-object v0
.end method

.method public getVertex(I)[F
    .locals 10
    .parameter "index"

    .prologue
    const/high16 v8, 0x3f00

    .line 23
    iget v5, p0, Lcom/stickycoding/rokon/PolygonSprite;->rotation:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/stickycoding/rokon/PolygonSprite;->getX()F

    move-result v5

    invoke-virtual {p0}, Lcom/stickycoding/rokon/PolygonSprite;->getWidth()F

    move-result v6

    iget-object v7, p0, Lcom/stickycoding/rokon/PolygonSprite;->polygon:Lcom/stickycoding/rokon/Polygon;

    iget-object v7, v7, Lcom/stickycoding/rokon/Polygon;->vertex:[Lcom/stickycoding/rokon/Point;

    aget-object v7, v7, p1

    invoke-virtual {v7}, Lcom/stickycoding/rokon/Point;->getX()F

    move-result v7

    mul-float/2addr v6, v7

    add-float v3, v5, v6

    .line 25
    .local v3, x:F
    invoke-virtual {p0}, Lcom/stickycoding/rokon/PolygonSprite;->getY()F

    move-result v5

    invoke-virtual {p0}, Lcom/stickycoding/rokon/PolygonSprite;->getHeight()F

    move-result v6

    iget-object v7, p0, Lcom/stickycoding/rokon/PolygonSprite;->polygon:Lcom/stickycoding/rokon/Polygon;

    iget-object v7, v7, Lcom/stickycoding/rokon/Polygon;->vertex:[Lcom/stickycoding/rokon/Point;

    aget-object v7, v7, p1

    invoke-virtual {v7}, Lcom/stickycoding/rokon/Point;->getY()F

    move-result v7

    mul-float/2addr v6, v7

    add-float v4, v5, v6

    .line 26
    .local v4, y:F
    invoke-virtual {p0}, Lcom/stickycoding/rokon/PolygonSprite;->getX()F

    move-result v5

    invoke-virtual {p0}, Lcom/stickycoding/rokon/PolygonSprite;->getWidth()F

    move-result v6

    mul-float/2addr v6, v8

    add-float v1, v5, v6

    .line 27
    .local v1, pivotX:F
    invoke-virtual {p0}, Lcom/stickycoding/rokon/PolygonSprite;->getY()F

    move-result v5

    invoke-virtual {p0}, Lcom/stickycoding/rokon/PolygonSprite;->getHeight()F

    move-result v6

    mul-float/2addr v6, v8

    add-float v2, v5, v6

    .line 28
    .local v2, pivotY:F
    iget v5, p0, Lcom/stickycoding/rokon/PolygonSprite;->rotation:F

    invoke-static {v5, v3, v4, v1, v2}, Lcom/stickycoding/rokon/MathHelper;->rotate(FFFFF)[F

    move-result-object v0

    .local v0, f:[F
    move-object v5, v0

    .line 31
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

    invoke-virtual {p0}, Lcom/stickycoding/rokon/PolygonSprite;->getX()F

    move-result v7

    invoke-virtual {p0}, Lcom/stickycoding/rokon/PolygonSprite;->getWidth()F

    move-result v8

    iget-object v9, p0, Lcom/stickycoding/rokon/PolygonSprite;->polygon:Lcom/stickycoding/rokon/Polygon;

    iget-object v9, v9, Lcom/stickycoding/rokon/Polygon;->vertex:[Lcom/stickycoding/rokon/Point;

    aget-object v9, v9, p1

    invoke-virtual {v9}, Lcom/stickycoding/rokon/Point;->getX()F

    move-result v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    aput v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/stickycoding/rokon/PolygonSprite;->getY()F

    move-result v7

    invoke-virtual {p0}, Lcom/stickycoding/rokon/PolygonSprite;->getHeight()F

    move-result v8

    iget-object v9, p0, Lcom/stickycoding/rokon/PolygonSprite;->polygon:Lcom/stickycoding/rokon/Polygon;

    iget-object v9, v9, Lcom/stickycoding/rokon/Polygon;->vertex:[Lcom/stickycoding/rokon/Point;

    aget-object v9, v9, p1

    invoke-virtual {v9}, Lcom/stickycoding/rokon/Point;->getY()F

    move-result v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    aput v7, v5, v6

    goto :goto_0
.end method

.method protected onDrawNormal(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 28
    .parameter "gl"

    .prologue
    .line 83
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/stickycoding/rokon/PolygonSprite;->fill:Z

    move v1, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/PolygonSprite;->red:F

    move v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/PolygonSprite;->green:F

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/PolygonSprite;->blue:F

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/PolygonSprite;->alpha:F

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/PolygonSprite;->blendFunction:Lcom/stickycoding/rokon/BlendFunction;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/PolygonSprite;->polygonBuffer:Lcom/stickycoding/rokon/BufferObject;

    move-object v7, v0

    const/4 v8, 0x6

    invoke-virtual/range {p0 .. p0}, Lcom/stickycoding/rokon/PolygonSprite;->getX()F

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/stickycoding/rokon/PolygonSprite;->getY()F

    move-result v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/PolygonSprite;->width:F

    move v11, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/PolygonSprite;->height:F

    move v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/PolygonSprite;->rotation:F

    move v13, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/stickycoding/rokon/PolygonSprite;->rotateAboutPoint:Z

    move v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/PolygonSprite;->rotationPivotX:F

    move v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/PolygonSprite;->rotationPivotY:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/stickycoding/rokon/PolygonSprite;->border:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/PolygonSprite;->polygonBuffer:Lcom/stickycoding/rokon/BufferObject;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/PolygonSprite;->borderRed:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/PolygonSprite;->borderGreen:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/PolygonSprite;->borderBlue:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/PolygonSprite;->borderAlpha:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/PolygonSprite;->lineWidth:F

    move/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/PolygonSprite;->colourBuffer:Lcom/stickycoding/rokon/ColourBuffer;

    move-object/from16 v27, v0

    invoke-static/range {v1 .. v27}, Lcom/stickycoding/rokon/GLHelper;->drawNormal(ZFFFFLcom/stickycoding/rokon/BlendFunction;Lcom/stickycoding/rokon/BufferObject;IFFFFFZFFZLcom/stickycoding/rokon/BufferObject;FFFFFZLcom/stickycoding/rokon/Texture;ILcom/stickycoding/rokon/ColourBuffer;)V

    .line 84
    return-void
.end method

.method protected onDrawVBO(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 28
    .parameter "gl"

    .prologue
    .line 91
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/stickycoding/rokon/PolygonSprite;->fill:Z

    move v1, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/PolygonSprite;->red:F

    move v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/PolygonSprite;->green:F

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/PolygonSprite;->blue:F

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/PolygonSprite;->alpha:F

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/PolygonSprite;->blendFunction:Lcom/stickycoding/rokon/BlendFunction;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/PolygonSprite;->polygonVBO:Lcom/stickycoding/rokon/vbo/ArrayVBO;

    move-object v7, v0

    const/4 v8, 0x6

    invoke-virtual/range {p0 .. p0}, Lcom/stickycoding/rokon/PolygonSprite;->getX()F

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/stickycoding/rokon/PolygonSprite;->getY()F

    move-result v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/PolygonSprite;->width:F

    move v11, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/PolygonSprite;->height:F

    move v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/PolygonSprite;->rotation:F

    move v13, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/stickycoding/rokon/PolygonSprite;->rotateAboutPoint:Z

    move v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/PolygonSprite;->rotationPivotX:F

    move v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/PolygonSprite;->rotationPivotY:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/stickycoding/rokon/PolygonSprite;->border:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/PolygonSprite;->polygonVBO:Lcom/stickycoding/rokon/vbo/ArrayVBO;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/PolygonSprite;->borderRed:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/PolygonSprite;->borderGreen:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/PolygonSprite;->borderBlue:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/PolygonSprite;->borderAlpha:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/PolygonSprite;->lineWidth:F

    move/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/PolygonSprite;->colourBuffer:Lcom/stickycoding/rokon/ColourBuffer;

    move-object/from16 v27, v0

    invoke-static/range {v1 .. v27}, Lcom/stickycoding/rokon/GLHelper;->drawVBO(ZFFFFLcom/stickycoding/rokon/BlendFunction;Lcom/stickycoding/rokon/vbo/ArrayVBO;IFFFFFZFFZLcom/stickycoding/rokon/vbo/ArrayVBO;FFFFFZLcom/stickycoding/rokon/Texture;ILcom/stickycoding/rokon/ColourBuffer;)V

    .line 92
    return-void
.end method

.method public setPolygon(Lcom/stickycoding/rokon/Polygon;)V
    .locals 1
    .parameter "polygon"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/stickycoding/rokon/PolygonSprite;->polygon:Lcom/stickycoding/rokon/Polygon;

    .line 56
    invoke-virtual {p1}, Lcom/stickycoding/rokon/Polygon;->getBufferObject()Lcom/stickycoding/rokon/BufferObject;

    move-result-object v0

    iput-object v0, p0, Lcom/stickycoding/rokon/PolygonSprite;->polygonBuffer:Lcom/stickycoding/rokon/BufferObject;

    .line 57
    invoke-virtual {p0}, Lcom/stickycoding/rokon/PolygonSprite;->isVBO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p1}, Lcom/stickycoding/rokon/Polygon;->getVBO()Lcom/stickycoding/rokon/vbo/ArrayVBO;

    move-result-object v0

    iput-object v0, p0, Lcom/stickycoding/rokon/PolygonSprite;->polygonVBO:Lcom/stickycoding/rokon/vbo/ArrayVBO;

    .line 60
    :cond_0
    return-void
.end method

.method public setTexture(Lcom/stickycoding/rokon/Texture;)V
    .locals 0
    .parameter "texture"

    .prologue
    .line 68
    return-void
.end method
