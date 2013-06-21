.class public Lorg/jibx/runtime/impl/GrowableIntArray;
.super Ljava/lang/Object;
.source "GrowableIntArray.java"


# static fields
.field public static final DEFAULT_SIZE:I = 0x8


# instance fields
.field private m_baseArray:[I

.field private m_countLimit:I

.field private m_countPresent:I

.field private m_maximumGrowth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/jibx/runtime/impl/GrowableIntArray;-><init>(I)V

    .line 88
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 80
    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Lorg/jibx/runtime/impl/GrowableIntArray;-><init>(II)V

    .line 81
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "size"
    .parameter "growth"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-array v0, p1, [I

    .line 68
    .local v0, array:[I
    iput p1, p0, Lorg/jibx/runtime/impl/GrowableIntArray;->m_countLimit:I

    .line 69
    iput p2, p0, Lorg/jibx/runtime/impl/GrowableIntArray;->m_maximumGrowth:I

    .line 70
    iput-object v0, p0, Lorg/jibx/runtime/impl/GrowableIntArray;->m_baseArray:[I

    .line 71
    return-void
.end method

.method public constructor <init>(Lorg/jibx/runtime/impl/GrowableIntArray;)V
    .locals 4
    .parameter "base"

    .prologue
    const/4 v3, 0x0

    .line 96
    iget v0, p1, Lorg/jibx/runtime/impl/GrowableIntArray;->m_countLimit:I

    iget v1, p1, Lorg/jibx/runtime/impl/GrowableIntArray;->m_maximumGrowth:I

    invoke-direct {p0, v0, v1}, Lorg/jibx/runtime/impl/GrowableIntArray;-><init>(II)V

    .line 97
    iget-object v0, p1, Lorg/jibx/runtime/impl/GrowableIntArray;->m_baseArray:[I

    iget-object v1, p0, Lorg/jibx/runtime/impl/GrowableIntArray;->m_baseArray:[I

    iget v2, p1, Lorg/jibx/runtime/impl/GrowableIntArray;->m_countPresent:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    iget v0, p1, Lorg/jibx/runtime/impl/GrowableIntArray;->m_countPresent:I

    iput v0, p0, Lorg/jibx/runtime/impl/GrowableIntArray;->m_countPresent:I

    .line 100
    return-void
.end method

.method private getAddIndex()I
    .locals 3

    .prologue
    .line 246
    iget v0, p0, Lorg/jibx/runtime/impl/GrowableIntArray;->m_countPresent:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/jibx/runtime/impl/GrowableIntArray;->m_countPresent:I

    .line 247
    .local v0, index:I
    iget v1, p0, Lorg/jibx/runtime/impl/GrowableIntArray;->m_countPresent:I

    iget v2, p0, Lorg/jibx/runtime/impl/GrowableIntArray;->m_countLimit:I

    if-le v1, v2, :cond_0

    .line 248
    iget v1, p0, Lorg/jibx/runtime/impl/GrowableIntArray;->m_countPresent:I

    invoke-direct {p0, v1}, Lorg/jibx/runtime/impl/GrowableIntArray;->growArray(I)V

    .line 250
    :cond_0
    return v0
.end method

.method private growArray(I)V
    .locals 5
    .parameter "required"

    .prologue
    .line 126
    iget v2, p0, Lorg/jibx/runtime/impl/GrowableIntArray;->m_countLimit:I

    iget v3, p0, Lorg/jibx/runtime/impl/GrowableIntArray;->m_countLimit:I

    iget v4, p0, Lorg/jibx/runtime/impl/GrowableIntArray;->m_maximumGrowth:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 128
    .local v1, size:I
    new-array v0, v1, [I

    .line 129
    .local v0, grown:[I
    iget-object v2, p0, Lorg/jibx/runtime/impl/GrowableIntArray;->m_baseArray:[I

    invoke-direct {p0, v2, v0}, Lorg/jibx/runtime/impl/GrowableIntArray;->resizeCopy(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 130
    iput v1, p0, Lorg/jibx/runtime/impl/GrowableIntArray;->m_countLimit:I

    .line 131
    iput-object v0, p0, Lorg/jibx/runtime/impl/GrowableIntArray;->m_baseArray:[I

    .line 132
    return-void
.end method

.method private resizeCopy(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .parameter "base"
    .parameter "grown"

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p1, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 166
    invoke-direct {p0}, Lorg/jibx/runtime/impl/GrowableIntArray;->getAddIndex()I

    move-result v0

    .line 167
    .local v0, index:I
    iget-object v1, p0, Lorg/jibx/runtime/impl/GrowableIntArray;->m_baseArray:[I

    aput p1, v1, v0

    .line 168
    return-void
.end method

.method public addAll([I)V
    .locals 4
    .parameter "values"

    .prologue
    .line 176
    iget v1, p0, Lorg/jibx/runtime/impl/GrowableIntArray;->m_countPresent:I

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lorg/jibx/runtime/impl/GrowableIntArray;->ensureCapacity(I)V

    .line 177
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 178
    iget-object v1, p0, Lorg/jibx/runtime/impl/GrowableIntArray;->m_baseArray:[I

    iget v2, p0, Lorg/jibx/runtime/impl/GrowableIntArray;->m_countPresent:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/jibx/runtime/impl/GrowableIntArray;->m_countPresent:I

    aget v3, p1, v0

    aput v3, v1, v2

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x0

    iput v0, p0, Lorg/jibx/runtime/impl/GrowableIntArray;->m_countPresent:I

    .line 276
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 234
    new-instance v0, Lorg/jibx/runtime/impl/GrowableIntArray;

    invoke-direct {v0, p0}, Lorg/jibx/runtime/impl/GrowableIntArray;-><init>(Lorg/jibx/runtime/impl/GrowableIntArray;)V

    return-object v0
.end method

.method public final ensureCapacity(I)V
    .locals 1
    .parameter "min"

    .prologue
    .line 141
    iget v0, p0, Lorg/jibx/runtime/impl/GrowableIntArray;->m_countLimit:I

    if-le p1, v0, :cond_0

    .line 142
    invoke-direct {p0, p1}, Lorg/jibx/runtime/impl/GrowableIntArray;->growArray(I)V

    .line 144
    :cond_0
    return-void
.end method

.method public get(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 208
    iget v0, p0, Lorg/jibx/runtime/impl/GrowableIntArray;->m_countPresent:I

    if-le v0, p1, :cond_0

    .line 209
    iget-object v0, p0, Lorg/jibx/runtime/impl/GrowableIntArray;->m_baseArray:[I

    aget v0, v0, p1

    return v0

    .line 211
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "Attempt to access past end of array"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Lorg/jibx/runtime/impl/GrowableIntArray;->m_countPresent:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(I)V
    .locals 3
    .parameter "count"

    .prologue
    .line 190
    iget v1, p0, Lorg/jibx/runtime/impl/GrowableIntArray;->m_countPresent:I

    sub-int v0, v1, p1

    .line 191
    .local v0, start:I
    if-ltz v0, :cond_0

    .line 192
    iput v0, p0, Lorg/jibx/runtime/impl/GrowableIntArray;->m_countPresent:I

    .line 197
    return-void

    .line 194
    :cond_0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v2, "Attempt to remove too many values from array"

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public set(II)V
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 153
    iget v0, p0, Lorg/jibx/runtime/impl/GrowableIntArray;->m_countPresent:I

    if-ge p1, v0, :cond_0

    .line 154
    iget-object v0, p0, Lorg/jibx/runtime/impl/GrowableIntArray;->m_baseArray:[I

    aput p2, v0, p1

    .line 158
    return-void

    .line 156
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Index value out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lorg/jibx/runtime/impl/GrowableIntArray;->m_countPresent:I

    return v0
.end method

.method public toArray()[I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 223
    iget v1, p0, Lorg/jibx/runtime/impl/GrowableIntArray;->m_countPresent:I

    new-array v0, v1, [I

    .line 224
    .local v0, copy:[I
    iget-object v1, p0, Lorg/jibx/runtime/impl/GrowableIntArray;->m_baseArray:[I

    iget v2, p0, Lorg/jibx/runtime/impl/GrowableIntArray;->m_countPresent:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 225
    return-object v0
.end method
