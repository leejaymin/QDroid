.class public Lcom/stickycoding/rokon/Texture;
.super Ljava/lang/Object;
.source "Texture.java"


# instance fields
.field protected atlasIndex:I

.field protected atlasX:I

.field protected atlasY:I

.field protected bmp:Landroid/graphics/Bitmap;

.field protected buffer:[Lcom/stickycoding/rokon/BufferObject;

.field protected columns:I

.field public envMode:F

.field protected height:I

.field public magFilter:F

.field public minFilter:F

.field protected parentAtlas:Lcom/stickycoding/rokon/TextureAtlas;

.field protected path:Ljava/lang/String;

.field protected reload:Z

.field protected rows:I

.field protected textureHeight:I

.field private textureIndex:I

.field protected textureWidth:I

.field protected tileCount:I

.field protected vbo:[Lcom/stickycoding/rokon/vbo/ArrayVBO;

.field protected width:I

.field public wrapS:F

.field public wrapT:F


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    const v2, 0x47012f00

    const v1, 0x46180400

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/stickycoding/rokon/Texture;->textureIndex:I

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stickycoding/rokon/Texture;->reload:Z

    .line 39
    iput v1, p0, Lcom/stickycoding/rokon/Texture;->minFilter:F

    .line 40
    iput v1, p0, Lcom/stickycoding/rokon/Texture;->magFilter:F

    .line 41
    iput v2, p0, Lcom/stickycoding/rokon/Texture;->wrapS:F

    .line 42
    iput v2, p0, Lcom/stickycoding/rokon/Texture;->wrapT:F

    .line 43
    const/high16 v0, 0x4604

    iput v0, p0, Lcom/stickycoding/rokon/Texture;->envMode:F

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "filename"

    .prologue
    const/4 v0, 0x1

    .line 116
    invoke-direct {p0, p1, v0, v0}, Lcom/stickycoding/rokon/Texture;-><init>(Ljava/lang/String;II)V

    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 5
    .parameter "filename"
    .parameter "columns"
    .parameter "rows"

    .prologue
    const v4, 0x47012f00

    const v3, 0x46180400

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v2, -0x1

    iput v2, p0, Lcom/stickycoding/rokon/Texture;->textureIndex:I

    .line 37
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/stickycoding/rokon/Texture;->reload:Z

    .line 39
    iput v3, p0, Lcom/stickycoding/rokon/Texture;->minFilter:F

    .line 40
    iput v3, p0, Lcom/stickycoding/rokon/Texture;->magFilter:F

    .line 41
    iput v4, p0, Lcom/stickycoding/rokon/Texture;->wrapS:F

    .line 42
    iput v4, p0, Lcom/stickycoding/rokon/Texture;->wrapT:F

    .line 43
    const/high16 v2, 0x4604

    iput v2, p0, Lcom/stickycoding/rokon/Texture;->envMode:F

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/stickycoding/rokon/RokonActivity;->graphicsPath:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/stickycoding/rokon/Texture;->path:Ljava/lang/String;

    .line 132
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 133
    .local v1, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 135
    :try_start_0
    sget-object v2, Lcom/stickycoding/rokon/Rokon;->currentActivity:Lcom/stickycoding/rokon/RokonActivity;

    invoke-virtual {v2}, Lcom/stickycoding/rokon/RokonActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    iget-object v3, p0, Lcom/stickycoding/rokon/Texture;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v2, p0, Lcom/stickycoding/rokon/Texture;->width:I

    .line 142
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v2, p0, Lcom/stickycoding/rokon/Texture;->height:I

    .line 143
    iput p2, p0, Lcom/stickycoding/rokon/Texture;->columns:I

    .line 144
    iput p3, p0, Lcom/stickycoding/rokon/Texture;->rows:I

    .line 145
    mul-int v2, p2, p3

    iput v2, p0, Lcom/stickycoding/rokon/Texture;->tileCount:I

    .line 146
    iget v2, p0, Lcom/stickycoding/rokon/Texture;->width:I

    invoke-static {v2}, Lcom/stickycoding/rokon/Texture;->nextPowerOfTwo(I)I

    move-result v2

    iput v2, p0, Lcom/stickycoding/rokon/Texture;->textureWidth:I

    .line 147
    iget v2, p0, Lcom/stickycoding/rokon/Texture;->height:I

    invoke-static {v2}, Lcom/stickycoding/rokon/Texture;->nextPowerOfTwo(I)I

    move-result v2

    iput v2, p0, Lcom/stickycoding/rokon/Texture;->textureHeight:I

    .line 148
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 137
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Tried creating a Texture, failed while decoding, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stickycoding/rokon/Texture;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/stickycoding/rokon/Debug;->error(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isPowerOfTwo(I)Z
    .locals 2
    .parameter "x"

    .prologue
    const/4 v1, 0x1

    .line 207
    if-eqz p0, :cond_0

    sub-int v0, p0, v1

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static nextPowerOfTwo(I)I
    .locals 7
    .parameter "minimum"

    .prologue
    const-wide/high16 v5, 0x4000

    .line 217
    invoke-static {p0}, Lcom/stickycoding/rokon/Texture;->isPowerOfTwo(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, p0

    .line 224
    :goto_0
    return v1

    .line 220
    :cond_0
    const/4 v0, 0x0

    .line 222
    .local v0, i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 223
    int-to-double v1, v0

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    int-to-double v3, p0

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_1

    .line 224
    int-to-double v1, v0

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-int v1, v1

    goto :goto_0
.end method


# virtual methods
.method protected clearBitmap()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/stickycoding/rokon/Texture;->bmp:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 308
    :goto_0
    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/stickycoding/rokon/Texture;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/stickycoding/rokon/Texture;->bmp:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method protected freeBuffers()V
    .locals 2

    .prologue
    .line 197
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/stickycoding/rokon/Texture;->buffer:[Lcom/stickycoding/rokon/BufferObject;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 200
    return-void

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/stickycoding/rokon/Texture;->buffer:[Lcom/stickycoding/rokon/BufferObject;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/stickycoding/rokon/BufferObject;->free()V

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected getBitmap()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    .line 231
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 232
    .local v2, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 233
    iget-object v4, p0, Lcom/stickycoding/rokon/Texture;->bmp:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/stickycoding/rokon/Texture;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 234
    iget-object v4, p0, Lcom/stickycoding/rokon/Texture;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 236
    :cond_0
    sget-object v4, Lcom/stickycoding/rokon/Rokon;->currentActivity:Lcom/stickycoding/rokon/RokonActivity;

    invoke-virtual {v4}, Lcom/stickycoding/rokon/RokonActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    iget-object v5, p0, Lcom/stickycoding/rokon/Texture;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v4, v5, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 237
    .local v3, tBmp:Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/stickycoding/rokon/Texture;->bmp:Landroid/graphics/Bitmap;

    .line 238
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/stickycoding/rokon/Texture;->bmp:Landroid/graphics/Bitmap;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 239
    .local v0, canvas:Landroid/graphics/Canvas;
    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 240
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 241
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 242
    const/4 v3, 0x0

    .line 243
    iget-object v4, p0, Lcom/stickycoding/rokon/Texture;->bmp:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    .end local v0           #canvas:Landroid/graphics/Canvas;
    .end local v2           #opts:Landroid/graphics/BitmapFactory$Options;
    .end local v3           #tBmp:Landroid/graphics/Bitmap;
    :goto_0
    return-object v4

    .line 244
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 245
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 246
    const-string v4, "Texture.getBitmap() error, bad asset?"

    invoke-static {v4}, Lcom/stickycoding/rokon/Debug;->error(Ljava/lang/String;)V

    .line 247
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getBuffer(I)Lcom/stickycoding/rokon/BufferObject;
    .locals 1
    .parameter "index"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/stickycoding/rokon/Texture;->buffer:[Lcom/stickycoding/rokon/BufferObject;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getBuffer()[Lcom/stickycoding/rokon/BufferObject;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/stickycoding/rokon/Texture;->buffer:[Lcom/stickycoding/rokon/BufferObject;

    return-object v0
.end method

.method public getHeight(F)F
    .locals 1
    .parameter "width"

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/stickycoding/rokon/Texture;->getRatio()F

    move-result v0

    mul-float/2addr v0, p1

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 325
    iget v0, p0, Lcom/stickycoding/rokon/Texture;->height:I

    return v0
.end method

.method public getRatio()F
    .locals 2

    .prologue
    .line 352
    iget v0, p0, Lcom/stickycoding/rokon/Texture;->width:I

    int-to-float v0, v0

    iget v1, p0, Lcom/stickycoding/rokon/Texture;->columns:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/stickycoding/rokon/Texture;->height:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getTextureIndex()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/stickycoding/rokon/Texture;->textureIndex:I

    return v0
.end method

.method public getTileCols()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/stickycoding/rokon/Texture;->columns:I

    return v0
.end method

.method public getTileCount()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/stickycoding/rokon/Texture;->tileCount:I

    return v0
.end method

.method public getTileHeight(F)F
    .locals 2
    .parameter "width"

    .prologue
    .line 372
    iget v0, p0, Lcom/stickycoding/rokon/Texture;->columns:I

    int-to-float v0, v0

    div-float v0, p1, v0

    invoke-virtual {p0}, Lcom/stickycoding/rokon/Texture;->getRatio()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public getTileHeight()I
    .locals 2

    .prologue
    .line 343
    iget v0, p0, Lcom/stickycoding/rokon/Texture;->height:I

    iget v1, p0, Lcom/stickycoding/rokon/Texture;->rows:I

    div-int/2addr v0, v1

    return v0
.end method

.method public getTileRatio()F
    .locals 3

    .prologue
    .line 361
    iget v0, p0, Lcom/stickycoding/rokon/Texture;->width:I

    int-to-float v0, v0

    iget v1, p0, Lcom/stickycoding/rokon/Texture;->columns:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/stickycoding/rokon/Texture;->height:I

    int-to-float v1, v1

    iget v2, p0, Lcom/stickycoding/rokon/Texture;->rows:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method public getTileRows()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/stickycoding/rokon/Texture;->rows:I

    return v0
.end method

.method public getTileWidth()I
    .locals 2

    .prologue
    .line 334
    iget v0, p0, Lcom/stickycoding/rokon/Texture;->width:I

    iget v1, p0, Lcom/stickycoding/rokon/Texture;->columns:I

    div-int/2addr v0, v1

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 316
    iget v0, p0, Lcom/stickycoding/rokon/Texture;->width:I

    return v0
.end method

.method public isReload()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/stickycoding/rokon/Texture;->reload:Z

    return v0
.end method

.method protected onLoadTexture(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 9
    .parameter "gl"

    .prologue
    const/16 v8, 0x2300

    const/16 v7, 0x2200

    const/4 v3, 0x1

    const/16 v6, 0xde1

    const/4 v5, 0x0

    .line 252
    iget-boolean v2, p0, Lcom/stickycoding/rokon/Texture;->reload:Z

    if-nez v2, :cond_1

    .line 253
    iget-object v2, p0, Lcom/stickycoding/rokon/Texture;->parentAtlas:Lcom/stickycoding/rokon/TextureAtlas;

    if-nez v2, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/stickycoding/rokon/Texture;->prepareBuffers()V

    .line 255
    new-array v1, v3, [I

    .line 256
    .local v1, nameArray:[I
    invoke-static {}, Lcom/stickycoding/rokon/GLHelper;->enableTextures()V

    .line 257
    invoke-interface {p1, v3, v1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 258
    aget v2, v1, v5

    iput v2, p0, Lcom/stickycoding/rokon/Texture;->textureIndex:I

    .line 259
    iget v2, p0, Lcom/stickycoding/rokon/Texture;->textureIndex:I

    invoke-static {v2}, Lcom/stickycoding/rokon/GLHelper;->bindTexture(I)V

    .line 260
    iget v2, p0, Lcom/stickycoding/rokon/Texture;->textureWidth:I

    iget v3, p0, Lcom/stickycoding/rokon/Texture;->textureHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 261
    .local v0, bmp:Landroid/graphics/Bitmap;
    invoke-static {v6, v5, v0, v5}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 262
    const/16 v2, 0x2801

    iget v3, p0, Lcom/stickycoding/rokon/Texture;->minFilter:F

    invoke-interface {p1, v6, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 263
    const/16 v2, 0x2800

    iget v3, p0, Lcom/stickycoding/rokon/Texture;->magFilter:F

    invoke-interface {p1, v6, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 264
    const/16 v2, 0x2802

    iget v3, p0, Lcom/stickycoding/rokon/Texture;->wrapS:F

    invoke-interface {p1, v6, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 265
    const/16 v2, 0x2803

    iget v3, p0, Lcom/stickycoding/rokon/Texture;->wrapT:F

    invoke-interface {p1, v6, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 266
    iget v2, p0, Lcom/stickycoding/rokon/Texture;->envMode:F

    invoke-interface {p1, v8, v7, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 267
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 268
    const/4 v0, 0x0

    .line 269
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 270
    invoke-virtual {p0}, Lcom/stickycoding/rokon/Texture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 271
    invoke-static {v6, v5, v5, v5, v0}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    .line 272
    invoke-virtual {p0}, Lcom/stickycoding/rokon/Texture;->clearBitmap()V

    .line 273
    const/4 v0, 0x0

    .line 274
    invoke-static {p0}, Lcom/stickycoding/rokon/TextureManager;->addToActive(Lcom/stickycoding/rokon/Texture;)V

    .line 302
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #nameArray:[I
    :goto_0
    return-void

    .line 276
    :cond_0
    iget-object v2, p0, Lcom/stickycoding/rokon/Texture;->parentAtlas:Lcom/stickycoding/rokon/TextureAtlas;

    invoke-virtual {v2, p1}, Lcom/stickycoding/rokon/TextureAtlas;->onLoadTexture(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 277
    invoke-static {p0}, Lcom/stickycoding/rokon/TextureManager;->addToActive(Lcom/stickycoding/rokon/Texture;)V

    goto :goto_0

    .line 280
    :cond_1
    iget-object v2, p0, Lcom/stickycoding/rokon/Texture;->parentAtlas:Lcom/stickycoding/rokon/TextureAtlas;

    if-nez v2, :cond_2

    .line 281
    iget v2, p0, Lcom/stickycoding/rokon/Texture;->textureIndex:I

    invoke-static {v2}, Lcom/stickycoding/rokon/GLHelper;->bindTexture(I)V

    .line 282
    iget v2, p0, Lcom/stickycoding/rokon/Texture;->textureWidth:I

    iget v3, p0, Lcom/stickycoding/rokon/Texture;->textureHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 283
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    invoke-static {v6, v5, v0, v5}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 284
    const/16 v2, 0x2801

    iget v3, p0, Lcom/stickycoding/rokon/Texture;->minFilter:F

    invoke-interface {p1, v6, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 285
    const/16 v2, 0x2800

    iget v3, p0, Lcom/stickycoding/rokon/Texture;->magFilter:F

    invoke-interface {p1, v6, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 286
    const/16 v2, 0x2802

    iget v3, p0, Lcom/stickycoding/rokon/Texture;->wrapS:F

    invoke-interface {p1, v6, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 287
    const/16 v2, 0x2803

    iget v3, p0, Lcom/stickycoding/rokon/Texture;->wrapT:F

    invoke-interface {p1, v6, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 288
    iget v2, p0, Lcom/stickycoding/rokon/Texture;->envMode:F

    invoke-interface {p1, v8, v7, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 289
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 290
    const/4 v0, 0x0

    .line 291
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 292
    invoke-virtual {p0}, Lcom/stickycoding/rokon/Texture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 293
    invoke-static {v6, v5, v5, v5, v0}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    .line 294
    invoke-virtual {p0}, Lcom/stickycoding/rokon/Texture;->clearBitmap()V

    .line 295
    const/4 v0, 0x0

    .line 296
    invoke-static {p0}, Lcom/stickycoding/rokon/TextureManager;->addToActive(Lcom/stickycoding/rokon/Texture;)V

    goto :goto_0

    .line 298
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :cond_2
    iget-object v2, p0, Lcom/stickycoding/rokon/Texture;->parentAtlas:Lcom/stickycoding/rokon/TextureAtlas;

    invoke-virtual {v2, p1}, Lcom/stickycoding/rokon/TextureAtlas;->onLoadTexture(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 299
    invoke-static {p0}, Lcom/stickycoding/rokon/TextureManager;->addToActive(Lcom/stickycoding/rokon/Texture;)V

    goto :goto_0
.end method

.method protected prepareBuffers()V
    .locals 28

    .prologue
    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/Texture;->parentAtlas:Lcom/stickycoding/rokon/TextureAtlas;

    move-object/from16 v22, v0

    if-nez v22, :cond_3

    .line 152
    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/Texture;->tileCount:I

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v0, v0, [Lcom/stickycoding/rokon/BufferObject;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/stickycoding/rokon/Texture;->buffer:[Lcom/stickycoding/rokon/BufferObject;

    .line 153
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/Texture;->buffer:[Lcom/stickycoding/rokon/BufferObject;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move v0, v10

    move/from16 v1, v22

    if-lt v0, v1, :cond_2

    .line 188
    :cond_0
    sget v22, Lcom/stickycoding/rokon/DrawPriority;->drawPriority:I

    if-nez v22, :cond_1

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/Texture;->buffer:[Lcom/stickycoding/rokon/BufferObject;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v0, v0, [Lcom/stickycoding/rokon/vbo/ArrayVBO;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/stickycoding/rokon/Texture;->vbo:[Lcom/stickycoding/rokon/vbo/ArrayVBO;

    .line 190
    const/4 v10, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/Texture;->buffer:[Lcom/stickycoding/rokon/BufferObject;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move v0, v10

    move/from16 v1, v22

    if-lt v0, v1, :cond_4

    .line 194
    :cond_1
    return-void

    .line 154
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/Texture;->columns:I

    move/from16 v22, v0

    rem-int v22, v10, v22

    move/from16 v0, v22

    int-to-float v0, v0

    move v5, v0

    .line 155
    .local v5, col:F
    move v0, v10

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v22, v22, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/Texture;->columns:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v15, v22, v23

    .line 156
    .local v15, row:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/Texture;->buffer:[Lcom/stickycoding/rokon/BufferObject;

    move-object/from16 v22, v0

    new-instance v23, Lcom/stickycoding/rokon/BufferObject;

    const/16 v24, 0x8

    invoke-direct/range {v23 .. v24}, Lcom/stickycoding/rokon/BufferObject;-><init>(I)V

    aput-object v23, v22, v10

    .line 157
    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/Texture;->width:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/Texture;->columns:I

    move/from16 v23, v0

    div-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v20, v5, v22

    .line 158
    .local v20, x:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/Texture;->height:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/Texture;->rows:I

    move/from16 v23, v0

    div-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v21, v15, v22

    .line 159
    .local v21, y:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/Texture;->buffer:[Lcom/stickycoding/rokon/BufferObject;

    move-object/from16 v22, v0

    aget-object v22, v22, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/Texture;->textureWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v23, v20, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/Texture;->textureHeight:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v24, v21, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/Texture;->width:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/Texture;->columns:I

    move/from16 v26, v0

    div-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/Texture;->textureWidth:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/Texture;->height:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/Texture;->rows:I

    move/from16 v27, v0

    div-int v26, v26, v27

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/Texture;->textureHeight:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v26, v26, v27

    invoke-virtual/range {v22 .. v26}, Lcom/stickycoding/rokon/BufferObject;->update(FFFF)V

    .line 153
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 162
    .end local v5           #col:F
    .end local v10           #i:I
    .end local v15           #row:F
    .end local v20           #x:F
    .end local v21           #y:F
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/Texture;->tileCount:I

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v0, v0, [Lcom/stickycoding/rokon/BufferObject;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/stickycoding/rokon/Texture;->buffer:[Lcom/stickycoding/rokon/BufferObject;

    .line 163
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/Texture;->buffer:[Lcom/stickycoding/rokon/BufferObject;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move v0, v10

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    .line 164
    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/Texture;->columns:I

    move/from16 v22, v0

    rem-int v22, v10, v22

    move/from16 v0, v22

    int-to-float v0, v0

    move v5, v0

    .line 165
    .restart local v5       #col:F
    move v0, v10

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v22, v22, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/Texture;->columns:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v15, v22, v23

    .line 166
    .restart local v15       #row:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/Texture;->buffer:[Lcom/stickycoding/rokon/BufferObject;

    move-object/from16 v22, v0

    new-instance v23, Lcom/stickycoding/rokon/BufferObject;

    const/16 v24, 0x8

    invoke-direct/range {v23 .. v24}, Lcom/stickycoding/rokon/BufferObject;-><init>(I)V

    aput-object v23, v22, v10

    .line 167
    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/Texture;->width:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/Texture;->columns:I

    move/from16 v23, v0

    div-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v20, v5, v22

    .line 168
    .restart local v20       #x:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/Texture;->height:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/Texture;->rows:I

    move/from16 v23, v0

    div-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v21, v15, v22

    .line 170
    .restart local v21       #y:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/Texture;->textureWidth:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v8, v20, v22

    .line 171
    .local v8, finalX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/Texture;->textureHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v9, v21, v22

    .line 172
    .local v9, finalY:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/Texture;->width:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/Texture;->columns:I

    move/from16 v23, v0

    div-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/Texture;->textureWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v7, v22, v23

    .line 173
    .local v7, finalWidth:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/Texture;->height:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/Texture;->rows:I

    move/from16 v23, v0

    div-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/Texture;->textureHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v6, v22, v23

    .line 175
    .local v6, finalHeight:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/Texture;->atlasX:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/Texture;->parentAtlas:Lcom/stickycoding/rokon/TextureAtlas;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/stickycoding/rokon/TextureAtlas;->atlasWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v13, v22, v23

    .line 176
    .local v13, realX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/Texture;->atlasY:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/Texture;->parentAtlas:Lcom/stickycoding/rokon/TextureAtlas;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/stickycoding/rokon/TextureAtlas;->atlasHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v14, v22, v23

    .line 177
    .local v14, realY:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/Texture;->textureWidth:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/Texture;->parentAtlas:Lcom/stickycoding/rokon/TextureAtlas;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/stickycoding/rokon/TextureAtlas;->atlasWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v12, v22, v23

    .line 178
    .local v12, realWidth:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/Texture;->textureHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/Texture;->parentAtlas:Lcom/stickycoding/rokon/TextureAtlas;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/stickycoding/rokon/TextureAtlas;->atlasHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v11, v22, v23

    .line 180
    .local v11, realHeight:F
    mul-float v22, v8, v12

    add-float v18, v13, v22

    .line 181
    .local v18, theX:F
    mul-float v22, v9, v11

    add-float v19, v14, v22

    .line 182
    .local v19, theY:F
    mul-float v17, v7, v12

    .line 183
    .local v17, theWidth:F
    mul-float v16, v6, v11

    .line 185
    .local v16, theHeight:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/Texture;->buffer:[Lcom/stickycoding/rokon/BufferObject;

    move-object/from16 v22, v0

    aget-object v22, v22, v10

    move-object/from16 v0, v22

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v17

    move/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/stickycoding/rokon/BufferObject;->update(FFFF)V

    .line 163
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 191
    .end local v5           #col:F
    .end local v6           #finalHeight:F
    .end local v7           #finalWidth:F
    .end local v8           #finalX:F
    .end local v9           #finalY:F
    .end local v11           #realHeight:F
    .end local v12           #realWidth:F
    .end local v13           #realX:F
    .end local v14           #realY:F
    .end local v15           #row:F
    .end local v16           #theHeight:F
    .end local v17           #theWidth:F
    .end local v18           #theX:F
    .end local v19           #theY:F
    .end local v20           #x:F
    .end local v21           #y:F
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/Texture;->vbo:[Lcom/stickycoding/rokon/vbo/ArrayVBO;

    move-object/from16 v22, v0

    new-instance v23, Lcom/stickycoding/rokon/vbo/ArrayVBO;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/Texture;->buffer:[Lcom/stickycoding/rokon/BufferObject;

    move-object/from16 v24, v0

    aget-object v24, v24, v10

    const/16 v25, 0x0

    invoke-direct/range {v23 .. v25}, Lcom/stickycoding/rokon/vbo/ArrayVBO;-><init>(Lcom/stickycoding/rokon/BufferObject;I)V

    aput-object v23, v22, v10

    .line 190
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1
.end method

.method public reload()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 52
    iput-boolean v1, p0, Lcom/stickycoding/rokon/Texture;->reload:Z

    .line 53
    iget-object v0, p0, Lcom/stickycoding/rokon/Texture;->parentAtlas:Lcom/stickycoding/rokon/TextureAtlas;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/stickycoding/rokon/Texture;->parentAtlas:Lcom/stickycoding/rokon/TextureAtlas;

    iput-boolean v1, v0, Lcom/stickycoding/rokon/TextureAtlas;->reload:Z

    .line 54
    :cond_0
    return-void
.end method

.method protected setReloaded()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stickycoding/rokon/Texture;->reload:Z

    .line 58
    iget-object v0, p0, Lcom/stickycoding/rokon/Texture;->parentAtlas:Lcom/stickycoding/rokon/TextureAtlas;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/stickycoding/rokon/Texture;->parentAtlas:Lcom/stickycoding/rokon/TextureAtlas;

    invoke-virtual {v0}, Lcom/stickycoding/rokon/TextureAtlas;->setReloaded()V

    .line 59
    :cond_0
    return-void
.end method

.method protected setTextureIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 66
    iput p1, p0, Lcom/stickycoding/rokon/Texture;->textureIndex:I

    .line 67
    return-void
.end method

.method protected setUnloaded()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stickycoding/rokon/Texture;->reload:Z

    .line 47
    iput v1, p0, Lcom/stickycoding/rokon/Texture;->textureIndex:I

    .line 48
    iget-object v0, p0, Lcom/stickycoding/rokon/Texture;->parentAtlas:Lcom/stickycoding/rokon/TextureAtlas;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/stickycoding/rokon/Texture;->parentAtlas:Lcom/stickycoding/rokon/TextureAtlas;

    invoke-virtual {v0}, Lcom/stickycoding/rokon/TextureAtlas;->getTextureIndex()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/stickycoding/rokon/Texture;->parentAtlas:Lcom/stickycoding/rokon/TextureAtlas;

    invoke-virtual {v0}, Lcom/stickycoding/rokon/TextureAtlas;->setUnloaded()V

    .line 49
    :cond_0
    return-void
.end method
