.class public Lorg/mozilla/javascript/UintMap;
.super Ljava/lang/Object;
.source "UintMap.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final A:I = -0x61c88647

.field private static final DELETED:I = -0x2

.field private static final EMPTY:I = -0x1

.field private static final check:Z = false

.field static final serialVersionUID:J = 0x3ae1178bbc3ee17cL


# instance fields
.field private transient ivaluesShift:I

.field private keyCount:I

.field private transient keys:[I

.field private transient occupiedCount:I

.field private power:I

.field private transient values:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/UintMap;-><init>(I)V

    .line 65
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .parameter "initialCapacity"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    if-gez p1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 70
    :cond_0
    mul-int/lit8 v2, p1, 0x4

    div-int/lit8 v1, v2, 0x3

    .line 72
    .local v1, minimalCapacity:I
    const/4 v0, 0x2

    .local v0, i:I
    :goto_0
    const/4 v2, 0x1

    shl-int/2addr v2, v0

    if-ge v2, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_1
    iput v0, p0, Lorg/mozilla/javascript/UintMap;->power:I

    .line 75
    return-void
.end method

.method private ensureIndex(IZ)I
    .locals 13
    .parameter "key"
    .parameter "intType"

    .prologue
    const/4 v12, -0x1

    const/4 v11, -0x2

    const/4 v10, 0x1

    .line 322
    const/4 v3, -0x1

    .line 323
    .local v3, index:I
    const/4 v1, -0x1

    .line 324
    .local v1, firstDeleted:I
    iget-object v4, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    .line 325
    .local v4, keys:[I
    if-eqz v4, :cond_5

    .line 326
    const v8, -0x61c88647

    mul-int v2, p1, v8

    .line 327
    .local v2, fraction:I
    const/16 v8, 0x20

    iget v9, p0, Lorg/mozilla/javascript/UintMap;->power:I

    sub-int/2addr v8, v9

    ushr-int v3, v2, v8

    .line 328
    aget v0, v4, v3

    .line 329
    .local v0, entry:I
    if-ne v0, p1, :cond_0

    move v8, v3

    .line 367
    .end local v0           #entry:I
    .end local v2           #fraction:I
    :goto_0
    return v8

    .line 330
    .restart local v0       #entry:I
    .restart local v2       #fraction:I
    :cond_0
    if-eq v0, v12, :cond_5

    .line 331
    if-ne v0, v11, :cond_1

    move v1, v3

    .line 333
    :cond_1
    iget v8, p0, Lorg/mozilla/javascript/UintMap;->power:I

    shl-int v8, v10, v8

    sub-int v5, v8, v10

    .line 334
    .local v5, mask:I
    iget v8, p0, Lorg/mozilla/javascript/UintMap;->power:I

    invoke-static {v2, v5, v8}, Lorg/mozilla/javascript/UintMap;->tableLookupStep(III)I

    move-result v7

    .line 335
    .local v7, step:I
    const/4 v6, 0x0

    .line 341
    .local v6, n:I
    :cond_2
    add-int v8, v3, v7

    and-int v3, v8, v5

    .line 342
    aget v0, v4, v3

    .line 343
    if-ne v0, p1, :cond_3

    move v8, v3

    goto :goto_0

    .line 344
    :cond_3
    if-ne v0, v11, :cond_4

    if-gez v1, :cond_4

    .line 345
    move v1, v3

    .line 347
    :cond_4
    if-ne v0, v12, :cond_2

    .line 353
    .end local v0           #entry:I
    .end local v2           #fraction:I
    .end local v5           #mask:I
    .end local v6           #n:I
    .end local v7           #step:I
    :cond_5
    if-ltz v1, :cond_6

    .line 354
    move v3, v1

    .line 365
    :goto_1
    aput p1, v4, v3

    .line 366
    iget v8, p0, Lorg/mozilla/javascript/UintMap;->keyCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lorg/mozilla/javascript/UintMap;->keyCount:I

    move v8, v3

    .line 367
    goto :goto_0

    .line 358
    :cond_6
    if-eqz v4, :cond_7

    iget v8, p0, Lorg/mozilla/javascript/UintMap;->occupiedCount:I

    mul-int/lit8 v8, v8, 0x4

    iget v9, p0, Lorg/mozilla/javascript/UintMap;->power:I

    shl-int v9, v10, v9

    mul-int/lit8 v9, v9, 0x3

    if-lt v8, v9, :cond_8

    .line 360
    :cond_7
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/UintMap;->rehashTable(Z)V

    .line 361
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/UintMap;->insertNewKey(I)I

    move-result v8

    goto :goto_0

    .line 363
    :cond_8
    iget v8, p0, Lorg/mozilla/javascript/UintMap;->occupiedCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lorg/mozilla/javascript/UintMap;->occupiedCount:I

    goto :goto_1
.end method

.method private findIndex(I)I
    .locals 11
    .parameter "key"

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    .line 229
    iget-object v3, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    .line 230
    .local v3, keys:[I
    if-eqz v3, :cond_3

    .line 231
    const v7, -0x61c88647

    mul-int v1, p1, v7

    .line 232
    .local v1, fraction:I
    const/16 v7, 0x20

    iget v8, p0, Lorg/mozilla/javascript/UintMap;->power:I

    sub-int/2addr v7, v8

    ushr-int v2, v1, v7

    .line 233
    .local v2, index:I
    aget v0, v3, v2

    .line 234
    .local v0, entry:I
    if-ne v0, p1, :cond_0

    move v7, v2

    .line 251
    .end local v0           #entry:I
    .end local v1           #fraction:I
    .end local v2           #index:I
    :goto_0
    return v7

    .line 235
    .restart local v0       #entry:I
    .restart local v1       #fraction:I
    .restart local v2       #index:I
    :cond_0
    if-eq v0, v9, :cond_3

    .line 237
    iget v7, p0, Lorg/mozilla/javascript/UintMap;->power:I

    shl-int v7, v10, v7

    sub-int v4, v7, v10

    .line 238
    .local v4, mask:I
    iget v7, p0, Lorg/mozilla/javascript/UintMap;->power:I

    invoke-static {v1, v4, v7}, Lorg/mozilla/javascript/UintMap;->tableLookupStep(III)I

    move-result v6

    .line 239
    .local v6, step:I
    const/4 v5, 0x0

    .line 245
    .local v5, n:I
    :cond_1
    add-int v7, v2, v6

    and-int v2, v7, v4

    .line 246
    aget v0, v3, v2

    .line 247
    if-ne v0, p1, :cond_2

    move v7, v2

    goto :goto_0

    .line 248
    :cond_2
    if-ne v0, v9, :cond_1

    .end local v0           #entry:I
    .end local v1           #fraction:I
    .end local v2           #index:I
    .end local v4           #mask:I
    .end local v5           #n:I
    .end local v6           #step:I
    :cond_3
    move v7, v9

    .line 251
    goto :goto_0
.end method

.method private insertNewKey(I)I
    .locals 10
    .parameter "key"

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 259
    iget-object v3, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    .line 260
    .local v3, keys:[I
    const v6, -0x61c88647

    mul-int v1, p1, v6

    .line 261
    .local v1, fraction:I
    const/16 v6, 0x20

    iget v7, p0, Lorg/mozilla/javascript/UintMap;->power:I

    sub-int/2addr v6, v7

    ushr-int v2, v1, v6

    .line 262
    .local v2, index:I
    aget v6, v3, v2

    if-eq v6, v8, :cond_1

    .line 263
    iget v6, p0, Lorg/mozilla/javascript/UintMap;->power:I

    shl-int v6, v9, v6

    sub-int v4, v6, v9

    .line 264
    .local v4, mask:I
    iget v6, p0, Lorg/mozilla/javascript/UintMap;->power:I

    invoke-static {v1, v4, v6}, Lorg/mozilla/javascript/UintMap;->tableLookupStep(III)I

    move-result v5

    .line 265
    .local v5, step:I
    move v0, v2

    .line 268
    .local v0, firstIndex:I
    :cond_0
    add-int v6, v2, v5

    and-int v2, v6, v4

    .line 270
    aget v6, v3, v2

    if-ne v6, v8, :cond_0

    .line 272
    .end local v0           #firstIndex:I
    .end local v4           #mask:I
    .end local v5           #step:I
    :cond_1
    aput p1, v3, v2

    .line 273
    iget v6, p0, Lorg/mozilla/javascript/UintMap;->occupiedCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/mozilla/javascript/UintMap;->occupiedCount:I

    .line 274
    iget v6, p0, Lorg/mozilla/javascript/UintMap;->keyCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/mozilla/javascript/UintMap;->keyCount:I

    .line 275
    return v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 10
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 401
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 403
    iget v7, p0, Lorg/mozilla/javascript/UintMap;->keyCount:I

    .line 404
    .local v7, writtenKeyCount:I
    if-eqz v7, :cond_5

    .line 405
    const/4 v8, 0x0

    iput v8, p0, Lorg/mozilla/javascript/UintMap;->keyCount:I

    .line 406
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v1

    .line 407
    .local v1, hasIntValues:Z
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v2

    .line 409
    .local v2, hasObjectValues:Z
    const/4 v8, 0x1

    iget v9, p0, Lorg/mozilla/javascript/UintMap;->power:I

    shl-int v0, v8, v9

    .line 410
    .local v0, N:I
    if-eqz v1, :cond_0

    .line 411
    mul-int/lit8 v8, v0, 0x2

    new-array v8, v8, [I

    iput-object v8, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    .line 412
    iput v0, p0, Lorg/mozilla/javascript/UintMap;->ivaluesShift:I

    .line 416
    :goto_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-eq v3, v0, :cond_1

    .line 417
    iget-object v8, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    const/4 v9, -0x1

    aput v9, v8, v3

    .line 416
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 414
    .end local v3           #i:I
    :cond_0
    new-array v8, v0, [I

    iput-object v8, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    goto :goto_0

    .line 419
    .restart local v3       #i:I
    :cond_1
    if-eqz v2, :cond_2

    .line 420
    new-array v8, v0, [Ljava/lang/Object;

    iput-object v8, p0, Lorg/mozilla/javascript/UintMap;->values:[Ljava/lang/Object;

    .line 422
    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-eq v3, v7, :cond_5

    .line 423
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v6

    .line 424
    .local v6, key:I
    invoke-direct {p0, v6}, Lorg/mozilla/javascript/UintMap;->insertNewKey(I)I

    move-result v4

    .line 425
    .local v4, index:I
    if-eqz v1, :cond_3

    .line 426
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v5

    .line 427
    .local v5, ivalue:I
    iget-object v8, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    iget v9, p0, Lorg/mozilla/javascript/UintMap;->ivaluesShift:I

    add-int/2addr v9, v4

    aput v5, v8, v9

    .line 429
    .end local v5           #ivalue:I
    :cond_3
    if-eqz v2, :cond_4

    .line 430
    iget-object v8, p0, Lorg/mozilla/javascript/UintMap;->values:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v8, v4

    .line 422
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 434
    .end local v0           #N:I
    .end local v1           #hasIntValues:Z
    .end local v2           #hasObjectValues:Z
    .end local v3           #i:I
    .end local v4           #index:I
    .end local v6           #key:I
    :cond_5
    return-void
.end method

.method private rehashTable(Z)V
    .locals 13
    .parameter "ensureIntSpace"

    .prologue
    const/4 v11, 0x0

    const/4 v12, -0x1

    .line 279
    iget-object v9, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    if-eqz v9, :cond_0

    .line 281
    iget v9, p0, Lorg/mozilla/javascript/UintMap;->keyCount:I

    mul-int/lit8 v9, v9, 0x2

    iget v10, p0, Lorg/mozilla/javascript/UintMap;->occupiedCount:I

    if-lt v9, v10, :cond_0

    .line 283
    iget v9, p0, Lorg/mozilla/javascript/UintMap;->power:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/mozilla/javascript/UintMap;->power:I

    .line 286
    :cond_0
    const/4 v9, 0x1

    iget v10, p0, Lorg/mozilla/javascript/UintMap;->power:I

    shl-int v0, v9, v10

    .line 287
    .local v0, N:I
    iget-object v4, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    .line 288
    .local v4, old:[I
    iget v6, p0, Lorg/mozilla/javascript/UintMap;->ivaluesShift:I

    .line 289
    .local v6, oldShift:I
    if-nez v6, :cond_1

    if-nez p1, :cond_1

    .line 290
    new-array v9, v0, [I

    iput-object v9, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    .line 295
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-eq v1, v0, :cond_2

    iget-object v9, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    aput v12, v9, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 293
    .end local v1           #i:I
    :cond_1
    iput v0, p0, Lorg/mozilla/javascript/UintMap;->ivaluesShift:I

    mul-int/lit8 v9, v0, 0x2

    new-array v9, v9, [I

    iput-object v9, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    goto :goto_0

    .line 297
    .restart local v1       #i:I
    :cond_2
    iget-object v7, p0, Lorg/mozilla/javascript/UintMap;->values:[Ljava/lang/Object;

    .line 298
    .local v7, oldValues:[Ljava/lang/Object;
    if-eqz v7, :cond_3

    new-array v9, v0, [Ljava/lang/Object;

    iput-object v9, p0, Lorg/mozilla/javascript/UintMap;->values:[Ljava/lang/Object;

    .line 300
    :cond_3
    iget v5, p0, Lorg/mozilla/javascript/UintMap;->keyCount:I

    .line 301
    .local v5, oldCount:I
    iput v11, p0, Lorg/mozilla/javascript/UintMap;->occupiedCount:I

    .line 302
    if-eqz v5, :cond_7

    .line 303
    iput v11, p0, Lorg/mozilla/javascript/UintMap;->keyCount:I

    .line 304
    const/4 v1, 0x0

    move v8, v5

    .local v8, remaining:I
    :goto_2
    if-eqz v8, :cond_7

    .line 305
    aget v3, v4, v1

    .line 306
    .local v3, key:I
    if-eq v3, v12, :cond_6

    const/4 v9, -0x2

    if-eq v3, v9, :cond_6

    .line 307
    invoke-direct {p0, v3}, Lorg/mozilla/javascript/UintMap;->insertNewKey(I)I

    move-result v2

    .line 308
    .local v2, index:I
    if-eqz v7, :cond_4

    .line 309
    iget-object v9, p0, Lorg/mozilla/javascript/UintMap;->values:[Ljava/lang/Object;

    aget-object v10, v7, v1

    aput-object v10, v9, v2

    .line 311
    :cond_4
    if-eqz v6, :cond_5

    .line 312
    iget-object v9, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    iget v10, p0, Lorg/mozilla/javascript/UintMap;->ivaluesShift:I

    add-int/2addr v10, v2

    add-int v11, v6, v1

    aget v11, v4, v11

    aput v11, v9, v10

    .line 314
    :cond_5
    add-int/lit8 v8, v8, -0x1

    .line 304
    .end local v2           #index:I
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 318
    .end local v3           #key:I
    .end local v8           #remaining:I
    :cond_7
    return-void
.end method

.method private static tableLookupStep(III)I
    .locals 3
    .parameter "fraction"
    .parameter "mask"
    .parameter "power"

    .prologue
    .line 219
    const/16 v1, 0x20

    mul-int/lit8 v2, p2, 0x2

    sub-int v0, v1, v2

    .line 220
    .local v0, shift:I
    if-ltz v0, :cond_0

    .line 221
    ushr-int v1, p0, v0

    and-int/2addr v1, p1

    or-int/lit8 v1, v1, 0x1

    .line 224
    :goto_0
    return v1

    :cond_0
    neg-int v1, v0

    ushr-int v1, p1, v1

    and-int/2addr v1, p0

    or-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 8
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 373
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 375
    iget v0, p0, Lorg/mozilla/javascript/UintMap;->keyCount:I

    .line 376
    .local v0, count:I
    if-eqz v0, :cond_4

    .line 377
    iget v5, p0, Lorg/mozilla/javascript/UintMap;->ivaluesShift:I

    if-eqz v5, :cond_2

    move v1, v7

    .line 378
    .local v1, hasIntValues:Z
    :goto_0
    iget-object v5, p0, Lorg/mozilla/javascript/UintMap;->values:[Ljava/lang/Object;

    if-eqz v5, :cond_3

    move v2, v7

    .line 379
    .local v2, hasObjectValues:Z
    :goto_1
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 380
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 382
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-eqz v0, :cond_4

    .line 383
    iget-object v5, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    aget v4, v5, v3

    .line 384
    .local v4, key:I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    const/4 v5, -0x2

    if-eq v4, v5, :cond_1

    .line 385
    add-int/lit8 v0, v0, -0x1

    .line 386
    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 387
    if-eqz v1, :cond_0

    .line 388
    iget-object v5, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    iget v6, p0, Lorg/mozilla/javascript/UintMap;->ivaluesShift:I

    add-int/2addr v6, v3

    aget v5, v5, v6

    invoke-virtual {p1, v5}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 390
    :cond_0
    if-eqz v2, :cond_1

    .line 391
    iget-object v5, p0, Lorg/mozilla/javascript/UintMap;->values:[Ljava/lang/Object;

    aget-object v5, v5, v3

    invoke-virtual {p1, v5}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 382
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v1           #hasIntValues:Z
    .end local v2           #hasObjectValues:Z
    .end local v3           #i:I
    .end local v4           #key:I
    :cond_2
    move v1, v6

    .line 377
    goto :goto_0

    .restart local v1       #hasIntValues:Z
    :cond_3
    move v2, v6

    .line 378
    goto :goto_1

    .line 396
    .end local v1           #hasIntValues:Z
    :cond_4
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 188
    const/4 v2, 0x1

    iget v3, p0, Lorg/mozilla/javascript/UintMap;->power:I

    shl-int v0, v2, v3

    .line 189
    .local v0, N:I
    iget-object v2, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    if-eqz v2, :cond_1

    .line 190
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-eq v1, v0, :cond_0

    .line 191
    iget-object v2, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    const/4 v3, -0x1

    aput v3, v2, v1

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 193
    :cond_0
    iget-object v2, p0, Lorg/mozilla/javascript/UintMap;->values:[Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 194
    const/4 v1, 0x0

    :goto_1
    if-eq v1, v0, :cond_1

    .line 195
    iget-object v2, p0, Lorg/mozilla/javascript/UintMap;->values:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 194
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 199
    .end local v1           #i:I
    :cond_1
    iput v4, p0, Lorg/mozilla/javascript/UintMap;->ivaluesShift:I

    .line 200
    iput v4, p0, Lorg/mozilla/javascript/UintMap;->keyCount:I

    .line 201
    iput v4, p0, Lorg/mozilla/javascript/UintMap;->occupiedCount:I

    .line 202
    return-void
.end method

.method public getExistingInt(I)I
    .locals 3
    .parameter "key"

    .prologue
    const/4 v2, 0x0

    .line 128
    if-gez p1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 129
    :cond_0
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/UintMap;->findIndex(I)I

    move-result v0

    .line 130
    .local v0, index:I
    if-ltz v0, :cond_2

    .line 131
    iget v1, p0, Lorg/mozilla/javascript/UintMap;->ivaluesShift:I

    if-eqz v1, :cond_1

    .line 132
    iget-object v1, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    iget v2, p0, Lorg/mozilla/javascript/UintMap;->ivaluesShift:I

    add-int/2addr v2, v0

    aget v1, v1, v2

    .line 138
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 134
    goto :goto_0

    .line 137
    :cond_2
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move v1, v2

    .line 138
    goto :goto_0
.end method

.method public getInt(II)I
    .locals 3
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 110
    if-gez p1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 111
    :cond_0
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/UintMap;->findIndex(I)I

    move-result v0

    .line 112
    .local v0, index:I
    if-ltz v0, :cond_2

    .line 113
    iget v1, p0, Lorg/mozilla/javascript/UintMap;->ivaluesShift:I

    if-eqz v1, :cond_1

    .line 114
    iget-object v1, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    iget v2, p0, Lorg/mozilla/javascript/UintMap;->ivaluesShift:I

    add-int/2addr v2, v0

    aget v1, v1, v2

    .line 118
    :goto_0
    return v1

    .line 116
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move v1, p2

    .line 118
    goto :goto_0
.end method

.method public getKeys()[I
    .locals 6

    .prologue
    .line 206
    iget-object v2, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    .line 207
    .local v2, keys:[I
    iget v3, p0, Lorg/mozilla/javascript/UintMap;->keyCount:I

    .line 208
    .local v3, n:I
    new-array v4, v3, [I

    .line 209
    .local v4, result:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-eqz v3, :cond_1

    .line 210
    aget v0, v2, v1

    .line 211
    .local v0, entry:I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_0

    const/4 v5, -0x2

    if-eq v0, v5, :cond_0

    .line 212
    add-int/lit8 v3, v3, -0x1

    aput v0, v4, v3

    .line 209
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 215
    .end local v0           #entry:I
    :cond_1
    return-object v4
.end method

.method public getObject(I)Ljava/lang/Object;
    .locals 2
    .parameter "key"

    .prologue
    .line 95
    if-gez p1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 96
    :cond_0
    iget-object v1, p0, Lorg/mozilla/javascript/UintMap;->values:[Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 97
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/UintMap;->findIndex(I)I

    move-result v0

    .line 98
    .local v0, index:I
    if-ltz v0, :cond_1

    .line 99
    iget-object v1, p0, Lorg/mozilla/javascript/UintMap;->values:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 102
    .end local v0           #index:I
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public has(I)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 86
    if-gez p1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 87
    :cond_0
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/UintMap;->findIndex(I)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lorg/mozilla/javascript/UintMap;->keyCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public put(II)V
    .locals 6
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 159
    if-gez p1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 160
    :cond_0
    invoke-direct {p0, p1, v4}, Lorg/mozilla/javascript/UintMap;->ensureIndex(IZ)I

    move-result v1

    .line 161
    .local v1, index:I
    iget v3, p0, Lorg/mozilla/javascript/UintMap;->ivaluesShift:I

    if-nez v3, :cond_2

    .line 162
    iget v3, p0, Lorg/mozilla/javascript/UintMap;->power:I

    shl-int v0, v4, v3

    .line 164
    .local v0, N:I
    iget-object v3, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    array-length v3, v3

    mul-int/lit8 v4, v0, 0x2

    if-eq v3, v4, :cond_1

    .line 165
    mul-int/lit8 v3, v0, 0x2

    new-array v2, v3, [I

    .line 166
    .local v2, tmp:[I
    iget-object v3, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    invoke-static {v3, v5, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    iput-object v2, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    .line 169
    .end local v2           #tmp:[I
    :cond_1
    iput v0, p0, Lorg/mozilla/javascript/UintMap;->ivaluesShift:I

    .line 171
    .end local v0           #N:I
    :cond_2
    iget-object v3, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    iget v4, p0, Lorg/mozilla/javascript/UintMap;->ivaluesShift:I

    add-int/2addr v4, v1

    aput p2, v3, v4

    .line 172
    return-void
.end method

.method public put(ILjava/lang/Object;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 146
    if-gez p1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 147
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lorg/mozilla/javascript/UintMap;->ensureIndex(IZ)I

    move-result v0

    .line 148
    .local v0, index:I
    iget-object v1, p0, Lorg/mozilla/javascript/UintMap;->values:[Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 149
    const/4 v1, 0x1

    iget v2, p0, Lorg/mozilla/javascript/UintMap;->power:I

    shl-int/2addr v1, v2

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lorg/mozilla/javascript/UintMap;->values:[Ljava/lang/Object;

    .line 151
    :cond_1
    iget-object v1, p0, Lorg/mozilla/javascript/UintMap;->values:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 152
    return-void
.end method

.method public remove(I)V
    .locals 4
    .parameter "key"

    .prologue
    .line 175
    if-gez p1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 176
    :cond_0
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/UintMap;->findIndex(I)I

    move-result v0

    .line 177
    .local v0, index:I
    if-ltz v0, :cond_2

    .line 178
    iget-object v1, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    const/4 v2, -0x2

    aput v2, v1, v0

    .line 179
    iget v1, p0, Lorg/mozilla/javascript/UintMap;->keyCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/mozilla/javascript/UintMap;->keyCount:I

    .line 182
    iget-object v1, p0, Lorg/mozilla/javascript/UintMap;->values:[Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/mozilla/javascript/UintMap;->values:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 183
    :cond_1
    iget v1, p0, Lorg/mozilla/javascript/UintMap;->ivaluesShift:I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    iget v2, p0, Lorg/mozilla/javascript/UintMap;->ivaluesShift:I

    add-int/2addr v2, v0

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 185
    :cond_2
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lorg/mozilla/javascript/UintMap;->keyCount:I

    return v0
.end method
