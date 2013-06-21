.class public final Lorg/cocos2d/g/h;
.super Lorg/cocos2d/g/i;

# interfaces
.implements Lorg/cocos2d/a/i;


# instance fields
.field a:Lorg/cocos2d/g/m;

.field b:F

.field c:F

.field d:Lorg/cocos2d/l/e;


# direct methods
.method public constructor <init>(FLjava/lang/String;FLorg/cocos2d/l/k;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/cocos2d/g/i;-><init>()V

    const/high16 v0, 0x4040

    iput v0, p0, Lorg/cocos2d/g/h;->b:F

    iput p3, p0, Lorg/cocos2d/g/h;->c:F

    invoke-static {v1, v1}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/g/h;->d:Lorg/cocos2d/l/e;

    new-instance v0, Lorg/cocos2d/g/m;

    iget v1, p0, Lorg/cocos2d/g/h;->c:F

    invoke-direct {v0, v1, p2, p4, p1}, Lorg/cocos2d/g/m;-><init>(FLjava/lang/String;Lorg/cocos2d/l/k;F)V

    iput-object v0, p0, Lorg/cocos2d/g/h;->a:Lorg/cocos2d/g/m;

    iget-object v0, p0, Lorg/cocos2d/g/h;->a:Lorg/cocos2d/g/m;

    invoke-virtual {p0, v0}, Lorg/cocos2d/g/h;->a(Lorg/cocos2d/g/i;)Lorg/cocos2d/g/i;

    invoke-virtual {p0}, Lorg/cocos2d/g/h;->D()V

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 7

    const/high16 v6, -0x4080

    const-wide/high16 v4, 0x4000

    invoke-virtual {p0}, Lorg/cocos2d/g/h;->E()Lorg/cocos2d/l/e;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/g/h;->a:Lorg/cocos2d/g/m;

    iget v2, v0, Lorg/cocos2d/l/e;->a:F

    mul-float/2addr v2, v6

    iget v3, v0, Lorg/cocos2d/l/e;->b:F

    mul-float/2addr v3, v6

    invoke-static {v2, v3}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/g/m;->e(Lorg/cocos2d/l/e;)V

    iget-object v1, p0, Lorg/cocos2d/g/h;->d:Lorg/cocos2d/l/e;

    iget v1, v1, Lorg/cocos2d/l/e;->a:F

    iget v2, v0, Lorg/cocos2d/l/e;->a:F

    sub-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, p0, Lorg/cocos2d/g/h;->d:Lorg/cocos2d/l/e;

    iget v2, v2, Lorg/cocos2d/l/e;->b:F

    iget v3, v0, Lorg/cocos2d/l/e;->b:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget v2, p0, Lorg/cocos2d/g/h;->b:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/cocos2d/g/h;->a:Lorg/cocos2d/g/m;

    iget v2, p0, Lorg/cocos2d/g/h;->c:F

    invoke-virtual {v1, v0, v2}, Lorg/cocos2d/g/m;->a(Lorg/cocos2d/l/e;F)V

    iput-object v0, p0, Lorg/cocos2d/g/h;->d:Lorg/cocos2d/l/e;

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/g/h;->a:Lorg/cocos2d/g/m;

    iget v1, v0, Lorg/cocos2d/g/m;->g:F

    add-float/2addr v1, p1

    iput v1, v0, Lorg/cocos2d/g/m;->g:F

    iput p1, v0, Lorg/cocos2d/g/m;->i:F

    return-void
.end method
