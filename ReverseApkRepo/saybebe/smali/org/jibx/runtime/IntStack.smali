.class public Lorg/jibx/runtime/IntStack;
.super Ljava/lang/Object;
.source "IntStack.java"


# static fields
.field public static final DEFAULT_SIZE:I = 0x8


# instance fields
.field protected m_baseArray:[I

.field protected m_countLimit:I

.field protected m_countPresent:I

.field protected m_maximumGrowth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 92
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/jibx/runtime/IntStack;-><init>(I)V

    .line 93
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 84
    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Lorg/jibx/runtime/IntStack;-><init>(II)V

    .line 85
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "size"
    .parameter "growth"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p1, p0, Lorg/jibx/runtime/IntStack;->m_countLimit:I

    .line 72
    iput p2, p0, Lorg/jibx/runtime/IntStack;->m_maximumGrowth:I

    .line 73
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/jibx/runtime/IntStack;->m_baseArray:[I

    .line 74
    return-void
.end method

.method public constructor <init>(Lorg/jibx/runtime/IntStack;)V
    .locals 4
    .parameter "base"

    .prologue
    const/4 v3, 0x0

    .line 102
    iget v0, p1, Lorg/jibx/runtime/IntStack;->m_countLimit:I

    iget v1, p1, Lorg/jibx/runtime/IntStack;->m_maximumGrowth:I

    invoke-direct {p0, v0, v1}, Lorg/jibx/runtime/IntStack;-><init>(II)V

    .line 103
    iget-object v0, p1, Lorg/jibx/runtime/IntStack;->m_baseArray:[I

    iget-object v1, p0, Lorg/jibx/runtime/IntStack;->m_baseArray:[I

    iget v2, p1, Lorg/jibx/runtime/IntStack;->m_countPresent:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    iget v0, p1, Lorg/jibx/runtime/IntStack;->m_countPresent:I

    iput v0, p0, Lorg/jibx/runtime/IntStack;->m_countPresent:I

    .line 106
    return-void
.end method

.method public constructor <init>([I)V
    .locals 3
    .parameter "ints"

    .prologue
    const/4 v2, 0x0

    .line 115
    array-length v0, p1

    invoke-direct {p0, v0}, Lorg/jibx/runtime/IntStack;-><init>(I)V

    .line 116
    iget-object v0, p0, Lorg/jibx/runtime/IntStack;->m_baseArray:[I

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    array-length v0, p1

    iput v0, p0, Lorg/jibx/runtime/IntStack;->m_countPresent:I

    .line 118
    return-void
.end method

.method private getAddIndex()I
    .locals 3

    .prologue
    .line 283
    iget v0, p0, Lorg/jibx/runtime/IntStack;->m_countPresent:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/jibx/runtime/IntStack;->m_countPresent:I

    .line 284
    .local v0, index:I
    iget v1, p0, Lorg/jibx/runtime/IntStack;->m_countPresent:I

    iget v2, p0, Lorg/jibx/runtime/IntStack;->m_countLimit:I

    if-le v1, v2, :cond_0

    .line 285
    iget v1, p0, Lorg/jibx/runtime/IntStack;->m_countPresent:I

    invoke-direct {p0, v1}, Lorg/jibx/runtime/IntStack;->growArray(I)V

    .line 287
    :cond_0
    return v0
.end method

.method private growArray(I)V
    .locals 5
    .parameter "required"

    .prologue
    .line 146
    iget v2, p0, Lorg/jibx/runtime/IntStack;->m_countLimit:I

    iget v3, p0, Lorg/jibx/runtime/IntStack;->m_countLimit:I

    iget v4, p0, Lorg/jibx/runtime/IntStack;->m_maximumGrowth:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 148
    .local v1, size:I
    new-array v0, v1, [I

    .line 149
    .local v0, grown:[I
    iget-object v2, p0, Lorg/jibx/runtime/IntStack;->m_baseArray:[I

    invoke-direct {p0, v2, v0}, Lorg/jibx/runtime/IntStack;->resizeCopy(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 150
    iput v1, p0, Lorg/jibx/runtime/IntStack;->m_countLimit:I

    .line 151
    iput-object v0, p0, Lorg/jibx/runtime/IntStack;->m_baseArray:[I

    .line 152
    return-void
.end method

.method private resizeCopy(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .parameter "base"
    .parameter "grown"

    .prologue
    const/4 v1, 0x0

    .line 130
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p1, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x0

    iput v0, p0, Lorg/jibx/runtime/IntStack;->m_countPresent:I

    .line 315
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 270
    new-instance v0, Lorg/jibx/runtime/IntStack;

    invoke-direct {v0, p0}, Lorg/jibx/runtime/IntStack;-><init>(Lorg/jibx/runtime/IntStack;)V

    return-object v0
.end method

.method public final ensureCapacity(I)V
    .locals 1
    .parameter "min"

    .prologue
    .line 162
    iget v0, p0, Lorg/jibx/runtime/IntStack;->m_countLimit:I

    if-le p1, v0, :cond_0

    .line 163
    invoke-direct {p0, p1}, Lorg/jibx/runtime/IntStack;->growArray(I)V

    .line 165
    :cond_0
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Lorg/jibx/runtime/IntStack;->m_countPresent:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public peek()I
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jibx/runtime/IntStack;->peek(I)I

    move-result v0

    return v0
.end method

.method public peek(I)I
    .locals 2
    .parameter "depth"

    .prologue
    .line 228
    iget v0, p0, Lorg/jibx/runtime/IntStack;->m_countPresent:I

    if-le v0, p1, :cond_0

    .line 229
    iget-object v0, p0, Lorg/jibx/runtime/IntStack;->m_baseArray:[I

    iget v1, p0, Lorg/jibx/runtime/IntStack;->m_countPresent:I

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0

    .line 231
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "Attempt to peek past end of stack"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pop()I
    .locals 2

    .prologue
    .line 186
    iget v0, p0, Lorg/jibx/runtime/IntStack;->m_countPresent:I

    if-lez v0, :cond_0

    .line 187
    iget-object v0, p0, Lorg/jibx/runtime/IntStack;->m_baseArray:[I

    iget v1, p0, Lorg/jibx/runtime/IntStack;->m_countPresent:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/jibx/runtime/IntStack;->m_countPresent:I

    aget v0, v0, v1

    return v0

    .line 189
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "Attempt to pop empty stack"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pop(I)I
    .locals 2
    .parameter "count"

    .prologue
    .line 206
    if-gtz p1, :cond_0

    .line 207
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Count must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_0
    iget v0, p0, Lorg/jibx/runtime/IntStack;->m_countPresent:I

    if-lt v0, p1, :cond_1

    .line 209
    iget v0, p0, Lorg/jibx/runtime/IntStack;->m_countPresent:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/jibx/runtime/IntStack;->m_countPresent:I

    .line 210
    iget-object v0, p0, Lorg/jibx/runtime/IntStack;->m_baseArray:[I

    iget v1, p0, Lorg/jibx/runtime/IntStack;->m_countPresent:I

    aget v0, v0, v1

    return v0

    .line 212
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "Attempt to pop past end of stack"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public push(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 174
    invoke-direct {p0}, Lorg/jibx/runtime/IntStack;->getAddIndex()I

    move-result v0

    .line 175
    .local v0, index:I
    iget-object v1, p0, Lorg/jibx/runtime/IntStack;->m_baseArray:[I

    aput p1, v1, v0

    .line 176
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lorg/jibx/runtime/IntStack;->m_countPresent:I

    return v0
.end method

.method public toArray()[I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 258
    iget v1, p0, Lorg/jibx/runtime/IntStack;->m_countPresent:I

    new-array v0, v1, [I

    .line 259
    .local v0, copy:[I
    iget-object v1, p0, Lorg/jibx/runtime/IntStack;->m_baseArray:[I

    iget v2, p0, Lorg/jibx/runtime/IntStack;->m_countPresent:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 260
    return-object v0
.end method
