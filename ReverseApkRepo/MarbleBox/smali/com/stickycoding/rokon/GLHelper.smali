.class public Lcom/stickycoding/rokon/GLHelper;
.super Ljava/lang/Object;
.source "GLHelper.java"


# static fields
.field private static arrayBuffer:I

.field private static dstBlendMode:I

.field private static elementBuffer:I

.field private static gl:Ljavax/microedition/khronos/opengles/GL10;

.field private static glColor4fAlpha:F

.field private static glColor4fBlue:F

.field private static glColor4fGreen:F

.field private static glColor4fRed:F

.field private static glColorArray:Z

.field private static glTexCoordArray:Z

.field private static glTexture2D:Z

.field private static glVertexArray:Z

.field private static lastColourBufferObject:Lcom/stickycoding/rokon/ColourBuffer;

.field private static lastTexCoordPointerBuffer:Lcom/stickycoding/rokon/BufferObject;

.field private static lastVertexPointerBuffer:Lcom/stickycoding/rokon/BufferObject;

.field private static lineWidth:F

.field private static srcBlendMode:I

.field private static textureIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/high16 v1, -0x4080

    const/4 v0, -0x1

    .line 23
    sput v0, Lcom/stickycoding/rokon/GLHelper;->textureIndex:I

    sput v0, Lcom/stickycoding/rokon/GLHelper;->arrayBuffer:I

    sput v0, Lcom/stickycoding/rokon/GLHelper;->elementBuffer:I

    sput v0, Lcom/stickycoding/rokon/GLHelper;->srcBlendMode:I

    sput v0, Lcom/stickycoding/rokon/GLHelper;->dstBlendMode:I

    .line 24
    sput v1, Lcom/stickycoding/rokon/GLHelper;->glColor4fRed:F

    sput v1, Lcom/stickycoding/rokon/GLHelper;->glColor4fGreen:F

    sput v1, Lcom/stickycoding/rokon/GLHelper;->glColor4fBlue:F

    sput v1, Lcom/stickycoding/rokon/GLHelper;->glColor4fAlpha:F

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindBuffer(IZ)V
    .locals 2
    .parameter "bufferIndex"
    .parameter "force"

    .prologue
    .line 155
    sget v0, Lcom/stickycoding/rokon/GLHelper;->arrayBuffer:I

    if-ne p0, v0, :cond_0

    if-eqz p1, :cond_1

    .line 156
    :cond_0
    sget-object v0, Lcom/stickycoding/rokon/GLHelper;->gl:Ljavax/microedition/khronos/opengles/GL10;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    const v1, 0x8892

    invoke-interface {v0, v1, p0}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 157
    sput p0, Lcom/stickycoding/rokon/GLHelper;->arrayBuffer:I

    .line 159
    :cond_1
    return-void
.end method

.method public static bindElementBuffer(I)V
    .locals 2
    .parameter "elementBufferIndex"

    .prologue
    .line 167
    sget v0, Lcom/stickycoding/rokon/GLHelper;->elementBuffer:I

    if-eq p0, v0, :cond_0

    .line 168
    sget-object v0, Lcom/stickycoding/rokon/GLHelper;->gl:Ljavax/microedition/khronos/opengles/GL10;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    const v1, 0x8893

    invoke-interface {v0, v1, p0}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 169
    sput p0, Lcom/stickycoding/rokon/GLHelper;->elementBuffer:I

    .line 171
    :cond_0
    return-void
.end method

.method public static bindTexture(I)V
    .locals 2
    .parameter "textureIndex"

    .prologue
    .line 179
    sget v0, Lcom/stickycoding/rokon/GLHelper;->textureIndex:I

    if-eq v0, p0, :cond_0

    .line 180
    sget-object v0, Lcom/stickycoding/rokon/GLHelper;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xde1

    invoke-interface {v0, v1, p0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 181
    sput p0, Lcom/stickycoding/rokon/GLHelper;->textureIndex:I

    .line 183
    :cond_0
    return-void
.end method

.method public static bindTexture(Lcom/stickycoding/rokon/Texture;)V
    .locals 1
    .parameter "texture"

    .prologue
    .line 191
    invoke-static {p0}, Lcom/stickycoding/rokon/GLHelper;->checkTextureValid(Lcom/stickycoding/rokon/Texture;)V

    .line 192
    invoke-virtual {p0}, Lcom/stickycoding/rokon/Texture;->getTextureIndex()I

    move-result v0

    invoke-static {v0}, Lcom/stickycoding/rokon/GLHelper;->bindTexture(I)V

    .line 193
    return-void
.end method

.method public static blendMode(II)V
    .locals 1
    .parameter "srcBlendMode"
    .parameter "dstBlendMode"

    .prologue
    .line 226
    sget v0, Lcom/stickycoding/rokon/GLHelper;->srcBlendMode:I

    if-ne v0, p0, :cond_0

    sget v0, Lcom/stickycoding/rokon/GLHelper;->dstBlendMode:I

    if-eq v0, p1, :cond_1

    .line 227
    :cond_0
    sget-object v0, Lcom/stickycoding/rokon/GLHelper;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 228
    sput p0, Lcom/stickycoding/rokon/GLHelper;->srcBlendMode:I

    .line 229
    sput p1, Lcom/stickycoding/rokon/GLHelper;->dstBlendMode:I

    .line 231
    :cond_1
    return-void
.end method

.method public static blendMode(Lcom/stickycoding/rokon/BlendFunction;)V
    .locals 3
    .parameter "blendFunction"

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/stickycoding/rokon/BlendFunction;->getSrc()I

    move-result v0

    sget v1, Lcom/stickycoding/rokon/GLHelper;->srcBlendMode:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/stickycoding/rokon/BlendFunction;->getDst()I

    move-result v0

    sget v1, Lcom/stickycoding/rokon/GLHelper;->dstBlendMode:I

    if-eq v0, v1, :cond_1

    .line 240
    :cond_0
    sget-object v0, Lcom/stickycoding/rokon/GLHelper;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {p0}, Lcom/stickycoding/rokon/BlendFunction;->getSrc()I

    move-result v1

    invoke-virtual {p0}, Lcom/stickycoding/rokon/BlendFunction;->getDst()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 241
    invoke-virtual {p0}, Lcom/stickycoding/rokon/BlendFunction;->getSrc()I

    move-result v0

    sput v0, Lcom/stickycoding/rokon/GLHelper;->srcBlendMode:I

    .line 242
    invoke-virtual {p0}, Lcom/stickycoding/rokon/BlendFunction;->getDst()I

    move-result v0

    sput v0, Lcom/stickycoding/rokon/GLHelper;->dstBlendMode:I

    .line 244
    :cond_1
    return-void
.end method

.method public static checkTextureValid(Lcom/stickycoding/rokon/Texture;)V
    .locals 2
    .parameter "texture"

    .prologue
    const/4 v1, -0x1

    .line 202
    invoke-virtual {p0}, Lcom/stickycoding/rokon/Texture;->getTextureIndex()I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/stickycoding/rokon/Texture;->parentAtlas:Lcom/stickycoding/rokon/TextureAtlas;

    if-nez v0, :cond_2

    .line 203
    sget-object v0, Lcom/stickycoding/rokon/GLHelper;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {p0, v0}, Lcom/stickycoding/rokon/Texture;->onLoadTexture(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 209
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/stickycoding/rokon/Texture;->reload:Z

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/stickycoding/rokon/Texture;->parentAtlas:Lcom/stickycoding/rokon/TextureAtlas;

    if-nez v0, :cond_3

    .line 211
    sget-object v0, Lcom/stickycoding/rokon/GLHelper;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {p0, v0}, Lcom/stickycoding/rokon/Texture;->onLoadTexture(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 215
    :goto_1
    invoke-virtual {p0}, Lcom/stickycoding/rokon/Texture;->setReloaded()V

    .line 217
    :cond_1
    return-void

    .line 205
    :cond_2
    invoke-virtual {p0}, Lcom/stickycoding/rokon/Texture;->getTextureIndex()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 206
    iget-object v0, p0, Lcom/stickycoding/rokon/Texture;->parentAtlas:Lcom/stickycoding/rokon/TextureAtlas;

    sget-object v1, Lcom/stickycoding/rokon/GLHelper;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {v0, v1}, Lcom/stickycoding/rokon/TextureAtlas;->onLoadTexture(Ljavax/microedition/khronos/opengles/GL10;)V

    goto :goto_0

    .line 213
    :cond_3
    iget-object v0, p0, Lcom/stickycoding/rokon/Texture;->parentAtlas:Lcom/stickycoding/rokon/TextureAtlas;

    sget-object v1, Lcom/stickycoding/rokon/GLHelper;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {v0, v1}, Lcom/stickycoding/rokon/TextureAtlas;->onLoadTexture(Ljavax/microedition/khronos/opengles/GL10;)V

    goto :goto_1
.end method

.method public static color4f(FFFF)V
    .locals 1
    .parameter "red"
    .parameter "green"
    .parameter "blue"
    .parameter "alpha"

    .prologue
    .line 255
    sget v0, Lcom/stickycoding/rokon/GLHelper;->glColor4fAlpha:F

    cmpl-float v0, p3, v0

    if-nez v0, :cond_0

    sget v0, Lcom/stickycoding/rokon/GLHelper;->glColor4fRed:F

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    sget v0, Lcom/stickycoding/rokon/GLHelper;->glColor4fGreen:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    sget v0, Lcom/stickycoding/rokon/GLHelper;->glColor4fBlue:F

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_1

    .line 256
    :cond_0
    sget-object v0, Lcom/stickycoding/rokon/GLHelper;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 257
    sput p0, Lcom/stickycoding/rokon/GLHelper;->glColor4fRed:F

    .line 258
    sput p1, Lcom/stickycoding/rokon/GLHelper;->glColor4fGreen:F

    .line 259
    sput p2, Lcom/stickycoding/rokon/GLHelper;->glColor4fBlue:F

    .line 260
    sput p3, Lcom/stickycoding/rokon/GLHelper;->glColor4fAlpha:F

    .line 262
    :cond_1
    return-void
.end method

.method public static colourPointer(Lcom/stickycoding/rokon/ColourBuffer;)V
    .locals 5
    .parameter "colourBuffer"

    .prologue
    .line 45
    sget-object v0, Lcom/stickycoding/rokon/GLHelper;->lastColourBufferObject:Lcom/stickycoding/rokon/ColourBuffer;

    if-eq v0, p0, :cond_0

    .line 46
    sget-object v0, Lcom/stickycoding/rokon/GLHelper;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v1, 0x4

    const/16 v2, 0x1406

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/stickycoding/rokon/ColourBuffer;->get()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    .line 47
    sput-object p0, Lcom/stickycoding/rokon/GLHelper;->lastColourBufferObject:Lcom/stickycoding/rokon/ColourBuffer;

    .line 49
    :cond_0
    return-void
.end method

.method public static disableColourArray()V
    .locals 2

    .prologue
    .line 38
    sget-boolean v0, Lcom/stickycoding/rokon/GLHelper;->glColorArray:Z

    if-eqz v0, :cond_0

    .line 39
    sget-object v0, Lcom/stickycoding/rokon/GLHelper;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const v1, 0x8076

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lcom/stickycoding/rokon/GLHelper;->glColorArray:Z

    .line 42
    :cond_0
    return-void
.end method

.method public static disableTexCoordArray()V
    .locals 2

    .prologue
    .line 123
    sget-boolean v0, Lcom/stickycoding/rokon/GLHelper;->glTexCoordArray:Z

    if-eqz v0, :cond_0

    .line 124
    sget-object v0, Lcom/stickycoding/rokon/GLHelper;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const v1, 0x8078

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 125
    const/4 v0, 0x0

    sput-boolean v0, Lcom/stickycoding/rokon/GLHelper;->glTexCoordArray:Z

    .line 127
    :cond_0
    return-void
.end method

.method public static disableTextures()V
    .locals 2

    .prologue
    .line 143
    sget-boolean v0, Lcom/stickycoding/rokon/GLHelper;->glTexture2D:Z

    if-eqz v0, :cond_0

    .line 144
    sget-object v0, Lcom/stickycoding/rokon/GLHelper;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xde1

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 145
    const/4 v0, 0x0

    sput-boolean v0, Lcom/stickycoding/rokon/GLHelper;->glTexture2D:Z

    .line 147
    :cond_0
    return-void
.end method

.method public static disableVertexArray()V
    .locals 2

    .prologue
    .line 103
    sget-boolean v0, Lcom/stickycoding/rokon/GLHelper;->glVertexArray:Z

    if-eqz v0, :cond_0

    .line 104
    sget-object v0, Lcom/stickycoding/rokon/GLHelper;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const v1, 0x8074

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 105
    const/4 v0, 0x0

    sput-boolean v0, Lcom/stickycoding/rokon/GLHelper;->glVertexArray:Z

    .line 107
    :cond_0
    return-void
.end method

.method public static drawNormal(ZFFFFLcom/stickycoding/rokon/BlendFunction;Lcom/stickycoding/rokon/BufferObject;IFFFFFZFFZLcom/stickycoding/rokon/BufferObject;FFFFFZLcom/stickycoding/rokon/Texture;ILcom/stickycoding/rokon/ColourBuffer;)V
    .locals 2
    .parameter "fill"
    .parameter "red"
    .parameter "green"
    .parameter "blue"
    .parameter "alpha"
    .parameter "blendFunction"
    .parameter "vertexBuffer"
    .parameter "vertexMode"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "rotation"
    .parameter "rotateAboutPivot"
    .parameter "rotationPivotX"
    .parameter "rotationPivotY"
    .parameter "border"
    .parameter "borderBuffer"
    .parameter "borderRed"
    .parameter "borderGreen"
    .parameter "borderBlue"
    .parameter "borderAlpha"
    .parameter "lineWidth"
    .parameter "hasTexture"
    .parameter "texture"
    .parameter "textureTile"
    .parameter "colourBuffer"

    .prologue
    .line 341
    const/16 p23, 0x0

    cmpl-float p23, p4, p23

    if-nez p23, :cond_1

    .end local p23
    const/16 p23, 0x0

    cmpl-float p23, p21, p23

    if-eqz p23, :cond_0

    if-nez p16, :cond_1

    .line 430
    .end local p0
    .end local p1
    .end local p2
    .end local p3
    .end local p5
    .end local p8
    .end local p9
    .end local p12
    .end local p13
    :cond_0
    :goto_0
    return-void

    .line 342
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3
    .restart local p5
    .restart local p8
    .restart local p9
    .restart local p12
    .restart local p13
    :cond_1
    if-nez p0, :cond_2

    if-eqz p16, :cond_0

    .line 343
    :cond_2
    if-eqz p5, :cond_7

    .line 344
    invoke-static {p5}, Lcom/stickycoding/rokon/GLHelper;->blendMode(Lcom/stickycoding/rokon/BlendFunction;)V

    .line 348
    .end local p5
    :goto_1
    sget-object p5, Lcom/stickycoding/rokon/GLHelper;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {p5}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 349
    invoke-static {}, Lcom/stickycoding/rokon/GLHelper;->enableVertexArray()V

    .line 350
    const/4 p5, 0x0

    const/16 p23, 0x0

    move v0, p5

    move/from16 v1, p23

    invoke-static {v0, v1}, Lcom/stickycoding/rokon/GLHelper;->bindBuffer(IZ)V

    .line 351
    const/4 p5, 0x0

    cmpl-float p5, p12, p5

    if-eqz p5, :cond_9

    .line 352
    if-nez p13, :cond_8

    .line 353
    sget-object p5, Lcom/stickycoding/rokon/GLHelper;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const/high16 p13, 0x4000

    div-float p13, p10, p13

    add-float/2addr p8, p13

    const/high16 p13, 0x4000

    div-float p13, p11, p13

    add-float/2addr p9, p13

    const/4 p13, 0x0

    invoke-interface {p5, p8, p9, p13}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 354
    .end local p8
    .end local p9
    .end local p13
    sget-object p5, Lcom/stickycoding/rokon/GLHelper;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const/4 p8, 0x0

    const/4 p9, 0x0

    const/high16 p13, 0x3f80

    invoke-interface {p5, p12, p8, p9, p13}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 355
    sget-object p5, Lcom/stickycoding/rokon/GLHelper;->gl:Ljavax/microedition/khronos/opengles/GL10;

    neg-float p8, p10

    const/high16 p9, 0x4000

    div-float/2addr p8, p9

    neg-float p9, p11

    const/high16 p12, 0x4000

    div-float/2addr p9, p12

    const/4 p12, 0x0

    invoke-interface {p5, p8, p9, p12}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 364
    .end local p12
    :goto_2
    const/high16 p5, 0x3f80

    cmpl-float p5, p10, p5

    if-nez p5, :cond_3

    const/high16 p5, 0x3f80

    cmpl-float p5, p11, p5

    if-eqz p5, :cond_4

    .line 365
    :cond_3
    sget-object p5, Lcom/stickycoding/rokon/GLHelper;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const/4 p8, 0x0

    invoke-interface {p5, p10, p11, p8}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 367
    :cond_4
    if-eqz p24, :cond_c

    .line 368
    if-eqz p0, :cond_5

    .line 369
    invoke-static {}, Lcom/stickycoding/rokon/GLHelper;->enableTextures()V

    .line 370
    invoke-static {}, Lcom/stickycoding/rokon/GLHelper;->enableTexCoordArray()V

    .line 371
    invoke-static/range {p24 .. p24}, Lcom/stickycoding/rokon/GLHelper;->bindTexture(Lcom/stickycoding/rokon/Texture;)V

    .line 372
    invoke-static {p1, p2, p3, p4}, Lcom/stickycoding/rokon/GLHelper;->color4f(FFFF)V

    .line 373
    if-eqz p26, :cond_a

    .line 374
    invoke-static {}, Lcom/stickycoding/rokon/GLHelper;->enableColourArray()V

    .line 375
    invoke-static/range {p26 .. p26}, Lcom/stickycoding/rokon/GLHelper;->colourPointer(Lcom/stickycoding/rokon/ColourBuffer;)V

    .line 380
    :goto_3
    :try_start_0
    move-object/from16 v0, p24

    iget-object v0, v0, Lcom/stickycoding/rokon/Texture;->buffer:[Lcom/stickycoding/rokon/BufferObject;

    move-object p0, v0

    .end local p0
    aget-object p0, p0, p25

    const/16 p1, 0x1406

    invoke-static {p0, p1}, Lcom/stickycoding/rokon/GLHelper;->texCoordPointer(Lcom/stickycoding/rokon/BufferObject;I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    .end local p1
    :goto_4
    const/16 p0, 0x1406

    invoke-static {p6, p0}, Lcom/stickycoding/rokon/GLHelper;->vertexPointer(Lcom/stickycoding/rokon/BufferObject;I)V

    .line 388
    sget-object p0, Lcom/stickycoding/rokon/GLHelper;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const/4 p1, 0x0

    invoke-virtual {p6}, Lcom/stickycoding/rokon/BufferObject;->getSize()I

    move-result p2

    .end local p2
    div-int/lit8 p2, p2, 0x2

    invoke-interface {p0, p7, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 390
    :cond_5
    if-eqz p16, :cond_6

    .line 391
    invoke-static {}, Lcom/stickycoding/rokon/GLHelper;->disableTexCoordArray()V

    .line 392
    invoke-static {}, Lcom/stickycoding/rokon/GLHelper;->disableTextures()V

    .line 393
    invoke-static {}, Lcom/stickycoding/rokon/GLHelper;->disableColourArray()V

    .line 394
    invoke-static/range {p18 .. p21}, Lcom/stickycoding/rokon/GLHelper;->color4f(FFFF)V

    .line 395
    const/16 p0, 0x1406

    move-object/from16 v0, p17

    move v1, p0

    invoke-static {v0, v1}, Lcom/stickycoding/rokon/GLHelper;->vertexPointer(Lcom/stickycoding/rokon/BufferObject;I)V

    .line 396
    const/high16 p0, -0x4080

    cmpl-float p0, p22, p0

    if-eqz p0, :cond_b

    .line 397
    invoke-static/range {p22 .. p22}, Lcom/stickycoding/rokon/GLHelper;->lineWidth(F)V

    .line 401
    :goto_5
    sget-object p0, Lcom/stickycoding/rokon/GLHelper;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const/4 p1, 0x2

    const/4 p2, 0x0

    invoke-virtual/range {p17 .. p17}, Lcom/stickycoding/rokon/BufferObject;->getSize()I

    move-result p3

    .end local p3
    div-int/lit8 p3, p3, 0x2

    invoke-interface {p0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 429
    :cond_6
    :goto_6
    sget-object p0, Lcom/stickycoding/rokon/GLHelper;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {p0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto/16 :goto_0

    .line 346
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3
    .restart local p5
    .restart local p8
    .restart local p9
    .restart local p12
    .restart local p13
    :cond_7
    sget-object p5, Lcom/stickycoding/rokon/Rokon;->blendFunction:Lcom/stickycoding/rokon/BlendFunction;

    .end local p5
    invoke-static {p5}, Lcom/stickycoding/rokon/GLHelper;->blendMode(Lcom/stickycoding/rokon/BlendFunction;)V

    goto/16 :goto_1

    .line 357
    :cond_8
    sget-object p5, Lcom/stickycoding/rokon/GLHelper;->gl:Ljavax/microedition/khronos/opengles/GL10;

    add-float p8, p8, p14

    add-float p9, p9, p15

    const/4 p13, 0x0

    invoke-interface {p5, p8, p9, p13}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 358
    .end local p8
    .end local p9
    .end local p13
    sget-object p5, Lcom/stickycoding/rokon/GLHelper;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const/4 p8, 0x0

    const/4 p9, 0x0

    const/high16 p13, 0x3f80

    invoke-interface {p5, p12, p8, p9, p13}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 359
    sget-object p5, Lcom/stickycoding/rokon/GLHelper;->gl:Ljavax/microedition/khronos/opengles/GL10;

    move/from16 v0, p14

    neg-float v0, v0

    move p8, v0

    move/from16 v0, p15

    neg-float v0, v0

    move p9, v0

    const/4 p12, 0x0

    invoke-interface {p5, p8, p9, p12}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    goto/16 :goto_2

    .line 362
    .restart local p8
    .restart local p9
    .restart local p13
    :cond_9
    sget-object p5, Lcom/stickycoding/rokon/GLHelper;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const/4 p12, 0x0

    invoke-interface {p5, p8, p9, p12}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    goto/16 :goto_2

    .line 377
    .end local p8
    .end local p9
    .end local p12
    .end local p13
    :cond_a
    invoke-static {}, Lcom/stickycoding/rokon/GLHelper;->disableColourArray()V

    goto/16 :goto_3

    .line 381
    .end local p0
    .end local p1
    :catch_0
    move-exception p0

    .line 382
    .local p0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string p0, "ARRAY INDEX OUT OF BOUNDS"

    .end local p0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-static {p0}, Lcom/stickycoding/rokon/Debug;->error(Ljava/lang/String;)V

    .line 383
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "textureTile="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move/from16 v1, p25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/stickycoding/rokon/Debug;->print(Ljava/lang/String;)V

    .line 384
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "texture="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p24

    iget-object v0, v0, Lcom/stickycoding/rokon/Texture;->path:Ljava/lang/String;

    move-object p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " tiles="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    move-object/from16 v0, p24

    iget v0, v0, Lcom/stickycoding/rokon/Texture;->tileCount:I

    move p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/stickycoding/rokon/Debug;->print(Ljava/lang/String;)V

    .line 385
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_4

    .line 399
    .end local p2
    :cond_b
    sget-object p0, Lcom/stickycoding/rokon/RokonActivity;->currentScene:Lcom/stickycoding/rokon/Scene;

    iget p0, p0, Lcom/stickycoding/rokon/Scene;->defaultLineWidth:F

    invoke-static {p0}, Lcom/stickycoding/rokon/GLHelper;->lineWidth(F)V

    goto/16 :goto_5

    .line 404
    .local p0, fill:Z
    .restart local p1
    .restart local p2
    :cond_c
    invoke-static {}, Lcom/stickycoding/rokon/GLHelper;->disableTexCoordArray()V

    .line 405
    invoke-static {}, Lcom/stickycoding/rokon/GLHelper;->disableTextures()V

    .line 406
    if-eqz p0, :cond_d

    .line 407
    invoke-static {p1, p2, p3, p4}, Lcom/stickycoding/rokon/GLHelper;->color4f(FFFF)V

    .line 408
    if-eqz p26, :cond_e

    .line 409
    invoke-static {}, Lcom/stickycoding/rokon/GLHelper;->enableColourArray()V

    .line 410
    invoke-static/range {p26 .. p26}, Lcom/stickycoding/rokon/GLHelper;->colourPointer(Lcom/stickycoding/rokon/ColourBuffer;)V

    .line 414
    :goto_7
    const/16 p0, 0x1406

    invoke-static {p6, p0}, Lcom/stickycoding/rokon/GLHelper;->vertexPointer(Lcom/stickycoding/rokon/BufferObject;I)V

    .line 415
    .end local p0           #fill:Z
    sget-object p0, Lcom/stickycoding/rokon/GLHelper;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const/4 p1, 0x0

    invoke-virtual {p6}, Lcom/stickycoding/rokon/BufferObject;->getSize()I

    .end local p1
    move-result p2

    .end local p2
    div-int/lit8 p2, p2, 0x2

    invoke-interface {p0, p7, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 417
    :cond_d
    if-eqz p16, :cond_6

    .line 418
    invoke-static {}, Lcom/stickycoding/rokon/GLHelper;->disableColourArray()V

    .line 419
    invoke-static/range {p18 .. p21}, Lcom/stickycoding/rokon/GLHelper;->color4f(FFFF)V

    .line 420
    const/16 p0, 0x1406

    move-object/from16 v0, p17

    move v1, p0

    invoke-static {v0, v1}, Lcom/stickycoding/rokon/GLHelper;->vertexPointer(Lcom/stickycoding/rokon/BufferObject;I)V

    .line 421
    const/high16 p0, -0x4080

    cmpl-float p0, p22, p0

    if-eqz p0, :cond_f

    .line 422
    invoke-static/range {p22 .. p22}, Lcom/stickycoding/rokon/GLHelper;->lineWidth(F)V

    .line 426
    :goto_8
    sget-object p0, Lcom/stickycoding/rokon/GLHelper;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const/4 p1, 0x2

    const/4 p2, 0x0

    invoke-virtual/range {p17 .. p17}, Lcom/stickycoding/rokon/BufferObject;->getSize()I

    move-result p3

    .end local p3
    div-int/lit8 p3, p3, 0x2

    invoke-interface {p0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    goto/16 :goto_6

    .line 412
    .restart local p0       #fill:Z
    .restart local p1
    .restart local p2
    .restart local p3
    :cond_e
    invoke-static {}, Lcom/stickycoding/rokon/GLHelper;->disableColourArray()V

    goto :goto_7

    .line 424
    .end local p0           #fill:Z
    .end local p1
    .end local p2
    :cond_f
    sget-object p0, Lcom/stickycoding/rokon/RokonActivity;->currentScene:Lcom/stickycoding/rokon/Scene;

    iget p0, p0, Lcom/stickycoding/rokon/Scene;->defaultLineWidth:F

    invoke-static {p0}, Lcom/stickycoding/rokon/GLHelper;->lineWidth(F)V

    goto :goto_8
.end method

.method public static drawTex(Lcom/stickycoding/rokon/Texture;FFFF)V
    .locals 0
    .parameter "texture"
    .parameter "screenX"
    .parameter "screenY"
    .parameter "screenWidth"
    .parameter "screenHeight"

    .prologue
    .line 568
    return-void
.end method

.method public static drawVBO(ZFFFFLcom/stickycoding/rokon/BlendFunction;Lcom/stickycoding/rokon/vbo/ArrayVBO;IFFFFFZFFZLcom/stickycoding/rokon/vbo/ArrayVBO;FFFFFZLcom/stickycoding/rokon/Texture;ILcom/stickycoding/rokon/ColourBuffer;)V
    .locals 7
    .parameter "fill"
    .parameter "red"
    .parameter "green"
    .parameter "blue"
    .parameter "alpha"
    .parameter "blendFunction"
    .parameter "arrayVBO"
    .parameter "vertexMode"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "rotation"
    .parameter "rotateAboutPivot"
    .parameter "rotationPivotX"
    .parameter "rotationPivotY"
    .parameter "border"
    .parameter "borderVBO"
    .parameter "borderRed"
    .parameter "borderGreen"
    .parameter "borderBlue"
    .parameter "borderAlpha"
    .parameter "lineWidth"
    .parameter "hasTexture"
    .parameter "texture"
    .parameter "textureTile"
    .parameter "colourBuffer"

    .prologue
    .line 461
    const/4 v5, 0x0

    cmpl-float v5, p4, v5

    if-nez v5, :cond_1

    const/4 v5, 0x0

    cmpl-float v5, p21, v5

    if-eqz v5, :cond_0

    if-nez p16, :cond_1

    .line 549
    .end local p0
    .end local p1
    .end local p2
    .end local p3
    .end local p5
    .end local p8
    .end local p9
    .end local p12
    .end local p13
    :cond_0
    :goto_0
    return-void

    .line 462
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3
    .restart local p5
    .restart local p8
    .restart local p9
    .restart local p12
    .restart local p13
    :cond_1
    if-nez p0, :cond_2

    if-eqz p16, :cond_0

    .line 463
    :cond_2
    invoke-virtual {p6}, Lcom/stickycoding/rokon/vbo/ArrayVBO;->isLoaded()Z

    move-result v5

    if-nez v5, :cond_3

    .line 465
    sget-object v5, Lcom/stickycoding/rokon/GLHelper;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {p6, v5}, Lcom/stickycoding/rokon/vbo/ArrayVBO;->load(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 467
    :cond_3
    if-eqz p16, :cond_4

    invoke-virtual/range {p17 .. p17}, Lcom/stickycoding/rokon/vbo/ArrayVBO;->isLoaded()Z

    move-result v5

    if-nez v5, :cond_4

    .line 469
    sget-object v5, Lcom/stickycoding/rokon/GLHelper;->gl:Ljavax/microedition/khronos/opengles/GL10;

    move-object/from16 v0, p17

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/stickycoding/rokon/vbo/ArrayVBO;->load(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 471
    :cond_4
    if-eqz p23, :cond_5

    .line 472
    invoke-static/range {p24 .. p24}, Lcom/stickycoding/rokon/GLHelper;->checkTextureValid(Lcom/stickycoding/rokon/Texture;)V

    .line 473
    move-object/from16 v0, p24

    iget-object v0, v0, Lcom/stickycoding/rokon/Texture;->vbo:[Lcom/stickycoding/rokon/vbo/ArrayVBO;

    move-object v5, v0

    aget-object v5, v5, p25

    invoke-virtual {v5}, Lcom/stickycoding/rokon/vbo/ArrayVBO;->isLoaded()Z

    move-result v5

    if-nez v5, :cond_5

    .line 475
    move-object/from16 v0, p24

    iget-object v0, v0, Lcom/stickycoding/rokon/Texture;->vbo:[Lcom/stickycoding/rokon/vbo/ArrayVBO;

    move-object v5, v0

    aget-object v5, v5, p25

    sget-object v6, Lcom/stickycoding/rokon/GLHelper;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {v5, v6}, Lcom/stickycoding/rokon/vbo/ArrayVBO;->load(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 479
    :cond_5
    if-eqz p5, :cond_c

    .line 480
    invoke-static {p5}, Lcom/stickycoding/rokon/GLHelper;->blendMode(Lcom/stickycoding/rokon/BlendFunction;)V

    .line 484
    .end local p5
    :goto_1
    sget-object p5, Lcom/stickycoding/rokon/GLHelper;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {p5}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 485
    invoke-static {}, Lcom/stickycoding/rokon/GLHelper;->enableVertexArray()V

    .line 486
    const/4 p5, 0x0

    cmpl-float p5, p8, p5

    if-nez p5, :cond_6

    const/4 p5, 0x0

    cmpl-float p5, p9, p5

    if-eqz p5, :cond_7

    .line 487
    :cond_6
    sget-object p5, Lcom/stickycoding/rokon/GLHelper;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v5, 0x0

    move-object v0, p5

    move v1, p8

    move/from16 v2, p9

    move v3, v5

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 489
    :cond_7
    const/4 p5, 0x0

    cmpl-float p5, p12, p5

    if-eqz p5, :cond_8

    .line 490
    if-nez p13, :cond_d

    .line 491
    sget-object p5, Lcom/stickycoding/rokon/GLHelper;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const/high16 p8, 0x4000

    div-float p8, p10, p8

    const/high16 p9, 0x4000

    div-float p9, p11, p9

    const/16 p13, 0x0

    move-object v0, p5

    move v1, p8

    move/from16 v2, p9

    move/from16 v3, p13

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 492
    .end local p8
    .end local p9
    .end local p13
    sget-object p5, Lcom/stickycoding/rokon/GLHelper;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const/4 p8, 0x0

    const/16 p9, 0x0

    const/high16 p13, 0x3f80

    move-object v0, p5

    move/from16 v1, p12

    move v2, p8

    move/from16 v3, p9

    move/from16 v4, p13

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 493
    sget-object p5, Lcom/stickycoding/rokon/GLHelper;->gl:Ljavax/microedition/khronos/opengles/GL10;

    move/from16 v0, p10

    neg-float v0, v0

    move p8, v0

    const/high16 p9, 0x4000

    div-float p8, p8, p9

    move/from16 v0, p11

    neg-float v0, v0

    move/from16 p9, v0

    const/high16 p12, 0x4000

    div-float p9, p9, p12

    const/16 p12, 0x0

    move-object v0, p5

    move v1, p8

    move/from16 v2, p9

    move/from16 v3, p12

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 500
    .end local p12
    :cond_8
    :goto_2
    const/high16 p5, 0x3f80

    cmpl-float p5, p10, p5

    if-nez p5, :cond_9

    const/high16 p5, 0x3f80

    cmpl-float p5, p11, p5

    if-eqz p5, :cond_a

    .line 501
    :cond_9
    sget-object p5, Lcom/stickycoding/rokon/GLHelper;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const/4 p8, 0x0

    move-object v0, p5

    move/from16 v1, p10

    move/from16 v2, p11

    move v3, p8

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 503
    :cond_a
    if-eqz p23, :cond_f

    .line 504
    invoke-static {}, Lcom/stickycoding/rokon/GLHelper;->enableTextures()V

    .line 505
    invoke-static {}, Lcom/stickycoding/rokon/GLHelper;->enableTexCoordArray()V

    .line 506
    invoke-static/range {p24 .. p24}, Lcom/stickycoding/rokon/GLHelper;->bindTexture(Lcom/stickycoding/rokon/Texture;)V

    .line 507
    invoke-static {p1, p2, p3, p4}, Lcom/stickycoding/rokon/GLHelper;->color4f(FFFF)V

    .line 508
    move-object/from16 v0, p24

    iget-object v0, v0, Lcom/stickycoding/rokon/Texture;->buffer:[Lcom/stickycoding/rokon/BufferObject;

    move-object p0, v0

    .end local p0
    aget-object p0, p0, p25

    const/16 p1, 0x1406

    invoke-static {p0, p1}, Lcom/stickycoding/rokon/GLHelper;->texCoordPointer(Lcom/stickycoding/rokon/BufferObject;I)V

    .line 509
    .end local p1
    invoke-virtual {p6}, Lcom/stickycoding/rokon/vbo/ArrayVBO;->getBufferIndex()I

    move-result p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/stickycoding/rokon/GLHelper;->bindBuffer(IZ)V

    .line 510
    if-eqz p26, :cond_e

    .line 511
    invoke-static {}, Lcom/stickycoding/rokon/GLHelper;->enableColourArray()V

    .line 512
    invoke-static/range {p26 .. p26}, Lcom/stickycoding/rokon/GLHelper;->colourPointer(Lcom/stickycoding/rokon/ColourBuffer;)V

    .line 516
    :goto_3
    const/16 p0, 0x1406

    invoke-static {p0}, Lcom/stickycoding/rokon/GLHelper;->vertexPointer(I)V

    .line 517
    move-object/from16 v0, p24

    iget-object v0, v0, Lcom/stickycoding/rokon/Texture;->vbo:[Lcom/stickycoding/rokon/vbo/ArrayVBO;

    move-object p0, v0

    aget-object p0, p0, p25

    invoke-virtual {p0}, Lcom/stickycoding/rokon/vbo/ArrayVBO;->getBufferIndex()I

    move-result p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/stickycoding/rokon/GLHelper;->bindBuffer(IZ)V

    .line 518
    const/16 p0, 0x1406

    invoke-static {p0}, Lcom/stickycoding/rokon/GLHelper;->texCoordPointer(I)V

    .line 519
    sget-object p0, Lcom/stickycoding/rokon/GLHelper;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const/4 p1, 0x0

    invoke-virtual {p6}, Lcom/stickycoding/rokon/vbo/ArrayVBO;->getBufferObject()Lcom/stickycoding/rokon/BufferObject;

    move-result-object p2

    .end local p2
    invoke-virtual {p2}, Lcom/stickycoding/rokon/BufferObject;->getSize()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    invoke-interface {p0, p7, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 548
    .end local p3
    :cond_b
    :goto_4
    sget-object p0, Lcom/stickycoding/rokon/GLHelper;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {p0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto/16 :goto_0

    .line 482
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3
    .restart local p5
    .restart local p8
    .restart local p9
    .restart local p12
    .restart local p13
    :cond_c
    sget-object p5, Lcom/stickycoding/rokon/Rokon;->blendFunction:Lcom/stickycoding/rokon/BlendFunction;

    .end local p5
    invoke-static {p5}, Lcom/stickycoding/rokon/GLHelper;->blendMode(Lcom/stickycoding/rokon/BlendFunction;)V

    goto/16 :goto_1

    .line 495
    :cond_d
    sget-object p5, Lcom/stickycoding/rokon/GLHelper;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const/4 p8, 0x0

    move-object v0, p5

    move/from16 v1, p14

    move/from16 v2, p15

    move v3, p8

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 496
    .end local p8
    sget-object p5, Lcom/stickycoding/rokon/GLHelper;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const/4 p8, 0x0

    const/16 p9, 0x0

    const/high16 p13, 0x3f80

    move-object v0, p5

    move/from16 v1, p12

    move v2, p8

    move/from16 v3, p9

    move/from16 v4, p13

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 497
    .end local p9
    .end local p13
    sget-object p5, Lcom/stickycoding/rokon/GLHelper;->gl:Ljavax/microedition/khronos/opengles/GL10;

    move/from16 v0, p14

    neg-float v0, v0

    move p8, v0

    move/from16 v0, p15

    neg-float v0, v0

    move/from16 p9, v0

    const/16 p12, 0x0

    move-object v0, p5

    move v1, p8

    move/from16 v2, p9

    move/from16 v3, p12

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    goto/16 :goto_2

    .line 514
    .end local p0
    .end local p1
    .end local p12
    :cond_e
    invoke-static {}, Lcom/stickycoding/rokon/GLHelper;->disableColourArray()V

    goto :goto_3

    .line 521
    .restart local p0
    .restart local p1
    :cond_f
    invoke-static {}, Lcom/stickycoding/rokon/GLHelper;->disableTexCoordArray()V

    .line 522
    invoke-static {}, Lcom/stickycoding/rokon/GLHelper;->disableTextures()V

    .line 523
    if-eqz p0, :cond_10

    .line 524
    invoke-static {p1, p2, p3, p4}, Lcom/stickycoding/rokon/GLHelper;->color4f(FFFF)V

    .line 525
    invoke-virtual {p6}, Lcom/stickycoding/rokon/vbo/ArrayVBO;->getBufferIndex()I

    move-result p0

    .end local p0
    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/stickycoding/rokon/GLHelper;->bindBuffer(IZ)V

    .line 526
    .end local p1
    const/16 p0, 0x1406

    invoke-static {p0}, Lcom/stickycoding/rokon/GLHelper;->vertexPointer(I)V

    .line 527
    if-eqz p26, :cond_11

    .line 528
    invoke-static {}, Lcom/stickycoding/rokon/GLHelper;->enableColourArray()V

    .line 529
    invoke-static/range {p26 .. p26}, Lcom/stickycoding/rokon/GLHelper;->colourPointer(Lcom/stickycoding/rokon/ColourBuffer;)V

    .line 533
    :goto_5
    sget-object p0, Lcom/stickycoding/rokon/GLHelper;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const/4 p1, 0x0

    invoke-virtual {p6}, Lcom/stickycoding/rokon/vbo/ArrayVBO;->getBufferObject()Lcom/stickycoding/rokon/BufferObject;

    move-result-object p2

    .end local p2
    invoke-virtual {p2}, Lcom/stickycoding/rokon/BufferObject;->getSize()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    invoke-interface {p0, p7, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 535
    :cond_10
    if-eqz p16, :cond_b

    .line 536
    invoke-static {}, Lcom/stickycoding/rokon/GLHelper;->disableColourArray()V

    .line 537
    const/high16 p0, -0x4080

    cmpl-float p0, p22, p0

    if-eqz p0, :cond_12

    .line 538
    invoke-static/range {p22 .. p22}, Lcom/stickycoding/rokon/GLHelper;->lineWidth(F)V

    .line 542
    :goto_6
    invoke-static/range {p18 .. p21}, Lcom/stickycoding/rokon/GLHelper;->color4f(FFFF)V

    .line 543
    invoke-virtual/range {p17 .. p17}, Lcom/stickycoding/rokon/vbo/ArrayVBO;->getBufferIndex()I

    move-result p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/stickycoding/rokon/GLHelper;->bindBuffer(IZ)V

    .line 544
    const/16 p0, 0x1406

    invoke-static {p0}, Lcom/stickycoding/rokon/GLHelper;->vertexPointer(I)V

    .line 545
    sget-object p0, Lcom/stickycoding/rokon/GLHelper;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const/4 p1, 0x2

    const/4 p2, 0x0

    invoke-virtual/range {p17 .. p17}, Lcom/stickycoding/rokon/vbo/ArrayVBO;->getBufferObject()Lcom/stickycoding/rokon/BufferObject;

    move-result-object p3

    .end local p3
    invoke-virtual {p3}, Lcom/stickycoding/rokon/BufferObject;->getSize()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    invoke-interface {p0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    goto/16 :goto_4

    .line 531
    .restart local p2
    .restart local p3
    :cond_11
    invoke-static {}, Lcom/stickycoding/rokon/GLHelper;->disableColourArray()V

    goto :goto_5

    .line 540
    .end local p2
    :cond_12
    sget-object p0, Lcom/stickycoding/rokon/RokonActivity;->currentScene:Lcom/stickycoding/rokon/Scene;

    iget p0, p0, Lcom/stickycoding/rokon/Scene;->defaultLineWidth:F

    invoke-static {p0}, Lcom/stickycoding/rokon/GLHelper;->lineWidth(F)V

    goto :goto_6
.end method

.method public static enableColourArray()V
    .locals 2

    .prologue
    .line 31
    sget-boolean v0, Lcom/stickycoding/rokon/GLHelper;->glColorArray:Z

    if-nez v0, :cond_0

    .line 32
    sget-object v0, Lcom/stickycoding/rokon/GLHelper;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const v1, 0x8076

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 33
    const/4 v0, 0x1

    sput-boolean v0, Lcom/stickycoding/rokon/GLHelper;->glColorArray:Z

    .line 35
    :cond_0
    return-void
.end method

.method public static enableTexCoordArray()V
    .locals 2

    .prologue
    .line 113
    sget-boolean v0, Lcom/stickycoding/rokon/GLHelper;->glTexCoordArray:Z

    if-nez v0, :cond_0

    .line 114
    sget-object v0, Lcom/stickycoding/rokon/GLHelper;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const v1, 0x8078

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 115
    const/4 v0, 0x1

    sput-boolean v0, Lcom/stickycoding/rokon/GLHelper;->glTexCoordArray:Z

    .line 117
    :cond_0
    return-void
.end method

.method public static enableTextures()V
    .locals 2

    .prologue
    .line 133
    sget-boolean v0, Lcom/stickycoding/rokon/GLHelper;->glTexture2D:Z

    if-nez v0, :cond_0

    .line 134
    sget-object v0, Lcom/stickycoding/rokon/GLHelper;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xde1

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 135
    const/4 v0, 0x1

    sput-boolean v0, Lcom/stickycoding/rokon/GLHelper;->glTexture2D:Z

    .line 137
    :cond_0
    return-void
.end method

.method public static enableVertexArray()V
    .locals 2

    .prologue
    .line 93
    sget-boolean v0, Lcom/stickycoding/rokon/GLHelper;->glVertexArray:Z

    if-nez v0, :cond_0

    .line 94
    sget-object v0, Lcom/stickycoding/rokon/GLHelper;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const v1, 0x8074

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 95
    const/4 v0, 0x1

    sput-boolean v0, Lcom/stickycoding/rokon/GLHelper;->glVertexArray:Z

    .line 97
    :cond_0
    return-void
.end method

.method public static lineWidth(F)V
    .locals 1
    .parameter "lineWidth"

    .prologue
    .line 80
    sget v0, Lcom/stickycoding/rokon/GLHelper;->lineWidth:F

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    sput p0, Lcom/stickycoding/rokon/GLHelper;->lineWidth:F

    .line 82
    sget-object v0, Lcom/stickycoding/rokon/GLHelper;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p0}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    goto :goto_0
.end method

.method public static refreshTexture(Lcom/stickycoding/rokon/Texture;)V
    .locals 3
    .parameter "texture"

    .prologue
    const/4 v2, 0x0

    .line 571
    invoke-static {p0}, Lcom/stickycoding/rokon/GLHelper;->bindTexture(Lcom/stickycoding/rokon/Texture;)V

    .line 572
    const/16 v0, 0xde1

    invoke-virtual {p0}, Lcom/stickycoding/rokon/Texture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v2, v2, v2, v1}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    .line 573
    return-void
.end method

.method public static removeTextures([Lcom/stickycoding/rokon/Texture;)V
    .locals 5
    .parameter "texture"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 557
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    .line 563
    return-void

    .line 558
    :cond_0
    aget-object v2, p0, v0

    if-eqz v2, :cond_1

    .line 559
    new-array v1, v4, [I

    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcom/stickycoding/rokon/Texture;->getTextureIndex()I

    move-result v2

    aput v2, v1, v3

    .line 560
    .local v1, textureId:[I
    sget-object v2, Lcom/stickycoding/rokon/GLHelper;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2, v4, v1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    .line 557
    .end local v1           #textureId:[I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/high16 v1, -0x4080

    const/4 v0, -0x1

    .line 55
    sput-boolean v2, Lcom/stickycoding/rokon/GLHelper;->glVertexArray:Z

    .line 56
    sput-boolean v2, Lcom/stickycoding/rokon/GLHelper;->glTexCoordArray:Z

    .line 57
    sput-boolean v2, Lcom/stickycoding/rokon/GLHelper;->glTexture2D:Z

    .line 58
    sput v0, Lcom/stickycoding/rokon/GLHelper;->textureIndex:I

    .line 59
    sput v0, Lcom/stickycoding/rokon/GLHelper;->arrayBuffer:I

    .line 60
    sput v0, Lcom/stickycoding/rokon/GLHelper;->elementBuffer:I

    .line 61
    sput v0, Lcom/stickycoding/rokon/GLHelper;->srcBlendMode:I

    .line 62
    sput v0, Lcom/stickycoding/rokon/GLHelper;->dstBlendMode:I

    .line 63
    sput v1, Lcom/stickycoding/rokon/GLHelper;->glColor4fRed:F

    .line 64
    sput v1, Lcom/stickycoding/rokon/GLHelper;->glColor4fGreen:F

    .line 65
    sput v1, Lcom/stickycoding/rokon/GLHelper;->glColor4fBlue:F

    .line 66
    sput v1, Lcom/stickycoding/rokon/GLHelper;->glColor4fAlpha:F

    .line 67
    sput-object v3, Lcom/stickycoding/rokon/GLHelper;->lastVertexPointerBuffer:Lcom/stickycoding/rokon/BufferObject;

    .line 68
    sput-object v3, Lcom/stickycoding/rokon/GLHelper;->lastTexCoordPointerBuffer:Lcom/stickycoding/rokon/BufferObject;

    .line 69
    sput-object v3, Lcom/stickycoding/rokon/GLHelper;->lastColourBufferObject:Lcom/stickycoding/rokon/ColourBuffer;

    .line 70
    sput-boolean v2, Lcom/stickycoding/rokon/GLHelper;->glColorArray:Z

    .line 71
    const/high16 v0, 0x3f80

    sput v0, Lcom/stickycoding/rokon/GLHelper;->lineWidth:F

    .line 72
    return-void
.end method

.method protected static setGL(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .parameter "gl"

    .prologue
    .line 86
    sput-object p0, Lcom/stickycoding/rokon/GLHelper;->gl:Ljavax/microedition/khronos/opengles/GL10;

    .line 87
    return-void
.end method

.method public static texCoordPointer(I)V
    .locals 3
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 293
    const/4 v0, 0x0

    sput-object v0, Lcom/stickycoding/rokon/GLHelper;->lastTexCoordPointerBuffer:Lcom/stickycoding/rokon/BufferObject;

    .line 294
    sget-object v0, Lcom/stickycoding/rokon/GLHelper;->gl:Ljavax/microedition/khronos/opengles/GL10;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    const/4 v1, 0x2

    invoke-interface {v0, v1, p0, v2, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 295
    return-void
.end method

.method public static texCoordPointer(Lcom/stickycoding/rokon/BufferObject;I)V
    .locals 4
    .parameter "buffer"
    .parameter "type"

    .prologue
    .line 271
    sget-object v0, Lcom/stickycoding/rokon/GLHelper;->lastTexCoordPointerBuffer:Lcom/stickycoding/rokon/BufferObject;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    sget-object v0, Lcom/stickycoding/rokon/GLHelper;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/stickycoding/rokon/BufferObject;->get()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-interface {v0, v1, p1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 273
    sput-object p0, Lcom/stickycoding/rokon/GLHelper;->lastTexCoordPointerBuffer:Lcom/stickycoding/rokon/BufferObject;

    .line 275
    :cond_0
    return-void
.end method

.method public static vertexPointer(I)V
    .locals 3
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 283
    const/4 v0, 0x0

    sput-object v0, Lcom/stickycoding/rokon/GLHelper;->lastVertexPointerBuffer:Lcom/stickycoding/rokon/BufferObject;

    .line 284
    sget-object v0, Lcom/stickycoding/rokon/GLHelper;->gl:Ljavax/microedition/khronos/opengles/GL10;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    const/4 v1, 0x2

    invoke-interface {v0, v1, p0, v2, v2}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    .line 285
    return-void
.end method

.method public static vertexPointer(Lcom/stickycoding/rokon/BufferObject;I)V
    .locals 4
    .parameter "buffer"
    .parameter "type"

    .prologue
    .line 304
    sget-object v0, Lcom/stickycoding/rokon/GLHelper;->lastVertexPointerBuffer:Lcom/stickycoding/rokon/BufferObject;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    sget-object v0, Lcom/stickycoding/rokon/GLHelper;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/stickycoding/rokon/BufferObject;->get()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-interface {v0, v1, p1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 306
    sput-object p0, Lcom/stickycoding/rokon/GLHelper;->lastVertexPointerBuffer:Lcom/stickycoding/rokon/BufferObject;

    .line 308
    :cond_0
    return-void
.end method
