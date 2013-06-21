.class Lorg/mozilla/javascript/optimizer/DataFlowBitSet;
.super Ljava/lang/Object;
.source "DataFlowBitSet.java"


# instance fields
.field private itsBits:[I

.field private itsSize:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lorg/mozilla/javascript/optimizer/DataFlowBitSet;->itsSize:I

    .line 50
    add-int/lit8 v0, p1, 0x1f

    shr-int/lit8 v0, v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/mozilla/javascript/optimizer/DataFlowBitSet;->itsBits:[I

    .line 51
    return-void
.end method

.method private badIndex(I)V
    .locals 3
    .parameter "n"

    .prologue
    .line 133
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DataFlowBitSet bad index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method clear()V
    .locals 4

    .prologue
    .line 80
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/DataFlowBitSet;->itsBits:[I

    array-length v0, v2

    .line 81
    .local v0, bitsLength:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 82
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/DataFlowBitSet;->itsBits:[I

    const/4 v3, 0x0

    aput v3, v2, v1

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    :cond_0
    return-void
.end method

.method clear(I)V
    .locals 5
    .parameter "n"

    .prologue
    .line 74
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/mozilla/javascript/optimizer/DataFlowBitSet;->itsSize:I

    if-lt p1, v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/optimizer/DataFlowBitSet;->badIndex(I)V

    .line 75
    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/DataFlowBitSet;->itsBits:[I

    shr-int/lit8 v1, p1, 0x5

    aget v2, v0, v1

    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    aput v2, v0, v1

    .line 76
    return-void
.end method

.method df(Lorg/mozilla/javascript/optimizer/DataFlowBitSet;Lorg/mozilla/javascript/optimizer/DataFlowBitSet;Lorg/mozilla/javascript/optimizer/DataFlowBitSet;)Z
    .locals 7
    .parameter "in"
    .parameter "gen"
    .parameter "notKill"

    .prologue
    .line 109
    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/DataFlowBitSet;->itsBits:[I

    array-length v0, v4

    .line 110
    .local v0, bitsLength:I
    const/4 v1, 0x0

    .line 111
    .local v1, changed:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 112
    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/DataFlowBitSet;->itsBits:[I

    aget v3, v4, v2

    .line 113
    .local v3, oldBits:I
    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/DataFlowBitSet;->itsBits:[I

    iget-object v5, p1, Lorg/mozilla/javascript/optimizer/DataFlowBitSet;->itsBits:[I

    aget v5, v5, v2

    iget-object v6, p2, Lorg/mozilla/javascript/optimizer/DataFlowBitSet;->itsBits:[I

    aget v6, v6, v2

    or-int/2addr v5, v6

    iget-object v6, p3, Lorg/mozilla/javascript/optimizer/DataFlowBitSet;->itsBits:[I

    aget v6, v6, v2

    and-int/2addr v5, v6

    aput v5, v4, v2

    .line 114
    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/DataFlowBitSet;->itsBits:[I

    aget v4, v4, v2

    if-eq v3, v4, :cond_0

    const/4 v4, 0x1

    :goto_1
    or-int/2addr v1, v4

    .line 111
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 114
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 116
    .end local v3           #oldBits:I
    :cond_1
    return v1
.end method

.method df2(Lorg/mozilla/javascript/optimizer/DataFlowBitSet;Lorg/mozilla/javascript/optimizer/DataFlowBitSet;Lorg/mozilla/javascript/optimizer/DataFlowBitSet;)Z
    .locals 7
    .parameter "in"
    .parameter "gen"
    .parameter "notKill"

    .prologue
    .line 121
    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/DataFlowBitSet;->itsBits:[I

    array-length v0, v4

    .line 122
    .local v0, bitsLength:I
    const/4 v1, 0x0

    .line 123
    .local v1, changed:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 124
    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/DataFlowBitSet;->itsBits:[I

    aget v3, v4, v2

    .line 125
    .local v3, oldBits:I
    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/DataFlowBitSet;->itsBits:[I

    iget-object v5, p1, Lorg/mozilla/javascript/optimizer/DataFlowBitSet;->itsBits:[I

    aget v5, v5, v2

    iget-object v6, p3, Lorg/mozilla/javascript/optimizer/DataFlowBitSet;->itsBits:[I

    aget v6, v6, v2

    and-int/2addr v5, v6

    iget-object v6, p2, Lorg/mozilla/javascript/optimizer/DataFlowBitSet;->itsBits:[I

    aget v6, v6, v2

    or-int/2addr v5, v6

    aput v5, v4, v2

    .line 126
    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/DataFlowBitSet;->itsBits:[I

    aget v4, v4, v2

    if-eq v3, v4, :cond_0

    const/4 v4, 0x1

    :goto_1
    or-int/2addr v1, v4

    .line 123
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 126
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 128
    .end local v3           #oldBits:I
    :cond_1
    return v1
.end method

.method not()V
    .locals 4

    .prologue
    .line 67
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/DataFlowBitSet;->itsBits:[I

    array-length v0, v2

    .line 68
    .local v0, bitsLength:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 69
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/DataFlowBitSet;->itsBits:[I

    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/DataFlowBitSet;->itsBits:[I

    aget v3, v3, v1

    xor-int/lit8 v3, v3, -0x1

    aput v3, v2, v1

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    :cond_0
    return-void
.end method

.method or(Lorg/mozilla/javascript/optimizer/DataFlowBitSet;)V
    .locals 5
    .parameter "b"

    .prologue
    .line 87
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/DataFlowBitSet;->itsBits:[I

    array-length v0, v2

    .line 88
    .local v0, bitsLength:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 89
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/DataFlowBitSet;->itsBits:[I

    aget v3, v2, v1

    iget-object v4, p1, Lorg/mozilla/javascript/optimizer/DataFlowBitSet;->itsBits:[I

    aget v4, v4, v1

    or-int/2addr v3, v4

    aput v3, v2, v1

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    :cond_0
    return-void
.end method

.method set(I)V
    .locals 5
    .parameter "n"

    .prologue
    .line 55
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/mozilla/javascript/optimizer/DataFlowBitSet;->itsSize:I

    if-lt p1, v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/optimizer/DataFlowBitSet;->badIndex(I)V

    .line 56
    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/DataFlowBitSet;->itsBits:[I

    shr-int/lit8 v1, p1, 0x5

    aget v2, v0, v1

    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 57
    return-void
.end method

.method test(I)Z
    .locals 3
    .parameter "n"

    .prologue
    const/4 v2, 0x1

    .line 61
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/mozilla/javascript/optimizer/DataFlowBitSet;->itsSize:I

    if-lt p1, v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/optimizer/DataFlowBitSet;->badIndex(I)V

    .line 62
    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/DataFlowBitSet;->itsBits:[I

    shr-int/lit8 v1, p1, 0x5

    aget v0, v0, v1

    and-int/lit8 v1, p1, 0x1f

    shl-int v1, v2, v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    move v0, v2

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 95
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 96
    .local v2, sb:Ljava/lang/StringBuffer;
    const-string v3, "DataFlowBitSet, size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    iget v3, p0, Lorg/mozilla/javascript/optimizer/DataFlowBitSet;->itsSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 98
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 99
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/DataFlowBitSet;->itsBits:[I

    array-length v0, v3

    .line 100
    .local v0, bitsLength:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 101
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/DataFlowBitSet;->itsBits:[I

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
