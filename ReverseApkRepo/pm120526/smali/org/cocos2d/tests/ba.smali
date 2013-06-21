.class Lorg/cocos2d/tests/ba;
.super Lorg/cocos2d/tests/bm;


# direct methods
.method public constructor <init>()V
    .locals 11

    const/high16 v10, 0x3f80

    const/4 v9, 0x0

    const/high16 v3, 0x43b4

    const/high16 v0, 0x4000

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/cocos2d/tests/bm;-><init>()V

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v6

    const-string v2, "background3.png"

    invoke-static {v2}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v7

    invoke-virtual {p0, v7, v9}, Lorg/cocos2d/tests/ba;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    iget v2, v6, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v2, v0

    iget v4, v6, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v4, v0

    invoke-static {v2, v4}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-virtual {v7, v2}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    const/16 v2, 0x80

    invoke-virtual {v7, v2}, Lorg/cocos2d/g/o;->a(I)V

    const-string v2, "grossini.png"

    invoke-static {v2}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v8

    const/high16 v2, 0x3f00

    invoke-virtual {v8, v2}, Lorg/cocos2d/g/o;->e(F)V

    invoke-virtual {v7, v8, v9}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    iget v2, v6, Lorg/cocos2d/l/g;->a:F

    const/high16 v4, 0x4080

    div-float/2addr v2, v4

    mul-float/2addr v2, v10

    iget v4, v6, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v4, v0

    invoke-static {v2, v4}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-virtual {v8, v2}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    move v2, v1

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Lorg/cocos2d/a/b/b;->a(FFFFFF)Lorg/cocos2d/a/b/b;

    move-result-object v2

    invoke-static {v2}, Lorg/cocos2d/a/a/d;->a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/a/d;

    move-result-object v2

    invoke-virtual {v8, v2}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    const-string v2, "grossini.png"

    invoke-static {v2}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v8

    invoke-virtual {v8, v10}, Lorg/cocos2d/g/o;->e(F)V

    invoke-virtual {v7, v8, v9}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    iget v2, v6, Lorg/cocos2d/l/g;->a:F

    const/high16 v4, 0x4080

    div-float/2addr v2, v4

    mul-float/2addr v2, v0

    iget v4, v6, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v4, v0

    invoke-static {v2, v4}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-virtual {v8, v2}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    const/high16 v4, 0x4234

    move v2, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Lorg/cocos2d/a/b/b;->a(FFFFFF)Lorg/cocos2d/a/b/b;

    move-result-object v2

    invoke-static {v2}, Lorg/cocos2d/a/a/d;->a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/a/d;

    move-result-object v2

    invoke-virtual {v8, v2}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    const-string v2, "grossini.png"

    invoke-static {v2}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v8

    invoke-virtual {v8, v0}, Lorg/cocos2d/g/o;->e(F)V

    invoke-virtual {v7, v8, v9}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    iget v2, v6, Lorg/cocos2d/l/g;->a:F

    const/high16 v4, 0x4080

    div-float/2addr v2, v4

    const/high16 v4, 0x4040

    mul-float/2addr v2, v4

    iget v4, v6, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v4, v0

    invoke-static {v2, v4}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-virtual {v8, v2}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    const/high16 v4, 0x42b4

    const/high16 v5, -0x3dcc

    move v2, v1

    invoke-static/range {v0 .. v5}, Lorg/cocos2d/a/b/b;->a(FFFFFF)Lorg/cocos2d/a/b/b;

    move-result-object v0

    invoke-static {v0}, Lorg/cocos2d/a/a/d;->a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/a/d;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    const/high16 v0, 0x4120

    const/high16 v5, 0x42b4

    move v2, v1

    move v4, v1

    invoke-static/range {v0 .. v5}, Lorg/cocos2d/a/b/b;->a(FFFFFF)Lorg/cocos2d/a/b/b;

    move-result-object v0

    invoke-static {v0}, Lorg/cocos2d/a/a/d;->a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/a/d;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    invoke-virtual {p0, v10}, Lorg/cocos2d/tests/ba;->e(F)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "Camera Orbit test"

    return-object v0
.end method

.method public final a_()V
    .locals 2

    invoke-super {p0}, Lorg/cocos2d/tests/bm;->a_()V

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/c;->a(I)V

    return-void
.end method

.method public final g()V
    .locals 2

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/c;->a(I)V

    invoke-super {p0}, Lorg/cocos2d/tests/bm;->g()V

    return-void
.end method
