.class public Lcom/lumensoft/ks/b;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field a:[I

.field b:I

.field b:[I

.field c:I

.field c:[I

.field d:I

.field d:[I

.field e:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v1, 0x40

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/lumensoft/ks/b;->c:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/lumensoft/ks/b;->d:[I

    const/16 v0, 0x81

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lumensoft/ks/b;->a:[I

    const/16 v0, 0x41

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lumensoft/ks/b;->b:[I

    return-void
.end method

.method public static a([II)I
    .locals 2

    :goto_0
    add-int/lit8 v0, p1, -0x1

    aget v0, p0, v0

    if-nez v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    add-int/lit8 v0, p1, -0x1

    aget v0, p0, v0

    const/high16 v1, -0x100

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    shl-int/lit8 v0, p1, 0x2

    :goto_1
    return v0

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, p1, -0x1

    aget v0, p0, v0

    const/high16 v1, 0xff

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    shl-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, p1, -0x1

    aget v0, p0, v0

    const v1, 0xff00

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    shl-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, -0x2

    goto :goto_1

    :cond_4
    shl-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, -0x3

    goto :goto_1
.end method


# virtual methods
.method public a(IIII)I
    .locals 10

    const/high16 v0, -0x8000

    and-int v1, p2, v0

    const/4 v0, 0x1

    move v3, v0

    move v0, v1

    :goto_0
    const/16 v1, 0x20

    if-le v3, v1, :cond_0

    return p1

    :cond_0
    shl-int/lit8 v1, p2, 0x1

    rsub-int/lit8 v2, v3, 0x20

    ushr-int v2, p3, v2

    and-int/lit8 v2, v2, 0x1

    xor-int/2addr v2, v1

    shl-int/lit8 v1, p1, 0x1

    if-eqz v0, :cond_1

    xor-int/lit8 v1, v1, 0x1

    sub-int/2addr v2, p4

    const/4 v0, 0x0

    :cond_1
    const/high16 v4, -0x8000

    and-int/2addr v4, v2

    if-eqz v4, :cond_2

    int-to-long v4, v2

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    int-to-long v6, p4

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-ltz v4, :cond_3

    xor-int/lit8 v1, v1, 0x1

    sub-int/2addr v2, p4

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move p1, v1

    move p2, v2

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public a([II[II)I
    .locals 9

    const/4 v0, 0x1

    const/4 v1, -0x1

    const-wide v7, 0xffffffffL

    if-le p2, p4, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ge p2, p4, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v2, p2, -0x1

    :goto_1
    if-gez v2, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    aget v3, p1, v2

    int-to-long v3, v3

    and-long/2addr v3, v7

    aget v5, p3, v2

    int-to-long v5, v5

    and-long/2addr v5, v7

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    aget v3, p1, v2

    int-to-long v3, v3

    and-long/2addr v3, v7

    aget v5, p3, v2

    int-to-long v5, v5

    and-long/2addr v5, v7

    cmp-long v3, v3, v5

    if-gez v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public a([I[I)I
    .locals 2

    array-length v0, p1

    array-length v1, p2

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/lumensoft/ks/b;->a([II[II)I

    move-result v0

    return v0
.end method

.method a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/lumensoft/ks/b;->a:I

    iput v0, p0, Lcom/lumensoft/ks/b;->b:I

    iput v0, p0, Lcom/lumensoft/ks/b;->c:I

    iput v0, p0, Lcom/lumensoft/ks/b;->d:I

    iput v0, p0, Lcom/lumensoft/ks/b;->e:I

    return-void
.end method

.method public a(II)V
    .locals 6

    const-wide v4, 0xffffffffL

    int-to-long v0, p1

    and-long/2addr v0, v4

    int-to-long v2, p2

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/lumensoft/ks/b;->c:I

    xor-int v0, p1, p2

    iget v1, p0, Lcom/lumensoft/ks/b;->c:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x1f

    iput v0, p0, Lcom/lumensoft/ks/b;->b:I

    iget v0, p0, Lcom/lumensoft/ks/b;->c:I

    iput v0, p0, Lcom/lumensoft/ks/b;->a:I

    return-void
.end method

.method public a(III)V
    .locals 11

    const-wide v9, 0xffffffffL

    const v8, 0xffff

    ushr-int/lit8 v0, p1, 0x10

    and-int v1, p1, v8

    ushr-int/lit8 v2, p2, 0x10

    and-int v3, p2, v8

    mul-int v4, v1, v3

    int-to-long v4, v4

    and-long/2addr v4, v9

    and-int v6, p3, v8

    int-to-long v6, v6

    add-long/2addr v4, v6

    long-to-int v4, v4

    mul-int/2addr v3, v0

    mul-int/2addr v1, v2

    mul-int/2addr v0, v2

    ushr-int/lit8 v2, v4, 0x10

    and-int v5, v3, v8

    add-int/2addr v2, v5

    and-int v5, v1, v8

    add-int/2addr v2, v5

    ushr-int/lit8 v5, p3, 0x10

    add-int/2addr v2, v5

    shl-int/lit8 v5, v2, 0x10

    and-int/2addr v4, v8

    xor-int/2addr v4, v5

    iput v4, p0, Lcom/lumensoft/ks/b;->d:I

    int-to-long v4, v0

    and-long/2addr v4, v9

    ushr-int/lit8 v0, v2, 0x10

    int-to-long v6, v0

    add-long/2addr v4, v6

    ushr-int/lit8 v0, v3, 0x10

    int-to-long v2, v0

    add-long/2addr v2, v4

    ushr-int/lit8 v0, v1, 0x10

    int-to-long v0, v0

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/lumensoft/ks/b;->e:I

    return-void
.end method

.method public a([II[II)[I
    .locals 14

    const/4 v2, 0x0

    const/16 v3, 0x41

    new-array v6, v3, [I

    const/16 v3, 0x81

    new-array v7, v3, [I

    shl-int/lit8 v3, p2, 0x2

    new-array v8, v3, [I

    const/4 v3, 0x3

    new-array v9, v3, [I

    invoke-virtual {p0}, Lcom/lumensoft/ks/b;->a()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v0, v3, v6, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    add-int/lit8 v3, p4, -0x1

    aget v3, v6, v3

    if-eqz v3, :cond_3

    :goto_1
    add-int/lit8 v3, p4, -0x1

    aget v3, v6, v3

    const/high16 v4, -0x8000

    and-int/2addr v3, v4

    if-eqz v3, :cond_4

    if-lez v2, :cond_0

    const/4 v3, 0x0

    aput v3, p1, p2

    add-int/lit8 v3, p2, -0x1

    :goto_2
    if-gez v3, :cond_7

    add-int/lit8 p2, p2, 0x1

    :cond_0
    :goto_3
    add-int/lit8 v3, p2, -0x1

    aget v3, p1, v3

    if-eqz v3, :cond_8

    move/from16 v0, p2

    move/from16 v1, p4

    if-lt v0, v1, :cond_1

    const/4 v3, 0x0

    :goto_4
    move/from16 v0, p4

    if-lt v3, v0, :cond_9

    :cond_1
    const/4 v3, 0x3

    new-array v10, v3, [I

    add-int/lit8 v3, p2, -0x1

    move v5, v3

    :goto_5
    move/from16 v0, p4

    if-ge v5, v0, :cond_a

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/lumensoft/ks/b;->b:[I

    const/4 v5, 0x0

    move/from16 v0, p4

    invoke-static {p1, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/lumensoft/ks/b;->b:[I

    const/4 v4, 0x0

    aget v5, v3, v4

    ushr-int/2addr v5, v2

    aput v5, v3, v4

    const/4 v3, 0x1

    :goto_6
    move/from16 v0, p4

    if-lt v3, v0, :cond_12

    :cond_2
    return-object v8

    :cond_3
    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v3, p4, -0x1

    :goto_7
    if-gez v3, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    aget v4, v6, v3

    const/high16 v5, -0x8000

    and-int/2addr v4, v5

    if-eqz v4, :cond_6

    add-int/lit8 v4, v3, 0x1

    aget v5, v6, v4

    xor-int/lit8 v5, v5, 0x1

    aput v5, v6, v4

    :cond_6
    aget v4, v6, v3

    shl-int/lit8 v4, v4, 0x1

    aput v4, v6, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_7

    :cond_7
    add-int/lit8 v4, v3, 0x1

    aget v5, p1, v4

    aget v10, p1, v3

    rsub-int/lit8 v11, v2, 0x20

    shr-int/2addr v10, v11

    xor-int/2addr v5, v10

    aput v5, p1, v4

    aget v4, p1, v3

    shl-int/2addr v4, v2

    aput v4, p1, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_8
    add-int/lit8 p2, p2, -0x1

    goto :goto_3

    :cond_9
    add-int v4, v3, p2

    sub-int v4, v4, p4

    aget v5, v6, v3

    aput v5, v7, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_a
    aget v3, p1, v5

    add-int/lit8 v4, p4, -0x1

    aget v4, v6, v4

    if-ne v3, v4, :cond_c

    sub-int v3, v5, p4

    const/4 v4, -0x1

    aput v4, v8, v3

    :goto_8
    sub-int v3, v5, p4

    aget v3, v8, v3

    add-int/lit8 v4, p4, -0x2

    aget v4, v6, v4

    const/4 v11, 0x0

    invoke-virtual {p0, v3, v4, v11}, Lcom/lumensoft/ks/b;->a(III)V

    const/4 v3, 0x0

    iget v4, p0, Lcom/lumensoft/ks/b;->d:I

    aput v4, v9, v3

    iget v3, p0, Lcom/lumensoft/ks/b;->e:I

    sub-int v4, v5, p4

    aget v4, v8, v4

    add-int/lit8 v11, p4, -0x1

    aget v11, v6, v11

    invoke-virtual {p0, v4, v11, v3}, Lcom/lumensoft/ks/b;->a(III)V

    const/4 v3, 0x1

    iget v4, p0, Lcom/lumensoft/ks/b;->d:I

    aput v4, v9, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/lumensoft/ks/b;->e:I

    aput v4, v9, v3

    add-int/lit8 v3, v5, -0x2

    const/4 v4, 0x0

    const/4 v11, 0x3

    invoke-static {p1, v3, v10, v4, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_9
    const/4 v3, 0x3

    const/4 v4, 0x3

    invoke-virtual {p0, v9, v3, v10, v4}, Lcom/lumensoft/ks/b;->a([II[II)I

    move-result v3

    if-gtz v3, :cond_d

    sub-int v3, v5, p4

    const/4 v4, 0x0

    aput v4, v7, v3

    const/4 v3, 0x0

    :goto_a
    move/from16 v0, p4

    if-lt v3, v0, :cond_e

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_b
    if-le v4, v5, :cond_f

    if-nez v3, :cond_b

    const/4 v4, 0x0

    :goto_c
    move/from16 v0, p4

    if-lt v4, v0, :cond_10

    const/4 v4, 0x0

    :goto_d
    if-le v4, v5, :cond_11

    sub-int v3, v5, p4

    aget v4, v8, v3

    add-int/lit8 v4, v4, -0x1

    aput v4, v8, v3

    :cond_b
    add-int/lit8 v3, v5, -0x1

    move v5, v3

    goto/16 :goto_5

    :cond_c
    sub-int v3, v5, p4

    sub-int v4, v5, p4

    aget v4, v8, v4

    aget v11, p1, v5

    add-int/lit8 v12, v5, -0x1

    aget v12, p1, v12

    add-int/lit8 v13, p4, -0x1

    aget v13, v6, v13

    invoke-virtual {p0, v4, v11, v12, v13}, Lcom/lumensoft/ks/b;->a(IIII)I

    move-result v4

    aput v4, v8, v3

    goto :goto_8

    :cond_d
    sub-int v3, v5, p4

    aget v4, v8, v3

    add-int/lit8 v4, v4, -0x1

    aput v4, v8, v3

    sub-int v3, v5, p4

    aget v3, v8, v3

    add-int/lit8 v4, p4, -0x2

    aget v4, v6, v4

    const/4 v11, 0x0

    invoke-virtual {p0, v3, v4, v11}, Lcom/lumensoft/ks/b;->a(III)V

    const/4 v3, 0x0

    iget v4, p0, Lcom/lumensoft/ks/b;->d:I

    aput v4, v9, v3

    iget v3, p0, Lcom/lumensoft/ks/b;->e:I

    sub-int v4, v5, p4

    aget v4, v8, v4

    add-int/lit8 v11, p4, -0x1

    aget v11, v6, v11

    invoke-virtual {p0, v4, v11, v3}, Lcom/lumensoft/ks/b;->a(III)V

    const/4 v3, 0x1

    iget v4, p0, Lcom/lumensoft/ks/b;->d:I

    aput v4, v9, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/lumensoft/ks/b;->e:I

    aput v4, v9, v3

    goto :goto_9

    :cond_e
    sub-int v4, v5, p4

    aget v4, v8, v4

    aget v11, v6, v3

    add-int v12, v3, v5

    sub-int v12, v12, p4

    aget v12, v7, v12

    invoke-virtual {p0, v4, v11, v12}, Lcom/lumensoft/ks/b;->a(III)V

    add-int v4, v3, v5

    sub-int v4, v4, p4

    iget v11, p0, Lcom/lumensoft/ks/b;->d:I

    aput v11, v7, v4

    add-int v4, v3, v5

    sub-int v4, v4, p4

    add-int/lit8 v4, v4, 0x1

    iget v11, p0, Lcom/lumensoft/ks/b;->e:I

    aput v11, v7, v4

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_a

    :cond_f
    aget v11, v7, v4

    xor-int/lit8 v11, v11, -0x1

    invoke-virtual {p0, v11, v3}, Lcom/lumensoft/ks/b;->a(II)V

    iget v3, p0, Lcom/lumensoft/ks/b;->a:I

    iget v11, p0, Lcom/lumensoft/ks/b;->b:I

    iget v12, p0, Lcom/lumensoft/ks/b;->c:I

    aget v12, p1, v4

    invoke-virtual {p0, v12, v3}, Lcom/lumensoft/ks/b;->a(II)V

    iget v3, p0, Lcom/lumensoft/ks/b;->a:I

    aput v3, p1, v4

    iget v3, p0, Lcom/lumensoft/ks/b;->b:I

    iget v12, p0, Lcom/lumensoft/ks/b;->c:I

    add-int/2addr v3, v11

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_b

    :cond_10
    add-int v11, v4, v5

    sub-int v11, v11, p4

    aget v12, v6, v4

    aput v12, v7, v11

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_c

    :cond_11
    aget v11, v7, v4

    invoke-virtual {p0, v11, v3}, Lcom/lumensoft/ks/b;->a(II)V

    iget v3, p0, Lcom/lumensoft/ks/b;->a:I

    iget v11, p0, Lcom/lumensoft/ks/b;->b:I

    iget v12, p0, Lcom/lumensoft/ks/b;->c:I

    aget v12, p1, v4

    invoke-virtual {p0, v12, v3}, Lcom/lumensoft/ks/b;->a(II)V

    iget v3, p0, Lcom/lumensoft/ks/b;->a:I

    aput v3, p1, v4

    iget v3, p0, Lcom/lumensoft/ks/b;->b:I

    iget v12, p0, Lcom/lumensoft/ks/b;->c:I

    add-int/2addr v3, v11

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_d

    :cond_12
    iget-object v4, p0, Lcom/lumensoft/ks/b;->b:[I

    add-int/lit8 v5, v3, -0x1

    aget v6, v4, v5

    iget-object v7, p0, Lcom/lumensoft/ks/b;->b:[I

    aget v7, v7, v3

    rsub-int/lit8 v9, v2, 0x20

    shl-int/2addr v7, v9

    xor-int/2addr v6, v7

    aput v6, v4, v5

    iget-object v4, p0, Lcom/lumensoft/ks/b;->b:[I

    aget v5, v4, v3

    ushr-int/2addr v5, v2

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6
.end method

.method public a([II[II[II)[I
    .locals 18

    const/4 v5, 0x0

    const/4 v4, 0x6

    new-array v14, v4, [I

    fill-array-data v14, :array_0

    const/16 v4, 0x40

    new-array v15, v4, [[I

    mul-int/lit8 v4, p4, 0x20

    new-array v0, v4, [B

    move-object/from16 v16, v0

    add-int/lit8 v4, p4, -0x1

    move v6, v4

    :goto_0
    if-gez v6, :cond_2

    move-object/from16 v0, p3

    array-length v4, v0

    mul-int/lit8 v4, v4, 0x20

    add-int/lit8 v4, v4, -0x1

    move v10, v4

    :goto_1
    aget-byte v4, v16, v10

    if-nez v4, :cond_0

    if-gtz v10, :cond_5

    :cond_0
    const/16 v4, 0x64

    if-le v5, v4, :cond_6

    const/4 v4, 0x5

    move v11, v4

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Lcom/lumensoft/ks/b;->b([II)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lumensoft/ks/b;->b:[I

    array-length v4, v4

    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lumensoft/ks/b;->b:[I

    add-int/lit8 v6, v4, -0x1

    aget v5, v5, v6

    if-nez v5, :cond_1

    const/4 v5, 0x1

    if-gt v4, v5, :cond_7

    :cond_1
    new-array v6, v4, [I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lumensoft/ks/b;->b:[I

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v7, v6, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/lumensoft/ks/b;->a([I[I)I

    move-result v4

    if-lez v4, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move/from16 v3, p6

    invoke-virtual {v0, v1, v2, v8, v3}, Lcom/lumensoft/ks/b;->b([I[III)[I

    move-result-object v5

    move-object/from16 v4, p0

    move-object/from16 v7, p5

    move/from16 v9, p6

    invoke-virtual/range {v4 .. v9}, Lcom/lumensoft/ks/b;->a([I[I[III)[I

    move-result-object v5

    const/4 v12, 0x0

    move-object/from16 v4, p0

    move-object/from16 v7, p5

    move/from16 v9, p6

    invoke-virtual/range {v4 .. v9}, Lcom/lumensoft/ks/b;->a([I[I[III)[I

    move-result-object v4

    aput-object v4, v15, v12

    :goto_4
    const/4 v4, 0x0

    aget-object v4, v15, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p6

    invoke-virtual {v0, v4, v1, v8, v2}, Lcom/lumensoft/ks/b;->a([I[III)[I

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lumensoft/ks/b;->b:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p6

    invoke-virtual {v0, v4, v1, v8, v2}, Lcom/lumensoft/ks/b;->b([I[III)[I

    move-result-object v13

    const/4 v4, 0x1

    move v12, v4

    :goto_5
    add-int/lit8 v4, v11, -0x2

    aget v4, v14, v4

    if-lt v12, v4, :cond_9

    move-object v5, v13

    move v12, v10

    :goto_6
    if-gez v12, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p6

    invoke-virtual {v0, v5, v1, v8, v2}, Lcom/lumensoft/ks/b;->b([I[III)[I

    move-result-object v4

    return-object v4

    :cond_2
    const/16 v4, 0x1f

    move/from16 v17, v5

    move v5, v4

    move/from16 v4, v17

    :goto_7
    if-gez v5, :cond_3

    add-int/lit8 v5, v6, -0x1

    move v6, v5

    move v5, v4

    goto/16 :goto_0

    :cond_3
    aget v7, p3, v6

    const/4 v8, 0x1

    shl-int/2addr v8, v5

    and-int/2addr v7, v8

    if-eqz v7, :cond_4

    mul-int/lit8 v7, v6, 0x20

    add-int/2addr v7, v5

    const/4 v8, 0x1

    aput-byte v8, v16, v7

    add-int/lit8 v4, v4, 0x1

    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_7

    :cond_5
    add-int/lit8 v4, v10, -0x1

    move v10, v4

    goto/16 :goto_1

    :cond_6
    const/4 v4, 0x4

    move v11, v4

    goto/16 :goto_2

    :cond_7
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_3

    :cond_8
    const/4 v12, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p5

    move/from16 v9, p6

    invoke-virtual/range {v4 .. v9}, Lcom/lumensoft/ks/b;->a([I[I[III)[I

    move-result-object v4

    aput-object v4, v15, v12

    goto :goto_4

    :cond_9
    add-int/lit8 v4, v12, -0x1

    aget-object v5, v15, v4

    move-object/from16 v4, p0

    move-object/from16 v7, p5

    move/from16 v9, p6

    invoke-virtual/range {v4 .. v9}, Lcom/lumensoft/ks/b;->a([I[I[III)[I

    move-result-object v4

    aput-object v4, v15, v12

    add-int/lit8 v4, v12, 0x1

    move v12, v4

    goto :goto_5

    :cond_a
    aget-byte v4, v16, v12

    if-eqz v4, :cond_e

    const/4 v6, 0x1

    const/4 v4, 0x1

    :goto_8
    if-ge v4, v11, :cond_f

    sub-int v7, v12, v4

    if-gez v7, :cond_b

    move v10, v4

    :goto_9
    and-int/lit8 v4, v6, 0x1

    if-eqz v4, :cond_c

    const/4 v4, 0x0

    :goto_a
    if-lt v4, v10, :cond_d

    ushr-int/lit8 v4, v6, 0x1

    aget-object v6, v15, v4

    move-object/from16 v4, p0

    move-object/from16 v7, p5

    move/from16 v9, p6

    invoke-virtual/range {v4 .. v9}, Lcom/lumensoft/ks/b;->a([I[I[III)[I

    move-result-object v5

    sub-int v10, v12, v10

    move v12, v10

    goto/16 :goto_6

    :cond_b
    shl-int/lit8 v6, v6, 0x1

    int-to-byte v6, v6

    sub-int v7, v12, v4

    aget-byte v7, v16, v7

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_c
    ushr-int/lit8 v4, v6, 0x1

    int-to-byte v6, v4

    add-int/lit8 v4, v10, -0x1

    move v10, v4

    goto :goto_9

    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p6

    invoke-virtual {v0, v5, v1, v8, v2}, Lcom/lumensoft/ks/b;->a([I[III)[I

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_e
    add-int/lit8 v10, v12, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p6

    invoke-virtual {v0, v5, v1, v8, v2}, Lcom/lumensoft/ks/b;->a([I[III)[I

    move-result-object v5

    move v12, v10

    goto/16 :goto_6

    :cond_f
    move v10, v4

    goto :goto_9

    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public a([I[III)[I
    .locals 15

    move-object/from16 v0, p1

    array-length v2, v0

    shl-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    new-array v6, v2, [I

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p1

    array-length v3, v0

    if-lt v2, v3, :cond_1

    move-object/from16 v0, p1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    shl-int/lit8 v2, v2, 0x1

    :goto_1
    if-gtz v2, :cond_3

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_2
    move-object/from16 v0, p1

    array-length v5, v0

    if-lt v4, v5, :cond_5

    const/4 v2, 0x0

    move v5, v2

    :goto_3
    move/from16 v0, p4

    if-lt v5, v0, :cond_6

    add-int/lit8 v2, p4, 0x1

    :goto_4
    add-int/lit8 v3, v2, -0x1

    aget v3, v6, v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    if-gt v2, v3, :cond_9

    :cond_0
    move-object/from16 v0, p2

    move/from16 v1, p4

    invoke-virtual {p0, v6, v2, v0, v1}, Lcom/lumensoft/ks/b;->a([II[II)I

    move-result v3

    if-ltz v3, :cond_a

    move-object/from16 v0, p2

    move/from16 v1, p4

    invoke-virtual {p0, v6, v2, v0, v1}, Lcom/lumensoft/ks/b;->b([II[II)I

    move-result v3

    new-array v2, v3, [I

    iget-object v4, p0, Lcom/lumensoft/ks/b;->c:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_5
    return-object v2

    :cond_1
    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    :goto_6
    if-lt v5, v2, :cond_2

    shl-int/lit8 v5, v2, 0x1

    const-wide v7, 0xffffffffL

    and-long/2addr v3, v7

    long-to-int v3, v3

    aput v3, v6, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    aget v7, p1, v2

    int-to-long v7, v7

    const-wide v9, 0xffffffffL

    and-long/2addr v7, v9

    aget v9, p1, v5

    int-to-long v9, v9

    const-wide v11, 0xffffffffL

    and-long/2addr v9, v11

    mul-long/2addr v7, v9

    add-int v9, v2, v5

    aget v9, v6, v9

    int-to-long v9, v9

    const-wide v11, 0xffffffffL

    and-long/2addr v9, v11

    add-long/2addr v7, v9

    add-long/2addr v3, v7

    add-int v7, v2, v5

    const-wide v8, 0xffffffffL

    and-long/2addr v8, v3

    long-to-int v8, v8

    aput v8, v6, v7

    const/16 v7, 0x20

    ushr-long/2addr v3, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_3
    aget v3, v6, v2

    const/high16 v4, -0x8000

    and-int/2addr v3, v4

    if-eqz v3, :cond_4

    add-int/lit8 v3, v2, 0x1

    aget v4, v6, v3

    xor-int/lit8 v4, v4, 0x1

    aput v4, v6, v3

    :cond_4
    aget v3, v6, v2

    shl-int/lit8 v3, v3, 0x1

    aput v3, v6, v2

    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_1

    :cond_5
    aget v5, p1, v4

    int-to-long v7, v5

    const-wide v9, 0xffffffffL

    and-long/2addr v7, v9

    aget v5, p1, v4

    int-to-long v9, v5

    const-wide v11, 0xffffffffL

    and-long/2addr v9, v11

    mul-long/2addr v7, v9

    shl-int/lit8 v5, v4, 0x1

    aget v5, v6, v5

    int-to-long v9, v5

    const-wide v11, 0xffffffffL

    and-long/2addr v9, v11

    add-long/2addr v7, v9

    add-long/2addr v2, v7

    shl-int/lit8 v5, v4, 0x1

    const-wide v7, 0xffffffffL

    and-long/2addr v7, v2

    long-to-int v7, v7

    aput v7, v6, v5

    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    shl-int/lit8 v5, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    aget v5, v6, v5

    int-to-long v7, v5

    const-wide v9, 0xffffffffL

    and-long/2addr v7, v9

    add-long/2addr v2, v7

    shl-int/lit8 v5, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    const-wide v7, 0xffffffffL

    and-long/2addr v7, v2

    long-to-int v7, v7

    aput v7, v6, v5

    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_6
    const/4 v2, 0x0

    aget v2, v6, v2

    int-to-long v2, v2

    const-wide v7, 0xffffffffL

    and-long/2addr v2, v7

    move/from16 v0, p3

    int-to-long v7, v0

    const-wide v9, 0xffffffffL

    and-long/2addr v7, v9

    mul-long/2addr v2, v7

    const-wide v7, 0xffffffffL

    and-long/2addr v7, v2

    const/4 v2, 0x0

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v9, 0xffffffffL

    and-long/2addr v2, v9

    mul-long/2addr v2, v7

    const/4 v4, 0x0

    aget v4, v6, v4

    int-to-long v9, v4

    const-wide v11, 0xffffffffL

    and-long/2addr v9, v11

    add-long/2addr v2, v9

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    const/4 v4, 0x1

    :goto_7
    move/from16 v0, p4

    if-lt v4, v0, :cond_7

    :goto_8
    move-object/from16 v0, p1

    array-length v7, v0

    shl-int/lit8 v7, v7, 0x1

    sub-int/2addr v7, v5

    if-le v4, v7, :cond_8

    add-int/lit8 v4, v4, -0x1

    const-wide v7, 0xffffffffL

    and-long/2addr v2, v7

    long-to-int v2, v2

    aput v2, v6, v4

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_3

    :cond_7
    aget v9, p2, v4

    int-to-long v9, v9

    const-wide v11, 0xffffffffL

    and-long/2addr v9, v11

    mul-long/2addr v9, v7

    aget v11, v6, v4

    int-to-long v11, v11

    const-wide v13, 0xffffffffL

    and-long/2addr v11, v13

    add-long/2addr v9, v11

    add-long/2addr v2, v9

    add-int/lit8 v9, v4, -0x1

    const-wide v10, 0xffffffffL

    and-long/2addr v10, v2

    long-to-int v10, v10

    aput v10, v6, v9

    const/16 v9, 0x20

    ushr-long/2addr v2, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_8
    aget v7, v6, v4

    int-to-long v7, v7

    const-wide v9, 0xffffffffL

    and-long/2addr v7, v9

    add-long/2addr v2, v7

    add-int/lit8 v7, v4, -0x1

    const-wide v8, 0xffffffffL

    and-long/2addr v8, v2

    long-to-int v8, v8

    aput v8, v6, v7

    const/16 v7, 0x20

    ushr-long/2addr v2, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_9
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_4

    :cond_a
    new-array v3, v2, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v6, v4, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v3

    goto/16 :goto_5
.end method

.method public a([I[I[III)[I
    .locals 15

    add-int/lit8 v2, p5, 0x1

    new-array v6, v2, [I

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p1

    array-length v3, v0

    if-lt v2, v3, :cond_1

    move v5, v2

    :goto_1
    move/from16 v0, p5

    if-lt v5, v0, :cond_4

    add-int/lit8 v2, p5, 0x1

    :goto_2
    add-int/lit8 v3, v2, -0x1

    aget v3, v6, v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    if-gt v2, v3, :cond_6

    :cond_0
    move-object/from16 v0, p3

    move/from16 v1, p5

    invoke-virtual {p0, v6, v2, v0, v1}, Lcom/lumensoft/ks/b;->a([II[II)I

    move-result v3

    if-ltz v3, :cond_7

    move-object/from16 v0, p3

    move/from16 v1, p5

    invoke-virtual {p0, v6, v2, v0, v1}, Lcom/lumensoft/ks/b;->b([II[II)I

    move-result v3

    new-array v2, v3, [I

    iget-object v4, p0, Lcom/lumensoft/ks/b;->c:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_3
    return-object v2

    :cond_1
    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v7, 0xffffffffL

    and-long/2addr v3, v7

    const/4 v5, 0x0

    aget v5, p2, v5

    int-to-long v7, v5

    const-wide v9, 0xffffffffL

    and-long/2addr v7, v9

    mul-long/2addr v3, v7

    const/4 v5, 0x0

    aget v5, v6, v5

    int-to-long v7, v5

    const-wide v9, 0xffffffffL

    and-long/2addr v7, v9

    add-long/2addr v3, v7

    move/from16 v0, p4

    int-to-long v7, v0

    mul-long/2addr v7, v3

    const-wide v9, 0xffffffffL

    and-long/2addr v7, v9

    const/4 v5, 0x0

    aget v5, p3, v5

    int-to-long v9, v5

    const-wide v11, 0xffffffffL

    and-long/2addr v9, v11

    mul-long/2addr v9, v7

    const-wide v11, 0xffffffffL

    and-long/2addr v11, v3

    add-long/2addr v9, v11

    const/16 v5, 0x20

    ushr-long/2addr v9, v5

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    add-long v4, v9, v3

    const/4 v3, 0x1

    :goto_4
    move-object/from16 v0, p2

    array-length v9, v0

    if-lt v3, v9, :cond_2

    :goto_5
    move/from16 v0, p5

    if-lt v3, v0, :cond_3

    aget v7, v6, v3

    int-to-long v7, v7

    const-wide v9, 0xffffffffL

    and-long/2addr v7, v9

    add-long/2addr v4, v7

    add-int/lit8 v7, v3, -0x1

    const-wide v8, 0xffffffffL

    and-long/2addr v8, v4

    long-to-int v8, v8

    aput v8, v6, v7

    const/16 v7, 0x20

    ushr-long/2addr v4, v7

    const-wide v7, 0xffffffffL

    and-long/2addr v4, v7

    long-to-int v4, v4

    aput v4, v6, v3

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_2
    aget v9, p1, v2

    int-to-long v9, v9

    const-wide v11, 0xffffffffL

    and-long/2addr v9, v11

    aget v11, p2, v3

    int-to-long v11, v11

    const-wide v13, 0xffffffffL

    and-long/2addr v11, v13

    mul-long/2addr v9, v11

    aget v11, v6, v3

    int-to-long v11, v11

    const-wide v13, 0xffffffffL

    and-long/2addr v11, v13

    add-long/2addr v9, v11

    aget v11, p3, v3

    int-to-long v11, v11

    const-wide v13, 0xffffffffL

    and-long/2addr v11, v13

    mul-long/2addr v11, v7

    const-wide v13, 0xffffffffL

    and-long/2addr v13, v9

    add-long/2addr v11, v13

    add-long/2addr v4, v11

    add-int/lit8 v11, v3, -0x1

    const-wide v12, 0xffffffffL

    and-long/2addr v12, v4

    long-to-int v12, v12

    aput v12, v6, v11

    const/16 v11, 0x20

    ushr-long/2addr v4, v11

    const/16 v11, 0x20

    ushr-long/2addr v9, v11

    add-long/2addr v4, v9

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_3
    aget v9, p3, v3

    int-to-long v9, v9

    const-wide v11, 0xffffffffL

    and-long/2addr v9, v11

    mul-long/2addr v9, v7

    aget v11, v6, v3

    int-to-long v11, v11

    const-wide v13, 0xffffffffL

    and-long/2addr v11, v13

    add-long/2addr v9, v11

    add-long/2addr v4, v9

    add-int/lit8 v9, v3, -0x1

    const-wide v10, 0xffffffffL

    and-long/2addr v10, v4

    long-to-int v10, v10

    aput v10, v6, v9

    const/16 v9, 0x20

    ushr-long/2addr v4, v9

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5

    :cond_4
    const/4 v2, 0x0

    aget v2, v6, v2

    int-to-long v2, v2

    move/from16 v0, p4

    int-to-long v7, v0

    mul-long/2addr v2, v7

    const-wide/16 v7, -0x1

    and-long/2addr v7, v2

    const/4 v2, 0x0

    aget v2, p3, v2

    int-to-long v2, v2

    mul-long/2addr v2, v7

    const/4 v4, 0x0

    aget v4, v6, v4

    int-to-long v9, v4

    add-long/2addr v2, v9

    const/16 v4, 0x20

    ushr-long v3, v2, v4

    const/4 v2, 0x1

    :goto_6
    move/from16 v0, p5

    if-lt v2, v0, :cond_5

    aget v7, v6, v2

    int-to-long v7, v7

    add-long/2addr v3, v7

    add-int/lit8 v7, v2, -0x1

    long-to-int v8, v3

    aput v8, v6, v7

    const/16 v7, 0x20

    ushr-long/2addr v3, v7

    long-to-int v3, v3

    aput v3, v6, v2

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_1

    :cond_5
    aget v9, p3, v2

    int-to-long v9, v9

    mul-long/2addr v9, v7

    aget v11, v6, v2

    int-to-long v11, v11

    add-long/2addr v9, v11

    add-long/2addr v3, v9

    add-int/lit8 v9, v2, -0x1

    long-to-int v10, v3

    aput v10, v6, v9

    const/16 v9, 0x20

    ushr-long/2addr v3, v9

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_2

    :cond_7
    new-array v3, v2, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v6, v4, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v3

    goto/16 :goto_3
.end method

.method public b([II)I
    .locals 13

    const-wide v11, 0xffffffffL

    const/4 v0, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x81

    new-array v6, v2, [I

    move v2, v0

    move v3, v0

    move v5, v1

    move v0, v4

    :goto_0
    const/16 v7, 0x20

    if-le v2, v7, :cond_0

    move v0, v1

    :goto_1
    mul-int/lit8 v2, p2, 0x2

    if-lt v0, v2, :cond_2

    shl-int/lit8 v0, p2, 0x1

    aput v4, v6, v0

    shl-int/lit8 v0, p2, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v6, v0, p1, p2}, Lcom/lumensoft/ks/b;->a([II[II)[I

    move-result-object v0

    iget-object v2, p0, Lcom/lumensoft/ks/b;->a:[I

    iget-object v3, p0, Lcom/lumensoft/ks/b;->a:[I

    array-length v3, v3

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    xor-int/lit8 v0, v5, -0x1

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    aget v5, p1, v1

    mul-int/2addr v5, v0

    int-to-long v7, v5

    and-long/2addr v7, v11

    const/4 v5, -0x1

    rsub-int/lit8 v9, v2, 0x20

    ushr-int/2addr v5, v9

    int-to-long v9, v5

    and-long/2addr v7, v9

    int-to-long v9, v3

    and-long/2addr v9, v11

    cmp-long v5, v7, v9

    if-gez v5, :cond_1

    :goto_2
    shl-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move v5, v0

    goto :goto_0

    :cond_1
    add-int/2addr v0, v3

    goto :goto_2

    :cond_2
    aput v1, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public b([II[II)I
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/lumensoft/ks/b;->a()V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/lumensoft/ks/b;->a([II[II)I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v1

    move v3, v2

    :goto_0
    if-lt v0, p4, :cond_3

    move v4, v3

    move v3, v0

    :goto_1
    if-lt v3, p2, :cond_4

    iget-object v0, p0, Lcom/lumensoft/ks/b;->c:[I

    aput v1, v0, v3

    :goto_2
    iget-object v0, p0, Lcom/lumensoft/ks/b;->c:[I

    add-int/lit8 v1, p2, -0x1

    aget v0, v0, v1

    if-nez v0, :cond_0

    if-gt p2, v2, :cond_8

    :cond_0
    :goto_3
    return p2

    :cond_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/lumensoft/ks/b;->c:[I

    aput v1, v0, v1

    move p2, v2

    goto :goto_3

    :cond_2
    const/4 p2, -0x1

    goto :goto_3

    :cond_3
    aget v4, p3, v0

    xor-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4, v3}, Lcom/lumensoft/ks/b;->a(II)V

    iget v3, p0, Lcom/lumensoft/ks/b;->a:I

    iget v4, p0, Lcom/lumensoft/ks/b;->b:I

    iget v5, p0, Lcom/lumensoft/ks/b;->c:I

    aget v5, p1, v0

    invoke-virtual {p0, v5, v3}, Lcom/lumensoft/ks/b;->a(II)V

    iget-object v3, p0, Lcom/lumensoft/ks/b;->c:[I

    iget v5, p0, Lcom/lumensoft/ks/b;->a:I

    aput v5, v3, v0

    iget v3, p0, Lcom/lumensoft/ks/b;->b:I

    iget v5, p0, Lcom/lumensoft/ks/b;->c:I

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/lumensoft/ks/b;->c:[I

    if-eqz v4, :cond_6

    aget v0, p1, v3

    :goto_4
    aput v0, v5, v3

    if-nez v4, :cond_5

    aget v0, p1, v3

    if-eqz v0, :cond_7

    :cond_5
    move v0, v2

    :goto_5
    add-int/lit8 v3, v3, 0x1

    move v4, v0

    goto :goto_1

    :cond_6
    aget v0, p1, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_7
    move v0, v1

    goto :goto_5

    :cond_8
    add-int/lit8 p2, p2, -0x1

    goto :goto_2
.end method

.method public b([I[III)[I
    .locals 8

    const/4 v1, 0x0

    mul-int/lit8 v0, p4, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v4, v0, [I

    invoke-virtual {p0}, Lcom/lumensoft/ks/b;->a()V

    array-length v0, p1

    mul-int/lit8 v2, p4, 0x2

    if-lt v0, v2, :cond_1

    mul-int/lit8 v0, p4, 0x2

    :goto_0
    invoke-static {p1, v1, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v3, v1

    move v2, v1

    :goto_1
    if-lt v3, p4, :cond_2

    add-int/lit8 v0, p4, 0x1

    new-array v0, v0, [I

    add-int/lit8 v2, p4, 0x1

    invoke-static {v4, p4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, p4, 0x1

    invoke-static {v0, v1, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v4, p4, p2, p4}, Lcom/lumensoft/ks/b;->a([II[II)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    move v2, v0

    move v0, v1

    :goto_2
    if-lt v0, p4, :cond_5

    :cond_0
    new-array v0, p4, [I

    invoke-static {v4, v1, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_1
    array-length v0, p1

    goto :goto_0

    :cond_2
    aget v0, v4, v3

    mul-int/2addr v0, p3

    and-int/lit8 v5, v0, -0x1

    move v0, v1

    :goto_3
    if-lt v0, p4, :cond_3

    :goto_4
    if-nez v2, :cond_4

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    aget v6, p2, v0

    add-int v7, v3, v0

    aget v7, v4, v7

    invoke-virtual {p0, v6, v5, v7}, Lcom/lumensoft/ks/b;->a(III)V

    iget v6, p0, Lcom/lumensoft/ks/b;->d:I

    iget v7, p0, Lcom/lumensoft/ks/b;->e:I

    invoke-virtual {p0, v6, v2}, Lcom/lumensoft/ks/b;->a(II)V

    add-int v2, v3, v0

    iget v6, p0, Lcom/lumensoft/ks/b;->a:I

    aput v6, v4, v2

    iget v2, p0, Lcom/lumensoft/ks/b;->b:I

    iget v6, p0, Lcom/lumensoft/ks/b;->c:I

    add-int/2addr v2, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    add-int v5, v3, v0

    aget v5, v4, v5

    invoke-virtual {p0, v5, v2}, Lcom/lumensoft/ks/b;->a(II)V

    add-int v2, v3, v0

    iget v5, p0, Lcom/lumensoft/ks/b;->a:I

    aput v5, v4, v2

    iget v2, p0, Lcom/lumensoft/ks/b;->b:I

    iget v5, p0, Lcom/lumensoft/ks/b;->c:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    aget v3, p2, v0

    xor-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3, v2}, Lcom/lumensoft/ks/b;->a(II)V

    iget v2, p0, Lcom/lumensoft/ks/b;->a:I

    iget v3, p0, Lcom/lumensoft/ks/b;->b:I

    iget v5, p0, Lcom/lumensoft/ks/b;->c:I

    aget v5, v4, v0

    invoke-virtual {p0, v5, v2}, Lcom/lumensoft/ks/b;->a(II)V

    iget v2, p0, Lcom/lumensoft/ks/b;->a:I

    aput v2, v4, v0

    iget v2, p0, Lcom/lumensoft/ks/b;->b:I

    iget v5, p0, Lcom/lumensoft/ks/b;->c:I

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
