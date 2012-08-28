.class public Lcom/trilead/ssh2/crypto/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field static final alphabet:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/trilead/ssh2/crypto/Base64;->alphabet:[C

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode([C)[B
    .locals 12
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    const/4 v10, 0x4

    new-array v2, v10, [B

    .line 69
    .local v2, buff:[B
    array-length v10, p0

    new-array v4, v10, [B

    .line 71
    .local v4, dest:[B
    const/4 v0, 0x0

    .line 72
    .local v0, bpos:I
    const/4 v5, 0x0

    .line 74
    .local v5, destpos:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    array-length v10, p0

    if-lt v7, v10, :cond_1

    .line 143
    :cond_0
    :goto_1
    new-array v8, v5, [B

    .line 144
    .local v8, res:[B
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v4, v10, v8, v11, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    return-object v8

    .line 76
    .end local v8           #res:[B
    :cond_1
    aget-char v3, p0, v7

    .line 78
    .local v3, c:I
    const/16 v10, 0xa

    if-eq v3, v10, :cond_2

    const/16 v10, 0xd

    if-eq v3, v10, :cond_2

    const/16 v10, 0x20

    if-eq v3, v10, :cond_2

    const/16 v10, 0x9

    if-ne v3, v10, :cond_3

    .line 74
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 81
    :cond_3
    const/16 v10, 0x41

    if-lt v3, v10, :cond_4

    const/16 v10, 0x5a

    if-gt v3, v10, :cond_4

    .line 83
    add-int/lit8 v1, v0, 0x1

    .end local v0           #bpos:I
    .local v1, bpos:I
    add-int/lit8 v10, v3, -0x41

    int-to-byte v10, v10

    aput-byte v10, v2, v0

    move v0, v1

    .line 110
    .end local v1           #bpos:I
    .restart local v0       #bpos:I
    :goto_3
    const/4 v10, 0x4

    if-ne v0, v10, :cond_2

    .line 112
    const/4 v0, 0x0

    .line 114
    const/4 v10, 0x0

    aget-byte v10, v2, v10

    const/16 v11, 0x40

    if-eq v10, v11, :cond_0

    .line 117
    const/4 v10, 0x1

    aget-byte v10, v2, v10

    const/16 v11, 0x40

    if-ne v10, v11, :cond_a

    .line 118
    new-instance v10, Ljava/io/IOException;

    const-string v11, "Unexpected \'=\' in base64 code."

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 85
    :cond_4
    const/16 v10, 0x61

    if-lt v3, v10, :cond_5

    const/16 v10, 0x7a

    if-gt v3, v10, :cond_5

    .line 87
    add-int/lit8 v1, v0, 0x1

    .end local v0           #bpos:I
    .restart local v1       #bpos:I
    add-int/lit8 v10, v3, -0x61

    add-int/lit8 v10, v10, 0x1a

    int-to-byte v10, v10

    aput-byte v10, v2, v0

    move v0, v1

    .end local v1           #bpos:I
    .restart local v0       #bpos:I
    goto :goto_3

    .line 89
    :cond_5
    const/16 v10, 0x30

    if-lt v3, v10, :cond_6

    const/16 v10, 0x39

    if-gt v3, v10, :cond_6

    .line 91
    add-int/lit8 v1, v0, 0x1

    .end local v0           #bpos:I
    .restart local v1       #bpos:I
    add-int/lit8 v10, v3, -0x30

    add-int/lit8 v10, v10, 0x34

    int-to-byte v10, v10

    aput-byte v10, v2, v0

    move v0, v1

    .end local v1           #bpos:I
    .restart local v0       #bpos:I
    goto :goto_3

    .line 93
    :cond_6
    const/16 v10, 0x2b

    if-ne v3, v10, :cond_7

    .line 95
    add-int/lit8 v1, v0, 0x1

    .end local v0           #bpos:I
    .restart local v1       #bpos:I
    const/16 v10, 0x3e

    aput-byte v10, v2, v0

    move v0, v1

    .end local v1           #bpos:I
    .restart local v0       #bpos:I
    goto :goto_3

    .line 97
    :cond_7
    const/16 v10, 0x2f

    if-ne v3, v10, :cond_8

    .line 99
    add-int/lit8 v1, v0, 0x1

    .end local v0           #bpos:I
    .restart local v1       #bpos:I
    const/16 v10, 0x3f

    aput-byte v10, v2, v0

    move v0, v1

    .end local v1           #bpos:I
    .restart local v0       #bpos:I
    goto :goto_3

    .line 101
    :cond_8
    const/16 v10, 0x3d

    if-ne v3, v10, :cond_9

    .line 103
    add-int/lit8 v1, v0, 0x1

    .end local v0           #bpos:I
    .restart local v1       #bpos:I
    const/16 v10, 0x40

    aput-byte v10, v2, v0

    move v0, v1

    .end local v1           #bpos:I
    .restart local v0       #bpos:I
    goto :goto_3

    .line 107
    :cond_9
    new-instance v10, Ljava/io/IOException;

    const-string v11, "Illegal char in base64 code."

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 120
    :cond_a
    const/4 v10, 0x2

    aget-byte v10, v2, v10

    const/16 v11, 0x40

    if-ne v10, v11, :cond_b

    .line 122
    const/4 v10, 0x0

    aget-byte v10, v2, v10

    and-int/lit8 v10, v10, 0x3f

    shl-int/lit8 v10, v10, 0x6

    const/4 v11, 0x1

    aget-byte v11, v2, v11

    and-int/lit8 v11, v11, 0x3f

    or-int v9, v10, v11

    .line 123
    .local v9, v:I
    add-int/lit8 v6, v5, 0x1

    .end local v5           #destpos:I
    .local v6, destpos:I
    shr-int/lit8 v10, v9, 0x4

    int-to-byte v10, v10

    aput-byte v10, v4, v5

    move v5, v6

    .line 124
    .end local v6           #destpos:I
    .restart local v5       #destpos:I
    goto/16 :goto_1

    .line 126
    .end local v9           #v:I
    :cond_b
    const/4 v10, 0x3

    aget-byte v10, v2, v10

    const/16 v11, 0x40

    if-ne v10, v11, :cond_c

    .line 128
    const/4 v10, 0x0

    aget-byte v10, v2, v10

    and-int/lit8 v10, v10, 0x3f

    shl-int/lit8 v10, v10, 0xc

    const/4 v11, 0x1

    aget-byte v11, v2, v11

    and-int/lit8 v11, v11, 0x3f

    shl-int/lit8 v11, v11, 0x6

    or-int/2addr v10, v11

    const/4 v11, 0x2

    aget-byte v11, v2, v11

    and-int/lit8 v11, v11, 0x3f

    or-int v9, v10, v11

    .line 129
    .restart local v9       #v:I
    add-int/lit8 v6, v5, 0x1

    .end local v5           #destpos:I
    .restart local v6       #destpos:I
    shr-int/lit8 v10, v9, 0xa

    int-to-byte v10, v10

    aput-byte v10, v4, v5

    .line 130
    add-int/lit8 v5, v6, 0x1

    .end local v6           #destpos:I
    .restart local v5       #destpos:I
    shr-int/lit8 v10, v9, 0x2

    int-to-byte v10, v10

    aput-byte v10, v4, v6

    goto/16 :goto_1

    .line 135
    .end local v9           #v:I
    :cond_c
    const/4 v10, 0x0

    aget-byte v10, v2, v10

    and-int/lit8 v10, v10, 0x3f

    shl-int/lit8 v10, v10, 0x12

    const/4 v11, 0x1

    aget-byte v11, v2, v11

    and-int/lit8 v11, v11, 0x3f

    shl-int/lit8 v11, v11, 0xc

    or-int/2addr v10, v11

    const/4 v11, 0x2

    aget-byte v11, v2, v11

    and-int/lit8 v11, v11, 0x3f

    shl-int/lit8 v11, v11, 0x6

    or-int/2addr v10, v11

    const/4 v11, 0x3

    aget-byte v11, v2, v11

    and-int/lit8 v11, v11, 0x3f

    or-int v9, v10, v11

    .line 136
    .restart local v9       #v:I
    add-int/lit8 v6, v5, 0x1

    .end local v5           #destpos:I
    .restart local v6       #destpos:I
    shr-int/lit8 v10, v9, 0x10

    int-to-byte v10, v10

    aput-byte v10, v4, v5

    .line 137
    add-int/lit8 v5, v6, 0x1

    .end local v6           #destpos:I
    .restart local v5       #destpos:I
    shr-int/lit8 v10, v9, 0x8

    int-to-byte v10, v10

    aput-byte v10, v4, v6

    .line 138
    add-int/lit8 v6, v5, 0x1

    .end local v5           #destpos:I
    .restart local v6       #destpos:I
    int-to-byte v10, v9

    aput-byte v10, v4, v5

    move v5, v6

    .end local v6           #destpos:I
    .restart local v5       #destpos:I
    goto/16 :goto_2
.end method

.method public static encode([B)[C
    .locals 8
    .parameter "content"

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x3d

    .line 19
    new-instance v0, Ljava/io/CharArrayWriter;

    array-length v4, p0

    mul-int/lit8 v4, v4, 0x4

    div-int/lit8 v4, v4, 0x3

    invoke-direct {v0, v4}, Ljava/io/CharArrayWriter;-><init>(I)V

    .line 21
    .local v0, cw:Ljava/io/CharArrayWriter;
    const/4 v2, 0x0

    .line 23
    .local v2, idx:I
    const/4 v3, 0x0

    .line 25
    .local v3, x:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, p0

    if-lt v1, v4, :cond_2

    .line 47
    if-ne v2, v7, :cond_0

    .line 49
    sget-object v4, Lcom/trilead/ssh2/crypto/Base64;->alphabet:[C

    shr-int/lit8 v5, v3, 0x12

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/io/CharArrayWriter;->write(I)V

    .line 50
    sget-object v4, Lcom/trilead/ssh2/crypto/Base64;->alphabet:[C

    shr-int/lit8 v5, v3, 0xc

    and-int/lit8 v5, v5, 0x3f

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/io/CharArrayWriter;->write(I)V

    .line 51
    invoke-virtual {v0, v6}, Ljava/io/CharArrayWriter;->write(I)V

    .line 52
    invoke-virtual {v0, v6}, Ljava/io/CharArrayWriter;->write(I)V

    .line 55
    :cond_0
    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    .line 57
    sget-object v4, Lcom/trilead/ssh2/crypto/Base64;->alphabet:[C

    shr-int/lit8 v5, v3, 0x12

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/io/CharArrayWriter;->write(I)V

    .line 58
    sget-object v4, Lcom/trilead/ssh2/crypto/Base64;->alphabet:[C

    shr-int/lit8 v5, v3, 0xc

    and-int/lit8 v5, v5, 0x3f

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/io/CharArrayWriter;->write(I)V

    .line 59
    sget-object v4, Lcom/trilead/ssh2/crypto/Base64;->alphabet:[C

    shr-int/lit8 v5, v3, 0x6

    and-int/lit8 v5, v5, 0x3f

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/io/CharArrayWriter;->write(I)V

    .line 60
    invoke-virtual {v0, v6}, Ljava/io/CharArrayWriter;->write(I)V

    .line 63
    :cond_1
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object v4

    return-object v4

    .line 27
    :cond_2
    if-nez v2, :cond_4

    .line 28
    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v3, v4, 0x10

    .line 34
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 36
    const/4 v4, 0x3

    if-ne v2, v4, :cond_3

    .line 38
    sget-object v4, Lcom/trilead/ssh2/crypto/Base64;->alphabet:[C

    shr-int/lit8 v5, v3, 0x12

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/io/CharArrayWriter;->write(I)V

    .line 39
    sget-object v4, Lcom/trilead/ssh2/crypto/Base64;->alphabet:[C

    shr-int/lit8 v5, v3, 0xc

    and-int/lit8 v5, v5, 0x3f

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/io/CharArrayWriter;->write(I)V

    .line 40
    sget-object v4, Lcom/trilead/ssh2/crypto/Base64;->alphabet:[C

    shr-int/lit8 v5, v3, 0x6

    and-int/lit8 v5, v5, 0x3f

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/io/CharArrayWriter;->write(I)V

    .line 41
    sget-object v4, Lcom/trilead/ssh2/crypto/Base64;->alphabet:[C

    and-int/lit8 v5, v3, 0x3f

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/io/CharArrayWriter;->write(I)V

    .line 43
    const/4 v2, 0x0

    .line 25
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 29
    :cond_4
    if-ne v2, v7, :cond_5

    .line 30
    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    goto :goto_1

    .line 32
    :cond_5
    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    goto :goto_1
.end method
