.class public final Lcom/trilead/ssh2/crypto/digest/MD5;
.super Ljava/lang/Object;
.source "MD5.java"

# interfaces
.implements Lcom/trilead/ssh2/crypto/digest/Digest;


# static fields
.field private static final padding:[B


# instance fields
.field private final block:[B

.field private count:J

.field private state0:I

.field private state1:I

.field private state2:I

.field private state3:I

.field private final x:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const/16 v0, 0x40

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    sput-object v0, Lcom/trilead/ssh2/crypto/digest/MD5;->padding:[B

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->block:[B

    .line 41
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    .line 49
    invoke-virtual {p0}, Lcom/trilead/ssh2/crypto/digest/MD5;->reset()V

    .line 50
    return-void
.end method

.method private static final FF(IIIIIII)I
    .locals 2
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"
    .parameter "x"
    .parameter "s"
    .parameter "ac"

    .prologue
    .line 54
    and-int v0, p1, p2

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v1, p3

    or-int/2addr v0, v1

    add-int/2addr v0, p4

    add-int/2addr v0, p6

    add-int/2addr p0, v0

    .line 55
    shl-int v0, p0, p5

    const/16 v1, 0x20

    sub-int/2addr v1, p5

    ushr-int v1, p0, v1

    or-int/2addr v0, v1

    add-int/2addr v0, p1

    return v0
.end method

.method private static final GG(IIIIIII)I
    .locals 2
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"
    .parameter "x"
    .parameter "s"
    .parameter "ac"

    .prologue
    .line 60
    and-int v0, p1, p3

    xor-int/lit8 v1, p3, -0x1

    and-int/2addr v1, p2

    or-int/2addr v0, v1

    add-int/2addr v0, p4

    add-int/2addr v0, p6

    add-int/2addr p0, v0

    .line 61
    shl-int v0, p0, p5

    const/16 v1, 0x20

    sub-int/2addr v1, p5

    ushr-int v1, p0, v1

    or-int/2addr v0, v1

    add-int/2addr v0, p1

    return v0
.end method

.method private static final HH(IIIIIII)I
    .locals 2
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"
    .parameter "x"
    .parameter "s"
    .parameter "ac"

    .prologue
    .line 66
    xor-int v0, p1, p2

    xor-int/2addr v0, p3

    add-int/2addr v0, p4

    add-int/2addr v0, p6

    add-int/2addr p0, v0

    .line 67
    shl-int v0, p0, p5

    const/16 v1, 0x20

    sub-int/2addr v1, p5

    ushr-int v1, p0, v1

    or-int/2addr v0, v1

    add-int/2addr v0, p1

    return v0
.end method

.method private static final II(IIIIIII)I
    .locals 2
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"
    .parameter "x"
    .parameter "s"
    .parameter "ac"

    .prologue
    .line 72
    xor-int/lit8 v0, p3, -0x1

    or-int/2addr v0, p1

    xor-int/2addr v0, p2

    add-int/2addr v0, p4

    add-int/2addr v0, p6

    add-int/2addr p0, v0

    .line 73
    shl-int v0, p0, p5

    const/16 v1, 0x20

    sub-int/2addr v1, p5

    ushr-int v1, p0, v1

    or-int/2addr v0, v1

    add-int/2addr v0, p1

    return v0
.end method

.method private static final encode([BII)V
    .locals 2
    .parameter "dst"
    .parameter "dstoff"
    .parameter "word"

    .prologue
    .line 78
    int-to-byte v0, p2

    aput-byte v0, p0, p1

    .line 79
    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 80
    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 81
    add-int/lit8 v0, p1, 0x3

    shr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 82
    return-void
.end method

.method private final transform([BI)V
    .locals 11
    .parameter "src"
    .parameter "pos"

    .prologue
    .line 86
    iget v0, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->state0:I

    .line 87
    .local v0, a:I
    iget v1, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->state1:I

    .line 88
    .local v1, b:I
    iget v2, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->state2:I

    .line 89
    .local v2, c:I
    iget v3, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->state3:I

    .line 91
    .local v3, d:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    const/16 v4, 0x10

    if-lt v10, v4, :cond_0

    .line 99
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    const/4 v5, 0x7

    const v6, -0x28955b88

    invoke-static/range {v0 .. v6}, Lcom/trilead/ssh2/crypto/digest/MD5;->FF(IIIIIII)I

    move-result v0

    .line 100
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/4 v5, 0x1

    aget v7, v4, v5

    const/16 v8, 0xc

    const v9, -0x173848aa

    move v4, v0

    move v5, v1

    move v6, v2

    invoke-static/range {v3 .. v9}, Lcom/trilead/ssh2/crypto/digest/MD5;->FF(IIIIIII)I

    move-result v3

    .line 101
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/4 v5, 0x2

    aget v6, v4, v5

    const/16 v7, 0x11

    const v8, 0x242070db

    move v4, v0

    move v5, v1

    invoke-static/range {v2 .. v8}, Lcom/trilead/ssh2/crypto/digest/MD5;->FF(IIIIIII)I

    move-result v2

    .line 102
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/4 v5, 0x3

    aget v5, v4, v5

    const/16 v6, 0x16

    const v7, -0x3e423112

    move v4, v0

    invoke-static/range {v1 .. v7}, Lcom/trilead/ssh2/crypto/digest/MD5;->FF(IIIIIII)I

    move-result v1

    .line 103
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/4 v5, 0x4

    aget v4, v4, v5

    const/4 v5, 0x7

    const v6, -0xa83f051

    invoke-static/range {v0 .. v6}, Lcom/trilead/ssh2/crypto/digest/MD5;->FF(IIIIIII)I

    move-result v0

    .line 104
    .restart local v0       #a:I
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/4 v5, 0x5

    aget v7, v4, v5

    const/16 v8, 0xc

    const v9, 0x4787c62a

    move v4, v0

    move v5, v1

    move v6, v2

    invoke-static/range {v3 .. v9}, Lcom/trilead/ssh2/crypto/digest/MD5;->FF(IIIIIII)I

    move-result v3

    .line 105
    .restart local v3       #d:I
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/4 v5, 0x6

    aget v6, v4, v5

    const/16 v7, 0x11

    const v8, -0x57cfb9ed

    move v4, v0

    move v5, v1

    invoke-static/range {v2 .. v8}, Lcom/trilead/ssh2/crypto/digest/MD5;->FF(IIIIIII)I

    move-result v2

    .line 106
    .restart local v2       #c:I
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/4 v5, 0x7

    aget v5, v4, v5

    const/16 v6, 0x16

    const v7, -0x2b96aff

    move v4, v0

    invoke-static/range {v1 .. v7}, Lcom/trilead/ssh2/crypto/digest/MD5;->FF(IIIIIII)I

    move-result v1

    .line 107
    .restart local v1       #b:I
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/16 v5, 0x8

    aget v4, v4, v5

    const/4 v5, 0x7

    const v6, 0x698098d8

    invoke-static/range {v0 .. v6}, Lcom/trilead/ssh2/crypto/digest/MD5;->FF(IIIIIII)I

    move-result v0

    .line 108
    .restart local v0       #a:I
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/16 v5, 0x9

    aget v7, v4, v5

    const/16 v8, 0xc

    const v9, -0x74bb0851

    move v4, v0

    move v5, v1

    move v6, v2

    invoke-static/range {v3 .. v9}, Lcom/trilead/ssh2/crypto/digest/MD5;->FF(IIIIIII)I

    move-result v3

    .line 109
    .restart local v3       #d:I
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/16 v5, 0xa

    aget v6, v4, v5

    const/16 v7, 0x11

    const v8, -0xa44f

    move v4, v0

    move v5, v1

    invoke-static/range {v2 .. v8}, Lcom/trilead/ssh2/crypto/digest/MD5;->FF(IIIIIII)I

    move-result v2

    .line 110
    .restart local v2       #c:I
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/16 v5, 0xb

    aget v5, v4, v5

    const/16 v6, 0x16

    const v7, -0x76a32842

    move v4, v0

    invoke-static/range {v1 .. v7}, Lcom/trilead/ssh2/crypto/digest/MD5;->FF(IIIIIII)I

    move-result v1

    .line 111
    .restart local v1       #b:I
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/16 v5, 0xc

    aget v4, v4, v5

    const/4 v5, 0x7

    const v6, 0x6b901122

    invoke-static/range {v0 .. v6}, Lcom/trilead/ssh2/crypto/digest/MD5;->FF(IIIIIII)I

    move-result v0

    .line 112
    .restart local v0       #a:I
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/16 v5, 0xd

    aget v7, v4, v5

    const/16 v8, 0xc

    const v9, -0x2678e6d

    move v4, v0

    move v5, v1

    move v6, v2

    invoke-static/range {v3 .. v9}, Lcom/trilead/ssh2/crypto/digest/MD5;->FF(IIIIIII)I

    move-result v3

    .line 113
    .restart local v3       #d:I
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/16 v5, 0xe

    aget v6, v4, v5

    const/16 v7, 0x11

    const v8, -0x5986bc72

    move v4, v0

    move v5, v1

    invoke-static/range {v2 .. v8}, Lcom/trilead/ssh2/crypto/digest/MD5;->FF(IIIIIII)I

    move-result v2

    .line 114
    .restart local v2       #c:I
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/16 v5, 0xf

    aget v5, v4, v5

    const/16 v6, 0x16

    const v7, 0x49b40821

    move v4, v0

    invoke-static/range {v1 .. v7}, Lcom/trilead/ssh2/crypto/digest/MD5;->FF(IIIIIII)I

    move-result v1

    .line 117
    .restart local v1       #b:I
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    const/4 v5, 0x5

    const v6, -0x9e1da9e

    invoke-static/range {v0 .. v6}, Lcom/trilead/ssh2/crypto/digest/MD5;->GG(IIIIIII)I

    move-result v0

    .line 118
    .restart local v0       #a:I
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/4 v5, 0x6

    aget v7, v4, v5

    const/16 v8, 0x9

    const v9, -0x3fbf4cc0

    move v4, v0

    move v5, v1

    move v6, v2

    invoke-static/range {v3 .. v9}, Lcom/trilead/ssh2/crypto/digest/MD5;->GG(IIIIIII)I

    move-result v3

    .line 119
    .restart local v3       #d:I
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/16 v5, 0xb

    aget v6, v4, v5

    const/16 v7, 0xe

    const v8, 0x265e5a51

    move v4, v0

    move v5, v1

    invoke-static/range {v2 .. v8}, Lcom/trilead/ssh2/crypto/digest/MD5;->GG(IIIIIII)I

    move-result v2

    .line 120
    .restart local v2       #c:I
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/4 v5, 0x0

    aget v5, v4, v5

    const/16 v6, 0x14

    const v7, -0x16493856

    move v4, v0

    invoke-static/range {v1 .. v7}, Lcom/trilead/ssh2/crypto/digest/MD5;->GG(IIIIIII)I

    move-result v1

    .line 121
    .restart local v1       #b:I
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/4 v5, 0x5

    aget v4, v4, v5

    const/4 v5, 0x5

    const v6, -0x29d0efa3

    invoke-static/range {v0 .. v6}, Lcom/trilead/ssh2/crypto/digest/MD5;->GG(IIIIIII)I

    move-result v0

    .line 122
    .restart local v0       #a:I
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/16 v5, 0xa

    aget v7, v4, v5

    const/16 v8, 0x9

    const v9, 0x2441453

    move v4, v0

    move v5, v1

    move v6, v2

    invoke-static/range {v3 .. v9}, Lcom/trilead/ssh2/crypto/digest/MD5;->GG(IIIIIII)I

    move-result v3

    .line 123
    .restart local v3       #d:I
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/16 v5, 0xf

    aget v6, v4, v5

    const/16 v7, 0xe

    const v8, -0x275e197f

    move v4, v0

    move v5, v1

    invoke-static/range {v2 .. v8}, Lcom/trilead/ssh2/crypto/digest/MD5;->GG(IIIIIII)I

    move-result v2

    .line 124
    .restart local v2       #c:I
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/4 v5, 0x4

    aget v5, v4, v5

    const/16 v6, 0x14

    const v7, -0x182c0438

    move v4, v0

    invoke-static/range {v1 .. v7}, Lcom/trilead/ssh2/crypto/digest/MD5;->GG(IIIIIII)I

    move-result v1

    .line 125
    .restart local v1       #b:I
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/16 v5, 0x9

    aget v4, v4, v5

    const/4 v5, 0x5

    const v6, 0x21e1cde6

    invoke-static/range {v0 .. v6}, Lcom/trilead/ssh2/crypto/digest/MD5;->GG(IIIIIII)I

    move-result v0

    .line 126
    .restart local v0       #a:I
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/16 v5, 0xe

    aget v7, v4, v5

    const/16 v8, 0x9

    const v9, -0x3cc8f82a

    move v4, v0

    move v5, v1

    move v6, v2

    invoke-static/range {v3 .. v9}, Lcom/trilead/ssh2/crypto/digest/MD5;->GG(IIIIIII)I

    move-result v3

    .line 127
    .restart local v3       #d:I
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/4 v5, 0x3

    aget v6, v4, v5

    const/16 v7, 0xe

    const v8, -0xb2af279

    move v4, v0

    move v5, v1

    invoke-static/range {v2 .. v8}, Lcom/trilead/ssh2/crypto/digest/MD5;->GG(IIIIIII)I

    move-result v2

    .line 128
    .restart local v2       #c:I
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/16 v5, 0x8

    aget v5, v4, v5

    const/16 v6, 0x14

    const v7, 0x455a14ed

    move v4, v0

    invoke-static/range {v1 .. v7}, Lcom/trilead/ssh2/crypto/digest/MD5;->GG(IIIIIII)I

    move-result v1

    .line 129
    .restart local v1       #b:I
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/16 v5, 0xd

    aget v4, v4, v5

    const/4 v5, 0x5

    const v6, -0x561c16fb

    invoke-static/range {v0 .. v6}, Lcom/trilead/ssh2/crypto/digest/MD5;->GG(IIIIIII)I

    move-result v0

    .line 130
    .restart local v0       #a:I
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/4 v5, 0x2

    aget v7, v4, v5

    const/16 v8, 0x9

    const v9, -0x3105c08

    move v4, v0

    move v5, v1

    move v6, v2

    invoke-static/range {v3 .. v9}, Lcom/trilead/ssh2/crypto/digest/MD5;->GG(IIIIIII)I

    move-result v3

    .line 131
    .restart local v3       #d:I
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/4 v5, 0x7

    aget v6, v4, v5

    const/16 v7, 0xe

    const v8, 0x676f02d9

    move v4, v0

    move v5, v1

    invoke-static/range {v2 .. v8}, Lcom/trilead/ssh2/crypto/digest/MD5;->GG(IIIIIII)I

    move-result v2

    .line 132
    .restart local v2       #c:I
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/16 v5, 0xc

    aget v5, v4, v5

    const/16 v6, 0x14

    const v7, -0x72d5b376

    move v4, v0

    invoke-static/range {v1 .. v7}, Lcom/trilead/ssh2/crypto/digest/MD5;->GG(IIIIIII)I

    move-result v1

    .line 135
    .restart local v1       #b:I
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/4 v5, 0x5

    aget v4, v4, v5

    const/4 v5, 0x4

    const v6, -0x5c6be

    invoke-static/range {v0 .. v6}, Lcom/trilead/ssh2/crypto/digest/MD5;->HH(IIIIIII)I

    move-result v0

    .line 136
    .restart local v0       #a:I
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/16 v5, 0x8

    aget v7, v4, v5

    const/16 v8, 0xb

    const v9, -0x788e097f

    move v4, v0

    move v5, v1

    move v6, v2

    invoke-static/range {v3 .. v9}, Lcom/trilead/ssh2/crypto/digest/MD5;->HH(IIIIIII)I

    move-result v3

    .line 137
    .restart local v3       #d:I
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/16 v5, 0xb

    aget v6, v4, v5

    const/16 v7, 0x10

    const v8, 0x6d9d6122

    move v4, v0

    move v5, v1

    invoke-static/range {v2 .. v8}, Lcom/trilead/ssh2/crypto/digest/MD5;->HH(IIIIIII)I

    move-result v2

    .line 138
    .restart local v2       #c:I
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/16 v5, 0xe

    aget v5, v4, v5

    const/16 v6, 0x17

    const v7, -0x21ac7f4

    move v4, v0

    invoke-static/range {v1 .. v7}, Lcom/trilead/ssh2/crypto/digest/MD5;->HH(IIIIIII)I

    move-result v1

    .line 139
    .restart local v1       #b:I
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    const/4 v5, 0x4

    const v6, -0x5b4115bc

    invoke-static/range {v0 .. v6}, Lcom/trilead/ssh2/crypto/digest/MD5;->HH(IIIIIII)I

    move-result v0

    .line 140
    .restart local v0       #a:I
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/4 v5, 0x4

    aget v7, v4, v5

    const/16 v8, 0xb

    const v9, 0x4bdecfa9

    move v4, v0

    move v5, v1

    move v6, v2

    invoke-static/range {v3 .. v9}, Lcom/trilead/ssh2/crypto/digest/MD5;->HH(IIIIIII)I

    move-result v3

    .line 141
    .restart local v3       #d:I
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/4 v5, 0x7

    aget v6, v4, v5

    const/16 v7, 0x10

    const v8, -0x944b4a0

    move v4, v0

    move v5, v1

    invoke-static/range {v2 .. v8}, Lcom/trilead/ssh2/crypto/digest/MD5;->HH(IIIIIII)I

    move-result v2

    .line 142
    .restart local v2       #c:I
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/16 v5, 0xa

    aget v5, v4, v5

    const/16 v6, 0x17

    const v7, -0x41404390

    move v4, v0

    invoke-static/range {v1 .. v7}, Lcom/trilead/ssh2/crypto/digest/MD5;->HH(IIIIIII)I

    move-result v1

    .line 143
    .restart local v1       #b:I
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/16 v5, 0xd

    aget v4, v4, v5

    const/4 v5, 0x4

    const v6, 0x289b7ec6

    invoke-static/range {v0 .. v6}, Lcom/trilead/ssh2/crypto/digest/MD5;->HH(IIIIIII)I

    move-result v0

    .line 144
    .restart local v0       #a:I
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/4 v5, 0x0

    aget v7, v4, v5

    const/16 v8, 0xb

    const v9, -0x155ed806

    move v4, v0

    move v5, v1

    move v6, v2

    invoke-static/range {v3 .. v9}, Lcom/trilead/ssh2/crypto/digest/MD5;->HH(IIIIIII)I

    move-result v3

    .line 145
    .restart local v3       #d:I
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/4 v5, 0x3

    aget v6, v4, v5

    const/16 v7, 0x10

    const v8, -0x2b10cf7b

    move v4, v0

    move v5, v1

    invoke-static/range {v2 .. v8}, Lcom/trilead/ssh2/crypto/digest/MD5;->HH(IIIIIII)I

    move-result v2

    .line 146
    .restart local v2       #c:I
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/4 v5, 0x6

    aget v5, v4, v5

    const/16 v6, 0x17

    const v7, 0x4881d05

    move v4, v0

    invoke-static/range {v1 .. v7}, Lcom/trilead/ssh2/crypto/digest/MD5;->HH(IIIIIII)I

    move-result v1

    .line 147
    .restart local v1       #b:I
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/16 v5, 0x9

    aget v4, v4, v5

    const/4 v5, 0x4

    const v6, -0x262b2fc7

    invoke-static/range {v0 .. v6}, Lcom/trilead/ssh2/crypto/digest/MD5;->HH(IIIIIII)I

    move-result v0

    .line 148
    .restart local v0       #a:I
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/16 v5, 0xc

    aget v7, v4, v5

    const/16 v8, 0xb

    const v9, -0x1924661b

    move v4, v0

    move v5, v1

    move v6, v2

    invoke-static/range {v3 .. v9}, Lcom/trilead/ssh2/crypto/digest/MD5;->HH(IIIIIII)I

    move-result v3

    .line 149
    .restart local v3       #d:I
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/16 v5, 0xf

    aget v6, v4, v5

    const/16 v7, 0x10

    const v8, 0x1fa27cf8

    move v4, v0

    move v5, v1

    invoke-static/range {v2 .. v8}, Lcom/trilead/ssh2/crypto/digest/MD5;->HH(IIIIIII)I

    move-result v2

    .line 150
    .restart local v2       #c:I
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/4 v5, 0x2

    aget v5, v4, v5

    const/16 v6, 0x17

    const v7, -0x3b53a99b

    move v4, v0

    invoke-static/range {v1 .. v7}, Lcom/trilead/ssh2/crypto/digest/MD5;->HH(IIIIIII)I

    move-result v1

    .line 153
    .restart local v1       #b:I
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    const/4 v5, 0x6

    const v6, -0xbd6ddbc

    invoke-static/range {v0 .. v6}, Lcom/trilead/ssh2/crypto/digest/MD5;->II(IIIIIII)I

    move-result v0

    .line 154
    .restart local v0       #a:I
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/4 v5, 0x7

    aget v7, v4, v5

    const/16 v8, 0xa

    const v9, 0x432aff97

    move v4, v0

    move v5, v1

    move v6, v2

    invoke-static/range {v3 .. v9}, Lcom/trilead/ssh2/crypto/digest/MD5;->II(IIIIIII)I

    move-result v3

    .line 155
    .restart local v3       #d:I
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/16 v5, 0xe

    aget v6, v4, v5

    const/16 v7, 0xf

    const v8, -0x546bdc59

    move v4, v0

    move v5, v1

    invoke-static/range {v2 .. v8}, Lcom/trilead/ssh2/crypto/digest/MD5;->II(IIIIIII)I

    move-result v2

    .line 156
    .restart local v2       #c:I
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/4 v5, 0x5

    aget v5, v4, v5

    const/16 v6, 0x15

    const v7, -0x36c5fc7

    move v4, v0

    invoke-static/range {v1 .. v7}, Lcom/trilead/ssh2/crypto/digest/MD5;->II(IIIIIII)I

    move-result v1

    .line 157
    .restart local v1       #b:I
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/16 v5, 0xc

    aget v4, v4, v5

    const/4 v5, 0x6

    const v6, 0x655b59c3

    invoke-static/range {v0 .. v6}, Lcom/trilead/ssh2/crypto/digest/MD5;->II(IIIIIII)I

    move-result v0

    .line 158
    .restart local v0       #a:I
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/4 v5, 0x3

    aget v7, v4, v5

    const/16 v8, 0xa

    const v9, -0x70f3336e

    move v4, v0

    move v5, v1

    move v6, v2

    invoke-static/range {v3 .. v9}, Lcom/trilead/ssh2/crypto/digest/MD5;->II(IIIIIII)I

    move-result v3

    .line 159
    .restart local v3       #d:I
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/16 v5, 0xa

    aget v6, v4, v5

    const/16 v7, 0xf

    const v8, -0x100b83

    move v4, v0

    move v5, v1

    invoke-static/range {v2 .. v8}, Lcom/trilead/ssh2/crypto/digest/MD5;->II(IIIIIII)I

    move-result v2

    .line 160
    .restart local v2       #c:I
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/4 v5, 0x1

    aget v5, v4, v5

    const/16 v6, 0x15

    const v7, -0x7a7ba22f

    move v4, v0

    invoke-static/range {v1 .. v7}, Lcom/trilead/ssh2/crypto/digest/MD5;->II(IIIIIII)I

    move-result v1

    .line 161
    .restart local v1       #b:I
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/16 v5, 0x8

    aget v4, v4, v5

    const/4 v5, 0x6

    const v6, 0x6fa87e4f

    invoke-static/range {v0 .. v6}, Lcom/trilead/ssh2/crypto/digest/MD5;->II(IIIIIII)I

    move-result v0

    .line 162
    .restart local v0       #a:I
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/16 v5, 0xf

    aget v7, v4, v5

    const/16 v8, 0xa

    const v9, -0x1d31920

    move v4, v0

    move v5, v1

    move v6, v2

    invoke-static/range {v3 .. v9}, Lcom/trilead/ssh2/crypto/digest/MD5;->II(IIIIIII)I

    move-result v3

    .line 163
    .restart local v3       #d:I
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/4 v5, 0x6

    aget v6, v4, v5

    const/16 v7, 0xf

    const v8, -0x5cfebcec

    move v4, v0

    move v5, v1

    invoke-static/range {v2 .. v8}, Lcom/trilead/ssh2/crypto/digest/MD5;->II(IIIIIII)I

    move-result v2

    .line 164
    .restart local v2       #c:I
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/16 v5, 0xd

    aget v5, v4, v5

    const/16 v6, 0x15

    const v7, 0x4e0811a1

    move v4, v0

    invoke-static/range {v1 .. v7}, Lcom/trilead/ssh2/crypto/digest/MD5;->II(IIIIIII)I

    move-result v1

    .line 165
    .restart local v1       #b:I
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/4 v5, 0x4

    aget v4, v4, v5

    const/4 v5, 0x6

    const v6, -0x8ac817e

    invoke-static/range {v0 .. v6}, Lcom/trilead/ssh2/crypto/digest/MD5;->II(IIIIIII)I

    move-result v0

    .line 166
    .restart local v0       #a:I
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/16 v5, 0xb

    aget v7, v4, v5

    const/16 v8, 0xa

    const v9, -0x42c50dcb

    move v4, v0

    move v5, v1

    move v6, v2

    invoke-static/range {v3 .. v9}, Lcom/trilead/ssh2/crypto/digest/MD5;->II(IIIIIII)I

    move-result v3

    .line 167
    .restart local v3       #d:I
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/4 v5, 0x2

    aget v6, v4, v5

    const/16 v7, 0xf

    const v8, 0x2ad7d2bb

    move v4, v0

    move v5, v1

    invoke-static/range {v2 .. v8}, Lcom/trilead/ssh2/crypto/digest/MD5;->II(IIIIIII)I

    move-result v2

    .line 168
    .restart local v2       #c:I
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/16 v5, 0x9

    aget v5, v4, v5

    const/16 v6, 0x15

    const v7, -0x14792c6f

    move v4, v0

    invoke-static/range {v1 .. v7}, Lcom/trilead/ssh2/crypto/digest/MD5;->II(IIIIIII)I

    move-result v1

    .line 170
    .restart local v1       #b:I
    iget v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->state0:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->state0:I

    .line 171
    iget v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->state1:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->state1:I

    .line 172
    iget v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->state2:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->state2:I

    .line 173
    iget v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->state3:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->state3:I

    .line 174
    return-void

    .line 93
    :cond_0
    iget-object v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    aget-byte v5, p1, p2

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, p2, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x2

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    .line 94
    add-int/lit8 v6, p2, 0x3

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v5, v6

    .line 93
    aput v5, v4, v10

    .line 91
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 p2, p2, 0x4

    goto/16 :goto_0
.end method


# virtual methods
.method public final digest([B)V
    .locals 1
    .parameter "dst"

    .prologue
    .line 261
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/trilead/ssh2/crypto/digest/MD5;->digest([BI)V

    .line 262
    return-void
.end method

.method public final digest([BI)V
    .locals 10
    .parameter "dst"
    .parameter "pos"

    .prologue
    const/16 v9, 0x38

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 240
    new-array v0, v8, [B

    .line 242
    .local v0, bits:[B
    iget-wide v3, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->count:J

    const/4 v5, 0x3

    shl-long/2addr v3, v5

    long-to-int v3, v3

    invoke-static {v0, v7, v3}, Lcom/trilead/ssh2/crypto/digest/MD5;->encode([BII)V

    .line 243
    const/4 v3, 0x4

    iget-wide v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->count:J

    const/16 v6, 0x1d

    shr-long/2addr v4, v6

    long-to-int v4, v4

    invoke-static {v0, v3, v4}, Lcom/trilead/ssh2/crypto/digest/MD5;->encode([BII)V

    .line 245
    iget-wide v3, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->count:J

    long-to-int v3, v3

    and-int/lit8 v1, v3, 0x3f

    .line 246
    .local v1, idx:I
    if-ge v1, v9, :cond_0

    sub-int v3, v9, v1

    move v2, v3

    .line 248
    .local v2, padLen:I
    :goto_0
    sget-object v3, Lcom/trilead/ssh2/crypto/digest/MD5;->padding:[B

    invoke-virtual {p0, v3, v7, v2}, Lcom/trilead/ssh2/crypto/digest/MD5;->update([BII)V

    .line 249
    invoke-virtual {p0, v0, v7, v8}, Lcom/trilead/ssh2/crypto/digest/MD5;->update([BII)V

    .line 251
    iget v3, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->state0:I

    invoke-static {p1, p2, v3}, Lcom/trilead/ssh2/crypto/digest/MD5;->encode([BII)V

    .line 252
    add-int/lit8 v3, p2, 0x4

    iget v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->state1:I

    invoke-static {p1, v3, v4}, Lcom/trilead/ssh2/crypto/digest/MD5;->encode([BII)V

    .line 253
    add-int/lit8 v3, p2, 0x8

    iget v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->state2:I

    invoke-static {p1, v3, v4}, Lcom/trilead/ssh2/crypto/digest/MD5;->encode([BII)V

    .line 254
    add-int/lit8 v3, p2, 0xc

    iget v4, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->state3:I

    invoke-static {p1, v3, v4}, Lcom/trilead/ssh2/crypto/digest/MD5;->encode([BII)V

    .line 256
    invoke-virtual {p0}, Lcom/trilead/ssh2/crypto/digest/MD5;->reset()V

    .line 257
    return-void

    .line 246
    .end local v2           #padLen:I
    :cond_0
    const/16 v3, 0x78

    sub-int/2addr v3, v1

    move v2, v3

    goto :goto_0
.end method

.method public final getDigestLength()I
    .locals 1

    .prologue
    .line 266
    const/16 v0, 0x10

    return v0
.end method

.method public final reset()V
    .locals 3

    .prologue
    .line 178
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->count:J

    .line 180
    const v1, 0x67452301

    iput v1, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->state0:I

    .line 181
    const v1, -0x10325477

    iput v1, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->state1:I

    .line 182
    const v1, -0x67452302

    iput v1, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->state2:I

    .line 183
    const v1, 0x10325476

    iput v1, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->state3:I

    .line 187
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 189
    return-void

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->x:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final update(B)V
    .locals 6
    .parameter "b"

    .prologue
    const/16 v5, 0x40

    .line 193
    iget-wide v1, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->count:J

    const-wide/16 v3, 0x3f

    and-long/2addr v1, v3

    long-to-int v1, v1

    sub-int v0, v5, v1

    .line 195
    .local v0, space:I
    iget-wide v1, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->count:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->count:J

    .line 197
    iget-object v1, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->block:[B

    sub-int v2, v5, v0

    aput-byte p1, v1, v2

    .line 199
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->block:[B

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/trilead/ssh2/crypto/digest/MD5;->transform([BI)V

    .line 201
    :cond_0
    return-void
.end method

.method public final update([B)V
    .locals 2
    .parameter "b"

    .prologue
    .line 235
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/trilead/ssh2/crypto/digest/MD5;->update([BII)V

    .line 236
    return-void
.end method

.method public final update([BII)V
    .locals 6
    .parameter "buff"
    .parameter "pos"
    .parameter "len"

    .prologue
    const/16 v5, 0x40

    .line 205
    iget-wide v1, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->count:J

    const-wide/16 v3, 0x3f

    and-long/2addr v1, v3

    long-to-int v1, v1

    sub-int v0, v5, v1

    .line 207
    .local v0, space:I
    iget-wide v1, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->count:J

    int-to-long v3, p3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->count:J

    .line 209
    :goto_0
    if-gtz p3, :cond_0

    .line 231
    :goto_1
    return-void

    .line 211
    :cond_0
    if-ge p3, v0, :cond_1

    .line 213
    iget-object v1, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->block:[B

    sub-int v2, v5, v0

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 217
    :cond_1
    if-ne v0, v5, :cond_2

    .line 219
    invoke-direct {p0, p1, p2}, Lcom/trilead/ssh2/crypto/digest/MD5;->transform([BI)V

    .line 227
    :goto_2
    add-int/2addr p2, v0

    .line 228
    sub-int/2addr p3, v0

    .line 229
    const/16 v0, 0x40

    goto :goto_0

    .line 223
    :cond_2
    iget-object v1, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->block:[B

    sub-int v2, v5, v0

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 224
    iget-object v1, p0, Lcom/trilead/ssh2/crypto/digest/MD5;->block:[B

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/trilead/ssh2/crypto/digest/MD5;->transform([BI)V

    goto :goto_2
.end method