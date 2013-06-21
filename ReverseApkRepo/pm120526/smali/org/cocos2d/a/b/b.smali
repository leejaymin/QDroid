.class public final Lorg/cocos2d/a/b/b;
.super Lorg/cocos2d/a/b/a;


# instance fields
.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:F

.field private u:F

.field private v:F

.field private w:F


# direct methods
.method private constructor <init>(FFFFFFF)V
    .locals 3

    const/high16 v2, 0x4334

    const v1, 0x40490fdb

    invoke-direct {p0, p1}, Lorg/cocos2d/a/b/a;-><init>(F)V

    iput p2, p0, Lorg/cocos2d/a/b/b;->n:F

    iput p3, p0, Lorg/cocos2d/a/b/b;->o:F

    iput p4, p0, Lorg/cocos2d/a/b/b;->p:F

    iput p5, p0, Lorg/cocos2d/a/b/b;->q:F

    iput p6, p0, Lorg/cocos2d/a/b/b;->r:F

    iput p7, p0, Lorg/cocos2d/a/b/b;->s:F

    div-float v0, p5, v2

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/cocos2d/a/b/b;->u:F

    div-float v0, p7, v2

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/cocos2d/a/b/b;->w:F

    return-void
.end method

.method public static a(FFFFFF)Lorg/cocos2d/a/b/b;
    .locals 8

    new-instance v0, Lorg/cocos2d/a/b/b;

    const/high16 v2, 0x3f80

    move v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/cocos2d/a/b/b;-><init>(FFFFFFF)V

    return-object v0
.end method


# virtual methods
.method public final a(Lorg/cocos2d/g/i;)V
    .locals 13

    invoke-super {p0, p1}, Lorg/cocos2d/a/b/a;->a(Lorg/cocos2d/g/i;)V

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x1

    new-array v8, v8, [F

    iget-object v9, p0, Lorg/cocos2d/a/b/b;->a:Lorg/cocos2d/g/i;

    invoke-virtual {v9}, Lorg/cocos2d/g/i;->t()Lorg/cocos2d/opengl/e;

    move-result-object v9

    invoke-virtual {v9, v3, v4, v5}, Lorg/cocos2d/opengl/e;->a([F[F[F)V

    iget-object v9, p0, Lorg/cocos2d/a/b/b;->a:Lorg/cocos2d/g/i;

    invoke-virtual {v9}, Lorg/cocos2d/g/i;->t()Lorg/cocos2d/opengl/e;

    move-result-object v9

    invoke-virtual {v9, v6, v7, v8}, Lorg/cocos2d/opengl/e;->b([F[F[F)V

    const/4 v9, 0x0

    aget v3, v3, v9

    const/4 v9, 0x0

    aget v6, v6, v9

    sub-float/2addr v3, v6

    const/4 v6, 0x0

    aget v4, v4, v6

    const/4 v6, 0x0

    aget v6, v7, v6

    sub-float/2addr v4, v6

    const/4 v6, 0x0

    aget v5, v5, v6

    const/4 v6, 0x0

    aget v6, v8, v6

    sub-float/2addr v5, v6

    float-to-double v6, v3

    const-wide/high16 v8, 0x4000

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    float-to-double v8, v4

    const-wide/high16 v10, 0x4000

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v8, v8

    float-to-double v8, v8

    add-double/2addr v6, v8

    float-to-double v8, v5

    const-wide/high16 v10, 0x4000

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    float-to-double v7, v3

    const-wide/high16 v9, 0x4000

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    float-to-double v9, v4

    const-wide/high16 v11, 0x4000

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    double-to-float v9, v9

    float-to-double v9, v9

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v7, v7

    const/4 v8, 0x0

    cmpl-float v8, v7, v8

    if-nez v8, :cond_0

    const v7, 0x322bcc77

    :cond_0
    const/4 v8, 0x0

    cmpl-float v8, v6, v8

    if-nez v8, :cond_1

    const v6, 0x322bcc77

    :cond_1
    const/4 v8, 0x0

    div-float/2addr v5, v6

    float-to-double v9, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->acos(D)D

    move-result-wide v9

    double-to-float v5, v9

    aput v5, v1, v8

    const/4 v5, 0x0

    cmpg-float v3, v3, v5

    if-gez v3, :cond_5

    const/4 v3, 0x0

    const v5, 0x40490fdb

    div-float/2addr v4, v7

    float-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->asin(D)D

    move-result-wide v7

    double-to-float v4, v7

    sub-float v4, v5, v4

    aput v4, v2, v3

    :goto_0
    const/4 v3, 0x0

    const v4, 0x358637bd

    div-float v4, v6, v4

    aput v4, v0, v3

    iget v3, p0, Lorg/cocos2d/a/b/b;->n:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    aget v0, v0, v3

    iput v0, p0, Lorg/cocos2d/a/b/b;->n:F

    :cond_2
    iget v0, p0, Lorg/cocos2d/a/b/b;->p:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    aget v0, v1, v0

    const v1, 0x40490fdb

    div-float/2addr v0, v1

    const/high16 v1, 0x4334

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/cocos2d/a/b/b;->p:F

    :cond_3
    iget v0, p0, Lorg/cocos2d/a/b/b;->r:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    aget v0, v2, v0

    const v1, 0x40490fdb

    div-float/2addr v0, v1

    const/high16 v1, 0x4334

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/cocos2d/a/b/b;->r:F

    :cond_4
    iget v0, p0, Lorg/cocos2d/a/b/b;->p:F

    const/high16 v1, 0x4334

    div-float/2addr v0, v1

    const v1, 0x40490fdb

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/cocos2d/a/b/b;->t:F

    iget v0, p0, Lorg/cocos2d/a/b/b;->r:F

    const/high16 v1, 0x4334

    div-float/2addr v0, v1

    const v1, 0x40490fdb

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/cocos2d/a/b/b;->v:F

    return-void

    :cond_5
    const/4 v3, 0x0

    div-float/2addr v4, v7

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v2, v3

    goto :goto_0
.end method

.method public final b(F)V
    .locals 7

    iget v0, p0, Lorg/cocos2d/a/b/b;->n:F

    iget v1, p0, Lorg/cocos2d/a/b/b;->o:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    const v1, 0x358637bd

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/cocos2d/a/b/b;->t:F

    iget v2, p0, Lorg/cocos2d/a/b/b;->u:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iget v2, p0, Lorg/cocos2d/a/b/b;->v:F

    iget v3, p0, Lorg/cocos2d/a/b/b;->w:F

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v3, v4

    mul-float/2addr v3, v0

    iget v4, p0, Lorg/cocos2d/a/b/b;->c:F

    add-float/2addr v3, v4

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v2, v5

    mul-float/2addr v2, v4

    mul-float/2addr v2, v0

    iget v4, p0, Lorg/cocos2d/a/b/b;->d:F

    add-float/2addr v2, v4

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v1, v4

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/cocos2d/a/b/b;->e:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lorg/cocos2d/a/b/b;->a:Lorg/cocos2d/g/i;

    invoke-virtual {v1}, Lorg/cocos2d/g/i;->t()Lorg/cocos2d/opengl/e;

    move-result-object v1

    invoke-virtual {v1, v3, v2, v0}, Lorg/cocos2d/opengl/e;->a(FFF)V

    return-void
.end method

.method public final synthetic l()Lorg/cocos2d/a/f/i;
    .locals 8

    new-instance v0, Lorg/cocos2d/a/b/b;

    iget v1, p0, Lorg/cocos2d/a/b/b;->b:F

    iget v2, p0, Lorg/cocos2d/a/b/b;->n:F

    iget v3, p0, Lorg/cocos2d/a/b/b;->o:F

    iget v4, p0, Lorg/cocos2d/a/b/b;->p:F

    iget v5, p0, Lorg/cocos2d/a/b/b;->q:F

    iget v6, p0, Lorg/cocos2d/a/b/b;->r:F

    iget v7, p0, Lorg/cocos2d/a/b/b;->s:F

    invoke-direct/range {v0 .. v7}, Lorg/cocos2d/a/b/b;-><init>(FFFFFFF)V

    return-object v0
.end method
