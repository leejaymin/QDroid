.class public Lorg/mozilla/javascript/ObjToIntMap;
.super Ljava/lang/Object;
.source "ObjToIntMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/ObjToIntMap$Iterator;
    }
.end annotation


# static fields
.field private static final A:I = -0x61c88647

.field private static final DELETED:Ljava/lang/Object; = null

.field private static final check:Z = false

.field static final serialVersionUID:J = -0x1567117278d454baL


# instance fields
.field private keyCount:I

.field private transient keys:[Ljava/lang/Object;

.field private transient occupiedCount:I

.field private power:I

.field private transient values:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 466
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/mozilla/javascript/ObjToIntMap;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/ObjToIntMap;-><init>(I)V

    .line 126
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .parameter "keyCountHint"

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    if-gez p1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 131
    :cond_0
    mul-int/lit8 v2, p1, 0x4

    div-int/lit8 v1, v2, 0x3

    .line 133
    .local v1, minimalCapacity:I
    const/4 v0, 0x2

    .local v0, i:I
    :goto_0
    const/4 v2, 0x1

    shl-int/2addr v2, v0

    if-ge v2, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    :cond_1
    iput v0, p0, Lorg/mozilla/javascript/ObjToIntMap;->power:I

    .line 136
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lorg/mozilla/javascript/ObjToIntMap;->DELETED:Ljava/lang/Object;

    return-object v0
.end method

.method private ensureIndex(Ljava/lang/Object;)I
    .locals 12
    .parameter "key"

    .prologue
    const/4 v11, 0x1

    .line 362
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 363
    .local v3, hash:I
    const/4 v4, -0x1

    .line 364
    .local v4, index:I
    const/4 v1, -0x1

    .line 365
    .local v1, firstDeleted:I
    iget-object v9, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    if-eqz v9, :cond_4

    .line 366
    const v9, -0x61c88647

    mul-int v2, v3, v9

    .line 367
    .local v2, fraction:I
    const/16 v9, 0x20

    iget v10, p0, Lorg/mozilla/javascript/ObjToIntMap;->power:I

    sub-int/2addr v9, v10

    ushr-int v4, v2, v9

    .line 368
    iget-object v9, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    aget-object v8, v9, v4

    .line 369
    .local v8, test:Ljava/lang/Object;
    if-eqz v8, :cond_4

    .line 370
    iget v9, p0, Lorg/mozilla/javascript/ObjToIntMap;->power:I

    shl-int v0, v11, v9

    .line 371
    .local v0, N:I
    if-eq v8, p1, :cond_0

    iget-object v9, p0, Lorg/mozilla/javascript/ObjToIntMap;->values:[I

    add-int v10, v0, v4

    aget v9, v9, v10

    if-ne v9, v3, :cond_1

    invoke-virtual {v8, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    move v9, v4

    .line 423
    .end local v0           #N:I
    .end local v2           #fraction:I
    .end local v8           #test:Ljava/lang/Object;
    :goto_0
    return v9

    .line 376
    .restart local v0       #N:I
    .restart local v2       #fraction:I
    .restart local v8       #test:Ljava/lang/Object;
    :cond_1
    sget-object v9, Lorg/mozilla/javascript/ObjToIntMap;->DELETED:Ljava/lang/Object;

    if-ne v8, v9, :cond_2

    .line 377
    move v1, v4

    .line 381
    :cond_2
    sub-int v5, v0, v11

    .line 382
    .local v5, mask:I
    iget v9, p0, Lorg/mozilla/javascript/ObjToIntMap;->power:I

    invoke-static {v2, v5, v9}, Lorg/mozilla/javascript/ObjToIntMap;->tableLookupStep(III)I

    move-result v7

    .line 383
    .local v7, step:I
    const/4 v6, 0x0

    .line 389
    .local v6, n:I
    :cond_3
    :goto_1
    add-int v9, v4, v7

    and-int v4, v9, v5

    .line 390
    iget-object v9, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    aget-object v8, v9, v4

    .line 391
    if-nez v8, :cond_5

    .line 408
    .end local v0           #N:I
    .end local v2           #fraction:I
    .end local v5           #mask:I
    .end local v6           #n:I
    .end local v7           #step:I
    .end local v8           #test:Ljava/lang/Object;
    :cond_4
    if-ltz v1, :cond_8

    .line 409
    move v4, v1

    .line 420
    :goto_2
    iget-object v9, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    aput-object p1, v9, v4

    .line 421
    iget-object v9, p0, Lorg/mozilla/javascript/ObjToIntMap;->values:[I

    iget v10, p0, Lorg/mozilla/javascript/ObjToIntMap;->power:I

    shl-int v10, v11, v10

    add-int/2addr v10, v4

    aput v3, v9, v10

    .line 422
    iget v9, p0, Lorg/mozilla/javascript/ObjToIntMap;->keyCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/mozilla/javascript/ObjToIntMap;->keyCount:I

    move v9, v4

    .line 423
    goto :goto_0

    .line 394
    .restart local v0       #N:I
    .restart local v2       #fraction:I
    .restart local v5       #mask:I
    .restart local v6       #n:I
    .restart local v7       #step:I
    .restart local v8       #test:Ljava/lang/Object;
    :cond_5
    if-eq v8, p1, :cond_6

    iget-object v9, p0, Lorg/mozilla/javascript/ObjToIntMap;->values:[I

    add-int v10, v0, v4

    aget v9, v9, v10

    if-ne v9, v3, :cond_7

    invoke-virtual {v8, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    :cond_6
    move v9, v4

    .line 397
    goto :goto_0

    .line 399
    :cond_7
    sget-object v9, Lorg/mozilla/javascript/ObjToIntMap;->DELETED:Ljava/lang/Object;

    if-ne v8, v9, :cond_3

    if-gez v1, :cond_3

    .line 400
    move v1, v4

    goto :goto_1

    .line 413
    .end local v0           #N:I
    .end local v2           #fraction:I
    .end local v5           #mask:I
    .end local v6           #n:I
    .end local v7           #step:I
    .end local v8           #test:Ljava/lang/Object;
    :cond_8
    iget-object v9, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    if-eqz v9, :cond_9

    iget v9, p0, Lorg/mozilla/javascript/ObjToIntMap;->occupiedCount:I

    mul-int/lit8 v9, v9, 0x4

    iget v10, p0, Lorg/mozilla/javascript/ObjToIntMap;->power:I

    shl-int v10, v11, v10

    mul-int/lit8 v10, v10, 0x3

    if-lt v9, v10, :cond_a

    .line 415
    :cond_9
    invoke-direct {p0}, Lorg/mozilla/javascript/ObjToIntMap;->rehashTable()V

    .line 416
    invoke-direct {p0, p1, v3}, Lorg/mozilla/javascript/ObjToIntMap;->insertNewKey(Ljava/lang/Object;I)I

    move-result v9

    goto :goto_0

    .line 418
    :cond_a
    iget v9, p0, Lorg/mozilla/javascript/ObjToIntMap;->occupiedCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/mozilla/javascript/ObjToIntMap;->occupiedCount:I

    goto :goto_2
.end method

.method private findIndex(Ljava/lang/Object;)I
    .locals 11
    .parameter "key"

    .prologue
    const/4 v10, 0x1

    .line 262
    iget-object v8, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    if-eqz v8, :cond_3

    .line 263
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 264
    .local v2, hash:I
    const v8, -0x61c88647

    mul-int v1, v2, v8

    .line 265
    .local v1, fraction:I
    const/16 v8, 0x20

    iget v9, p0, Lorg/mozilla/javascript/ObjToIntMap;->power:I

    sub-int/2addr v8, v9

    ushr-int v3, v1, v8

    .line 266
    .local v3, index:I
    iget-object v8, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    aget-object v7, v8, v3

    .line 267
    .local v7, test:Ljava/lang/Object;
    if-eqz v7, :cond_3

    .line 268
    iget v8, p0, Lorg/mozilla/javascript/ObjToIntMap;->power:I

    shl-int v0, v10, v8

    .line 269
    .local v0, N:I
    if-eq v7, p1, :cond_0

    iget-object v8, p0, Lorg/mozilla/javascript/ObjToIntMap;->values:[I

    add-int v9, v0, v3

    aget v8, v8, v9

    if-ne v8, v2, :cond_1

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    move v8, v3

    .line 296
    .end local v0           #N:I
    .end local v1           #fraction:I
    .end local v2           #hash:I
    .end local v3           #index:I
    .end local v7           #test:Ljava/lang/Object;
    :goto_0
    return v8

    .line 275
    .restart local v0       #N:I
    .restart local v1       #fraction:I
    .restart local v2       #hash:I
    .restart local v3       #index:I
    .restart local v7       #test:Ljava/lang/Object;
    :cond_1
    sub-int v4, v0, v10

    .line 276
    .local v4, mask:I
    iget v8, p0, Lorg/mozilla/javascript/ObjToIntMap;->power:I

    invoke-static {v1, v4, v8}, Lorg/mozilla/javascript/ObjToIntMap;->tableLookupStep(III)I

    move-result v6

    .line 277
    .local v6, step:I
    const/4 v5, 0x0

    .line 283
    .local v5, n:I
    :cond_2
    add-int v8, v3, v6

    and-int v3, v8, v4

    .line 284
    iget-object v8, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    aget-object v7, v8, v3

    .line 285
    if-nez v7, :cond_4

    .line 296
    .end local v0           #N:I
    .end local v1           #fraction:I
    .end local v2           #hash:I
    .end local v3           #index:I
    .end local v4           #mask:I
    .end local v5           #n:I
    .end local v6           #step:I
    .end local v7           #test:Ljava/lang/Object;
    :cond_3
    const/4 v8, -0x1

    goto :goto_0

    .line 288
    .restart local v0       #N:I
    .restart local v1       #fraction:I
    .restart local v2       #hash:I
    .restart local v3       #index:I
    .restart local v4       #mask:I
    .restart local v5       #n:I
    .restart local v6       #step:I
    .restart local v7       #test:Ljava/lang/Object;
    :cond_4
    if-eq v7, p1, :cond_5

    iget-object v8, p0, Lorg/mozilla/javascript/ObjToIntMap;->values:[I

    add-int v9, v0, v3

    aget v8, v8, v9

    if-ne v8, v2, :cond_2

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_5
    move v8, v3

    .line 291
    goto :goto_0
.end method

.method private insertNewKey(Ljava/lang/Object;I)I
    .locals 9
    .parameter "key"
    .parameter "hash"

    .prologue
    const/4 v8, 0x1

    .line 304
    const v6, -0x61c88647

    mul-int v2, p2, v6

    .line 305
    .local v2, fraction:I
    const/16 v6, 0x20

    iget v7, p0, Lorg/mozilla/javascript/ObjToIntMap;->power:I

    sub-int/2addr v6, v7

    ushr-int v3, v2, v6

    .line 306
    .local v3, index:I
    iget v6, p0, Lorg/mozilla/javascript/ObjToIntMap;->power:I

    shl-int v0, v8, v6

    .line 307
    .local v0, N:I
    iget-object v6, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    aget-object v6, v6, v3

    if-eqz v6, :cond_1

    .line 308
    sub-int v4, v0, v8

    .line 309
    .local v4, mask:I
    iget v6, p0, Lorg/mozilla/javascript/ObjToIntMap;->power:I

    invoke-static {v2, v4, v6}, Lorg/mozilla/javascript/ObjToIntMap;->tableLookupStep(III)I

    move-result v5

    .line 310
    .local v5, step:I
    move v1, v3

    .line 313
    .local v1, firstIndex:I
    :cond_0
    add-int v6, v3, v5

    and-int v3, v6, v4

    .line 315
    iget-object v6, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    aget-object v6, v6, v3

    if-nez v6, :cond_0

    .line 317
    .end local v1           #firstIndex:I
    .end local v4           #mask:I
    .end local v5           #step:I
    :cond_1
    iget-object v6, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    aput-object p1, v6, v3

    .line 318
    iget-object v6, p0, Lorg/mozilla/javascript/ObjToIntMap;->values:[I

    add-int v7, v0, v3

    aput p2, v6, v7

    .line 319
    iget v6, p0, Lorg/mozilla/javascript/ObjToIntMap;->occupiedCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/mozilla/javascript/ObjToIntMap;->occupiedCount:I

    .line 320
    iget v6, p0, Lorg/mozilla/javascript/ObjToIntMap;->keyCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/mozilla/javascript/ObjToIntMap;->keyCount:I

    .line 322
    return v3
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 8
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 445
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 447
    iget v5, p0, Lorg/mozilla/javascript/ObjToIntMap;->keyCount:I

    .line 448
    .local v5, writtenKeyCount:I
    if-eqz v5, :cond_0

    .line 449
    const/4 v6, 0x0

    iput v6, p0, Lorg/mozilla/javascript/ObjToIntMap;->keyCount:I

    .line 450
    const/4 v6, 0x1

    iget v7, p0, Lorg/mozilla/javascript/ObjToIntMap;->power:I

    shl-int v0, v6, v7

    .line 451
    .local v0, N:I
    new-array v6, v0, [Ljava/lang/Object;

    iput-object v6, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    .line 452
    mul-int/lit8 v6, v0, 0x2

    new-array v6, v6, [I

    iput-object v6, p0, Lorg/mozilla/javascript/ObjToIntMap;->values:[I

    .line 453
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-eq v2, v5, :cond_0

    .line 454
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    .line 455
    .local v4, key:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 456
    .local v1, hash:I
    invoke-direct {p0, v4, v1}, Lorg/mozilla/javascript/ObjToIntMap;->insertNewKey(Ljava/lang/Object;I)I

    move-result v3

    .line 457
    .local v3, index:I
    iget-object v6, p0, Lorg/mozilla/javascript/ObjToIntMap;->values:[I

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v7

    aput v7, v6, v3

    .line 453
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 460
    .end local v0           #N:I
    .end local v1           #hash:I
    .end local v2           #i:I
    .end local v3           #index:I
    .end local v4           #key:Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method private rehashTable()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 326
    iget-object v9, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    if-nez v9, :cond_1

    .line 329
    iget v9, p0, Lorg/mozilla/javascript/ObjToIntMap;->power:I

    shl-int v0, v11, v9

    .line 330
    .local v0, N:I
    new-array v9, v0, [Ljava/lang/Object;

    iput-object v9, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    .line 331
    mul-int/lit8 v9, v0, 0x2

    new-array v9, v9, [I

    iput-object v9, p0, Lorg/mozilla/javascript/ObjToIntMap;->values:[I

    .line 358
    :cond_0
    return-void

    .line 335
    .end local v0           #N:I
    :cond_1
    iget v9, p0, Lorg/mozilla/javascript/ObjToIntMap;->keyCount:I

    mul-int/lit8 v9, v9, 0x2

    iget v10, p0, Lorg/mozilla/javascript/ObjToIntMap;->occupiedCount:I

    if-lt v9, v10, :cond_2

    .line 337
    iget v9, p0, Lorg/mozilla/javascript/ObjToIntMap;->power:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/mozilla/javascript/ObjToIntMap;->power:I

    .line 339
    :cond_2
    iget v9, p0, Lorg/mozilla/javascript/ObjToIntMap;->power:I

    shl-int v0, v11, v9

    .line 340
    .restart local v0       #N:I
    iget-object v5, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    .line 341
    .local v5, oldKeys:[Ljava/lang/Object;
    iget-object v7, p0, Lorg/mozilla/javascript/ObjToIntMap;->values:[I

    .line 342
    .local v7, oldValues:[I
    array-length v6, v5

    .line 343
    .local v6, oldN:I
    new-array v9, v0, [Ljava/lang/Object;

    iput-object v9, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    .line 344
    mul-int/lit8 v9, v0, 0x2

    new-array v9, v9, [I

    iput-object v9, p0, Lorg/mozilla/javascript/ObjToIntMap;->values:[I

    .line 346
    iget v8, p0, Lorg/mozilla/javascript/ObjToIntMap;->keyCount:I

    .line 347
    .local v8, remaining:I
    const/4 v9, 0x0

    iput v9, p0, Lorg/mozilla/javascript/ObjToIntMap;->keyCount:I

    iput v9, p0, Lorg/mozilla/javascript/ObjToIntMap;->occupiedCount:I

    .line 348
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-eqz v8, :cond_0

    .line 349
    aget-object v3, v5, v1

    .line 350
    .local v3, key:Ljava/lang/Object;
    if-eqz v3, :cond_3

    sget-object v9, Lorg/mozilla/javascript/ObjToIntMap;->DELETED:Ljava/lang/Object;

    if-eq v3, v9, :cond_3

    .line 351
    add-int v9, v6, v1

    aget v4, v7, v9

    .line 352
    .local v4, keyHash:I
    invoke-direct {p0, v3, v4}, Lorg/mozilla/javascript/ObjToIntMap;->insertNewKey(Ljava/lang/Object;I)I

    move-result v2

    .line 353
    .local v2, index:I
    iget-object v9, p0, Lorg/mozilla/javascript/ObjToIntMap;->values:[I

    aget v10, v7, v1

    aput v10, v9, v2

    .line 354
    add-int/lit8 v8, v8, -0x1

    .line 348
    .end local v2           #index:I
    .end local v4           #keyHash:I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static tableLookupStep(III)I
    .locals 3
    .parameter "fraction"
    .parameter "mask"
    .parameter "power"

    .prologue
    .line 252
    const/16 v1, 0x20

    mul-int/lit8 v2, p2, 0x2

    sub-int v0, v1, v2

    .line 253
    .local v0, shift:I
    if-ltz v0, :cond_0

    .line 254
    ushr-int v1, p0, v0

    and-int/2addr v1, p1

    or-int/lit8 v1, v1, 0x1

    .line 257
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
    .locals 4
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 429
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 431
    iget v0, p0, Lorg/mozilla/javascript/ObjToIntMap;->keyCount:I

    .line 432
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-eqz v0, :cond_1

    .line 433
    iget-object v3, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    aget-object v2, v3, v1

    .line 434
    .local v2, key:Ljava/lang/Object;
    if-eqz v2, :cond_0

    sget-object v3, Lorg/mozilla/javascript/ObjToIntMap;->DELETED:Ljava/lang/Object;

    if-eq v2, v3, :cond_0

    .line 435
    add-int/lit8 v0, v0, -0x1

    .line 436
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 437
    iget-object v3, p0, Lorg/mozilla/javascript/ObjToIntMap;->values:[I

    aget v3, v3, v1

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 432
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 440
    .end local v2           #key:Ljava/lang/Object;
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 212
    iget-object v1, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    array-length v0, v1

    .line 213
    .local v0, i:I
    :goto_0
    if-eqz v0, :cond_0

    .line 214
    iget-object v1, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x0

    aput-object v2, v1, v0

    goto :goto_0

    .line 216
    :cond_0
    iput v3, p0, Lorg/mozilla/javascript/ObjToIntMap;->keyCount:I

    .line 217
    iput v3, p0, Lorg/mozilla/javascript/ObjToIntMap;->occupiedCount:I

    .line 218
    return-void
.end method

.method public get(Ljava/lang/Object;I)I
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 156
    if-nez p1, :cond_0

    sget-object p1, Lorg/mozilla/javascript/UniqueTag;->NULL_VALUE:Lorg/mozilla/javascript/UniqueTag;

    .line 157
    .end local p1
    :cond_0
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ObjToIntMap;->findIndex(Ljava/lang/Object;)I

    move-result v0

    .line 158
    .local v0, index:I
    if-ltz v0, :cond_1

    .line 159
    iget-object v1, p0, Lorg/mozilla/javascript/ObjToIntMap;->values:[I

    aget v1, v1, v0

    .line 161
    :goto_0
    return v1

    :cond_1
    move v1, p2

    goto :goto_0
.end method

.method public getExisting(Ljava/lang/Object;)I
    .locals 2
    .parameter "key"

    .prologue
    .line 170
    if-nez p1, :cond_0

    sget-object p1, Lorg/mozilla/javascript/UniqueTag;->NULL_VALUE:Lorg/mozilla/javascript/UniqueTag;

    .line 171
    .end local p1
    :cond_0
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ObjToIntMap;->findIndex(Ljava/lang/Object;)I

    move-result v0

    .line 172
    .local v0, index:I
    if-ltz v0, :cond_1

    .line 173
    iget-object v1, p0, Lorg/mozilla/javascript/ObjToIntMap;->values:[I

    aget v1, v1, v0

    .line 177
    :goto_0
    return v1

    .line 176
    :cond_1
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 177
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getKeys([Ljava/lang/Object;I)V
    .locals 4
    .parameter "array"
    .parameter "offset"

    .prologue
    .line 239
    iget v0, p0, Lorg/mozilla/javascript/ObjToIntMap;->keyCount:I

    .line 240
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-eqz v0, :cond_2

    .line 241
    iget-object v3, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    aget-object v2, v3, v1

    .line 242
    .local v2, key:Ljava/lang/Object;
    if-eqz v2, :cond_1

    sget-object v3, Lorg/mozilla/javascript/ObjToIntMap;->DELETED:Ljava/lang/Object;

    if-eq v2, v3, :cond_1

    .line 243
    sget-object v3, Lorg/mozilla/javascript/UniqueTag;->NULL_VALUE:Lorg/mozilla/javascript/UniqueTag;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    .line 244
    .end local v2           #key:Ljava/lang/Object;
    :cond_0
    aput-object v2, p1, p2

    .line 245
    add-int/lit8 p2, p2, 0x1

    .line 246
    add-int/lit8 v0, v0, -0x1

    .line 240
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 249
    :cond_2
    return-void
.end method

.method public getKeys()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 233
    iget v1, p0, Lorg/mozilla/javascript/ObjToIntMap;->keyCount:I

    new-array v0, v1, [Ljava/lang/Object;

    .line 234
    .local v0, array:[Ljava/lang/Object;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/javascript/ObjToIntMap;->getKeys([Ljava/lang/Object;I)V

    .line 235
    return-object v0
.end method

.method public has(Ljava/lang/Object;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 147
    if-nez p1, :cond_0

    sget-object p1, Lorg/mozilla/javascript/UniqueTag;->NULL_VALUE:Lorg/mozilla/javascript/UniqueTag;

    .line 148
    .end local p1
    :cond_0
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ObjToIntMap;->findIndex(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final initIterator(Lorg/mozilla/javascript/ObjToIntMap$Iterator;)V
    .locals 3
    .parameter "i"

    .prologue
    .line 228
    iget-object v0, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    iget-object v1, p0, Lorg/mozilla/javascript/ObjToIntMap;->values:[I

    iget v2, p0, Lorg/mozilla/javascript/ObjToIntMap;->keyCount:I

    invoke-virtual {p1, v0, v1, v2}, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->init([Ljava/lang/Object;[II)V

    .line 229
    return-void
.end method

.method public intern(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "keyArg"

    .prologue
    .line 192
    const/4 v1, 0x0

    .line 193
    .local v1, nullKey:Z
    if-nez p1, :cond_0

    .line 194
    const/4 v1, 0x1

    .line 195
    sget-object p1, Lorg/mozilla/javascript/UniqueTag;->NULL_VALUE:Lorg/mozilla/javascript/UniqueTag;

    .line 197
    .end local p1
    :cond_0
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ObjToIntMap;->ensureIndex(Ljava/lang/Object;)I

    move-result v0

    .line 198
    .local v0, index:I
    iget-object v2, p0, Lorg/mozilla/javascript/ObjToIntMap;->values:[I

    const/4 v3, 0x0

    aput v3, v2, v0

    .line 199
    if-eqz v1, :cond_1

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    iget-object v2, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    aget-object v2, v2, v0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lorg/mozilla/javascript/ObjToIntMap;->keyCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newIterator()Lorg/mozilla/javascript/ObjToIntMap$Iterator;
    .locals 1

    .prologue
    .line 221
    new-instance v0, Lorg/mozilla/javascript/ObjToIntMap$Iterator;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/ObjToIntMap$Iterator;-><init>(Lorg/mozilla/javascript/ObjToIntMap;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;I)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 181
    if-nez p1, :cond_0

    sget-object p1, Lorg/mozilla/javascript/UniqueTag;->NULL_VALUE:Lorg/mozilla/javascript/UniqueTag;

    .line 182
    .end local p1
    :cond_0
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ObjToIntMap;->ensureIndex(Ljava/lang/Object;)I

    move-result v0

    .line 183
    .local v0, index:I
    iget-object v1, p0, Lorg/mozilla/javascript/ObjToIntMap;->values:[I

    aput p2, v1, v0

    .line 184
    return-void
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 203
    if-nez p1, :cond_0

    sget-object p1, Lorg/mozilla/javascript/UniqueTag;->NULL_VALUE:Lorg/mozilla/javascript/UniqueTag;

    .line 204
    .end local p1
    :cond_0
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ObjToIntMap;->findIndex(Ljava/lang/Object;)I

    move-result v0

    .line 205
    .local v0, index:I
    if-ltz v0, :cond_1

    .line 206
    iget-object v1, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    sget-object v2, Lorg/mozilla/javascript/ObjToIntMap;->DELETED:Ljava/lang/Object;

    aput-object v2, v1, v0

    .line 207
    iget v1, p0, Lorg/mozilla/javascript/ObjToIntMap;->keyCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/mozilla/javascript/ObjToIntMap;->keyCount:I

    .line 209
    :cond_1
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lorg/mozilla/javascript/ObjToIntMap;->keyCount:I

    return v0
.end method
