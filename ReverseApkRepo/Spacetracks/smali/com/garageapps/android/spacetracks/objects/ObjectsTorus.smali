.class public Lcom/garageapps/android/spacetracks/objects/ObjectsTorus;
.super Ljava/lang/Object;
.source "ObjectsTorus.java"


# instance fields
.field private colorBuffer:Ljava/nio/FloatBuffer;

.field private inner:F

.field private normalBuffer:Ljava/nio/FloatBuffer;

.field private outer:F

.field private rings:I

.field private sides:I

.field private vertexBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>(FFII)V
    .locals 24
    .parameter "ir"
    .parameter "or"
    .parameter "si"
    .parameter "ri"

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/garageapps/android/spacetracks/objects/ObjectsTorus;->inner:F

    .line 34
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/garageapps/android/spacetracks/objects/ObjectsTorus;->outer:F

    .line 35
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/garageapps/android/spacetracks/objects/ObjectsTorus;->sides:I

    .line 36
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/garageapps/android/spacetracks/objects/ObjectsTorus;->rings:I

    .line 38
    move-object/from16 v0, p0

    iget v0, v0, Lcom/garageapps/android/spacetracks/objects/ObjectsTorus;->sides:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/garageapps/android/spacetracks/objects/ObjectsTorus;->rings:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    mul-int v22, v22, v23

    mul-int/lit8 v22, v22, 0x2

    mul-int/lit8 v22, v22, 0x3

    invoke-static/range {v22 .. v22}, Lcom/garageapps/android/spacetracks/glSpec;->allocateFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/garageapps/android/spacetracks/objects/ObjectsTorus;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 39
    move-object/from16 v0, p0

    iget v0, v0, Lcom/garageapps/android/spacetracks/objects/ObjectsTorus;->sides:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/garageapps/android/spacetracks/objects/ObjectsTorus;->rings:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    mul-int v22, v22, v23

    mul-int/lit8 v22, v22, 0x2

    mul-int/lit8 v22, v22, 0x3

    invoke-static/range {v22 .. v22}, Lcom/garageapps/android/spacetracks/glSpec;->allocateFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/garageapps/android/spacetracks/objects/ObjectsTorus;->normalBuffer:Ljava/nio/FloatBuffer;

    .line 40
    move-object/from16 v0, p0

    iget v0, v0, Lcom/garageapps/android/spacetracks/objects/ObjectsTorus;->sides:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/garageapps/android/spacetracks/objects/ObjectsTorus;->rings:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    mul-int v22, v22, v23

    mul-int/lit8 v22, v22, 0x2

    mul-int/lit8 v22, v22, 0x3

    invoke-static/range {v22 .. v22}, Lcom/garageapps/android/spacetracks/glSpec;->allocateFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/garageapps/android/spacetracks/objects/ObjectsTorus;->colorBuffer:Ljava/nio/FloatBuffer;

    .line 47
    const v14, 0x40c90fdb

    .line 48
    .local v14, twopi:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/garageapps/android/spacetracks/objects/ObjectsTorus;->sides:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v17, v14, v22

    .line 49
    .local v17, twopi_sides:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/garageapps/android/spacetracks/objects/ObjectsTorus;->rings:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v15, v14, v22

    .line 51
    .local v15, twopi_rings:F
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/garageapps/android/spacetracks/objects/ObjectsTorus;->sides:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v4, v0, :cond_0

    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/objects/ObjectsTorus;->vertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/objects/ObjectsTorus;->normalBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/objects/ObjectsTorus;->colorBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 91
    return-void

    .line 53
    :cond_0
    const/4 v5, 0x0

    .local v5, j:I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/garageapps/android/spacetracks/objects/ObjectsTorus;->rings:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-le v5, v0, :cond_1

    .line 51
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 55
    :cond_1
    const/4 v6, 0x1

    .local v6, k:I
    :goto_2
    if-gez v6, :cond_2

    .line 53
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 57
    :cond_2
    add-int v22, v4, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/garageapps/android/spacetracks/objects/ObjectsTorus;->sides:I

    move/from16 v23, v0

    rem-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x3f00

    add-float v10, v22, v23

    .line 58
    .local v10, s:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/garageapps/android/spacetracks/objects/ObjectsTorus;->rings:I

    move/from16 v22, v0

    rem-int v22, v5, v22

    move/from16 v0, v22

    int-to-float v13, v0

    .line 60
    .local v13, t:F
    mul-float v16, v10, v17

    .line 61
    .local v16, twopi_s:F
    mul-float v18, v13, v15

    .line 63
    .local v18, twopi_t:F
    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v2, v0

    .line 64
    .local v2, cos_s:F
    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v11, v0

    .line 66
    .local v11, sin_s:F
    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v3, v0

    .line 67
    .local v3, cos_t:F
    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v12, v0

    .line 69
    .local v12, sin_t:F
    mul-float v22, p1, v2

    add-float v22, v22, p2

    mul-float v19, v22, v3

    .line 70
    .local v19, x:F
    mul-float v22, p1, v2

    add-float v22, v22, p2

    mul-float v20, v22, v12

    .line 71
    .local v20, y:F
    mul-float v21, p1, v11

    .line 73
    .local v21, z:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/objects/ObjectsTorus;->vertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 74
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/objects/ObjectsTorus;->vertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 75
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/objects/ObjectsTorus;->vertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 77
    mul-float v7, v2, v3

    .line 78
    .local v7, nx:F
    mul-float v8, v2, v12

    .line 79
    .local v8, ny:F
    move v9, v11

    .line 81
    .local v9, nz:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/objects/ObjectsTorus;->normalBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/objects/ObjectsTorus;->normalBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/objects/ObjectsTorus;->normalBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 55
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_2
.end method


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL10;ZZI)V
    .locals 7
    .parameter "gl"
    .parameter "color"
    .parameter "normal"
    .parameter "mode"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/16 v4, 0x1406

    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    .line 95
    if-nez p2, :cond_0

    .line 96
    invoke-interface {p1, v2, v2, v2, v2}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 97
    const v2, 0x8076

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 104
    :goto_0
    if-nez p3, :cond_1

    .line 105
    const v2, 0x8075

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 112
    :goto_1
    iget-object v2, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsTorus;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v6, v4, v3, v2}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 113
    const v2, 0x8074

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 115
    iget v2, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsTorus;->rings:I

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v1, v2, 0x2

    .line 117
    .local v1, triangles:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget v2, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsTorus;->sides:I

    if-lt v0, v2, :cond_2

    .line 125
    return-void

    .line 100
    .end local v0           #i:I
    .end local v1           #triangles:I
    :cond_0
    iget-object v2, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsTorus;->colorBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v6, v4, v3, v2}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    .line 101
    const v2, 0x8076

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    goto :goto_0

    .line 108
    :cond_1
    iget-object v2, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsTorus;->normalBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v4, v3, v2}, Ljavax/microedition/khronos/opengles/GL10;->glNormalPointer(IILjava/nio/Buffer;)V

    .line 109
    const v2, 0x8075

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    goto :goto_1

    .line 119
    .restart local v0       #i:I
    .restart local v1       #triangles:I
    :cond_2
    const/4 v2, 0x1

    if-ne p4, v2, :cond_4

    .line 120
    mul-int v2, v1, v0

    invoke-interface {p1, v5, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 117
    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 122
    :cond_4
    if-ne p4, v5, :cond_3

    .line 123
    const/4 v2, 0x5

    mul-int v3, v1, v0

    invoke-interface {p1, v2, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    goto :goto_3
.end method
