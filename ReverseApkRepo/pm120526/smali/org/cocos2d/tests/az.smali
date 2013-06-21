.class Lorg/cocos2d/tests/az;
.super Lorg/cocos2d/tests/bm;


# direct methods
.method public constructor <init>()V
    .locals 11

    const/high16 v10, 0x42f0

    const/high16 v9, 0x4248

    const/high16 v0, 0x4120

    const/high16 v8, 0x40a0

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/cocos2d/tests/bm;-><init>()V

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v6

    const-string v2, "grossini.png"

    invoke-static {v2}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v7

    const/4 v2, 0x0

    invoke-virtual {p0, v7, v2}, Lorg/cocos2d/tests/az;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    iget v2, v6, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v2, v8

    const/high16 v3, 0x3f80

    mul-float/2addr v2, v3

    iget v3, v6, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v3, v8

    const/high16 v4, 0x3f80

    mul-float/2addr v3, v4

    invoke-static {v2, v3}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-virtual {v7, v2}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    sget-object v2, Lorg/cocos2d/l/j;->e:Lorg/cocos2d/l/j;

    invoke-virtual {v7, v2}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/l/j;)V

    invoke-static {v1, v1, v10, v9}, Lorg/cocos2d/l/f;->a(FFFF)Lorg/cocos2d/l/f;

    move-result-object v2

    invoke-virtual {v7, v2}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/l/f;)V

    const/high16 v3, 0x43b4

    move v2, v1

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Lorg/cocos2d/a/b/b;->a(FFFFFF)Lorg/cocos2d/a/b/b;

    move-result-object v2

    invoke-static {v2}, Lorg/cocos2d/a/a/d;->a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/a/d;

    move-result-object v2

    invoke-virtual {v7, v2}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    const-string v2, "grossinis_sister1.png"

    invoke-static {v2}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v7

    const/4 v2, 0x0

    const/16 v3, 0x28

    invoke-virtual {p0, v7, v2, v3}, Lorg/cocos2d/tests/az;->a(Lorg/cocos2d/g/i;II)Lorg/cocos2d/g/i;

    iget v2, v6, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v2, v8

    const/high16 v3, 0x3f80

    mul-float/2addr v2, v3

    iget v3, v6, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v3, v8

    const/high16 v4, 0x4080

    mul-float/2addr v3, v4

    invoke-static {v2, v3}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-virtual {v7, v2}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    sget-object v2, Lorg/cocos2d/l/j;->c:Lorg/cocos2d/l/j;

    invoke-virtual {v7, v2}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/l/j;)V

    invoke-static {v1, v1, v10, v9}, Lorg/cocos2d/l/f;->a(FFFF)Lorg/cocos2d/l/f;

    move-result-object v2

    invoke-virtual {v7, v2}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/l/f;)V

    const/high16 v3, 0x43b4

    move v2, v1

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Lorg/cocos2d/a/b/b;->a(FFFFFF)Lorg/cocos2d/a/b/b;

    move-result-object v2

    invoke-static {v2}, Lorg/cocos2d/a/a/d;->a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/a/d;

    move-result-object v2

    invoke-virtual {v7, v2}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    const-string v2, "grossinis_sister2.png"

    invoke-static {v2}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v7

    const/4 v2, 0x0

    invoke-virtual {p0, v7, v2}, Lorg/cocos2d/tests/az;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    iget v2, v6, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v2, v8

    const/high16 v3, 0x4080

    mul-float/2addr v2, v3

    iget v3, v6, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v3, v8

    const/high16 v4, 0x3f80

    mul-float/2addr v3, v4

    invoke-static {v2, v3}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-virtual {v7, v2}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    sget-object v2, Lorg/cocos2d/l/j;->b:Lorg/cocos2d/l/j;

    invoke-virtual {v7, v2}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/l/j;)V

    invoke-static {v1, v1, v10, v9}, Lorg/cocos2d/l/f;->a(FFFF)Lorg/cocos2d/l/f;

    move-result-object v2

    invoke-virtual {v7, v2}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/l/f;)V

    const/high16 v3, 0x43b4

    move v2, v1

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Lorg/cocos2d/a/b/b;->a(FFFFFF)Lorg/cocos2d/a/b/b;

    move-result-object v2

    invoke-static {v2}, Lorg/cocos2d/a/a/d;->a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/a/d;

    move-result-object v2

    invoke-virtual {v7, v2}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    const-string v2, "smoke.png"

    invoke-static {v2}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v7

    const/4 v2, 0x0

    const/16 v3, 0x28

    invoke-virtual {p0, v7, v2, v3}, Lorg/cocos2d/tests/az;->a(Lorg/cocos2d/g/i;II)Lorg/cocos2d/g/i;

    iget v2, v6, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v2, v8

    const/high16 v3, 0x4080

    mul-float/2addr v2, v3

    iget v3, v6, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v3, v8

    const/high16 v4, 0x4080

    mul-float/2addr v3, v4

    invoke-static {v2, v3}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-virtual {v7, v2}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    sget-object v2, Lorg/cocos2d/l/j;->d:Lorg/cocos2d/l/j;

    invoke-virtual {v7, v2}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/l/j;)V

    invoke-static {v1, v1, v10, v9}, Lorg/cocos2d/l/f;->a(FFFF)Lorg/cocos2d/l/f;

    move-result-object v2

    invoke-virtual {v7, v2}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/l/f;)V

    const/high16 v3, 0x43b4

    move v2, v1

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Lorg/cocos2d/a/b/b;->a(FFFFFF)Lorg/cocos2d/a/b/b;

    move-result-object v2

    invoke-static {v2}, Lorg/cocos2d/a/a/d;->a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/a/d;

    move-result-object v2

    invoke-virtual {v7, v2}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    const-string v2, "snow.png"

    invoke-static {v2}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v7

    const/4 v2, 0x0

    const/16 v3, 0x28

    invoke-virtual {p0, v7, v2, v3}, Lorg/cocos2d/tests/az;->a(Lorg/cocos2d/g/i;II)Lorg/cocos2d/g/i;

    iget v2, v6, Lorg/cocos2d/l/g;->a:F

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    iget v3, v6, Lorg/cocos2d/l/g;->b:F

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-virtual {v7, v2}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    sget-object v2, Lorg/cocos2d/l/j;->a:Lorg/cocos2d/l/j;

    invoke-virtual {v7, v2}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/l/j;)V

    invoke-static {v1, v1, v10, v9}, Lorg/cocos2d/l/f;->a(FFFF)Lorg/cocos2d/l/f;

    move-result-object v2

    invoke-virtual {v7, v2}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/l/f;)V

    const/high16 v3, 0x43b4

    move v2, v1

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Lorg/cocos2d/a/b/b;->a(FFFFFF)Lorg/cocos2d/a/b/b;

    move-result-object v0

    invoke-static {v0}, Lorg/cocos2d/a/a/d;->a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/a/d;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "Camera Center test"

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "Sprites should rotate at the same speed"

    return-object v0
.end method
