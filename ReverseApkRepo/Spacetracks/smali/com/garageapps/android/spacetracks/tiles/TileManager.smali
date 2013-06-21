.class public Lcom/garageapps/android/spacetracks/tiles/TileManager;
.super Ljava/lang/Object;
.source "TileManager.java"


# instance fields
.field final TILE_FINISH_1:I

.field final TILE_FINISH_2:I

.field final TILE_SQUARE:I

.field final TILE_TRIANGLE_NE:I

.field final TILE_TRIANGLE_NW:I

.field final TILE_TRIANGLE_SE:I

.field final TILE_TRIANGLE_SW:I

.field private colorBuffer:Ljava/nio/FloatBuffer;

.field private maxVerticesCount:I

.field private textureBuffer:Ljava/nio/FloatBuffer;

.field private tilesData:Lcom/garageapps/android/spacetracks/tiles/TilesData;

.field private vertexBuffer:Ljava/nio/FloatBuffer;

.field private verticesCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "maxVertices"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x1

    iput v0, p0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->TILE_SQUARE:I

    .line 19
    const/16 v0, 0x62

    iput v0, p0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->TILE_FINISH_1:I

    .line 20
    const/16 v0, 0x63

    iput v0, p0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->TILE_FINISH_2:I

    .line 21
    const/16 v0, 0xa

    iput v0, p0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->TILE_TRIANGLE_NW:I

    .line 22
    const/16 v0, 0xb

    iput v0, p0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->TILE_TRIANGLE_NE:I

    .line 23
    const/16 v0, 0xc

    iput v0, p0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->TILE_TRIANGLE_SW:I

    .line 24
    const/16 v0, 0xd

    iput v0, p0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->TILE_TRIANGLE_SE:I

    .line 35
    new-instance v0, Lcom/garageapps/android/spacetracks/tiles/TilesData;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/tiles/TilesData;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->tilesData:Lcom/garageapps/android/spacetracks/tiles/TilesData;

    .line 36
    iput p1, p0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->maxVerticesCount:I

    .line 37
    mul-int/lit8 v0, p1, 0x3

    invoke-static {v0}, Lcom/garageapps/android/spacetracks/glSpec;->allocateFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 38
    mul-int/lit8 v0, p1, 0x2

    invoke-static {v0}, Lcom/garageapps/android/spacetracks/glSpec;->allocateFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->textureBuffer:Ljava/nio/FloatBuffer;

    .line 39
    mul-int/lit8 v0, p1, 0x4

    invoke-static {v0}, Lcom/garageapps/android/spacetracks/glSpec;->allocateFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->colorBuffer:Ljava/nio/FloatBuffer;

    .line 40
    return-void
.end method

.method private resetBuffers()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 236
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 237
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 238
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->colorBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 239
    return-void
.end method

.method private testBottom(II)Z
    .locals 6
    .parameter "data"
    .parameter "neighbour"

    .prologue
    const/16 v5, 0xd

    const/16 v4, 0xb

    const/16 v3, 0xa

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 289
    if-ne p1, v1, :cond_1

    .line 290
    if-eq p2, v1, :cond_0

    if-eq p2, v3, :cond_0

    if-ne p2, v5, :cond_2

    .line 304
    :cond_0
    :goto_0
    return v0

    .line 294
    :cond_1
    const/16 v2, 0xc

    if-ne p1, v2, :cond_3

    .line 295
    if-eq p2, v1, :cond_0

    if-eq p2, v3, :cond_0

    if-eq p2, v4, :cond_0

    :cond_2
    move v0, v1

    .line 304
    goto :goto_0

    .line 299
    :cond_3
    if-ne p1, v5, :cond_2

    .line 300
    if-eq p2, v1, :cond_0

    if-eq p2, v3, :cond_0

    if-ne p2, v4, :cond_2

    goto :goto_0
.end method

.method private testLeft(II)Z
    .locals 5
    .parameter "data"
    .parameter "neighbour"

    .prologue
    const/16 v4, 0xd

    const/4 v0, 0x0

    const/16 v3, 0xb

    const/4 v1, 0x1

    .line 243
    if-ne p1, v1, :cond_1

    .line 244
    if-eq p2, v1, :cond_0

    if-eq p2, v3, :cond_0

    if-ne p2, v4, :cond_2

    .line 261
    :cond_0
    :goto_0
    return v0

    .line 248
    :cond_1
    const/16 v2, 0xa

    if-ne p1, v2, :cond_3

    .line 249
    if-eq p2, v1, :cond_0

    if-eq p2, v3, :cond_0

    if-eq p2, v4, :cond_0

    :cond_2
    move v0, v1

    .line 261
    goto :goto_0

    .line 253
    :cond_3
    if-ne p1, v3, :cond_4

    move v0, v1

    .line 254
    goto :goto_0

    .line 256
    :cond_4
    const/16 v2, 0xc

    if-ne p1, v2, :cond_2

    .line 257
    if-eq p2, v1, :cond_0

    if-eq p2, v3, :cond_0

    if-ne p2, v4, :cond_2

    goto :goto_0
.end method

.method private testRight(II)Z
    .locals 5
    .parameter "data"
    .parameter "neighbour"

    .prologue
    const/16 v4, 0xc

    const/4 v0, 0x0

    const/16 v3, 0xa

    const/4 v1, 0x1

    .line 266
    if-ne p1, v1, :cond_1

    .line 267
    if-eq p2, v1, :cond_0

    if-eq p2, v3, :cond_0

    if-ne p2, v4, :cond_3

    .line 284
    :cond_0
    :goto_0
    return v0

    .line 271
    :cond_1
    if-ne p1, v3, :cond_2

    move v0, v1

    .line 272
    goto :goto_0

    .line 274
    :cond_2
    const/16 v2, 0xb

    if-ne p1, v2, :cond_4

    .line 275
    if-eq p2, v1, :cond_0

    if-eq p2, v3, :cond_0

    if-eq p2, v4, :cond_0

    :cond_3
    move v0, v1

    .line 284
    goto :goto_0

    .line 279
    :cond_4
    const/16 v2, 0xd

    if-ne p1, v2, :cond_3

    .line 280
    if-eq p2, v1, :cond_0

    if-eq p2, v3, :cond_0

    if-ne p2, v4, :cond_3

    goto :goto_0
.end method


# virtual methods
.method public buildTile(IIIIFFFF)V
    .locals 18
    .parameter "data"
    .parameter "dataLeft"
    .parameter "dataRight"
    .parameter "dataBottom"
    .parameter "tilesize"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 45
    const/16 v17, 0x0

    .line 46
    .local v17, vertices:I
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->verticesCount:I

    .line 48
    move-object/from16 v0, p0

    iget v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->maxVerticesCount:I

    mul-int/lit8 v1, v1, 0x3

    invoke-static {v1}, Lcom/garageapps/android/spacetracks/glSpec;->allocateFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 49
    move-object/from16 v0, p0

    iget v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->maxVerticesCount:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Lcom/garageapps/android/spacetracks/glSpec;->allocateFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->textureBuffer:Ljava/nio/FloatBuffer;

    .line 50
    move-object/from16 v0, p0

    iget v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->maxVerticesCount:I

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Lcom/garageapps/android/spacetracks/glSpec;->allocateFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->colorBuffer:Ljava/nio/FloatBuffer;

    .line 51
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->vertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->maxVerticesCount:I

    mul-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->limit(I)Ljava/nio/Buffer;

    .line 52
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->textureBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->maxVerticesCount:I

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->limit(I)Ljava/nio/Buffer;

    .line 53
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->colorBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->maxVerticesCount:I

    mul-int/lit8 v2, v2, 0x4

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->limit(I)Ljava/nio/Buffer;

    .line 54
    invoke-direct/range {p0 .. p0}, Lcom/garageapps/android/spacetracks/tiles/TileManager;->resetBuffers()V

    .line 56
    shr-int/lit8 v12, p1, 0x18

    .line 57
    .local v12, dataTile:I
    shl-int/lit8 v1, p1, 0x8

    shr-int/lit8 v10, v1, 0x18

    .line 58
    .local v10, dataInfo:I
    shl-int/lit8 v1, p1, 0x10

    shr-int/lit8 v11, v1, 0x18

    .line 59
    .local v11, dataTexture:I
    shl-int/lit8 v1, p1, 0x18

    shr-int/lit8 v9, v1, 0x18

    .line 61
    .local v9, dataColor:I
    shr-int/lit8 v1, p1, 0x18

    shr-int/lit8 v2, p2, 0x18

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/garageapps/android/spacetracks/tiles/TileManager;->testLeft(II)Z

    move-result v14

    .line 62
    .local v14, needLeft:Z
    shr-int/lit8 v1, p1, 0x18

    shr-int/lit8 v2, p3, 0x18

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/garageapps/android/spacetracks/tiles/TileManager;->testRight(II)Z

    move-result v15

    .line 63
    .local v15, needRight:Z
    shr-int/lit8 v1, p1, 0x18

    shr-int/lit8 v2, p4, 0x18

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/garageapps/android/spacetracks/tiles/TileManager;->testBottom(II)Z

    move-result v13

    .line 64
    .local v13, needBottom:Z
    move/from16 v5, p7

    .line 65
    .local v5, y1:F
    move/from16 v6, p7

    .line 67
    .local v6, y2:F
    div-int/lit8 v8, v10, 0xa

    .line 68
    .local v8, baseY:I
    mul-int/lit8 v1, v8, 0xa

    sub-int v16, v10, v1

    .line 70
    .local v16, tileY:I
    if-nez v16, :cond_3

    .line 71
    int-to-float v1, v8

    const/high16 v2, 0x40a0

    div-float/2addr v1, v2

    add-float v5, p7, v1

    .line 72
    int-to-float v1, v8

    const/high16 v2, 0x40a0

    div-float/2addr v1, v2

    add-float v6, p7, v1

    .line 85
    :cond_0
    :goto_0
    if-lez v8, :cond_1

    .line 86
    const/4 v14, 0x1

    .line 87
    const/4 v15, 0x1

    .line 88
    const/4 v13, 0x1

    .line 91
    :cond_1
    sparse-switch v12, :sswitch_data_0

    .line 208
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->vertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->verticesCount:I

    mul-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->limit(I)Ljava/nio/Buffer;

    .line 209
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->textureBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->verticesCount:I

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->limit(I)Ljava/nio/Buffer;

    .line 210
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->colorBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->verticesCount:I

    mul-int/lit8 v2, v2, 0x4

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->limit(I)Ljava/nio/Buffer;

    .line 211
    invoke-direct/range {p0 .. p0}, Lcom/garageapps/android/spacetracks/tiles/TileManager;->resetBuffers()V

    .line 212
    return-void

    .line 75
    :cond_3
    const/4 v1, 0x1

    move/from16 v0, v16

    if-ne v0, v1, :cond_4

    .line 76
    add-int/lit8 v1, v8, -0x1

    int-to-float v1, v1

    const/high16 v2, 0x40a0

    div-float/2addr v1, v2

    add-float v5, p7, v1

    .line 77
    int-to-float v1, v8

    const/high16 v2, 0x40a0

    div-float/2addr v1, v2

    add-float v6, p7, v1

    goto :goto_0

    .line 80
    :cond_4
    const/4 v1, 0x2

    move/from16 v0, v16

    if-ne v0, v1, :cond_0

    .line 81
    int-to-float v1, v8

    const/high16 v2, 0x40a0

    div-float/2addr v1, v2

    add-float v5, p7, v1

    .line 82
    add-int/lit8 v1, v8, -0x1

    int-to-float v1, v1

    const/high16 v2, 0x40a0

    div-float/2addr v1, v2

    add-float v6, p7, v1

    goto :goto_0

    .line 96
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->tilesData:Lcom/garageapps/android/spacetracks/tiles/TilesData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->vertexBuffer:Ljava/nio/FloatBuffer;

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v7, p8

    invoke-virtual/range {v1 .. v7}, Lcom/garageapps/android/spacetracks/tiles/TilesData;->square(Ljava/nio/FloatBuffer;FFFFF)I

    move-result v17

    .line 97
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->tilesData:Lcom/garageapps/android/spacetracks/tiles/TilesData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->colorBuffer:Ljava/nio/FloatBuffer;

    const/high16 v3, 0x3f80

    invoke-virtual {v1, v2, v9, v3}, Lcom/garageapps/android/spacetracks/tiles/TilesData;->add_color(Ljava/nio/FloatBuffer;IF)V

    .line 98
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->tilesData:Lcom/garageapps/android/spacetracks/tiles/TilesData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2, v11}, Lcom/garageapps/android/spacetracks/tiles/TilesData;->add_texture(Ljava/nio/FloatBuffer;I)V

    .line 99
    move-object/from16 v0, p0

    iget v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->verticesCount:I

    add-int v1, v1, v17

    move-object/from16 v0, p0

    iput v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->verticesCount:I

    .line 101
    if-eqz v13, :cond_5

    .line 102
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->tilesData:Lcom/garageapps/android/spacetracks/tiles/TilesData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->vertexBuffer:Ljava/nio/FloatBuffer;

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v7, p8

    invoke-virtual/range {v1 .. v7}, Lcom/garageapps/android/spacetracks/tiles/TilesData;->square_bottom(Ljava/nio/FloatBuffer;FFFFF)I

    move-result v17

    .line 103
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->tilesData:Lcom/garageapps/android/spacetracks/tiles/TilesData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->colorBuffer:Ljava/nio/FloatBuffer;

    const/high16 v3, 0x3fc0

    invoke-virtual {v1, v2, v9, v3}, Lcom/garageapps/android/spacetracks/tiles/TilesData;->add_color(Ljava/nio/FloatBuffer;IF)V

    .line 104
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->tilesData:Lcom/garageapps/android/spacetracks/tiles/TilesData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2, v11}, Lcom/garageapps/android/spacetracks/tiles/TilesData;->add_texture(Ljava/nio/FloatBuffer;I)V

    .line 105
    move-object/from16 v0, p0

    iget v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->verticesCount:I

    add-int v1, v1, v17

    move-object/from16 v0, p0

    iput v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->verticesCount:I

    .line 108
    :cond_5
    if-eqz v14, :cond_6

    .line 109
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->tilesData:Lcom/garageapps/android/spacetracks/tiles/TilesData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->vertexBuffer:Ljava/nio/FloatBuffer;

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v7, p8

    invoke-virtual/range {v1 .. v7}, Lcom/garageapps/android/spacetracks/tiles/TilesData;->square_bottom_left(Ljava/nio/FloatBuffer;FFFFF)I

    move-result v17

    .line 110
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->tilesData:Lcom/garageapps/android/spacetracks/tiles/TilesData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->colorBuffer:Ljava/nio/FloatBuffer;

    const/high16 v3, 0x3fc0

    invoke-virtual {v1, v2, v9, v3}, Lcom/garageapps/android/spacetracks/tiles/TilesData;->add_color(Ljava/nio/FloatBuffer;IF)V

    .line 111
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->tilesData:Lcom/garageapps/android/spacetracks/tiles/TilesData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2, v11}, Lcom/garageapps/android/spacetracks/tiles/TilesData;->add_texture(Ljava/nio/FloatBuffer;I)V

    .line 112
    move-object/from16 v0, p0

    iget v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->verticesCount:I

    add-int v1, v1, v17

    move-object/from16 v0, p0

    iput v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->verticesCount:I

    .line 115
    :cond_6
    if-eqz v15, :cond_2

    .line 116
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->tilesData:Lcom/garageapps/android/spacetracks/tiles/TilesData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->vertexBuffer:Ljava/nio/FloatBuffer;

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v7, p8

    invoke-virtual/range {v1 .. v7}, Lcom/garageapps/android/spacetracks/tiles/TilesData;->square_bottom_right(Ljava/nio/FloatBuffer;FFFFF)I

    move-result v17

    .line 117
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->tilesData:Lcom/garageapps/android/spacetracks/tiles/TilesData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->colorBuffer:Ljava/nio/FloatBuffer;

    const/high16 v3, 0x3fc0

    invoke-virtual {v1, v2, v9, v3}, Lcom/garageapps/android/spacetracks/tiles/TilesData;->add_color(Ljava/nio/FloatBuffer;IF)V

    .line 118
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->tilesData:Lcom/garageapps/android/spacetracks/tiles/TilesData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2, v11}, Lcom/garageapps/android/spacetracks/tiles/TilesData;->add_texture(Ljava/nio/FloatBuffer;I)V

    .line 119
    move-object/from16 v0, p0

    iget v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->verticesCount:I

    add-int v1, v1, v17

    move-object/from16 v0, p0

    iput v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->verticesCount:I

    goto/16 :goto_1

    .line 124
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->tilesData:Lcom/garageapps/android/spacetracks/tiles/TilesData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->vertexBuffer:Ljava/nio/FloatBuffer;

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v7, p8

    invoke-virtual/range {v1 .. v7}, Lcom/garageapps/android/spacetracks/tiles/TilesData;->triangle_nw(Ljava/nio/FloatBuffer;FFFFF)I

    move-result v17

    .line 125
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->tilesData:Lcom/garageapps/android/spacetracks/tiles/TilesData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->colorBuffer:Ljava/nio/FloatBuffer;

    const/high16 v3, 0x3f80

    invoke-virtual {v1, v2, v9, v3}, Lcom/garageapps/android/spacetracks/tiles/TilesData;->add_color(Ljava/nio/FloatBuffer;IF)V

    .line 126
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->tilesData:Lcom/garageapps/android/spacetracks/tiles/TilesData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2, v11}, Lcom/garageapps/android/spacetracks/tiles/TilesData;->add_texture(Ljava/nio/FloatBuffer;I)V

    .line 127
    move-object/from16 v0, p0

    iget v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->verticesCount:I

    add-int v1, v1, v17

    move-object/from16 v0, p0

    iput v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->verticesCount:I

    .line 129
    if-eqz v14, :cond_7

    .line 130
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->tilesData:Lcom/garageapps/android/spacetracks/tiles/TilesData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->vertexBuffer:Ljava/nio/FloatBuffer;

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v7, p8

    invoke-virtual/range {v1 .. v7}, Lcom/garageapps/android/spacetracks/tiles/TilesData;->square_bottom_left(Ljava/nio/FloatBuffer;FFFFF)I

    move-result v17

    .line 131
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->tilesData:Lcom/garageapps/android/spacetracks/tiles/TilesData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->colorBuffer:Ljava/nio/FloatBuffer;

    const/high16 v3, 0x3fc0

    invoke-virtual {v1, v2, v9, v3}, Lcom/garageapps/android/spacetracks/tiles/TilesData;->add_color(Ljava/nio/FloatBuffer;IF)V

    .line 132
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->tilesData:Lcom/garageapps/android/spacetracks/tiles/TilesData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2, v11}, Lcom/garageapps/android/spacetracks/tiles/TilesData;->add_texture(Ljava/nio/FloatBuffer;I)V

    .line 133
    move-object/from16 v0, p0

    iget v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->verticesCount:I

    add-int v1, v1, v17

    move-object/from16 v0, p0

    iput v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->verticesCount:I

    .line 136
    :cond_7
    if-eqz v15, :cond_2

    .line 137
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->tilesData:Lcom/garageapps/android/spacetracks/tiles/TilesData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->vertexBuffer:Ljava/nio/FloatBuffer;

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v7, p8

    invoke-virtual/range {v1 .. v7}, Lcom/garageapps/android/spacetracks/tiles/TilesData;->triangle_nw_bottom_right(Ljava/nio/FloatBuffer;FFFFF)I

    move-result v17

    .line 138
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->tilesData:Lcom/garageapps/android/spacetracks/tiles/TilesData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->colorBuffer:Ljava/nio/FloatBuffer;

    const/high16 v3, 0x3fc0

    invoke-virtual {v1, v2, v9, v3}, Lcom/garageapps/android/spacetracks/tiles/TilesData;->add_color(Ljava/nio/FloatBuffer;IF)V

    .line 139
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->tilesData:Lcom/garageapps/android/spacetracks/tiles/TilesData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2, v11}, Lcom/garageapps/android/spacetracks/tiles/TilesData;->add_texture(Ljava/nio/FloatBuffer;I)V

    .line 140
    move-object/from16 v0, p0

    iget v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->verticesCount:I

    add-int v1, v1, v17

    move-object/from16 v0, p0

    iput v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->verticesCount:I

    goto/16 :goto_1

    .line 145
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->tilesData:Lcom/garageapps/android/spacetracks/tiles/TilesData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->vertexBuffer:Ljava/nio/FloatBuffer;

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v7, p8

    invoke-virtual/range {v1 .. v7}, Lcom/garageapps/android/spacetracks/tiles/TilesData;->triangle_ne(Ljava/nio/FloatBuffer;FFFFF)I

    move-result v17

    .line 146
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->tilesData:Lcom/garageapps/android/spacetracks/tiles/TilesData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->colorBuffer:Ljava/nio/FloatBuffer;

    const/high16 v3, 0x3f80

    invoke-virtual {v1, v2, v9, v3}, Lcom/garageapps/android/spacetracks/tiles/TilesData;->add_color(Ljava/nio/FloatBuffer;IF)V

    .line 147
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->tilesData:Lcom/garageapps/android/spacetracks/tiles/TilesData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2, v11}, Lcom/garageapps/android/spacetracks/tiles/TilesData;->add_texture(Ljava/nio/FloatBuffer;I)V

    .line 148
    move-object/from16 v0, p0

    iget v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->verticesCount:I

    add-int v1, v1, v17

    move-object/from16 v0, p0

    iput v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->verticesCount:I

    .line 150
    if-eqz v14, :cond_8

    .line 151
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->tilesData:Lcom/garageapps/android/spacetracks/tiles/TilesData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->vertexBuffer:Ljava/nio/FloatBuffer;

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v7, p8

    invoke-virtual/range {v1 .. v7}, Lcom/garageapps/android/spacetracks/tiles/TilesData;->triangle_ne_bottom_left(Ljava/nio/FloatBuffer;FFFFF)I

    move-result v17

    .line 152
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->tilesData:Lcom/garageapps/android/spacetracks/tiles/TilesData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->colorBuffer:Ljava/nio/FloatBuffer;

    const/high16 v3, 0x3fc0

    invoke-virtual {v1, v2, v9, v3}, Lcom/garageapps/android/spacetracks/tiles/TilesData;->add_color(Ljava/nio/FloatBuffer;IF)V

    .line 153
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->tilesData:Lcom/garageapps/android/spacetracks/tiles/TilesData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2, v11}, Lcom/garageapps/android/spacetracks/tiles/TilesData;->add_texture(Ljava/nio/FloatBuffer;I)V

    .line 154
    move-object/from16 v0, p0

    iget v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->verticesCount:I

    add-int v1, v1, v17

    move-object/from16 v0, p0

    iput v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->verticesCount:I

    .line 157
    :cond_8
    if-eqz v15, :cond_2

    .line 158
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->tilesData:Lcom/garageapps/android/spacetracks/tiles/TilesData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->vertexBuffer:Ljava/nio/FloatBuffer;

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v7, p8

    invoke-virtual/range {v1 .. v7}, Lcom/garageapps/android/spacetracks/tiles/TilesData;->square_bottom_right(Ljava/nio/FloatBuffer;FFFFF)I

    move-result v17

    .line 159
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->tilesData:Lcom/garageapps/android/spacetracks/tiles/TilesData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->colorBuffer:Ljava/nio/FloatBuffer;

    const/high16 v3, 0x3fc0

    invoke-virtual {v1, v2, v9, v3}, Lcom/garageapps/android/spacetracks/tiles/TilesData;->add_color(Ljava/nio/FloatBuffer;IF)V

    .line 160
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->tilesData:Lcom/garageapps/android/spacetracks/tiles/TilesData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2, v11}, Lcom/garageapps/android/spacetracks/tiles/TilesData;->add_texture(Ljava/nio/FloatBuffer;I)V

    .line 161
    move-object/from16 v0, p0

    iget v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->verticesCount:I

    add-int v1, v1, v17

    move-object/from16 v0, p0

    iput v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->verticesCount:I

    goto/16 :goto_1

    .line 166
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->tilesData:Lcom/garageapps/android/spacetracks/tiles/TilesData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->vertexBuffer:Ljava/nio/FloatBuffer;

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v7, p8

    invoke-virtual/range {v1 .. v7}, Lcom/garageapps/android/spacetracks/tiles/TilesData;->triangle_sw(Ljava/nio/FloatBuffer;FFFFF)I

    move-result v17

    .line 167
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->tilesData:Lcom/garageapps/android/spacetracks/tiles/TilesData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->colorBuffer:Ljava/nio/FloatBuffer;

    const/high16 v3, 0x3f80

    invoke-virtual {v1, v2, v9, v3}, Lcom/garageapps/android/spacetracks/tiles/TilesData;->add_color(Ljava/nio/FloatBuffer;IF)V

    .line 168
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->tilesData:Lcom/garageapps/android/spacetracks/tiles/TilesData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2, v11}, Lcom/garageapps/android/spacetracks/tiles/TilesData;->add_texture(Ljava/nio/FloatBuffer;I)V

    .line 169
    move-object/from16 v0, p0

    iget v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->verticesCount:I

    add-int v1, v1, v17

    move-object/from16 v0, p0

    iput v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->verticesCount:I

    .line 171
    if-eqz v13, :cond_9

    .line 172
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->tilesData:Lcom/garageapps/android/spacetracks/tiles/TilesData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->vertexBuffer:Ljava/nio/FloatBuffer;

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v7, p8

    invoke-virtual/range {v1 .. v7}, Lcom/garageapps/android/spacetracks/tiles/TilesData;->square_bottom(Ljava/nio/FloatBuffer;FFFFF)I

    move-result v17

    .line 173
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->tilesData:Lcom/garageapps/android/spacetracks/tiles/TilesData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->colorBuffer:Ljava/nio/FloatBuffer;

    const/high16 v3, 0x3fc0

    invoke-virtual {v1, v2, v9, v3}, Lcom/garageapps/android/spacetracks/tiles/TilesData;->add_color(Ljava/nio/FloatBuffer;IF)V

    .line 174
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->tilesData:Lcom/garageapps/android/spacetracks/tiles/TilesData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2, v11}, Lcom/garageapps/android/spacetracks/tiles/TilesData;->add_texture(Ljava/nio/FloatBuffer;I)V

    .line 175
    move-object/from16 v0, p0

    iget v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->verticesCount:I

    add-int v1, v1, v17

    move-object/from16 v0, p0

    iput v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->verticesCount:I

    .line 178
    :cond_9
    if-eqz v14, :cond_2

    .line 179
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->tilesData:Lcom/garageapps/android/spacetracks/tiles/TilesData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->vertexBuffer:Ljava/nio/FloatBuffer;

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v7, p8

    invoke-virtual/range {v1 .. v7}, Lcom/garageapps/android/spacetracks/tiles/TilesData;->square_bottom_left(Ljava/nio/FloatBuffer;FFFFF)I

    move-result v17

    .line 180
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->tilesData:Lcom/garageapps/android/spacetracks/tiles/TilesData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->colorBuffer:Ljava/nio/FloatBuffer;

    const/high16 v3, 0x3fc0

    invoke-virtual {v1, v2, v9, v3}, Lcom/garageapps/android/spacetracks/tiles/TilesData;->add_color(Ljava/nio/FloatBuffer;IF)V

    .line 181
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->tilesData:Lcom/garageapps/android/spacetracks/tiles/TilesData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2, v11}, Lcom/garageapps/android/spacetracks/tiles/TilesData;->add_texture(Ljava/nio/FloatBuffer;I)V

    .line 182
    move-object/from16 v0, p0

    iget v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->verticesCount:I

    add-int v1, v1, v17

    move-object/from16 v0, p0

    iput v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->verticesCount:I

    goto/16 :goto_1

    .line 187
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->tilesData:Lcom/garageapps/android/spacetracks/tiles/TilesData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->vertexBuffer:Ljava/nio/FloatBuffer;

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v7, p8

    invoke-virtual/range {v1 .. v7}, Lcom/garageapps/android/spacetracks/tiles/TilesData;->triangle_se(Ljava/nio/FloatBuffer;FFFFF)I

    move-result v17

    .line 188
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->tilesData:Lcom/garageapps/android/spacetracks/tiles/TilesData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->colorBuffer:Ljava/nio/FloatBuffer;

    const/high16 v3, 0x3f80

    invoke-virtual {v1, v2, v9, v3}, Lcom/garageapps/android/spacetracks/tiles/TilesData;->add_color(Ljava/nio/FloatBuffer;IF)V

    .line 189
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->tilesData:Lcom/garageapps/android/spacetracks/tiles/TilesData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2, v11}, Lcom/garageapps/android/spacetracks/tiles/TilesData;->add_texture(Ljava/nio/FloatBuffer;I)V

    .line 190
    move-object/from16 v0, p0

    iget v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->verticesCount:I

    add-int v1, v1, v17

    move-object/from16 v0, p0

    iput v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->verticesCount:I

    .line 192
    if-eqz v13, :cond_a

    .line 193
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->tilesData:Lcom/garageapps/android/spacetracks/tiles/TilesData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->vertexBuffer:Ljava/nio/FloatBuffer;

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v7, p8

    invoke-virtual/range {v1 .. v7}, Lcom/garageapps/android/spacetracks/tiles/TilesData;->square_bottom(Ljava/nio/FloatBuffer;FFFFF)I

    move-result v17

    .line 194
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->tilesData:Lcom/garageapps/android/spacetracks/tiles/TilesData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->colorBuffer:Ljava/nio/FloatBuffer;

    const/high16 v3, 0x3fc0

    invoke-virtual {v1, v2, v9, v3}, Lcom/garageapps/android/spacetracks/tiles/TilesData;->add_color(Ljava/nio/FloatBuffer;IF)V

    .line 195
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->tilesData:Lcom/garageapps/android/spacetracks/tiles/TilesData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2, v11}, Lcom/garageapps/android/spacetracks/tiles/TilesData;->add_texture(Ljava/nio/FloatBuffer;I)V

    .line 196
    move-object/from16 v0, p0

    iget v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->verticesCount:I

    add-int v1, v1, v17

    move-object/from16 v0, p0

    iput v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->verticesCount:I

    .line 199
    :cond_a
    if-eqz v15, :cond_2

    .line 200
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->tilesData:Lcom/garageapps/android/spacetracks/tiles/TilesData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->vertexBuffer:Ljava/nio/FloatBuffer;

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v7, p8

    invoke-virtual/range {v1 .. v7}, Lcom/garageapps/android/spacetracks/tiles/TilesData;->square_bottom_right(Ljava/nio/FloatBuffer;FFFFF)I

    move-result v17

    .line 201
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->tilesData:Lcom/garageapps/android/spacetracks/tiles/TilesData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->colorBuffer:Ljava/nio/FloatBuffer;

    const/high16 v3, 0x3fc0

    invoke-virtual {v1, v2, v9, v3}, Lcom/garageapps/android/spacetracks/tiles/TilesData;->add_color(Ljava/nio/FloatBuffer;IF)V

    .line 202
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->tilesData:Lcom/garageapps/android/spacetracks/tiles/TilesData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2, v11}, Lcom/garageapps/android/spacetracks/tiles/TilesData;->add_texture(Ljava/nio/FloatBuffer;I)V

    .line 203
    move-object/from16 v0, p0

    iget v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->verticesCount:I

    add-int v1, v1, v17

    move-object/from16 v0, p0

    iput v1, v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->verticesCount:I

    goto/16 :goto_1

    .line 91
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xa -> :sswitch_1
        0xb -> :sswitch_2
        0xc -> :sswitch_3
        0xd -> :sswitch_4
        0x62 -> :sswitch_0
        0x63 -> :sswitch_0
    .end sparse-switch
.end method

.method public getColor()Ljava/nio/FloatBuffer;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->colorBuffer:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getTexture()Ljava/nio/FloatBuffer;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->textureBuffer:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getVertex()Ljava/nio/FloatBuffer;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->vertexBuffer:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getVerticesCount()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/garageapps/android/spacetracks/tiles/TileManager;->verticesCount:I

    return v0
.end method
