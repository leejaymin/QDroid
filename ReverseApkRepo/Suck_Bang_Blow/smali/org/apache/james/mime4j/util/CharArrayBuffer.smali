.class public final Lorg/apache/james/mime4j/util/CharArrayBuffer;
.super Ljava/lang/Object;
.source "CharArrayBuffer.java"


# instance fields
.field private buffer:[C

.field private len:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .parameter "capacity"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    if-gez p1, :cond_0

    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer capacity may not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    new-array v0, p1, [C

    iput-object v0, p0, Lorg/apache/james/mime4j/util/CharArrayBuffer;->buffer:[C

    .line 38
    return-void
.end method

.method private expand(I)V
    .locals 4
    .parameter "newlen"

    .prologue
    const/4 v3, 0x0

    .line 41
    iget-object v1, p0, Lorg/apache/james/mime4j/util/CharArrayBuffer;->buffer:[C

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v0, v1, [C

    .line 42
    .local v0, newbuffer:[C
    iget-object v1, p0, Lorg/apache/james/mime4j/util/CharArrayBuffer;->buffer:[C

    iget v2, p0, Lorg/apache/james/mime4j/util/CharArrayBuffer;->len:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    iput-object v0, p0, Lorg/apache/james/mime4j/util/CharArrayBuffer;->buffer:[C

    .line 44
    return-void
.end method


# virtual methods
.method public append(C)V
    .locals 3
    .parameter "ch"

    .prologue
    .line 93
    iget v1, p0, Lorg/apache/james/mime4j/util/CharArrayBuffer;->len:I

    add-int/lit8 v0, v1, 0x1

    .line 94
    .local v0, newlen:I
    iget-object v1, p0, Lorg/apache/james/mime4j/util/CharArrayBuffer;->buffer:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 95
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->expand(I)V

    .line 97
    :cond_0
    iget-object v1, p0, Lorg/apache/james/mime4j/util/CharArrayBuffer;->buffer:[C

    iget v2, p0, Lorg/apache/james/mime4j/util/CharArrayBuffer;->len:I

    aput-char p1, v1, v2

    .line 98
    iput v0, p0, Lorg/apache/james/mime4j/util/CharArrayBuffer;->len:I

    .line 99
    return-void
.end method

.method public append(Ljava/lang/Object;)V
    .locals 1
    .parameter "obj"

    .prologue
    .line 135
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public append(Ljava/lang/String;)V
    .locals 5
    .parameter "str"

    .prologue
    .line 66
    if-nez p1, :cond_0

    .line 67
    const-string p1, "null"

    .line 69
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 70
    .local v1, strlen:I
    iget v2, p0, Lorg/apache/james/mime4j/util/CharArrayBuffer;->len:I

    add-int v0, v2, v1

    .line 71
    .local v0, newlen:I
    iget-object v2, p0, Lorg/apache/james/mime4j/util/CharArrayBuffer;->buffer:[C

    array-length v2, v2

    if-le v0, v2, :cond_1

    .line 72
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->expand(I)V

    .line 74
    :cond_1
    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/james/mime4j/util/CharArrayBuffer;->buffer:[C

    iget v4, p0, Lorg/apache/james/mime4j/util/CharArrayBuffer;->len:I

    invoke-virtual {p1, v2, v1, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 75
    iput v0, p0, Lorg/apache/james/mime4j/util/CharArrayBuffer;->len:I

    .line 76
    return-void
.end method

.method public append(Lorg/apache/james/mime4j/util/ByteArrayBuffer;II)V
    .locals 1
    .parameter "b"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 128
    if-nez p1, :cond_0

    .line 132
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-virtual {p1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer()[B

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->append([BII)V

    goto :goto_0
.end method

.method public append(Lorg/apache/james/mime4j/util/CharArrayBuffer;)V
    .locals 3
    .parameter "b"

    .prologue
    .line 86
    if-nez p1, :cond_0

    .line 90
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p1, Lorg/apache/james/mime4j/util/CharArrayBuffer;->buffer:[C

    const/4 v1, 0x0

    iget v2, p1, Lorg/apache/james/mime4j/util/CharArrayBuffer;->len:I

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->append([CII)V

    goto :goto_0
.end method

.method public append(Lorg/apache/james/mime4j/util/CharArrayBuffer;II)V
    .locals 1
    .parameter "b"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 79
    if-nez p1, :cond_0

    .line 83
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p1, Lorg/apache/james/mime4j/util/CharArrayBuffer;->buffer:[C

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->append([CII)V

    goto :goto_0
.end method

.method public append([BII)V
    .locals 7
    .parameter "b"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 102
    if-nez p1, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    if-ltz p2, :cond_2

    array-length v5, p1

    if-gt p2, v5, :cond_2

    if-ltz p3, :cond_2

    add-int v5, p2, p3

    if-ltz v5, :cond_2

    add-int v5, p2, p3

    array-length v6, p1

    if-le v5, v6, :cond_3

    .line 107
    :cond_2
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v5

    .line 109
    :cond_3
    if-eqz p3, :cond_0

    .line 112
    iget v4, p0, Lorg/apache/james/mime4j/util/CharArrayBuffer;->len:I

    .line 113
    .local v4, oldlen:I
    add-int v3, v4, p3

    .line 114
    .local v3, newlen:I
    iget-object v5, p0, Lorg/apache/james/mime4j/util/CharArrayBuffer;->buffer:[C

    array-length v5, v5

    if-le v3, v5, :cond_4

    .line 115
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->expand(I)V

    .line 117
    :cond_4
    move v1, p2

    .local v1, i1:I
    move v2, v4

    .local v2, i2:I
    :goto_1
    if-ge v2, v3, :cond_6

    .line 118
    aget-byte v0, p1, v1

    .line 119
    .local v0, ch:I
    if-gez v0, :cond_5

    .line 120
    add-int/lit16 v0, v0, 0x100

    .line 122
    :cond_5
    iget-object v5, p0, Lorg/apache/james/mime4j/util/CharArrayBuffer;->buffer:[C

    int-to-char v6, v0

    aput-char v6, v5, v2

    .line 117
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 124
    .end local v0           #ch:I
    :cond_6
    iput v3, p0, Lorg/apache/james/mime4j/util/CharArrayBuffer;->len:I

    goto :goto_0
.end method

.method public append([CII)V
    .locals 3
    .parameter "b"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 47
    if-nez p1, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    if-ltz p2, :cond_2

    array-length v1, p1

    if-gt p2, v1, :cond_2

    if-ltz p3, :cond_2

    add-int v1, p2, p3

    if-ltz v1, :cond_2

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_3

    .line 52
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 54
    :cond_3
    if-eqz p3, :cond_0

    .line 57
    iget v1, p0, Lorg/apache/james/mime4j/util/CharArrayBuffer;->len:I

    add-int v0, v1, p3

    .line 58
    .local v0, newlen:I
    iget-object v1, p0, Lorg/apache/james/mime4j/util/CharArrayBuffer;->buffer:[C

    array-length v1, v1

    if-le v0, v1, :cond_4

    .line 59
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->expand(I)V

    .line 61
    :cond_4
    iget-object v1, p0, Lorg/apache/james/mime4j/util/CharArrayBuffer;->buffer:[C

    iget v2, p0, Lorg/apache/james/mime4j/util/CharArrayBuffer;->len:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    iput v0, p0, Lorg/apache/james/mime4j/util/CharArrayBuffer;->len:I

    goto :goto_0
.end method

.method public buffer()[C
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/apache/james/mime4j/util/CharArrayBuffer;->buffer:[C

    return-object v0
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lorg/apache/james/mime4j/util/CharArrayBuffer;->buffer:[C

    array-length v0, v0

    return v0
.end method

.method public charAt(I)C
    .locals 1
    .parameter "i"

    .prologue
    .line 151
    iget-object v0, p0, Lorg/apache/james/mime4j/util/CharArrayBuffer;->buffer:[C

    aget-char v0, v0, p1

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/util/CharArrayBuffer;->len:I

    .line 140
    return-void
.end method

.method public ensureCapacity(I)V
    .locals 3
    .parameter "required"

    .prologue
    .line 167
    iget-object v1, p0, Lorg/apache/james/mime4j/util/CharArrayBuffer;->buffer:[C

    array-length v1, v1

    iget v2, p0, Lorg/apache/james/mime4j/util/CharArrayBuffer;->len:I

    sub-int v0, v1, v2

    .line 168
    .local v0, available:I
    if-le p1, v0, :cond_0

    .line 169
    iget v1, p0, Lorg/apache/james/mime4j/util/CharArrayBuffer;->len:I

    add-int/2addr v1, p1

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->expand(I)V

    .line 171
    :cond_0
    return-void
.end method

.method public indexOf(I)I
    .locals 2
    .parameter "ch"

    .prologue
    .line 207
    const/4 v0, 0x0

    iget v1, p0, Lorg/apache/james/mime4j/util/CharArrayBuffer;->len:I

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->indexOf(III)I

    move-result v0

    return v0
.end method

.method public indexOf(III)I
    .locals 3
    .parameter "ch"
    .parameter "beginIndex"
    .parameter "endIndex"

    .prologue
    const/4 v2, -0x1

    .line 189
    if-gez p2, :cond_0

    .line 190
    const/4 p2, 0x0

    .line 192
    :cond_0
    iget v1, p0, Lorg/apache/james/mime4j/util/CharArrayBuffer;->len:I

    if-le p3, v1, :cond_1

    .line 193
    iget p3, p0, Lorg/apache/james/mime4j/util/CharArrayBuffer;->len:I

    .line 195
    :cond_1
    if-le p2, p3, :cond_2

    move v1, v2

    .line 203
    :goto_0
    return v1

    .line 198
    :cond_2
    move v0, p2

    .local v0, i:I
    :goto_1
    if-ge v0, p3, :cond_4

    .line 199
    iget-object v1, p0, Lorg/apache/james/mime4j/util/CharArrayBuffer;->buffer:[C

    aget-char v1, v1, v0

    if-ne v1, p1, :cond_3

    move v1, v0

    .line 200
    goto :goto_0

    .line 198
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v1, v2

    .line 203
    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lorg/apache/james/mime4j/util/CharArrayBuffer;->len:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFull()Z
    .locals 2

    .prologue
    .line 185
    iget v0, p0, Lorg/apache/james/mime4j/util/CharArrayBuffer;->len:I

    iget-object v1, p0, Lorg/apache/james/mime4j/util/CharArrayBuffer;->buffer:[C

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lorg/apache/james/mime4j/util/CharArrayBuffer;->len:I

    return v0
.end method

.method public setLength(I)V
    .locals 1
    .parameter "len"

    .prologue
    .line 174
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/james/mime4j/util/CharArrayBuffer;->buffer:[C

    array-length v0, v0

    if-le p1, v0, :cond_1

    .line 175
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 177
    :cond_1
    iput p1, p0, Lorg/apache/james/mime4j/util/CharArrayBuffer;->len:I

    .line 178
    return-void
.end method

.method public substring(II)Ljava/lang/String;
    .locals 3
    .parameter "beginIndex"
    .parameter "endIndex"

    .prologue
    .line 211
    if-gez p1, :cond_0

    .line 212
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 214
    :cond_0
    iget v0, p0, Lorg/apache/james/mime4j/util/CharArrayBuffer;->len:I

    if-le p2, v0, :cond_1

    .line 215
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 217
    :cond_1
    if-le p1, p2, :cond_2

    .line 218
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 220
    :cond_2
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/james/mime4j/util/CharArrayBuffer;->buffer:[C

    sub-int v2, p2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public substringTrimmed(II)Ljava/lang/String;
    .locals 3
    .parameter "beginIndex"
    .parameter "endIndex"

    .prologue
    .line 224
    if-gez p1, :cond_0

    .line 225
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 227
    :cond_0
    iget v0, p0, Lorg/apache/james/mime4j/util/CharArrayBuffer;->len:I

    if-le p2, v0, :cond_1

    .line 228
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 230
    :cond_1
    if-le p1, p2, :cond_2

    .line 231
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 233
    :cond_2
    :goto_0
    if-ge p1, p2, :cond_3

    iget-object v0, p0, Lorg/apache/james/mime4j/util/CharArrayBuffer;->buffer:[C

    aget-char v0, v0, p1

    invoke-static {v0}, Lorg/apache/james/mime4j/util/MessageUtils;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 234
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 236
    :cond_3
    :goto_1
    if-le p2, p1, :cond_4

    iget-object v0, p0, Lorg/apache/james/mime4j/util/CharArrayBuffer;->buffer:[C

    const/4 v1, 0x1

    sub-int v1, p2, v1

    aget-char v0, v0, v1

    invoke-static {v0}, Lorg/apache/james/mime4j/util/MessageUtils;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 237
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 239
    :cond_4
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/james/mime4j/util/CharArrayBuffer;->buffer:[C

    sub-int v2, p2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public toCharArray()[C
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 143
    iget v1, p0, Lorg/apache/james/mime4j/util/CharArrayBuffer;->len:I

    new-array v0, v1, [C

    .line 144
    .local v0, b:[C
    iget v1, p0, Lorg/apache/james/mime4j/util/CharArrayBuffer;->len:I

    if-lez v1, :cond_0

    .line 145
    iget-object v1, p0, Lorg/apache/james/mime4j/util/CharArrayBuffer;->buffer:[C

    iget v2, p0, Lorg/apache/james/mime4j/util/CharArrayBuffer;->len:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 243
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/james/mime4j/util/CharArrayBuffer;->buffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lorg/apache/james/mime4j/util/CharArrayBuffer;->len:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
