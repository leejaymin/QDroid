.class public Lorg/cocos2d/a/d/n;
.super Lorg/cocos2d/a/d/c;


# instance fields
.field c:I

.field e:F

.field f:F


# direct methods
.method private constructor <init>(IFLorg/cocos2d/l/m;F)V
    .locals 1

    invoke-direct {p0, p3, p4}, Lorg/cocos2d/a/d/c;-><init>(Lorg/cocos2d/l/m;F)V

    iput p1, p0, Lorg/cocos2d/a/d/n;->c:I

    iput p2, p0, Lorg/cocos2d/a/d/n;->e:F

    const/high16 v0, 0x3f80

    iput v0, p0, Lorg/cocos2d/a/d/n;->f:F

    return-void
.end method

.method public static b(Lorg/cocos2d/l/m;)Lorg/cocos2d/a/d/n;
    .locals 4

    new-instance v0, Lorg/cocos2d/a/d/n;

    const/16 v1, 0x12

    const/high16 v2, 0x4170

    const/high16 v3, 0x4120

    invoke-direct {v0, v1, v2, p0, v3}, Lorg/cocos2d/a/d/n;-><init>(IFLorg/cocos2d/l/m;F)V

    return-object v0
.end method


# virtual methods
.method public final b(F)V
    .locals 9

    const/4 v8, 0x0

    move v0, v8

    :goto_0
    iget-object v1, p0, Lorg/cocos2d/a/d/n;->d:Lorg/cocos2d/l/m;

    iget v1, v1, Lorg/cocos2d/l/m;->a:I

    add-int/lit8 v1, v1, 0x1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    move v1, v8

    :goto_1
    iget-object v2, p0, Lorg/cocos2d/a/d/n;->d:Lorg/cocos2d/l/m;

    iget v2, v2, Lorg/cocos2d/l/m;->b:I

    add-int/lit8 v2, v2, 0x1

    if-lt v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/cocos2d/a/d/n;->a(Lorg/cocos2d/l/m;)Lorg/cocos2d/l/c;

    move-result-object v2

    iget v3, v2, Lorg/cocos2d/l/c;->c:F

    const-wide v4, 0x400921fb54442d18L

    float-to-double v6, p1

    mul-double/2addr v4, v6

    iget v6, p0, Lorg/cocos2d/a/d/n;->c:I

    int-to-double v6, v6

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4000

    mul-double/2addr v4, v6

    iget v6, v2, Lorg/cocos2d/l/c;->b:F

    iget v7, v2, Lorg/cocos2d/l/c;->a:F

    add-float/2addr v6, v7

    const v7, 0x3c23d70a

    mul-float/2addr v6, v7

    float-to-double v6, v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    iget v6, p0, Lorg/cocos2d/a/d/n;->e:F

    float-to-double v6, v6

    mul-double/2addr v4, v6

    iget v6, p0, Lorg/cocos2d/a/d/n;->f:F

    float-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v2, Lorg/cocos2d/l/c;->c:F

    invoke-static {v0, v1}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lorg/cocos2d/a/d/n;->a(Lorg/cocos2d/l/m;Lorg/cocos2d/l/c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public final synthetic j()Lorg/cocos2d/a/d/c;
    .locals 5

    new-instance v0, Lorg/cocos2d/a/d/n;

    iget v1, p0, Lorg/cocos2d/a/d/n;->c:I

    iget v2, p0, Lorg/cocos2d/a/d/n;->e:F

    iget-object v3, p0, Lorg/cocos2d/a/d/n;->d:Lorg/cocos2d/l/m;

    iget v4, p0, Lorg/cocos2d/a/d/n;->b:F

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/cocos2d/a/d/n;-><init>(IFLorg/cocos2d/l/m;F)V

    return-object v0
.end method
