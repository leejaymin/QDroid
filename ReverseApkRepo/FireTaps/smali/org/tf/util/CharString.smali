.class public Lorg/tf/util/CharString;
.super Ljava/lang/Object;
.source "CharString.java"

# interfaces
.implements Ljava/lang/CharSequence;


# instance fields
.field private m_buffer:[C

.field private m_length:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "bufferCapacity"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-array v0, p1, [C

    iput-object v0, p0, Lorg/tf/util/CharString;->m_buffer:[C

    .line 24
    return-void
.end method

.method private constructor <init>([CI)V
    .locals 0
    .parameter "buffer"
    .parameter "length"

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lorg/tf/util/CharString;->m_buffer:[C

    .line 106
    iput p2, p0, Lorg/tf/util/CharString;->m_length:I

    .line 107
    return-void
.end method

.method private growBuffer(I)V
    .locals 4
    .parameter "delta"

    .prologue
    const/4 v3, 0x0

    .line 110
    iget-object v1, p0, Lorg/tf/util/CharString;->m_buffer:[C

    array-length v1, v1

    iget v2, p0, Lorg/tf/util/CharString;->m_length:I

    sub-int/2addr v1, v2

    if-lt v1, p1, :cond_0

    .line 116
    :goto_0
    return-void

    .line 113
    :cond_0
    iget v1, p0, Lorg/tf/util/CharString;->m_length:I

    add-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [C

    .line 114
    .local v0, copy:[C
    iget-object v1, p0, Lorg/tf/util/CharString;->m_buffer:[C

    iget v2, p0, Lorg/tf/util/CharString;->m_length:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    iput-object v0, p0, Lorg/tf/util/CharString;->m_buffer:[C

    goto :goto_0
.end method


# virtual methods
.method public append(C)Lorg/tf/util/CharString;
    .locals 3
    .parameter "value"

    .prologue
    .line 58
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/tf/util/CharString;->growBuffer(I)V

    .line 59
    iget-object v0, p0, Lorg/tf/util/CharString;->m_buffer:[C

    iget v1, p0, Lorg/tf/util/CharString;->m_length:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/tf/util/CharString;->m_length:I

    aput-char p1, v0, v1

    .line 60
    return-object p0
.end method

.method public append(I)Lorg/tf/util/CharString;
    .locals 7
    .parameter "value"

    .prologue
    .line 64
    if-nez p1, :cond_0

    .line 65
    const/16 v6, 0x30

    invoke-virtual {p0, v6}, Lorg/tf/util/CharString;->append(C)Lorg/tf/util/CharString;

    move-result-object v6

    .line 88
    :goto_0
    return-object v6

    .line 67
    :cond_0
    const/high16 v6, -0x8000

    if-ne p1, v6, :cond_1

    .line 68
    const-string v6, "-2147483648"

    invoke-virtual {p0, v6}, Lorg/tf/util/CharString;->append(Ljava/lang/CharSequence;)Lorg/tf/util/CharString;

    move-result-object v6

    goto :goto_0

    .line 70
    :cond_1
    const/16 v6, 0xb

    invoke-direct {p0, v6}, Lorg/tf/util/CharString;->growBuffer(I)V

    .line 71
    iget-object v0, p0, Lorg/tf/util/CharString;->m_buffer:[C

    .line 72
    .local v0, buffer:[C
    iget v3, p0, Lorg/tf/util/CharString;->m_length:I

    .line 73
    .local v3, out:I
    if-gez p1, :cond_2

    .line 74
    add-int/lit8 v4, v3, 0x1

    .end local v3           #out:I
    .local v4, out:I
    const/16 v6, 0x2d

    aput-char v6, v0, v3

    .line 75
    neg-int p1, p1

    move v3, v4

    .line 77
    .end local v4           #out:I
    .restart local v3       #out:I
    :cond_2
    const/4 v5, 0x1

    .line 78
    .local v5, skipZeroes:Z
    const v2, 0x3b9aca00

    .local v2, divider:I
    move v4, v3

    .end local v3           #out:I
    .restart local v4       #out:I
    :goto_1
    if-nez v2, :cond_3

    .line 87
    iput v4, p0, Lorg/tf/util/CharString;->m_length:I

    move-object v6, p0

    .line 88
    goto :goto_0

    .line 79
    :cond_3
    div-int v1, p1, v2

    .line 80
    .local v1, digit:I
    if-nez v1, :cond_4

    if-eqz v5, :cond_4

    move v3, v4

    .line 78
    .end local v4           #out:I
    .restart local v3       #out:I
    :goto_2
    div-int/lit8 v2, v2, 0xa

    move v4, v3

    .end local v3           #out:I
    .restart local v4       #out:I
    goto :goto_1

    .line 83
    :cond_4
    const/4 v5, 0x0

    .line 84
    add-int/lit8 v3, v4, 0x1

    .end local v4           #out:I
    .restart local v3       #out:I
    add-int/lit8 v6, v1, 0x30

    int-to-char v6, v6

    aput-char v6, v0, v4

    .line 85
    rem-int/2addr p1, v2

    goto :goto_2
.end method

.method public append(Ljava/lang/CharSequence;)Lorg/tf/util/CharString;
    .locals 6
    .parameter "value"

    .prologue
    .line 92
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-direct {p0, v5}, Lorg/tf/util/CharString;->growBuffer(I)V

    .line 93
    iget-object v0, p0, Lorg/tf/util/CharString;->m_buffer:[C

    .line 94
    .local v0, buffer:[C
    iget v3, p0, Lorg/tf/util/CharString;->m_length:I

    .line 95
    .local v3, out:I
    const/4 v2, 0x0

    .local v2, i:I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .local v1, e:I
    move v4, v3

    .end local v3           #out:I
    .local v4, out:I
    :goto_0
    if-ne v2, v1, :cond_0

    .line 98
    iput v4, p0, Lorg/tf/util/CharString;->m_length:I

    .line 99
    return-object p0

    .line 96
    :cond_0
    add-int/lit8 v3, v4, 0x1

    .end local v4           #out:I
    .restart local v3       #out:I
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    aput-char v5, v0, v4

    .line 95
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    .end local v3           #out:I
    .restart local v4       #out:I
    goto :goto_0
.end method

.method public charAt(I)C
    .locals 2
    .parameter "index"

    .prologue
    .line 27
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/tf/util/CharString;->m_length:I

    if-lt p1, v0, :cond_1

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_1
    iget-object v0, p0, Lorg/tf/util/CharString;->m_buffer:[C

    aget-char v0, v0, p1

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lorg/tf/util/CharString;->m_length:I

    .line 55
    return-void
.end method

.method public length()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lorg/tf/util/CharString;->m_length:I

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 38
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 39
    iget v1, p0, Lorg/tf/util/CharString;->m_length:I

    if-ge p1, v1, :cond_0

    iget v1, p0, Lorg/tf/util/CharString;->m_length:I

    if-ge p2, v1, :cond_0

    .line 40
    if-le p1, p2, :cond_1

    .line 42
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 44
    :cond_1
    sub-int v1, p2, p1

    new-array v0, v1, [C

    .line 45
    .local v0, copy:[C
    iget-object v1, p0, Lorg/tf/util/CharString;->m_buffer:[C

    const/4 v2, 0x0

    sub-int v3, p2, p1

    invoke-static {v1, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    new-instance v1, Lorg/tf/util/CharString;

    sub-int v2, p2, p1

    invoke-direct {v1, v0, v2}, Lorg/tf/util/CharString;-><init>([CI)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 50
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/tf/util/CharString;->m_buffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lorg/tf/util/CharString;->m_length:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
