.class public Lorg/cocos2d/l/d;
.super Ljava/lang/Object;


# instance fields
.field public a:D

.field public b:D

.field public c:D

.field public d:D

.field public e:D

.field public f:D

.field transient g:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2d/l/d;->g:I

    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lorg/cocos2d/l/d;->d:D

    iput-wide v0, p0, Lorg/cocos2d/l/d;->a:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/cocos2d/l/d;->f:D

    iput-wide v0, p0, Lorg/cocos2d/l/d;->e:D

    iput-wide v0, p0, Lorg/cocos2d/l/d;->c:D

    iput-wide v0, p0, Lorg/cocos2d/l/d;->b:D

    return-void
.end method

.method private constructor <init>(DDDDDD)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/cocos2d/l/d;->g:I

    iput-wide p1, p0, Lorg/cocos2d/l/d;->a:D

    iput-wide p3, p0, Lorg/cocos2d/l/d;->b:D

    iput-wide p5, p0, Lorg/cocos2d/l/d;->c:D

    iput-wide p7, p0, Lorg/cocos2d/l/d;->d:D

    iput-wide p9, p0, Lorg/cocos2d/l/d;->e:D

    iput-wide p11, p0, Lorg/cocos2d/l/d;->f:D

    return-void
.end method

.method public constructor <init>(Lorg/cocos2d/l/d;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lorg/cocos2d/l/d;->g:I

    iput v0, p0, Lorg/cocos2d/l/d;->g:I

    iget-wide v0, p1, Lorg/cocos2d/l/d;->a:D

    iput-wide v0, p0, Lorg/cocos2d/l/d;->a:D

    iget-wide v0, p1, Lorg/cocos2d/l/d;->b:D

    iput-wide v0, p0, Lorg/cocos2d/l/d;->b:D

    iget-wide v0, p1, Lorg/cocos2d/l/d;->c:D

    iput-wide v0, p0, Lorg/cocos2d/l/d;->c:D

    iget-wide v0, p1, Lorg/cocos2d/l/d;->d:D

    iput-wide v0, p0, Lorg/cocos2d/l/d;->d:D

    iget-wide v0, p1, Lorg/cocos2d/l/d;->e:D

    iput-wide v0, p0, Lorg/cocos2d/l/d;->e:D

    iget-wide v0, p1, Lorg/cocos2d/l/d;->f:D

    iput-wide v0, p0, Lorg/cocos2d/l/d;->f:D

    return-void
.end method

.method public static a()Lorg/cocos2d/l/d;
    .locals 1

    new-instance v0, Lorg/cocos2d/l/d;

    invoke-direct {v0}, Lorg/cocos2d/l/d;-><init>()V

    return-object v0
.end method

.method public static a(DD)Lorg/cocos2d/l/d;
    .locals 13

    new-instance v0, Lorg/cocos2d/l/d;

    const-wide/high16 v1, 0x3ff0

    const-wide/high16 v7, 0x3ff0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    move-wide v3, p0

    move-wide v5, p2

    invoke-direct/range {v0 .. v12}, Lorg/cocos2d/l/d;-><init>(DDDDDD)V

    return-object v0
.end method

.method private static a(Lorg/cocos2d/l/d;Lorg/cocos2d/l/d;)Lorg/cocos2d/l/d;
    .locals 19

    new-instance v2, Lorg/cocos2d/l/d;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/cocos2d/l/d;->a:D

    move-wide v3, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/cocos2d/l/d;->a:D

    move-wide v5, v0

    mul-double/2addr v3, v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/cocos2d/l/d;->b:D

    move-wide v5, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/cocos2d/l/d;->c:D

    move-wide v7, v0

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/cocos2d/l/d;->a:D

    move-wide v5, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/cocos2d/l/d;->b:D

    move-wide v7, v0

    mul-double/2addr v5, v7

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/cocos2d/l/d;->b:D

    move-wide v7, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/cocos2d/l/d;->d:D

    move-wide v9, v0

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/cocos2d/l/d;->c:D

    move-wide v7, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/cocos2d/l/d;->a:D

    move-wide v9, v0

    mul-double/2addr v7, v9

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/cocos2d/l/d;->d:D

    move-wide v9, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/cocos2d/l/d;->c:D

    move-wide v11, v0

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/cocos2d/l/d;->c:D

    move-wide v9, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/cocos2d/l/d;->b:D

    move-wide v11, v0

    mul-double/2addr v9, v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/cocos2d/l/d;->d:D

    move-wide v11, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/cocos2d/l/d;->d:D

    move-wide v13, v0

    mul-double/2addr v11, v13

    add-double/2addr v9, v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/cocos2d/l/d;->e:D

    move-wide v11, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/cocos2d/l/d;->a:D

    move-wide v13, v0

    mul-double/2addr v11, v13

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/cocos2d/l/d;->f:D

    move-wide v13, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/cocos2d/l/d;->c:D

    move-wide v15, v0

    mul-double/2addr v13, v15

    add-double/2addr v11, v13

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/cocos2d/l/d;->e:D

    move-wide v13, v0

    add-double/2addr v11, v13

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/cocos2d/l/d;->e:D

    move-wide v13, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/cocos2d/l/d;->b:D

    move-wide v15, v0

    mul-double/2addr v13, v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/cocos2d/l/d;->f:D

    move-wide v15, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/cocos2d/l/d;->d:D

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    add-double/2addr v13, v15

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/cocos2d/l/d;->f:D

    move-wide/from16 p0, v0

    add-double v13, v13, p0

    invoke-direct/range {v2 .. v14}, Lorg/cocos2d/l/d;-><init>(DDDDDD)V

    return-object v2
.end method

.method public static a(Lorg/cocos2d/l/d;[F)V
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x6

    const/4 v3, 0x7

    const/16 v4, 0x8

    const/16 v5, 0x9

    const/16 v6, 0xb

    const/16 v7, 0xe

    const/4 v8, 0x0

    aput v8, p1, v7

    aput v8, p1, v6

    aput v8, p1, v5

    aput v8, p1, v4

    aput v8, p1, v3

    aput v8, p1, v2

    aput v8, p1, v1

    aput v8, p1, v0

    const/16 v0, 0xa

    const/16 v1, 0xf

    const/high16 v2, 0x3f80

    aput v2, p1, v1

    aput v2, p1, v0

    const/4 v0, 0x0

    iget-wide v1, p0, Lorg/cocos2d/l/d;->a:D

    double-to-float v1, v1

    aput v1, p1, v0

    const/4 v0, 0x4

    iget-wide v1, p0, Lorg/cocos2d/l/d;->c:D

    double-to-float v1, v1

    aput v1, p1, v0

    const/16 v0, 0xc

    iget-wide v1, p0, Lorg/cocos2d/l/d;->e:D

    double-to-float v1, v1

    aput v1, p1, v0

    const/4 v0, 0x1

    iget-wide v1, p0, Lorg/cocos2d/l/d;->b:D

    double-to-float v1, v1

    aput v1, p1, v0

    const/4 v0, 0x5

    iget-wide v1, p0, Lorg/cocos2d/l/d;->d:D

    double-to-float v1, v1

    aput v1, p1, v0

    const/16 v0, 0xd

    iget-wide v1, p0, Lorg/cocos2d/l/d;->f:D

    double-to-float v1, v1

    aput v1, p1, v0

    return-void
.end method


# virtual methods
.method public final a(Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;
    .locals 9

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    iget v1, p1, Lorg/cocos2d/l/e;->a:F

    iget v2, p1, Lorg/cocos2d/l/e;->b:F

    float-to-double v3, v1

    iget-wide v5, p0, Lorg/cocos2d/l/d;->a:D

    mul-double/2addr v3, v5

    float-to-double v5, v2

    iget-wide v7, p0, Lorg/cocos2d/l/d;->c:D

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    iget-wide v5, p0, Lorg/cocos2d/l/d;->e:D

    add-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, v0, Lorg/cocos2d/l/e;->a:F

    float-to-double v3, v1

    iget-wide v5, p0, Lorg/cocos2d/l/d;->b:D

    mul-double/2addr v3, v5

    float-to-double v1, v2

    iget-wide v5, p0, Lorg/cocos2d/l/d;->d:D

    mul-double/2addr v1, v5

    add-double/2addr v1, v3

    iget-wide v3, p0, Lorg/cocos2d/l/d;->f:D

    add-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, v0, Lorg/cocos2d/l/e;->b:F

    return-object v0
.end method

.method public final a(D)V
    .locals 14

    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3ddb7cdfd9d7bdbbL

    cmpg-double v4, v4, v6

    if-gez v4, :cond_1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_0

    const-wide/high16 v0, 0x3ff0

    :goto_0
    move-wide v12, v2

    move-wide v2, v0

    move-wide v0, v12

    :goto_1
    const/4 v4, -0x1

    iput v4, p0, Lorg/cocos2d/l/d;->g:I

    iget-wide v4, p0, Lorg/cocos2d/l/d;->a:D

    mul-double/2addr v4, v0

    iget-wide v6, p0, Lorg/cocos2d/l/d;->c:D

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    iget-wide v6, p0, Lorg/cocos2d/l/d;->b:D

    mul-double/2addr v6, v0

    iget-wide v8, p0, Lorg/cocos2d/l/d;->d:D

    mul-double/2addr v8, v2

    add-double/2addr v6, v8

    neg-double v8, v2

    iget-wide v10, p0, Lorg/cocos2d/l/d;->a:D

    mul-double/2addr v8, v10

    iget-wide v10, p0, Lorg/cocos2d/l/d;->c:D

    mul-double/2addr v10, v0

    add-double/2addr v8, v10

    neg-double v2, v2

    iget-wide v10, p0, Lorg/cocos2d/l/d;->b:D

    mul-double/2addr v2, v10

    iget-wide v10, p0, Lorg/cocos2d/l/d;->d:D

    mul-double/2addr v0, v10

    add-double/2addr v0, v2

    iput-wide v4, p0, Lorg/cocos2d/l/d;->a:D

    iput-wide v8, p0, Lorg/cocos2d/l/d;->c:D

    iput-wide v6, p0, Lorg/cocos2d/l/d;->b:D

    iput-wide v0, p0, Lorg/cocos2d/l/d;->d:D

    return-void

    :cond_0
    const-wide/high16 v0, -0x4010

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3ddb7cdfd9d7bdbbL

    cmpg-double v4, v4, v6

    if-gez v4, :cond_3

    const-wide/16 v0, 0x0

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_2

    const-wide/high16 v2, 0x3ff0

    :goto_2
    move-wide v12, v2

    move-wide v2, v0

    move-wide v0, v12

    goto :goto_1

    :cond_2
    const-wide/high16 v2, -0x4010

    goto :goto_2

    :cond_3
    move-wide v12, v2

    move-wide v2, v0

    move-wide v0, v12

    goto :goto_1
.end method

.method public final a(DDDDDD)V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lorg/cocos2d/l/d;->g:I

    iput-wide p1, p0, Lorg/cocos2d/l/d;->a:D

    iput-wide p3, p0, Lorg/cocos2d/l/d;->b:D

    iput-wide p5, p0, Lorg/cocos2d/l/d;->c:D

    iput-wide p7, p0, Lorg/cocos2d/l/d;->d:D

    iput-wide p9, p0, Lorg/cocos2d/l/d;->e:D

    iput-wide p11, p0, Lorg/cocos2d/l/d;->f:D

    return-void
.end method

.method public final a(Lorg/cocos2d/l/d;)V
    .locals 13

    iget-wide v1, p1, Lorg/cocos2d/l/d;->a:D

    iget-wide v3, p1, Lorg/cocos2d/l/d;->b:D

    iget-wide v5, p1, Lorg/cocos2d/l/d;->c:D

    iget-wide v7, p1, Lorg/cocos2d/l/d;->d:D

    iget-wide v9, p1, Lorg/cocos2d/l/d;->e:D

    iget-wide v11, p1, Lorg/cocos2d/l/d;->f:D

    move-object v0, p0

    invoke-virtual/range {v0 .. v12}, Lorg/cocos2d/l/d;->a(DDDDDD)V

    iget v0, p1, Lorg/cocos2d/l/d;->g:I

    iput v0, p0, Lorg/cocos2d/l/d;->g:I

    return-void
.end method

.method public final b()D
    .locals 6

    iget-wide v0, p0, Lorg/cocos2d/l/d;->a:D

    iget-wide v2, p0, Lorg/cocos2d/l/d;->d:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/cocos2d/l/d;->c:D

    iget-wide v4, p0, Lorg/cocos2d/l/d;->b:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public final b(Lorg/cocos2d/l/d;)Lorg/cocos2d/l/d;
    .locals 1

    invoke-static {p1, p0}, Lorg/cocos2d/l/d;->a(Lorg/cocos2d/l/d;Lorg/cocos2d/l/d;)Lorg/cocos2d/l/d;

    move-result-object v0

    return-object v0
.end method

.method public final b(DD)V
    .locals 4

    const/4 v0, -0x1

    iput v0, p0, Lorg/cocos2d/l/d;->g:I

    iget-wide v0, p0, Lorg/cocos2d/l/d;->a:D

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lorg/cocos2d/l/d;->c:D

    mul-double/2addr v2, p3

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/cocos2d/l/d;->e:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/cocos2d/l/d;->e:D

    iget-wide v0, p0, Lorg/cocos2d/l/d;->b:D

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lorg/cocos2d/l/d;->d:D

    mul-double/2addr v2, p3

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/cocos2d/l/d;->f:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/cocos2d/l/d;->f:D

    return-void
.end method

.method public final b(DDDDDD)V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lorg/cocos2d/l/d;->g:I

    iput-wide p1, p0, Lorg/cocos2d/l/d;->a:D

    iput-wide p3, p0, Lorg/cocos2d/l/d;->b:D

    iput-wide p5, p0, Lorg/cocos2d/l/d;->c:D

    iput-wide p7, p0, Lorg/cocos2d/l/d;->d:D

    iput-wide p9, p0, Lorg/cocos2d/l/d;->e:D

    iput-wide p11, p0, Lorg/cocos2d/l/d;->f:D

    return-void
.end method

.method public final c(Lorg/cocos2d/l/d;)Lorg/cocos2d/l/d;
    .locals 1

    invoke-static {p0, p1}, Lorg/cocos2d/l/d;->a(Lorg/cocos2d/l/d;Lorg/cocos2d/l/d;)Lorg/cocos2d/l/d;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2d/l/d;->g:I

    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lorg/cocos2d/l/d;->d:D

    iput-wide v0, p0, Lorg/cocos2d/l/d;->a:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/cocos2d/l/d;->f:D

    iput-wide v0, p0, Lorg/cocos2d/l/d;->e:D

    iput-wide v0, p0, Lorg/cocos2d/l/d;->c:D

    iput-wide v0, p0, Lorg/cocos2d/l/d;->b:D

    return-void
.end method

.method public final c(DD)V
    .locals 6

    const/4 v0, -0x1

    iput v0, p0, Lorg/cocos2d/l/d;->g:I

    iget-wide v0, p0, Lorg/cocos2d/l/d;->a:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Lorg/cocos2d/l/d;->a:D

    iget-wide v0, p0, Lorg/cocos2d/l/d;->b:D

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lorg/cocos2d/l/d;->c:D

    mul-double/2addr v2, p3

    iget-wide v4, p0, Lorg/cocos2d/l/d;->d:D

    mul-double/2addr v4, p3

    iput-wide v4, p0, Lorg/cocos2d/l/d;->d:D

    iput-wide v2, p0, Lorg/cocos2d/l/d;->c:D

    iput-wide v0, p0, Lorg/cocos2d/l/d;->b:D

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public final d(Lorg/cocos2d/l/d;)V
    .locals 19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/cocos2d/l/d;->a:D

    move-wide v3, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/cocos2d/l/d;->a:D

    move-wide v5, v0

    mul-double/2addr v3, v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/cocos2d/l/d;->b:D

    move-wide v5, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/cocos2d/l/d;->c:D

    move-wide v7, v0

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/cocos2d/l/d;->a:D

    move-wide v5, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/cocos2d/l/d;->b:D

    move-wide v7, v0

    mul-double/2addr v5, v7

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/cocos2d/l/d;->b:D

    move-wide v7, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/cocos2d/l/d;->d:D

    move-wide v9, v0

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/cocos2d/l/d;->c:D

    move-wide v7, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/cocos2d/l/d;->a:D

    move-wide v9, v0

    mul-double/2addr v7, v9

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/cocos2d/l/d;->d:D

    move-wide v9, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/cocos2d/l/d;->c:D

    move-wide v11, v0

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/cocos2d/l/d;->c:D

    move-wide v9, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/cocos2d/l/d;->b:D

    move-wide v11, v0

    mul-double/2addr v9, v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/cocos2d/l/d;->d:D

    move-wide v11, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/cocos2d/l/d;->d:D

    move-wide v13, v0

    mul-double/2addr v11, v13

    add-double/2addr v9, v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/cocos2d/l/d;->e:D

    move-wide v11, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/cocos2d/l/d;->a:D

    move-wide v13, v0

    mul-double/2addr v11, v13

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/cocos2d/l/d;->f:D

    move-wide v13, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/cocos2d/l/d;->c:D

    move-wide v15, v0

    mul-double/2addr v13, v15

    add-double/2addr v11, v13

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/cocos2d/l/d;->e:D

    move-wide v13, v0

    add-double/2addr v11, v13

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/cocos2d/l/d;->e:D

    move-wide v13, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/cocos2d/l/d;->b:D

    move-wide v15, v0

    mul-double/2addr v13, v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/cocos2d/l/d;->f:D

    move-wide v15, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/cocos2d/l/d;->d:D

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    add-double/2addr v13, v15

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/cocos2d/l/d;->f:D

    move-wide v15, v0

    add-double/2addr v13, v15

    move-wide v0, v3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/cocos2d/l/d;->a:D

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/cocos2d/l/d;->c:D

    move-wide v0, v7

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/cocos2d/l/d;->b:D

    move-wide v0, v9

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/cocos2d/l/d;->d:D

    move-wide v0, v11

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/cocos2d/l/d;->e:D

    move-wide v0, v13

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/cocos2d/l/d;->f:D

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-ne p1, p0, :cond_0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lorg/cocos2d/l/d;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/cocos2d/l/d;

    iget-wide v0, p0, Lorg/cocos2d/l/d;->a:D

    iget-wide v2, p1, Lorg/cocos2d/l/d;->a:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/cocos2d/l/d;->c:D

    iget-wide v2, p1, Lorg/cocos2d/l/d;->c:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/cocos2d/l/d;->e:D

    iget-wide v2, p1, Lorg/cocos2d/l/d;->e:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/cocos2d/l/d;->b:D

    iget-wide v2, p1, Lorg/cocos2d/l/d;->b:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/cocos2d/l/d;->d:D

    iget-wide v2, p1, Lorg/cocos2d/l/d;->d:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/cocos2d/l/d;->f:D

    iget-wide v2, p1, Lorg/cocos2d/l/d;->f:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    new-instance v0, Lorg/cocos2d/l/h;

    invoke-direct {v0}, Lorg/cocos2d/l/h;-><init>()V

    iget-wide v1, p0, Lorg/cocos2d/l/d;->a:D

    invoke-virtual {v0}, Lorg/cocos2d/l/h;->a()Lorg/cocos2d/l/h;

    iget-wide v1, p0, Lorg/cocos2d/l/d;->c:D

    invoke-virtual {v0}, Lorg/cocos2d/l/h;->a()Lorg/cocos2d/l/h;

    iget-wide v1, p0, Lorg/cocos2d/l/d;->e:D

    invoke-virtual {v0}, Lorg/cocos2d/l/h;->a()Lorg/cocos2d/l/h;

    iget-wide v1, p0, Lorg/cocos2d/l/d;->b:D

    invoke-virtual {v0}, Lorg/cocos2d/l/h;->a()Lorg/cocos2d/l/h;

    iget-wide v1, p0, Lorg/cocos2d/l/d;->d:D

    invoke-virtual {v0}, Lorg/cocos2d/l/h;->a()Lorg/cocos2d/l/h;

    iget-wide v1, p0, Lorg/cocos2d/l/d;->f:D

    invoke-virtual {v0}, Lorg/cocos2d/l/h;->a()Lorg/cocos2d/l/h;

    invoke-virtual {v0}, Lorg/cocos2d/l/h;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "[["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/cocos2d/l/d;->a:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/cocos2d/l/d;->c:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/cocos2d/l/d;->e:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/cocos2d/l/d;->b:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/cocos2d/l/d;->d:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/cocos2d/l/d;->f:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
