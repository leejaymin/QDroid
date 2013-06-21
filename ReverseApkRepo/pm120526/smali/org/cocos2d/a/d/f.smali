.class public Lorg/cocos2d/a/d/f;
.super Lorg/cocos2d/a/d/c;


# instance fields
.field c:I

.field e:F

.field f:F


# direct methods
.method private constructor <init>(IFLorg/cocos2d/l/m;F)V
    .locals 1

    invoke-direct {p0, p3, p4}, Lorg/cocos2d/a/d/c;-><init>(Lorg/cocos2d/l/m;F)V

    iput p1, p0, Lorg/cocos2d/a/d/f;->c:I

    iput p2, p0, Lorg/cocos2d/a/d/f;->e:F

    const/high16 v0, 0x3f80

    iput v0, p0, Lorg/cocos2d/a/d/f;->f:F

    return-void
.end method

.method public static b(Lorg/cocos2d/l/m;)Lorg/cocos2d/a/d/f;
    .locals 4

    new-instance v0, Lorg/cocos2d/a/d/f;

    const/4 v1, 0x1

    const/high16 v2, 0x41a0

    const/high16 v3, 0x4000

    invoke-direct {v0, v1, v2, p0, v3}, Lorg/cocos2d/a/d/f;-><init>(IFLorg/cocos2d/l/m;F)V

    return-object v0
.end method


# virtual methods
.method public final b(F)V
    .locals 9

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lorg/cocos2d/a/d/f;->d:Lorg/cocos2d/l/m;

    iget v1, v1, Lorg/cocos2d/l/m;->a:I

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    :goto_1
    iget-object v2, p0, Lorg/cocos2d/a/d/f;->d:Lorg/cocos2d/l/m;

    iget v2, v2, Lorg/cocos2d/l/m;->b:I

    if-lt v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/cocos2d/a/d/f;->a(Lorg/cocos2d/l/m;)Lorg/cocos2d/l/c;

    move-result-object v2

    iget v3, v2, Lorg/cocos2d/l/c;->a:F

    float-to-double v3, v3

    float-to-double v5, p1

    const-wide v7, 0x400921fb54442d18L

    mul-double/2addr v5, v7

    iget v7, p0, Lorg/cocos2d/a/d/f;->c:I

    int-to-double v7, v7

    mul-double/2addr v5, v7

    const-wide/high16 v7, 0x4000

    mul-double/2addr v5, v7

    iget v7, v2, Lorg/cocos2d/l/c;->a:F

    const v8, 0x3c23d70a

    mul-float/2addr v7, v8

    float-to-double v7, v7

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    iget v7, p0, Lorg/cocos2d/a/d/f;->e:F

    float-to-double v7, v7

    mul-double/2addr v5, v7

    iget v7, p0, Lorg/cocos2d/a/d/f;->f:F

    float-to-double v7, v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, v2, Lorg/cocos2d/l/c;->a:F

    iget v3, v2, Lorg/cocos2d/l/c;->b:F

    float-to-double v3, v3

    float-to-double v5, p1

    const-wide v7, 0x400921fb54442d18L

    mul-double/2addr v5, v7

    iget v7, p0, Lorg/cocos2d/a/d/f;->c:I

    int-to-double v7, v7

    mul-double/2addr v5, v7

    const-wide/high16 v7, 0x4000

    mul-double/2addr v5, v7

    iget v7, v2, Lorg/cocos2d/l/c;->b:F

    const v8, 0x3c23d70a

    mul-float/2addr v7, v8

    float-to-double v7, v7

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    iget v7, p0, Lorg/cocos2d/a/d/f;->e:F

    float-to-double v7, v7

    mul-double/2addr v5, v7

    iget v7, p0, Lorg/cocos2d/a/d/f;->f:F

    float-to-double v7, v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, v2, Lorg/cocos2d/l/c;->b:F

    invoke-static {v0, v1}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lorg/cocos2d/a/d/f;->a(Lorg/cocos2d/l/m;Lorg/cocos2d/l/c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public final synthetic j()Lorg/cocos2d/a/d/c;
    .locals 5

    new-instance v0, Lorg/cocos2d/a/d/f;

    iget v1, p0, Lorg/cocos2d/a/d/f;->c:I

    iget v2, p0, Lorg/cocos2d/a/d/f;->e:F

    iget-object v3, p0, Lorg/cocos2d/a/d/f;->d:Lorg/cocos2d/l/m;

    iget v4, p0, Lorg/cocos2d/a/d/f;->b:F

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/cocos2d/a/d/f;-><init>(IFLorg/cocos2d/l/m;F)V

    return-object v0
.end method
