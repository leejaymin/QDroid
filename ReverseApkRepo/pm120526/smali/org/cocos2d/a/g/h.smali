.class public Lorg/cocos2d/a/g/h;
.super Lorg/cocos2d/a/g/k;


# instance fields
.field c:Ljava/util/Random;

.field e:I

.field f:I

.field g:[I

.field h:[Lorg/cocos2d/a/g/n;


# direct methods
.method private constructor <init>(ILorg/cocos2d/l/m;F)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p2, p3}, Lorg/cocos2d/a/g/k;-><init>(Lorg/cocos2d/l/m;F)V

    iput p1, p0, Lorg/cocos2d/a/g/h;->e:I

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/a/g/h;->c:Ljava/util/Random;

    iput-object v1, p0, Lorg/cocos2d/a/g/h;->g:[I

    iput-object v1, p0, Lorg/cocos2d/a/g/h;->h:[Lorg/cocos2d/a/g/n;

    return-void
.end method

.method public static a(Lorg/cocos2d/l/m;)Lorg/cocos2d/a/g/h;
    .locals 3

    new-instance v0, Lorg/cocos2d/a/g/h;

    const/4 v1, 0x0

    const/high16 v2, 0x4040

    invoke-direct {v0, v1, p0, v2}, Lorg/cocos2d/a/g/h;-><init>(ILorg/cocos2d/l/m;F)V

    return-object v0
.end method


# virtual methods
.method public final a(Lorg/cocos2d/g/i;)V
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x0

    invoke-super {p0, p1}, Lorg/cocos2d/a/g/k;->a(Lorg/cocos2d/g/i;)V

    iget v0, p0, Lorg/cocos2d/a/g/h;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/cocos2d/a/g/h;->c:Ljava/util/Random;

    iget v1, p0, Lorg/cocos2d/a/g/h;->e:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Random;->setSeed(J)V

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/a/g/h;->d:Lorg/cocos2d/l/m;

    iget v0, v0, Lorg/cocos2d/l/m;->a:I

    iget-object v1, p0, Lorg/cocos2d/a/g/h;->d:Lorg/cocos2d/l/m;

    iget v1, v1, Lorg/cocos2d/l/m;->b:I

    mul-int/2addr v0, v1

    iput v0, p0, Lorg/cocos2d/a/g/h;->f:I

    iget v0, p0, Lorg/cocos2d/a/g/h;->f:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/cocos2d/a/g/h;->g:[I

    move v0, v11

    :goto_0
    iget v1, p0, Lorg/cocos2d/a/g/h;->f:I

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lorg/cocos2d/a/g/h;->g:[I

    iget v1, p0, Lorg/cocos2d/a/g/h;->f:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_1
    if-gez v1, :cond_2

    iget v0, p0, Lorg/cocos2d/a/g/h;->f:I

    new-array v0, v0, [Lorg/cocos2d/a/g/n;

    iput-object v0, p0, Lorg/cocos2d/a/g/h;->h:[Lorg/cocos2d/a/g/n;

    iget-object v0, p0, Lorg/cocos2d/a/g/h;->h:[Lorg/cocos2d/a/g/n;

    move v1, v11

    move v2, v11

    :goto_2
    iget-object v3, p0, Lorg/cocos2d/a/g/h;->d:Lorg/cocos2d/l/m;

    iget v3, v3, Lorg/cocos2d/l/m;->a:I

    if-lt v2, v3, :cond_3

    return-void

    :cond_1
    iget-object v1, p0, Lorg/cocos2d/a/g/h;->g:[I

    aput v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    add-int/lit8 v4, v1, 0x1

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    aget v3, v0, v1

    aget v4, v0, v2

    aput v4, v0, v1

    aput v3, v0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    move v3, v11

    :goto_3
    iget-object v4, p0, Lorg/cocos2d/a/g/h;->d:Lorg/cocos2d/l/m;

    iget v4, v4, Lorg/cocos2d/l/m;->b:I

    if-lt v3, v4, :cond_4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    int-to-float v4, v2

    int-to-float v5, v3

    invoke-static {v4, v5}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v4

    int-to-float v5, v2

    int-to-float v6, v3

    invoke-static {v5, v6}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v5

    invoke-static {v2, v3}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v6

    invoke-static {v12, v12}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v7

    iget v8, v6, Lorg/cocos2d/l/m;->a:I

    iget-object v9, p0, Lorg/cocos2d/a/g/h;->d:Lorg/cocos2d/l/m;

    iget v9, v9, Lorg/cocos2d/l/m;->b:I

    mul-int/2addr v8, v9

    iget v9, v6, Lorg/cocos2d/l/m;->b:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lorg/cocos2d/a/g/h;->g:[I

    aget v9, v9, v8

    iget-object v10, p0, Lorg/cocos2d/a/g/h;->d:Lorg/cocos2d/l/m;

    iget v10, v10, Lorg/cocos2d/l/m;->b:I

    div-int/2addr v9, v10

    int-to-float v9, v9

    iput v9, v7, Lorg/cocos2d/l/e;->a:F

    iget-object v9, p0, Lorg/cocos2d/a/g/h;->g:[I

    aget v8, v9, v8

    iget-object v9, p0, Lorg/cocos2d/a/g/h;->d:Lorg/cocos2d/l/m;

    iget v9, v9, Lorg/cocos2d/l/m;->b:I

    rem-int/2addr v8, v9

    int-to-float v8, v8

    iput v8, v7, Lorg/cocos2d/l/e;->b:F

    iget v8, v7, Lorg/cocos2d/l/e;->a:F

    iget v9, v6, Lorg/cocos2d/l/m;->a:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    float-to-int v8, v8

    iget v7, v7, Lorg/cocos2d/l/e;->b:F

    iget v6, v6, Lorg/cocos2d/l/m;->b:I

    int-to-float v6, v6

    sub-float v6, v7, v6

    float-to-int v6, v6

    invoke-static {v8, v6}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lorg/cocos2d/a/g/n;->a(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;Lorg/cocos2d/l/m;)Lorg/cocos2d/a/g/n;

    move-result-object v4

    aput-object v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method public final b(F)V
    .locals 12

    const/4 v11, 0x0

    iget-object v0, p0, Lorg/cocos2d/a/g/h;->h:[Lorg/cocos2d/a/g/n;

    move v1, v11

    move v2, v11

    :goto_0
    iget-object v3, p0, Lorg/cocos2d/a/g/h;->d:Lorg/cocos2d/l/m;

    iget v3, v3, Lorg/cocos2d/l/m;->a:I

    if-lt v2, v3, :cond_0

    return-void

    :cond_0
    move v3, v11

    :goto_1
    iget-object v4, p0, Lorg/cocos2d/a/g/h;->d:Lorg/cocos2d/l/m;

    iget v4, v4, Lorg/cocos2d/l/m;->b:I

    if-lt v3, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    aget-object v4, v0, v1

    aget-object v5, v0, v1

    iget-object v5, v5, Lorg/cocos2d/a/g/n;->c:Lorg/cocos2d/l/m;

    iget v5, v5, Lorg/cocos2d/l/m;->a:I

    int-to-float v5, v5

    aget-object v6, v0, v1

    iget-object v6, v6, Lorg/cocos2d/a/g/n;->c:Lorg/cocos2d/l/m;

    iget v6, v6, Lorg/cocos2d/l/m;->b:I

    int-to-float v6, v6

    invoke-static {v5, v6}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v5

    invoke-static {v5, p1}, Lorg/cocos2d/l/e;->a(Lorg/cocos2d/l/e;F)Lorg/cocos2d/l/e;

    move-result-object v5

    iput-object v5, v4, Lorg/cocos2d/a/g/n;->a:Lorg/cocos2d/l/e;

    invoke-static {v2, v3}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v4

    aget-object v5, v0, v1

    invoke-virtual {p0, v4}, Lorg/cocos2d/a/g/h;->b(Lorg/cocos2d/l/m;)Lorg/cocos2d/l/o;

    move-result-object v6

    iget-object v7, p0, Lorg/cocos2d/a/g/h;->a:Lorg/cocos2d/g/i;

    invoke-virtual {v7}, Lorg/cocos2d/g/i;->u()Lorg/cocos2d/d/c;

    move-result-object v7

    invoke-virtual {v7}, Lorg/cocos2d/d/c;->c()Lorg/cocos2d/l/e;

    move-result-object v7

    iget v8, v6, Lorg/cocos2d/l/o;->a:F

    iget-object v9, v5, Lorg/cocos2d/a/g/n;->a:Lorg/cocos2d/l/e;

    iget v9, v9, Lorg/cocos2d/l/e;->a:F

    iget v10, v7, Lorg/cocos2d/l/e;->a:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    iput v8, v6, Lorg/cocos2d/l/o;->a:F

    iget v8, v6, Lorg/cocos2d/l/o;->b:F

    iget-object v9, v5, Lorg/cocos2d/a/g/n;->a:Lorg/cocos2d/l/e;

    iget v9, v9, Lorg/cocos2d/l/e;->b:F

    iget v10, v7, Lorg/cocos2d/l/e;->b:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    iput v8, v6, Lorg/cocos2d/l/o;->b:F

    iget v8, v6, Lorg/cocos2d/l/o;->d:F

    iget-object v9, v5, Lorg/cocos2d/a/g/n;->a:Lorg/cocos2d/l/e;

    iget v9, v9, Lorg/cocos2d/l/e;->a:F

    iget v10, v7, Lorg/cocos2d/l/e;->a:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    iput v8, v6, Lorg/cocos2d/l/o;->d:F

    iget v8, v6, Lorg/cocos2d/l/o;->e:F

    iget-object v9, v5, Lorg/cocos2d/a/g/n;->a:Lorg/cocos2d/l/e;

    iget v9, v9, Lorg/cocos2d/l/e;->b:F

    iget v10, v7, Lorg/cocos2d/l/e;->b:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    iput v8, v6, Lorg/cocos2d/l/o;->e:F

    iget v8, v6, Lorg/cocos2d/l/o;->g:F

    iget-object v9, v5, Lorg/cocos2d/a/g/n;->a:Lorg/cocos2d/l/e;

    iget v9, v9, Lorg/cocos2d/l/e;->a:F

    iget v10, v7, Lorg/cocos2d/l/e;->a:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    iput v8, v6, Lorg/cocos2d/l/o;->g:F

    iget v8, v6, Lorg/cocos2d/l/o;->h:F

    iget-object v9, v5, Lorg/cocos2d/a/g/n;->a:Lorg/cocos2d/l/e;

    iget v9, v9, Lorg/cocos2d/l/e;->b:F

    iget v10, v7, Lorg/cocos2d/l/e;->b:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    iput v8, v6, Lorg/cocos2d/l/o;->h:F

    iget v8, v6, Lorg/cocos2d/l/o;->j:F

    iget-object v9, v5, Lorg/cocos2d/a/g/n;->a:Lorg/cocos2d/l/e;

    iget v9, v9, Lorg/cocos2d/l/e;->a:F

    iget v10, v7, Lorg/cocos2d/l/e;->a:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    iput v8, v6, Lorg/cocos2d/l/o;->j:F

    iget v8, v6, Lorg/cocos2d/l/o;->k:F

    iget-object v5, v5, Lorg/cocos2d/a/g/n;->a:Lorg/cocos2d/l/e;

    iget v5, v5, Lorg/cocos2d/l/e;->b:F

    iget v7, v7, Lorg/cocos2d/l/e;->b:F

    mul-float/2addr v5, v7

    float-to-int v5, v5

    int-to-float v5, v5

    add-float/2addr v5, v8

    iput v5, v6, Lorg/cocos2d/l/o;->k:F

    invoke-virtual {p0, v4, v6}, Lorg/cocos2d/a/g/h;->a(Lorg/cocos2d/l/m;Lorg/cocos2d/l/o;)V

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1
.end method

.method public final synthetic j()Lorg/cocos2d/a/g/k;
    .locals 4

    new-instance v0, Lorg/cocos2d/a/g/h;

    iget v1, p0, Lorg/cocos2d/a/g/h;->e:I

    iget-object v2, p0, Lorg/cocos2d/a/g/h;->d:Lorg/cocos2d/l/m;

    iget v3, p0, Lorg/cocos2d/a/g/h;->b:F

    invoke-direct {v0, v1, v2, v3}, Lorg/cocos2d/a/g/h;-><init>(ILorg/cocos2d/l/m;F)V

    return-object v0
.end method
