.class public final Lb/a/a/a/b;
.super Lb/a/a/a/a;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:[I

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lb/a/a/a/a;-><init>()V

    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lb/a/a/a/b;->f:[I

    invoke-virtual {p0}, Lb/a/a/a/b;->b()V

    return-void
.end method

.method private static a(III)I
    .locals 2

    and-int v0, p0, p1

    xor-int/lit8 v1, p0, -0x1

    and-int/2addr v1, p2

    or-int/2addr v0, v1

    return v0
.end method

.method private static a(I[BI)V
    .locals 3

    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p0, 0x18

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    add-int/lit8 v1, v0, 0x1

    ushr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    ushr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    int-to-byte v1, p0

    aput-byte v1, p1, v0

    return-void
.end method

.method private static b(III)I
    .locals 2

    and-int v0, p0, p1

    and-int v1, p0, p2

    or-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final a([B)I
    .locals 2

    invoke-virtual {p0}, Lb/a/a/a/b;->c()V

    iget v0, p0, Lb/a/a/a/b;->a:I

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lb/a/a/a/b;->a(I[BI)V

    iget v0, p0, Lb/a/a/a/b;->b:I

    const/4 v1, 0x4

    invoke-static {v0, p1, v1}, Lb/a/a/a/b;->a(I[BI)V

    iget v0, p0, Lb/a/a/a/b;->c:I

    const/16 v1, 0x8

    invoke-static {v0, p1, v1}, Lb/a/a/a/b;->a(I[BI)V

    iget v0, p0, Lb/a/a/a/b;->d:I

    const/16 v1, 0xc

    invoke-static {v0, p1, v1}, Lb/a/a/a/b;->a(I[BI)V

    iget v0, p0, Lb/a/a/a/b;->e:I

    const/16 v1, 0x10

    invoke-static {v0, p1, v1}, Lb/a/a/a/b;->a(I[BI)V

    invoke-virtual {p0}, Lb/a/a/a/b;->b()V

    const/16 v0, 0x14

    return v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "SHA-1"

    return-object v0
.end method

.method protected final a(J)V
    .locals 4

    const/16 v3, 0xe

    iget v0, p0, Lb/a/a/a/b;->g:I

    if-le v0, v3, :cond_0

    invoke-virtual {p0}, Lb/a/a/a/b;->d()V

    :cond_0
    iget-object v0, p0, Lb/a/a/a/b;->f:[I

    const/16 v1, 0x20

    ushr-long v1, p1, v1

    long-to-int v1, v1

    aput v1, v0, v3

    iget-object v0, p0, Lb/a/a/a/b;->f:[I

    const/16 v1, 0xf

    const-wide/16 v2, -0x1

    and-long/2addr v2, p1

    long-to-int v2, v2

    aput v2, v0, v1

    return-void
.end method

.method protected final a([BI)V
    .locals 4

    iget-object v0, p0, Lb/a/a/a/b;->f:[I

    iget v1, p0, Lb/a/a/a/b;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lb/a/a/a/b;->g:I

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    aput v2, v0, v1

    iget v0, p0, Lb/a/a/a/b;->g:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lb/a/a/a/b;->d()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 3

    const/4 v1, 0x0

    invoke-super {p0}, Lb/a/a/a/a;->b()V

    const v0, 0x67452301

    iput v0, p0, Lb/a/a/a/b;->a:I

    const v0, -0x10325477

    iput v0, p0, Lb/a/a/a/b;->b:I

    const v0, -0x67452302

    iput v0, p0, Lb/a/a/a/b;->c:I

    const v0, 0x10325476

    iput v0, p0, Lb/a/a/a/b;->d:I

    const v0, -0x3c2d1e10

    iput v0, p0, Lb/a/a/a/b;->e:I

    iput v1, p0, Lb/a/a/a/b;->g:I

    move v0, v1

    :goto_0
    iget-object v2, p0, Lb/a/a/a/b;->f:[I

    array-length v2, v2

    if-ne v0, v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lb/a/a/a/b;->f:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected final d()V
    .locals 10

    const/16 v0, 0x10

    :goto_0
    const/16 v1, 0x50

    if-lt v0, v1, :cond_0

    iget v6, p0, Lb/a/a/a/b;->a:I

    iget v5, p0, Lb/a/a/a/b;->b:I

    iget v4, p0, Lb/a/a/a/b;->c:I

    iget v3, p0, Lb/a/a/a/b;->d:I

    iget v2, p0, Lb/a/a/a/b;->e:I

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_1
    const/4 v7, 0x4

    if-lt v0, v7, :cond_1

    const/4 v0, 0x0

    :goto_2
    const/4 v7, 0x4

    if-lt v0, v7, :cond_2

    const/4 v0, 0x0

    :goto_3
    const/4 v7, 0x4

    if-lt v0, v7, :cond_3

    const/4 v0, 0x0

    :goto_4
    const/4 v7, 0x3

    if-le v0, v7, :cond_4

    iget v0, p0, Lb/a/a/a/b;->a:I

    add-int/2addr v0, v6

    iput v0, p0, Lb/a/a/a/b;->a:I

    iget v0, p0, Lb/a/a/a/b;->b:I

    add-int/2addr v0, v5

    iput v0, p0, Lb/a/a/a/b;->b:I

    iget v0, p0, Lb/a/a/a/b;->c:I

    add-int/2addr v0, v4

    iput v0, p0, Lb/a/a/a/b;->c:I

    iget v0, p0, Lb/a/a/a/b;->d:I

    add-int/2addr v0, v3

    iput v0, p0, Lb/a/a/a/b;->d:I

    iget v0, p0, Lb/a/a/a/b;->e:I

    add-int/2addr v0, v2

    iput v0, p0, Lb/a/a/a/b;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lb/a/a/a/b;->g:I

    const/4 v0, 0x0

    :goto_5
    const/16 v1, 0x10

    if-lt v0, v1, :cond_5

    return-void

    :cond_0
    iget-object v1, p0, Lb/a/a/a/b;->f:[I

    add-int/lit8 v2, v0, -0x3

    aget v1, v1, v2

    iget-object v2, p0, Lb/a/a/a/b;->f:[I

    add-int/lit8 v3, v0, -0x8

    aget v2, v2, v3

    xor-int/2addr v1, v2

    iget-object v2, p0, Lb/a/a/a/b;->f:[I

    add-int/lit8 v3, v0, -0xe

    aget v2, v2, v3

    xor-int/2addr v1, v2

    iget-object v2, p0, Lb/a/a/a/b;->f:[I

    add-int/lit8 v3, v0, -0x10

    aget v2, v2, v3

    xor-int/2addr v1, v2

    iget-object v2, p0, Lb/a/a/a/b;->f:[I

    shl-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v1, v1, 0x1f

    or-int/2addr v1, v3

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    shl-int/lit8 v7, v6, 0x5

    ushr-int/lit8 v8, v6, 0x1b

    or-int/2addr v7, v8

    invoke-static {v5, v4, v3}, Lb/a/a/a/b;->a(III)I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lb/a/a/a/b;->f:[I

    add-int/lit8 v9, v1, 0x1

    aget v1, v8, v1

    add-int/2addr v1, v7

    const v7, 0x5a827999

    add-int/2addr v1, v7

    add-int/2addr v1, v2

    shl-int/lit8 v2, v5, 0x1e

    ushr-int/lit8 v5, v5, 0x2

    or-int/2addr v5, v2

    shl-int/lit8 v2, v1, 0x5

    ushr-int/lit8 v7, v1, 0x1b

    or-int/2addr v2, v7

    invoke-static {v6, v5, v4}, Lb/a/a/a/b;->a(III)I

    move-result v7

    add-int/2addr v2, v7

    iget-object v7, p0, Lb/a/a/a/b;->f:[I

    add-int/lit8 v8, v9, 0x1

    aget v7, v7, v9

    add-int/2addr v2, v7

    const v7, 0x5a827999

    add-int/2addr v2, v7

    add-int/2addr v3, v2

    shl-int/lit8 v2, v6, 0x1e

    ushr-int/lit8 v6, v6, 0x2

    or-int/2addr v6, v2

    shl-int/lit8 v2, v3, 0x5

    ushr-int/lit8 v7, v3, 0x1b

    or-int/2addr v2, v7

    invoke-static {v1, v6, v5}, Lb/a/a/a/b;->a(III)I

    move-result v7

    add-int/2addr v2, v7

    iget-object v7, p0, Lb/a/a/a/b;->f:[I

    add-int/lit8 v9, v8, 0x1

    aget v7, v7, v8

    add-int/2addr v2, v7

    const v7, 0x5a827999

    add-int/2addr v2, v7

    add-int/2addr v4, v2

    shl-int/lit8 v2, v1, 0x1e

    ushr-int/lit8 v1, v1, 0x2

    or-int/2addr v2, v1

    shl-int/lit8 v1, v4, 0x5

    ushr-int/lit8 v7, v4, 0x1b

    or-int/2addr v1, v7

    invoke-static {v3, v2, v6}, Lb/a/a/a/b;->a(III)I

    move-result v7

    add-int/2addr v1, v7

    iget-object v7, p0, Lb/a/a/a/b;->f:[I

    add-int/lit8 v8, v9, 0x1

    aget v7, v7, v9

    add-int/2addr v1, v7

    const v7, 0x5a827999

    add-int/2addr v1, v7

    add-int/2addr v5, v1

    shl-int/lit8 v1, v3, 0x1e

    ushr-int/lit8 v3, v3, 0x2

    or-int/2addr v3, v1

    shl-int/lit8 v1, v5, 0x5

    ushr-int/lit8 v7, v5, 0x1b

    or-int/2addr v1, v7

    invoke-static {v4, v3, v2}, Lb/a/a/a/b;->a(III)I

    move-result v7

    add-int/2addr v7, v1

    iget-object v9, p0, Lb/a/a/a/b;->f:[I

    add-int/lit8 v1, v8, 0x1

    aget v8, v9, v8

    add-int/2addr v7, v8

    const v8, 0x5a827999

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    shl-int/lit8 v7, v4, 0x1e

    ushr-int/lit8 v4, v4, 0x2

    or-int/2addr v4, v7

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_2
    shl-int/lit8 v7, v6, 0x5

    ushr-int/lit8 v8, v6, 0x1b

    or-int/2addr v7, v8

    xor-int v8, v5, v4

    xor-int/2addr v8, v3

    add-int/2addr v7, v8

    iget-object v8, p0, Lb/a/a/a/b;->f:[I

    add-int/lit8 v9, v1, 0x1

    aget v1, v8, v1

    add-int/2addr v1, v7

    const v7, 0x6ed9eba1

    add-int/2addr v1, v7

    add-int/2addr v1, v2

    shl-int/lit8 v2, v5, 0x1e

    ushr-int/lit8 v5, v5, 0x2

    or-int/2addr v5, v2

    shl-int/lit8 v2, v1, 0x5

    ushr-int/lit8 v7, v1, 0x1b

    or-int/2addr v2, v7

    xor-int v7, v6, v5

    xor-int/2addr v7, v4

    add-int/2addr v2, v7

    iget-object v7, p0, Lb/a/a/a/b;->f:[I

    add-int/lit8 v8, v9, 0x1

    aget v7, v7, v9

    add-int/2addr v2, v7

    const v7, 0x6ed9eba1

    add-int/2addr v2, v7

    add-int/2addr v3, v2

    shl-int/lit8 v2, v6, 0x1e

    ushr-int/lit8 v6, v6, 0x2

    or-int/2addr v6, v2

    shl-int/lit8 v2, v3, 0x5

    ushr-int/lit8 v7, v3, 0x1b

    or-int/2addr v2, v7

    xor-int v7, v1, v6

    xor-int/2addr v7, v5

    add-int/2addr v2, v7

    iget-object v7, p0, Lb/a/a/a/b;->f:[I

    add-int/lit8 v9, v8, 0x1

    aget v7, v7, v8

    add-int/2addr v2, v7

    const v7, 0x6ed9eba1

    add-int/2addr v2, v7

    add-int/2addr v4, v2

    shl-int/lit8 v2, v1, 0x1e

    ushr-int/lit8 v1, v1, 0x2

    or-int/2addr v2, v1

    shl-int/lit8 v1, v4, 0x5

    ushr-int/lit8 v7, v4, 0x1b

    or-int/2addr v1, v7

    xor-int v7, v3, v2

    xor-int/2addr v7, v6

    add-int/2addr v1, v7

    iget-object v7, p0, Lb/a/a/a/b;->f:[I

    add-int/lit8 v8, v9, 0x1

    aget v7, v7, v9

    add-int/2addr v1, v7

    const v7, 0x6ed9eba1

    add-int/2addr v1, v7

    add-int/2addr v5, v1

    shl-int/lit8 v1, v3, 0x1e

    ushr-int/lit8 v3, v3, 0x2

    or-int/2addr v3, v1

    shl-int/lit8 v1, v5, 0x5

    ushr-int/lit8 v7, v5, 0x1b

    or-int/2addr v1, v7

    xor-int v7, v4, v3

    xor-int/2addr v7, v2

    add-int/2addr v7, v1

    iget-object v9, p0, Lb/a/a/a/b;->f:[I

    add-int/lit8 v1, v8, 0x1

    aget v8, v9, v8

    add-int/2addr v7, v8

    const v8, 0x6ed9eba1

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    shl-int/lit8 v7, v4, 0x1e

    ushr-int/lit8 v4, v4, 0x2

    or-int/2addr v4, v7

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_3
    shl-int/lit8 v7, v6, 0x5

    ushr-int/lit8 v8, v6, 0x1b

    or-int/2addr v7, v8

    invoke-static {v5, v4, v3}, Lb/a/a/a/b;->b(III)I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lb/a/a/a/b;->f:[I

    add-int/lit8 v9, v1, 0x1

    aget v1, v8, v1

    add-int/2addr v1, v7

    const v7, -0x70e44324

    add-int/2addr v1, v7

    add-int/2addr v1, v2

    shl-int/lit8 v2, v5, 0x1e

    ushr-int/lit8 v5, v5, 0x2

    or-int/2addr v5, v2

    shl-int/lit8 v2, v1, 0x5

    ushr-int/lit8 v7, v1, 0x1b

    or-int/2addr v2, v7

    invoke-static {v6, v5, v4}, Lb/a/a/a/b;->b(III)I

    move-result v7

    add-int/2addr v2, v7

    iget-object v7, p0, Lb/a/a/a/b;->f:[I

    add-int/lit8 v8, v9, 0x1

    aget v7, v7, v9

    add-int/2addr v2, v7

    const v7, -0x70e44324

    add-int/2addr v2, v7

    add-int/2addr v3, v2

    shl-int/lit8 v2, v6, 0x1e

    ushr-int/lit8 v6, v6, 0x2

    or-int/2addr v6, v2

    shl-int/lit8 v2, v3, 0x5

    ushr-int/lit8 v7, v3, 0x1b

    or-int/2addr v2, v7

    invoke-static {v1, v6, v5}, Lb/a/a/a/b;->b(III)I

    move-result v7

    add-int/2addr v2, v7

    iget-object v7, p0, Lb/a/a/a/b;->f:[I

    add-int/lit8 v9, v8, 0x1

    aget v7, v7, v8

    add-int/2addr v2, v7

    const v7, -0x70e44324

    add-int/2addr v2, v7

    add-int/2addr v4, v2

    shl-int/lit8 v2, v1, 0x1e

    ushr-int/lit8 v1, v1, 0x2

    or-int/2addr v2, v1

    shl-int/lit8 v1, v4, 0x5

    ushr-int/lit8 v7, v4, 0x1b

    or-int/2addr v1, v7

    invoke-static {v3, v2, v6}, Lb/a/a/a/b;->b(III)I

    move-result v7

    add-int/2addr v1, v7

    iget-object v7, p0, Lb/a/a/a/b;->f:[I

    add-int/lit8 v8, v9, 0x1

    aget v7, v7, v9

    add-int/2addr v1, v7

    const v7, -0x70e44324

    add-int/2addr v1, v7

    add-int/2addr v5, v1

    shl-int/lit8 v1, v3, 0x1e

    ushr-int/lit8 v3, v3, 0x2

    or-int/2addr v3, v1

    shl-int/lit8 v1, v5, 0x5

    ushr-int/lit8 v7, v5, 0x1b

    or-int/2addr v1, v7

    invoke-static {v4, v3, v2}, Lb/a/a/a/b;->b(III)I

    move-result v7

    add-int/2addr v7, v1

    iget-object v9, p0, Lb/a/a/a/b;->f:[I

    add-int/lit8 v1, v8, 0x1

    aget v8, v9, v8

    add-int/2addr v7, v8

    const v8, -0x70e44324

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    shl-int/lit8 v7, v4, 0x1e

    ushr-int/lit8 v4, v4, 0x2

    or-int/2addr v4, v7

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    :cond_4
    shl-int/lit8 v7, v6, 0x5

    ushr-int/lit8 v8, v6, 0x1b

    or-int/2addr v7, v8

    xor-int v8, v5, v4

    xor-int/2addr v8, v3

    add-int/2addr v7, v8

    iget-object v8, p0, Lb/a/a/a/b;->f:[I

    add-int/lit8 v9, v1, 0x1

    aget v1, v8, v1

    add-int/2addr v1, v7

    const v7, -0x359d3e2a

    add-int/2addr v1, v7

    add-int/2addr v1, v2

    shl-int/lit8 v2, v5, 0x1e

    ushr-int/lit8 v5, v5, 0x2

    or-int/2addr v5, v2

    shl-int/lit8 v2, v1, 0x5

    ushr-int/lit8 v7, v1, 0x1b

    or-int/2addr v2, v7

    xor-int v7, v6, v5

    xor-int/2addr v7, v4

    add-int/2addr v2, v7

    iget-object v7, p0, Lb/a/a/a/b;->f:[I

    add-int/lit8 v8, v9, 0x1

    aget v7, v7, v9

    add-int/2addr v2, v7

    const v7, -0x359d3e2a

    add-int/2addr v2, v7

    add-int/2addr v3, v2

    shl-int/lit8 v2, v6, 0x1e

    ushr-int/lit8 v6, v6, 0x2

    or-int/2addr v6, v2

    shl-int/lit8 v2, v3, 0x5

    ushr-int/lit8 v7, v3, 0x1b

    or-int/2addr v2, v7

    xor-int v7, v1, v6

    xor-int/2addr v7, v5

    add-int/2addr v2, v7

    iget-object v7, p0, Lb/a/a/a/b;->f:[I

    add-int/lit8 v9, v8, 0x1

    aget v7, v7, v8

    add-int/2addr v2, v7

    const v7, -0x359d3e2a

    add-int/2addr v2, v7

    add-int/2addr v4, v2

    shl-int/lit8 v2, v1, 0x1e

    ushr-int/lit8 v1, v1, 0x2

    or-int/2addr v2, v1

    shl-int/lit8 v1, v4, 0x5

    ushr-int/lit8 v7, v4, 0x1b

    or-int/2addr v1, v7

    xor-int v7, v3, v2

    xor-int/2addr v7, v6

    add-int/2addr v1, v7

    iget-object v7, p0, Lb/a/a/a/b;->f:[I

    add-int/lit8 v8, v9, 0x1

    aget v7, v7, v9

    add-int/2addr v1, v7

    const v7, -0x359d3e2a

    add-int/2addr v1, v7

    add-int/2addr v5, v1

    shl-int/lit8 v1, v3, 0x1e

    ushr-int/lit8 v3, v3, 0x2

    or-int/2addr v3, v1

    shl-int/lit8 v1, v5, 0x5

    ushr-int/lit8 v7, v5, 0x1b

    or-int/2addr v1, v7

    xor-int v7, v4, v3

    xor-int/2addr v7, v2

    add-int/2addr v7, v1

    iget-object v9, p0, Lb/a/a/a/b;->f:[I

    add-int/lit8 v1, v8, 0x1

    aget v8, v9, v8

    add-int/2addr v7, v8

    const v8, -0x359d3e2a

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    shl-int/lit8 v7, v4, 0x1e

    ushr-int/lit8 v4, v4, 0x2

    or-int/2addr v4, v7

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    :cond_5
    iget-object v1, p0, Lb/a/a/a/b;->f:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5
.end method
