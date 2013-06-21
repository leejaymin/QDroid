.class public Lorg/cocos2d/a/d/i;
.super Lorg/cocos2d/a/d/c;


# instance fields
.field c:Lorg/cocos2d/l/e;

.field e:F

.field f:I

.field g:F

.field h:F


# direct methods
.method private constructor <init>(Lorg/cocos2d/l/e;FIFLorg/cocos2d/l/m;F)V
    .locals 1

    invoke-direct {p0, p5, p6}, Lorg/cocos2d/a/d/c;-><init>(Lorg/cocos2d/l/m;F)V

    iput-object p1, p0, Lorg/cocos2d/a/d/i;->c:Lorg/cocos2d/l/e;

    iput p2, p0, Lorg/cocos2d/a/d/i;->e:F

    iput p3, p0, Lorg/cocos2d/a/d/i;->f:I

    iput p4, p0, Lorg/cocos2d/a/d/i;->g:F

    const/high16 v0, 0x3f80

    iput v0, p0, Lorg/cocos2d/a/d/i;->h:F

    return-void
.end method


# virtual methods
.method public final b(F)V
    .locals 14

    const/4 v13, 0x0

    const-wide/high16 v11, 0x4000

    move v0, v13

    :goto_0
    iget-object v1, p0, Lorg/cocos2d/a/d/i;->d:Lorg/cocos2d/l/m;

    iget v1, v1, Lorg/cocos2d/l/m;->a:I

    add-int/lit8 v1, v1, 0x1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    move v1, v13

    :goto_1
    iget-object v2, p0, Lorg/cocos2d/a/d/i;->d:Lorg/cocos2d/l/m;

    iget v2, v2, Lorg/cocos2d/l/m;->b:I

    add-int/lit8 v2, v2, 0x1

    if-lt v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/cocos2d/a/d/i;->a(Lorg/cocos2d/l/m;)Lorg/cocos2d/l/c;

    move-result-object v2

    iget-object v3, p0, Lorg/cocos2d/a/d/i;->c:Lorg/cocos2d/l/e;

    iget v4, v2, Lorg/cocos2d/l/c;->a:F

    iget v5, v2, Lorg/cocos2d/l/c;->b:F

    invoke-static {v4, v5}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/cocos2d/l/e;->c(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v3

    invoke-static {v3}, Lorg/cocos2d/l/e;->c(Lorg/cocos2d/l/e;)F

    move-result v3

    iget v4, p0, Lorg/cocos2d/a/d/i;->e:F

    cmpg-float v4, v3, v4

    if-gez v4, :cond_2

    iget v4, p0, Lorg/cocos2d/a/d/i;->e:F

    sub-float v3, v4, v3

    iget v4, p0, Lorg/cocos2d/a/d/i;->e:F

    div-float v4, v3, v4

    float-to-double v4, v4

    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    iget v5, v2, Lorg/cocos2d/l/c;->c:F

    float-to-double v5, v5

    float-to-double v7, p1

    const-wide v9, 0x400921fb54442d18L

    mul-double/2addr v7, v9

    iget v9, p0, Lorg/cocos2d/a/d/i;->f:I

    int-to-double v9, v9

    mul-double/2addr v7, v9

    mul-double/2addr v7, v11

    const v9, 0x3dcccccd

    mul-float/2addr v3, v9

    float-to-double v9, v3

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    iget v3, p0, Lorg/cocos2d/a/d/i;->g:F

    float-to-double v9, v3

    mul-double/2addr v7, v9

    iget v3, p0, Lorg/cocos2d/a/d/i;->h:F

    float-to-double v9, v3

    mul-double/2addr v7, v9

    float-to-double v3, v4

    mul-double/2addr v3, v7

    add-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, v2, Lorg/cocos2d/l/c;->c:F

    :cond_2
    invoke-static {v0, v1}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lorg/cocos2d/a/d/i;->a(Lorg/cocos2d/l/m;Lorg/cocos2d/l/c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public final synthetic j()Lorg/cocos2d/a/d/c;
    .locals 7

    new-instance v0, Lorg/cocos2d/a/d/i;

    iget-object v1, p0, Lorg/cocos2d/a/d/i;->c:Lorg/cocos2d/l/e;

    iget v2, p0, Lorg/cocos2d/a/d/i;->e:F

    iget v3, p0, Lorg/cocos2d/a/d/i;->f:I

    iget v4, p0, Lorg/cocos2d/a/d/i;->g:F

    iget-object v5, p0, Lorg/cocos2d/a/d/i;->d:Lorg/cocos2d/l/m;

    iget v6, p0, Lorg/cocos2d/a/d/i;->b:F

    invoke-direct/range {v0 .. v6}, Lorg/cocos2d/a/d/i;-><init>(Lorg/cocos2d/l/e;FIFLorg/cocos2d/l/m;F)V

    return-object v0
.end method
