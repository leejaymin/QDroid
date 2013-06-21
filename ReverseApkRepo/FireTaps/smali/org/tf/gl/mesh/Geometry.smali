.class public Lorg/tf/gl/mesh/Geometry;
.super Ljava/lang/Object;
.source "Geometry.java"


# instance fields
.field private m_bound:Z

.field private m_count:I

.field private m_indexBuffer:Lorg/tf/gl/GLIndexBufferUS;

.field private m_indices:[S

.field private m_normals:[F

.field private m_normalsBuffer:Lorg/tf/gl/GLBufferObject;

.field private m_vertices:[F

.field private m_verticesBuffer:Lorg/tf/gl/GLBufferObject;


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL10;Ljava/io/BufferedReader;)V
    .locals 14
    .parameter "gl"
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    check-cast v0, [F

    .line 36
    .local v0, allNormals:[F
    const/4 v1, 0x0

    check-cast v1, [F

    .line 37
    .local v1, allVertices:[F
    const/4 v2, -0x1

    .line 39
    .local v2, count:I
    :cond_0
    :goto_0
    invoke-static/range {p2 .. p2}, Lorg/tf/gl/mesh/Util;->nextLine(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v6

    .line 40
    .local v6, line:Ljava/lang/String;
    const-string v12, "EndGeometry"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 67
    if-eqz v0, :cond_1

    if-nez v1, :cond_7

    .line 68
    :cond_1
    const-string v12, "normals/vertices are not specified"

    invoke-static {v12}, Lorg/tf/gl/mesh/Geometry;->invalidGeometryException(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v12

    throw v12

    .line 43
    :cond_2
    const-string v12, "count"

    invoke-virtual {v6, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 44
    invoke-static {v6}, Lorg/tf/gl/mesh/Util;->getColonValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/tf/gl/mesh/Util;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 45
    goto :goto_0

    .line 47
    :cond_3
    const-string v12, "normals"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    const-string v12, "vertices"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 48
    :cond_4
    const/4 v12, -0x1

    if-ne v2, v12, :cond_5

    .line 49
    const-string v12, "count is not specified"

    invoke-static {v12}, Lorg/tf/gl/mesh/Geometry;->invalidGeometryException(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v12

    throw v12

    .line 52
    :cond_5
    const-string v12, "normals"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 53
    new-array v0, v2, [F

    .line 54
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-eq v3, v2, :cond_0

    .line 55
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/tf/gl/mesh/Util;->parseFloat(Ljava/lang/String;)F

    move-result v12

    aput v12, v0, v3

    .line 54
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 59
    .end local v3           #i:I
    :cond_6
    const-string v12, "vertices"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 60
    new-array v1, v2, [F

    .line 61
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_2
    if-eq v3, v2, :cond_0

    .line 62
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/tf/gl/mesh/Util;->parseFloat(Ljava/lang/String;)F

    move-result v12

    aput v12, v1, v3

    .line 61
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 70
    .end local v3           #i:I
    :cond_7
    new-array v10, v2, [F

    .line 71
    .local v10, minVertices:[F
    new-array v9, v2, [F

    .line 72
    .local v9, minNormals:[F
    div-int/lit8 v12, v2, 0x3

    new-array v8, v12, [S

    .line 73
    .local v8, minIndices:[S
    const/4 v7, 0x0

    .line 74
    .local v7, minCount:I
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_3
    if-ne v3, v2, :cond_8

    .line 111
    iput v7, p0, Lorg/tf/gl/mesh/Geometry;->m_count:I

    .line 112
    iput-object v10, p0, Lorg/tf/gl/mesh/Geometry;->m_vertices:[F

    .line 113
    iput-object v9, p0, Lorg/tf/gl/mesh/Geometry;->m_normals:[F

    .line 114
    iput-object v8, p0, Lorg/tf/gl/mesh/Geometry;->m_indices:[S

    .line 115
    return-void

    .line 75
    :cond_8
    const/4 v4, -0x1

    .line 76
    .local v4, index:I
    const/4 v5, 0x0

    .local v5, j:I
    :goto_4
    if-ne v5, v7, :cond_c

    .line 88
    :goto_5
    const/4 v12, -0x1

    if-eq v4, v12, :cond_a

    .line 89
    const/4 v11, 0x0

    .line 90
    .local v11, n:I
    :goto_6
    const/4 v12, 0x3

    if-ne v11, v12, :cond_10

    .line 95
    :cond_9
    const/4 v12, 0x3

    if-eq v11, v12, :cond_a

    .line 96
    const/4 v4, -0x1

    .line 99
    .end local v11           #n:I
    :cond_a
    const/4 v12, -0x1

    if-ne v4, v12, :cond_b

    .line 100
    const/4 v11, 0x0

    .restart local v11       #n:I
    :goto_7
    const/4 v12, 0x3

    if-ne v11, v12, :cond_11

    .line 103
    const/4 v11, 0x0

    :goto_8
    const/4 v12, 0x3

    if-ne v11, v12, :cond_12

    .line 106
    move v4, v7

    .line 107
    add-int/lit8 v7, v7, 0x3

    .line 109
    .end local v11           #n:I
    :cond_b
    div-int/lit8 v12, v3, 0x3

    div-int/lit8 v13, v4, 0x3

    int-to-short v13, v13

    aput-short v13, v8, v12

    .line 74
    add-int/lit8 v3, v3, 0x3

    goto :goto_3

    .line 77
    :cond_c
    const/4 v11, 0x0

    .line 78
    .restart local v11       #n:I
    :goto_9
    const/4 v12, 0x3

    if-ne v11, v12, :cond_e

    .line 83
    :cond_d
    const/4 v12, 0x3

    if-ne v11, v12, :cond_f

    .line 84
    move v4, v5

    .line 85
    goto :goto_5

    .line 79
    :cond_e
    add-int v12, v5, v11

    aget v12, v10, v12

    add-int v13, v3, v11

    aget v13, v1, v13

    cmpl-float v12, v12, v13

    if-nez v12, :cond_d

    .line 78
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 76
    :cond_f
    add-int/lit8 v5, v5, 0x3

    goto :goto_4

    .line 91
    :cond_10
    add-int v12, v4, v11

    aget v12, v9, v12

    add-int v13, v3, v11

    aget v13, v0, v13

    cmpl-float v12, v12, v13

    if-nez v12, :cond_9

    .line 90
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 101
    :cond_11
    add-int v12, v7, v11

    add-int v13, v3, v11

    aget v13, v1, v13

    aput v13, v10, v12

    .line 100
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 104
    :cond_12
    add-int v12, v7, v11

    add-int v13, v3, v11

    aget v13, v0, v13

    aput v13, v9, v12

    .line 103
    add-int/lit8 v11, v11, 0x1

    goto :goto_8
.end method

.method private static invalidGeometryException(Ljava/lang/String;)Ljava/io/IOException;
    .locals 3
    .parameter "why"

    .prologue
    .line 210
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid geometry: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static transform([F[FI[F)V
    .locals 7
    .parameter "matrix"
    .parameter "points"
    .parameter "count"
    .parameter "buffer"

    .prologue
    const/4 v1, 0x4

    const/4 v3, 0x0

    .line 197
    const/4 v0, 0x3

    const/high16 v2, 0x3f80

    aput v2, p3, v0

    .line 198
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ne v6, p2, :cond_0

    .line 207
    return-void

    .line 199
    :cond_0
    aget v0, p1, v6

    aput v0, p3, v3

    .line 200
    const/4 v0, 0x1

    add-int/lit8 v2, v6, 0x1

    aget v2, p1, v2

    aput v2, p3, v0

    .line 201
    const/4 v0, 0x2

    add-int/lit8 v2, v6, 0x2

    aget v2, p1, v2

    aput v2, p3, v0

    move-object v0, p3

    move-object v2, p0

    move-object v4, p3

    move v5, v3

    .line 202
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 203
    aget v0, p3, v1

    aput v0, p1, v6

    .line 204
    add-int/lit8 v0, v6, 0x1

    const/4 v2, 0x5

    aget v2, p3, v2

    aput v2, p1, v0

    .line 205
    add-int/lit8 v0, v6, 0x2

    const/4 v2, 0x6

    aget v2, p3, v2

    aput v2, p1, v0

    .line 198
    add-int/lit8 v6, v6, 0x3

    goto :goto_0
.end method


# virtual methods
.method public beginRender(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .parameter "gl"

    .prologue
    .line 170
    invoke-virtual {p0, p1}, Lorg/tf/gl/mesh/Geometry;->bind(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 171
    const v0, 0x8075

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 172
    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 173
    iget-object v0, p0, Lorg/tf/gl/mesh/Geometry;->m_normalsBuffer:Lorg/tf/gl/GLBufferObject;

    invoke-virtual {v0, p1}, Lorg/tf/gl/GLBufferObject;->set(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 174
    iget-object v0, p0, Lorg/tf/gl/mesh/Geometry;->m_verticesBuffer:Lorg/tf/gl/GLBufferObject;

    invoke-virtual {v0, p1}, Lorg/tf/gl/GLBufferObject;->set(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 175
    iget-object v0, p0, Lorg/tf/gl/mesh/Geometry;->m_indexBuffer:Lorg/tf/gl/GLIndexBufferUS;

    invoke-virtual {v0, p1}, Lorg/tf/gl/GLIndexBufferUS;->beginRender(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 176
    return-void
.end method

.method public bind(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6
    .parameter "gl"

    .prologue
    const/16 v5, 0x140c

    .line 118
    iget-boolean v4, p0, Lorg/tf/gl/mesh/Geometry;->m_bound:Z

    if-eqz v4, :cond_0

    .line 149
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v4, p0, Lorg/tf/gl/mesh/Geometry;->m_normalsBuffer:Lorg/tf/gl/GLBufferObject;

    if-nez v4, :cond_1

    .line 122
    iget v4, p0, Lorg/tf/gl/mesh/Geometry;->m_count:I

    invoke-static {v4}, Lorg/tf/gl/GLHelpers;->allocateFloatBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 123
    .local v2, normals:Ljava/nio/ByteBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v4, p0, Lorg/tf/gl/mesh/Geometry;->m_count:I

    if-ne v0, v4, :cond_4

    .line 126
    invoke-static {v5, v2}, Lorg/tf/gl/GLBufferObject;->createNormals(ILjava/nio/ByteBuffer;)Lorg/tf/gl/GLBufferObject;

    move-result-object v4

    iput-object v4, p0, Lorg/tf/gl/mesh/Geometry;->m_normalsBuffer:Lorg/tf/gl/GLBufferObject;

    .line 128
    .end local v0           #i:I
    .end local v2           #normals:Ljava/nio/ByteBuffer;
    :cond_1
    iget-object v4, p0, Lorg/tf/gl/mesh/Geometry;->m_normalsBuffer:Lorg/tf/gl/GLBufferObject;

    invoke-virtual {v4, p1}, Lorg/tf/gl/GLBufferObject;->bind(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 130
    iget-object v4, p0, Lorg/tf/gl/mesh/Geometry;->m_verticesBuffer:Lorg/tf/gl/GLBufferObject;

    if-nez v4, :cond_2

    .line 131
    iget v4, p0, Lorg/tf/gl/mesh/Geometry;->m_count:I

    invoke-static {v4}, Lorg/tf/gl/GLHelpers;->allocateFloatBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 132
    .local v3, vertices:Ljava/nio/ByteBuffer;
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget v4, p0, Lorg/tf/gl/mesh/Geometry;->m_count:I

    if-ne v0, v4, :cond_5

    .line 135
    const/4 v4, 0x3

    invoke-static {v4, v5, v3}, Lorg/tf/gl/GLBufferObject;->createVertices(IILjava/nio/ByteBuffer;)Lorg/tf/gl/GLBufferObject;

    move-result-object v4

    iput-object v4, p0, Lorg/tf/gl/mesh/Geometry;->m_verticesBuffer:Lorg/tf/gl/GLBufferObject;

    .line 137
    .end local v0           #i:I
    .end local v3           #vertices:Ljava/nio/ByteBuffer;
    :cond_2
    iget-object v4, p0, Lorg/tf/gl/mesh/Geometry;->m_verticesBuffer:Lorg/tf/gl/GLBufferObject;

    invoke-virtual {v4, p1}, Lorg/tf/gl/GLBufferObject;->bind(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 139
    iget-object v4, p0, Lorg/tf/gl/mesh/Geometry;->m_indexBuffer:Lorg/tf/gl/GLIndexBufferUS;

    if-nez v4, :cond_3

    .line 140
    iget v4, p0, Lorg/tf/gl/mesh/Geometry;->m_count:I

    div-int/lit8 v4, v4, 0x3

    invoke-static {v4}, Lorg/tf/gl/GLHelpers;->allocateShortBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 141
    .local v1, indices:Ljava/nio/ByteBuffer;
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    iget v4, p0, Lorg/tf/gl/mesh/Geometry;->m_count:I

    div-int/lit8 v4, v4, 0x3

    if-ne v0, v4, :cond_6

    .line 144
    new-instance v4, Lorg/tf/gl/GLIndexBufferUS;

    const/4 v5, 0x4

    invoke-direct {v4, v5, v1}, Lorg/tf/gl/GLIndexBufferUS;-><init>(ILjava/nio/ByteBuffer;)V

    iput-object v4, p0, Lorg/tf/gl/mesh/Geometry;->m_indexBuffer:Lorg/tf/gl/GLIndexBufferUS;

    .line 146
    .end local v0           #i:I
    .end local v1           #indices:Ljava/nio/ByteBuffer;
    :cond_3
    iget-object v4, p0, Lorg/tf/gl/mesh/Geometry;->m_indexBuffer:Lorg/tf/gl/GLIndexBufferUS;

    invoke-virtual {v4, p1}, Lorg/tf/gl/GLIndexBufferUS;->bind(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 148
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/tf/gl/mesh/Geometry;->m_bound:Z

    goto :goto_0

    .line 124
    .restart local v0       #i:I
    .restart local v2       #normals:Ljava/nio/ByteBuffer;
    :cond_4
    iget-object v4, p0, Lorg/tf/gl/mesh/Geometry;->m_normals:[F

    aget v4, v4, v0

    invoke-static {v4}, Lorg/tf/util/MathHelpers;->float2fixed(F)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 133
    .end local v2           #normals:Ljava/nio/ByteBuffer;
    .restart local v3       #vertices:Ljava/nio/ByteBuffer;
    :cond_5
    iget-object v4, p0, Lorg/tf/gl/mesh/Geometry;->m_vertices:[F

    aget v4, v4, v0

    invoke-static {v4}, Lorg/tf/util/MathHelpers;->float2fixed(F)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 142
    .end local v3           #vertices:Ljava/nio/ByteBuffer;
    .restart local v1       #indices:Ljava/nio/ByteBuffer;
    :cond_6
    iget-object v4, p0, Lorg/tf/gl/mesh/Geometry;->m_indices:[S

    aget-short v4, v4, v0

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public doRender(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .parameter "gl"

    .prologue
    .line 179
    iget-object v0, p0, Lorg/tf/gl/mesh/Geometry;->m_indexBuffer:Lorg/tf/gl/GLIndexBufferUS;

    invoke-virtual {v0, p1}, Lorg/tf/gl/GLIndexBufferUS;->doRender(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 180
    return-void
.end method

.method public endRender(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .parameter "gl"

    .prologue
    .line 183
    iget-object v0, p0, Lorg/tf/gl/mesh/Geometry;->m_indexBuffer:Lorg/tf/gl/GLIndexBufferUS;

    invoke-virtual {v0, p1}, Lorg/tf/gl/GLIndexBufferUS;->endRender(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 184
    const v0, 0x8075

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 185
    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 186
    return-void
.end method

.method public render(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .parameter "gl"

    .prologue
    .line 189
    invoke-virtual {p0, p1}, Lorg/tf/gl/mesh/Geometry;->beginRender(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 190
    invoke-virtual {p0, p1}, Lorg/tf/gl/mesh/Geometry;->doRender(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 191
    invoke-virtual {p0, p1}, Lorg/tf/gl/mesh/Geometry;->endRender(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 192
    return-void
.end method

.method public transform([F)V
    .locals 3
    .parameter "matrix"

    .prologue
    .line 162
    const/16 v1, 0x8

    new-array v0, v1, [F

    .line 163
    .local v0, buffer:[F
    iget-object v1, p0, Lorg/tf/gl/mesh/Geometry;->m_vertices:[F

    iget v2, p0, Lorg/tf/gl/mesh/Geometry;->m_count:I

    invoke-static {p1, v1, v2, v0}, Lorg/tf/gl/mesh/Geometry;->transform([F[FI[F)V

    .line 164
    iget-object v1, p0, Lorg/tf/gl/mesh/Geometry;->m_normals:[F

    iget v2, p0, Lorg/tf/gl/mesh/Geometry;->m_count:I

    invoke-static {p1, v1, v2, v0}, Lorg/tf/gl/mesh/Geometry;->transform([F[FI[F)V

    .line 165
    return-void
.end method

.method public unbind(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .parameter "gl"

    .prologue
    .line 152
    iget-boolean v0, p0, Lorg/tf/gl/mesh/Geometry;->m_bound:Z

    if-nez v0, :cond_0

    .line 159
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lorg/tf/gl/mesh/Geometry;->m_normalsBuffer:Lorg/tf/gl/GLBufferObject;

    invoke-virtual {v0, p1}, Lorg/tf/gl/GLBufferObject;->unbind(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 156
    iget-object v0, p0, Lorg/tf/gl/mesh/Geometry;->m_verticesBuffer:Lorg/tf/gl/GLBufferObject;

    invoke-virtual {v0, p1}, Lorg/tf/gl/GLBufferObject;->unbind(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 157
    iget-object v0, p0, Lorg/tf/gl/mesh/Geometry;->m_indexBuffer:Lorg/tf/gl/GLIndexBufferUS;

    invoke-virtual {v0, p1}, Lorg/tf/gl/GLIndexBufferUS;->unbind(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/tf/gl/mesh/Geometry;->m_bound:Z

    goto :goto_0
.end method
