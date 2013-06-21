.class public Lcom/wooboo/adlib_android/g;
.super Ljava/lang/Object;
.source "g.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wooboo/adlib_android/g$GifFrame;
    }
.end annotation


# static fields
.field protected static final MaxStackSize:I = 0x1000

.field public static final STATUS_FORMAT_ERROR:I = 0x1

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_OPEN_ERROR:I = 0x2


# instance fields
.field protected act:[I

.field protected bgColor:I

.field protected bgIndex:I

.field protected block:[B

.field protected blockSize:I

.field protected delay:I

.field protected dispose:I

.field protected frameCount:I

.field protected frameindex:I

.field protected frames:Ljava/util/Vector;

.field protected gct:[I

.field protected gctFlag:Z

.field protected gctSize:I

.field protected height:I

.field protected ih:I

.field protected image:Landroid/graphics/Bitmap;

.field protected in:Ljava/io/InputStream;

.field protected interlace:Z

.field protected iw:I

.field protected ix:I

.field protected iy:I

.field protected lastBgColor:I

.field protected lastDispose:I

.field protected lastImage:Landroid/graphics/Bitmap;

.field protected lct:[I

.field protected lctFlag:Z

.field protected lctSize:I

.field protected loopCount:I

.field protected lrh:I

.field protected lrw:I

.field protected lrx:I

.field protected lry:I

.field protected pixelAspect:I

.field protected pixelStack:[B

.field protected pixels:[B

.field protected prefix:[S

.field protected status:I

.field protected suffix:[B

.field protected transIndex:I

.field protected transparency:Z

.field protected width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput v0, p0, Lcom/wooboo/adlib_android/g;->loopCount:I

    .line 40
    iput v1, p0, Lcom/wooboo/adlib_android/g;->frameindex:I

    .line 53
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/wooboo/adlib_android/g;->block:[B

    .line 54
    iput v1, p0, Lcom/wooboo/adlib_android/g;->blockSize:I

    .line 57
    iput v1, p0, Lcom/wooboo/adlib_android/g;->dispose:I

    .line 59
    iput v1, p0, Lcom/wooboo/adlib_android/g;->lastDispose:I

    .line 60
    iput-boolean v1, p0, Lcom/wooboo/adlib_android/g;->transparency:Z

    .line 61
    iput v1, p0, Lcom/wooboo/adlib_android/g;->delay:I

    .line 8
    return-void
.end method


# virtual methods
.method protected decodeImageData()V
    .locals 25

    .prologue
    .line 233
    const/4 v2, -0x1

    .line 234
    .local v2, NullCode:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wooboo/adlib_android/g;->iw:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wooboo/adlib_android/g;->ih:I

    move/from16 v24, v0

    mul-int v17, v23, v24

    .line 237
    .local v17, npix:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/g;->pixels:[B

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/g;->pixels:[B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    .line 238
    :cond_0
    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wooboo/adlib_android/g;->pixels:[B

    .line 240
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/g;->prefix:[S

    move-object/from16 v23, v0

    if-nez v23, :cond_2

    .line 241
    const/16 v23, 0x1000

    move/from16 v0, v23

    new-array v0, v0, [S

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wooboo/adlib_android/g;->prefix:[S

    .line 243
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/g;->suffix:[B

    move-object/from16 v23, v0

    if-nez v23, :cond_3

    .line 244
    const/16 v23, 0x1000

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wooboo/adlib_android/g;->suffix:[B

    .line 246
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/g;->pixelStack:[B

    move-object/from16 v23, v0

    if-nez v23, :cond_4

    .line 247
    const/16 v23, 0x1001

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wooboo/adlib_android/g;->pixelStack:[B

    .line 250
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/wooboo/adlib_android/g;->read()I

    move-result v11

    .line 251
    .local v11, data_size:I
    const/16 v23, 0x1

    shl-int v6, v23, v11

    .line 252
    .local v6, clear:I
    add-int/lit8 v13, v6, 0x1

    .line 253
    .local v13, end_of_information:I
    add-int/lit8 v3, v6, 0x2

    .line 254
    .local v3, available:I
    move/from16 v18, v2

    .line 255
    .local v18, old_code:I
    add-int/lit8 v9, v11, 0x1

    .line 256
    .local v9, code_size:I
    const/16 v23, 0x1

    shl-int v23, v23, v9

    const/16 v24, 0x1

    sub-int v8, v23, v24

    .line 257
    .local v8, code_mask:I
    const/4 v7, 0x0

    .local v7, code:I
    :goto_0
    if-lt v7, v6, :cond_6

    .line 263
    const/4 v4, 0x0

    .local v4, bi:I
    move/from16 v19, v4

    .local v19, pi:I
    move/from16 v21, v4

    .local v21, top:I
    move v14, v4

    .local v14, first:I
    move v10, v4

    .local v10, count:I
    move v5, v4

    .local v5, bits:I
    move v12, v4

    .line 264
    .local v12, datum:I
    const/4 v15, 0x0

    .local v15, i:I
    move/from16 v20, v19

    .end local v19           #pi:I
    .local v20, pi:I
    move/from16 v22, v21

    .end local v21           #top:I
    .local v22, top:I
    :goto_1
    move v0, v15

    move/from16 v1, v17

    if-lt v0, v1, :cond_7

    :cond_5
    move/from16 v21, v22

    .line 336
    .end local v22           #top:I
    .restart local v21       #top:I
    :goto_2
    move/from16 v15, v20

    :goto_3
    move v0, v15

    move/from16 v1, v17

    if-lt v0, v1, :cond_12

    .line 339
    return-void

    .line 258
    .end local v4           #bi:I
    .end local v5           #bits:I
    .end local v10           #count:I
    .end local v12           #datum:I
    .end local v14           #first:I
    .end local v15           #i:I
    .end local v20           #pi:I
    .end local v21           #top:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/g;->prefix:[S

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-short v24, v23, v7

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/g;->suffix:[B

    move-object/from16 v23, v0

    move v0, v7

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v23, v7

    .line 257
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 265
    .restart local v4       #bi:I
    .restart local v5       #bits:I
    .restart local v10       #count:I
    .restart local v12       #datum:I
    .restart local v14       #first:I
    .restart local v15       #i:I
    .restart local v20       #pi:I
    .restart local v22       #top:I
    :cond_7
    if-nez v22, :cond_13

    .line 266
    if-ge v5, v9, :cond_a

    .line 268
    if-nez v10, :cond_9

    .line 270
    invoke-virtual/range {p0 .. p0}, Lcom/wooboo/adlib_android/g;->readBlock()I

    move-result v10

    .line 271
    if-gtz v10, :cond_8

    move/from16 v21, v22

    .line 272
    .end local v22           #top:I
    .restart local v21       #top:I
    goto :goto_2

    .line 274
    .end local v21           #top:I
    .restart local v22       #top:I
    :cond_8
    const/4 v4, 0x0

    .line 276
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/g;->block:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v4

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    shl-int v23, v23, v5

    add-int v12, v12, v23

    .line 277
    add-int/lit8 v5, v5, 0x8

    .line 278
    add-int/lit8 v4, v4, 0x1

    .line 279
    add-int/lit8 v10, v10, -0x1

    .line 280
    goto :goto_1

    .line 283
    :cond_a
    and-int v7, v12, v8

    .line 284
    shr-int/2addr v12, v9

    .line 285
    sub-int/2addr v5, v9

    .line 288
    if-gt v7, v3, :cond_5

    if-ne v7, v13, :cond_b

    move/from16 v21, v22

    .line 289
    .end local v22           #top:I
    .restart local v21       #top:I
    goto :goto_2

    .line 291
    .end local v21           #top:I
    .restart local v22       #top:I
    :cond_b
    if-ne v7, v6, :cond_c

    .line 293
    add-int/lit8 v9, v11, 0x1

    .line 294
    const/16 v23, 0x1

    shl-int v23, v23, v9

    const/16 v24, 0x1

    sub-int v8, v23, v24

    .line 295
    add-int/lit8 v3, v6, 0x2

    .line 296
    move/from16 v18, v2

    .line 297
    goto :goto_1

    .line 299
    :cond_c
    move/from16 v0, v18

    move v1, v2

    if-ne v0, v1, :cond_d

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/g;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22           #top:I
    .restart local v21       #top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/g;->suffix:[B

    move-object/from16 v24, v0

    aget-byte v24, v24, v7

    aput-byte v24, v23, v22

    .line 301
    move/from16 v18, v7

    .line 302
    move v14, v7

    move/from16 v22, v21

    .line 303
    .end local v21           #top:I
    .restart local v22       #top:I
    goto/16 :goto_1

    .line 305
    :cond_d
    move/from16 v16, v7

    .line 306
    .local v16, in_code:I
    if-ne v7, v3, :cond_e

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/g;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22           #top:I
    .restart local v21       #top:I
    move v0, v14

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v23, v22

    .line 308
    move/from16 v7, v18

    move/from16 v22, v21

    .line 310
    .end local v21           #top:I
    .restart local v22       #top:I
    :cond_e
    :goto_4
    if-gt v7, v6, :cond_f

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/g;->suffix:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v7

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move v14, v0

    .line 316
    const/16 v23, 0x1000

    move v0, v3

    move/from16 v1, v23

    if-lt v0, v1, :cond_10

    move/from16 v21, v22

    .line 317
    .end local v22           #top:I
    .restart local v21       #top:I
    goto/16 :goto_2

    .line 311
    .end local v21           #top:I
    .restart local v22       #top:I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/g;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22           #top:I
    .restart local v21       #top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/g;->suffix:[B

    move-object/from16 v24, v0

    aget-byte v24, v24, v7

    aput-byte v24, v23, v22

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/g;->prefix:[S

    move-object/from16 v23, v0

    aget-short v7, v23, v7

    move/from16 v22, v21

    .end local v21           #top:I
    .restart local v22       #top:I
    goto :goto_4

    .line 319
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/g;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22           #top:I
    .restart local v21       #top:I
    move v0, v14

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v23, v22

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/g;->prefix:[S

    move-object/from16 v23, v0

    move/from16 v0, v18

    int-to-short v0, v0

    move/from16 v24, v0

    aput-short v24, v23, v3

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/g;->suffix:[B

    move-object/from16 v23, v0

    move v0, v14

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v23, v3

    .line 322
    add-int/lit8 v3, v3, 0x1

    .line 323
    and-int v23, v3, v8

    if-nez v23, :cond_11

    .line 324
    const/16 v23, 0x1000

    move v0, v3

    move/from16 v1, v23

    if-ge v0, v1, :cond_11

    .line 325
    add-int/lit8 v9, v9, 0x1

    .line 326
    add-int/2addr v8, v3

    .line 328
    :cond_11
    move/from16 v18, v16

    .line 332
    .end local v16           #in_code:I
    :goto_5
    add-int/lit8 v21, v21, -0x1

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/g;->pixels:[B

    move-object/from16 v23, v0

    add-int/lit8 v19, v20, 0x1

    .end local v20           #pi:I
    .restart local v19       #pi:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/g;->pixelStack:[B

    move-object/from16 v24, v0

    aget-byte v24, v24, v21

    aput-byte v24, v23, v20

    .line 334
    add-int/lit8 v15, v15, 0x1

    move/from16 v20, v19

    .end local v19           #pi:I
    .restart local v20       #pi:I
    move/from16 v22, v21

    .end local v21           #top:I
    .restart local v22       #top:I
    goto/16 :goto_1

    .line 337
    .end local v22           #top:I
    .restart local v21       #top:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/g;->pixels:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-byte v24, v23, v15

    .line 336
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_3

    .end local v21           #top:I
    .restart local v22       #top:I
    :cond_13
    move/from16 v21, v22

    .end local v22           #top:I
    .restart local v21       #top:I
    goto :goto_5
.end method

.method protected err()Z
    .locals 1

    .prologue
    .line 342
    iget v0, p0, Lcom/wooboo/adlib_android/g;->status:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDelay(I)I
    .locals 1
    .parameter "n"

    .prologue
    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/wooboo/adlib_android/g;->delay:I

    .line 95
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/wooboo/adlib_android/g;->frameCount:I

    if-ge p1, v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/wooboo/adlib_android/g;->frames:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wooboo/adlib_android/g$GifFrame;

    iget v0, v0, Lcom/wooboo/adlib_android/g$GifFrame;->delay:I

    iput v0, p0, Lcom/wooboo/adlib_android/g;->delay:I

    .line 98
    :cond_0
    iget v0, p0, Lcom/wooboo/adlib_android/g;->delay:I

    return v0
.end method

.method public getFrame(I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "n"

    .prologue
    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, im:Landroid/graphics/Bitmap;
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/wooboo/adlib_android/g;->frameCount:I

    if-ge p1, v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/wooboo/adlib_android/g;->frames:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/wooboo/adlib_android/g$GifFrame;

    iget-object v0, p0, Lcom/wooboo/adlib_android/g$GifFrame;->image:Landroid/graphics/Bitmap;

    .line 199
    :cond_0
    return-object v0
.end method

.method public getFrameCount()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/wooboo/adlib_android/g;->frameCount:I

    return v0
.end method

.method public getFrameindex()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/wooboo/adlib_android/g;->frameindex:I

    return v0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/wooboo/adlib_android/g;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getLoopCount()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/wooboo/adlib_android/g;->loopCount:I

    return v0
.end method

.method protected init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 346
    iput v0, p0, Lcom/wooboo/adlib_android/g;->status:I

    .line 347
    iput v0, p0, Lcom/wooboo/adlib_android/g;->frameCount:I

    .line 348
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/wooboo/adlib_android/g;->frames:Ljava/util/Vector;

    .line 349
    iput-object v1, p0, Lcom/wooboo/adlib_android/g;->gct:[I

    .line 350
    iput-object v1, p0, Lcom/wooboo/adlib_android/g;->lct:[I

    .line 351
    return-void
.end method

.method public next()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 203
    iget v0, p0, Lcom/wooboo/adlib_android/g;->frameindex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/wooboo/adlib_android/g;->frameindex:I

    .line 204
    iget v0, p0, Lcom/wooboo/adlib_android/g;->frameindex:I

    iget-object v1, p0, Lcom/wooboo/adlib_android/g;->frames:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    .line 205
    const/4 v0, 0x0

    iput v0, p0, Lcom/wooboo/adlib_android/g;->frameindex:I

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/wooboo/adlib_android/g;->frames:Ljava/util/Vector;

    iget v1, p0, Lcom/wooboo/adlib_android/g;->frameindex:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/wooboo/adlib_android/g$GifFrame;

    iget-object v0, p0, Lcom/wooboo/adlib_android/g$GifFrame;->image:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected read()I
    .locals 3

    .prologue
    .line 354
    const/4 v0, 0x0

    .line 356
    .local v0, curByte:I
    :try_start_0
    iget-object v2, p0, Lcom/wooboo/adlib_android/g;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 360
    :goto_0
    return v0

    .line 357
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 358
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x1

    iput v2, p0, Lcom/wooboo/adlib_android/g;->status:I

    goto :goto_0
.end method

.method public read(Ljava/io/InputStream;)I
    .locals 2
    .parameter "is"

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/g;->init()V

    .line 212
    if-eqz p1, :cond_1

    .line 213
    iput-object p1, p0, Lcom/wooboo/adlib_android/g;->in:Ljava/io/InputStream;

    .line 214
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/g;->readHeader()V

    .line 215
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/g;->err()Z

    move-result v1

    if-nez v1, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/g;->readContents()V

    .line 217
    iget v1, p0, Lcom/wooboo/adlib_android/g;->frameCount:I

    if-gez v1, :cond_0

    .line 218
    const/4 v1, 0x1

    iput v1, p0, Lcom/wooboo/adlib_android/g;->status:I

    .line 225
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_1
    iget v1, p0, Lcom/wooboo/adlib_android/g;->status:I

    return v1

    .line 222
    :cond_1
    const/4 v1, 0x2

    iput v1, p0, Lcom/wooboo/adlib_android/g;->status:I

    goto :goto_0

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected readBlock()I
    .locals 6

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/g;->read()I

    move-result v3

    iput v3, p0, Lcom/wooboo/adlib_android/g;->blockSize:I

    .line 365
    const/4 v2, 0x0

    .line 366
    .local v2, n:I
    iget v3, p0, Lcom/wooboo/adlib_android/g;->blockSize:I

    if-lez v3, :cond_1

    .line 368
    const/4 v0, 0x0

    .line 369
    .local v0, count:I
    :goto_0
    :try_start_0
    iget v3, p0, Lcom/wooboo/adlib_android/g;->blockSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v2, v3, :cond_2

    .line 379
    :cond_0
    :goto_1
    iget v3, p0, Lcom/wooboo/adlib_android/g;->blockSize:I

    if-ge v2, v3, :cond_1

    .line 380
    const/4 v3, 0x1

    iput v3, p0, Lcom/wooboo/adlib_android/g;->status:I

    .line 383
    .end local v0           #count:I
    :cond_1
    return v2

    .line 370
    .restart local v0       #count:I
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/wooboo/adlib_android/g;->in:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/wooboo/adlib_android/g;->block:[B

    iget v5, p0, Lcom/wooboo/adlib_android/g;->blockSize:I

    sub-int/2addr v5, v2

    invoke-virtual {v3, v4, v2, v5}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 371
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 374
    add-int/2addr v2, v0

    goto :goto_0

    .line 376
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 377
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected readColorTable(I)[I
    .locals 14
    .parameter "ncolors"

    .prologue
    .line 387
    mul-int/lit8 v9, p1, 0x3

    .line 388
    .local v9, nbytes:I
    const/4 v11, 0x0

    check-cast v11, [I

    .line 389
    .local v11, tab:[I
    new-array v1, v9, [B

    .line 390
    .local v1, c:[B
    const/4 v8, 0x0

    .line 392
    .local v8, n:I
    :try_start_0
    iget-object v12, p0, Lcom/wooboo/adlib_android/g;->in:Ljava/io/InputStream;

    invoke-virtual {v12, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 396
    :goto_0
    if-ge v8, v9, :cond_1

    .line 397
    const/4 v12, 0x1

    iput v12, p0, Lcom/wooboo/adlib_android/g;->status:I

    .line 409
    :cond_0
    return-object v11

    .line 393
    :catch_0
    move-exception v12

    move-object v2, v12

    .line 394
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 399
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    const/16 v12, 0x100

    new-array v11, v12, [I

    .line 400
    const/4 v4, 0x0

    .line 401
    .local v4, i:I
    const/4 v6, 0x0

    .local v6, j:I
    move v7, v6

    .end local v6           #j:I
    .local v7, j:I
    move v5, v4

    .line 402
    .end local v4           #i:I
    .local v5, i:I
    :goto_1
    if-ge v5, p1, :cond_0

    .line 403
    add-int/lit8 v6, v7, 0x1

    .end local v7           #j:I
    .restart local v6       #j:I
    aget-byte v12, v1, v7

    and-int/lit16 v10, v12, 0xff

    .line 404
    .local v10, r:I
    add-int/lit8 v7, v6, 0x1

    .end local v6           #j:I
    .restart local v7       #j:I
    aget-byte v12, v1, v6

    and-int/lit16 v3, v12, 0xff

    .line 405
    .local v3, g:I
    add-int/lit8 v6, v7, 0x1

    .end local v7           #j:I
    .restart local v6       #j:I
    aget-byte v12, v1, v7

    and-int/lit16 v0, v12, 0xff

    .line 406
    .local v0, b:I
    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    const/high16 v12, -0x100

    shl-int/lit8 v13, v10, 0x10

    or-int/2addr v12, v13

    shl-int/lit8 v13, v3, 0x8

    or-int/2addr v12, v13

    or-int/2addr v12, v0

    aput v12, v11, v5

    move v7, v6

    .end local v6           #j:I
    .restart local v7       #j:I
    move v5, v4

    .end local v4           #i:I
    .restart local v5       #i:I
    goto :goto_1
.end method

.method protected readContents()V
    .locals 6

    .prologue
    .line 414
    const/4 v2, 0x0

    .line 415
    .local v2, done:Z
    :goto_0
    :sswitch_0
    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/wooboo/adlib_android/g;->err()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 452
    :cond_0
    return-void

    .line 416
    :cond_1
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/g;->read()I

    move-result v1

    .line 417
    .local v1, code:I
    sparse-switch v1, :sswitch_data_0

    .line 449
    const/4 v4, 0x1

    iput v4, p0, Lcom/wooboo/adlib_android/g;->status:I

    goto :goto_0

    .line 419
    :sswitch_1
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/g;->readImage()V

    goto :goto_0

    .line 422
    :sswitch_2
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/g;->read()I

    move-result v1

    .line 423
    sparse-switch v1, :sswitch_data_1

    .line 440
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/g;->skip()V

    goto :goto_0

    .line 425
    :sswitch_3
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/g;->readGraphicControlExt()V

    goto :goto_0

    .line 428
    :sswitch_4
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/g;->readBlock()I

    .line 429
    const-string v0, ""

    .line 430
    .local v0, app:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    const/16 v4, 0xb

    if-lt v3, v4, :cond_2

    .line 433
    const-string v4, "NETSCAPE2.0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 434
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/g;->readNetscapeExt()V

    goto :goto_0

    .line 431
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/wooboo/adlib_android/g;->block:[B

    aget-byte v5, v5, v3

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 430
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 436
    :cond_3
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/g;->skip()V

    goto :goto_0

    .line 444
    .end local v0           #app:Ljava/lang/String;
    .end local v3           #i:I
    :sswitch_5
    const/4 v2, 0x1

    .line 445
    goto :goto_0

    .line 417
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x21 -> :sswitch_2
        0x2c -> :sswitch_1
        0x3b -> :sswitch_5
    .end sparse-switch

    .line 423
    :sswitch_data_1
    .sparse-switch
        0xf9 -> :sswitch_3
        0xff -> :sswitch_4
    .end sparse-switch
.end method

.method protected readGraphicControlExt()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 455
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/g;->read()I

    .line 456
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/g;->read()I

    move-result v0

    .line 457
    .local v0, packed:I
    and-int/lit8 v1, v0, 0x1c

    shr-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/wooboo/adlib_android/g;->dispose:I

    .line 458
    iget v1, p0, Lcom/wooboo/adlib_android/g;->dispose:I

    if-nez v1, :cond_0

    .line 459
    iput v2, p0, Lcom/wooboo/adlib_android/g;->dispose:I

    .line 461
    :cond_0
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/wooboo/adlib_android/g;->transparency:Z

    .line 462
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/g;->readShort()I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/wooboo/adlib_android/g;->delay:I

    .line 463
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/g;->read()I

    move-result v1

    iput v1, p0, Lcom/wooboo/adlib_android/g;->transIndex:I

    .line 464
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/g;->read()I

    .line 465
    return-void

    .line 461
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected readHeader()V
    .locals 4

    .prologue
    .line 468
    const-string v1, ""

    .line 469
    .local v1, id:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x6

    if-lt v0, v2, :cond_1

    .line 472
    const-string v2, "GIF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 473
    const/4 v2, 0x1

    iput v2, p0, Lcom/wooboo/adlib_android/g;->status:I

    .line 481
    :cond_0
    :goto_1
    return-void

    .line 470
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/wooboo/adlib_android/g;->read()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 469
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 476
    :cond_2
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/g;->readLSD()V

    .line 477
    iget-boolean v2, p0, Lcom/wooboo/adlib_android/g;->gctFlag:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/wooboo/adlib_android/g;->err()Z

    move-result v2

    if-nez v2, :cond_0

    .line 478
    iget v2, p0, Lcom/wooboo/adlib_android/g;->gctSize:I

    invoke-virtual {p0, v2}, Lcom/wooboo/adlib_android/g;->readColorTable(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/wooboo/adlib_android/g;->gct:[I

    .line 479
    iget-object v2, p0, Lcom/wooboo/adlib_android/g;->gct:[I

    iget v3, p0, Lcom/wooboo/adlib_android/g;->bgIndex:I

    aget v2, v2, v3

    iput v2, p0, Lcom/wooboo/adlib_android/g;->bgColor:I

    goto :goto_1
.end method

.method protected readImage()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 484
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/g;->readShort()I

    move-result v2

    iput v2, p0, Lcom/wooboo/adlib_android/g;->ix:I

    .line 485
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/g;->readShort()I

    move-result v2

    iput v2, p0, Lcom/wooboo/adlib_android/g;->iy:I

    .line 486
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/g;->readShort()I

    move-result v2

    iput v2, p0, Lcom/wooboo/adlib_android/g;->iw:I

    .line 487
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/g;->readShort()I

    move-result v2

    iput v2, p0, Lcom/wooboo/adlib_android/g;->ih:I

    .line 488
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/g;->read()I

    move-result v0

    .line 489
    .local v0, packed:I
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_4

    move v2, v5

    :goto_0
    iput-boolean v2, p0, Lcom/wooboo/adlib_android/g;->lctFlag:Z

    .line 490
    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_5

    move v2, v5

    :goto_1
    iput-boolean v2, p0, Lcom/wooboo/adlib_android/g;->interlace:Z

    .line 493
    const/4 v2, 0x2

    and-int/lit8 v3, v0, 0x7

    shl-int/2addr v2, v3

    iput v2, p0, Lcom/wooboo/adlib_android/g;->lctSize:I

    .line 494
    iget-boolean v2, p0, Lcom/wooboo/adlib_android/g;->lctFlag:Z

    if-eqz v2, :cond_6

    .line 495
    iget v2, p0, Lcom/wooboo/adlib_android/g;->lctSize:I

    invoke-virtual {p0, v2}, Lcom/wooboo/adlib_android/g;->readColorTable(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/wooboo/adlib_android/g;->lct:[I

    .line 496
    iget-object v2, p0, Lcom/wooboo/adlib_android/g;->lct:[I

    iput-object v2, p0, Lcom/wooboo/adlib_android/g;->act:[I

    .line 503
    :cond_0
    :goto_2
    const/4 v1, 0x0

    .line 504
    .local v1, save:I
    iget-boolean v2, p0, Lcom/wooboo/adlib_android/g;->transparency:Z

    if-eqz v2, :cond_1

    .line 505
    iget-object v2, p0, Lcom/wooboo/adlib_android/g;->act:[I

    iget v3, p0, Lcom/wooboo/adlib_android/g;->transIndex:I

    aget v1, v2, v3

    .line 506
    iget-object v2, p0, Lcom/wooboo/adlib_android/g;->act:[I

    iget v3, p0, Lcom/wooboo/adlib_android/g;->transIndex:I

    aput v4, v2, v3

    .line 508
    :cond_1
    iget-object v2, p0, Lcom/wooboo/adlib_android/g;->act:[I

    if-nez v2, :cond_2

    .line 509
    iput v5, p0, Lcom/wooboo/adlib_android/g;->status:I

    .line 511
    :cond_2
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/g;->err()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 530
    :cond_3
    :goto_3
    return-void

    .end local v1           #save:I
    :cond_4
    move v2, v4

    .line 489
    goto :goto_0

    :cond_5
    move v2, v4

    .line 490
    goto :goto_1

    .line 498
    :cond_6
    iget-object v2, p0, Lcom/wooboo/adlib_android/g;->gct:[I

    iput-object v2, p0, Lcom/wooboo/adlib_android/g;->act:[I

    .line 499
    iget v2, p0, Lcom/wooboo/adlib_android/g;->bgIndex:I

    iget v3, p0, Lcom/wooboo/adlib_android/g;->transIndex:I

    if-ne v2, v3, :cond_0

    .line 500
    iput v4, p0, Lcom/wooboo/adlib_android/g;->bgColor:I

    goto :goto_2

    .line 514
    .restart local v1       #save:I
    :cond_7
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/g;->decodeImageData()V

    .line 515
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/g;->skip()V

    .line 516
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/g;->err()Z

    move-result v2

    if-nez v2, :cond_3

    .line 519
    iget v2, p0, Lcom/wooboo/adlib_android/g;->frameCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/wooboo/adlib_android/g;->frameCount:I

    .line 521
    iget v2, p0, Lcom/wooboo/adlib_android/g;->width:I

    iget v3, p0, Lcom/wooboo/adlib_android/g;->height:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/wooboo/adlib_android/g;->image:Landroid/graphics/Bitmap;

    .line 523
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/g;->setPixels()V

    .line 524
    iget-object v2, p0, Lcom/wooboo/adlib_android/g;->frames:Ljava/util/Vector;

    new-instance v3, Lcom/wooboo/adlib_android/g$GifFrame;

    iget-object v4, p0, Lcom/wooboo/adlib_android/g;->image:Landroid/graphics/Bitmap;

    iget v5, p0, Lcom/wooboo/adlib_android/g;->delay:I

    invoke-direct {v3, v4, v5}, Lcom/wooboo/adlib_android/g$GifFrame;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 526
    iget-boolean v2, p0, Lcom/wooboo/adlib_android/g;->transparency:Z

    if-eqz v2, :cond_8

    .line 527
    iget-object v2, p0, Lcom/wooboo/adlib_android/g;->act:[I

    iget v3, p0, Lcom/wooboo/adlib_android/g;->transIndex:I

    aput v1, v2, v3

    .line 529
    :cond_8
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/g;->resetFrame()V

    goto :goto_3
.end method

.method protected readLSD()V
    .locals 3

    .prologue
    .line 534
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/g;->readShort()I

    move-result v1

    iput v1, p0, Lcom/wooboo/adlib_android/g;->width:I

    .line 535
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/g;->readShort()I

    move-result v1

    iput v1, p0, Lcom/wooboo/adlib_android/g;->height:I

    .line 537
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/g;->read()I

    move-result v0

    .line 538
    .local v0, packed:I
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/wooboo/adlib_android/g;->gctFlag:Z

    .line 541
    const/4 v1, 0x2

    and-int/lit8 v2, v0, 0x7

    shl-int/2addr v1, v2

    iput v1, p0, Lcom/wooboo/adlib_android/g;->gctSize:I

    .line 542
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/g;->read()I

    move-result v1

    iput v1, p0, Lcom/wooboo/adlib_android/g;->bgIndex:I

    .line 543
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/g;->read()I

    move-result v1

    iput v1, p0, Lcom/wooboo/adlib_android/g;->pixelAspect:I

    .line 544
    return-void

    .line 538
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected readNetscapeExt()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 548
    :cond_0
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/g;->readBlock()I

    .line 549
    iget-object v2, p0, Lcom/wooboo/adlib_android/g;->block:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    if-ne v2, v4, :cond_1

    .line 551
    iget-object v2, p0, Lcom/wooboo/adlib_android/g;->block:[B

    aget-byte v2, v2, v4

    and-int/lit16 v0, v2, 0xff

    .line 552
    .local v0, b1:I
    iget-object v2, p0, Lcom/wooboo/adlib_android/g;->block:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v1, v2, 0xff

    .line 553
    .local v1, b2:I
    shl-int/lit8 v2, v1, 0x8

    or-int/2addr v2, v0

    iput v2, p0, Lcom/wooboo/adlib_android/g;->loopCount:I

    .line 555
    .end local v0           #b1:I
    .end local v1           #b2:I
    :cond_1
    iget v2, p0, Lcom/wooboo/adlib_android/g;->blockSize:I

    if-lez v2, :cond_2

    invoke-virtual {p0}, Lcom/wooboo/adlib_android/g;->err()Z

    move-result v2

    .line 547
    if-eqz v2, :cond_0

    .line 556
    :cond_2
    return-void
.end method

.method protected readShort()I
    .locals 2

    .prologue
    .line 560
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/g;->read()I

    move-result v0

    invoke-virtual {p0}, Lcom/wooboo/adlib_android/g;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method protected resetFrame()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 564
    iget v0, p0, Lcom/wooboo/adlib_android/g;->dispose:I

    iput v0, p0, Lcom/wooboo/adlib_android/g;->lastDispose:I

    .line 565
    iget v0, p0, Lcom/wooboo/adlib_android/g;->ix:I

    iput v0, p0, Lcom/wooboo/adlib_android/g;->lrx:I

    .line 566
    iget v0, p0, Lcom/wooboo/adlib_android/g;->iy:I

    iput v0, p0, Lcom/wooboo/adlib_android/g;->lry:I

    .line 567
    iget v0, p0, Lcom/wooboo/adlib_android/g;->iw:I

    iput v0, p0, Lcom/wooboo/adlib_android/g;->lrw:I

    .line 568
    iget v0, p0, Lcom/wooboo/adlib_android/g;->ih:I

    iput v0, p0, Lcom/wooboo/adlib_android/g;->lrh:I

    .line 569
    iget-object v0, p0, Lcom/wooboo/adlib_android/g;->image:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/wooboo/adlib_android/g;->lastImage:Landroid/graphics/Bitmap;

    .line 570
    iget v0, p0, Lcom/wooboo/adlib_android/g;->bgColor:I

    iput v0, p0, Lcom/wooboo/adlib_android/g;->lastBgColor:I

    .line 571
    iput v1, p0, Lcom/wooboo/adlib_android/g;->dispose:I

    .line 572
    iput-boolean v1, p0, Lcom/wooboo/adlib_android/g;->transparency:Z

    .line 573
    iput v1, p0, Lcom/wooboo/adlib_android/g;->delay:I

    .line 574
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wooboo/adlib_android/g;->lct:[I

    .line 575
    return-void
.end method

.method public setFrameindex(I)V
    .locals 2
    .parameter "frameindex"

    .prologue
    .line 47
    iput p1, p0, Lcom/wooboo/adlib_android/g;->frameindex:I

    .line 48
    iget-object v0, p0, Lcom/wooboo/adlib_android/g;->frames:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    .line 49
    const/4 p1, 0x0

    .line 51
    :cond_0
    return-void
.end method

.method protected setPixels()V
    .locals 25

    .prologue
    .line 114
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wooboo/adlib_android/g;->width:I

    move v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wooboo/adlib_android/g;->height:I

    move v3, v0

    mul-int/2addr v2, v3

    new-array v3, v2, [I

    .line 116
    .local v3, dest:[I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wooboo/adlib_android/g;->lastDispose:I

    move v2, v0

    if-lez v2, :cond_2

    .line 117
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wooboo/adlib_android/g;->lastDispose:I

    move v2, v0

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    .line 119
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wooboo/adlib_android/g;->frameCount:I

    move v2, v0

    const/4 v4, 0x2

    sub-int v19, v2, v4

    .line 120
    .local v19, n:I
    if-lez v19, :cond_3

    .line 121
    const/4 v2, 0x1

    sub-int v2, v19, v2

    move-object/from16 v0, p0

    move v1, v2

    invoke-virtual {v0, v1}, Lcom/wooboo/adlib_android/g;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wooboo/adlib_android/g;->lastImage:Landroid/graphics/Bitmap;

    .line 126
    .end local v19           #n:I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/g;->lastImage:Landroid/graphics/Bitmap;

    move-object v2, v0

    if-eqz v2, :cond_2

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/g;->lastImage:Landroid/graphics/Bitmap;

    move-object v2, v0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wooboo/adlib_android/g;->width:I

    move v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wooboo/adlib_android/g;->width:I

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wooboo/adlib_android/g;->height:I

    move v9, v0

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 129
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wooboo/adlib_android/g;->lastDispose:I

    move v2, v0

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    .line 131
    const/4 v10, 0x0

    .line 132
    .local v10, c:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wooboo/adlib_android/g;->transparency:Z

    move v2, v0

    if-nez v2, :cond_1

    .line 133
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wooboo/adlib_android/g;->lastBgColor:I

    move v10, v0

    .line 135
    :cond_1
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wooboo/adlib_android/g;->lrh:I

    move v2, v0

    if-lt v13, v2, :cond_4

    .line 147
    .end local v10           #c:I
    .end local v13           #i:I
    :cond_2
    const/16 v22, 0x1

    .line 148
    .local v22, pass:I
    const/16 v15, 0x8

    .line 149
    .local v15, inc:I
    const/4 v14, 0x0

    .line 150
    .local v14, iline:I
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wooboo/adlib_android/g;->ih:I

    move v2, v0

    if-lt v13, v2, :cond_6

    .line 191
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wooboo/adlib_android/g;->width:I

    move v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wooboo/adlib_android/g;->height:I

    move v4, v0

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wooboo/adlib_android/g;->image:Landroid/graphics/Bitmap;

    .line 192
    return-void

    .line 123
    .end local v13           #i:I
    .end local v14           #iline:I
    .end local v15           #inc:I
    .end local v22           #pass:I
    .restart local v19       #n:I
    :cond_3
    const/4 v2, 0x0

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wooboo/adlib_android/g;->lastImage:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 136
    .end local v19           #n:I
    .restart local v10       #c:I
    .restart local v13       #i:I
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wooboo/adlib_android/g;->lry:I

    move v2, v0

    add-int/2addr v2, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wooboo/adlib_android/g;->width:I

    move v4, v0

    mul-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wooboo/adlib_android/g;->lrx:I

    move v4, v0

    add-int v20, v2, v4

    .line 137
    .local v20, n1:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wooboo/adlib_android/g;->lrw:I

    move v2, v0

    add-int v21, v20, v2

    .line 138
    .local v21, n2:I
    move/from16 v17, v20

    .local v17, k:I
    :goto_3
    move/from16 v0, v17

    move/from16 v1, v21

    if-lt v0, v1, :cond_5

    .line 135
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 139
    :cond_5
    aput v10, v3, v17

    .line 138
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 151
    .end local v10           #c:I
    .end local v17           #k:I
    .end local v20           #n1:I
    .end local v21           #n2:I
    .restart local v14       #iline:I
    .restart local v15       #inc:I
    .restart local v22       #pass:I
    :cond_6
    move/from16 v18, v13

    .line 152
    .local v18, line:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wooboo/adlib_android/g;->interlace:Z

    move v2, v0

    if-eqz v2, :cond_8

    .line 153
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wooboo/adlib_android/g;->ih:I

    move v2, v0

    if-lt v14, v2, :cond_7

    .line 154
    add-int/lit8 v22, v22, 0x1

    .line 155
    packed-switch v22, :pswitch_data_0

    .line 168
    :cond_7
    :goto_4
    move/from16 v18, v14

    .line 169
    add-int/2addr v14, v15

    .line 171
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wooboo/adlib_android/g;->iy:I

    move v2, v0

    add-int v18, v18, v2

    .line 172
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wooboo/adlib_android/g;->height:I

    move v2, v0

    move/from16 v0, v18

    move v1, v2

    if-ge v0, v1, :cond_a

    .line 173
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wooboo/adlib_android/g;->width:I

    move v2, v0

    mul-int v17, v18, v2

    .line 174
    .restart local v17       #k:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wooboo/adlib_android/g;->ix:I

    move v2, v0

    add-int v12, v17, v2

    .line 175
    .local v12, dx:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wooboo/adlib_android/g;->iw:I

    move v2, v0

    add-int v11, v12, v2

    .line 176
    .local v11, dlim:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wooboo/adlib_android/g;->width:I

    move v2, v0

    add-int v2, v2, v17

    if-ge v2, v11, :cond_9

    .line 177
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wooboo/adlib_android/g;->width:I

    move v2, v0

    add-int v11, v17, v2

    .line 179
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wooboo/adlib_android/g;->iw:I

    move v2, v0

    mul-int v23, v13, v2

    .local v23, sx:I
    move/from16 v24, v23

    .line 180
    .end local v23           #sx:I
    .local v24, sx:I
    :goto_5
    if-lt v12, v11, :cond_b

    .line 150
    .end local v11           #dlim:I
    .end local v12           #dx:I
    .end local v17           #k:I
    .end local v24           #sx:I
    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 157
    :pswitch_0
    const/4 v14, 0x4

    .line 158
    goto :goto_4

    .line 160
    :pswitch_1
    const/4 v14, 0x2

    .line 161
    const/4 v15, 0x4

    .line 162
    goto :goto_4

    .line 164
    :pswitch_2
    const/4 v14, 0x1

    .line 165
    const/4 v15, 0x2

    goto :goto_4

    .line 182
    .restart local v11       #dlim:I
    .restart local v12       #dx:I
    .restart local v17       #k:I
    .restart local v24       #sx:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/g;->pixels:[B

    move-object v2, v0

    add-int/lit8 v23, v24, 0x1

    .end local v24           #sx:I
    .restart local v23       #sx:I
    aget-byte v2, v2, v24

    move v0, v2

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    .line 183
    .local v16, index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/g;->act:[I

    move-object v2, v0

    aget v10, v2, v16

    .line 184
    .restart local v10       #c:I
    if-eqz v10, :cond_c

    .line 185
    aput v10, v3, v12

    .line 187
    :cond_c
    add-int/lit8 v12, v12, 0x1

    move/from16 v24, v23

    .end local v23           #sx:I
    .restart local v24       #sx:I
    goto :goto_5

    .line 155
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected skip()V
    .locals 1

    .prologue
    .line 582
    :cond_0
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/g;->readBlock()I

    .line 583
    iget v0, p0, Lcom/wooboo/adlib_android/g;->blockSize:I

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/wooboo/adlib_android/g;->err()Z

    move-result v0

    .line 581
    if-eqz v0, :cond_0

    .line 584
    :cond_1
    return-void
.end method
