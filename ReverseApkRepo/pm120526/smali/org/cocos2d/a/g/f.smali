.class public Lorg/cocos2d/a/g/f;
.super Lorg/cocos2d/a/g/k;


# instance fields
.field c:I

.field e:Z


# direct methods
.method private constructor <init>(IZLorg/cocos2d/l/m;F)V
    .locals 0

    invoke-direct {p0, p3, p4}, Lorg/cocos2d/a/g/k;-><init>(Lorg/cocos2d/l/m;F)V

    iput p1, p0, Lorg/cocos2d/a/g/f;->c:I

    iput-boolean p2, p0, Lorg/cocos2d/a/g/f;->e:Z

    return-void
.end method

.method public static a(Lorg/cocos2d/l/m;)Lorg/cocos2d/a/g/f;
    .locals 4

    new-instance v0, Lorg/cocos2d/a/g/f;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/high16 v3, 0x40a0

    invoke-direct {v0, v1, v2, p0, v3}, Lorg/cocos2d/a/g/f;-><init>(IZLorg/cocos2d/l/m;F)V

    return-object v0
.end method


# virtual methods
.method public final b(F)V
    .locals 10

    const/4 v9, 0x0

    move v0, v9

    :goto_0
    iget-object v1, p0, Lorg/cocos2d/a/g/f;->d:Lorg/cocos2d/l/m;

    iget v1, v1, Lorg/cocos2d/l/m;->a:I

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    move v1, v9

    :goto_1
    iget-object v2, p0, Lorg/cocos2d/a/g/f;->d:Lorg/cocos2d/l/m;

    iget v2, v2, Lorg/cocos2d/l/m;->b:I

    if-lt v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/cocos2d/a/g/f;->b(Lorg/cocos2d/l/m;)Lorg/cocos2d/l/o;

    move-result-object v2

    iget v3, v2, Lorg/cocos2d/l/o;->a:F

    float-to-double v3, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    iget v7, p0, Lorg/cocos2d/a/g/f;->c:I

    mul-int/lit8 v7, v7, 0x2

    int-to-double v7, v7

    mul-double/2addr v5, v7

    iget v7, p0, Lorg/cocos2d/a/g/f;->c:I

    int-to-double v7, v7

    sub-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, v2, Lorg/cocos2d/l/o;->a:F

    iget v3, v2, Lorg/cocos2d/l/o;->d:F

    float-to-double v3, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    iget v7, p0, Lorg/cocos2d/a/g/f;->c:I

    mul-int/lit8 v7, v7, 0x2

    int-to-double v7, v7

    mul-double/2addr v5, v7

    iget v7, p0, Lorg/cocos2d/a/g/f;->c:I

    int-to-double v7, v7

    sub-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, v2, Lorg/cocos2d/l/o;->d:F

    iget v3, v2, Lorg/cocos2d/l/o;->g:F

    float-to-double v3, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    iget v7, p0, Lorg/cocos2d/a/g/f;->c:I

    mul-int/lit8 v7, v7, 0x2

    int-to-double v7, v7

    mul-double/2addr v5, v7

    iget v7, p0, Lorg/cocos2d/a/g/f;->c:I

    int-to-double v7, v7

    sub-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, v2, Lorg/cocos2d/l/o;->g:F

    iget v3, v2, Lorg/cocos2d/l/o;->j:F

    float-to-double v3, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    iget v7, p0, Lorg/cocos2d/a/g/f;->c:I

    mul-int/lit8 v7, v7, 0x2

    int-to-double v7, v7

    mul-double/2addr v5, v7

    iget v7, p0, Lorg/cocos2d/a/g/f;->c:I

    int-to-double v7, v7

    sub-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, v2, Lorg/cocos2d/l/o;->j:F

    iget v3, v2, Lorg/cocos2d/l/o;->b:F

    float-to-double v3, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    iget v7, p0, Lorg/cocos2d/a/g/f;->c:I

    mul-int/lit8 v7, v7, 0x2

    int-to-double v7, v7

    mul-double/2addr v5, v7

    iget v7, p0, Lorg/cocos2d/a/g/f;->c:I

    int-to-double v7, v7

    sub-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, v2, Lorg/cocos2d/l/o;->b:F

    iget v3, v2, Lorg/cocos2d/l/o;->e:F

    float-to-double v3, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    iget v7, p0, Lorg/cocos2d/a/g/f;->c:I

    mul-int/lit8 v7, v7, 0x2

    int-to-double v7, v7

    mul-double/2addr v5, v7

    iget v7, p0, Lorg/cocos2d/a/g/f;->c:I

    int-to-double v7, v7

    sub-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, v2, Lorg/cocos2d/l/o;->e:F

    iget v3, v2, Lorg/cocos2d/l/o;->h:F

    float-to-double v3, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    iget v7, p0, Lorg/cocos2d/a/g/f;->c:I

    mul-int/lit8 v7, v7, 0x2

    int-to-double v7, v7

    mul-double/2addr v5, v7

    iget v7, p0, Lorg/cocos2d/a/g/f;->c:I

    int-to-double v7, v7

    sub-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, v2, Lorg/cocos2d/l/o;->h:F

    iget v3, v2, Lorg/cocos2d/l/o;->k:F

    float-to-double v3, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    iget v7, p0, Lorg/cocos2d/a/g/f;->c:I

    mul-int/lit8 v7, v7, 0x2

    int-to-double v7, v7

    mul-double/2addr v5, v7

    iget v7, p0, Lorg/cocos2d/a/g/f;->c:I

    int-to-double v7, v7

    sub-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, v2, Lorg/cocos2d/l/o;->k:F

    iget-boolean v3, p0, Lorg/cocos2d/a/g/f;->e:Z

    if-eqz v3, :cond_2

    iget v3, v2, Lorg/cocos2d/l/o;->c:F

    float-to-double v3, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    iget v7, p0, Lorg/cocos2d/a/g/f;->c:I

    mul-int/lit8 v7, v7, 0x2

    int-to-double v7, v7

    mul-double/2addr v5, v7

    iget v7, p0, Lorg/cocos2d/a/g/f;->c:I

    int-to-double v7, v7

    sub-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, v2, Lorg/cocos2d/l/o;->c:F

    iget v3, v2, Lorg/cocos2d/l/o;->f:F

    float-to-double v3, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    iget v7, p0, Lorg/cocos2d/a/g/f;->c:I

    mul-int/lit8 v7, v7, 0x2

    int-to-double v7, v7

    mul-double/2addr v5, v7

    iget v7, p0, Lorg/cocos2d/a/g/f;->c:I

    int-to-double v7, v7

    sub-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, v2, Lorg/cocos2d/l/o;->f:F

    iget v3, v2, Lorg/cocos2d/l/o;->i:F

    float-to-double v3, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    iget v7, p0, Lorg/cocos2d/a/g/f;->c:I

    mul-int/lit8 v7, v7, 0x2

    int-to-double v7, v7

    mul-double/2addr v5, v7

    iget v7, p0, Lorg/cocos2d/a/g/f;->c:I

    int-to-double v7, v7

    sub-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, v2, Lorg/cocos2d/l/o;->i:F

    iget v3, v2, Lorg/cocos2d/l/o;->l:F

    float-to-double v3, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    iget v7, p0, Lorg/cocos2d/a/g/f;->c:I

    mul-int/lit8 v7, v7, 0x2

    int-to-double v7, v7

    mul-double/2addr v5, v7

    iget v7, p0, Lorg/cocos2d/a/g/f;->c:I

    int-to-double v7, v7

    sub-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, v2, Lorg/cocos2d/l/o;->l:F

    :cond_2
    invoke-static {v0, v1}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lorg/cocos2d/a/g/f;->a(Lorg/cocos2d/l/m;Lorg/cocos2d/l/o;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1
.end method

.method public final synthetic j()Lorg/cocos2d/a/g/k;
    .locals 5

    new-instance v0, Lorg/cocos2d/a/g/f;

    iget v1, p0, Lorg/cocos2d/a/g/f;->c:I

    iget-boolean v2, p0, Lorg/cocos2d/a/g/f;->e:Z

    iget-object v3, p0, Lorg/cocos2d/a/g/f;->d:Lorg/cocos2d/l/m;

    iget v4, p0, Lorg/cocos2d/a/g/f;->b:F

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/cocos2d/a/g/f;-><init>(IZLorg/cocos2d/l/m;F)V

    return-object v0
.end method
