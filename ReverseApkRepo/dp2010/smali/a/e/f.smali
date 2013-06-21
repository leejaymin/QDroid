.class public final La/e/f;
.super Ljava/security/MessageDigest;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:[I

.field private b:J

.field private c:[B

.field private d:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "MD4"

    invoke-direct {p0, v0}, Ljava/security/MessageDigest;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, La/e/f;->a:[I

    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, La/e/f;->c:[B

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, La/e/f;->d:[I

    invoke-virtual {p0}, La/e/f;->engineReset()V

    return-void
.end method

.method private constructor <init>(La/e/f;)V
    .locals 2

    invoke-direct {p0}, La/e/f;-><init>()V

    iget-object v0, p1, La/e/f;->a:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, La/e/f;->a:[I

    iget-object v0, p1, La/e/f;->c:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, La/e/f;->c:[B

    iget-wide v0, p1, La/e/f;->b:J

    iput-wide v0, p0, La/e/f;->b:J

    return-void
.end method

.method private static a(IIIIII)I
    .locals 3

    and-int v0, p1, p2

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v1, p3

    or-int/2addr v0, v1

    add-int/2addr v0, p0

    add-int/2addr v0, p4

    shl-int v1, v0, p5

    rsub-int/lit8 v2, p5, 0x20

    ushr-int/2addr v0, v2

    or-int/2addr v0, v1

    return v0
.end method

.method private a([BI)V
    .locals 25

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, La/e/f;->d:[I

    add-int/lit8 v3, p2, 0x1

    aget-byte v4, p1, p2

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v4

    add-int/lit8 v4, v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v3, v5

    add-int/lit8 p2, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v3, v4

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, La/e/f;->a:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, La/e/f;->a:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, La/e/f;->a:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, La/e/f;->a:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, La/e/f;->d:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    const/4 v6, 0x3

    invoke-static/range {v1 .. v6}, La/e/f;->a(IIIIII)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v1, v0, La/e/f;->d:[I

    const/4 v6, 0x1

    aget v8, v1, v6

    const/4 v9, 0x7

    move v6, v2

    move v7, v3

    invoke-static/range {v4 .. v9}, La/e/f;->a(IIIIII)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v1, v0, La/e/f;->d:[I

    const/4 v6, 0x2

    aget v7, v1, v6

    const/16 v8, 0xb

    move v6, v2

    invoke-static/range {v3 .. v8}, La/e/f;->a(IIIIII)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v1, v0, La/e/f;->d:[I

    const/4 v6, 0x3

    aget v6, v1, v6

    const/16 v7, 0x13

    invoke-static/range {v2 .. v7}, La/e/f;->a(IIIIII)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v1, v0, La/e/f;->d:[I

    const/4 v2, 0x4

    aget v9, v1, v2

    const/4 v10, 0x3

    move v7, v3

    move v8, v4

    invoke-static/range {v5 .. v10}, La/e/f;->a(IIIIII)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v1, v0, La/e/f;->d:[I

    const/4 v2, 0x5

    aget v8, v1, v2

    const/4 v9, 0x7

    move v7, v3

    invoke-static/range {v4 .. v9}, La/e/f;->a(IIIIII)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v1, v0, La/e/f;->d:[I

    const/4 v2, 0x6

    aget v7, v1, v2

    const/16 v8, 0xb

    invoke-static/range {v3 .. v8}, La/e/f;->a(IIIIII)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v1, v0, La/e/f;->d:[I

    const/4 v2, 0x7

    aget v10, v1, v2

    const/16 v11, 0x13

    move v8, v4

    move v9, v5

    invoke-static/range {v6 .. v11}, La/e/f;->a(IIIIII)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v1, v0, La/e/f;->d:[I

    const/16 v2, 0x8

    aget v9, v1, v2

    const/4 v10, 0x3

    move v8, v4

    invoke-static/range {v5 .. v10}, La/e/f;->a(IIIIII)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v1, v0, La/e/f;->d:[I

    const/16 v2, 0x9

    aget v8, v1, v2

    const/4 v9, 0x7

    invoke-static/range {v4 .. v9}, La/e/f;->a(IIIIII)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v1, v0, La/e/f;->d:[I

    const/16 v2, 0xa

    aget v11, v1, v2

    const/16 v12, 0xb

    move v9, v5

    move v10, v6

    invoke-static/range {v7 .. v12}, La/e/f;->a(IIIIII)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v1, v0, La/e/f;->d:[I

    const/16 v2, 0xb

    aget v10, v1, v2

    const/16 v11, 0x13

    move v9, v5

    invoke-static/range {v6 .. v11}, La/e/f;->a(IIIIII)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v1, v0, La/e/f;->d:[I

    const/16 v2, 0xc

    aget v9, v1, v2

    const/4 v10, 0x3

    invoke-static/range {v5 .. v10}, La/e/f;->a(IIIIII)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v1, v0, La/e/f;->d:[I

    const/16 v2, 0xd

    aget v12, v1, v2

    const/4 v13, 0x7

    move v10, v6

    move v11, v7

    invoke-static/range {v8 .. v13}, La/e/f;->a(IIIIII)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v1, v0, La/e/f;->d:[I

    const/16 v2, 0xe

    aget v11, v1, v2

    const/16 v12, 0xb

    move v10, v6

    invoke-static/range {v7 .. v12}, La/e/f;->a(IIIIII)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v1, v0, La/e/f;->d:[I

    const/16 v2, 0xf

    aget v10, v1, v2

    const/16 v11, 0x13

    invoke-static/range {v6 .. v11}, La/e/f;->a(IIIIII)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v1, v0, La/e/f;->d:[I

    const/4 v2, 0x0

    aget v13, v1, v2

    const/4 v14, 0x3

    move v11, v7

    move v12, v8

    invoke-static/range {v9 .. v14}, La/e/f;->b(IIIIII)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v1, v0, La/e/f;->d:[I

    const/4 v2, 0x4

    aget v12, v1, v2

    const/4 v13, 0x5

    move v11, v7

    invoke-static/range {v8 .. v13}, La/e/f;->b(IIIIII)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v1, v0, La/e/f;->d:[I

    const/16 v2, 0x8

    aget v11, v1, v2

    const/16 v12, 0x9

    invoke-static/range {v7 .. v12}, La/e/f;->b(IIIIII)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v1, v0, La/e/f;->d:[I

    const/16 v2, 0xc

    aget v14, v1, v2

    const/16 v15, 0xd

    move v12, v8

    move v13, v9

    invoke-static/range {v10 .. v15}, La/e/f;->b(IIIIII)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v1, v0, La/e/f;->d:[I

    const/4 v2, 0x1

    aget v13, v1, v2

    const/4 v14, 0x3

    move v12, v8

    invoke-static/range {v9 .. v14}, La/e/f;->b(IIIIII)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v1, v0, La/e/f;->d:[I

    const/4 v2, 0x5

    aget v12, v1, v2

    const/4 v13, 0x5

    invoke-static/range {v8 .. v13}, La/e/f;->b(IIIIII)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v1, v0, La/e/f;->d:[I

    const/16 v2, 0x9

    aget v15, v1, v2

    const/16 v16, 0x9

    move v13, v9

    move v14, v10

    invoke-static/range {v11 .. v16}, La/e/f;->b(IIIIII)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v1, v0, La/e/f;->d:[I

    const/16 v2, 0xd

    aget v14, v1, v2

    const/16 v15, 0xd

    move v13, v9

    invoke-static/range {v10 .. v15}, La/e/f;->b(IIIIII)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v1, v0, La/e/f;->d:[I

    const/4 v2, 0x2

    aget v13, v1, v2

    const/4 v14, 0x3

    invoke-static/range {v9 .. v14}, La/e/f;->b(IIIIII)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v1, v0, La/e/f;->d:[I

    const/4 v2, 0x6

    aget v16, v1, v2

    const/16 v17, 0x5

    move v14, v10

    move v15, v11

    invoke-static/range {v12 .. v17}, La/e/f;->b(IIIIII)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v1, v0, La/e/f;->d:[I

    const/16 v2, 0xa

    aget v15, v1, v2

    const/16 v16, 0x9

    move v14, v10

    invoke-static/range {v11 .. v16}, La/e/f;->b(IIIIII)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v1, v0, La/e/f;->d:[I

    const/16 v2, 0xe

    aget v14, v1, v2

    const/16 v15, 0xd

    invoke-static/range {v10 .. v15}, La/e/f;->b(IIIIII)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v1, v0, La/e/f;->d:[I

    const/4 v2, 0x3

    aget v17, v1, v2

    const/16 v18, 0x3

    move v15, v11

    move/from16 v16, v12

    invoke-static/range {v13 .. v18}, La/e/f;->b(IIIIII)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v1, v0, La/e/f;->d:[I

    const/4 v2, 0x7

    aget v16, v1, v2

    const/16 v17, 0x5

    move v15, v11

    invoke-static/range {v12 .. v17}, La/e/f;->b(IIIIII)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v1, v0, La/e/f;->d:[I

    const/16 v2, 0xb

    aget v15, v1, v2

    const/16 v16, 0x9

    invoke-static/range {v11 .. v16}, La/e/f;->b(IIIIII)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v1, v0, La/e/f;->d:[I

    const/16 v2, 0xf

    aget v18, v1, v2

    const/16 v19, 0xd

    move/from16 v16, v12

    move/from16 v17, v13

    invoke-static/range {v14 .. v19}, La/e/f;->b(IIIIII)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v1, v0, La/e/f;->d:[I

    const/4 v2, 0x0

    aget v17, v1, v2

    const/16 v18, 0x3

    move/from16 v16, v12

    invoke-static/range {v13 .. v18}, La/e/f;->c(IIIIII)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v1, v0, La/e/f;->d:[I

    const/16 v2, 0x8

    aget v16, v1, v2

    const/16 v17, 0x9

    invoke-static/range {v12 .. v17}, La/e/f;->c(IIIIII)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v1, v0, La/e/f;->d:[I

    const/4 v2, 0x4

    aget v19, v1, v2

    const/16 v20, 0xb

    move/from16 v17, v13

    move/from16 v18, v14

    invoke-static/range {v15 .. v20}, La/e/f;->c(IIIIII)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v1, v0, La/e/f;->d:[I

    const/16 v2, 0xc

    aget v18, v1, v2

    const/16 v19, 0xf

    move/from16 v17, v13

    invoke-static/range {v14 .. v19}, La/e/f;->c(IIIIII)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v1, v0, La/e/f;->d:[I

    const/4 v2, 0x2

    aget v17, v1, v2

    const/16 v18, 0x3

    invoke-static/range {v13 .. v18}, La/e/f;->c(IIIIII)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v1, v0, La/e/f;->d:[I

    const/16 v2, 0xa

    aget v20, v1, v2

    const/16 v21, 0x9

    move/from16 v18, v14

    move/from16 v19, v15

    invoke-static/range {v16 .. v21}, La/e/f;->c(IIIIII)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v1, v0, La/e/f;->d:[I

    const/4 v2, 0x6

    aget v19, v1, v2

    const/16 v20, 0xb

    move/from16 v18, v14

    invoke-static/range {v15 .. v20}, La/e/f;->c(IIIIII)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v1, v0, La/e/f;->d:[I

    const/16 v2, 0xe

    aget v18, v1, v2

    const/16 v19, 0xf

    invoke-static/range {v14 .. v19}, La/e/f;->c(IIIIII)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v1, v0, La/e/f;->d:[I

    const/4 v2, 0x1

    aget v21, v1, v2

    const/16 v22, 0x3

    move/from16 v19, v15

    move/from16 v20, v16

    invoke-static/range {v17 .. v22}, La/e/f;->c(IIIIII)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v1, v0, La/e/f;->d:[I

    const/16 v2, 0x9

    aget v20, v1, v2

    const/16 v21, 0x9

    move/from16 v19, v15

    invoke-static/range {v16 .. v21}, La/e/f;->c(IIIIII)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v1, v0, La/e/f;->d:[I

    const/4 v2, 0x5

    aget v19, v1, v2

    const/16 v20, 0xb

    invoke-static/range {v15 .. v20}, La/e/f;->c(IIIIII)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v1, v0, La/e/f;->d:[I

    const/16 v2, 0xd

    aget v22, v1, v2

    const/16 v23, 0xf

    move/from16 v20, v16

    move/from16 v21, v17

    invoke-static/range {v18 .. v23}, La/e/f;->c(IIIIII)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v1, v0, La/e/f;->d:[I

    const/4 v2, 0x3

    aget v21, v1, v2

    const/16 v22, 0x3

    move/from16 v20, v16

    invoke-static/range {v17 .. v22}, La/e/f;->c(IIIIII)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v1, v0, La/e/f;->d:[I

    const/16 v2, 0xb

    aget v20, v1, v2

    const/16 v21, 0x9

    invoke-static/range {v16 .. v21}, La/e/f;->c(IIIIII)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v1, v0, La/e/f;->d:[I

    const/4 v2, 0x7

    aget v23, v1, v2

    const/16 v24, 0xb

    move/from16 v21, v17

    move/from16 v22, v18

    invoke-static/range {v19 .. v24}, La/e/f;->c(IIIIII)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v1, v0, La/e/f;->d:[I

    const/16 v2, 0xf

    aget v22, v1, v2

    const/16 v23, 0xf

    move/from16 v21, v17

    invoke-static/range {v18 .. v23}, La/e/f;->c(IIIIII)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, La/e/f;->a:[I

    const/4 v3, 0x0

    aget v4, v2, v3

    add-int v4, v4, v17

    aput v4, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, La/e/f;->a:[I

    const/4 v3, 0x1

    aget v4, v2, v3

    add-int/2addr v1, v4

    aput v1, v2, v3

    move-object/from16 v0, p0

    iget-object v1, v0, La/e/f;->a:[I

    const/4 v2, 0x2

    aget v3, v1, v2

    add-int v3, v3, v19

    aput v3, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, La/e/f;->a:[I

    const/4 v2, 0x3

    aget v3, v1, v2

    add-int v3, v3, v20

    aput v3, v1, v2

    return-void
.end method

.method private static b(IIIIII)I
    .locals 3

    or-int v0, p2, p3

    and-int/2addr v0, p1

    and-int v1, p2, p3

    or-int/2addr v0, v1

    add-int/2addr v0, p0

    add-int/2addr v0, p4

    const v1, 0x5a827999

    add-int/2addr v0, v1

    shl-int v1, v0, p5

    rsub-int/lit8 v2, p5, 0x20

    ushr-int/2addr v0, v2

    or-int/2addr v0, v1

    return v0
.end method

.method private static c(IIIIII)I
    .locals 3

    xor-int v0, p1, p2

    xor-int/2addr v0, p3

    add-int/2addr v0, p0

    add-int/2addr v0, p4

    const v1, 0x6ed9eba1

    add-int/2addr v0, v1

    shl-int v1, v0, p5

    rsub-int/lit8 v2, p5, 0x20

    ushr-int/2addr v0, v2

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 1

    new-instance v0, La/e/f;

    invoke-direct {v0, p0}, La/e/f;-><init>(La/e/f;)V

    return-object v0
.end method

.method public final engineDigest()[B
    .locals 10

    const/4 v9, 0x4

    const/4 v1, 0x0

    iget-wide v2, p0, La/e/f;->b:J

    const-wide/16 v4, 0x40

    rem-long/2addr v2, v4

    long-to-int v0, v2

    const/16 v2, 0x38

    if-ge v0, v2, :cond_0

    rsub-int/lit8 v0, v0, 0x38

    :goto_0
    add-int/lit8 v2, v0, 0x8

    new-array v3, v2, [B

    const/16 v2, -0x80

    aput-byte v2, v3, v1

    move v2, v1

    :goto_1
    const/16 v4, 0x8

    if-ge v2, v4, :cond_1

    add-int v4, v0, v2

    iget-wide v5, p0, La/e/f;->b:J

    const-wide/16 v7, 0x8

    mul-long/2addr v5, v7

    mul-int/lit8 v7, v2, 0x8

    ushr-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    rsub-int/lit8 v0, v0, 0x78

    goto :goto_0

    :cond_1
    array-length v0, v3

    invoke-virtual {p0, v3, v1, v0}, La/e/f;->engineUpdate([BII)V

    const/16 v0, 0x10

    new-array v3, v0, [B

    move v0, v1

    :goto_2
    if-ge v0, v9, :cond_3

    move v2, v1

    :goto_3
    if-ge v2, v9, :cond_2

    mul-int/lit8 v4, v0, 0x4

    add-int/2addr v4, v2

    iget-object v5, p0, La/e/f;->a:[I

    aget v5, v5, v0

    mul-int/lit8 v6, v2, 0x8

    ushr-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, La/e/f;->engineReset()V

    return-object v3
.end method

.method public final engineReset()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, La/e/f;->a:[I

    const v2, 0x67452301

    aput v2, v0, v1

    iget-object v0, p0, La/e/f;->a:[I

    const/4 v2, 0x1

    const v3, -0x10325477

    aput v3, v0, v2

    iget-object v0, p0, La/e/f;->a:[I

    const/4 v2, 0x2

    const v3, -0x67452302

    aput v3, v0, v2

    iget-object v0, p0, La/e/f;->a:[I

    const/4 v2, 0x3

    const v3, 0x10325476

    aput v3, v0, v2

    const-wide/16 v2, 0x0

    iput-wide v2, p0, La/e/f;->b:J

    move v0, v1

    :goto_0
    const/16 v2, 0x40

    if-ge v0, v2, :cond_0

    iget-object v2, p0, La/e/f;->c:[B

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final engineUpdate(B)V
    .locals 5

    iget-wide v0, p0, La/e/f;->b:J

    const-wide/16 v2, 0x40

    rem-long/2addr v0, v2

    long-to-int v0, v0

    iget-wide v1, p0, La/e/f;->b:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, La/e/f;->b:J

    iget-object v1, p0, La/e/f;->c:[B

    aput-byte p1, v1, v0

    const/16 v1, 0x3f

    if-ne v0, v1, :cond_0

    iget-object v0, p0, La/e/f;->c:[B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, La/e/f;->a([BI)V

    :cond_0
    return-void
.end method

.method public final engineUpdate([BII)V
    .locals 7

    const/4 v1, 0x0

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    int-to-long v2, p2

    int-to-long v4, p3

    add-long/2addr v2, v4

    array-length v0, p1

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    iget-wide v2, p0, La/e/f;->b:J

    const-wide/16 v4, 0x40

    rem-long/2addr v2, v4

    long-to-int v0, v2

    iget-wide v2, p0, La/e/f;->b:J

    int-to-long v4, p3

    add-long/2addr v2, v4

    iput-wide v2, p0, La/e/f;->b:J

    rsub-int/lit8 v2, v0, 0x40

    if-lt p3, v2, :cond_2

    iget-object v3, p0, La/e/f;->c:[B

    invoke-static {p1, p2, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, La/e/f;->c:[B

    invoke-direct {p0, v0, v1}, La/e/f;->a([BI)V

    move v0, v2

    :goto_0
    add-int/lit8 v2, v0, 0x40

    add-int/lit8 v2, v2, -0x1

    if-ge v2, p3, :cond_3

    add-int v2, p2, v0

    invoke-direct {p0, p1, v2}, La/e/f;->a([BI)V

    add-int/lit8 v0, v0, 0x40

    goto :goto_0

    :cond_2
    move v6, v1

    move v1, v0

    move v0, v6

    :cond_3
    if-ge v0, p3, :cond_4

    add-int v2, p2, v0

    iget-object v3, p0, La/e/f;->c:[B

    sub-int v0, p3, v0

    invoke-static {p1, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    return-void
.end method
