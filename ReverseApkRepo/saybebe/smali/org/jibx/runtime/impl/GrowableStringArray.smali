.class public Lorg/jibx/runtime/impl/GrowableStringArray;
.super Ljava/lang/Object;
.source "GrowableStringArray.java"


# static fields
.field public static final DEFAULT_SIZE:I = 0x8


# instance fields
.field private m_baseArray:[Ljava/lang/String;

.field private m_countLimit:I

.field private m_countPresent:I

.field private m_maximumGrowth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/jibx/runtime/impl/GrowableStringArray;-><init>(I)V

    .line 88
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 80
    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Lorg/jibx/runtime/impl/GrowableStringArray;-><init>(II)V

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
    new-array v0, p1, [Ljava/lang/String;

    .line 68
    .local v0, array:[Ljava/lang/String;
    iput p1, p0, Lorg/jibx/runtime/impl/GrowableStringArray;->m_countLimit:I

    .line 69
    iput p2, p0, Lorg/jibx/runtime/impl/GrowableStringArray;->m_maximumGrowth:I

    .line 70
    iput-object v0, p0, Lorg/jibx/runtime/impl/GrowableStringArray;->m_baseArray:[Ljava/lang/String;

    .line 71
    return-void
.end method

.method public constructor <init>(Lorg/jibx/runtime/impl/GrowableStringArray;)V
    .locals 4
    .parameter "base"

    .prologue
    const/4 v3, 0x0

    .line 96
    iget v0, p1, Lorg/jibx/runtime/impl/GrowableStringArray;->m_countLimit:I

    iget v1, p1, Lorg/jibx/runtime/impl/GrowableStringArray;->m_maximumGrowth:I

    invoke-direct {p0, v0, v1}, Lorg/jibx/runtime/impl/GrowableStringArray;-><init>(II)V

    .line 97
    iget-object v0, p1, Lorg/jibx/runtime/impl/GrowableStringArray;->m_baseArray:[Ljava/lang/String;

    iget-object v1, p0, Lorg/jibx/runtime/impl/GrowableStringArray;->m_baseArray:[Ljava/lang/String;

    iget v2, p1, Lorg/jibx/runtime/impl/GrowableStringArray;->m_countPresent:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    iget v0, p1, Lorg/jibx/runtime/impl/GrowableStringArray;->m_countPresent:I

    iput v0, p0, Lorg/jibx/runtime/impl/GrowableStringArray;->m_countPresent:I

    .line 100
    return-void
.end method

.method private discardValues(II)V
    .locals 3
    .parameter "from"
    .parameter "to"

    .prologue
    .line 122
    move v0, p1

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 123
    iget-object v1, p0, Lorg/jibx/runtime/impl/GrowableStringArray;->m_baseArray:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_0
    return-void
.end method

.method private getAddIndex()I
    .locals 3

    .prologue
    .line 260
    iget v0, p0, Lorg/jibx/runtime/impl/GrowableStringArray;->m_countPresent:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/jibx/runtime/impl/GrowableStringArray;->m_countPresent:I

    .line 261
    .local v0, index:I
    iget v1, p0, Lorg/jibx/runtime/impl/GrowableStringArray;->m_countPresent:I

    iget v2, p0, Lorg/jibx/runtime/impl/GrowableStringArray;->m_countLimit:I

    if-le v1, v2, :cond_0

    .line 262
    iget v1, p0, Lorg/jibx/runtime/impl/GrowableStringArray;->m_countPresent:I

    invoke-direct {p0, v1}, Lorg/jibx/runtime/impl/GrowableStringArray;->growArray(I)V

    .line 264
    :cond_0
    return v0
.end method

.method private growArray(I)V
    .locals 5
    .parameter "required"

    .prologue
    .line 139
    iget v2, p0, Lorg/jibx/runtime/impl/GrowableStringArray;->m_countLimit:I

    iget v3, p0, Lorg/jibx/runtime/impl/GrowableStringArray;->m_countLimit:I

    iget v4, p0, Lorg/jibx/runtime/impl/GrowableStringArray;->m_maximumGrowth:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 141
    .local v1, size:I
    new-array v0, v1, [Ljava/lang/String;

    .line 142
    .local v0, grown:[Ljava/lang/String;
    iget-object v2, p0, Lorg/jibx/runtime/impl/GrowableStringArray;->m_baseArray:[Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lorg/jibx/runtime/impl/GrowableStringArray;->resizeCopy(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 143
    iput v1, p0, Lorg/jibx/runtime/impl/GrowableStringArray;->m_countLimit:I

    .line 144
    iput-object v0, p0, Lorg/jibx/runtime/impl/GrowableStringArray;->m_baseArray:[Ljava/lang/String;

    .line 145
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
.method public add(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 179
    invoke-direct {p0}, Lorg/jibx/runtime/impl/GrowableStringArray;->getAddIndex()I

    move-result v0

    .line 180
    .local v0, index:I
    iget-object v1, p0, Lorg/jibx/runtime/impl/GrowableStringArray;->m_baseArray:[Ljava/lang/String;

    aput-object p1, v1, v0

    .line 181
    return-void
.end method

.method public addAll([Ljava/lang/String;)V
    .locals 4
    .parameter "values"

    .prologue
    .line 189
    iget v1, p0, Lorg/jibx/runtime/impl/GrowableStringArray;->m_countPresent:I

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lorg/jibx/runtime/impl/GrowableStringArray;->ensureCapacity(I)V

    .line 190
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 191
    iget-object v1, p0, Lorg/jibx/runtime/impl/GrowableStringArray;->m_baseArray:[Ljava/lang/String;

    iget v2, p0, Lorg/jibx/runtime/impl/GrowableStringArray;->m_countPresent:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/jibx/runtime/impl/GrowableStringArray;->m_countPresent:I

    aget-object v3, p1, v0

    aput-object v3, v1, v2

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 289
    iget v0, p0, Lorg/jibx/runtime/impl/GrowableStringArray;->m_countPresent:I

    invoke-direct {p0, v1, v0}, Lorg/jibx/runtime/impl/GrowableStringArray;->discardValues(II)V

    .line 290
    iput v1, p0, Lorg/jibx/runtime/impl/GrowableStringArray;->m_countPresent:I

    .line 291
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 248
    new-instance v0, Lorg/jibx/runtime/impl/GrowableStringArray;

    invoke-direct {v0, p0}, Lorg/jibx/runtime/impl/GrowableStringArray;-><init>(Lorg/jibx/runtime/impl/GrowableStringArray;)V

    return-object v0
.end method

.method public final ensureCapacity(I)V
    .locals 1
    .parameter "min"

    .prologue
    .line 154
    iget v0, p0, Lorg/jibx/runtime/impl/GrowableStringArray;->m_countLimit:I

    if-le p1, v0, :cond_0

    .line 155
    invoke-direct {p0, p1}, Lorg/jibx/runtime/impl/GrowableStringArray;->growArray(I)V

    .line 157
    :cond_0
    return-void
.end method

.method public get(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 222
    iget v0, p0, Lorg/jibx/runtime/impl/GrowableStringArray;->m_countPresent:I

    if-le v0, p1, :cond_0

    .line 223
    iget-object v0, p0, Lorg/jibx/runtime/impl/GrowableStringArray;->m_baseArray:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    .line 225
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "Attempt to access past end of array"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Lorg/jibx/runtime/impl/GrowableStringArray;->m_countPresent:I

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
    .line 203
    iget v1, p0, Lorg/jibx/runtime/impl/GrowableStringArray;->m_countPresent:I

    sub-int v0, v1, p1

    .line 204
    .local v0, start:I
    if-ltz v0, :cond_0

    .line 205
    iget v1, p0, Lorg/jibx/runtime/impl/GrowableStringArray;->m_countPresent:I

    invoke-direct {p0, v0, v1}, Lorg/jibx/runtime/impl/GrowableStringArray;->discardValues(II)V

    .line 206
    iput v0, p0, Lorg/jibx/runtime/impl/GrowableStringArray;->m_countPresent:I

    .line 211
    return-void

    .line 208
    :cond_0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v2, "Attempt to remove too many values from array"

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public set(ILjava/lang/String;)V
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 166
    iget v0, p0, Lorg/jibx/runtime/impl/GrowableStringArray;->m_countPresent:I

    if-ge p1, v0, :cond_0

    .line 167
    iget-object v0, p0, Lorg/jibx/runtime/impl/GrowableStringArray;->m_baseArray:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 171
    return-void

    .line 169
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Index value out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 273
    iget v0, p0, Lorg/jibx/runtime/impl/GrowableStringArray;->m_countPresent:I

    return v0
.end method

.method public toArray()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 237
    iget v1, p0, Lorg/jibx/runtime/impl/GrowableStringArray;->m_countPresent:I

    new-array v0, v1, [Ljava/lang/String;

    .line 238
    .local v0, copy:[Ljava/lang/String;
    iget-object v1, p0, Lorg/jibx/runtime/impl/GrowableStringArray;->m_baseArray:[Ljava/lang/String;

    iget v2, p0, Lorg/jibx/runtime/impl/GrowableStringArray;->m_countPresent:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    return-object v0
.end method
