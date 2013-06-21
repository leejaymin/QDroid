.class public Lcom/garageapps/android/spacetracks/levels/LevelManager;
.super Ljava/lang/Object;
.source "LevelManager.java"


# instance fields
.field final MAX_VERTICES_PER_TILE:I

.field final TILE_SIZE:F

.field private currentAngle:F

.field private currentLevel:I

.field private fogColorBuffer:Ljava/nio/FloatBuffer;

.field private mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

.field private mTileManager:Lcom/garageapps/android/spacetracks/tiles/TileManager;

.field private nebulaAngle:F

.field private nebulaColorBuffer:Ljava/nio/FloatBuffer;

.field private objectsFlag:Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;

.field private objectsPlane:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

.field private objectsTunnel:Lcom/garageapps/android/spacetracks/objects/ObjectsTorus;

.field private tilesColorBuffer:Ljava/nio/FloatBuffer;

.field private tilesTextureBuffer:Ljava/nio/FloatBuffer;

.field private tilesVertexBuffer:Ljava/nio/FloatBuffer;

.field private tilesVerticesCount:I

.field private tilesVerticesOffsets:[I


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5
    .parameter "gl"

    .prologue
    const/16 v1, 0x18

    const/high16 v4, 0x3f80

    const/4 v3, 0x4

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput v1, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->MAX_VERTICES_PER_TILE:I

    .line 66
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->TILE_SIZE:F

    .line 89
    new-instance v0, Lcom/garageapps/android/spacetracks/tiles/TileManager;

    invoke-direct {v0, v1}, Lcom/garageapps/android/spacetracks/tiles/TileManager;-><init>(I)V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mTileManager:Lcom/garageapps/android/spacetracks/tiles/TileManager;

    .line 90
    new-instance v0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->objectsPlane:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    .line 91
    new-instance v0, Lcom/garageapps/android/spacetracks/objects/ObjectsTorus;

    const v1, 0x3e4ccccd

    const/high16 v2, 0x4000

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/garageapps/android/spacetracks/objects/ObjectsTorus;-><init>(FFII)V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->objectsTunnel:Lcom/garageapps/android/spacetracks/objects/ObjectsTorus;

    .line 92
    new-instance v0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;

    const/16 v1, 0xa

    invoke-direct {v0, v1, v3}, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;-><init>(II)V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->objectsFlag:Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->nebulaAngle:F

    .line 95
    const/16 v0, 0xb65

    const/high16 v1, 0x4500

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glFogf(IF)V

    .line 96
    const/16 v0, 0xb62

    invoke-interface {p1, v0, v4}, Ljavax/microedition/khronos/opengles/GL10;->glFogf(IF)V

    .line 97
    const/16 v0, 0xb63

    invoke-interface {p1, v0, v4}, Ljavax/microedition/khronos/opengles/GL10;->glFogf(IF)V

    .line 98
    const/16 v0, 0xb64

    const/high16 v1, 0x40a0

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glFogf(IF)V

    .line 99
    const/16 v0, 0xc54

    const/16 v1, 0x2601

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    .line 100
    return-void
.end method

.method private animateObjects(Ljavax/microedition/khronos/opengles/GL10;IIIIIFFFF)V
    .locals 7
    .parameter "gl"
    .parameter "index"
    .parameter "object"
    .parameter "objectS"
    .parameter "objectX"
    .parameter "objectY"
    .parameter "xoff"
    .parameter "zoff"
    .parameter "z"
    .parameter "angle"

    .prologue
    .line 484
    add-int/lit8 v2, p3, -0x64

    int-to-float v2, v2

    const v3, 0x3c23d70a

    mul-float v1, v2, v3

    .line 486
    .local v1, frame:F
    const/16 v2, 0xbe2

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 487
    const/16 v2, 0x302

    const/4 v3, 0x1

    invoke-interface {p1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 488
    const/16 v2, 0xde1

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 489
    const/16 v2, 0xb71

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 490
    const v2, 0x8076

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 491
    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f00

    const/high16 v6, 0x4000

    mul-float/2addr v6, v1

    sub-float/2addr v5, v6

    invoke-interface {p1, v2, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 493
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 494
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    move/from16 v0, p10

    invoke-interface {p1, v0, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 495
    const v2, 0x3d4ccccd

    const/high16 v3, -0x4080

    const/high16 v4, -0x3fe0

    add-float v4, v4, p9

    invoke-interface {p1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 496
    const/4 v2, 0x0

    const/high16 v3, -0x4080

    add-float/2addr v3, p8

    invoke-interface {p1, p7, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 497
    const/high16 v2, 0x3e80

    add-float/2addr v2, v1

    const/high16 v3, 0x3e80

    add-float/2addr v3, v1

    const/high16 v4, 0x3e80

    add-float/2addr v4, v1

    invoke-interface {p1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 498
    const/16 v2, 0xde1

    sget-object v3, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    const/16 v4, 0x2d

    aget v3, v3, v4

    invoke-interface {p1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 499
    iget-object v2, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->objectsPlane:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    invoke-virtual {v2, p1}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 501
    add-int/lit8 p3, p3, 0x1

    .line 502
    add-int/lit8 v2, p3, -0x64

    const/16 v3, 0x7d

    if-le v2, v3, :cond_0

    .line 503
    iget-object v2, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/levels/Levels;->mObjects:[I

    const/4 v3, 0x0

    aput v3, v2, p2

    .line 506
    :goto_0
    return-void

    .line 505
    :cond_0
    iget-object v2, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/levels/Levels;->mObjects:[I

    shl-int/lit8 v3, p3, 0x18

    shl-int/lit8 v4, p4, 0x10

    add-int/2addr v3, v4

    shl-int/lit8 v4, p5, 0x8

    add-int/2addr v3, v4

    add-int/2addr v3, p6

    aput v3, v2, p2

    goto :goto_0
.end method

.method private constructBuffers()V
    .locals 14

    .prologue
    .line 577
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    invoke-virtual {v0}, Lcom/garageapps/android/spacetracks/levels/Levels;->getSizeX()I

    move-result v10

    .line 578
    .local v10, sizeX:I
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    invoke-virtual {v0}, Lcom/garageapps/android/spacetracks/levels/Levels;->getSizeY()I

    move-result v11

    .line 579
    .local v11, sizeY:I
    add-int/lit8 v0, v11, -0x1

    mul-int v9, v10, v0

    .line 580
    .local v9, index:I
    const/4 v1, 0x0

    .line 581
    .local v1, data:I
    const/4 v2, 0x0

    .line 582
    .local v2, dataLeft:I
    const/4 v3, 0x0

    .line 583
    .local v3, dataRight:I
    const/4 v4, 0x0

    .line 584
    .local v4, dataBottom:I
    const/4 v6, 0x0

    .line 585
    .local v6, xoff:F
    const/4 v8, 0x0

    .line 588
    .local v8, zoff:F
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    invoke-virtual {v0}, Lcom/garageapps/android/spacetracks/levels/Levels;->getFogColor()[F

    move-result-object v0

    invoke-static {v0}, Lcom/garageapps/android/spacetracks/glSpec;->initFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->fogColorBuffer:Ljava/nio/FloatBuffer;

    .line 589
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    invoke-virtual {v0}, Lcom/garageapps/android/spacetracks/levels/Levels;->getNebulaColor()[F

    move-result-object v0

    invoke-static {v0}, Lcom/garageapps/android/spacetracks/glSpec;->initFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->nebulaColorBuffer:Ljava/nio/FloatBuffer;

    .line 590
    mul-int v0, v10, v11

    mul-int/lit8 v0, v0, 0x18

    mul-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Lcom/garageapps/android/spacetracks/glSpec;->allocateFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->tilesVertexBuffer:Ljava/nio/FloatBuffer;

    .line 591
    mul-int v0, v10, v11

    mul-int/lit8 v0, v0, 0x18

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/garageapps/android/spacetracks/glSpec;->allocateFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->tilesTextureBuffer:Ljava/nio/FloatBuffer;

    .line 592
    mul-int v0, v10, v11

    mul-int/lit8 v0, v0, 0x18

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Lcom/garageapps/android/spacetracks/glSpec;->allocateFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->tilesColorBuffer:Ljava/nio/FloatBuffer;

    .line 593
    const/4 v0, 0x0

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->tilesVerticesCount:I

    .line 594
    new-array v0, v11, [I

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->tilesVerticesOffsets:[I

    .line 597
    const/4 v13, 0x0

    .local v13, y:I
    :goto_0
    if-lt v13, v11, :cond_0

    .line 629
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->tilesVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 630
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->tilesTextureBuffer:Ljava/nio/FloatBuffer;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 631
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->tilesColorBuffer:Ljava/nio/FloatBuffer;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 632
    return-void

    .line 600
    :cond_0
    int-to-float v0, v10

    const/high16 v5, 0x3f00

    mul-float/2addr v0, v5

    neg-float v0, v0

    const/high16 v5, 0x3e80

    add-float v6, v0, v5

    .line 602
    const/4 v12, 0x0

    .local v12, x:I
    :goto_1
    if-lt v12, v10, :cond_1

    .line 623
    mul-int/lit8 v0, v10, 0x2

    sub-int/2addr v9, v0

    .line 624
    const/high16 v0, 0x3f80

    sub-float/2addr v8, v0

    .line 625
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->tilesVerticesOffsets:[I

    iget v5, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->tilesVerticesCount:I

    aput v5, v0, v13

    .line 597
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 604
    :cond_1
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    invoke-virtual {v0, v9}, Lcom/garageapps/android/spacetracks/levels/Levels;->getTile(I)I

    move-result v1

    .line 606
    if-lez v1, :cond_2

    .line 608
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    add-int/lit8 v5, v9, -0x1

    invoke-virtual {v0, v5}, Lcom/garageapps/android/spacetracks/levels/Levels;->getTile(I)I

    move-result v2

    .line 609
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    add-int/lit8 v5, v9, 0x1

    invoke-virtual {v0, v5}, Lcom/garageapps/android/spacetracks/levels/Levels;->getTile(I)I

    move-result v3

    .line 610
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    add-int v5, v9, v10

    invoke-virtual {v0, v5}, Lcom/garageapps/android/spacetracks/levels/Levels;->getTile(I)I

    move-result v4

    .line 612
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mTileManager:Lcom/garageapps/android/spacetracks/tiles/TileManager;

    const/high16 v5, 0x3f00

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/garageapps/android/spacetracks/tiles/TileManager;->buildTile(IIIIFFFF)V

    .line 613
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->tilesVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v5, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mTileManager:Lcom/garageapps/android/spacetracks/tiles/TileManager;

    invoke-virtual {v5}, Lcom/garageapps/android/spacetracks/tiles/TileManager;->getVertex()Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    .line 614
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->tilesColorBuffer:Ljava/nio/FloatBuffer;

    iget-object v5, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mTileManager:Lcom/garageapps/android/spacetracks/tiles/TileManager;

    invoke-virtual {v5}, Lcom/garageapps/android/spacetracks/tiles/TileManager;->getColor()Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    .line 615
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->tilesTextureBuffer:Ljava/nio/FloatBuffer;

    iget-object v5, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mTileManager:Lcom/garageapps/android/spacetracks/tiles/TileManager;

    invoke-virtual {v5}, Lcom/garageapps/android/spacetracks/tiles/TileManager;->getTexture()Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    .line 616
    iget v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->tilesVerticesCount:I

    iget-object v5, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mTileManager:Lcom/garageapps/android/spacetracks/tiles/TileManager;

    invoke-virtual {v5}, Lcom/garageapps/android/spacetracks/tiles/TileManager;->getVerticesCount()I

    move-result v5

    add-int/2addr v0, v5

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->tilesVerticesCount:I

    .line 619
    :cond_2
    add-int/lit8 v9, v9, 0x1

    .line 620
    const/high16 v0, 0x3f80

    add-float/2addr v6, v0

    .line 602
    add-int/lit8 v12, v12, 0x1

    goto :goto_1
.end method

.method private constructLevel(I)V
    .locals 1
    .parameter "level"

    .prologue
    .line 531
    packed-switch p1, :pswitch_data_0

    .line 573
    :goto_0
    return-void

    .line 532
    :pswitch_0
    new-instance v0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_01;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/levels/data/Levels01_01;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    goto :goto_0

    .line 533
    :pswitch_1
    new-instance v0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_02;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/levels/data/Levels01_02;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    goto :goto_0

    .line 534
    :pswitch_2
    new-instance v0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_03;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/levels/data/Levels01_03;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    goto :goto_0

    .line 535
    :pswitch_3
    new-instance v0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_04;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/levels/data/Levels01_04;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    goto :goto_0

    .line 536
    :pswitch_4
    new-instance v0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_05;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/levels/data/Levels01_05;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    goto :goto_0

    .line 537
    :pswitch_5
    new-instance v0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_06;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/levels/data/Levels01_06;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    goto :goto_0

    .line 538
    :pswitch_6
    new-instance v0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_07;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/levels/data/Levels01_07;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    goto :goto_0

    .line 539
    :pswitch_7
    new-instance v0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_08;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/levels/data/Levels01_08;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    goto :goto_0

    .line 540
    :pswitch_8
    new-instance v0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_01;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/levels/data/Levels02_01;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    goto :goto_0

    .line 541
    :pswitch_9
    new-instance v0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_02;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/levels/data/Levels02_02;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    goto :goto_0

    .line 542
    :pswitch_a
    new-instance v0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_03;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/levels/data/Levels02_03;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    goto :goto_0

    .line 543
    :pswitch_b
    new-instance v0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_04;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/levels/data/Levels02_04;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    goto :goto_0

    .line 544
    :pswitch_c
    new-instance v0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_05;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/levels/data/Levels02_05;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    goto :goto_0

    .line 545
    :pswitch_d
    new-instance v0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_06;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/levels/data/Levels02_06;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    goto :goto_0

    .line 546
    :pswitch_e
    new-instance v0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_07;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/levels/data/Levels02_07;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    goto :goto_0

    .line 547
    :pswitch_f
    new-instance v0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_08;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/levels/data/Levels02_08;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    goto :goto_0

    .line 548
    :pswitch_10
    new-instance v0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_01;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/levels/data/Levels03_01;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    goto/16 :goto_0

    .line 549
    :pswitch_11
    new-instance v0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_02;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/levels/data/Levels03_02;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    goto/16 :goto_0

    .line 550
    :pswitch_12
    new-instance v0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_03;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/levels/data/Levels03_03;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    goto/16 :goto_0

    .line 551
    :pswitch_13
    new-instance v0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_04;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/levels/data/Levels03_04;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    goto/16 :goto_0

    .line 552
    :pswitch_14
    new-instance v0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_05;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/levels/data/Levels03_05;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    goto/16 :goto_0

    .line 553
    :pswitch_15
    new-instance v0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_06;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/levels/data/Levels03_06;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    goto/16 :goto_0

    .line 554
    :pswitch_16
    new-instance v0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_07;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/levels/data/Levels03_07;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    goto/16 :goto_0

    .line 555
    :pswitch_17
    new-instance v0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_08;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/levels/data/Levels03_08;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    goto/16 :goto_0

    .line 556
    :pswitch_18
    new-instance v0, Lcom/garageapps/android/spacetracks/levels/data/Levels04_01;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/levels/data/Levels04_01;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    goto/16 :goto_0

    .line 557
    :pswitch_19
    new-instance v0, Lcom/garageapps/android/spacetracks/levels/data/Levels04_02;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/levels/data/Levels04_02;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    goto/16 :goto_0

    .line 558
    :pswitch_1a
    new-instance v0, Lcom/garageapps/android/spacetracks/levels/data/Levels04_03;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/levels/data/Levels04_03;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    goto/16 :goto_0

    .line 559
    :pswitch_1b
    new-instance v0, Lcom/garageapps/android/spacetracks/levels/data/Levels04_04;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/levels/data/Levels04_04;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    goto/16 :goto_0

    .line 560
    :pswitch_1c
    new-instance v0, Lcom/garageapps/android/spacetracks/levels/data/Levels04_05;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/levels/data/Levels04_05;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    goto/16 :goto_0

    .line 561
    :pswitch_1d
    new-instance v0, Lcom/garageapps/android/spacetracks/levels/data/Levels04_06;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/levels/data/Levels04_06;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    goto/16 :goto_0

    .line 562
    :pswitch_1e
    new-instance v0, Lcom/garageapps/android/spacetracks/levels/data/Levels04_07;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/levels/data/Levels04_07;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    goto/16 :goto_0

    .line 563
    :pswitch_1f
    new-instance v0, Lcom/garageapps/android/spacetracks/levels/data/Levels04_08;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/levels/data/Levels04_08;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    goto/16 :goto_0

    .line 564
    :pswitch_20
    new-instance v0, Lcom/garageapps/android/spacetracks/levels/data/Levels05_01;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/levels/data/Levels05_01;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    goto/16 :goto_0

    .line 565
    :pswitch_21
    new-instance v0, Lcom/garageapps/android/spacetracks/levels/data/Levels05_02;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/levels/data/Levels05_02;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    goto/16 :goto_0

    .line 566
    :pswitch_22
    new-instance v0, Lcom/garageapps/android/spacetracks/levels/data/Levels05_03;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/levels/data/Levels05_03;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    goto/16 :goto_0

    .line 567
    :pswitch_23
    new-instance v0, Lcom/garageapps/android/spacetracks/levels/data/Levels05_04;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/levels/data/Levels05_04;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    goto/16 :goto_0

    .line 568
    :pswitch_24
    new-instance v0, Lcom/garageapps/android/spacetracks/levels/data/Levels05_05;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/levels/data/Levels05_05;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    goto/16 :goto_0

    .line 569
    :pswitch_25
    new-instance v0, Lcom/garageapps/android/spacetracks/levels/data/Levels05_06;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/levels/data/Levels05_06;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    goto/16 :goto_0

    .line 570
    :pswitch_26
    new-instance v0, Lcom/garageapps/android/spacetracks/levels/data/Levels05_07;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/levels/data/Levels05_07;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    goto/16 :goto_0

    .line 571
    :pswitch_27
    new-instance v0, Lcom/garageapps/android/spacetracks/levels/data/Levels05_08;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/levels/data/Levels05_08;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    goto/16 :goto_0

    .line 531
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
    .end packed-switch
.end method

.method private drawObjectBonus(Ljavax/microedition/khronos/opengles/GL10;FFFFFI)V
    .locals 7
    .parameter "gl"
    .parameter "xoff"
    .parameter "zoff"
    .parameter "z"
    .parameter "angle"
    .parameter "fog"
    .parameter "type"

    .prologue
    const/high16 v6, -0x4080

    const/high16 v5, 0x3f00

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    const/high16 v2, 0x3e80

    .line 356
    const/16 v0, 0xbe2

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 357
    const/16 v0, 0x302

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 358
    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 359
    const/16 v0, 0xb71

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 360
    const v0, 0x8076

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 362
    const/16 v0, 0x20

    if-lt p7, v0, :cond_2

    const/16 v0, 0x23

    if-gt p7, v0, :cond_2

    .line 363
    sub-float v0, v3, p6

    mul-float/2addr v0, v5

    invoke-interface {p1, v3, v2, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 369
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 371
    invoke-interface {p1, p5, v4, v4, v3}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 372
    const v0, 0x3d4ccccd

    const/high16 v1, -0x3fe0

    add-float/2addr v1, p4

    invoke-interface {p1, v0, v6, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 373
    add-float v0, v6, p3

    invoke-interface {p1, p2, v4, v0}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 374
    iget v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->currentAngle:F

    invoke-interface {p1, v0, v4, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 375
    invoke-interface {p1, v2, v2, v2}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 376
    const/16 v0, 0xde1

    sget-object v1, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    const/16 v2, 0x29

    aget v1, v1, v2

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 377
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->objectsPlane:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    invoke-virtual {v0, p1}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 379
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/mainApplication;->mPrefs:Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;

    iget v0, v0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->videoDetails:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 380
    const/high16 v0, 0x42b4

    invoke-interface {p1, v0, v4, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 381
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->objectsPlane:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    invoke-virtual {v0, p1}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 383
    :cond_1
    return-void

    .line 364
    :cond_2
    const/16 v0, 0x30

    if-lt p7, v0, :cond_3

    const/16 v0, 0x33

    if-gt p7, v0, :cond_3

    .line 365
    sub-float v0, v3, p6

    mul-float/2addr v0, v5

    invoke-interface {p1, v2, v3, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    goto :goto_0

    .line 366
    :cond_3
    const/16 v0, 0x40

    if-lt p7, v0, :cond_0

    const/16 v0, 0x43

    if-gt p7, v0, :cond_0

    .line 367
    sub-float v0, v3, p6

    mul-float/2addr v0, v5

    invoke-interface {p1, v2, v2, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    goto :goto_0
.end method

.method private drawObjectBonusPoints(Ljavax/microedition/khronos/opengles/GL10;FFFFF)V
    .locals 7
    .parameter "gl"
    .parameter "xoff"
    .parameter "zoff"
    .parameter "z"
    .parameter "angle"
    .parameter "fog"

    .prologue
    const/high16 v6, -0x4080

    const/16 v5, 0xde1

    const/high16 v4, 0x3e80

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 387
    const/16 v0, 0xbe2

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 388
    const/16 v0, 0x302

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 389
    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 390
    const/16 v0, 0xb71

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 391
    const v0, 0x8076

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 392
    const/high16 v0, 0x3f00

    sub-float v1, v3, p6

    mul-float/2addr v0, v1

    invoke-interface {p1, v3, v3, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 394
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 396
    invoke-interface {p1, p5, v2, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 397
    const v0, 0x3d4ccccd

    const/high16 v1, -0x3fe0

    add-float/2addr v1, p4

    invoke-interface {p1, v0, v6, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 398
    add-float v0, v6, p3

    invoke-interface {p1, p2, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 399
    iget v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->currentAngle:F

    invoke-interface {p1, v0, v2, v3, v2}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 400
    invoke-interface {p1, v4, v4, v4}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 401
    sget-object v0, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    const/16 v1, 0x2c

    aget v0, v0, v1

    invoke-interface {p1, v5, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 402
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->objectsPlane:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    invoke-virtual {v0, p1}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 404
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/mainApplication;->mPrefs:Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;

    iget v0, v0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->videoDetails:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 405
    iget v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->currentAngle:F

    neg-float v0, v0

    invoke-interface {p1, v0, v2, v3, v2}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 406
    iget v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->currentAngle:F

    invoke-interface {p1, v0, v3, v2, v2}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 407
    sget-object v0, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    const/16 v1, 0x2d

    aget v0, v0, v1

    invoke-interface {p1, v5, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 408
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->objectsPlane:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    invoke-virtual {v0, p1}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 410
    :cond_0
    return-void
.end method

.method private drawObjectFlag(Ljavax/microedition/khronos/opengles/GL10;FFFFF)V
    .locals 4
    .parameter "gl"
    .parameter "xoff"
    .parameter "zoff"
    .parameter "z"
    .parameter "angle"
    .parameter "fog"

    .prologue
    const/4 v1, 0x0

    const/high16 v3, 0x3f80

    .line 431
    const/16 v0, 0xbe2

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 432
    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 434
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 436
    invoke-interface {p1, p5, v1, v1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 437
    const v0, 0x3d4ccccd

    const/high16 v1, -0x4080

    const/high16 v2, -0x4000

    add-float/2addr v2, p4

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 438
    const/high16 v0, -0x4020

    add-float/2addr v0, p2

    const/high16 v1, 0x4040

    invoke-interface {p1, v0, v1, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 439
    sub-float v0, v3, p6

    mul-float/2addr v0, v3

    invoke-interface {p1, v3, v3, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 440
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->objectsFlag:Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;

    invoke-virtual {v0, p1, v3}, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->draw(Ljavax/microedition/khronos/opengles/GL10;F)V

    .line 441
    return-void
.end method

.method private drawObjectLight(Ljavax/microedition/khronos/opengles/GL10;FFFFFFI)V
    .locals 5
    .parameter "gl"
    .parameter "xoff"
    .parameter "yoff"
    .parameter "zoff"
    .parameter "z"
    .parameter "angle"
    .parameter "fog"
    .parameter "type"

    .prologue
    .line 318
    const/16 v0, 0xbe2

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 319
    const/16 v0, 0x302

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 320
    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 321
    const/16 v0, 0xb71

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 322
    const v0, 0x8076

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 324
    const/4 v0, 0x1

    if-ne p8, v0, :cond_0

    .line 325
    const/high16 v0, 0x3f80

    const/high16 v1, 0x3f80

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f00

    const/high16 v4, 0x3f80

    sub-float/2addr v4, p7

    mul-float/2addr v3, v4

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 326
    :cond_0
    const/4 v0, 0x2

    if-ne p8, v0, :cond_1

    .line 327
    const/high16 v0, 0x3f80

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f00

    const/high16 v4, 0x3f80

    sub-float/2addr v4, p7

    mul-float/2addr v3, v4

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 328
    :cond_1
    const/4 v0, 0x3

    if-ne p8, v0, :cond_2

    .line 329
    const/high16 v0, 0x3f00

    const/high16 v1, 0x3f80

    const/high16 v2, 0x3f00

    const v3, 0x3f4ccccd

    const/high16 v4, 0x3f80

    sub-float/2addr v4, p7

    mul-float/2addr v3, v4

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 330
    :cond_2
    const/4 v0, 0x4

    if-ne p8, v0, :cond_3

    .line 331
    const/high16 v0, 0x3f00

    const/high16 v1, 0x3f00

    const/high16 v2, 0x3f80

    const v3, 0x3f4ccccd

    const/high16 v4, 0x3f80

    sub-float/2addr v4, p7

    mul-float/2addr v3, v4

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 333
    :cond_3
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 335
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-interface {p1, p6, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 336
    const v0, 0x3d4ccccd

    const/high16 v1, -0x4080

    const/high16 v2, -0x4000

    add-float/2addr v2, p5

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 337
    const/high16 v0, -0x4080

    add-float/2addr v0, p4

    invoke-interface {p1, p2, p3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 338
    const/high16 v0, 0x4120

    mul-float/2addr v0, p5

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 339
    const/high16 v0, 0x3f00

    const/high16 v1, 0x3f00

    const/high16 v2, 0x3f00

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 340
    const/16 v0, 0xde1

    sget-object v1, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    const/16 v2, 0x2a

    aget v1, v1, v2

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 341
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->objectsPlane:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    invoke-virtual {v0, p1}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 343
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/mainApplication;->mPrefs:Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;

    iget v0, v0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->videoDetails:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 344
    const/4 v0, 0x0

    const v1, 0x3dcccccd

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 345
    neg-float v0, p5

    const/high16 v1, 0x4120

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 346
    const/high16 v0, 0x42b4

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 347
    const/16 v0, 0xde1

    sget-object v1, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    const/16 v2, 0x2b

    aget v1, v1, v2

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 348
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->objectsPlane:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    invoke-virtual {v0, p1}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 351
    :cond_4
    const/16 v0, 0xb71

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 352
    return-void
.end method

.method private drawObjectTunnel(Ljavax/microedition/khronos/opengles/GL10;FFFFFI)V
    .locals 6
    .parameter "gl"
    .parameter "xoff"
    .parameter "zoff"
    .parameter "z"
    .parameter "angle"
    .parameter "fog"
    .parameter "type"

    .prologue
    const/16 v2, 0xde1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    .line 414
    const/16 v0, 0xbe2

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 415
    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 416
    sget-object v0, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    iget-object v1, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    invoke-virtual {v1}, Lcom/garageapps/android/spacetracks/levels/Levels;->getNebulaId()I

    move-result v1

    aget v0, v0, v1

    invoke-interface {p1, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 418
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 420
    invoke-interface {p1, p5, v4, v4, v3}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 421
    const v0, 0x3d4ccccd

    const/high16 v1, -0x4080

    const/high16 v2, -0x4000

    add-float/2addr v2, p4

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 422
    invoke-interface {p1, p2, v4, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 423
    const/high16 v0, 0x4234

    invoke-interface {p1, v0, v4, v4, v3}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 424
    const/high16 v0, 0x41f0

    invoke-interface {p1, v3, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 425
    sub-float v0, v3, p6

    mul-float/2addr v0, v3

    invoke-interface {p1, v3, v3, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 426
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->objectsTunnel:Lcom/garageapps/android/spacetracks/objects/ObjectsTorus;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v5, v5, v1}, Lcom/garageapps/android/spacetracks/objects/ObjectsTorus;->draw(Ljavax/microedition/khronos/opengles/GL10;ZZI)V

    .line 427
    return-void
.end method


# virtual methods
.method public collideLevel(II)I
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 224
    iget-object v2, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    invoke-virtual {v2}, Lcom/garageapps/android/spacetracks/levels/Levels;->getSizeX()I

    move-result v0

    .line 225
    .local v0, sizeX:I
    iget-object v2, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    invoke-virtual {v2}, Lcom/garageapps/android/spacetracks/levels/Levels;->getSizeY()I

    move-result v1

    .line 227
    .local v1, sizeY:I
    iget-object v2, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    sub-int v3, v1, p2

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v3, v0

    add-int/2addr v3, p1

    invoke-virtual {v2, v3}, Lcom/garageapps/android/spacetracks/levels/Levels;->getTile(I)I

    move-result v2

    return v2
.end method

.method public collideObjects(II)I
    .locals 11
    .parameter "x"
    .parameter "y"

    .prologue
    const/16 v10, 0x64

    const/16 v9, 0x10

    .line 445
    iget-object v8, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    invoke-virtual {v8}, Lcom/garageapps/android/spacetracks/levels/Levels;->getObjectsCount()I

    move-result v2

    .line 451
    .local v2, objectCount:I
    const/4 v7, 0x0

    .line 453
    .local v7, objectY_fixed:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 479
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 455
    :cond_0
    iget-object v8, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    invoke-virtual {v8, v0}, Lcom/garageapps/android/spacetracks/levels/Levels;->getObject(I)I

    move-result v3

    .line 457
    .local v3, objectData:I
    shr-int/lit8 v1, v3, 0x18

    .line 459
    .local v1, object:I
    if-lt v1, v9, :cond_2

    if-ge v1, v10, :cond_2

    .line 460
    shl-int/lit8 v8, v3, 0x8

    shr-int/lit8 v4, v8, 0x18

    .line 461
    .local v4, objectS:I
    shl-int/lit8 v8, v3, 0x10

    shr-int/lit8 v5, v8, 0x18

    .line 462
    .local v5, objectX:I
    shl-int/lit8 v8, v3, 0x18

    shr-int/lit8 v6, v8, 0x18

    .line 464
    .local v6, objectY:I
    if-gez v6, :cond_1

    .line 465
    add-int/lit16 v8, v6, 0x80

    add-int/lit16 v7, v8, 0x80

    .line 471
    :goto_2
    if-lt v1, v9, :cond_2

    if-ge v1, v10, :cond_2

    if-ne p1, v5, :cond_2

    if-ne p2, v7, :cond_2

    .line 473
    iget-object v8, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    iget-object v8, v8, Lcom/garageapps/android/spacetracks/levels/Levels;->mObjects:[I

    const/high16 v9, 0x6400

    shl-int/lit8 v10, v4, 0x10

    add-int/2addr v9, v10

    shl-int/lit8 v10, v5, 0x8

    add-int/2addr v9, v10

    add-int/2addr v9, v6

    aput v9, v8, v0

    goto :goto_1

    .line 468
    :cond_1
    move v7, v6

    goto :goto_2

    .line 453
    .end local v4           #objectS:I
    .end local v5           #objectX:I
    .end local v6           #objectY:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public drawLevel(Ljavax/microedition/khronos/opengles/GL10;FFFF)V
    .locals 13
    .parameter "gl"
    .parameter "x"
    .parameter "z"
    .parameter "angle"
    .parameter "fog"

    .prologue
    .line 138
    sget-object v8, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v8, v8, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v8, v8, Lcom/garageapps/android/spacetracks/mainApplication;->mPrefs:Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;

    iget v8, v8, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->videoDistance:I

    mul-int/lit8 v8, v8, 0x3

    add-int/lit8 v7, v8, 0x5

    .line 140
    .local v7, view:I
    move/from16 v0, p3

    float-to-int v8, v0

    add-int/lit8 v5, v8, -0x2

    .line 141
    .local v5, offset:I
    if-gez v5, :cond_0

    .line 143
    const/4 v5, 0x0

    .line 146
    :cond_0
    add-int v1, v5, v7

    .line 147
    .local v1, distance:I
    iget-object v8, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->tilesVerticesOffsets:[I

    array-length v8, v8

    add-int/lit8 v8, v8, -0x2

    if-le v1, v8, :cond_1

    .line 148
    iget-object v8, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->tilesVerticesOffsets:[I

    array-length v8, v8

    add-int/lit8 v1, v8, -0x2

    .line 150
    :cond_1
    iget-object v8, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->tilesVerticesOffsets:[I

    aget v6, v8, v5

    .line 151
    .local v6, startVertex:I
    iget-object v8, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->tilesVerticesOffsets:[I

    aget v2, v8, v1

    .line 153
    .local v2, endVertex:I
    const/16 v8, 0xb71

    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 155
    iget-object v8, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    invoke-virtual {v8}, Lcom/garageapps/android/spacetracks/levels/Levels;->getRenderMode()I

    move-result v4

    .line 157
    .local v4, mode:I
    if-nez v4, :cond_3

    .line 158
    const/16 v8, 0xbe2

    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 159
    const/16 v8, 0xde1

    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 160
    const/16 v8, 0xb60

    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 162
    const/4 v8, 0x4

    const/16 v9, 0x1406

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->tilesColorBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v8, v9, v10, v11}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    .line 163
    const v8, 0x8076

    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 164
    const v8, 0x8078

    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 165
    const/4 v8, 0x3

    const/16 v9, 0x1406

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->tilesVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v8, v9, v10, v11}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 166
    const v8, 0x8074

    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 168
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 169
    const/high16 v8, 0x4170

    const/high16 v9, 0x3f80

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface {p1, v8, v9, v10, v11}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 170
    const v8, 0x3e99999a

    const/high16 v9, -0x4080

    const/high16 v10, -0x3fc0

    add-float v10, v10, p3

    invoke-interface {p1, v8, v9, v10}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 215
    :cond_2
    :goto_0
    move v3, v6

    .local v3, i:I
    :goto_1
    if-lt v3, v2, :cond_5

    .line 218
    const/16 v8, 0xb60

    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 219
    const v8, 0x8076

    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 220
    return-void

    .line 173
    .end local v3           #i:I
    :cond_3
    const/4 v8, 0x2

    if-ne v4, v8, :cond_4

    .line 174
    const/16 v8, 0xbe2

    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 175
    const/16 v8, 0x302

    const/4 v9, 0x1

    invoke-interface {p1, v8, v9}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 176
    const/16 v8, 0xb71

    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 177
    const/16 v8, 0xde1

    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 178
    const/16 v8, 0xde1

    sget-object v9, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    iget-object v10, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    invoke-virtual {v10}, Lcom/garageapps/android/spacetracks/levels/Levels;->getTileMapId()I

    move-result v10

    aget v9, v9, v10

    invoke-interface {p1, v8, v9}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 179
    const/4 v8, 0x3

    const/16 v9, 0x1406

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->tilesVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v8, v9, v10, v11}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 180
    const v8, 0x8074

    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 181
    const v8, 0x8076

    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 182
    iget-object v8, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->nebulaColorBuffer:Ljava/nio/FloatBuffer;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v8

    iget-object v9, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->nebulaColorBuffer:Ljava/nio/FloatBuffer;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v9

    iget-object v10, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->nebulaColorBuffer:Ljava/nio/FloatBuffer;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v10

    iget-object v11, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->nebulaColorBuffer:Ljava/nio/FloatBuffer;

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v11

    const/high16 v12, 0x3f00

    mul-float/2addr v11, v12

    invoke-interface {p1, v8, v9, v10, v11}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 183
    const/4 v8, 0x2

    const/16 v9, 0x1406

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->tilesTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v8, v9, v10, v11}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 184
    const v8, 0x8078

    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 185
    const/16 v8, 0xb60

    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 186
    const/16 v8, 0xb62

    move/from16 v0, p5

    invoke-interface {p1, v8, v0}, Ljavax/microedition/khronos/opengles/GL10;->glFogf(IF)V

    .line 187
    const/16 v8, 0xb66

    iget-object v9, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->fogColorBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v8, v9}, Ljavax/microedition/khronos/opengles/GL10;->glFogfv(ILjava/nio/FloatBuffer;)V

    .line 189
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 191
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f80

    move/from16 v0, p4

    invoke-interface {p1, v0, v8, v9, v10}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 192
    const v8, 0x3e99999a

    neg-float v9, p2

    const/high16 v10, 0x447a

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    const/high16 v9, -0x4080

    const/high16 v10, -0x3fc0

    add-float v10, v10, p3

    invoke-interface {p1, v8, v9, v10}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    goto/16 :goto_0

    .line 195
    :cond_4
    const/4 v8, 0x3

    if-ne v4, v8, :cond_2

    .line 196
    const/16 v8, 0xbe2

    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 197
    const/16 v8, 0xde1

    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 198
    const/16 v8, 0xde1

    sget-object v9, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    iget-object v10, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    invoke-virtual {v10}, Lcom/garageapps/android/spacetracks/levels/Levels;->getTileMapId()I

    move-result v10

    aget v9, v9, v10

    invoke-interface {p1, v8, v9}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 199
    const/4 v8, 0x3

    const/16 v9, 0x1406

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->tilesVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v8, v9, v10, v11}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 200
    const v8, 0x8074

    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 201
    const/4 v8, 0x4

    const/16 v9, 0x1406

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->tilesColorBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v8, v9, v10, v11}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    .line 202
    const v8, 0x8076

    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 203
    const/4 v8, 0x2

    const/16 v9, 0x1406

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->tilesTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v8, v9, v10, v11}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 204
    const v8, 0x8078

    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 205
    const/16 v8, 0xb60

    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 206
    const/16 v8, 0xb62

    move/from16 v0, p5

    invoke-interface {p1, v8, v0}, Ljavax/microedition/khronos/opengles/GL10;->glFogf(IF)V

    .line 207
    const/16 v8, 0xb66

    iget-object v9, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->fogColorBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v8, v9}, Ljavax/microedition/khronos/opengles/GL10;->glFogfv(ILjava/nio/FloatBuffer;)V

    .line 209
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 211
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f80

    move/from16 v0, p4

    invoke-interface {p1, v0, v8, v9, v10}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 212
    const v8, 0x3e99999a

    neg-float v9, p2

    const/high16 v10, 0x447a

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    const/high16 v9, -0x4080

    const/high16 v10, -0x3fc0

    add-float v10, v10, p3

    invoke-interface {p1, v8, v9, v10}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    goto/16 :goto_0

    .line 216
    .restart local v3       #i:I
    :cond_5
    const/4 v8, 0x5

    const/4 v9, 0x4

    invoke-interface {p1, v8, v3, v9}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 215
    add-int/lit8 v3, v3, 0x4

    goto/16 :goto_1
.end method

.method public drawNebula(Ljavax/microedition/khronos/opengles/GL10;F)V
    .locals 8
    .parameter "gl"
    .parameter "angle"

    .prologue
    const/16 v7, 0xb71

    const/high16 v6, 0x40c0

    const/high16 v5, 0x3f80

    const/high16 v4, 0x4040

    const/4 v3, 0x0

    .line 111
    iget v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->nebulaAngle:F

    const v1, 0x3e4ccccd

    add-float/2addr v0, v1

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->nebulaAngle:F

    .line 114
    const/16 v0, 0xbe2

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 115
    invoke-interface {p1, v7}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 116
    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 117
    const/16 v0, 0xde1

    sget-object v1, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    iget-object v2, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    invoke-virtual {v2}, Lcom/garageapps/android/spacetracks/levels/Levels;->getNebulaId()I

    move-result v2

    aget v1, v1, v2

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 119
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 120
    const/high16 v0, -0x3f00

    invoke-interface {p1, v3, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 121
    invoke-interface {p1, p2, v3, v3, v5}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 122
    invoke-interface {p1, v6, v6, v5}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 123
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->nebulaColorBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v0

    div-float/2addr v0, v4

    iget-object v1, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->nebulaColorBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v1

    div-float/2addr v1, v4

    iget-object v2, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->nebulaColorBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v2

    div-float/2addr v2, v4

    iget-object v3, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->nebulaColorBuffer:Ljava/nio/FloatBuffer;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 124
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->objectsPlane:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    invoke-virtual {v0, p1}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 127
    invoke-interface {p1, v7}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 128
    const/16 v0, 0xbe2

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 130
    return-void
.end method

.method public drawObjects(Ljavax/microedition/khronos/opengles/GL10;FFFF)V
    .locals 24
    .parameter "gl"
    .parameter "x"
    .parameter "z"
    .parameter "angle"
    .parameter "fog"

    .prologue
    .line 232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    invoke-virtual {v2}, Lcom/garageapps/android/spacetracks/levels/Levels;->getSizeX()I

    move-result v22

    .line 234
    .local v22, sizeX:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    invoke-virtual {v2}, Lcom/garageapps/android/spacetracks/levels/Levels;->getObjectsCount()I

    move-result v20

    .line 243
    .local v20, objectCount:I
    sget-object v2, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/mainApplication;->mPrefs:Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;

    iget v2, v2, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->videoDistance:I

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v23, v2, 0x5

    .line 245
    .local v23, view:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->currentAngle:F

    const/high16 v3, 0x4000

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->currentAngle:F

    .line 247
    const/16 v19, 0x0

    .local v19, i:I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_0

    .line 314
    return-void

    .line 249
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/garageapps/android/spacetracks/levels/Levels;->getObject(I)I

    move-result v21

    .line 251
    .local v21, objectData:I
    shr-int/lit8 v10, v21, 0x18

    .line 252
    .local v10, object:I
    shl-int/lit8 v2, v21, 0x8

    shr-int/lit8 v18, v2, 0x18

    .line 253
    .local v18, objectS:I
    shl-int/lit8 v2, v21, 0x10

    shr-int/lit8 v12, v2, 0x18

    .line 254
    .local v12, objectX:I
    shl-int/lit8 v2, v21, 0x18

    shr-int/lit8 v13, v2, 0x18

    .line 256
    .local v13, objectY:I
    move/from16 v0, v22

    int-to-float v2, v0

    const/high16 v3, 0x3f00

    mul-float/2addr v2, v3

    const/high16 v3, 0x4000

    mul-float/2addr v2, v3

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    neg-float v2, v2

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    int-to-float v3, v12

    const/high16 v7, 0x3f00

    mul-float/2addr v3, v7

    const/high16 v7, 0x4000

    mul-float/2addr v3, v7

    add-float/2addr v2, v3

    move/from16 v0, p2

    neg-float v3, v0

    const/high16 v7, 0x447a

    div-float/2addr v3, v7

    add-float v4, v2, v3

    .line 257
    .local v4, xoff:F
    add-int/lit8 v2, v18, -0x1

    int-to-float v2, v2

    const/high16 v3, 0x3e80

    mul-float v5, v2, v3

    .line 258
    .local v5, yoff:F
    int-to-float v2, v13

    const/high16 v3, 0x3f00

    mul-float/2addr v2, v3

    const/high16 v3, 0x4000

    mul-float/2addr v2, v3

    neg-float v6, v2

    .line 260
    .local v6, zoff:F
    const/4 v2, 0x0

    cmpl-float v2, v6, v2

    if-lez v2, :cond_1

    .line 261
    const/high16 v2, -0x3d00

    const/high16 v3, 0x4300

    sub-float/2addr v3, v6

    sub-float v6, v2, v3

    .line 263
    :cond_1
    const/16 v2, 0x64

    if-ge v10, v2, :cond_5

    .line 264
    neg-float v2, v6

    const/high16 v3, 0x4000

    add-float/2addr v2, v3

    cmpl-float v2, p3, v2

    if-lez v2, :cond_3

    .line 265
    const/16 v2, 0x50

    if-eq v10, v2, :cond_3

    .line 247
    .end local v12           #objectX:I
    .end local v13           #objectY:I
    .end local v18           #objectS:I
    :cond_2
    :goto_1
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 267
    .restart local v12       #objectX:I
    .restart local v13       #objectY:I
    .restart local v18       #objectS:I
    :cond_3
    move/from16 v0, v23

    int-to-float v2, v0

    add-float v2, v2, p3

    neg-float v3, v6

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    .line 268
    const/16 v2, 0x50

    if-ne v10, v2, :cond_2

    .line 271
    :cond_4
    sparse-switch v10, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    .line 277
    invoke-direct/range {v2 .. v10}, Lcom/garageapps/android/spacetracks/levels/LevelManager;->drawObjectLight(Ljavax/microedition/khronos/opengles/GL10;FFFFFFI)V

    goto :goto_1

    :sswitch_1
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move v13, v4

    move v14, v6

    move/from16 v15, p3

    move/from16 v16, p4

    move/from16 v17, p5

    .line 284
    invoke-direct/range {v11 .. v17}, Lcom/garageapps/android/spacetracks/levels/LevelManager;->drawObjectBonusPoints(Ljavax/microedition/khronos/opengles/GL10;FFFFF)V

    goto :goto_1

    :sswitch_2
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move v13, v4

    move v14, v6

    move/from16 v15, p3

    move/from16 v16, p4

    move/from16 v17, p5

    move/from16 v18, v10

    .line 299
    invoke-direct/range {v11 .. v18}, Lcom/garageapps/android/spacetracks/levels/LevelManager;->drawObjectBonus(Ljavax/microedition/khronos/opengles/GL10;FFFFFI)V

    goto :goto_1

    :sswitch_3
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move v13, v4

    move v14, v6

    move/from16 v15, p3

    move/from16 v16, p4

    move/from16 v17, p5

    .line 303
    invoke-direct/range {v11 .. v18}, Lcom/garageapps/android/spacetracks/levels/LevelManager;->drawObjectTunnel(Ljavax/microedition/khronos/opengles/GL10;FFFFFI)V

    goto :goto_1

    :sswitch_4
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move v13, v4

    move v14, v6

    move/from16 v15, p3

    move/from16 v16, p4

    move/from16 v17, p5

    .line 307
    invoke-direct/range {v11 .. v17}, Lcom/garageapps/android/spacetracks/levels/LevelManager;->drawObjectFlag(Ljavax/microedition/khronos/opengles/GL10;FFFFF)V

    goto :goto_1

    :cond_5
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, v19

    move/from16 v11, v18

    move v14, v4

    move v15, v6

    move/from16 v16, p3

    move/from16 v17, p4

    .line 312
    invoke-direct/range {v7 .. v17}, Lcom/garageapps/android/spacetracks/levels/LevelManager;->animateObjects(Ljavax/microedition/khronos/opengles/GL10;IIIIIFFFF)V

    goto :goto_1

    .line 271
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x10 -> :sswitch_1
        0x11 -> :sswitch_1
        0x12 -> :sswitch_1
        0x13 -> :sswitch_1
        0x20 -> :sswitch_2
        0x21 -> :sswitch_2
        0x22 -> :sswitch_2
        0x23 -> :sswitch_2
        0x30 -> :sswitch_2
        0x31 -> :sswitch_2
        0x32 -> :sswitch_2
        0x33 -> :sswitch_2
        0x40 -> :sswitch_2
        0x41 -> :sswitch_2
        0x42 -> :sswitch_2
        0x43 -> :sswitch_2
        0x50 -> :sswitch_3
        0x63 -> :sswitch_4
    .end sparse-switch
.end method

.method public getLevelCenter()I
    .locals 2

    .prologue
    .line 526
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    iget v0, v0, Lcom/garageapps/android/spacetracks/levels/Levels;->mSizeX:I

    div-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getLevelMaxTime()I
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    iget v0, v0, Lcom/garageapps/android/spacetracks/levels/Levels;->mMaxTime:I

    return v0
.end method

.method public getLevelMaxZSpeed()I
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    iget v0, v0, Lcom/garageapps/android/spacetracks/levels/Levels;->mMaxSpeed:I

    return v0
.end method

.method public getLevelSizeY()I
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->mLevel:Lcom/garageapps/android/spacetracks/levels/Levels;

    iget v0, v0, Lcom/garageapps/android/spacetracks/levels/Levels;->mSizeY:I

    return v0
.end method

.method public loadLevel(I)V
    .locals 1
    .parameter "level"

    .prologue
    .line 104
    iput p1, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->currentLevel:I

    .line 105
    iget v0, p0, Lcom/garageapps/android/spacetracks/levels/LevelManager;->currentLevel:I

    invoke-direct {p0, v0}, Lcom/garageapps/android/spacetracks/levels/LevelManager;->constructLevel(I)V

    .line 106
    invoke-direct {p0}, Lcom/garageapps/android/spacetracks/levels/LevelManager;->constructBuffers()V

    .line 107
    return-void
.end method
