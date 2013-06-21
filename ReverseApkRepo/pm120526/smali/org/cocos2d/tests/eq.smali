.class final Lorg/cocos2d/tests/eq;
.super Lorg/cocos2d/e/b;


# direct methods
.method public constructor <init>()V
    .locals 10

    const/high16 v9, 0x3f00

    const/4 v5, 0x0

    const/high16 v8, 0x4080

    const/16 v6, 0xff

    invoke-direct {p0}, Lorg/cocos2d/e/b;-><init>()V

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v0

    iget v1, v0, Lorg/cocos2d/l/g;->a:F

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    new-instance v2, Lorg/cocos2d/l/k;

    invoke-direct {v2, v5, v5, v6, v6}, Lorg/cocos2d/l/k;-><init>(IIII)V

    invoke-static {v2}, Lorg/cocos2d/e/a;->a(Lorg/cocos2d/l/k;)Lorg/cocos2d/e/a;

    move-result-object v2

    new-instance v3, Lorg/cocos2d/l/k;

    invoke-direct {v3, v6, v5, v5, v6}, Lorg/cocos2d/l/k;-><init>(IIII)V

    invoke-static {v3}, Lorg/cocos2d/e/a;->a(Lorg/cocos2d/l/k;)Lorg/cocos2d/e/a;

    move-result-object v3

    new-instance v4, Lorg/cocos2d/l/k;

    invoke-direct {v4, v5, v6, v5, v6}, Lorg/cocos2d/l/k;-><init>(IIII)V

    invoke-static {v4}, Lorg/cocos2d/e/a;->a(Lorg/cocos2d/l/k;)Lorg/cocos2d/e/a;

    move-result-object v4

    new-instance v5, Lorg/cocos2d/l/k;

    invoke-direct {v5, v6, v6, v6, v6}, Lorg/cocos2d/l/k;-><init>(IIII)V

    invoke-static {v5}, Lorg/cocos2d/e/a;->a(Lorg/cocos2d/l/k;)Lorg/cocos2d/e/a;

    move-result-object v5

    invoke-virtual {v2, v9}, Lorg/cocos2d/g/i;->e(F)V

    neg-float v6, v1

    div-float/2addr v6, v8

    neg-float v7, v0

    div-float/2addr v7, v8

    invoke-static {v6, v7}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/cocos2d/g/i;->e(Lorg/cocos2d/l/e;)V

    new-instance v6, Lorg/cocos2d/tests/er;

    invoke-direct {v6}, Lorg/cocos2d/tests/er;-><init>()V

    invoke-virtual {v2, v6}, Lorg/cocos2d/g/i;->a(Lorg/cocos2d/g/i;)Lorg/cocos2d/g/i;

    invoke-virtual {v3, v9}, Lorg/cocos2d/g/i;->e(F)V

    div-float v6, v1, v8

    neg-float v7, v0

    div-float/2addr v7, v8

    invoke-static {v6, v7}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/cocos2d/g/i;->e(Lorg/cocos2d/l/e;)V

    invoke-virtual {v4, v9}, Lorg/cocos2d/g/i;->e(F)V

    neg-float v6, v1

    div-float/2addr v6, v8

    div-float v7, v0, v8

    invoke-static {v6, v7}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/cocos2d/g/i;->e(Lorg/cocos2d/l/e;)V

    invoke-virtual {v5, v9}, Lorg/cocos2d/g/i;->e(F)V

    div-float/2addr v1, v8

    div-float/2addr v0, v8

    invoke-static {v1, v0}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/cocos2d/g/i;->e(Lorg/cocos2d/l/e;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v2, v0}, Lorg/cocos2d/tests/eq;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    invoke-virtual {p0, v5}, Lorg/cocos2d/tests/eq;->a(Lorg/cocos2d/g/i;)Lorg/cocos2d/g/i;

    invoke-virtual {p0, v4}, Lorg/cocos2d/tests/eq;->a(Lorg/cocos2d/g/i;)Lorg/cocos2d/g/i;

    invoke-virtual {p0, v3}, Lorg/cocos2d/tests/eq;->a(Lorg/cocos2d/g/i;)Lorg/cocos2d/g/i;

    const/high16 v0, 0x4100

    const/high16 v1, 0x4434

    invoke-static {v0, v1}, Lorg/cocos2d/a/f/r;->a(FF)Lorg/cocos2d/a/f/r;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/cocos2d/g/i;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    invoke-virtual {v0}, Lorg/cocos2d/a/a/a;->c()Lorg/cocos2d/a/a/a;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/cocos2d/g/i;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    invoke-virtual {v0}, Lorg/cocos2d/a/a/a;->c()Lorg/cocos2d/a/a/a;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/cocos2d/g/i;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    invoke-virtual {v0}, Lorg/cocos2d/a/a/a;->c()Lorg/cocos2d/a/a/a;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/cocos2d/g/i;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    return-void
.end method
