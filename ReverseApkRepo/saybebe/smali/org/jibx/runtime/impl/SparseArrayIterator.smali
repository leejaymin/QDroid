.class public Lorg/jibx/runtime/impl/SparseArrayIterator;
.super Ljava/lang/Object;
.source "SparseArrayIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field protected m_array:[Ljava/lang/Object;

.field protected m_offset:I


# direct methods
.method private constructor <init>([Ljava/lang/Object;)V
    .locals 1
    .parameter "array"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/jibx/runtime/impl/SparseArrayIterator;->m_array:[Ljava/lang/Object;

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lorg/jibx/runtime/impl/SparseArrayIterator;->m_offset:I

    .line 52
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/SparseArrayIterator;->advance()Z

    .line 53
    return-void
.end method

.method public static buildIterator([Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 1
    .parameter "array"

    .prologue
    .line 115
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 116
    :cond_0
    sget-object v0, Lorg/jibx/runtime/impl/ArrayRangeIterator;->EMPTY_ITERATOR:Lorg/jibx/runtime/impl/ArrayRangeIterator;

    .line 118
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lorg/jibx/runtime/impl/SparseArrayIterator;

    invoke-direct {v0, p0}, Lorg/jibx/runtime/impl/SparseArrayIterator;-><init>([Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected advance()Z
    .locals 2

    .prologue
    .line 63
    :cond_0
    iget v0, p0, Lorg/jibx/runtime/impl/SparseArrayIterator;->m_offset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jibx/runtime/impl/SparseArrayIterator;->m_offset:I

    iget-object v1, p0, Lorg/jibx/runtime/impl/SparseArrayIterator;->m_array:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 64
    iget-object v0, p0, Lorg/jibx/runtime/impl/SparseArrayIterator;->m_array:[Ljava/lang/Object;

    iget v1, p0, Lorg/jibx/runtime/impl/SparseArrayIterator;->m_offset:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 65
    const/4 v0, 0x1

    .line 68
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 78
    iget v0, p0, Lorg/jibx/runtime/impl/SparseArrayIterator;->m_offset:I

    iget-object v1, p0, Lorg/jibx/runtime/impl/SparseArrayIterator;->m_array:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 88
    iget v1, p0, Lorg/jibx/runtime/impl/SparseArrayIterator;->m_offset:I

    iget-object v2, p0, Lorg/jibx/runtime/impl/SparseArrayIterator;->m_array:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 89
    iget-object v1, p0, Lorg/jibx/runtime/impl/SparseArrayIterator;->m_array:[Ljava/lang/Object;

    iget v2, p0, Lorg/jibx/runtime/impl/SparseArrayIterator;->m_offset:I

    aget-object v0, v1, v2

    .line 90
    .local v0, result:Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/SparseArrayIterator;->advance()Z

    .line 91
    return-object v0

    .line 93
    .end local v0           #result:Ljava/lang/Object;
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 104
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
