.class public Lcom/lumensoft/ks/j;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private a:J

.field private a:[B

.field private a:[I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lumensoft/ks/j;->a:[I

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lumensoft/ks/j;->a:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/lumensoft/ks/j;->a:I

    invoke-virtual {p0}, Lcom/lumensoft/ks/j;->a()V

    return-void
.end method

.method private a(II)I
    .locals 2

    shl-int v0, p1, p2

    rsub-int/lit8 v1, p2, 0x20

    ushr-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private a(III)I
    .locals 2

    and-int v0, p1, p2

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v1, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private a(I[BI)V
    .locals 2

    ushr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x3

    int-to-byte v1, p1

    aput-byte v1, p2, v0

    return-void
.end method

.method private b(III)I
    .locals 1

    xor-int v0, p1, p2

    xor-int/2addr v0, p3

    return v0
.end method

.method private c(III)I
    .locals 2

    and-int v0, p1, p2

    and-int v1, p1, p3

    or-int/2addr v0, v1

    and-int v1, p2, p3

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public a([BI)I
    .locals 2

    invoke-virtual {p0}, Lcom/lumensoft/ks/j;->c()V

    iget v0, p0, Lcom/lumensoft/ks/j;->b:I

    invoke-direct {p0, v0, p1, p2}, Lcom/lumensoft/ks/j;->a(I[BI)V

    iget v0, p0, Lcom/lumensoft/ks/j;->c:I

    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, v0, p1, v1}, Lcom/lumensoft/ks/j;->a(I[BI)V

    iget v0, p0, Lcom/lumensoft/ks/j;->d:I

    add-int/lit8 v1, p2, 0x8

    invoke-direct {p0, v0, p1, v1}, Lcom/lumensoft/ks/j;->a(I[BI)V

    iget v0, p0, Lcom/lumensoft/ks/j;->e:I

    add-int/lit8 v1, p2, 0xc

    invoke-direct {p0, v0, p1, v1}, Lcom/lumensoft/ks/j;->a(I[BI)V

    iget v0, p0, Lcom/lumensoft/ks/j;->f:I

    add-int/lit8 v1, p2, 0x10

    invoke-direct {p0, v0, p1, v1}, Lcom/lumensoft/ks/j;->a(I[BI)V

    invoke-virtual {p0}, Lcom/lumensoft/ks/j;->a()V

    const/16 v0, 0x14

    return v0
.end method

.method public a()V
    .locals 4

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/lumensoft/ks/j;->a:J

    iput v1, p0, Lcom/lumensoft/ks/j;->a:I

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/lumensoft/ks/j;->a:[B

    array-length v2, v2

    if-lt v0, v2, :cond_0

    const v0, 0x67452301

    iput v0, p0, Lcom/lumensoft/ks/j;->b:I

    const v0, -0x10325477

    iput v0, p0, Lcom/lumensoft/ks/j;->c:I

    const v0, -0x67452302

    iput v0, p0, Lcom/lumensoft/ks/j;->d:I

    const v0, 0x10325476

    iput v0, p0, Lcom/lumensoft/ks/j;->e:I

    const v0, -0x3c2d1e10

    iput v0, p0, Lcom/lumensoft/ks/j;->f:I

    iput v1, p0, Lcom/lumensoft/ks/j;->g:I

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/lumensoft/ks/j;->a:[I

    array-length v2, v2

    if-ne v0, v2, :cond_1

    return-void

    :cond_0
    iget-object v2, p0, Lcom/lumensoft/ks/j;->a:[B

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/lumensoft/ks/j;->a:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public a(B)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/lumensoft/ks/j;->a:[B

    iget v1, p0, Lcom/lumensoft/ks/j;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/lumensoft/ks/j;->a:I

    aput-byte p1, v0, v1

    iget v0, p0, Lcom/lumensoft/ks/j;->a:I

    iget-object v1, p0, Lcom/lumensoft/ks/j;->a:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/lumensoft/ks/j;->a:[B

    invoke-virtual {p0, v0, v3}, Lcom/lumensoft/ks/j;->a([BI)V

    iput v3, p0, Lcom/lumensoft/ks/j;->a:I

    :cond_0
    iget-wide v0, p0, Lcom/lumensoft/ks/j;->a:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lumensoft/ks/j;->a:J

    return-void
.end method

.method protected a(J)V
    .locals 4

    const/16 v3, 0xe

    iget v0, p0, Lcom/lumensoft/ks/j;->g:I

    if-le v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/lumensoft/ks/j;->b()V

    :cond_0
    iget-object v0, p0, Lcom/lumensoft/ks/j;->a:[I

    const/16 v1, 0x20

    ushr-long v1, p1, v1

    long-to-int v1, v1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/lumensoft/ks/j;->a:[I

    const/16 v1, 0xf

    const-wide/16 v2, -0x1

    and-long/2addr v2, p1

    long-to-int v2, v2

    aput v2, v0, v1

    return-void
.end method

.method protected a([BI)V
    .locals 4

    iget-object v0, p0, Lcom/lumensoft/ks/j;->a:[I

    iget v1, p0, Lcom/lumensoft/ks/j;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/lumensoft/ks/j;->g:I

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

    iget v0, p0, Lcom/lumensoft/ks/j;->g:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/lumensoft/ks/j;->b()V

    :cond_0
    return-void
.end method

.method public a([BII)V
    .locals 4

    :goto_0
    iget v0, p0, Lcom/lumensoft/ks/j;->a:I

    if-eqz v0, :cond_0

    if-gtz p3, :cond_1

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/lumensoft/ks/j;->a:[B

    array-length v0, v0

    if-gt p3, v0, :cond_2

    :goto_2
    if-gtz p3, :cond_3

    return-void

    :cond_1
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/lumensoft/ks/j;->a(B)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/lumensoft/ks/j;->a([BI)V

    iget-object v0, p0, Lcom/lumensoft/ks/j;->a:[B

    array-length v0, v0

    add-int/2addr p2, v0

    iget-object v0, p0, Lcom/lumensoft/ks/j;->a:[B

    array-length v0, v0

    sub-int/2addr p3, v0

    iget-wide v0, p0, Lcom/lumensoft/ks/j;->a:J

    iget-object v2, p0, Lcom/lumensoft/ks/j;->a:[B

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lumensoft/ks/j;->a:J

    goto :goto_1

    :cond_3
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/lumensoft/ks/j;->a(B)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_2
.end method

.method protected b()V
    .locals 13

    const/16 v11, 0x4f

    const/16 v10, 0x1e

    const/4 v9, 0x5

    const/4 v1, 0x0

    const/16 v0, 0x10

    :goto_0
    if-le v0, v11, :cond_0

    iget v6, p0, Lcom/lumensoft/ks/j;->b:I

    iget v5, p0, Lcom/lumensoft/ks/j;->c:I

    iget v4, p0, Lcom/lumensoft/ks/j;->d:I

    iget v3, p0, Lcom/lumensoft/ks/j;->e:I

    iget v2, p0, Lcom/lumensoft/ks/j;->f:I

    move v0, v1

    :goto_1
    const/16 v7, 0x13

    if-le v0, v7, :cond_1

    const/16 v0, 0x14

    :goto_2
    const/16 v7, 0x27

    if-le v0, v7, :cond_2

    const/16 v0, 0x28

    :goto_3
    const/16 v7, 0x3b

    if-le v0, v7, :cond_3

    const/16 v0, 0x3c

    :goto_4
    if-le v0, v11, :cond_4

    iget v0, p0, Lcom/lumensoft/ks/j;->b:I

    add-int/2addr v0, v6

    iput v0, p0, Lcom/lumensoft/ks/j;->b:I

    iget v0, p0, Lcom/lumensoft/ks/j;->c:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/lumensoft/ks/j;->c:I

    iget v0, p0, Lcom/lumensoft/ks/j;->d:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/lumensoft/ks/j;->d:I

    iget v0, p0, Lcom/lumensoft/ks/j;->e:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/lumensoft/ks/j;->e:I

    iget v0, p0, Lcom/lumensoft/ks/j;->f:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/lumensoft/ks/j;->f:I

    iput v1, p0, Lcom/lumensoft/ks/j;->g:I

    move v0, v1

    :goto_5
    iget-object v2, p0, Lcom/lumensoft/ks/j;->a:[I

    array-length v2, v2

    if-ne v0, v2, :cond_5

    return-void

    :cond_0
    iget-object v2, p0, Lcom/lumensoft/ks/j;->a:[I

    iget-object v3, p0, Lcom/lumensoft/ks/j;->a:[I

    add-int/lit8 v4, v0, -0x3

    aget v3, v3, v4

    iget-object v4, p0, Lcom/lumensoft/ks/j;->a:[I

    add-int/lit8 v5, v0, -0x8

    aget v4, v4, v5

    xor-int/2addr v3, v4

    iget-object v4, p0, Lcom/lumensoft/ks/j;->a:[I

    add-int/lit8 v5, v0, -0xe

    aget v4, v4, v5

    xor-int/2addr v3, v4

    iget-object v4, p0, Lcom/lumensoft/ks/j;->a:[I

    add-int/lit8 v5, v0, -0x10

    aget v4, v4, v5

    xor-int/2addr v3, v4

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/lumensoft/ks/j;->a(II)I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v6, v9}, Lcom/lumensoft/ks/j;->a(II)I

    move-result v7

    invoke-direct {p0, v5, v4, v3}, Lcom/lumensoft/ks/j;->a(III)I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v2, v7

    iget-object v7, p0, Lcom/lumensoft/ks/j;->a:[I

    aget v7, v7, v0

    add-int/2addr v2, v7

    const v7, 0x5a827999

    add-int/2addr v7, v2

    invoke-direct {p0, v5, v10}, Lcom/lumensoft/ks/j;->a(II)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    move v5, v6

    move v6, v7

    move v12, v2

    move v2, v3

    move v3, v4

    move v4, v12

    goto :goto_1

    :cond_2
    invoke-direct {p0, v6, v9}, Lcom/lumensoft/ks/j;->a(II)I

    move-result v7

    invoke-direct {p0, v5, v4, v3}, Lcom/lumensoft/ks/j;->b(III)I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v2, v7

    iget-object v7, p0, Lcom/lumensoft/ks/j;->a:[I

    aget v7, v7, v0

    add-int/2addr v2, v7

    const v7, 0x6ed9eba1

    add-int/2addr v7, v2

    invoke-direct {p0, v5, v10}, Lcom/lumensoft/ks/j;->a(II)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    move v5, v6

    move v6, v7

    move v12, v2

    move v2, v3

    move v3, v4

    move v4, v12

    goto/16 :goto_2

    :cond_3
    invoke-direct {p0, v6, v9}, Lcom/lumensoft/ks/j;->a(II)I

    move-result v7

    invoke-direct {p0, v5, v4, v3}, Lcom/lumensoft/ks/j;->c(III)I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v2, v7

    iget-object v7, p0, Lcom/lumensoft/ks/j;->a:[I

    aget v7, v7, v0

    add-int/2addr v2, v7

    const v7, -0x70e44324

    add-int/2addr v7, v2

    invoke-direct {p0, v5, v10}, Lcom/lumensoft/ks/j;->a(II)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    move v5, v6

    move v6, v7

    move v12, v2

    move v2, v3

    move v3, v4

    move v4, v12

    goto/16 :goto_3

    :cond_4
    invoke-direct {p0, v6, v9}, Lcom/lumensoft/ks/j;->a(II)I

    move-result v7

    invoke-direct {p0, v5, v4, v3}, Lcom/lumensoft/ks/j;->b(III)I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v2, v7

    iget-object v7, p0, Lcom/lumensoft/ks/j;->a:[I

    aget v7, v7, v0

    add-int/2addr v2, v7

    const v7, -0x359d3e2a

    add-int/2addr v7, v2

    invoke-direct {p0, v5, v10}, Lcom/lumensoft/ks/j;->a(II)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    move v5, v6

    move v6, v7

    move v12, v2

    move v2, v3

    move v3, v4

    move v4, v12

    goto/16 :goto_4

    :cond_5
    iget-object v2, p0, Lcom/lumensoft/ks/j;->a:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5
.end method

.method public c()V
    .locals 3

    iget-wide v0, p0, Lcom/lumensoft/ks/j;->a:J

    const/4 v2, 0x3

    shl-long/2addr v0, v2

    const/16 v2, -0x80

    invoke-virtual {p0, v2}, Lcom/lumensoft/ks/j;->a(B)V

    :goto_0
    iget v2, p0, Lcom/lumensoft/ks/j;->a:I

    if-nez v2, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/lumensoft/ks/j;->a(J)V

    invoke-virtual {p0}, Lcom/lumensoft/ks/j;->b()V

    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/lumensoft/ks/j;->a(B)V

    goto :goto_0
.end method
