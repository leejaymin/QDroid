.class public Lorg/cocos2d/a/g/m;
.super Lorg/cocos2d/a/g/k;


# instance fields
.field c:I

.field e:F

.field f:F


# direct methods
.method private constructor <init>(IFLorg/cocos2d/l/m;F)V
    .locals 1

    invoke-direct {p0, p3, p4}, Lorg/cocos2d/a/g/k;-><init>(Lorg/cocos2d/l/m;F)V

    iput p1, p0, Lorg/cocos2d/a/g/m;->c:I

    iput p2, p0, Lorg/cocos2d/a/g/m;->e:F

    const/high16 v0, 0x3f80

    iput v0, p0, Lorg/cocos2d/a/g/m;->f:F

    return-void
.end method


# virtual methods
.method public final b(F)V
    .locals 8

    const/4 v7, 0x0

    move v0, v7

    :goto_0
    iget-object v1, p0, Lorg/cocos2d/a/g/m;->d:Lorg/cocos2d/l/m;

    iget v1, v1, Lorg/cocos2d/l/m;->a:I

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    move v1, v7

    :goto_1
    iget-object v2, p0, Lorg/cocos2d/a/g/m;->d:Lorg/cocos2d/l/m;

    iget v2, v2, Lorg/cocos2d/l/m;->b:I

    if-lt v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/cocos2d/a/g/m;->b(Lorg/cocos2d/l/m;)Lorg/cocos2d/l/o;

    move-result-object v2

    float-to-double v3, p1

    const-wide v5, 0x400921fb54442d18L

    mul-double/2addr v3, v5

    iget v5, p0, Lorg/cocos2d/a/g/m;->c:I

    int-to-double v5, v5

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x4000

    mul-double/2addr v3, v5

    iget v5, v2, Lorg/cocos2d/l/o;->b:F

    iget v6, v2, Lorg/cocos2d/l/o;->a:F

    add-float/2addr v5, v6

    const v6, 0x3c23d70a

    mul-float/2addr v5, v6

    float-to-double v5, v5

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    iget v5, p0, Lorg/cocos2d/a/g/m;->e:F

    float-to-double v5, v5

    mul-double/2addr v3, v5

    iget v5, p0, Lorg/cocos2d/a/g/m;->f:F

    float-to-double v5, v5

    mul-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, v2, Lorg/cocos2d/l/o;->c:F

    iget v3, v2, Lorg/cocos2d/l/o;->c:F

    iput v3, v2, Lorg/cocos2d/l/o;->f:F

    iget v3, v2, Lorg/cocos2d/l/o;->c:F

    iput v3, v2, Lorg/cocos2d/l/o;->i:F

    iget v3, v2, Lorg/cocos2d/l/o;->c:F

    iput v3, v2, Lorg/cocos2d/l/o;->l:F

    invoke-static {v0, v1}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lorg/cocos2d/a/g/m;->a(Lorg/cocos2d/l/m;Lorg/cocos2d/l/o;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public final synthetic j()Lorg/cocos2d/a/g/k;
    .locals 5

    new-instance v0, Lorg/cocos2d/a/g/m;

    iget v1, p0, Lorg/cocos2d/a/g/m;->c:I

    iget v2, p0, Lorg/cocos2d/a/g/m;->e:F

    iget-object v3, p0, Lorg/cocos2d/a/g/m;->d:Lorg/cocos2d/l/m;

    iget v4, p0, Lorg/cocos2d/a/g/m;->b:F

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/cocos2d/a/g/m;-><init>(IFLorg/cocos2d/l/m;F)V

    return-object v0
.end method
