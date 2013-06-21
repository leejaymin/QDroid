.class public Lorg/cocos2d/a/g/e;
.super Lorg/cocos2d/a/g/k;


# instance fields
.field c:I

.field e:F

.field f:F


# direct methods
.method private constructor <init>(IFLorg/cocos2d/l/m;F)V
    .locals 1

    invoke-direct {p0, p3, p4}, Lorg/cocos2d/a/g/k;-><init>(Lorg/cocos2d/l/m;F)V

    iput p1, p0, Lorg/cocos2d/a/g/e;->c:I

    iput p2, p0, Lorg/cocos2d/a/g/e;->e:F

    const/high16 v0, 0x3f80

    iput v0, p0, Lorg/cocos2d/a/g/e;->f:F

    return-void
.end method


# virtual methods
.method public final b(F)V
    .locals 7

    const/4 v6, 0x0

    const-wide v4, 0x400921fb54442d18L

    float-to-double v0, p1

    mul-double/2addr v0, v4

    iget v2, p0, Lorg/cocos2d/a/g/e;->c:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    iget v2, p0, Lorg/cocos2d/a/g/e;->e:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    iget v2, p0, Lorg/cocos2d/a/g/e;->f:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iget v1, p0, Lorg/cocos2d/a/g/e;->c:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    const/high16 v2, 0x4000

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f80

    add-float/2addr v1, v2

    float-to-double v1, v1

    mul-double/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    iget v3, p0, Lorg/cocos2d/a/g/e;->e:F

    float-to-double v3, v3

    mul-double/2addr v1, v3

    iget v3, p0, Lorg/cocos2d/a/g/e;->f:F

    float-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-float v1, v1

    move v2, v6

    :goto_0
    iget-object v3, p0, Lorg/cocos2d/a/g/e;->d:Lorg/cocos2d/l/m;

    iget v3, v3, Lorg/cocos2d/l/m;->a:I

    if-lt v2, v3, :cond_0

    return-void

    :cond_0
    move v3, v6

    :goto_1
    iget-object v4, p0, Lorg/cocos2d/a/g/e;->d:Lorg/cocos2d/l/m;

    iget v4, v4, Lorg/cocos2d/l/m;->b:I

    if-lt v3, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v2, v3}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/cocos2d/a/g/e;->b(Lorg/cocos2d/l/m;)Lorg/cocos2d/l/o;

    move-result-object v4

    add-int v5, v2, v3

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_2

    iget v5, v4, Lorg/cocos2d/l/o;->f:F

    add-float/2addr v5, v0

    iput v5, v4, Lorg/cocos2d/l/o;->f:F

    iget v5, v4, Lorg/cocos2d/l/o;->f:F

    add-float/2addr v5, v0

    iput v5, v4, Lorg/cocos2d/l/o;->f:F

    iget v5, v4, Lorg/cocos2d/l/o;->i:F

    add-float/2addr v5, v0

    iput v5, v4, Lorg/cocos2d/l/o;->i:F

    iget v5, v4, Lorg/cocos2d/l/o;->l:F

    add-float/2addr v5, v0

    iput v5, v4, Lorg/cocos2d/l/o;->l:F

    :goto_2
    invoke-static {v2, v3}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v5

    invoke-virtual {p0, v5, v4}, Lorg/cocos2d/a/g/e;->a(Lorg/cocos2d/l/m;Lorg/cocos2d/l/o;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget v5, v4, Lorg/cocos2d/l/o;->c:F

    add-float/2addr v5, v1

    iput v5, v4, Lorg/cocos2d/l/o;->c:F

    iget v5, v4, Lorg/cocos2d/l/o;->f:F

    add-float/2addr v5, v1

    iput v5, v4, Lorg/cocos2d/l/o;->f:F

    iget v5, v4, Lorg/cocos2d/l/o;->i:F

    add-float/2addr v5, v1

    iput v5, v4, Lorg/cocos2d/l/o;->i:F

    iget v5, v4, Lorg/cocos2d/l/o;->l:F

    add-float/2addr v5, v1

    iput v5, v4, Lorg/cocos2d/l/o;->l:F

    goto :goto_2
.end method

.method public final synthetic j()Lorg/cocos2d/a/g/k;
    .locals 5

    new-instance v0, Lorg/cocos2d/a/g/e;

    iget v1, p0, Lorg/cocos2d/a/g/e;->c:I

    iget v2, p0, Lorg/cocos2d/a/g/e;->e:F

    iget-object v3, p0, Lorg/cocos2d/a/g/e;->d:Lorg/cocos2d/l/m;

    iget v4, p0, Lorg/cocos2d/a/g/e;->b:F

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/cocos2d/a/g/e;-><init>(IFLorg/cocos2d/l/m;F)V

    return-object v0
.end method
