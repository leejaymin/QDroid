.class public Lcom/trilead/ssh2/packets/TypesWriter;
.super Ljava/lang/Object;
.source "TypesWriter.java"


# instance fields
.field arr:[B

.field pos:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/trilead/ssh2/packets/TypesWriter;->arr:[B

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    .line 22
    return-void
.end method

.method private resize(I)V
    .locals 4
    .parameter "len"

    .prologue
    const/4 v3, 0x0

    .line 26
    new-array v0, p1, [B

    .line 27
    .local v0, new_arr:[B
    iget-object v1, p0, Lcom/trilead/ssh2/packets/TypesWriter;->arr:[B

    iget-object v2, p0, Lcom/trilead/ssh2/packets/TypesWriter;->arr:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    iput-object v0, p0, Lcom/trilead/ssh2/packets/TypesWriter;->arr:[B

    .line 29
    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 38
    iget v1, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    new-array v0, v1, [B

    .line 39
    .local v0, dst:[B
    iget-object v1, p0, Lcom/trilead/ssh2/packets/TypesWriter;->arr:[B

    iget v2, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    return-object v0
.end method

.method public writeBoolean(Z)V
    .locals 3
    .parameter "v"

    .prologue
    .line 82
    iget v0, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/trilead/ssh2/packets/TypesWriter;->arr:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/trilead/ssh2/packets/TypesWriter;->arr:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x20

    invoke-direct {p0, v0}, Lcom/trilead/ssh2/packets/TypesWriter;->resize(I)V

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/trilead/ssh2/packets/TypesWriter;->arr:[B

    iget v2, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    aput-byte v0, v1, v2

    .line 86
    return-void

    .line 85
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeByte(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 98
    iget v0, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    invoke-virtual {p0, p1, v0}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(II)V

    .line 99
    iget v0, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    .line 100
    return-void
.end method

.method public writeByte(II)V
    .locals 2
    .parameter "v"
    .parameter "off"

    .prologue
    .line 90
    add-int/lit8 v0, p2, 0x1

    iget-object v1, p0, Lcom/trilead/ssh2/packets/TypesWriter;->arr:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 91
    add-int/lit8 v0, p2, 0x20

    invoke-direct {p0, v0}, Lcom/trilead/ssh2/packets/TypesWriter;->resize(I)V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/packets/TypesWriter;->arr:[B

    int-to-byte v1, p1

    aput-byte v1, v0, p2

    .line 94
    return-void
.end method

.method public writeBytes([B)V
    .locals 2
    .parameter "buff"

    .prologue
    .line 114
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeBytes([BII)V

    .line 115
    return-void
.end method

.method public writeBytes([BII)V
    .locals 2
    .parameter "buff"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 119
    iget v0, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/trilead/ssh2/packets/TypesWriter;->arr:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/trilead/ssh2/packets/TypesWriter;->arr:[B

    array-length v0, v0

    add-int/2addr v0, p3

    add-int/lit8 v0, v0, 0x20

    invoke-direct {p0, v0}, Lcom/trilead/ssh2/packets/TypesWriter;->resize(I)V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/packets/TypesWriter;->arr:[B

    iget v1, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    iget v0, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    .line 124
    return-void
.end method

.method public writeMPInt(Ljava/math/BigInteger;)V
    .locals 4
    .parameter "b"

    .prologue
    const/4 v3, 0x0

    .line 104
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 106
    .local v0, raw:[B
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    aget-byte v1, v0, v3

    if-nez v1, :cond_0

    .line 107
    invoke-virtual {p0, v3}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 110
    :goto_0
    return-void

    .line 109
    :cond_0
    array-length v1, v0

    invoke-virtual {p0, v0, v3, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    goto :goto_0
.end method

.method public writeNameList([Ljava/lang/String;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 160
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 161
    .local v1, sb:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    .line 167
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 168
    return-void

    .line 163
    :cond_0
    if-lez v0, :cond_1

    .line 164
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 165
    :cond_1
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 139
    :try_start_0
    const-string v2, "ISO-8859-1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 146
    .local v0, b:[B
    :goto_0
    array-length v2, v0

    invoke-virtual {p0, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 147
    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {p0, v0, v2, v3}, Lcom/trilead/ssh2/packets/TypesWriter;->writeBytes([BII)V

    .line 148
    return-void

    .line 141
    .end local v0           #b:[B
    :catch_0
    move-exception v1

    .line 143
    .local v1, ignore:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .restart local v0       #b:[B
    goto :goto_0
.end method

.method public writeString([BII)V
    .locals 0
    .parameter "buff"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 128
    invoke-virtual {p0, p3}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 129
    invoke-virtual {p0, p1, p2, p3}, Lcom/trilead/ssh2/packets/TypesWriter;->writeBytes([BII)V

    .line 130
    return-void
.end method

.method public writeUINT32(I)V
    .locals 1
    .parameter "val"

    .prologue
    .line 61
    iget v0, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    invoke-virtual {p0, p1, v0}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(II)V

    .line 62
    iget v0, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    .line 63
    return-void
.end method

.method public writeUINT32(II)V
    .locals 3
    .parameter "val"
    .parameter "off"

    .prologue
    .line 50
    add-int/lit8 v1, p2, 0x4

    iget-object v2, p0, Lcom/trilead/ssh2/packets/TypesWriter;->arr:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 51
    add-int/lit8 v1, p2, 0x20

    invoke-direct {p0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->resize(I)V

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/trilead/ssh2/packets/TypesWriter;->arr:[B

    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, off:I
    shr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    aput-byte v2, v1, p2

    .line 54
    iget-object v1, p0, Lcom/trilead/ssh2/packets/TypesWriter;->arr:[B

    add-int/lit8 p2, v0, 0x1

    .end local v0           #off:I
    .restart local p2
    shr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 55
    iget-object v1, p0, Lcom/trilead/ssh2/packets/TypesWriter;->arr:[B

    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #off:I
    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v1, p2

    .line 56
    iget-object v1, p0, Lcom/trilead/ssh2/packets/TypesWriter;->arr:[B

    add-int/lit8 p2, v0, 0x1

    .end local v0           #off:I
    .restart local p2
    int-to-byte v2, p1

    aput-byte v2, v1, v0

    .line 57
    return-void
.end method
