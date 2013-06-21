.class public Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;
.super Ljava/lang/Object;
.source "AnimatedGifEncoder.java"


# instance fields
.field protected closeStream:Z

.field protected colorDepth:I

.field protected colorTab:[B

.field protected delay:I

.field protected dispose:I

.field protected firstFrame:Z

.field protected height:I

.field protected image:Landroid/graphics/Bitmap;

.field protected indexedPixels:[B

.field protected out:Ljava/io/OutputStream;

.field protected palSize:I

.field protected pixels:[B

.field protected px:[I

.field protected repeat:I

.field protected sample:I

.field protected sizeSet:Z

.field protected started:Z

.field protected transIndex:I

.field protected transparent:I

.field protected usedEntry:[Z

.field protected width:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v2, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->transparent:I

    .line 19
    iput v2, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->repeat:I

    .line 21
    iput v1, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->delay:I

    .line 23
    iput-boolean v1, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->started:Z

    .line 39
    const/16 v0, 0x100

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->usedEntry:[Z

    .line 41
    const/4 v0, 0x7

    iput v0, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->palSize:I

    .line 43
    iput v2, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->dispose:I

    .line 45
    iput-boolean v1, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->closeStream:Z

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->firstFrame:Z

    .line 49
    iput-boolean v1, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->sizeSet:Z

    .line 51
    const/16 v0, 0xa

    iput v0, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->sample:I

    .line 9
    return-void
.end method


# virtual methods
.method public addFrame(Landroid/graphics/Bitmap;)Z
    .locals 4
    .parameter "im"

    .prologue
    const/4 v1, 0x0

    .line 119
    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->started:Z

    if-nez v2, :cond_1

    .line 150
    :cond_0
    :goto_0
    return v1

    .line 122
    :cond_1
    const/4 v1, 0x1

    .line 124
    .local v1, ok:Z
    :try_start_0
    iget-boolean v2, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->sizeSet:Z

    if-nez v2, :cond_2

    .line 126
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->setSize(II)V

    .line 128
    :cond_2
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->image:Landroid/graphics/Bitmap;

    .line 129
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->getImagePixels()V

    .line 130
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->analyzePixels()V

    .line 131
    iget-boolean v2, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->firstFrame:Z

    if-eqz v2, :cond_3

    .line 132
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->writeLSD()V

    .line 133
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->writePalette()V

    .line 134
    iget v2, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->repeat:I

    if-ltz v2, :cond_3

    .line 136
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->writeNetscapeExt()V

    .line 139
    :cond_3
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->writeGraphicCtrlExt()V

    .line 140
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->writeImageDesc()V

    .line 141
    iget-boolean v2, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->firstFrame:Z

    if-nez v2, :cond_4

    .line 142
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->writePalette()V

    .line 144
    :cond_4
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->writePixels()V

    .line 145
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->firstFrame:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected analyzePixels()V
    .locals 11

    .prologue
    .line 266
    iget-object v8, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->pixels:[B

    array-length v4, v8

    .line 267
    .local v4, len:I
    div-int/lit8 v5, v4, 0x3

    .line 268
    .local v5, nPix:I
    new-array v8, v5, [B

    iput-object v8, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->indexedPixels:[B

    .line 269
    new-instance v6, Lcom/spritefish/fastburstcamera/gif/NeuQuant;

    iget-object v8, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->pixels:[B

    iget v9, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->sample:I

    invoke-direct {v6, v8, v4, v9}, Lcom/spritefish/fastburstcamera/gif/NeuQuant;-><init>([BII)V

    .line 271
    .local v6, nq:Lcom/spritefish/fastburstcamera/gif/NeuQuant;
    invoke-virtual {v6}, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->process()[B

    move-result-object v8

    iput-object v8, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->colorTab:[B

    .line 273
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v8, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->colorTab:[B

    array-length v8, v8

    if-lt v0, v8, :cond_1

    .line 280
    const/4 v2, 0x0

    .line 281
    .local v2, k:I
    const/4 v0, 0x0

    move v3, v2

    .end local v2           #k:I
    .local v3, k:I
    :goto_1
    if-lt v0, v5, :cond_2

    .line 287
    const/16 v8, 0x8

    iput v8, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->colorDepth:I

    .line 288
    const/4 v8, 0x7

    iput v8, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->palSize:I

    .line 290
    iget v8, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->transparent:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    .line 291
    iget v8, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->transparent:I

    invoke-virtual {p0, v8}, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->findClosest(I)I

    move-result v8

    iput v8, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->transIndex:I

    .line 293
    :cond_0
    return-void

    .line 274
    .end local v3           #k:I
    :cond_1
    iget-object v8, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->colorTab:[B

    aget-byte v7, v8, v0

    .line 275
    .local v7, temp:B
    iget-object v8, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->colorTab:[B

    iget-object v9, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->colorTab:[B

    add-int/lit8 v10, v0, 0x2

    aget-byte v9, v9, v10

    aput-byte v9, v8, v0

    .line 276
    iget-object v8, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->colorTab:[B

    add-int/lit8 v9, v0, 0x2

    aput-byte v7, v8, v9

    .line 277
    iget-object v8, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->usedEntry:[Z

    div-int/lit8 v9, v0, 0x3

    const/4 v10, 0x0

    aput-boolean v10, v8, v9

    .line 273
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 282
    .end local v7           #temp:B
    .restart local v3       #k:I
    :cond_2
    iget-object v8, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->pixels:[B

    add-int/lit8 v2, v3, 0x1

    .end local v3           #k:I
    .restart local v2       #k:I
    aget-byte v8, v8, v3

    and-int/lit16 v8, v8, 0xff

    iget-object v9, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->pixels:[B

    add-int/lit8 v3, v2, 0x1

    .end local v2           #k:I
    .restart local v3       #k:I
    aget-byte v9, v9, v2

    and-int/lit16 v9, v9, 0xff

    iget-object v10, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->pixels:[B

    add-int/lit8 v2, v3, 0x1

    .end local v3           #k:I
    .restart local v2       #k:I
    aget-byte v10, v10, v3

    and-int/lit16 v10, v10, 0xff

    invoke-virtual {v6, v8, v9, v10}, Lcom/spritefish/fastburstcamera/gif/NeuQuant;->map(III)I

    move-result v1

    .line 283
    .local v1, index:I
    iget-object v8, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->usedEntry:[Z

    const/4 v9, 0x1

    aput-boolean v9, v8, v1

    .line 284
    iget-object v8, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->indexedPixels:[B

    int-to-byte v9, v1

    aput-byte v9, v8, v0

    .line 281
    add-int/lit8 v0, v0, 0x1

    move v3, v2

    .end local v2           #k:I
    .restart local v3       #k:I
    goto :goto_1
.end method

.method protected findClosest(I)I
    .locals 15
    .parameter "c"

    .prologue
    .line 300
    iget-object v13, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->colorTab:[B

    if-nez v13, :cond_1

    .line 301
    const/4 v11, -0x1

    .line 320
    :cond_0
    return v11

    .line 302
    :cond_1
    shr-int/lit8 v13, p1, 0x10

    and-int/lit16 v12, v13, 0xff

    .line 303
    .local v12, r:I
    shr-int/lit8 v13, p1, 0x8

    and-int/lit16 v6, v13, 0xff

    .line 304
    .local v6, g:I
    shr-int/lit8 v13, p1, 0x0

    and-int/lit16 v0, v13, 0xff

    .line 305
    .local v0, b:I
    const/4 v11, 0x0

    .line 306
    .local v11, minpos:I
    const/high16 v4, 0x100

    .line 307
    .local v4, dmin:I
    iget-object v13, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->colorTab:[B

    array-length v10, v13

    .line 308
    .local v10, len:I
    const/4 v7, 0x0

    .local v7, i:I
    move v8, v7

    .end local v7           #i:I
    .local v8, i:I
    :goto_0
    if-ge v8, v10, :cond_0

    .line 309
    iget-object v13, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->colorTab:[B

    add-int/lit8 v7, v8, 0x1

    .end local v8           #i:I
    .restart local v7       #i:I
    aget-byte v13, v13, v8

    and-int/lit16 v13, v13, 0xff

    sub-int v5, v12, v13

    .line 310
    .local v5, dr:I
    iget-object v13, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->colorTab:[B

    add-int/lit8 v8, v7, 0x1

    .end local v7           #i:I
    .restart local v8       #i:I
    aget-byte v13, v13, v7

    and-int/lit16 v13, v13, 0xff

    sub-int v3, v6, v13

    .line 311
    .local v3, dg:I
    iget-object v13, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->colorTab:[B

    aget-byte v13, v13, v8

    and-int/lit16 v13, v13, 0xff

    sub-int v2, v0, v13

    .line 312
    .local v2, db:I
    mul-int v13, v5, v5

    mul-int v14, v3, v3

    add-int/2addr v13, v14

    mul-int v14, v2, v2

    add-int v1, v13, v14

    .line 313
    .local v1, d:I
    div-int/lit8 v9, v8, 0x3

    .line 314
    .local v9, index:I
    iget-object v13, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->usedEntry:[Z

    aget-boolean v13, v13, v9

    if-eqz v13, :cond_2

    if-ge v1, v4, :cond_2

    .line 315
    move v4, v1

    .line 316
    move v11, v9

    .line 318
    :cond_2
    add-int/lit8 v7, v8, 0x1

    .end local v8           #i:I
    .restart local v7       #i:I
    move v8, v7

    .end local v7           #i:I
    .restart local v8       #i:I
    goto :goto_0
.end method

.method public finish()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 158
    iget-boolean v3, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->started:Z

    if-nez v3, :cond_0

    move v1, v2

    .line 182
    :goto_0
    return v1

    .line 160
    :cond_0
    const/4 v1, 0x1

    .line 161
    .local v1, ok:Z
    iput-boolean v2, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->started:Z

    .line 163
    :try_start_0
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    .line 164
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 165
    iget-boolean v3, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->closeStream:Z

    if-eqz v3, :cond_1

    .line 166
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :cond_1
    :goto_1
    iput v2, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->transIndex:I

    .line 174
    iput-object v5, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    .line 175
    iput-object v5, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->image:Landroid/graphics/Bitmap;

    .line 176
    iput-object v5, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->pixels:[B

    .line 177
    iput-object v5, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->indexedPixels:[B

    .line 178
    iput-object v5, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->colorTab:[B

    .line 179
    iput-boolean v2, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->closeStream:Z

    .line 180
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->firstFrame:Z

    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected getImagePixels()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 327
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 328
    .local v6, w:I
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 330
    .local v7, h:I
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->image:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->px:[I

    iget v3, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->width:I

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 331
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    mul-int v0, v7, v6

    if-lt v8, v0, :cond_0

    .line 342
    return-void

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->px:[I

    aget v9, v0, v8

    .line 334
    .local v9, pixel:I
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->pixels:[B

    mul-int/lit8 v1, v8, 0x3

    and-int/lit16 v2, v9, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 335
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->pixels:[B

    mul-int/lit8 v1, v8, 0x3

    add-int/lit8 v1, v1, 0x1

    const v2, 0xff00

    and-int/2addr v2, v9

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 336
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->pixels:[B

    mul-int/lit8 v1, v8, 0x3

    add-int/lit8 v1, v1, 0x2

    const/high16 v2, 0xff

    and-int/2addr v2, v9

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 331
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method public setDelay(I)V
    .locals 1
    .parameter "ms"

    .prologue
    .line 61
    div-int/lit8 v0, p1, 0xa

    iput v0, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->delay:I

    .line 62
    return-void
.end method

.method public setDispose(I)V
    .locals 0
    .parameter "code"

    .prologue
    .line 73
    if-ltz p1, :cond_0

    .line 74
    iput p1, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->dispose:I

    .line 76
    :cond_0
    return-void
.end method

.method public setFrameRate(F)V
    .locals 1
    .parameter "fps"

    .prologue
    .line 193
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 194
    const/high16 v0, 0x42c8

    div-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->delay:I

    .line 196
    :cond_0
    return-void
.end method

.method public setQuality(I)V
    .locals 1
    .parameter "quality"

    .prologue
    .line 210
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 211
    const/4 p1, 0x1

    .line 212
    :cond_0
    iput p1, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->sample:I

    .line 213
    return-void
.end method

.method public setRepeat(I)V
    .locals 0
    .parameter "iter"

    .prologue
    .line 88
    if-ltz p1, :cond_0

    .line 89
    iput p1, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->repeat:I

    .line 91
    :cond_0
    return-void
.end method

.method public setSize(II)V
    .locals 2
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v1, 0x1

    .line 225
    iget-boolean v0, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->started:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->firstFrame:Z

    if-nez v0, :cond_0

    .line 238
    :goto_0
    return-void

    .line 227
    :cond_0
    iput p1, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->width:I

    .line 228
    iput p2, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->height:I

    .line 229
    iget v0, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->width:I

    if-ge v0, v1, :cond_1

    .line 230
    const/16 v0, 0x140

    iput v0, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->width:I

    .line 231
    :cond_1
    iget v0, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->height:I

    if-ge v0, v1, :cond_2

    .line 232
    const/16 v0, 0xf0

    iput v0, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->height:I

    .line 233
    :cond_2
    iput-boolean v1, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->sizeSet:Z

    .line 235
    mul-int v0, p1, p2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->px:[I

    .line 236
    mul-int v0, p1, p2

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->pixels:[B

    goto :goto_0
.end method

.method public setTransparent(I)V
    .locals 0
    .parameter "c"

    .prologue
    .line 104
    iput p1, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->transparent:I

    .line 105
    return-void
.end method

.method public start(Ljava/io/OutputStream;)Z
    .locals 3
    .parameter "os"

    .prologue
    const/4 v2, 0x0

    .line 249
    if-nez p1, :cond_0

    move v1, v2

    .line 259
    :goto_0
    return v1

    .line 251
    :cond_0
    const/4 v1, 0x1

    .line 252
    .local v1, ok:Z
    iput-boolean v2, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->closeStream:Z

    .line 253
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    .line 255
    :try_start_0
    const-string v2, "GIF89a"

    invoke-virtual {p0, v2}, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :goto_1
    iput-boolean v1, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->started:Z

    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected writeGraphicCtrlExt()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 377
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v3, 0x21

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 378
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v3, 0xf9

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 379
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 381
    iget v2, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->transparent:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 382
    const/4 v1, 0x0

    .line 383
    .local v1, transp:I
    const/4 v0, 0x0

    .line 388
    .local v0, disp:I
    :goto_0
    iget v2, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->dispose:I

    if-ltz v2, :cond_0

    .line 389
    iget v2, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->dispose:I

    and-int/lit8 v0, v2, 0x7

    .line 391
    :cond_0
    shl-int/lit8 v0, v0, 0x2

    .line 394
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    or-int v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 399
    iget v2, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->delay:I

    invoke-virtual {p0, v2}, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->writeShort(I)V

    .line 400
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    iget v3, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->transIndex:I

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 401
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 402
    return-void

    .line 385
    .end local v0           #disp:I
    .end local v1           #transp:I
    :cond_1
    const/4 v1, 0x1

    .line 386
    .restart local v1       #transp:I
    const/4 v0, 0x2

    .restart local v0       #disp:I
    goto :goto_0
.end method

.method protected writeImageDesc()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 408
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 409
    invoke-virtual {p0, v2}, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->writeShort(I)V

    .line 410
    invoke-virtual {p0, v2}, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->writeShort(I)V

    .line 411
    iget v0, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->width:I

    invoke-virtual {p0, v0}, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->writeShort(I)V

    .line 412
    iget v0, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->height:I

    invoke-virtual {p0, v0}, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->writeShort(I)V

    .line 414
    iget-boolean v0, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->firstFrame:Z

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 425
    :goto_0
    return-void

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    .line 423
    iget v1, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->palSize:I

    or-int/lit16 v1, v1, 0x80

    .line 419
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0
.end method

.method protected writeLSD()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 432
    iget v0, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->width:I

    invoke-virtual {p0, v0}, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->writeShort(I)V

    .line 433
    iget v0, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->height:I

    invoke-virtual {p0, v0}, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->writeShort(I)V

    .line 435
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    .line 438
    iget v1, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->palSize:I

    or-int/lit16 v1, v1, 0xf0

    .line 435
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 440
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 441
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 442
    return-void
.end method

.method protected writeNetscapeExt()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 448
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 449
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 450
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 451
    const-string v0, "NETSCAPE2.0"

    invoke-virtual {p0, v0}, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->writeString(Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 453
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 454
    iget v0, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->repeat:I

    invoke-virtual {p0, v0}, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->writeShort(I)V

    .line 455
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 456
    return-void
.end method

.method protected writePalette()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 462
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->colorTab:[B

    iget-object v4, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->colorTab:[B

    array-length v4, v4

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 463
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->colorTab:[B

    array-length v2, v2

    rsub-int v1, v2, 0x300

    .line 464
    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 467
    return-void

    .line 465
    :cond_0
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, v5}, Ljava/io/OutputStream;->write(I)V

    .line 464
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected writePixels()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 473
    new-instance v0, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;

    iget v1, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->width:I

    iget v2, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->height:I

    iget-object v3, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->indexedPixels:[B

    iget v4, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->colorDepth:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;-><init>(II[BI)V

    .line 474
    .local v0, encoder:Lcom/spritefish/fastburstcamera/gif/LZWEncoder;
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Lcom/spritefish/fastburstcamera/gif/LZWEncoder;->encode(Ljava/io/OutputStream;)V

    .line 475
    return-void
.end method

.method protected writeShort(I)V
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 481
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 482
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 483
    return-void
.end method

.method protected writeString(Ljava/lang/String;)V
    .locals 3
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 489
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 492
    return-void

    .line 490
    :cond_0
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 489
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
