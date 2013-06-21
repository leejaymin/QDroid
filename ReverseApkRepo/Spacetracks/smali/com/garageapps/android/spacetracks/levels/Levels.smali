.class public Lcom/garageapps/android/spacetracks/levels/Levels;
.super Ljava/lang/Object;
.source "Levels.java"


# instance fields
.field protected mFogColor:[F

.field protected mMaxSpeed:I

.field protected mMaxTime:I

.field protected mNebulaColor:[F

.field protected mNebulaId:I

.field protected mObjects:[I

.field protected mRenderMode:I

.field protected mSizeX:I

.field protected mSizeY:I

.field protected mTileColor:[F

.field protected mTileMapId:I

.field protected mTiles:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method public getFogColor()[F
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/levels/Levels;->mFogColor:[F

    return-object v0
.end method

.method public getMaxSpeed()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/garageapps/android/spacetracks/levels/Levels;->mMaxSpeed:I

    return v0
.end method

.method public getMaxTime()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/garageapps/android/spacetracks/levels/Levels;->mMaxTime:I

    return v0
.end method

.method public getNebulaColor()[F
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/levels/Levels;->mNebulaColor:[F

    return-object v0
.end method

.method public getNebulaId()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/garageapps/android/spacetracks/levels/Levels;->mNebulaId:I

    return v0
.end method

.method public getObject(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/levels/Levels;->mObjects:[I

    aget v0, v0, p1

    return v0
.end method

.method public getObjects()[I
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/levels/Levels;->mObjects:[I

    return-object v0
.end method

.method public getObjectsCount()I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/levels/Levels;->mObjects:[I

    array-length v0, v0

    return v0
.end method

.method public getRenderMode()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/garageapps/android/spacetracks/levels/Levels;->mRenderMode:I

    return v0
.end method

.method public getSizeX()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/garageapps/android/spacetracks/levels/Levels;->mSizeX:I

    return v0
.end method

.method public getSizeY()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/garageapps/android/spacetracks/levels/Levels;->mSizeY:I

    return v0
.end method

.method public getTile(I)I
    .locals 4
    .parameter "index"

    .prologue
    .line 85
    :try_start_0
    iget-object v2, p0, Lcom/garageapps/android/spacetracks/levels/Levels;->mTiles:[I

    aget v1, v2, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .local v1, tile:I
    :goto_0
    return v1

    .line 87
    .end local v1           #tile:I
    :catch_0
    move-exception v0

    .line 88
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/garageapps/android/spacetracks/levels/Levels;->mTiles:[I

    const/4 v3, 0x0

    aget v1, v2, v3

    .restart local v1       #tile:I
    goto :goto_0
.end method

.method public getTileColor()[F
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/levels/Levels;->mTileColor:[F

    return-object v0
.end method

.method public getTileCount()I
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/levels/Levels;->mTiles:[I

    array-length v0, v0

    return v0
.end method

.method public getTileMap()[I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/levels/Levels;->mTiles:[I

    return-object v0
.end method

.method public getTileMapId()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/garageapps/android/spacetracks/levels/Levels;->mTileMapId:I

    return v0
.end method
