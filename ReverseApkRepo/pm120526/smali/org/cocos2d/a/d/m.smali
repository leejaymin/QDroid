.class public Lorg/cocos2d/a/d/m;
.super Lorg/cocos2d/a/d/c;


# instance fields
.field c:I

.field e:F

.field f:F

.field g:Z

.field h:Z


# direct methods
.method private constructor <init>(IFZZLorg/cocos2d/l/m;F)V
    .locals 1

    invoke-direct {p0, p5, p6}, Lorg/cocos2d/a/d/c;-><init>(Lorg/cocos2d/l/m;F)V

    iput p1, p0, Lorg/cocos2d/a/d/m;->c:I

    iput p2, p0, Lorg/cocos2d/a/d/m;->e:F

    const/high16 v0, 0x3f80

    iput v0, p0, Lorg/cocos2d/a/d/m;->f:F

    iput-boolean p3, p0, Lorg/cocos2d/a/d/m;->h:Z

    iput-boolean p4, p0, Lorg/cocos2d/a/d/m;->g:Z

    return-void
.end method

.method public static b(Lorg/cocos2d/l/m;)Lorg/cocos2d/a/d/m;
    .locals 7

    new-instance v0, Lorg/cocos2d/a/d/m;

    const/4 v1, 0x5

    const/high16 v2, 0x41a0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/high16 v6, 0x40a0

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lorg/cocos2d/a/d/m;-><init>(IFZZLorg/cocos2d/l/m;F)V

    return-object v0
.end method


# virtual methods
.method public final b(F)V
    .locals 9

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/cocos2d/a/d/m;->d:Lorg/cocos2d/l/m;

    iget v1, v1, Lorg/cocos2d/l/m;->a:I

    add-int/lit8 v1, v1, 0x1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lorg/cocos2d/a/d/m;->d:Lorg/cocos2d/l/m;

    iget v2, v2, Lorg/cocos2d/l/m;->b:I

    add-int/lit8 v2, v2, 0x1

    if-lt v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/cocos2d/a/d/m;->a(Lorg/cocos2d/l/m;)Lorg/cocos2d/l/c;

    move-result-object v2

    iget-boolean v3, p0, Lorg/cocos2d/a/d/m;->g:Z

    if-eqz v3, :cond_2

    iget v3, v2, Lorg/cocos2d/l/c;->a:F

    float-to-double v3, v3

    float-to-double v5, p1

    const-wide v7, 0x400921fb54442d18L

    mul-double/2addr v5, v7

    iget v7, p0, Lorg/cocos2d/a/d/m;->c:I

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

    iget v7, p0, Lorg/cocos2d/a/d/m;->e:F

    float-to-double v7, v7

    mul-double/2addr v5, v7

    iget v7, p0, Lorg/cocos2d/a/d/m;->f:F

    float-to-double v7, v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, v2, Lorg/cocos2d/l/c;->a:F

    :cond_2
    iget-boolean v3, p0, Lorg/cocos2d/a/d/m;->h:Z

    if-eqz v3, :cond_3

    iget v3, v2, Lorg/cocos2d/l/c;->b:F

    float-to-double v3, v3

    float-to-double v5, p1

    const-wide v7, 0x400921fb54442d18L

    mul-double/2addr v5, v7

    iget v7, p0, Lorg/cocos2d/a/d/m;->c:I

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

    iget v7, p0, Lorg/cocos2d/a/d/m;->e:F

    float-to-double v7, v7

    mul-double/2addr v5, v7

    iget v7, p0, Lorg/cocos2d/a/d/m;->f:F

    float-to-double v7, v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, v2, Lorg/cocos2d/l/c;->b:F

    :cond_3
    invoke-static {v0, v1}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lorg/cocos2d/a/d/m;->a(Lorg/cocos2d/l/m;Lorg/cocos2d/l/c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public final synthetic j()Lorg/cocos2d/a/d/c;
    .locals 7

    new-instance v0, Lorg/cocos2d/a/d/m;

    iget v1, p0, Lorg/cocos2d/a/d/m;->c:I

    iget v2, p0, Lorg/cocos2d/a/d/m;->e:F

    iget-boolean v3, p0, Lorg/cocos2d/a/d/m;->h:Z

    iget-boolean v4, p0, Lorg/cocos2d/a/d/m;->g:Z

    iget-object v5, p0, Lorg/cocos2d/a/d/m;->d:Lorg/cocos2d/l/m;

    iget v6, p0, Lorg/cocos2d/a/d/m;->b:F

    invoke-direct/range {v0 .. v6}, Lorg/cocos2d/a/d/m;-><init>(IFZZLorg/cocos2d/l/m;F)V

    return-object v0
.end method
