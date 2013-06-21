.class public Lorg/jibx/runtime/impl/ArrayRangeIterator;
.super Ljava/lang/Object;
.source "ArrayRangeIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# static fields
.field public static final EMPTY_ITERATOR:Lorg/jibx/runtime/impl/ArrayRangeIterator;


# instance fields
.field protected m_array:[Ljava/lang/Object;

.field protected m_limit:I

.field protected m_offset:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 44
    new-instance v0, Lorg/jibx/runtime/impl/ArrayRangeIterator;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/jibx/runtime/impl/ArrayRangeIterator;-><init>([Ljava/lang/Object;II)V

    sput-object v0, Lorg/jibx/runtime/impl/ArrayRangeIterator;->EMPTY_ITERATOR:Lorg/jibx/runtime/impl/ArrayRangeIterator;

    return-void
.end method

.method private constructor <init>([Ljava/lang/Object;II)V
    .locals 0
    .parameter "array"
    .parameter "start"
    .parameter "limit"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lorg/jibx/runtime/impl/ArrayRangeIterator;->m_array:[Ljava/lang/Object;

    .line 65
    iput p2, p0, Lorg/jibx/runtime/impl/ArrayRangeIterator;->m_offset:I

    .line 66
    iput p3, p0, Lorg/jibx/runtime/impl/ArrayRangeIterator;->m_limit:I

    .line 67
    return-void
.end method

.method public static buildIterator([Ljava/lang/Object;II)Ljava/util/Iterator;
    .locals 1
    .parameter "array"
    .parameter "start"
    .parameter "limit"

    .prologue
    .line 113
    if-eqz p0, :cond_0

    if-lt p1, p2, :cond_1

    .line 114
    :cond_0
    sget-object v0, Lorg/jibx/runtime/impl/ArrayRangeIterator;->EMPTY_ITERATOR:Lorg/jibx/runtime/impl/ArrayRangeIterator;

    .line 116
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lorg/jibx/runtime/impl/ArrayRangeIterator;

    invoke-direct {v0, p0, p1, p2}, Lorg/jibx/runtime/impl/ArrayRangeIterator;-><init>([Ljava/lang/Object;II)V

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 76
    iget v0, p0, Lorg/jibx/runtime/impl/ArrayRangeIterator;->m_offset:I

    iget v1, p0, Lorg/jibx/runtime/impl/ArrayRangeIterator;->m_limit:I

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
    .line 86
    iget v0, p0, Lorg/jibx/runtime/impl/ArrayRangeIterator;->m_offset:I

    iget v1, p0, Lorg/jibx/runtime/impl/ArrayRangeIterator;->m_limit:I

    if-ge v0, v1, :cond_0

    .line 87
    iget-object v0, p0, Lorg/jibx/runtime/impl/ArrayRangeIterator;->m_array:[Ljava/lang/Object;

    iget v1, p0, Lorg/jibx/runtime/impl/ArrayRangeIterator;->m_offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jibx/runtime/impl/ArrayRangeIterator;->m_offset:I

    aget-object v0, v0, v1

    return-object v0

    .line 89
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 100
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
