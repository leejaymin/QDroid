.class public Lorg/cocos2d/a/d/e;
.super Lorg/cocos2d/a/d/c;


# instance fields
.field c:Lorg/cocos2d/l/e;

.field e:F

.field f:F

.field g:Lorg/cocos2d/l/e;


# direct methods
.method private constructor <init>(Lorg/cocos2d/l/e;FLorg/cocos2d/l/m;F)V
    .locals 2

    const/high16 v1, -0x4080

    invoke-direct {p0, p3, p4}, Lorg/cocos2d/a/d/c;-><init>(Lorg/cocos2d/l/m;F)V

    iput-object p1, p0, Lorg/cocos2d/a/d/e;->c:Lorg/cocos2d/l/e;

    iput p2, p0, Lorg/cocos2d/a/d/e;->e:F

    const v0, 0x3f333333

    iput v0, p0, Lorg/cocos2d/a/d/e;->f:F

    invoke-static {v1, v1}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/a/d/e;->g:Lorg/cocos2d/l/e;

    return-void
.end method

.method public static a(Lorg/cocos2d/l/e;FLorg/cocos2d/l/m;F)Lorg/cocos2d/a/d/e;
    .locals 1

    new-instance v0, Lorg/cocos2d/a/d/e;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/cocos2d/a/d/e;-><init>(Lorg/cocos2d/l/e;FLorg/cocos2d/l/m;F)V

    return-object v0
.end method


# virtual methods
.method public final b(F)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lorg/cocos2d/a/d/e;->c:Lorg/cocos2d/l/e;

    iget v0, v0, Lorg/cocos2d/l/e;->a:F

    iget-object v1, p0, Lorg/cocos2d/a/d/e;->g:Lorg/cocos2d/l/e;

    iget v1, v1, Lorg/cocos2d/l/e;->a:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/a/d/e;->c:Lorg/cocos2d/l/e;

    iget v0, v0, Lorg/cocos2d/l/e;->b:F

    iget-object v1, p0, Lorg/cocos2d/a/d/e;->g:Lorg/cocos2d/l/e;

    iget v1, v1, Lorg/cocos2d/l/e;->b:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    :cond_0
    move v0, v7

    :goto_0
    iget-object v1, p0, Lorg/cocos2d/a/d/e;->d:Lorg/cocos2d/l/m;

    iget v1, v1, Lorg/cocos2d/l/m;->a:I

    add-int/lit8 v1, v1, 0x1

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lorg/cocos2d/a/d/e;->c:Lorg/cocos2d/l/e;

    iput-object v0, p0, Lorg/cocos2d/a/d/e;->g:Lorg/cocos2d/l/e;

    :cond_1
    return-void

    :cond_2
    move v1, v7

    :goto_1
    iget-object v2, p0, Lorg/cocos2d/a/d/e;->d:Lorg/cocos2d/l/m;

    iget v2, v2, Lorg/cocos2d/l/m;->b:I

    add-int/lit8 v2, v2, 0x1

    if-lt v1, v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v0, v1}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/cocos2d/a/d/e;->a(Lorg/cocos2d/l/m;)Lorg/cocos2d/l/c;

    move-result-object v2

    iget-object v3, p0, Lorg/cocos2d/a/d/e;->c:Lorg/cocos2d/l/e;

    iget v4, v2, Lorg/cocos2d/l/c;->a:F

    iget v5, v2, Lorg/cocos2d/l/c;->b:F

    invoke-static {v4, v5}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/cocos2d/l/e;->c(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v3

    invoke-static {v3}, Lorg/cocos2d/l/e;->c(Lorg/cocos2d/l/e;)F

    move-result v4

    iget v5, p0, Lorg/cocos2d/a/d/e;->e:F

    cmpg-float v5, v4, v5

    if-gez v5, :cond_5

    iget v5, p0, Lorg/cocos2d/a/d/e;->e:F

    sub-float v4, v5, v4

    iget v5, p0, Lorg/cocos2d/a/d/e;->e:F

    div-float/2addr v4, v5

    cmpl-float v5, v4, v6

    if-nez v5, :cond_4

    const v4, 0x3a83126f

    :cond_4
    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    double-to-float v4, v4

    iget v5, p0, Lorg/cocos2d/a/d/e;->f:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    double-to-float v4, v4

    iget v5, p0, Lorg/cocos2d/a/d/e;->e:F

    mul-float/2addr v4, v5

    invoke-static {v3}, Lorg/cocos2d/l/e;->c(Lorg/cocos2d/l/e;)F

    move-result v5

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5

    invoke-static {v3}, Lorg/cocos2d/l/e;->d(Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v3

    invoke-static {v3, v4}, Lorg/cocos2d/l/e;->a(Lorg/cocos2d/l/e;F)Lorg/cocos2d/l/e;

    move-result-object v3

    iget v4, v2, Lorg/cocos2d/l/c;->c:F

    invoke-static {v3}, Lorg/cocos2d/l/e;->c(Lorg/cocos2d/l/e;)F

    move-result v3

    iget v5, p0, Lorg/cocos2d/a/d/e;->f:F

    mul-float/2addr v3, v5

    add-float/2addr v3, v4

    iput v3, v2, Lorg/cocos2d/l/c;->c:F

    :cond_5
    invoke-static {v0, v1}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lorg/cocos2d/a/d/e;->a(Lorg/cocos2d/l/m;Lorg/cocos2d/l/c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public final synthetic j()Lorg/cocos2d/a/d/c;
    .locals 5

    new-instance v0, Lorg/cocos2d/a/d/e;

    iget-object v1, p0, Lorg/cocos2d/a/d/e;->c:Lorg/cocos2d/l/e;

    iget v2, p0, Lorg/cocos2d/a/d/e;->e:F

    iget-object v3, p0, Lorg/cocos2d/a/d/e;->d:Lorg/cocos2d/l/m;

    iget v4, p0, Lorg/cocos2d/a/d/e;->b:F

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/cocos2d/a/d/e;-><init>(Lorg/cocos2d/l/e;FLorg/cocos2d/l/m;F)V

    return-object v0
.end method
