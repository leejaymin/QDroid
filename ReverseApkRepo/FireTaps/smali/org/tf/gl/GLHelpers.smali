.class public Lorg/tf/gl/GLHelpers;
.super Ljava/lang/Object;
.source "GLHelpers.java"


# static fields
.field private static final EXT_ABSENT:I = 0x2

.field private static final EXT_PRESENT:I = 0x1

.field private static final EXT_UNKNOWN:I

.field public static final IDENTITY_MATRIX:[F

.field private static final INTS_1:[I

.field private static m_extDrawTexture:I

.field private static m_extVBO:I

.field private static m_quadTexcoords:Lorg/tf/gl/GLBufferObject;

.field private static m_quadXYVertices:Lorg/tf/gl/GLBufferObject;

.field private static m_quadXZVertices:Lorg/tf/gl/GLBufferObject;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/high16 v3, 0x3f80

    const/high16 v6, 0x3f00

    const/high16 v5, -0x4100

    const/4 v4, 0x0

    .line 297
    sput v7, Lorg/tf/gl/GLHelpers;->m_extDrawTexture:I

    .line 298
    sput v7, Lorg/tf/gl/GLHelpers;->m_extVBO:I

    .line 306
    const/4 v2, 0x1

    new-array v2, v2, [I

    sput-object v2, Lorg/tf/gl/GLHelpers;->INTS_1:[I

    .line 309
    const/16 v2, 0x8

    invoke-static {v2}, Lorg/tf/gl/GLHelpers;->allocateFloatBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 310
    .local v0, texcoords:Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 311
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 312
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 313
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 314
    const/4 v2, 0x2

    const/16 v3, 0x1406

    invoke-static {v2, v3, v0}, Lorg/tf/gl/GLBufferObject;->createTexcoords(IILjava/nio/ByteBuffer;)Lorg/tf/gl/GLBufferObject;

    move-result-object v2

    sput-object v2, Lorg/tf/gl/GLHelpers;->m_quadTexcoords:Lorg/tf/gl/GLBufferObject;

    .line 316
    const/16 v2, 0xc

    invoke-static {v2}, Lorg/tf/gl/GLHelpers;->allocateFloatBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 317
    .local v1, vertices:Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 318
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 319
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 320
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 321
    const/4 v2, 0x3

    const/16 v3, 0x1406

    invoke-static {v2, v3, v1}, Lorg/tf/gl/GLBufferObject;->createVertices(IILjava/nio/ByteBuffer;)Lorg/tf/gl/GLBufferObject;

    move-result-object v2

    sput-object v2, Lorg/tf/gl/GLHelpers;->m_quadXZVertices:Lorg/tf/gl/GLBufferObject;

    .line 323
    const/16 v2, 0xc

    invoke-static {v2}, Lorg/tf/gl/GLHelpers;->allocateFloatBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 324
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 325
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 326
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 327
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 328
    const/4 v2, 0x3

    const/16 v3, 0x1406

    invoke-static {v2, v3, v1}, Lorg/tf/gl/GLBufferObject;->createVertices(IILjava/nio/ByteBuffer;)Lorg/tf/gl/GLBufferObject;

    move-result-object v2

    sput-object v2, Lorg/tf/gl/GLHelpers;->m_quadXYVertices:Lorg/tf/gl/GLBufferObject;

    .line 330
    const/16 v2, 0x10

    new-array v2, v2, [F

    sput-object v2, Lorg/tf/gl/GLHelpers;->IDENTITY_MATRIX:[F

    .line 331
    sget-object v2, Lorg/tf/gl/GLHelpers;->IDENTITY_MATRIX:[F

    invoke-static {v2, v7}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allocateFloatBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2
    .parameter "capacity"

    .prologue
    .line 264
    mul-int/lit8 v1, p0, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 265
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 266
    return-object v0
.end method

.method public static allocateIntBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2
    .parameter "capacity"

    .prologue
    .line 258
    mul-int/lit8 v1, p0, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 259
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 260
    return-object v0
.end method

.method public static allocateShortBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2
    .parameter "capacity"

    .prologue
    .line 270
    mul-int/lit8 v1, p0, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 271
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 272
    return-object v0
.end method

.method public static beginDrawTextureXZ(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .parameter "gl"

    .prologue
    .line 70
    sget-object v0, Lorg/tf/gl/GLHelpers;->m_quadTexcoords:Lorg/tf/gl/GLBufferObject;

    invoke-virtual {v0, p0}, Lorg/tf/gl/GLBufferObject;->set(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 71
    sget-object v0, Lorg/tf/gl/GLHelpers;->m_quadXZVertices:Lorg/tf/gl/GLBufferObject;

    invoke-virtual {v0, p0}, Lorg/tf/gl/GLBufferObject;->set(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 72
    return-void
.end method

.method private static checkExtension(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "extensions"
    .parameter "extension"

    .prologue
    .line 289
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private static checkExtensions(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .parameter "gl"

    .prologue
    .line 280
    const/16 v1, 0x1f03

    invoke-interface {p0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, extensions:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 282
    const-string v0, ""

    .line 284
    :cond_0
    const-string v1, "GL_OES_draw_texture"

    invoke-static {v0, v1}, Lorg/tf/gl/GLHelpers;->checkExtension(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lorg/tf/gl/GLHelpers;->m_extDrawTexture:I

    .line 285
    const-string v1, "GL_ARB_vertex_buffer_object"

    invoke-static {v0, v1}, Lorg/tf/gl/GLHelpers;->checkExtension(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lorg/tf/gl/GLHelpers;->m_extVBO:I

    .line 286
    return-void
.end method

.method public static deleteBuffer(Ljavax/microedition/khronos/opengles/GL11;I)V
    .locals 3
    .parameter "gl11"
    .parameter "buffer"

    .prologue
    const/4 v2, 0x0

    .line 154
    sget-object v0, Lorg/tf/gl/GLHelpers;->INTS_1:[I

    aput p1, v0, v2

    .line 155
    const/4 v0, 0x1

    sget-object v1, Lorg/tf/gl/GLHelpers;->INTS_1:[I

    invoke-interface {p0, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V

    .line 156
    return-void
.end method

.method public static deleteTexture(Ljavax/microedition/khronos/opengles/GL10;I)V
    .locals 3
    .parameter "gl"
    .parameter "texture"

    .prologue
    const/4 v2, 0x1

    .line 144
    sget-object v0, Lorg/tf/gl/GLHelpers;->INTS_1:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 145
    sget-object v0, Lorg/tf/gl/GLHelpers;->INTS_1:[I

    invoke-interface {p0, v2, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    .line 146
    return-void
.end method

.method public static destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    sget-object v0, Lorg/tf/gl/GLHelpers;->m_quadTexcoords:Lorg/tf/gl/GLBufferObject;

    invoke-virtual {v0, v1}, Lorg/tf/gl/GLBufferObject;->unbind(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 49
    sget-object v0, Lorg/tf/gl/GLHelpers;->m_quadXZVertices:Lorg/tf/gl/GLBufferObject;

    invoke-virtual {v0, v1}, Lorg/tf/gl/GLBufferObject;->unbind(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 50
    sget-object v0, Lorg/tf/gl/GLHelpers;->m_quadXYVertices:Lorg/tf/gl/GLBufferObject;

    invoke-virtual {v0, v1}, Lorg/tf/gl/GLBufferObject;->unbind(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 51
    return-void
.end method

.method public static doDrawTextureXZ(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3
    .parameter "gl"

    .prologue
    .line 75
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-interface {p0, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 76
    return-void
.end method

.method public static drawQuadXZ(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3
    .parameter "gl"

    .prologue
    .line 85
    sget-object v0, Lorg/tf/gl/GLHelpers;->m_quadXZVertices:Lorg/tf/gl/GLBufferObject;

    invoke-virtual {v0, p0}, Lorg/tf/gl/GLBufferObject;->set(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 86
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-interface {p0, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 87
    return-void
.end method

.method public static drawTextureLineX(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3
    .parameter "gl"

    .prologue
    .line 90
    sget-object v0, Lorg/tf/gl/GLHelpers;->m_quadTexcoords:Lorg/tf/gl/GLBufferObject;

    invoke-virtual {v0, p0}, Lorg/tf/gl/GLBufferObject;->set(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 91
    sget-object v0, Lorg/tf/gl/GLHelpers;->m_quadXZVertices:Lorg/tf/gl/GLBufferObject;

    invoke-virtual {v0, p0}, Lorg/tf/gl/GLBufferObject;->set(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 92
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-interface {p0, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 93
    return-void
.end method

.method public static drawTextureXY(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3
    .parameter "gl"

    .prologue
    .line 98
    sget-object v0, Lorg/tf/gl/GLHelpers;->m_quadTexcoords:Lorg/tf/gl/GLBufferObject;

    invoke-virtual {v0, p0}, Lorg/tf/gl/GLBufferObject;->set(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 99
    sget-object v0, Lorg/tf/gl/GLHelpers;->m_quadXYVertices:Lorg/tf/gl/GLBufferObject;

    invoke-virtual {v0, p0}, Lorg/tf/gl/GLBufferObject;->set(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 100
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-interface {p0, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 101
    return-void
.end method

.method public static drawTextureXZ(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3
    .parameter "gl"

    .prologue
    .line 79
    sget-object v0, Lorg/tf/gl/GLHelpers;->m_quadTexcoords:Lorg/tf/gl/GLBufferObject;

    invoke-virtual {v0, p0}, Lorg/tf/gl/GLBufferObject;->set(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 80
    sget-object v0, Lorg/tf/gl/GLHelpers;->m_quadXZVertices:Lorg/tf/gl/GLBufferObject;

    invoke-virtual {v0, p0}, Lorg/tf/gl/GLBufferObject;->set(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 81
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-interface {p0, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 82
    return-void
.end method

.method public static generateBuffer(Ljavax/microedition/khronos/opengles/GL11;)I
    .locals 3
    .parameter "gl11"

    .prologue
    const/4 v2, 0x0

    .line 149
    const/4 v0, 0x1

    sget-object v1, Lorg/tf/gl/GLHelpers;->INTS_1:[I

    invoke-interface {p0, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    .line 150
    sget-object v0, Lorg/tf/gl/GLHelpers;->INTS_1:[I

    aget v0, v0, v2

    return v0
.end method

.method public static generateTexture(Ljavax/microedition/khronos/opengles/GL10;)I
    .locals 3
    .parameter "gl"

    .prologue
    const/4 v2, 0x0

    .line 139
    const/4 v0, 0x1

    sget-object v1, Lorg/tf/gl/GLHelpers;->INTS_1:[I

    invoke-interface {p0, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 140
    sget-object v0, Lorg/tf/gl/GLHelpers;->INTS_1:[I

    aget v0, v0, v2

    return v0
.end method

.method public static hasDrawTexture(Ljavax/microedition/khronos/opengles/GL10;)Z
    .locals 2
    .parameter "gl"

    .prologue
    const/4 v1, 0x1

    .line 60
    sget v0, Lorg/tf/gl/GLHelpers;->m_extDrawTexture:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasVBO(Ljavax/microedition/khronos/opengles/GL10;)Z
    .locals 2
    .parameter "gl"

    .prologue
    const/4 v1, 0x1

    .line 64
    sget v0, Lorg/tf/gl/GLHelpers;->m_extVBO:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static initialize(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .parameter "gl"

    .prologue
    .line 41
    invoke-static {p0}, Lorg/tf/gl/GLHelpers;->checkExtensions(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 42
    sget-object v0, Lorg/tf/gl/GLHelpers;->m_quadTexcoords:Lorg/tf/gl/GLBufferObject;

    invoke-virtual {v0, p0}, Lorg/tf/gl/GLBufferObject;->bind(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 43
    sget-object v0, Lorg/tf/gl/GLHelpers;->m_quadXZVertices:Lorg/tf/gl/GLBufferObject;

    invoke-virtual {v0, p0}, Lorg/tf/gl/GLBufferObject;->bind(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 44
    sget-object v0, Lorg/tf/gl/GLHelpers;->m_quadXYVertices:Lorg/tf/gl/GLBufferObject;

    invoke-virtual {v0, p0}, Lorg/tf/gl/GLBufferObject;->bind(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 45
    return-void
.end method

.method public static loadBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "context"
    .parameter "bitmapResource"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    const/4 v2, 0x0

    .line 207
    .local v2, stream:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 208
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 216
    invoke-static {v2}, Lskiba/util/Simply;->close(Ljava/io/Closeable;)V

    .line 208
    return-object v3

    .line 210
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 211
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    .line 212
    .local v1, ioe:Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 213
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    .end local v0           #e:Landroid/content/res/Resources$NotFoundException;
    .end local v1           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 216
    invoke-static {v2}, Lskiba/util/Simply;->close(Ljava/io/Closeable;)V

    .line 217
    throw v3
.end method

.method public static loadBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "context"
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    const/4 v0, 0x0

    .line 225
    .local v0, stream:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 226
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 229
    invoke-static {v0}, Lskiba/util/Simply;->close(Ljava/io/Closeable;)V

    .line 226
    return-object v1

    .line 228
    :catchall_0
    move-exception v1

    .line 229
    invoke-static {v0}, Lskiba/util/Simply;->close(Ljava/io/Closeable;)V

    .line 230
    throw v1
.end method

.method public static loadTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;I)I
    .locals 2
    .parameter "gl"
    .parameter "context"
    .parameter "bitmapResource"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    invoke-static {p1, p2}, Lorg/tf/gl/GLHelpers;->loadBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 164
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {p0, v0}, Lorg/tf/gl/GLHelpers;->loadTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;)I

    move-result v1

    .line 165
    .local v1, texture:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 166
    return v1
.end method

.method public static loadTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;)I
    .locals 6
    .parameter "gl"
    .parameter "bitmap"

    .prologue
    const/4 v5, 0x0

    const v4, 0x47012f00

    const v3, 0x46180400

    const/16 v2, 0xde1

    .line 234
    invoke-static {p0}, Lorg/tf/gl/GLHelpers;->generateTexture(Ljavax/microedition/khronos/opengles/GL10;)I

    move-result v0

    .line 235
    .local v0, texture:I
    invoke-interface {p0, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 238
    const/16 v1, 0x2801

    .line 236
    invoke-interface {p0, v2, v1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 241
    const/16 v1, 0x2800

    .line 239
    invoke-interface {p0, v2, v1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 244
    const/16 v1, 0x2802

    .line 242
    invoke-interface {p0, v2, v1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 247
    const/16 v1, 0x2803

    .line 245
    invoke-interface {p0, v2, v1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 251
    invoke-static {v2, v5, p1, v5}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 252
    return v0
.end method

.method public static multiplyColor(IF)I
    .locals 4
    .parameter "color"
    .parameter "factor"

    .prologue
    .line 123
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 124
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Lorg/tf/util/MathHelpers;->round(F)I

    move-result v1

    .line 125
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-static {v2}, Lorg/tf/util/MathHelpers;->round(F)I

    move-result v2

    .line 126
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    invoke-static {v3}, Lorg/tf/util/MathHelpers;->round(F)I

    move-result v3

    .line 122
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public static setColor(Ljavax/microedition/khronos/opengles/GL10;IF)V
    .locals 5
    .parameter "gl"
    .parameter "color"
    .parameter "alpha"

    .prologue
    const/high16 v4, 0x437f

    .line 113
    .line 114
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    .line 115
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    .line 116
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    .line 117
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    div-float/2addr v3, v4

    .line 113
    invoke-interface {p0, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 119
    return-void
.end method

.method public static setMultipliedColor(Ljavax/microedition/khronos/opengles/GL10;IF)V
    .locals 5
    .parameter "gl"
    .parameter "color"
    .parameter "factor"

    .prologue
    const/high16 v4, 0x437f

    .line 130
    .line 131
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    div-float/2addr v0, v4

    .line 132
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    div-float/2addr v1, v4

    .line 133
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    div-float/2addr v2, v4

    .line 134
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    .line 130
    invoke-interface {p0, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 136
    return-void
.end method

.method public static setViewport(Ljavax/microedition/khronos/opengles/GL10;FFFF)V
    .locals 4
    .parameter "gl"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v3, 0x3f00

    .line 106
    .line 107
    add-float v0, p1, v3

    float-to-int v0, v0

    add-float v1, p2, v3

    float-to-int v1, v1

    .line 108
    add-float v2, p3, v3

    float-to-int v2, v2

    add-float/2addr v3, p4

    float-to-int v3, v3

    .line 106
    invoke-interface {p0, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 110
    return-void
.end method
