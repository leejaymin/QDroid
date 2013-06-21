.class public Lorg/cocos2d/a/d/l;
.super Lorg/cocos2d/a/d/c;


# instance fields
.field c:Lorg/cocos2d/l/e;

.field e:I

.field f:F

.field g:F


# direct methods
.method private constructor <init>(Lorg/cocos2d/l/e;IFLorg/cocos2d/l/m;F)V
    .locals 2

    invoke-direct {p0, p4, p5}, Lorg/cocos2d/a/d/c;-><init>(Lorg/cocos2d/l/m;F)V

    iget v0, p1, Lorg/cocos2d/l/e;->a:F

    iget v1, p1, Lorg/cocos2d/l/e;->b:F

    invoke-static {v0, v1}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/a/d/l;->c:Lorg/cocos2d/l/e;

    iput p2, p0, Lorg/cocos2d/a/d/l;->e:I

    iput p3, p0, Lorg/cocos2d/a/d/l;->f:F

    const/high16 v0, 0x3f80

    iput v0, p0, Lorg/cocos2d/a/d/l;->g:F

    return-void
.end method


# virtual methods
.method public final b(F)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/a/d/l;->c:Lorg/cocos2d/l/e;

    move-object v3, v0

    new-instance v4, Lorg/cocos2d/l/e;

    invoke-direct {v4}, Lorg/cocos2d/l/e;-><init>()V

    const/4 v5, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/a/d/l;->d:Lorg/cocos2d/l/m;

    move-object v6, v0

    iget v6, v6, Lorg/cocos2d/l/m;->a:I

    add-int/lit8 v6, v6, 0x1

    if-lt v5, v6, :cond_0

    return-void

    :cond_0
    const/4 v6, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/a/d/l;->d:Lorg/cocos2d/l/m;

    move-object v7, v0

    iget v7, v7, Lorg/cocos2d/l/m;->b:I

    add-int/lit8 v7, v7, 0x1

    if-lt v6, v7, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v5, v6}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v7

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Lorg/cocos2d/a/d/l;->a(Lorg/cocos2d/l/m;)Lorg/cocos2d/l/c;

    move-result-object v7

    int-to-float v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/a/d/l;->d:Lorg/cocos2d/l/m;

    move-object v9, v0

    iget v9, v9, Lorg/cocos2d/l/m;->a:I

    int-to-float v9, v9

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    int-to-float v9, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/a/d/l;->d:Lorg/cocos2d/l/m;

    move-object v10, v0

    iget v10, v10, Lorg/cocos2d/l/m;->b:I

    int-to-float v10, v10

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    invoke-static {v8, v9}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v8

    invoke-static {v8}, Lorg/cocos2d/l/e;->c(Lorg/cocos2d/l/e;)F

    move-result v8

    const v9, 0x3dcccccd

    move-object/from16 v0, p0

    iget v0, v0, Lorg/cocos2d/a/d/l;->f:F

    move v10, v0

    mul-float/2addr v9, v10

    move-object/from16 v0, p0

    iget v0, v0, Lorg/cocos2d/a/d/l;->g:F

    move v10, v0

    mul-float/2addr v9, v10

    float-to-double v10, v8

    const-wide v12, 0x3ff921fb54442d18L

    move/from16 v0, p1

    float-to-double v0, v0

    move-wide v14, v0

    const-wide v16, 0x400921fb54442d18L

    mul-double v14, v14, v16

    move-object/from16 v0, p0

    iget v0, v0, Lorg/cocos2d/a/d/l;->e:I

    move v8, v0

    move v0, v8

    int-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    const-wide/high16 v16, 0x4000

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    float-to-double v8, v9

    mul-double/2addr v8, v10

    double-to-float v8, v8

    float-to-double v9, v8

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    iget v11, v7, Lorg/cocos2d/l/c;->b:F

    iget v12, v3, Lorg/cocos2d/l/e;->b:F

    sub-float/2addr v11, v12

    float-to-double v11, v11

    mul-double/2addr v9, v11

    float-to-double v11, v8

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    iget v13, v7, Lorg/cocos2d/l/c;->a:F

    iget v14, v3, Lorg/cocos2d/l/e;->a:F

    sub-float/2addr v13, v14

    float-to-double v13, v13

    mul-double/2addr v11, v13

    add-double/2addr v9, v11

    double-to-float v9, v9

    iput v9, v4, Lorg/cocos2d/l/e;->a:F

    float-to-double v9, v8

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    iget v11, v7, Lorg/cocos2d/l/c;->b:F

    iget v12, v3, Lorg/cocos2d/l/e;->b:F

    sub-float/2addr v11, v12

    float-to-double v11, v11

    mul-double/2addr v9, v11

    float-to-double v11, v8

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    iget v8, v7, Lorg/cocos2d/l/c;->a:F

    iget v13, v3, Lorg/cocos2d/l/e;->a:F

    sub-float/2addr v8, v13

    float-to-double v13, v8

    mul-double/2addr v11, v13

    sub-double v8, v9, v11

    double-to-float v8, v8

    iput v8, v4, Lorg/cocos2d/l/e;->b:F

    iget v8, v3, Lorg/cocos2d/l/e;->a:F

    iget v9, v4, Lorg/cocos2d/l/e;->a:F

    add-float/2addr v8, v9

    iput v8, v7, Lorg/cocos2d/l/c;->a:F

    iget v8, v3, Lorg/cocos2d/l/e;->b:F

    iget v9, v4, Lorg/cocos2d/l/e;->b:F

    add-float/2addr v8, v9

    iput v8, v7, Lorg/cocos2d/l/c;->b:F

    invoke-static {v5, v6}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v8

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/a/d/l;->a(Lorg/cocos2d/l/m;Lorg/cocos2d/l/c;)V

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1
.end method

.method public final synthetic j()Lorg/cocos2d/a/d/c;
    .locals 6

    new-instance v0, Lorg/cocos2d/a/d/l;

    iget-object v1, p0, Lorg/cocos2d/a/d/l;->c:Lorg/cocos2d/l/e;

    iget v2, p0, Lorg/cocos2d/a/d/l;->e:I

    iget v3, p0, Lorg/cocos2d/a/d/l;->f:F

    iget-object v4, p0, Lorg/cocos2d/a/d/l;->d:Lorg/cocos2d/l/m;

    iget v5, p0, Lorg/cocos2d/a/d/l;->b:F

    invoke-direct/range {v0 .. v5}, Lorg/cocos2d/a/d/l;-><init>(Lorg/cocos2d/l/e;IFLorg/cocos2d/l/m;F)V

    return-object v0
.end method
