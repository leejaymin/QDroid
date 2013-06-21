.class public final Lcom/badlogic/gdx/utils/d;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field b:[J

.field c:[Ljava/lang/Object;

.field d:I

.field e:I

.field f:Ljava/lang/Object;

.field g:Z

.field private h:F

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Lcom/badlogic/gdx/utils/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/d;-><init>(I)V

    return-void
.end method

.method public constructor <init>(B)V
    .locals 1

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/d;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 3

    const v2, 0x3f4ccccd

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initialCapacity must be >= 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/d;->d:I

    const/high16 v1, 0x4000

    if-le v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initialCapacity is too large: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1}, Lcom/badlogic/gdx/a/a;->a(I)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/d;->d:I

    iput v2, p0, Lcom/badlogic/gdx/utils/d;->h:F

    iget v0, p0, Lcom/badlogic/gdx/utils/d;->d:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/utils/d;->k:I

    iget v0, p0, Lcom/badlogic/gdx/utils/d;->d:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/utils/d;->j:I

    const/16 v0, 0x1f

    iget v1, p0, Lcom/badlogic/gdx/utils/d;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/utils/d;->i:I

    const/4 v0, 0x3

    iget v1, p0, Lcom/badlogic/gdx/utils/d;->d:I

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/d;->l:I

    iget v0, p0, Lcom/badlogic/gdx/utils/d;->d:I

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/utils/d;->d:I

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int v1, v1

    div-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/d;->m:I

    iget v0, p0, Lcom/badlogic/gdx/utils/d;->d:I

    iget v1, p0, Lcom/badlogic/gdx/utils/d;->l:I

    add-int/2addr v0, v1

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/badlogic/gdx/utils/d;->b:[J

    iget-object v0, p0, Lcom/badlogic/gdx/utils/d;->b:[J

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/d;->c:[Ljava/lang/Object;

    return-void
.end method

.method private a(J)I
    .locals 4

    const-wide/32 v0, -0x4b47d1c7

    mul-long/2addr v0, p1

    iget v2, p0, Lcom/badlogic/gdx/utils/d;->i:I

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    iget v2, p0, Lcom/badlogic/gdx/utils/d;->j:I

    int-to-long v2, v2

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private a(I)V
    .locals 22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/d;->d:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/d;->e:I

    move v4, v0

    add-int v16, v3, v4

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/utils/d;->d:I

    move/from16 v0, p1

    int-to-float v0, v0

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/d;->h:F

    move v4, v0

    mul-float/2addr v3, v4

    float-to-int v3, v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/utils/d;->k:I

    const/4 v3, 0x1

    sub-int v3, p1, v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/utils/d;->j:I

    const/16 v3, 0x1f

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v4

    sub-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/utils/d;->i:I

    const/4 v3, 0x3

    move/from16 v0, p1

    int-to-double v0, v0

    move-wide v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/utils/d;->l:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/d;->d:I

    move v3, v0

    const/16 v4, 0x20

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/d;->d:I

    move v4, v0

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v4, v4

    div-int/lit8 v4, v4, 0x4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/utils/d;->m:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/d;->b:[J

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/d;->c:[Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/d;->l:I

    move v3, v0

    add-int v3, v3, p1

    new-array v3, v3, [J

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/badlogic/gdx/utils/d;->b:[J

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/d;->l:I

    move v3, v0

    add-int v3, v3, p1

    new-array v3, v3, [Ljava/lang/Object;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/badlogic/gdx/utils/d;->c:[Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/d;->g:Z

    move v3, v0

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/utils/d;->a:I

    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/utils/d;->e:I

    const/4 v3, 0x0

    move/from16 v19, v3

    :goto_1
    move/from16 v0, v19

    move/from16 v1, v16

    if-lt v0, v1, :cond_1

    return-void

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    aget-wide v4, v17, v19

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    aget-object v6, v18, v19

    const-wide/16 v7, 0x0

    cmp-long v3, v4, v7

    if-nez v3, :cond_3

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/badlogic/gdx/utils/d;->f:Ljava/lang/Object;

    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/badlogic/gdx/utils/d;->g:Z

    :cond_2
    :goto_2
    add-int/lit8 v3, v19, 0x1

    move/from16 v19, v3

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/d;->j:I

    move v3, v0

    int-to-long v7, v3

    and-long/2addr v7, v4

    long-to-int v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/d;->b:[J

    move-object v3, v0

    aget-wide v8, v3, v7

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/d;->b:[J

    move-object v3, v0

    aput-wide v4, v3, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/d;->c:[Ljava/lang/Object;

    move-object v3, v0

    aput-object v6, v3, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/d;->a:I

    move v3, v0

    add-int/lit8 v4, v3, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/utils/d;->a:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/d;->k:I

    move v4, v0

    if-lt v3, v4, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/d;->d:I

    move v3, v0

    shl-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/d;->a(I)V

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    move-wide v1, v4

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/d;->a(J)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/d;->b:[J

    move-object v3, v0

    aget-wide v11, v3, v10

    const-wide/16 v13, 0x0

    cmp-long v3, v11, v13

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/d;->b:[J

    move-object v3, v0

    aput-wide v4, v3, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/d;->c:[Ljava/lang/Object;

    move-object v3, v0

    aput-object v6, v3, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/d;->a:I

    move v3, v0

    add-int/lit8 v4, v3, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/utils/d;->a:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/d;->k:I

    move v4, v0

    if-lt v3, v4, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/d;->d:I

    move v3, v0

    shl-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/d;->a(I)V

    goto/16 :goto_2

    :cond_5
    move-object/from16 v0, p0

    move-wide v1, v4

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/d;->b(J)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/d;->b:[J

    move-object v3, v0

    aget-wide v14, v3, v13

    const-wide/16 v20, 0x0

    cmp-long v3, v14, v20

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/d;->b:[J

    move-object v3, v0

    aput-wide v4, v3, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/d;->c:[Ljava/lang/Object;

    move-object v3, v0

    aput-object v6, v3, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/d;->a:I

    move v3, v0

    add-int/lit8 v4, v3, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/utils/d;->a:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/d;->k:I

    move v4, v0

    if-lt v3, v4, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/d;->d:I

    move v3, v0

    shl-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/d;->a(I)V

    goto/16 :goto_2

    :cond_6
    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v15}, Lcom/badlogic/gdx/utils/d;->a(JLjava/lang/Object;IJIJIJ)V

    goto/16 :goto_2
.end method

.method private a(JLjava/lang/Object;IJIJIJ)V
    .locals 28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/d;->b:[J

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/d;->c:[Ljava/lang/Object;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/d;->j:I

    move v6, v0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/d;->m:I

    move v8, v0

    move-wide/from16 v9, p11

    move/from16 v11, p10

    move-wide/from16 v12, p8

    move/from16 v14, p7

    move-wide/from16 v15, p5

    move/from16 v17, p4

    move-object/from16 v18, p3

    move-wide/from16 v19, p1

    :goto_0
    invoke-static {}, Lcom/badlogic/gdx/a/a;->a()I

    move-result v21

    packed-switch v21, :pswitch_data_0

    aget-object v12, v5, v11

    aput-wide v19, v4, v11

    aput-object v18, v5, v11

    move-wide/from16 v23, v9

    move-wide/from16 v10, v23

    move-object v9, v12

    :goto_1
    int-to-long v12, v6

    and-long/2addr v12, v10

    long-to-int v12, v12

    aget-wide v13, v4, v12

    const-wide/16 v15, 0x0

    cmp-long v15, v13, v15

    if-nez v15, :cond_1

    aput-wide v10, v4, v12

    aput-object v9, v5, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/d;->a:I

    move v4, v0

    add-int/lit8 v5, v4, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/utils/d;->a:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/d;->k:I

    move v5, v0

    if-lt v4, v5, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/d;->d:I

    move v4, v0

    shl-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/d;->a(I)V

    :cond_0
    :goto_2
    return-void

    :pswitch_0
    aget-object v9, v5, v17

    aput-wide v19, v4, v17

    aput-object v18, v5, v17

    move-wide v10, v15

    goto :goto_1

    :pswitch_1
    aget-object v9, v5, v14

    aput-wide v19, v4, v14

    aput-object v18, v5, v14

    move-wide v10, v12

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    move-wide v1, v10

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/d;->a(J)I

    move-result v15

    aget-wide v16, v4, v15

    const-wide/16 v18, 0x0

    cmp-long v18, v16, v18

    if-nez v18, :cond_2

    aput-wide v10, v4, v15

    aput-object v9, v5, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/d;->a:I

    move v4, v0

    add-int/lit8 v5, v4, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/utils/d;->a:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/d;->k:I

    move v5, v0

    if-lt v4, v5, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/d;->d:I

    move v4, v0

    shl-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/d;->a(I)V

    goto :goto_2

    :cond_2
    move-object/from16 v0, p0

    move-wide v1, v10

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/d;->b(J)I

    move-result v18

    aget-wide v19, v4, v18

    const-wide/16 v21, 0x0

    cmp-long v21, v19, v21

    if-nez v21, :cond_3

    aput-wide v10, v4, v18

    aput-object v9, v5, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/d;->a:I

    move v4, v0

    add-int/lit8 v5, v4, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/utils/d;->a:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/d;->k:I

    move v5, v0

    if-lt v4, v5, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/d;->d:I

    move v4, v0

    shl-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/d;->a(I)V

    goto :goto_2

    :cond_3
    add-int/lit8 v7, v7, 0x1

    if-eq v7, v8, :cond_4

    move-wide/from16 v23, v19

    move-wide/from16 v19, v10

    move/from16 v11, v18

    move-object/from16 v18, v9

    move-wide/from16 v9, v23

    move-wide/from16 v25, v13

    move v14, v15

    move/from16 v27, v12

    move-wide/from16 v12, v16

    move/from16 v17, v27

    move-wide/from16 v15, v25

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/d;->e:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/d;->l:I

    move v5, v0

    if-ne v4, v5, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/d;->d:I

    move v4, v0

    shl-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/d;->a(I)V

    move-object/from16 v0, p0

    move-wide v1, v10

    move-object v3, v9

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/utils/d;->a(JLjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/d;->b:[J

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/d;->d:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/d;->e:I

    move v6, v0

    add-int/2addr v6, v5

    :goto_3
    if-lt v5, v6, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/d;->d:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/d;->e:I

    move v6, v0

    add-int/2addr v5, v6

    aput-wide v10, v4, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/d;->c:[Ljava/lang/Object;

    move-object v4, v0

    aput-object v9, v4, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/utils/d;->e:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/utils/d;->e:I

    goto/16 :goto_2

    :cond_6
    aget-wide v7, v4, v5

    cmp-long v7, v7, v10

    if-nez v7, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/d;->c:[Ljava/lang/Object;

    move-object v4, v0

    aput-object v9, v4, v5

    goto/16 :goto_2

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private b(J)I
    .locals 4

    const-wide/32 v0, -0x312e3dbf

    mul-long/2addr v0, p1

    iget v2, p0, Lcom/badlogic/gdx/utils/d;->i:I

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    iget v2, p0, Lcom/badlogic/gdx/utils/d;->j:I

    int-to-long v2, v2

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public final a()Lcom/badlogic/gdx/utils/f;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/d;->n:Lcom/badlogic/gdx/utils/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/f;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/f;-><init>(Lcom/badlogic/gdx/utils/d;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/d;->n:Lcom/badlogic/gdx/utils/f;

    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/d;->n:Lcom/badlogic/gdx/utils/f;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/d;->n:Lcom/badlogic/gdx/utils/f;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/f;->a()V

    goto :goto_0
.end method

.method public final a(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 15

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/utils/d;->f:Ljava/lang/Object;

    move-object/from16 v0, p3

    move-object v1, p0

    iput-object v0, v1, Lcom/badlogic/gdx/utils/d;->f:Ljava/lang/Object;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/badlogic/gdx/utils/d;->g:Z

    iget v3, p0, Lcom/badlogic/gdx/utils/d;->a:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/badlogic/gdx/utils/d;->a:I

    :goto_0
    return-object v2

    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/utils/d;->j:I

    int-to-long v2, v2

    and-long v2, v2, p1

    long-to-int v6, v2

    iget-object v2, p0, Lcom/badlogic/gdx/utils/d;->b:[J

    aget-wide v7, v2, v6

    cmp-long v2, v7, p1

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/d;->c:[Ljava/lang/Object;

    aget-object v2, v2, v6

    iget-object v3, p0, Lcom/badlogic/gdx/utils/d;->c:[Ljava/lang/Object;

    aput-object p3, v3, v6

    goto :goto_0

    :cond_1
    invoke-direct/range {p0 .. p2}, Lcom/badlogic/gdx/utils/d;->a(J)I

    move-result v9

    iget-object v2, p0, Lcom/badlogic/gdx/utils/d;->b:[J

    aget-wide v10, v2, v9

    cmp-long v2, v10, p1

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/badlogic/gdx/utils/d;->c:[Ljava/lang/Object;

    aget-object v2, v2, v9

    iget-object v3, p0, Lcom/badlogic/gdx/utils/d;->c:[Ljava/lang/Object;

    aput-object p3, v3, v9

    goto :goto_0

    :cond_2
    invoke-direct/range {p0 .. p2}, Lcom/badlogic/gdx/utils/d;->b(J)I

    move-result v12

    iget-object v2, p0, Lcom/badlogic/gdx/utils/d;->b:[J

    aget-wide v13, v2, v12

    cmp-long v2, v13, p1

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/badlogic/gdx/utils/d;->c:[Ljava/lang/Object;

    aget-object v2, v2, v12

    iget-object v3, p0, Lcom/badlogic/gdx/utils/d;->c:[Ljava/lang/Object;

    aput-object p3, v3, v12

    goto :goto_0

    :cond_3
    const-wide/16 v2, 0x0

    cmp-long v2, v7, v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/badlogic/gdx/utils/d;->b:[J

    aput-wide p1, v2, v6

    iget-object v2, p0, Lcom/badlogic/gdx/utils/d;->c:[Ljava/lang/Object;

    aput-object p3, v2, v6

    iget v2, p0, Lcom/badlogic/gdx/utils/d;->a:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/badlogic/gdx/utils/d;->a:I

    iget v3, p0, Lcom/badlogic/gdx/utils/d;->k:I

    if-lt v2, v3, :cond_4

    iget v2, p0, Lcom/badlogic/gdx/utils/d;->d:I

    shl-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2}, Lcom/badlogic/gdx/utils/d;->a(I)V

    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    :cond_5
    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/badlogic/gdx/utils/d;->b:[J

    aput-wide p1, v2, v9

    iget-object v2, p0, Lcom/badlogic/gdx/utils/d;->c:[Ljava/lang/Object;

    aput-object p3, v2, v9

    iget v2, p0, Lcom/badlogic/gdx/utils/d;->a:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/badlogic/gdx/utils/d;->a:I

    iget v3, p0, Lcom/badlogic/gdx/utils/d;->k:I

    if-lt v2, v3, :cond_6

    iget v2, p0, Lcom/badlogic/gdx/utils/d;->d:I

    shl-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2}, Lcom/badlogic/gdx/utils/d;->a(I)V

    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_7
    const-wide/16 v2, 0x0

    cmp-long v2, v13, v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/badlogic/gdx/utils/d;->b:[J

    aput-wide p1, v2, v12

    iget-object v2, p0, Lcom/badlogic/gdx/utils/d;->c:[Ljava/lang/Object;

    aput-object p3, v2, v12

    iget v2, p0, Lcom/badlogic/gdx/utils/d;->a:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/badlogic/gdx/utils/d;->a:I

    iget v3, p0, Lcom/badlogic/gdx/utils/d;->k:I

    if-lt v2, v3, :cond_8

    iget v2, p0, Lcom/badlogic/gdx/utils/d;->d:I

    shl-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2}, Lcom/badlogic/gdx/utils/d;->a(I)V

    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_9
    move-object v2, p0

    move-wide/from16 v3, p1

    move-object/from16 v5, p3

    invoke-direct/range {v2 .. v14}, Lcom/badlogic/gdx/utils/d;->a(JLjava/lang/Object;IJIJIJ)V

    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    const-wide/16 v8, 0x0

    const/16 v7, 0x3d

    iget v0, p0, Lcom/badlogic/gdx/utils/d;->a:I

    if-nez v0, :cond_0

    const-string v0, "[]"

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/d;->b:[J

    iget-object v2, p0, Lcom/badlogic/gdx/utils/d;->c:[Ljava/lang/Object;

    array-length v3, v1

    :goto_1
    add-int/lit8 v4, v3, -0x1

    if-gtz v3, :cond_1

    move v3, v4

    :goto_2
    add-int/lit8 v4, v3, -0x1

    if-gtz v3, :cond_2

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    aget-wide v5, v1, v4

    cmp-long v3, v5, v8

    if-eqz v3, :cond_4

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v3, v2, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v3, v4

    goto :goto_2

    :cond_2
    aget-wide v5, v1, v4

    cmp-long v3, v5, v8

    if-eqz v3, :cond_3

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v3, v2, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3
    move v3, v4

    goto :goto_2

    :cond_4
    move v3, v4

    goto :goto_1
.end method
