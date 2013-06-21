.class public Lcom/garageapps/android/spacetracks/objects/ObjectsSphere;
.super Ljava/lang/Object;
.source "ObjectsSphere.java"


# instance fields
.field private colorBuffer:Ljava/nio/FloatBuffer;

.field private normalBuffer:Ljava/nio/FloatBuffer;

.field private radius:F

.field private slices:I

.field private stacks:I

.field private vertexBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>(FII)V
    .locals 19
    .parameter "ra"
    .parameter "st"
    .parameter "sl"

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/garageapps/android/spacetracks/objects/ObjectsSphere;->radius:F

    .line 29
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/garageapps/android/spacetracks/objects/ObjectsSphere;->stacks:I

    .line 30
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/garageapps/android/spacetracks/objects/ObjectsSphere;->slices:I

    .line 32
    move-object/from16 v0, p0

    iget v0, v0, Lcom/garageapps/android/spacetracks/objects/ObjectsSphere;->stacks:I

    move/from16 v16, v0

    mul-int/lit8 v16, v16, 0x6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/garageapps/android/spacetracks/objects/ObjectsSphere;->slices:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    mul-int v16, v16, v17

    invoke-static/range {v16 .. v16}, Lcom/garageapps/android/spacetracks/glSpec;->allocateFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/garageapps/android/spacetracks/objects/ObjectsSphere;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 33
    move-object/from16 v0, p0

    iget v0, v0, Lcom/garageapps/android/spacetracks/objects/ObjectsSphere;->stacks:I

    move/from16 v16, v0

    mul-int/lit8 v16, v16, 0x6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/garageapps/android/spacetracks/objects/ObjectsSphere;->slices:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    mul-int v16, v16, v17

    invoke-static/range {v16 .. v16}, Lcom/garageapps/android/spacetracks/glSpec;->allocateFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/garageapps/android/spacetracks/objects/ObjectsSphere;->normalBuffer:Ljava/nio/FloatBuffer;

    .line 34
    move-object/from16 v0, p0

    iget v0, v0, Lcom/garageapps/android/spacetracks/objects/ObjectsSphere;->stacks:I

    move/from16 v16, v0

    mul-int/lit8 v16, v16, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/garageapps/android/spacetracks/objects/ObjectsSphere;->slices:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    mul-int v16, v16, v17

    invoke-static/range {v16 .. v16}, Lcom/garageapps/android/spacetracks/glSpec;->allocateFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/garageapps/android/spacetracks/objects/ObjectsSphere;->colorBuffer:Ljava/nio/FloatBuffer;

    .line 39
    const v16, 0x40490fdb

    move-object/from16 v0, p0

    iget v0, v0, Lcom/garageapps/android/spacetracks/objects/ObjectsSphere;->stacks:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v13, v16, v17

    .line 40
    .local v13, stackstep:F
    const v16, 0x40c90fdb

    move-object/from16 v0, p0

    iget v0, v0, Lcom/garageapps/android/spacetracks/objects/ObjectsSphere;->slices:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v12, v16, v17

    .line 42
    .local v12, slicestep:F
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/garageapps/android/spacetracks/objects/ObjectsSphere;->stacks:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v7, v0, :cond_0

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/objects/ObjectsSphere;->normalBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/objects/ObjectsSphere;->vertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/objects/ObjectsSphere;->colorBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 100
    return-void

    .line 44
    :cond_0
    int-to-float v0, v7

    move/from16 v16, v0

    mul-float v2, v16, v13

    .line 45
    .local v2, a:F
    add-float v3, v2, v13

    .line 47
    .local v3, b:F
    float-to-double v0, v2

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v10, v0

    .line 48
    .local v10, s0:F
    float-to-double v0, v3

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v11, v0

    .line 50
    .local v11, s1:F
    float-to-double v0, v2

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v5, v0

    .line 51
    .local v5, c0:F
    float-to-double v0, v3

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v6, v0

    .line 55
    .local v6, c1:F
    const/4 v8, 0x0

    .local v8, j:I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/garageapps/android/spacetracks/objects/ObjectsSphere;->slices:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v8, v0, :cond_1

    .line 42
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 57
    :cond_1
    int-to-float v0, v8

    move/from16 v16, v0

    mul-float v4, v16, v12

    .line 58
    .local v4, c:F
    float-to-double v0, v4

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v14, v0

    .line 59
    .local v14, x:F
    float-to-double v0, v4

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v15, v0

    .line 61
    .local v15, y:F
    mul-float v9, v14, v10

    .line 62
    .local v9, nv:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/objects/ObjectsSphere;->normalBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/objects/ObjectsSphere;->vertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/garageapps/android/spacetracks/objects/ObjectsSphere;->radius:F

    move/from16 v17, v0

    mul-float v17, v17, v9

    invoke-virtual/range {v16 .. v17}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 65
    mul-float v9, v15, v10

    .line 66
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/objects/ObjectsSphere;->normalBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/objects/ObjectsSphere;->vertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/garageapps/android/spacetracks/objects/ObjectsSphere;->radius:F

    move/from16 v17, v0

    mul-float v17, v17, v9

    invoke-virtual/range {v16 .. v17}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 69
    move v9, v5

    .line 70
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/objects/ObjectsSphere;->normalBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 71
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/objects/ObjectsSphere;->vertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/garageapps/android/spacetracks/objects/ObjectsSphere;->radius:F

    move/from16 v17, v0

    mul-float v17, v17, v9

    invoke-virtual/range {v16 .. v17}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 73
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/objects/ObjectsSphere;->colorBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v16, v0

    const/high16 v17, 0x3f80

    const/high16 v18, 0x4000

    div-float v18, v10, v18

    sub-float v17, v17, v18

    invoke-virtual/range {v16 .. v17}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 74
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/objects/ObjectsSphere;->colorBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v16, v0

    const/high16 v17, 0x3f80

    const/high16 v18, 0x4000

    div-float v18, v10, v18

    sub-float v17, v17, v18

    invoke-virtual/range {v16 .. v17}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 75
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/objects/ObjectsSphere;->colorBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v16, v0

    const/high16 v17, 0x3f80

    const/high16 v18, 0x4000

    div-float v18, v10, v18

    sub-float v17, v17, v18

    invoke-virtual/range {v16 .. v17}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 76
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/objects/ObjectsSphere;->colorBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v16, v0

    const/high16 v17, 0x3f80

    invoke-virtual/range {v16 .. v17}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 78
    mul-float v9, v14, v11

    .line 79
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/objects/ObjectsSphere;->normalBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 80
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/objects/ObjectsSphere;->vertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/garageapps/android/spacetracks/objects/ObjectsSphere;->radius:F

    move/from16 v17, v0

    mul-float v17, v17, v9

    invoke-virtual/range {v16 .. v17}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 82
    mul-float v9, v15, v11

    .line 83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/objects/ObjectsSphere;->normalBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/objects/ObjectsSphere;->vertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/garageapps/android/spacetracks/objects/ObjectsSphere;->radius:F

    move/from16 v17, v0

    mul-float v17, v17, v9

    invoke-virtual/range {v16 .. v17}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 86
    move v9, v6

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/objects/ObjectsSphere;->normalBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/objects/ObjectsSphere;->vertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/garageapps/android/spacetracks/objects/ObjectsSphere;->radius:F

    move/from16 v17, v0

    mul-float v17, v17, v9

    invoke-virtual/range {v16 .. v17}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/objects/ObjectsSphere;->colorBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v16, v0

    const/high16 v17, 0x3f80

    const/high16 v18, 0x4000

    div-float v18, v10, v18

    sub-float v17, v17, v18

    invoke-virtual/range {v16 .. v17}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/objects/ObjectsSphere;->colorBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v16, v0

    const/high16 v17, 0x3f80

    const/high16 v18, 0x4000

    div-float v18, v10, v18

    sub-float v17, v17, v18

    invoke-virtual/range {v16 .. v17}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/objects/ObjectsSphere;->colorBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v16, v0

    const/high16 v17, 0x3f80

    const/high16 v18, 0x4000

    div-float v18, v10, v18

    sub-float v17, v17, v18

    invoke-virtual/range {v16 .. v17}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/objects/ObjectsSphere;->colorBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v16, v0

    const/high16 v17, 0x3f80

    invoke-virtual/range {v16 .. v17}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 55
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1
.end method


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL10;ZZI)V
    .locals 10
    .parameter "gl"
    .parameter "color"
    .parameter "normal"
    .parameter "mode"

    .prologue
    const/4 v9, 0x2

    const v8, 0x8076

    const/16 v7, 0x1406

    const/4 v6, 0x0

    const/high16 v4, 0x3f80

    .line 104
    if-nez p2, :cond_1

    .line 105
    invoke-interface {p1, v4, v4, v4, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 106
    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 113
    :goto_0
    if-nez p3, :cond_2

    .line 114
    const v4, 0x8075

    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 121
    :goto_1
    const/4 v4, 0x3

    iget-object v5, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsSphere;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v4, v7, v6, v5}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 122
    const v4, 0x8074

    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 124
    const/4 v4, 0x1

    if-ne p4, v4, :cond_5

    .line 128
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget v4, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsSphere;->stacks:I

    if-lt v1, v4, :cond_3

    .line 147
    .end local v1           #i:I
    :cond_0
    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 148
    return-void

    .line 109
    :cond_1
    const/4 v4, 0x4

    iget-object v5, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsSphere;->colorBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v4, v7, v6, v5}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    .line 110
    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    goto :goto_0

    .line 117
    :cond_2
    iget-object v4, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsSphere;->normalBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v7, v6, v4}, Ljavax/microedition/khronos/opengles/GL10;->glNormalPointer(IILjava/nio/Buffer;)V

    .line 118
    const v4, 0x8075

    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    goto :goto_1

    .line 130
    .restart local v1       #i:I
    :cond_3
    iget v4, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsSphere;->slices:I

    add-int/lit8 v4, v4, 0x1

    mul-int v0, v1, v4

    .line 132
    .local v0, f:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_3
    iget v4, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsSphere;->slices:I

    if-le v2, v4, :cond_4

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 133
    :cond_4
    add-int v4, v0, v2

    mul-int/lit8 v4, v4, 0x2

    const/4 v5, 0x3

    invoke-interface {p1, v9, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 132
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 137
    .end local v0           #f:I
    .end local v1           #i:I
    .end local v2           #j:I
    :cond_5
    if-ne p4, v9, :cond_0

    .line 141
    iget v4, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsSphere;->slices:I

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v3, v4, 0x2

    .line 143
    .local v3, triangles:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_4
    iget v4, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsSphere;->stacks:I

    if-ge v1, v4, :cond_0

    .line 144
    const/4 v4, 0x5

    mul-int v5, v1, v3

    invoke-interface {p1, v4, v5, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method
