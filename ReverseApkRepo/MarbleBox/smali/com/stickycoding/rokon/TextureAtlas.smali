.class public Lcom/stickycoding/rokon/TextureAtlas;
.super Lcom/stickycoding/rokon/Texture;
.source "TextureAtlas.java"


# static fields
.field public static final DEFAULT_MAX_TEXTURE_COUNT:I = 0x40

.field public static final DEFAULT_TEXTURE_ATLAS_HEIGHT:I = 0x400

.field public static final DEFAULT_TEXTURE_ATLAS_WIDTH:I = 0x400


# instance fields
.field protected atlasHeight:I

.field protected atlasWidth:I

.field protected complete:Z

.field protected maxTextureCount:I

.field protected texture:[Lcom/stickycoding/rokon/Texture;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 40
    invoke-direct {p0}, Lcom/stickycoding/rokon/Texture;-><init>()V

    .line 41
    const/16 v0, 0x40

    iput v0, p0, Lcom/stickycoding/rokon/TextureAtlas;->maxTextureCount:I

    .line 42
    iget v0, p0, Lcom/stickycoding/rokon/TextureAtlas;->maxTextureCount:I

    new-array v0, v0, [Lcom/stickycoding/rokon/Texture;

    iput-object v0, p0, Lcom/stickycoding/rokon/TextureAtlas;->texture:[Lcom/stickycoding/rokon/Texture;

    .line 43
    iput v1, p0, Lcom/stickycoding/rokon/TextureAtlas;->atlasWidth:I

    .line 44
    iput v1, p0, Lcom/stickycoding/rokon/TextureAtlas;->atlasHeight:I

    .line 46
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "maxTextureCount"

    .prologue
    const/16 v1, 0x400

    .line 61
    invoke-direct {p0}, Lcom/stickycoding/rokon/Texture;-><init>()V

    .line 62
    iput p1, p0, Lcom/stickycoding/rokon/TextureAtlas;->maxTextureCount:I

    .line 63
    iget v0, p0, Lcom/stickycoding/rokon/TextureAtlas;->maxTextureCount:I

    new-array v0, v0, [Lcom/stickycoding/rokon/Texture;

    iput-object v0, p0, Lcom/stickycoding/rokon/TextureAtlas;->texture:[Lcom/stickycoding/rokon/Texture;

    .line 64
    iput v1, p0, Lcom/stickycoding/rokon/TextureAtlas;->atlasWidth:I

    .line 65
    iput v1, p0, Lcom/stickycoding/rokon/TextureAtlas;->atlasHeight:I

    .line 66
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .parameter "maxTextureCount"
    .parameter "textureAtlasWidth"
    .parameter "textureAtlasHeight"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/stickycoding/rokon/TextureAtlas;-><init>(I)V

    .line 77
    iput p2, p0, Lcom/stickycoding/rokon/TextureAtlas;->atlasWidth:I

    .line 78
    iput p3, p0, Lcom/stickycoding/rokon/TextureAtlas;->atlasHeight:I

    .line 79
    return-void
.end method

.method private findRightSpot(Lcom/stickycoding/rokon/Texture;)V
    .locals 6
    .parameter "texture"

    .prologue
    .line 112
    const/4 v2, 0x0

    .line 113
    .local v2, foundSpot:Z
    const/4 v0, 0x0

    .local v0, checkX:I
    const/4 v1, 0x0

    .line 114
    .local v1, checkY:I
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 132
    :goto_1
    return-void

    .line 115
    :cond_1
    iget v4, p1, Lcom/stickycoding/rokon/Texture;->height:I

    add-int/2addr v4, v1

    iget v5, p0, Lcom/stickycoding/rokon/TextureAtlas;->atlasHeight:I

    if-le v4, v5, :cond_2

    .line 116
    const-string v4, "Can\'t find a spot on TextureAtlas?!"

    invoke-static {v4}, Lcom/stickycoding/rokon/Debug;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 119
    :cond_2
    invoke-direct {p0, v0, v1, p1}, Lcom/stickycoding/rokon/TextureAtlas;->textureAt(IILcom/stickycoding/rokon/Texture;)I

    move-result v3

    .line 120
    .local v3, textureAt:I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 121
    add-int/lit8 v4, v0, 0x1

    iput v4, p1, Lcom/stickycoding/rokon/Texture;->atlasX:I

    .line 122
    add-int/lit8 v4, v1, 0x1

    iput v4, p1, Lcom/stickycoding/rokon/Texture;->atlasY:I

    .line 123
    const/4 v2, 0x1

    goto :goto_0

    .line 125
    :cond_3
    iget-object v4, p0, Lcom/stickycoding/rokon/TextureAtlas;->texture:[Lcom/stickycoding/rokon/Texture;

    aget-object v4, v4, v3

    iget v4, v4, Lcom/stickycoding/rokon/Texture;->atlasX:I

    iget-object v5, p0, Lcom/stickycoding/rokon/TextureAtlas;->texture:[Lcom/stickycoding/rokon/Texture;

    aget-object v5, v5, v3

    iget v5, v5, Lcom/stickycoding/rokon/Texture;->width:I

    add-int v0, v4, v5

    .line 126
    iget v4, p1, Lcom/stickycoding/rokon/Texture;->width:I

    add-int/2addr v4, v0

    iget v5, p0, Lcom/stickycoding/rokon/TextureAtlas;->atlasWidth:I

    if-le v4, v5, :cond_0

    .line 127
    const/4 v0, 0x0

    .line 128
    add-int/lit8 v1, v1, 0x10

    goto :goto_0
.end method

.method private getNextEmptySlot()I
    .locals 2

    .prologue
    .line 146
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/stickycoding/rokon/TextureAtlas;->maxTextureCount:I

    if-lt v0, v1, :cond_0

    .line 151
    const/4 v1, -0x1

    :goto_1
    return v1

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/stickycoding/rokon/TextureAtlas;->texture:[Lcom/stickycoding/rokon/Texture;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    move v1, v0

    .line 148
    goto :goto_1

    .line 146
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private textureAt(IILcom/stickycoding/rokon/Texture;)I
    .locals 10
    .parameter "x"
    .parameter "y"
    .parameter "skip"

    .prologue
    .line 135
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    iget v0, p0, Lcom/stickycoding/rokon/TextureAtlas;->maxTextureCount:I

    if-lt v8, v0, :cond_0

    .line 142
    const/4 v0, -0x1

    :goto_1
    return v0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/stickycoding/rokon/TextureAtlas;->texture:[Lcom/stickycoding/rokon/Texture;

    aget-object v0, v0, v8

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/stickycoding/rokon/TextureAtlas;->texture:[Lcom/stickycoding/rokon/Texture;

    aget-object v0, v0, v8

    if-eq v0, p3, :cond_1

    .line 137
    int-to-float v0, p1

    int-to-float v1, p2

    iget v2, p3, Lcom/stickycoding/rokon/Texture;->width:I

    add-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p3, Lcom/stickycoding/rokon/Texture;->width:I

    add-int/2addr v3, p2

    add-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/stickycoding/rokon/TextureAtlas;->texture:[Lcom/stickycoding/rokon/Texture;

    aget-object v4, v4, v8

    iget v4, v4, Lcom/stickycoding/rokon/Texture;->atlasX:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/stickycoding/rokon/TextureAtlas;->texture:[Lcom/stickycoding/rokon/Texture;

    aget-object v5, v5, v8

    iget v5, v5, Lcom/stickycoding/rokon/Texture;->atlasY:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/stickycoding/rokon/TextureAtlas;->texture:[Lcom/stickycoding/rokon/Texture;

    aget-object v6, v6, v8

    iget v6, v6, Lcom/stickycoding/rokon/Texture;->atlasX:I

    iget-object v7, p0, Lcom/stickycoding/rokon/TextureAtlas;->texture:[Lcom/stickycoding/rokon/Texture;

    aget-object v7, v7, v8

    iget v7, v7, Lcom/stickycoding/rokon/Texture;->width:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Lcom/stickycoding/rokon/TextureAtlas;->texture:[Lcom/stickycoding/rokon/Texture;

    aget-object v7, v7, v8

    iget v7, v7, Lcom/stickycoding/rokon/Texture;->atlasY:I

    iget-object v9, p0, Lcom/stickycoding/rokon/TextureAtlas;->texture:[Lcom/stickycoding/rokon/Texture;

    aget-object v9, v9, v8

    iget v9, v9, Lcom/stickycoding/rokon/Texture;->height:I

    add-int/2addr v7, v9

    int-to-float v7, v7

    invoke-static/range {v0 .. v7}, Lcom/stickycoding/rokon/MathHelper;->rectOverlap(FFFFFFFF)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v8

    .line 138
    goto :goto_1

    .line 135
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method


# virtual methods
.method public complete()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stickycoding/rokon/TextureAtlas;->complete:Z

    .line 53
    return-void
.end method

.method public insert(Lcom/stickycoding/rokon/Texture;)V
    .locals 2
    .parameter "texture"

    .prologue
    .line 88
    instance-of v1, p1, Lcom/stickycoding/rokon/DynamicTexture;

    if-eqz v1, :cond_0

    .line 89
    const-string v1, "Tried inserting DynamicTexture into TextureAtlas, not possible"

    invoke-static {v1}, Lcom/stickycoding/rokon/Debug;->error(Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lcom/stickycoding/rokon/Debug;->forceExit()V

    .line 109
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-boolean v1, p0, Lcom/stickycoding/rokon/TextureAtlas;->complete:Z

    if-eqz v1, :cond_1

    .line 94
    const-string v1, "Tried inserting Texture into TextureAtlas after complete()"

    invoke-static {v1}, Lcom/stickycoding/rokon/Debug;->error(Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lcom/stickycoding/rokon/Debug;->forceExit()V

    goto :goto_0

    .line 98
    :cond_1
    invoke-direct {p0}, Lcom/stickycoding/rokon/TextureAtlas;->getNextEmptySlot()I

    move-result v0

    .line 99
    .local v0, slot:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 100
    const-string v1, "TextureAtlas is full"

    invoke-static {v1}, Lcom/stickycoding/rokon/Debug;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_2
    iget-object v1, p0, Lcom/stickycoding/rokon/TextureAtlas;->texture:[Lcom/stickycoding/rokon/Texture;

    aput-object p1, v1, v0

    .line 104
    iput v0, p1, Lcom/stickycoding/rokon/Texture;->atlasIndex:I

    .line 105
    invoke-direct {p0, p1}, Lcom/stickycoding/rokon/TextureAtlas;->findRightSpot(Lcom/stickycoding/rokon/Texture;)V

    .line 106
    iput-object p0, p1, Lcom/stickycoding/rokon/Texture;->parentAtlas:Lcom/stickycoding/rokon/TextureAtlas;

    goto :goto_0
.end method

.method protected onLoadTexture(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8
    .parameter "gl"

    .prologue
    const/4 v4, 0x1

    const/16 v7, 0xde1

    const/4 v6, 0x0

    .line 158
    iget-boolean v3, p0, Lcom/stickycoding/rokon/TextureAtlas;->reload:Z

    if-nez v3, :cond_3

    .line 159
    iget-boolean v3, p0, Lcom/stickycoding/rokon/TextureAtlas;->complete:Z

    if-nez v3, :cond_0

    .line 160
    const-string v3, "Tried loading TextureAtlas without calling complete() first"

    invoke-static {v3}, Lcom/stickycoding/rokon/Debug;->error(Ljava/lang/String;)V

    .line 161
    invoke-static {}, Lcom/stickycoding/rokon/Debug;->forceExit()V

    .line 216
    :goto_0
    return-void

    .line 164
    :cond_0
    const-string v3, "Loading TextureAtlas"

    invoke-static {v3}, Lcom/stickycoding/rokon/Debug;->print(Ljava/lang/String;)V

    .line 165
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 166
    new-array v2, v4, [I

    .line 167
    .local v2, nameArray:[I
    invoke-static {}, Lcom/stickycoding/rokon/GLHelper;->enableTextures()V

    .line 168
    invoke-interface {p1, v4, v2, v6}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 169
    aget v3, v2, v6

    invoke-virtual {p0, v3}, Lcom/stickycoding/rokon/TextureAtlas;->setTextureIndex(I)V

    .line 170
    invoke-virtual {p0}, Lcom/stickycoding/rokon/TextureAtlas;->getTextureIndex()I

    move-result v3

    invoke-static {v3}, Lcom/stickycoding/rokon/GLHelper;->bindTexture(I)V

    .line 171
    iget v3, p0, Lcom/stickycoding/rokon/TextureAtlas;->atlasWidth:I

    iget v4, p0, Lcom/stickycoding/rokon/TextureAtlas;->atlasHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 172
    .local v0, bmp:Landroid/graphics/Bitmap;
    invoke-static {v7, v6, v0, v6}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 173
    const/16 v3, 0x2801

    iget v4, p0, Lcom/stickycoding/rokon/TextureAtlas;->minFilter:F

    invoke-interface {p1, v7, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 174
    const/16 v3, 0x2800

    iget v4, p0, Lcom/stickycoding/rokon/TextureAtlas;->magFilter:F

    invoke-interface {p1, v7, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 175
    const/16 v3, 0x2802

    iget v4, p0, Lcom/stickycoding/rokon/TextureAtlas;->wrapS:F

    invoke-interface {p1, v7, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 176
    const/16 v3, 0x2803

    iget v4, p0, Lcom/stickycoding/rokon/TextureAtlas;->wrapT:F

    invoke-interface {p1, v7, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 177
    const/16 v3, 0x2300

    const/16 v4, 0x2200

    iget v5, p0, Lcom/stickycoding/rokon/TextureAtlas;->envMode:F

    invoke-interface {p1, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 178
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 179
    const/4 v0, 0x0

    .line 180
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 183
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v3, p0, Lcom/stickycoding/rokon/TextureAtlas;->maxTextureCount:I

    if-lt v1, v3, :cond_1

    .line 199
    const-string v3, "TextureAtlas.onLoadTexture, done"

    invoke-static {v3}, Lcom/stickycoding/rokon/Debug;->print(Ljava/lang/String;)V

    .line 200
    invoke-static {p0}, Lcom/stickycoding/rokon/TextureManager;->addToActive(Lcom/stickycoding/rokon/Texture;)V

    goto :goto_0

    .line 184
    :cond_1
    iget-object v3, p0, Lcom/stickycoding/rokon/TextureAtlas;->texture:[Lcom/stickycoding/rokon/Texture;

    aget-object v3, v3, v1

    if-eqz v3, :cond_2

    .line 186
    iget-object v3, p0, Lcom/stickycoding/rokon/TextureAtlas;->texture:[Lcom/stickycoding/rokon/Texture;

    aget-object v3, v3, v1

    invoke-virtual {p0}, Lcom/stickycoding/rokon/TextureAtlas;->getTextureIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/stickycoding/rokon/Texture;->setTextureIndex(I)V

    .line 188
    iget-object v3, p0, Lcom/stickycoding/rokon/TextureAtlas;->texture:[Lcom/stickycoding/rokon/Texture;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/stickycoding/rokon/Texture;->prepareBuffers()V

    .line 190
    iget-object v3, p0, Lcom/stickycoding/rokon/TextureAtlas;->texture:[Lcom/stickycoding/rokon/Texture;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/stickycoding/rokon/Texture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 192
    iget-object v3, p0, Lcom/stickycoding/rokon/TextureAtlas;->texture:[Lcom/stickycoding/rokon/Texture;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/stickycoding/rokon/Texture;->atlasX:I

    iget-object v4, p0, Lcom/stickycoding/rokon/TextureAtlas;->texture:[Lcom/stickycoding/rokon/Texture;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/stickycoding/rokon/Texture;->atlasY:I

    invoke-static {v7, v6, v3, v4, v0}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    .line 194
    iget-object v3, p0, Lcom/stickycoding/rokon/TextureAtlas;->texture:[Lcom/stickycoding/rokon/Texture;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/stickycoding/rokon/Texture;->clearBitmap()V

    .line 196
    const/4 v0, 0x0

    .line 183
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 202
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #i:I
    .end local v2           #nameArray:[I
    :cond_3
    invoke-virtual {p0}, Lcom/stickycoding/rokon/TextureAtlas;->getTextureIndex()I

    move-result v3

    invoke-static {v3}, Lcom/stickycoding/rokon/GLHelper;->bindTexture(I)V

    .line 203
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    iget v3, p0, Lcom/stickycoding/rokon/TextureAtlas;->maxTextureCount:I

    if-lt v1, v3, :cond_4

    .line 212
    iput-boolean v6, p0, Lcom/stickycoding/rokon/TextureAtlas;->reload:Z

    .line 213
    invoke-static {p0}, Lcom/stickycoding/rokon/TextureManager;->addToActive(Lcom/stickycoding/rokon/Texture;)V

    .line 214
    const-string v3, "TextureAtlas.onLoadTexture, RELOADED"

    invoke-static {v3}, Lcom/stickycoding/rokon/Debug;->print(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 204
    :cond_4
    iget-object v3, p0, Lcom/stickycoding/rokon/TextureAtlas;->texture:[Lcom/stickycoding/rokon/Texture;

    aget-object v3, v3, v1

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/stickycoding/rokon/TextureAtlas;->texture:[Lcom/stickycoding/rokon/Texture;

    aget-object v3, v3, v1

    iget-boolean v3, v3, Lcom/stickycoding/rokon/Texture;->reload:Z

    if-eqz v3, :cond_5

    .line 205
    iget-object v3, p0, Lcom/stickycoding/rokon/TextureAtlas;->texture:[Lcom/stickycoding/rokon/Texture;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/stickycoding/rokon/Texture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/stickycoding/rokon/TextureAtlas;->bmp:Landroid/graphics/Bitmap;

    .line 206
    iget-object v3, p0, Lcom/stickycoding/rokon/TextureAtlas;->texture:[Lcom/stickycoding/rokon/Texture;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/stickycoding/rokon/Texture;->atlasX:I

    iget-object v4, p0, Lcom/stickycoding/rokon/TextureAtlas;->texture:[Lcom/stickycoding/rokon/Texture;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/stickycoding/rokon/Texture;->atlasY:I

    iget-object v5, p0, Lcom/stickycoding/rokon/TextureAtlas;->bmp:Landroid/graphics/Bitmap;

    invoke-static {v7, v6, v3, v4, v5}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    .line 207
    iget-object v3, p0, Lcom/stickycoding/rokon/TextureAtlas;->texture:[Lcom/stickycoding/rokon/Texture;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/stickycoding/rokon/Texture;->clearBitmap()V

    .line 208
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/stickycoding/rokon/TextureAtlas;->bmp:Landroid/graphics/Bitmap;

    .line 209
    iget-object v3, p0, Lcom/stickycoding/rokon/TextureAtlas;->texture:[Lcom/stickycoding/rokon/Texture;

    aget-object v3, v3, v1

    iput-boolean v6, v3, Lcom/stickycoding/rokon/Texture;->reload:Z

    .line 203
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public reload()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 230
    iput-boolean v2, p0, Lcom/stickycoding/rokon/Texture;->reload:Z

    .line 231
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/stickycoding/rokon/TextureAtlas;->maxTextureCount:I

    if-lt v0, v1, :cond_0

    .line 236
    return-void

    .line 232
    :cond_0
    iget-object v1, p0, Lcom/stickycoding/rokon/TextureAtlas;->texture:[Lcom/stickycoding/rokon/Texture;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 233
    iget-object v1, p0, Lcom/stickycoding/rokon/TextureAtlas;->texture:[Lcom/stickycoding/rokon/Texture;

    aget-object v1, v1, v0

    iput-boolean v2, v1, Lcom/stickycoding/rokon/Texture;->reload:Z

    .line 231
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public replaceTexture(Lcom/stickycoding/rokon/Texture;Lcom/stickycoding/rokon/Texture;)V
    .locals 2
    .parameter "original"
    .parameter "replacement"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/stickycoding/rokon/TextureAtlas;->texture:[Lcom/stickycoding/rokon/Texture;

    iget v1, p1, Lcom/stickycoding/rokon/Texture;->atlasIndex:I

    aput-object p2, v0, v1

    .line 245
    iget-object v0, p0, Lcom/stickycoding/rokon/TextureAtlas;->texture:[Lcom/stickycoding/rokon/Texture;

    iget v1, p1, Lcom/stickycoding/rokon/Texture;->atlasIndex:I

    aget-object v0, v0, v1

    iget v1, p1, Lcom/stickycoding/rokon/Texture;->atlasX:I

    iput v1, v0, Lcom/stickycoding/rokon/Texture;->atlasX:I

    .line 246
    iget-object v0, p0, Lcom/stickycoding/rokon/TextureAtlas;->texture:[Lcom/stickycoding/rokon/Texture;

    iget v1, p1, Lcom/stickycoding/rokon/Texture;->atlasIndex:I

    aget-object v0, v0, v1

    iget v1, p1, Lcom/stickycoding/rokon/Texture;->atlasY:I

    iput v1, v0, Lcom/stickycoding/rokon/Texture;->atlasY:I

    .line 247
    iget-object v0, p0, Lcom/stickycoding/rokon/TextureAtlas;->texture:[Lcom/stickycoding/rokon/Texture;

    iget v1, p1, Lcom/stickycoding/rokon/Texture;->atlasIndex:I

    aget-object v0, v0, v1

    iget-object v1, p1, Lcom/stickycoding/rokon/Texture;->buffer:[Lcom/stickycoding/rokon/BufferObject;

    iput-object v1, v0, Lcom/stickycoding/rokon/Texture;->buffer:[Lcom/stickycoding/rokon/BufferObject;

    .line 248
    iget-object v0, p0, Lcom/stickycoding/rokon/TextureAtlas;->texture:[Lcom/stickycoding/rokon/Texture;

    iget v1, p1, Lcom/stickycoding/rokon/Texture;->atlasIndex:I

    aget-object v0, v0, v1

    iget v1, p1, Lcom/stickycoding/rokon/Texture;->width:I

    iput v1, v0, Lcom/stickycoding/rokon/Texture;->width:I

    .line 249
    iget-object v0, p0, Lcom/stickycoding/rokon/TextureAtlas;->texture:[Lcom/stickycoding/rokon/Texture;

    iget v1, p1, Lcom/stickycoding/rokon/Texture;->atlasIndex:I

    aget-object v0, v0, v1

    iget v1, p1, Lcom/stickycoding/rokon/Texture;->height:I

    iput v1, v0, Lcom/stickycoding/rokon/Texture;->height:I

    .line 250
    iget-object v0, p0, Lcom/stickycoding/rokon/TextureAtlas;->texture:[Lcom/stickycoding/rokon/Texture;

    iget v1, p1, Lcom/stickycoding/rokon/Texture;->atlasIndex:I

    aget-object v0, v0, v1

    iput-object p0, v0, Lcom/stickycoding/rokon/Texture;->parentAtlas:Lcom/stickycoding/rokon/TextureAtlas;

    .line 251
    invoke-virtual {p1}, Lcom/stickycoding/rokon/Texture;->getTextureIndex()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/stickycoding/rokon/Texture;->setTextureIndex(I)V

    .line 252
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/stickycoding/rokon/Texture;->parentAtlas:Lcom/stickycoding/rokon/TextureAtlas;

    .line 253
    const/4 v0, -0x1

    iput v0, p1, Lcom/stickycoding/rokon/Texture;->atlasIndex:I

    .line 254
    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/stickycoding/rokon/Texture;->reload:Z

    .line 255
    invoke-virtual {p0}, Lcom/stickycoding/rokon/TextureAtlas;->reload()V

    .line 256
    return-void
.end method

.method protected setReloaded()V
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stickycoding/rokon/TextureAtlas;->reload:Z

    .line 241
    return-void
.end method

.method public setUnloaded()V
    .locals 2

    .prologue
    .line 220
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/stickycoding/rokon/TextureAtlas;->setTextureIndex(I)V

    .line 221
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/stickycoding/rokon/TextureAtlas;->maxTextureCount:I

    if-lt v0, v1, :cond_0

    .line 226
    return-void

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/stickycoding/rokon/TextureAtlas;->texture:[Lcom/stickycoding/rokon/Texture;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 223
    iget-object v1, p0, Lcom/stickycoding/rokon/TextureAtlas;->texture:[Lcom/stickycoding/rokon/Texture;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/stickycoding/rokon/Texture;->setUnloaded()V

    .line 221
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
