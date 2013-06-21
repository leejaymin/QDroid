.class public Lcom/stickycoding/rokon/GridSprite;
.super Lcom/stickycoding/rokon/Sprite;
.source "GridSprite.java"


# instance fields
.field private indexBuffer:Lcom/stickycoding/rokon/BufferObject;

.field private quadHeight:F

.field private quadWidth:F

.field private quadsAcross:I

.field private quadsDown:I


# direct methods
.method public constructor <init>(IIFFFF)V
    .locals 2
    .parameter "quadsAcross"
    .parameter "quadsDown"
    .parameter "x"
    .parameter "y"
    .parameter "quadWidth"
    .parameter "quadHeight"

    .prologue
    .line 12
    int-to-float v0, p1

    mul-float/2addr v0, p5

    int-to-float v1, p2

    mul-float/2addr v1, p6

    invoke-direct {p0, p3, p4, v0, v1}, Lcom/stickycoding/rokon/Sprite;-><init>(FFFF)V

    .line 13
    iput p5, p0, Lcom/stickycoding/rokon/GridSprite;->quadWidth:F

    .line 14
    iput p6, p0, Lcom/stickycoding/rokon/GridSprite;->quadHeight:F

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/stickycoding/rokon/GridSprite;->setQuads(II)V

    .line 16
    return-void
.end method


# virtual methods
.method protected doBuffer()V
    .locals 7

    .prologue
    .line 26
    iget v4, p0, Lcom/stickycoding/rokon/GridSprite;->quadsAcross:I

    iget v5, p0, Lcom/stickycoding/rokon/GridSprite;->quadsDown:I

    mul-int v1, v4, v5

    .line 27
    .local v1, quadCount:I
    mul-int/lit8 v0, v1, 0x8

    .line 28
    .local v0, indexCount:I
    new-instance v4, Lcom/stickycoding/rokon/BufferObject;

    invoke-direct {v4, v0}, Lcom/stickycoding/rokon/BufferObject;-><init>(I)V

    iput-object v4, p0, Lcom/stickycoding/rokon/GridSprite;->buffer:Lcom/stickycoding/rokon/BufferObject;

    .line 30
    const/4 v2, 0x0

    .local v2, x:I
    :goto_0
    iget v4, p0, Lcom/stickycoding/rokon/GridSprite;->quadsAcross:I

    if-lt v2, v4, :cond_0

    .line 45
    return-void

    .line 31
    :cond_0
    const/4 v3, 0x0

    .local v3, y:I
    :goto_1
    iget v4, p0, Lcom/stickycoding/rokon/GridSprite;->quadsDown:I

    if-lt v3, v4, :cond_1

    .line 30
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 32
    :cond_1
    iget-object v4, p0, Lcom/stickycoding/rokon/GridSprite;->buffer:Lcom/stickycoding/rokon/BufferObject;

    iget-object v4, v4, Lcom/stickycoding/rokon/BufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    int-to-float v5, v2

    iget v6, p0, Lcom/stickycoding/rokon/GridSprite;->quadWidth:F

    mul-float/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 33
    iget-object v4, p0, Lcom/stickycoding/rokon/GridSprite;->buffer:Lcom/stickycoding/rokon/BufferObject;

    iget-object v4, v4, Lcom/stickycoding/rokon/BufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    int-to-float v5, v3

    iget v6, p0, Lcom/stickycoding/rokon/GridSprite;->quadHeight:F

    mul-float/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 35
    iget-object v4, p0, Lcom/stickycoding/rokon/GridSprite;->buffer:Lcom/stickycoding/rokon/BufferObject;

    iget-object v4, v4, Lcom/stickycoding/rokon/BufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v2, 0x1

    int-to-float v5, v5

    iget v6, p0, Lcom/stickycoding/rokon/GridSprite;->quadWidth:F

    mul-float/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 36
    iget-object v4, p0, Lcom/stickycoding/rokon/GridSprite;->buffer:Lcom/stickycoding/rokon/BufferObject;

    iget-object v4, v4, Lcom/stickycoding/rokon/BufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    int-to-float v5, v3

    iget v6, p0, Lcom/stickycoding/rokon/GridSprite;->quadHeight:F

    mul-float/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 38
    iget-object v4, p0, Lcom/stickycoding/rokon/GridSprite;->buffer:Lcom/stickycoding/rokon/BufferObject;

    iget-object v4, v4, Lcom/stickycoding/rokon/BufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    int-to-float v5, v2

    iget v6, p0, Lcom/stickycoding/rokon/GridSprite;->quadWidth:F

    mul-float/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 39
    iget-object v4, p0, Lcom/stickycoding/rokon/GridSprite;->buffer:Lcom/stickycoding/rokon/BufferObject;

    iget-object v4, v4, Lcom/stickycoding/rokon/BufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v3, 0x1

    int-to-float v5, v5

    iget v6, p0, Lcom/stickycoding/rokon/GridSprite;->quadHeight:F

    mul-float/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 41
    iget-object v4, p0, Lcom/stickycoding/rokon/GridSprite;->buffer:Lcom/stickycoding/rokon/BufferObject;

    iget-object v4, v4, Lcom/stickycoding/rokon/BufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v2, 0x1

    int-to-float v5, v5

    iget v6, p0, Lcom/stickycoding/rokon/GridSprite;->quadWidth:F

    mul-float/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 42
    iget-object v4, p0, Lcom/stickycoding/rokon/GridSprite;->buffer:Lcom/stickycoding/rokon/BufferObject;

    iget-object v4, v4, Lcom/stickycoding/rokon/BufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v3, 0x1

    int-to-float v5, v5

    iget v6, p0, Lcom/stickycoding/rokon/GridSprite;->quadHeight:F

    mul-float/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 31
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public getQuadsAcross()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/stickycoding/rokon/GridSprite;->quadsAcross:I

    return v0
.end method

.method public getQuadsDown()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/stickycoding/rokon/GridSprite;->quadsDown:I

    return v0
.end method

.method public onDrawNormal(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 7
    .parameter "gl"

    .prologue
    const/high16 v6, 0x3f80

    const/16 v5, 0x1406

    const/4 v4, 0x0

    const/high16 v3, 0x4000

    const/4 v2, 0x0

    .line 49
    iget-object v0, p0, Lcom/stickycoding/rokon/GridSprite;->blendFunction:Lcom/stickycoding/rokon/BlendFunction;

    if-eqz v0, :cond_3

    .line 50
    iget-object v0, p0, Lcom/stickycoding/rokon/GridSprite;->blendFunction:Lcom/stickycoding/rokon/BlendFunction;

    invoke-static {v0}, Lcom/stickycoding/rokon/GLHelper;->blendMode(Lcom/stickycoding/rokon/BlendFunction;)V

    .line 54
    :goto_0
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 55
    invoke-static {}, Lcom/stickycoding/rokon/GLHelper;->enableVertexArray()V

    .line 56
    invoke-static {v4, v4}, Lcom/stickycoding/rokon/GLHelper;->bindBuffer(IZ)V

    .line 57
    iget v0, p0, Lcom/stickycoding/rokon/GridSprite;->x:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/stickycoding/rokon/GridSprite;->y:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    .line 58
    :cond_0
    iget v0, p0, Lcom/stickycoding/rokon/GridSprite;->x:F

    iget v1, p0, Lcom/stickycoding/rokon/GridSprite;->y:F

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 60
    :cond_1
    iget v0, p0, Lcom/stickycoding/rokon/GridSprite;->rotation:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2

    .line 61
    iget-boolean v0, p0, Lcom/stickycoding/rokon/GridSprite;->rotateAboutPoint:Z

    if-nez v0, :cond_4

    .line 62
    iget v0, p0, Lcom/stickycoding/rokon/GridSprite;->width:F

    div-float/2addr v0, v3

    iget v1, p0, Lcom/stickycoding/rokon/GridSprite;->height:F

    div-float/2addr v1, v3

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 63
    iget v0, p0, Lcom/stickycoding/rokon/GridSprite;->rotation:F

    invoke-interface {p1, v0, v2, v2, v6}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 64
    iget v0, p0, Lcom/stickycoding/rokon/GridSprite;->width:F

    neg-float v0, v0

    div-float/2addr v0, v3

    iget v1, p0, Lcom/stickycoding/rokon/GridSprite;->height:F

    neg-float v1, v1

    div-float/2addr v1, v3

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 71
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/stickycoding/rokon/GridSprite;->texture:Lcom/stickycoding/rokon/Texture;

    if-eqz v0, :cond_6

    .line 72
    invoke-static {}, Lcom/stickycoding/rokon/GLHelper;->enableTextures()V

    .line 73
    invoke-static {}, Lcom/stickycoding/rokon/GLHelper;->enableTexCoordArray()V

    .line 74
    iget-object v0, p0, Lcom/stickycoding/rokon/GridSprite;->texture:Lcom/stickycoding/rokon/Texture;

    invoke-static {v0}, Lcom/stickycoding/rokon/GLHelper;->bindTexture(Lcom/stickycoding/rokon/Texture;)V

    .line 75
    iget v0, p0, Lcom/stickycoding/rokon/GridSprite;->red:F

    iget v1, p0, Lcom/stickycoding/rokon/GridSprite;->green:F

    iget v2, p0, Lcom/stickycoding/rokon/GridSprite;->blue:F

    iget v3, p0, Lcom/stickycoding/rokon/GridSprite;->alpha:F

    invoke-static {v0, v1, v2, v3}, Lcom/stickycoding/rokon/GLHelper;->color4f(FFFF)V

    .line 76
    iget-object v0, p0, Lcom/stickycoding/rokon/GridSprite;->colourBuffer:Lcom/stickycoding/rokon/ColourBuffer;

    if-eqz v0, :cond_5

    .line 77
    invoke-static {}, Lcom/stickycoding/rokon/GLHelper;->enableColourArray()V

    .line 78
    iget-object v0, p0, Lcom/stickycoding/rokon/GridSprite;->colourBuffer:Lcom/stickycoding/rokon/ColourBuffer;

    invoke-static {v0}, Lcom/stickycoding/rokon/GLHelper;->colourPointer(Lcom/stickycoding/rokon/ColourBuffer;)V

    .line 82
    :goto_2
    iget-object v0, p0, Lcom/stickycoding/rokon/GridSprite;->texture:Lcom/stickycoding/rokon/Texture;

    iget-object v0, v0, Lcom/stickycoding/rokon/Texture;->buffer:[Lcom/stickycoding/rokon/BufferObject;

    iget v1, p0, Lcom/stickycoding/rokon/GridSprite;->textureTile:I

    aget-object v0, v0, v1

    invoke-static {v0, v5}, Lcom/stickycoding/rokon/GLHelper;->texCoordPointer(Lcom/stickycoding/rokon/BufferObject;I)V

    .line 83
    iget-object v0, p0, Lcom/stickycoding/rokon/GridSprite;->buffer:Lcom/stickycoding/rokon/BufferObject;

    invoke-static {v0, v5}, Lcom/stickycoding/rokon/GLHelper;->vertexPointer(Lcom/stickycoding/rokon/BufferObject;I)V

    .line 84
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/stickycoding/rokon/GridSprite;->buffer:Lcom/stickycoding/rokon/BufferObject;

    invoke-virtual {v1}, Lcom/stickycoding/rokon/BufferObject;->getSize()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-interface {p1, v0, v4, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 98
    :goto_3
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 99
    return-void

    .line 52
    :cond_3
    sget-object v0, Lcom/stickycoding/rokon/Rokon;->blendFunction:Lcom/stickycoding/rokon/BlendFunction;

    invoke-static {v0}, Lcom/stickycoding/rokon/GLHelper;->blendMode(Lcom/stickycoding/rokon/BlendFunction;)V

    goto/16 :goto_0

    .line 66
    :cond_4
    iget v0, p0, Lcom/stickycoding/rokon/GridSprite;->rotationPivotX:F

    iget v1, p0, Lcom/stickycoding/rokon/GridSprite;->rotationPivotY:F

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 67
    iget v0, p0, Lcom/stickycoding/rokon/GridSprite;->rotation:F

    invoke-interface {p1, v0, v2, v2, v6}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 68
    iget v0, p0, Lcom/stickycoding/rokon/GridSprite;->rotationPivotX:F

    neg-float v0, v0

    iget v1, p0, Lcom/stickycoding/rokon/GridSprite;->rotationPivotY:F

    neg-float v1, v1

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    goto :goto_1

    .line 80
    :cond_5
    invoke-static {}, Lcom/stickycoding/rokon/GLHelper;->disableColourArray()V

    goto :goto_2

    .line 86
    :cond_6
    invoke-static {}, Lcom/stickycoding/rokon/GLHelper;->disableTexCoordArray()V

    .line 87
    invoke-static {}, Lcom/stickycoding/rokon/GLHelper;->disableTextures()V

    .line 88
    iget v0, p0, Lcom/stickycoding/rokon/GridSprite;->red:F

    iget v1, p0, Lcom/stickycoding/rokon/GridSprite;->green:F

    iget v2, p0, Lcom/stickycoding/rokon/GridSprite;->blue:F

    iget v3, p0, Lcom/stickycoding/rokon/GridSprite;->alpha:F

    invoke-static {v0, v1, v2, v3}, Lcom/stickycoding/rokon/GLHelper;->color4f(FFFF)V

    .line 89
    iget-object v0, p0, Lcom/stickycoding/rokon/GridSprite;->colourBuffer:Lcom/stickycoding/rokon/ColourBuffer;

    if-eqz v0, :cond_7

    .line 90
    invoke-static {}, Lcom/stickycoding/rokon/GLHelper;->enableColourArray()V

    .line 91
    iget-object v0, p0, Lcom/stickycoding/rokon/GridSprite;->colourBuffer:Lcom/stickycoding/rokon/ColourBuffer;

    invoke-static {v0}, Lcom/stickycoding/rokon/GLHelper;->colourPointer(Lcom/stickycoding/rokon/ColourBuffer;)V

    .line 95
    :goto_4
    iget-object v0, p0, Lcom/stickycoding/rokon/GridSprite;->buffer:Lcom/stickycoding/rokon/BufferObject;

    invoke-static {v0, v5}, Lcom/stickycoding/rokon/GLHelper;->vertexPointer(Lcom/stickycoding/rokon/BufferObject;I)V

    .line 96
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/stickycoding/rokon/GridSprite;->buffer:Lcom/stickycoding/rokon/BufferObject;

    invoke-virtual {v1}, Lcom/stickycoding/rokon/BufferObject;->getSize()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-interface {p1, v0, v4, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    goto :goto_3

    .line 93
    :cond_7
    invoke-static {}, Lcom/stickycoding/rokon/GLHelper;->disableColourArray()V

    goto :goto_4
.end method

.method public setQuads(II)V
    .locals 0
    .parameter "quadsAcross"
    .parameter "quadsDown"

    .prologue
    .line 19
    iput p1, p0, Lcom/stickycoding/rokon/GridSprite;->quadsAcross:I

    .line 20
    iput p2, p0, Lcom/stickycoding/rokon/GridSprite;->quadsDown:I

    .line 21
    invoke-virtual {p0}, Lcom/stickycoding/rokon/GridSprite;->doBuffer()V

    .line 22
    return-void
.end method
