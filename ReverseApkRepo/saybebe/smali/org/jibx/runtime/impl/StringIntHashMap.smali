.class public Lorg/jibx/runtime/impl/StringIntHashMap;
.super Ljava/lang/Object;
.source "StringIntHashMap.java"


# static fields
.field protected static final DEFAULT_FILL:D = 0.3

.field public static final DEFAULT_NOT_FOUND:I = -0x80000000

.field protected static final MINIMUM_SIZE:I = 0x1f


# instance fields
.field protected m_arraySize:I

.field protected m_entryCount:I

.field protected m_entryLimit:I

.field protected final m_fillFraction:D

.field protected m_hitOffset:I

.field protected m_keyTable:[Ljava/lang/String;

.field protected m_notFoundValue:I

.field protected m_valueTable:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 129
    const/4 v0, 0x0

    const-wide v1, 0x3fd3333333333333L

    invoke-direct {p0, v0, v1, v2}, Lorg/jibx/runtime/impl/StringIntHashMap;-><init>(ID)V

    .line 130
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 122
    const-wide v0, 0x3fd3333333333333L

    invoke-direct {p0, p1, v0, v1}, Lorg/jibx/runtime/impl/StringIntHashMap;-><init>(ID)V

    .line 123
    return-void
.end method

.method public constructor <init>(ID)V
    .locals 1
    .parameter "count"
    .parameter "fill"

    .prologue
    .line 112
    const/high16 v0, -0x8000

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/jibx/runtime/impl/StringIntHashMap;-><init>(IDI)V

    .line 113
    return-void
.end method

.method public constructor <init>(IDI)V
    .locals 4
    .parameter "count"
    .parameter "fill"
    .parameter "miss"

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    if-lez v0, :cond_0

    const-wide/high16 v0, 0x3ff0

    cmpl-double v0, p2, v0

    if-ltz v0, :cond_1

    .line 88
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fill value out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_1
    iput-wide p2, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_fillFraction:D

    .line 93
    int-to-double v0, p1

    iget-wide v2, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_fillFraction:D

    div-double/2addr v0, v2

    double-to-int v0, v0

    const/16 v1, 0x1f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_arraySize:I

    .line 94
    iget v0, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_arraySize:I

    iget v1, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_arraySize:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_arraySize:I

    .line 97
    iget v0, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_arraySize:I

    int-to-double v0, v0

    iget-wide v2, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_fillFraction:D

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_entryLimit:I

    .line 98
    iget v0, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_arraySize:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_hitOffset:I

    .line 99
    iget v0, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_arraySize:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_keyTable:[Ljava/lang/String;

    .line 100
    iget v0, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_arraySize:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_valueTable:[I

    .line 101
    iput p4, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_notFoundValue:I

    .line 102
    return-void
.end method

.method public constructor <init>(Lorg/jibx/runtime/impl/StringIntHashMap;)V
    .locals 4
    .parameter "base"

    .prologue
    const/4 v3, 0x0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iget-wide v0, p1, Lorg/jibx/runtime/impl/StringIntHashMap;->m_fillFraction:D

    iput-wide v0, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_fillFraction:D

    .line 141
    iget v0, p1, Lorg/jibx/runtime/impl/StringIntHashMap;->m_entryCount:I

    iput v0, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_entryCount:I

    .line 142
    iget v0, p1, Lorg/jibx/runtime/impl/StringIntHashMap;->m_entryLimit:I

    iput v0, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_entryLimit:I

    .line 143
    iget v0, p1, Lorg/jibx/runtime/impl/StringIntHashMap;->m_arraySize:I

    iput v0, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_arraySize:I

    .line 144
    iget v0, p1, Lorg/jibx/runtime/impl/StringIntHashMap;->m_hitOffset:I

    iput v0, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_hitOffset:I

    .line 145
    iget v0, p1, Lorg/jibx/runtime/impl/StringIntHashMap;->m_notFoundValue:I

    iput v0, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_notFoundValue:I

    .line 148
    iget v0, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_arraySize:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_keyTable:[Ljava/lang/String;

    .line 149
    iget-object v0, p1, Lorg/jibx/runtime/impl/StringIntHashMap;->m_keyTable:[Ljava/lang/String;

    iget-object v1, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_keyTable:[Ljava/lang/String;

    iget v2, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_arraySize:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    iget v0, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_arraySize:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_valueTable:[I

    .line 151
    iget-object v0, p1, Lorg/jibx/runtime/impl/StringIntHashMap;->m_valueTable:[I

    iget-object v1, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_valueTable:[I

    iget v2, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_arraySize:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    return-void
.end method

.method private assignSlot(Ljava/lang/String;I)I
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 292
    invoke-direct {p0, p1}, Lorg/jibx/runtime/impl/StringIntHashMap;->standardSlot(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {p0, v1}, Lorg/jibx/runtime/impl/StringIntHashMap;->freeSlot(I)I

    move-result v0

    .line 293
    .local v0, offset:I
    iget-object v1, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_keyTable:[Ljava/lang/String;

    aput-object p1, v1, v0

    .line 294
    iget-object v1, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_valueTable:[I

    aput p2, v1, v0

    .line 295
    return v0
.end method

.method private final freeSlot(I)I
    .locals 1
    .parameter "slot"

    .prologue
    .line 175
    :goto_0
    iget-object v0, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_keyTable:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 176
    invoke-direct {p0, p1}, Lorg/jibx/runtime/impl/StringIntHashMap;->stepSlot(I)I

    move-result p1

    goto :goto_0

    .line 178
    :cond_0
    return p1
.end method

.method private reinsert(I)Z
    .locals 3
    .parameter "slot"

    .prologue
    .line 235
    iget-object v1, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_keyTable:[Ljava/lang/String;

    aget-object v0, v1, p1

    .line 236
    .local v0, key:Ljava/lang/String;
    iget-object v1, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_keyTable:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v1, p1

    .line 237
    iget-object v1, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_valueTable:[I

    aget v1, v1, p1

    invoke-direct {p0, v0, v1}, Lorg/jibx/runtime/impl/StringIntHashMap;->assignSlot(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private restructure([Ljava/lang/String;[I)V
    .locals 3
    .parameter "keys"
    .parameter "values"

    .prologue
    .line 273
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 274
    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    .line 275
    aget-object v1, p1, v0

    aget v2, p2, v0

    invoke-direct {p0, v1, v2}, Lorg/jibx/runtime/impl/StringIntHashMap;->assignSlot(Ljava/lang/String;I)I

    .line 273
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 278
    :cond_1
    return-void
.end method

.method private standardFind(Ljava/lang/Object;)I
    .locals 2
    .parameter "key"

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lorg/jibx/runtime/impl/StringIntHashMap;->standardSlot(Ljava/lang/Object;)I

    move-result v0

    .line 212
    .local v0, slot:I
    :goto_0
    iget-object v1, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_keyTable:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 215
    iget-object v1, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_keyTable:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    .end local v0           #slot:I
    :goto_1
    return v0

    .line 218
    .restart local v0       #slot:I
    :cond_0
    invoke-direct {p0, v0}, Lorg/jibx/runtime/impl/StringIntHashMap;->stepSlot(I)I

    move-result v0

    goto :goto_0

    .line 222
    :cond_1
    neg-int v1, v0

    add-int/lit8 v0, v1, -0x1

    goto :goto_1
.end method

.method private final standardSlot(Ljava/lang/Object;)I
    .locals 2
    .parameter "key"

    .prologue
    .line 188
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iget v1, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_arraySize:I

    rem-int/2addr v0, v1

    return v0
.end method

.method private final stepSlot(I)I
    .locals 2
    .parameter "slot"

    .prologue
    .line 162
    iget v0, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_hitOffset:I

    add-int/2addr v0, p1

    iget v1, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_arraySize:I

    rem-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public add(Ljava/lang/String;I)I
    .locals 11
    .parameter "key"
    .parameter "value"

    .prologue
    .line 310
    if-nez p1, :cond_0

    .line 311
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "null key not supported"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 312
    :cond_0
    iget v7, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_notFoundValue:I

    if-ne p2, v7, :cond_1

    .line 313
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "value matching not found return not supported"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 318
    :cond_1
    iget v7, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_entryCount:I

    add-int/lit8 v2, v7, 0x1

    .line 319
    .local v2, min:I
    iget v7, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_entryLimit:I

    if-le v2, v7, :cond_3

    .line 322
    iget v5, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_arraySize:I

    .line 323
    .local v5, size:I
    iget v1, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_entryLimit:I

    .line 324
    .local v1, limit:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 325
    mul-int/lit8 v7, v5, 0x2

    add-int/lit8 v5, v7, 0x1

    .line 326
    int-to-double v7, v5

    iget-wide v9, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_fillFraction:D

    mul-double/2addr v7, v9

    double-to-int v1, v7

    goto :goto_0

    .line 330
    :cond_2
    iput v5, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_arraySize:I

    .line 331
    iput v1, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_entryLimit:I

    .line 332
    div-int/lit8 v7, v5, 0x2

    iput v7, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_hitOffset:I

    .line 335
    iget-object v0, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_keyTable:[Ljava/lang/String;

    .line 336
    .local v0, keys:[Ljava/lang/String;
    iget v7, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_arraySize:I

    new-array v7, v7, [Ljava/lang/String;

    iput-object v7, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_keyTable:[Ljava/lang/String;

    .line 337
    iget-object v6, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_valueTable:[I

    .line 338
    .local v6, values:[I
    iget v7, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_arraySize:I

    new-array v7, v7, [I

    iput-object v7, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_valueTable:[I

    .line 339
    invoke-direct {p0, v0, v6}, Lorg/jibx/runtime/impl/StringIntHashMap;->restructure([Ljava/lang/String;[I)V

    .line 343
    .end local v0           #keys:[Ljava/lang/String;
    .end local v1           #limit:I
    .end local v5           #size:I
    .end local v6           #values:[I
    :cond_3
    invoke-direct {p0, p1}, Lorg/jibx/runtime/impl/StringIntHashMap;->standardFind(Ljava/lang/Object;)I

    move-result v3

    .line 344
    .local v3, offset:I
    if-ltz v3, :cond_4

    .line 347
    iget-object v7, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_valueTable:[I

    aget v4, v7, v3

    .line 348
    .local v4, prior:I
    iget-object v7, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_valueTable:[I

    aput p2, v7, v3

    .line 358
    .end local v4           #prior:I
    :goto_1
    return v4

    .line 354
    :cond_4
    iget v7, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_entryCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_entryCount:I

    .line 355
    neg-int v7, v3

    add-int/lit8 v3, v7, -0x1

    .line 356
    iget-object v7, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_keyTable:[Ljava/lang/String;

    aput-object p1, v7, v3

    .line 357
    iget-object v7, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_valueTable:[I

    aput p2, v7, v3

    .line 358
    iget v4, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_notFoundValue:I

    goto :goto_1
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 416
    new-instance v0, Lorg/jibx/runtime/impl/StringIntHashMap;

    invoke-direct {v0, p0}, Lorg/jibx/runtime/impl/StringIntHashMap;-><init>(Lorg/jibx/runtime/impl/StringIntHashMap;)V

    return-object v0
.end method

.method public final containsKey(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 373
    invoke-direct {p0, p1}, Lorg/jibx/runtime/impl/StringIntHashMap;->standardFind(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final get(Ljava/lang/String;)I
    .locals 2
    .parameter "key"

    .prologue
    .line 383
    invoke-direct {p0, p1}, Lorg/jibx/runtime/impl/StringIntHashMap;->standardFind(Ljava/lang/Object;)I

    move-result v0

    .line 384
    .local v0, slot:I
    if-ltz v0, :cond_0

    .line 385
    iget-object v1, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_valueTable:[I

    aget v1, v1, v0

    .line 387
    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_notFoundValue:I

    goto :goto_0
.end method

.method protected internalRemove(I)V
    .locals 2
    .parameter "slot"

    .prologue
    .line 253
    iget-object v0, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_keyTable:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 254
    iget v0, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_entryCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_entryCount:I

    .line 255
    :goto_0
    iget-object v0, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_keyTable:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/jibx/runtime/impl/StringIntHashMap;->stepSlot(I)I

    move-result p1

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 258
    invoke-direct {p0, p1}, Lorg/jibx/runtime/impl/StringIntHashMap;->reinsert(I)Z

    goto :goto_0

    .line 261
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/String;)I
    .locals 3
    .parameter "key"

    .prologue
    .line 400
    invoke-direct {p0, p1}, Lorg/jibx/runtime/impl/StringIntHashMap;->standardFind(Ljava/lang/Object;)I

    move-result v0

    .line 401
    .local v0, slot:I
    if-ltz v0, :cond_0

    .line 402
    iget-object v2, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_valueTable:[I

    aget v1, v2, v0

    .line 403
    .local v1, value:I
    invoke-virtual {p0, v0}, Lorg/jibx/runtime/impl/StringIntHashMap;->internalRemove(I)V

    .line 406
    .end local v1           #value:I
    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lorg/jibx/runtime/impl/StringIntHashMap;->m_notFoundValue:I

    goto :goto_0
.end method
