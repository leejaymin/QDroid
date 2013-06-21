.class public Lorg/cocos2d/a/d/a;
.super Lorg/cocos2d/a/d/c;


# static fields
.field static final synthetic c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/cocos2d/a/d/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/cocos2d/a/d/a;->c:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/cocos2d/l/m;F)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2}, Lorg/cocos2d/a/d/c;-><init>(Lorg/cocos2d/l/m;F)V

    sget-boolean v0, Lorg/cocos2d/a/d/a;->c:Z

    if-nez v0, :cond_1

    iget v0, p1, Lorg/cocos2d/l/m;->a:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lorg/cocos2d/l/m;->b:I

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Grid size must be (1,1)"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public b(F)V
    .locals 11

    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const v0, 0x40490fdb

    mul-float/2addr v0, p1

    float-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x4000

    div-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v0, v2

    invoke-static {v6, v6}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/cocos2d/a/d/a;->a(Lorg/cocos2d/l/m;)Lorg/cocos2d/l/c;

    move-result-object v2

    invoke-static {v5, v5}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/cocos2d/a/d/a;->a(Lorg/cocos2d/l/m;)Lorg/cocos2d/l/c;

    move-result-object v3

    iget v2, v2, Lorg/cocos2d/l/c;->a:F

    iget v3, v3, Lorg/cocos2d/l/c;->a:F

    cmpl-float v4, v2, v3

    if-lez v4, :cond_0

    invoke-static {v5, v5}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v3

    invoke-static {v5, v6}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v4

    invoke-static {v6, v5}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v5

    invoke-static {v6, v6}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v6

    move-object v9, v6

    move v6, v2

    move-object v2, v9

    move-object v10, v3

    move-object v3, v5

    move-object v5, v10

    :goto_0
    new-instance v7, Lorg/cocos2d/l/c;

    invoke-direct {v7, v8, v8, v8}, Lorg/cocos2d/l/c;-><init>(FFF)V

    mul-float/2addr v0, v6

    sub-float v0, v6, v0

    iput v0, v7, Lorg/cocos2d/l/c;->a:F

    mul-float v0, v6, v1

    const/high16 v1, 0x4080

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, v7, Lorg/cocos2d/l/c;->c:F

    invoke-virtual {p0, v5}, Lorg/cocos2d/a/d/a;->a(Lorg/cocos2d/l/m;)Lorg/cocos2d/l/c;

    move-result-object v0

    iget v1, v7, Lorg/cocos2d/l/c;->a:F

    iput v1, v0, Lorg/cocos2d/l/c;->a:F

    iget v1, v0, Lorg/cocos2d/l/c;->c:F

    iget v6, v7, Lorg/cocos2d/l/c;->c:F

    add-float/2addr v1, v6

    iput v1, v0, Lorg/cocos2d/l/c;->c:F

    invoke-virtual {p0, v5, v0}, Lorg/cocos2d/a/d/a;->a(Lorg/cocos2d/l/m;Lorg/cocos2d/l/c;)V

    invoke-virtual {p0, v4}, Lorg/cocos2d/a/d/a;->a(Lorg/cocos2d/l/m;)Lorg/cocos2d/l/c;

    move-result-object v0

    iget v1, v7, Lorg/cocos2d/l/c;->a:F

    iput v1, v0, Lorg/cocos2d/l/c;->a:F

    iget v1, v0, Lorg/cocos2d/l/c;->c:F

    iget v5, v7, Lorg/cocos2d/l/c;->c:F

    add-float/2addr v1, v5

    iput v1, v0, Lorg/cocos2d/l/c;->c:F

    invoke-virtual {p0, v4, v0}, Lorg/cocos2d/a/d/a;->a(Lorg/cocos2d/l/m;Lorg/cocos2d/l/c;)V

    invoke-virtual {p0, v3}, Lorg/cocos2d/a/d/a;->a(Lorg/cocos2d/l/m;)Lorg/cocos2d/l/c;

    move-result-object v0

    iget v1, v0, Lorg/cocos2d/l/c;->a:F

    iget v4, v7, Lorg/cocos2d/l/c;->a:F

    sub-float/2addr v1, v4

    iput v1, v0, Lorg/cocos2d/l/c;->a:F

    iget v1, v0, Lorg/cocos2d/l/c;->c:F

    iget v4, v7, Lorg/cocos2d/l/c;->c:F

    sub-float/2addr v1, v4

    iput v1, v0, Lorg/cocos2d/l/c;->c:F

    invoke-virtual {p0, v3, v0}, Lorg/cocos2d/a/d/a;->a(Lorg/cocos2d/l/m;Lorg/cocos2d/l/c;)V

    invoke-virtual {p0, v2}, Lorg/cocos2d/a/d/a;->a(Lorg/cocos2d/l/m;)Lorg/cocos2d/l/c;

    move-result-object v0

    iget v1, v0, Lorg/cocos2d/l/c;->a:F

    iget v3, v7, Lorg/cocos2d/l/c;->a:F

    sub-float/2addr v1, v3

    iput v1, v0, Lorg/cocos2d/l/c;->a:F

    iget v1, v0, Lorg/cocos2d/l/c;->c:F

    iget v3, v7, Lorg/cocos2d/l/c;->c:F

    sub-float/2addr v1, v3

    iput v1, v0, Lorg/cocos2d/l/c;->c:F

    invoke-virtual {p0, v2, v0}, Lorg/cocos2d/a/d/a;->a(Lorg/cocos2d/l/m;Lorg/cocos2d/l/c;)V

    return-void

    :cond_0
    invoke-static {v5, v5}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v2

    invoke-static {v5, v6}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v4

    invoke-static {v6, v5}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v5

    invoke-static {v6, v6}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v6

    move-object v9, v4

    move-object v4, v6

    move v6, v3

    move-object v3, v2

    move-object v2, v9

    goto :goto_0
.end method

.method public final synthetic j()Lorg/cocos2d/a/d/c;
    .locals 3

    new-instance v0, Lorg/cocos2d/a/d/a;

    invoke-virtual {p0}, Lorg/cocos2d/a/d/a;->o()Lorg/cocos2d/l/m;

    move-result-object v1

    invoke-virtual {p0}, Lorg/cocos2d/a/d/a;->g()F

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/a/d/a;-><init>(Lorg/cocos2d/l/m;F)V

    return-object v0
.end method
