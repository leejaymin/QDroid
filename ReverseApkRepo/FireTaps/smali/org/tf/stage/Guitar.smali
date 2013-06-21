.class Lorg/tf/stage/Guitar;
.super Ljava/lang/Object;
.source "Guitar.java"


# static fields
.field private static final BAR_WIDTH:F = 0.05f

.field private static final BEATS_AHEAD:I = 0x5

.field private static final BOARD_LENGTH:F = 14.0f

.field private static final BOARD_LENGTH_AHEAD:F = 14.0f

.field private static final FOG_COLOR:[F = null

.field private static final FOV_Y:I = 0x3c

.field private static final NOTE_HEAD_SIZE:F = 0.25f

.field private static final NOTE_SLIP_COLOR_FACTOR:F = 0.3f

.field private static final NOTE_TAIL_WIDTH:F = 0.15f

.field private static final SADDLE_OFFSET:F = 0.0f

#the value of this static final field might be set in the static constructor
.field public static final STRING_0:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final STRING_1:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final STRING_2:I = 0x0

.field private static final STRING_SPACE:F = 1.0f

.field private static final STRING_WIDTH:F = 0.05f

.field private static final WAVEFORM_HEAD_HEIGHT:F = 0.1f

.field private static final WAVEFORM_HEAD_WIDTH:F = 1.0f

.field private static final WAVEFORM_LENGTH:F = 20.0f

.field private static final WAVEFORM_LENGTH_FACTOR:F = 18.0f

.field private static final WAVEFORM_POINTS:I = 0x8

.field private static final WAVEFORM_POSITION_SPEEDUP:F = 2.0f

.field private static final WAVEFORM_TAIL_HEIGHT:F = 0.7f

.field private static final WAVEFORM_TAIL_WIDTH:F = 0.15f

.field private static final WAVEFORM_WIDTH_SCALE_1:F = 2.0f

.field private static final WAVEFORM_WIDTH_SCALE_2:F = 0.3f


# instance fields
.field private m_activeStrings:I

.field private m_barTexture:I

.field private m_bpm:F

.field private m_lookCenter:[F

.field private m_lookEye:[F

.field private m_modelviewMatrix:[F

.field private m_noteMesh:Lorg/tf/gl/mesh/Mesh;

.field private m_position:I

.field private m_projectionMatrix:[F

.field private m_readiness:F

.field private m_song:Lorg/tf/song/Song;

.field private m_stringTexture:I

.field private m_viewport:Lorg/tf/gl/GLRect;

.field private m_waveformTexcoords:Lorg/tf/gl/GLBufferObject;

.field private m_waveformTexture:I

.field private m_waveformVertices:Lorg/tf/gl/GLBufferObject;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 140
    invoke-static {v1, v1}, Lorg/tf/stage/Guitar;->stringsAdd(II)I

    move-result v0

    sput v0, Lorg/tf/stage/Guitar;->STRING_0:I

    .line 141
    const/4 v0, 0x1

    invoke-static {v1, v0}, Lorg/tf/stage/Guitar;->stringsAdd(II)I

    move-result v0

    sput v0, Lorg/tf/stage/Guitar;->STRING_1:I

    .line 142
    const/4 v0, 0x2

    invoke-static {v1, v0}, Lorg/tf/stage/Guitar;->stringsAdd(II)I

    move-result v0

    sput v0, Lorg/tf/stage/Guitar;->STRING_2:I

    .line 552
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lorg/tf/stage/Guitar;->FOG_COLOR:[F

    .line 37
    return-void

    .line 552
    :array_0
    .array-data 0x4
        0xcdt 0xcct 0xcct 0x3dt
        0xcdt 0xcct 0xcct 0x3dt
        0xcdt 0xcct 0xcct 0x3dt
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public constructor <init>(Lorg/tf/song/Song;)V
    .locals 3
    .parameter "song"

    .prologue
    const/16 v2, 0x10

    const/4 v1, 0x3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 522
    new-array v0, v2, [F

    iput-object v0, p0, Lorg/tf/stage/Guitar;->m_projectionMatrix:[F

    .line 523
    new-array v0, v2, [F

    iput-object v0, p0, Lorg/tf/stage/Guitar;->m_modelviewMatrix:[F

    .line 525
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/tf/stage/Guitar;->m_lookEye:[F

    .line 526
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lorg/tf/stage/Guitar;->m_lookCenter:[F

    .line 40
    iput-object p1, p0, Lorg/tf/stage/Guitar;->m_song:Lorg/tf/song/Song;

    .line 41
    return-void

    .line 525
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x40t 0x40t
        0x0t 0x0t 0x80t 0xbft
    .end array-data

    .line 526
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x40t
    .end array-data
.end method

.method private drawWaveform(Ljavax/microedition/khronos/opengles/GL10;FFI)V
    .locals 7
    .parameter "gl"
    .parameter "length"
    .parameter "position"
    .parameter "color"

    .prologue
    const/4 v6, 0x5

    const/high16 v5, 0x4000

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    .line 482
    mul-float/2addr p3, v5

    .line 483
    const/16 v0, 0x302

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 484
    const/16 v0, 0xde1

    iget v1, p0, Lorg/tf/stage/Guitar;->m_waveformTexture:I

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 485
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 487
    const/16 v0, 0x1702

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 488
    neg-float v0, p3

    const/high16 v1, 0x41a0

    div-float/2addr v0, v1

    invoke-interface {p1, v4, v0, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 489
    const/high16 v0, 0x4190

    div-float v0, p2, v0

    invoke-interface {p1, v2, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 490
    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 492
    invoke-interface {p1, v5, v2, p2}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 493
    iget v0, p0, Lorg/tf/stage/Guitar;->m_readiness:F

    invoke-static {p1, p4, v0}, Lorg/tf/gl/GLHelpers;->setColor(Ljavax/microedition/khronos/opengles/GL10;IF)V

    .line 494
    iget-object v0, p0, Lorg/tf/stage/Guitar;->m_waveformTexcoords:Lorg/tf/gl/GLBufferObject;

    invoke-virtual {v0, p1}, Lorg/tf/gl/GLBufferObject;->set(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 495
    iget-object v0, p0, Lorg/tf/stage/Guitar;->m_waveformVertices:Lorg/tf/gl/GLBufferObject;

    invoke-virtual {v0, p1}, Lorg/tf/gl/GLBufferObject;->set(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 496
    const/16 v0, 0x8

    invoke-interface {p1, v6, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 498
    const v0, 0x3e99999a

    invoke-interface {p1, v0, v2, v2}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 499
    const/4 v0, -0x1

    invoke-static {p1, v0, v2}, Lorg/tf/gl/GLHelpers;->setColor(Ljavax/microedition/khronos/opengles/GL10;IF)V

    .line 500
    iget-object v0, p0, Lorg/tf/stage/Guitar;->m_waveformTexcoords:Lorg/tf/gl/GLBufferObject;

    invoke-virtual {v0, p1}, Lorg/tf/gl/GLBufferObject;->set(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 501
    iget-object v0, p0, Lorg/tf/stage/Guitar;->m_waveformVertices:Lorg/tf/gl/GLBufferObject;

    invoke-virtual {v0, p1}, Lorg/tf/gl/GLBufferObject;->set(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 502
    const/16 v0, 0x8

    invoke-interface {p1, v6, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 504
    const/16 v0, 0x1702

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 505
    sget-object v0, Lorg/tf/gl/GLHelpers;->IDENTITY_MATRIX:[F

    invoke-interface {p1, v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf([FI)V

    .line 507
    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 508
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 509
    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 510
    return-void
.end method

.method private loadWaveformResources(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 13
    .parameter "context"
    .parameter "gl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v12, 0x3e99999a

    const v11, 0x3dcccccd

    const/high16 v10, -0x4100

    const/high16 v9, 0x3f00

    const/4 v8, 0x0

    .line 436
    const v5, 0x7f020023

    invoke-static {p2, p1, v5}, Lorg/tf/gl/GLHelpers;->loadTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;I)I

    move-result v5

    iput v5, p0, Lorg/tf/stage/Guitar;->m_waveformTexture:I

    .line 437
    const/16 v5, 0xde1

    const/16 v6, 0x2802

    const v7, 0x46240400

    invoke-interface {p2, v5, v6, v7}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 438
    const/16 v5, 0xde1

    const/16 v6, 0x2803

    const v7, 0x46240400

    invoke-interface {p2, v5, v6, v7}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 440
    iget-object v5, p0, Lorg/tf/stage/Guitar;->m_waveformVertices:Lorg/tf/gl/GLBufferObject;

    if-nez v5, :cond_0

    .line 441
    const/16 v5, 0x18

    invoke-static {v5}, Lorg/tf/gl/GLHelpers;->allocateFloatBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 443
    .local v2, vertices:Ljava/nio/ByteBuffer;
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 444
    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 445
    invoke-virtual {v5, v9}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 446
    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 447
    invoke-virtual {v5, v9}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 448
    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 449
    const v6, 0x3d99999a

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v5

    const/high16 v6, 0x3f80

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 450
    const v6, -0x42666666

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v5

    const/high16 v6, 0x3f80

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 452
    const/16 v5, 0x10

    invoke-static {v5}, Lorg/tf/gl/GLHelpers;->allocateFloatBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 454
    .local v1, texcoords:Ljava/nio/ByteBuffer;
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 455
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v5, 0x8

    if-ne v0, v5, :cond_1

    .line 463
    const/4 v5, 0x3

    const/16 v6, 0x1406

    invoke-static {v5, v6, v2}, Lorg/tf/gl/GLBufferObject;->createVertices(IILjava/nio/ByteBuffer;)Lorg/tf/gl/GLBufferObject;

    move-result-object v5

    iput-object v5, p0, Lorg/tf/stage/Guitar;->m_waveformVertices:Lorg/tf/gl/GLBufferObject;

    .line 464
    const/4 v5, 0x2

    const/16 v6, 0x1406

    invoke-static {v5, v6, v1}, Lorg/tf/gl/GLBufferObject;->createTexcoords(IILjava/nio/ByteBuffer;)Lorg/tf/gl/GLBufferObject;

    move-result-object v5

    iput-object v5, p0, Lorg/tf/stage/Guitar;->m_waveformTexcoords:Lorg/tf/gl/GLBufferObject;

    .line 466
    .end local v0           #i:I
    .end local v1           #texcoords:Ljava/nio/ByteBuffer;
    .end local v2           #vertices:Ljava/nio/ByteBuffer;
    :cond_0
    iget-object v5, p0, Lorg/tf/stage/Guitar;->m_waveformVertices:Lorg/tf/gl/GLBufferObject;

    invoke-virtual {v5, p2}, Lorg/tf/gl/GLBufferObject;->bind(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 467
    iget-object v5, p0, Lorg/tf/stage/Guitar;->m_waveformTexcoords:Lorg/tf/gl/GLBufferObject;

    invoke-virtual {v5, p2}, Lorg/tf/gl/GLBufferObject;->bind(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 468
    return-void

    .line 456
    .restart local v0       #i:I
    .restart local v1       #texcoords:Ljava/nio/ByteBuffer;
    .restart local v2       #vertices:Ljava/nio/ByteBuffer;
    :cond_1
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v3

    .line 457
    .local v3, x:F
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getFloat()F

    .line 458
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v4

    .line 459
    .local v4, z:F
    neg-float v5, v3

    add-float/2addr v5, v9

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 460
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 455
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private lookAtBoard(FFFF)V
    .locals 22
    .parameter "fovy"
    .parameter "aspect"
    .parameter "boardWidth"
    .parameter "boardLength"

    .prologue
    .line 205
    const/high16 v2, 0x4000

    div-float v2, p1, v2

    float-to-double v2, v2

    const-wide v4, 0x3f91df46a2529d39L

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    move-wide v0, v2

    double-to-float v0, v0

    move/from16 v20, v0

    .line 206
    .local v20, tgA2:F
    move/from16 v0, p1

    float-to-double v0, v0

    move-wide v2, v0

    const-wide v4, 0x3f91df46a2529d39L

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    move-wide v0, v2

    double-to-float v0, v0

    move/from16 v19, v0

    .line 208
    .local v19, sinA:F
    const/high16 v2, 0x4000

    mul-float v2, v2, v20

    mul-float v2, v2, p2

    div-float v12, p3, v2

    .line 209
    .local v12, K:F
    mul-float v2, v12, v19

    div-float v13, p4, v2

    .line 213
    .local v13, R:F
    mul-float v14, v13, v13

    .line 214
    .local v14, a:F
    const/high16 v2, 0x4000

    mul-float v15, v2, p4

    .line 215
    .local v15, b:F
    mul-float v2, v12, v12

    mul-float v3, p4, p4

    add-float/2addr v2, v3

    mul-float v3, v13, v13

    mul-float/2addr v3, v12

    mul-float/2addr v3, v12

    sub-float v16, v2, v3

    .line 216
    .local v16, c:F
    mul-float v2, v15, v15

    const/high16 v3, 0x4080

    mul-float/2addr v3, v14

    mul-float v3, v3, v16

    sub-float v17, v2, v3

    .line 217
    .local v17, d:F
    invoke-static/range {v17 .. v17}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v17

    .line 218
    neg-float v2, v15

    add-float v2, v2, v17

    const/high16 v3, 0x4000

    mul-float/2addr v3, v14

    div-float v18, v2, v3

    .line 221
    .local v18, eyeZ:F
    mul-float v2, v12, v12

    mul-float v3, v18, v18

    sub-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v4

    .line 223
    .local v4, eyeY:F
    div-float v21, v18, v4

    .line 224
    .local v21, tgO:F
    add-float v2, v21, v20

    mul-float/2addr v2, v4

    const/high16 v3, 0x3f80

    mul-float v5, v21, v20

    sub-float/2addr v3, v5

    div-float/2addr v2, v3

    sub-float v8, v2, v18

    .line 226
    .local v8, centerZ:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/tf/stage/Guitar;->m_modelviewMatrix:[F

    move-object v2, v0

    const/4 v3, 0x0

    move/from16 v0, v18

    neg-float v0, v0

    move v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f80

    const/4 v11, 0x0

    invoke-static/range {v2 .. v11}, Lorg/tf/gl/ReGLU;->gluLookAt([FFFFFFFFFF)V

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/tf/stage/Guitar;->m_lookEye:[F

    move-object v2, v0

    const/4 v3, 0x1

    aput v4, v2, v3

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/tf/stage/Guitar;->m_lookEye:[F

    move-object v2, v0

    const/4 v3, 0x2

    move/from16 v0, v18

    neg-float v0, v0

    move v4, v0

    aput v4, v2, v3

    .line 229
    .end local v4           #eyeY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/tf/stage/Guitar;->m_lookCenter:[F

    move-object v2, v0

    const/4 v3, 0x2

    aput v8, v2, v3

    .line 230
    return-void
.end method

.method private renderBoard(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 14
    .parameter "gl"

    .prologue
    const/high16 v13, 0x4160

    const/high16 v12, 0x3f00

    const v11, 0x3d4ccccd

    const/high16 v10, 0x3f80

    const/4 v9, 0x0

    .line 149
    const v7, 0x476a6000

    iget v8, p0, Lorg/tf/stage/Guitar;->m_bpm:F

    div-float v0, v7, v8

    .line 150
    .local v0, beatPeriod:F
    const/high16 v7, 0x40a0

    mul-float/2addr v7, v0

    div-float v5, v13, v7

    .line 152
    .local v5, timeToUnits:F
    invoke-static {}, Lorg/tf/Config;->getBaseColor()I

    move-result v7

    iget v8, p0, Lorg/tf/stage/Guitar;->m_readiness:F

    invoke-static {p1, v7, v8}, Lorg/tf/gl/GLHelpers;->setColor(Ljavax/microedition/khronos/opengles/GL10;IF)V

    .line 155
    const/16 v7, 0xde1

    iget v8, p0, Lorg/tf/stage/Guitar;->m_stringTexture:I

    invoke-interface {p1, v7, v8}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 156
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 157
    invoke-interface {p1, v11, v10, v13}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 158
    const/high16 v7, 0x41a0

    invoke-interface {p1, v7, v9, v12}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 160
    const/4 v4, 0x0

    .local v4, string:I
    :goto_0
    const/4 v7, 0x3

    if-ne v4, v7, :cond_1

    .line 172
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 176
    const/16 v7, 0xde1

    iget v8, p0, Lorg/tf/stage/Guitar;->m_barTexture:I

    invoke-interface {p1, v7, v8}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 177
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 179
    const/4 v1, 0x6

    .line 180
    .local v1, beatsAhead:I
    iget v7, p0, Lorg/tf/stage/Guitar;->m_position:I

    int-to-float v7, v7

    rem-float/2addr v7, v0

    mul-float v6, v7, v5

    .line 181
    .local v6, z:F
    cmpg-float v7, v6, v9

    if-gez v7, :cond_4

    .line 182
    neg-float v6, v6

    .line 186
    :goto_1
    cmpl-float v7, v6, v11

    if-lez v7, :cond_0

    .line 187
    add-int/lit8 v1, v1, -0x1

    .line 189
    :cond_0
    add-float v7, v6, v9

    invoke-interface {p1, v9, v9, v7}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 191
    const/high16 v7, 0x4020

    .line 190
    invoke-interface {p1, v7, v10, v11}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 194
    mul-float v7, v0, v5

    div-float v2, v7, v11

    .line 195
    .local v2, dz:F
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ne v3, v1, :cond_5

    .line 200
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 202
    return-void

    .line 161
    .end local v1           #beatsAhead:I
    .end local v2           #dz:F
    .end local v3           #i:I
    .end local v6           #z:F
    :cond_1
    iget v7, p0, Lorg/tf/stage/Guitar;->m_activeStrings:I

    invoke-static {v7, v4}, Lorg/tf/stage/Guitar;->stringsCheck(II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 162
    const/high16 v7, 0x4000

    invoke-interface {p1, v7, v10, v10}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 164
    :cond_2
    invoke-static {p1}, Lorg/tf/gl/GLHelpers;->drawTextureXZ(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 165
    iget v7, p0, Lorg/tf/stage/Guitar;->m_activeStrings:I

    invoke-static {v7, v4}, Lorg/tf/stage/Guitar;->stringsCheck(II)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 166
    invoke-interface {p1, v12, v10, v10}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 168
    :cond_3
    const/high16 v7, -0x3e60

    invoke-interface {p1, v7, v9, v9}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 160
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 184
    .restart local v1       #beatsAhead:I
    .restart local v6       #z:F
    :cond_4
    mul-float v7, v0, v5

    sub-float v6, v7, v6

    goto :goto_1

    .line 196
    .restart local v2       #dz:F
    .restart local v3       #i:I
    :cond_5
    invoke-static {p1}, Lorg/tf/gl/GLHelpers;->drawTextureLineX(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 197
    invoke-interface {p1, v9, v9, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 195
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private renderNotes(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 28
    .parameter "gl"

    .prologue
    .line 303
    const v24, 0x476a6000

    move-object/from16 v0, p0

    iget v0, v0, Lorg/tf/stage/Guitar;->m_bpm:F

    move/from16 v25, v0

    div-float v5, v24, v25

    .line 304
    .local v5, beatPeriod:F
    const/high16 v24, 0x4160

    const/high16 v25, 0x40a0

    mul-float v25, v25, v5

    div-float v21, v24, v25

    .line 306
    .local v21, timeToUnits:F
    const/16 v24, 0xde1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/tf/stage/Guitar;->m_stringTexture:I

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 307
    invoke-static/range {p1 .. p1}, Lorg/tf/gl/GLHelpers;->beginDrawTextureXZ(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 308
    const/16 v20, 0x0

    .local v20, string:I
    :goto_0
    const/16 v24, 0x3

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 349
    const/16 v24, 0xde1

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 350
    const v24, 0x8074

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 351
    const v24, 0x8078

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 353
    const/16 v24, 0xb44

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 354
    const/16 v24, 0x901

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 355
    const/16 v24, 0xb57

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/tf/stage/Guitar;->m_noteMesh:Lorg/tf/gl/mesh/Mesh;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/tf/gl/mesh/Mesh;->beginRender(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 358
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 359
    const/high16 v24, 0x3e80

    const/high16 v25, 0x3e80

    const/high16 v26, 0x3e80

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 361
    const/4 v10, 0x0

    .line 362
    .local v10, lastX:F
    const/4 v11, 0x0

    .line 363
    .local v11, lastZ:F
    const/16 v20, 0x0

    :goto_1
    const/16 v24, 0x3

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    .line 388
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/tf/stage/Guitar;->m_noteMesh:Lorg/tf/gl/mesh/Mesh;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/tf/gl/mesh/Mesh;->endRender(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 391
    const/16 v24, 0xb57

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 392
    const/16 v24, 0xb44

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 394
    const/16 v24, 0xde1

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 395
    const v24, 0x8074

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 396
    const v24, 0x8078

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 398
    return-void

    .line 309
    .end local v10           #lastX:F
    .end local v11           #lastZ:F
    :cond_0
    invoke-static/range {v20 .. v20}, Lorg/tf/Config;->getStringColor(I)I

    move-result v7

    .line 310
    .local v7, color:I
    const/high16 v24, 0x3f80

    const/16 v25, 0x2

    mul-int/lit8 v26, v20, 0x2

    sub-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v24, v24, v25

    const/high16 v25, 0x4000

    div-float v22, v24, v25

    .line 312
    .local v22, x:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/tf/stage/Guitar;->m_song:Lorg/tf/song/Song;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/tf/song/Song;->getNoteEvents(I)Lorg/tf/song/EventList;

    move-result-object v14

    .line 314
    .local v14, notes:Lorg/tf/song/EventList;,"Lorg/tf/song/EventList<Lorg/tf/song/NoteEvent;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lorg/tf/stage/Guitar;->m_position:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x0

    mul-float v25, v25, v5

    const/high16 v26, 0x4160

    div-float v25, v25, v26

    const/high16 v26, 0x40a0

    mul-float v25, v25, v26

    sub-float v24, v24, v25

    .line 315
    move-object/from16 v0, p0

    iget v0, v0, Lorg/tf/stage/Guitar;->m_position:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    const/high16 v26, 0x40a0

    mul-float v26, v26, v5

    add-float v25, v25, v26

    .line 313
    move-object v0, v14

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/tf/song/EventList;->range(FF)J

    move-result-wide v16

    .line 316
    .local v16, range:J
    invoke-static/range {v16 .. v17}, Lorg/tf/song/EventList;->rangeBegin(J)I

    move-result v18

    .line 317
    .local v18, rangeBegin:I
    invoke-static/range {v16 .. v17}, Lorg/tf/song/EventList;->rangeEnd(J)I

    move-result v19

    .line 318
    .local v19, rangeEnd:I
    move/from16 v9, v18

    .local v9, i:I
    :goto_2
    move v0, v9

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 308
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_0

    .line 319
    :cond_1
    invoke-virtual {v14, v9}, Lorg/tf/song/EventList;->get(I)Lorg/tf/song/Event;

    move-result-object v13

    check-cast v13, Lorg/tf/song/NoteEvent;

    .line 320
    .local v13, note:Lorg/tf/song/NoteEvent;
    const/16 v24, 0x0

    invoke-virtual {v13}, Lorg/tf/song/NoteEvent;->getTime()F

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lorg/tf/stage/Guitar;->m_position:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    sub-float v25, v25, v26

    mul-float v25, v25, v21

    add-float v23, v24, v25

    .line 321
    .local v23, z:F
    const/16 v24, 0x0

    cmpg-float v24, v23, v24

    if-gtz v24, :cond_4

    const/16 v24, 0x1

    move/from16 v6, v24

    .line 322
    .local v6, behindSaddle:Z
    :goto_3
    invoke-virtual {v13}, Lorg/tf/song/NoteEvent;->getLength()F

    move-result v24

    mul-float v12, v24, v21

    .line 324
    .local v12, length:F
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 325
    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v24

    move/from16 v3, v23

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 326
    const v24, 0x3e19999a

    const/high16 v25, 0x3f80

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    move v3, v12

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 327
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/high16 v26, 0x3f00

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 329
    if-eqz v6, :cond_2

    invoke-virtual {v13}, Lorg/tf/song/NoteEvent;->isUnpicked()Z

    move-result v24

    if-eqz v24, :cond_5

    .line 330
    :cond_2
    const/high16 v24, 0x3f80

    move/from16 v8, v24

    .line 332
    .local v8, factor:F
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lorg/tf/stage/Guitar;->m_readiness:F

    move/from16 v24, v0

    mul-float v24, v24, v8

    move-object/from16 v0, p1

    move v1, v7

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Lorg/tf/gl/GLHelpers;->setColor(Ljavax/microedition/khronos/opengles/GL10;IF)V

    .line 334
    invoke-static/range {p1 .. p1}, Lorg/tf/gl/GLHelpers;->doDrawTextureXZ(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 335
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 337
    if-eqz v6, :cond_3

    invoke-virtual {v13}, Lorg/tf/song/NoteEvent;->isPicked()Z

    move-result v24

    if-eqz v24, :cond_3

    .line 338
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 339
    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v24

    move/from16 v3, v23

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 340
    move-object/from16 v0, p0

    iget v0, v0, Lorg/tf/stage/Guitar;->m_position:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    invoke-virtual {v13}, Lorg/tf/song/NoteEvent;->getString()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    invoke-virtual {v13}, Lorg/tf/song/NoteEvent;->getTime()F

    move-result v26

    mul-float v25, v25, v26

    add-float v15, v24, v25

    .line 341
    .local v15, position:F
    mul-float v24, v15, v21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move/from16 v3, v24

    move v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/tf/stage/Guitar;->drawWaveform(Ljavax/microedition/khronos/opengles/GL10;FFI)V

    .line 342
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 343
    const/16 v24, 0xde1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/tf/stage/Guitar;->m_stringTexture:I

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 344
    invoke-static/range {p1 .. p1}, Lorg/tf/gl/GLHelpers;->beginDrawTextureXZ(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 318
    .end local v15           #position:F
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 321
    .end local v6           #behindSaddle:Z
    .end local v8           #factor:F
    .end local v12           #length:F
    :cond_4
    const/16 v24, 0x0

    move/from16 v6, v24

    goto/16 :goto_3

    .line 331
    .restart local v6       #behindSaddle:Z
    .restart local v12       #length:F
    :cond_5
    const v24, 0x3e99999a

    move/from16 v8, v24

    goto :goto_4

    .line 364
    .end local v6           #behindSaddle:Z
    .end local v7           #color:I
    .end local v9           #i:I
    .end local v12           #length:F
    .end local v13           #note:Lorg/tf/song/NoteEvent;
    .end local v14           #notes:Lorg/tf/song/EventList;,"Lorg/tf/song/EventList<Lorg/tf/song/NoteEvent;>;"
    .end local v16           #range:J
    .end local v18           #rangeBegin:I
    .end local v19           #rangeEnd:I
    .end local v22           #x:F
    .end local v23           #z:F
    .restart local v10       #lastX:F
    .restart local v11       #lastZ:F
    :cond_6
    invoke-static/range {v20 .. v20}, Lorg/tf/Config;->getStringColor(I)I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lorg/tf/stage/Guitar;->m_readiness:F

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Lorg/tf/gl/GLHelpers;->setColor(Ljavax/microedition/khronos/opengles/GL10;IF)V

    .line 365
    const/high16 v24, 0x3f80

    const/16 v25, 0x2

    mul-int/lit8 v26, v20, 0x2

    sub-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v24, v24, v25

    const/high16 v25, 0x4000

    div-float v22, v24, v25

    .line 367
    .restart local v22       #x:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/tf/stage/Guitar;->m_song:Lorg/tf/song/Song;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/tf/song/Song;->getNoteEvents(I)Lorg/tf/song/EventList;

    move-result-object v14

    .line 369
    .restart local v14       #notes:Lorg/tf/song/EventList;,"Lorg/tf/song/EventList<Lorg/tf/song/NoteEvent;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lorg/tf/stage/Guitar;->m_position:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x0

    mul-float v25, v25, v5

    const/high16 v26, 0x4160

    div-float v25, v25, v26

    const/high16 v26, 0x40a0

    mul-float v25, v25, v26

    sub-float v24, v24, v25

    .line 370
    move-object/from16 v0, p0

    iget v0, v0, Lorg/tf/stage/Guitar;->m_position:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    const/high16 v26, 0x40a0

    mul-float v26, v26, v5

    add-float v25, v25, v26

    .line 368
    move-object v0, v14

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/tf/song/EventList;->range(FF)J

    move-result-wide v16

    .line 371
    .restart local v16       #range:J
    invoke-static/range {v16 .. v17}, Lorg/tf/song/EventList;->rangeBegin(J)I

    move-result v18

    .line 372
    .restart local v18       #rangeBegin:I
    invoke-static/range {v16 .. v17}, Lorg/tf/song/EventList;->rangeEnd(J)I

    move-result v19

    .line 373
    .restart local v19       #rangeEnd:I
    move/from16 v9, v18

    .restart local v9       #i:I
    :goto_5
    move v0, v9

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 363
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_1

    .line 374
    :cond_7
    invoke-virtual {v14, v9}, Lorg/tf/song/EventList;->get(I)Lorg/tf/song/Event;

    move-result-object v13

    check-cast v13, Lorg/tf/song/NoteEvent;

    .line 375
    .restart local v13       #note:Lorg/tf/song/NoteEvent;
    const/16 v24, 0x0

    invoke-virtual {v13}, Lorg/tf/song/NoteEvent;->getTime()F

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lorg/tf/stage/Guitar;->m_position:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    sub-float v25, v25, v26

    mul-float v25, v25, v21

    add-float v23, v24, v25

    .line 376
    .restart local v23       #z:F
    const/16 v24, 0x0

    cmpg-float v24, v23, v24

    if-gtz v24, :cond_8

    .line 373
    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 380
    :cond_8
    sub-float v24, v22, v10

    const/high16 v25, 0x3e80

    div-float v24, v24, v25

    const/16 v25, 0x0

    sub-float v26, v23, v11

    const/high16 v27, 0x3e80

    div-float v26, v26, v27

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/tf/stage/Guitar;->m_noteMesh:Lorg/tf/gl/mesh/Mesh;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/tf/gl/mesh/Mesh;->renderGeometry(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 383
    move/from16 v10, v22

    .line 384
    move/from16 v11, v23

    goto :goto_6
.end method

.method public static final stringsAdd(II)I
    .locals 1
    .parameter "strings"
    .parameter "string"

    .prologue
    .line 131
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    or-int/2addr v0, p0

    return v0
.end method

.method public static final stringsCheck(II)Z
    .locals 2
    .parameter "strings"
    .parameter "string"

    .prologue
    const/4 v1, 0x1

    .line 137
    shl-int v0, v1, p1

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final stringsRemove(II)I
    .locals 1
    .parameter "strings"
    .parameter "string"

    .prologue
    .line 134
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p1

    return v0
.end method

.method private unloadWaveformResources(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .parameter "gl"

    .prologue
    .line 471
    iget v0, p0, Lorg/tf/stage/Guitar;->m_waveformTexture:I

    if-eqz v0, :cond_1

    .line 472
    if-eqz p1, :cond_0

    .line 473
    iget v0, p0, Lorg/tf/stage/Guitar;->m_waveformTexture:I

    invoke-static {p1, v0}, Lorg/tf/gl/GLHelpers;->deleteTexture(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 475
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/tf/stage/Guitar;->m_waveformTexture:I

    .line 477
    :cond_1
    iget-object v0, p0, Lorg/tf/stage/Guitar;->m_waveformVertices:Lorg/tf/gl/GLBufferObject;

    invoke-virtual {v0, p1}, Lorg/tf/gl/GLBufferObject;->unbind(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 478
    iget-object v0, p0, Lorg/tf/stage/Guitar;->m_waveformTexcoords:Lorg/tf/gl/GLBufferObject;

    invoke-virtual {v0, p1}, Lorg/tf/gl/GLBufferObject;->unbind(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 479
    return-void
.end method


# virtual methods
.method public loadResources(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3
    .parameter "context"
    .parameter "gl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Lorg/tf/gl/mesh/Mesh;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "note.mesh"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lorg/tf/gl/mesh/Mesh;-><init>(Ljavax/microedition/khronos/opengles/GL10;Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/tf/stage/Guitar;->m_noteMesh:Lorg/tf/gl/mesh/Mesh;

    .line 62
    const v0, 0x7f02001a

    invoke-static {p2, p1, v0}, Lorg/tf/gl/GLHelpers;->loadTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lorg/tf/stage/Guitar;->m_stringTexture:I

    .line 63
    const/high16 v0, 0x7f02

    invoke-static {p2, p1, v0}, Lorg/tf/gl/GLHelpers;->loadTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lorg/tf/stage/Guitar;->m_barTexture:I

    .line 64
    invoke-direct {p0, p1, p2}, Lorg/tf/stage/Guitar;->loadWaveformResources(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;)V

    .line 65
    return-void
.end method

.method public render(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5
    .parameter "gl"

    .prologue
    const/4 v4, 0x0

    .line 100
    .line 101
    iget-object v0, p0, Lorg/tf/stage/Guitar;->m_viewport:Lorg/tf/gl/GLRect;

    iget v0, v0, Lorg/tf/gl/GLRect;->x:F

    iget-object v1, p0, Lorg/tf/stage/Guitar;->m_viewport:Lorg/tf/gl/GLRect;

    iget v1, v1, Lorg/tf/gl/GLRect;->y:F

    .line 102
    iget-object v2, p0, Lorg/tf/stage/Guitar;->m_viewport:Lorg/tf/gl/GLRect;

    iget v2, v2, Lorg/tf/gl/GLRect;->width:F

    iget-object v3, p0, Lorg/tf/stage/Guitar;->m_viewport:Lorg/tf/gl/GLRect;

    iget v3, v3, Lorg/tf/gl/GLRect;->height:F

    .line 99
    invoke-static {p1, v0, v1, v2, v3}, Lorg/tf/gl/GLHelpers;->setViewport(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 104
    const/16 v0, 0x1701

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 105
    iget-object v0, p0, Lorg/tf/stage/Guitar;->m_projectionMatrix:[F

    invoke-interface {p1, v0, v4}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf([FI)V

    .line 107
    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 108
    iget-object v0, p0, Lorg/tf/stage/Guitar;->m_modelviewMatrix:[F

    invoke-interface {p1, v0, v4}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf([FI)V

    .line 112
    const/16 v0, 0xb66

    sget-object v1, Lorg/tf/stage/Guitar;->FOG_COLOR:[F

    invoke-interface {p1, v0, v1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glFogfv(I[FI)V

    .line 113
    const/16 v0, 0xb63

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glFogf(IF)V

    .line 114
    const/16 v0, 0xb64

    const/high16 v1, 0x4160

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glFogf(IF)V

    .line 115
    const/16 v0, 0xb65

    const/16 v1, 0x2601

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glFogx(II)V

    .line 119
    invoke-direct {p0, p1}, Lorg/tf/stage/Guitar;->renderBoard(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 120
    invoke-direct {p0, p1}, Lorg/tf/stage/Guitar;->renderNotes(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 124
    const/16 v0, 0xb60

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 126
    return-void
.end method

.method public setActiveStrings(I)V
    .locals 0
    .parameter "strings"

    .prologue
    .line 46
    iput p1, p0, Lorg/tf/stage/Guitar;->m_activeStrings:I

    .line 47
    return-void
.end method

.method public setPosition(IF)V
    .locals 0
    .parameter "position"
    .parameter "bpm"

    .prologue
    .line 54
    iput p1, p0, Lorg/tf/stage/Guitar;->m_position:I

    .line 55
    iput p2, p0, Lorg/tf/stage/Guitar;->m_bpm:F

    .line 56
    return-void
.end method

.method public setReadiness(F)V
    .locals 0
    .parameter "readiness"

    .prologue
    .line 50
    iput p1, p0, Lorg/tf/stage/Guitar;->m_readiness:F

    .line 51
    return-void
.end method

.method public setViewport(Lorg/tf/gl/GLRect;)V
    .locals 5
    .parameter "viewport"

    .prologue
    const/high16 v4, 0x4270

    .line 84
    new-instance v0, Lorg/tf/gl/GLRect;

    invoke-direct {v0, p1}, Lorg/tf/gl/GLRect;-><init>(Lorg/tf/gl/GLRect;)V

    iput-object v0, p0, Lorg/tf/stage/Guitar;->m_viewport:Lorg/tf/gl/GLRect;

    .line 87
    iget-object v0, p0, Lorg/tf/stage/Guitar;->m_viewport:Lorg/tf/gl/GLRect;

    iget v0, v0, Lorg/tf/gl/GLRect;->width:F

    iget-object v1, p0, Lorg/tf/stage/Guitar;->m_viewport:Lorg/tf/gl/GLRect;

    iget v1, v1, Lorg/tf/gl/GLRect;->height:F

    div-float/2addr v0, v1

    .line 88
    const/high16 v1, 0x4040

    .line 89
    const/high16 v2, 0x4228

    .line 85
    invoke-direct {p0, v4, v0, v1, v2}, Lorg/tf/stage/Guitar;->lookAtBoard(FFFF)V

    .line 91
    iget-object v0, p0, Lorg/tf/stage/Guitar;->m_projectionMatrix:[F

    .line 93
    iget-object v1, p0, Lorg/tf/stage/Guitar;->m_viewport:Lorg/tf/gl/GLRect;

    iget v1, v1, Lorg/tf/gl/GLRect;->width:F

    iget-object v2, p0, Lorg/tf/stage/Guitar;->m_viewport:Lorg/tf/gl/GLRect;

    iget v2, v2, Lorg/tf/gl/GLRect;->height:F

    div-float/2addr v1, v2

    .line 94
    const/high16 v2, 0x3f80

    const/high16 v3, 0x42c8

    .line 90
    invoke-static {v0, v4, v1, v2, v3}, Lorg/tf/gl/ReGLU;->gluPerspective([FFFFF)V

    .line 96
    return-void
.end method

.method public unloadResources(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .parameter "gl"

    .prologue
    const/4 v1, 0x0

    .line 68
    iget v0, p0, Lorg/tf/stage/Guitar;->m_stringTexture:I

    if-eqz v0, :cond_1

    .line 69
    if-eqz p1, :cond_0

    .line 70
    iget v0, p0, Lorg/tf/stage/Guitar;->m_stringTexture:I

    invoke-static {p1, v0}, Lorg/tf/gl/GLHelpers;->deleteTexture(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 72
    :cond_0
    iput v1, p0, Lorg/tf/stage/Guitar;->m_stringTexture:I

    .line 74
    :cond_1
    iget v0, p0, Lorg/tf/stage/Guitar;->m_barTexture:I

    if-eqz v0, :cond_3

    .line 75
    if-eqz p1, :cond_2

    .line 76
    iget v0, p0, Lorg/tf/stage/Guitar;->m_barTexture:I

    invoke-static {p1, v0}, Lorg/tf/gl/GLHelpers;->deleteTexture(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 78
    :cond_2
    iput v1, p0, Lorg/tf/stage/Guitar;->m_barTexture:I

    .line 80
    :cond_3
    invoke-direct {p0, p1}, Lorg/tf/stage/Guitar;->unloadWaveformResources(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 81
    return-void
.end method
