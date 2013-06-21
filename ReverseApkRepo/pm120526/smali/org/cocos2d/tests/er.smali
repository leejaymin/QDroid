.class final Lorg/cocos2d/tests/er;
.super Lorg/cocos2d/e/b;


# direct methods
.method public constructor <init>()V
    .locals 11

    const/high16 v5, 0x3fc0

    const/4 v10, 0x5

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x4000

    invoke-direct {p0}, Lorg/cocos2d/e/b;-><init>()V

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v0

    iget v1, v0, Lorg/cocos2d/l/g;->a:F

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    const-string v2, "grossini.png"

    invoke-static {v2}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v2

    const-string v3, "grossinis_sister1.png"

    invoke-static {v3}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v3

    const-string v4, "grossinis_sister2.png"

    invoke-static {v4}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v4

    invoke-virtual {v2, v5}, Lorg/cocos2d/g/o;->e(F)V

    invoke-virtual {v3, v5}, Lorg/cocos2d/g/o;->e(F)V

    invoke-virtual {v4, v5}, Lorg/cocos2d/g/o;->e(F)V

    div-float v5, v1, v7

    div-float v6, v0, v7

    invoke-static {v5, v6}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    const/high16 v5, 0x4220

    div-float v6, v0, v7

    invoke-static {v5, v6}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    const/high16 v5, 0x4220

    sub-float/2addr v1, v5

    div-float/2addr v0, v7

    invoke-static {v1, v0}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    const/high16 v0, 0x4180

    const/high16 v1, -0x3a9f

    invoke-static {v0, v1}, Lorg/cocos2d/a/f/r;->a(FF)Lorg/cocos2d/a/f/r;

    move-result-object v0

    invoke-virtual {p0, v2}, Lorg/cocos2d/tests/er;->a(Lorg/cocos2d/g/i;)Lorg/cocos2d/g/i;

    invoke-virtual {p0, v3}, Lorg/cocos2d/tests/er;->a(Lorg/cocos2d/g/i;)Lorg/cocos2d/g/i;

    invoke-virtual {p0, v4}, Lorg/cocos2d/tests/er;->a(Lorg/cocos2d/g/i;)Lorg/cocos2d/g/i;

    invoke-virtual {v2, v0}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    const/high16 v0, 0x4080

    const/high16 v1, -0x3c38

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    const/high16 v2, 0x42c8

    const/4 v5, 0x4

    invoke-static {v0, v1, v2, v5}, Lorg/cocos2d/a/f/j;->a(FLorg/cocos2d/l/e;FI)Lorg/cocos2d/a/f/j;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/a/f/i;->k()Lorg/cocos2d/a/f/i;

    move-result-object v1

    const/high16 v2, 0x4080

    const/high16 v5, 0x4434

    invoke-static {v2, v5}, Lorg/cocos2d/a/f/r;->a(FF)Lorg/cocos2d/a/f/r;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cocos2d/a/f/i;->k()Lorg/cocos2d/a/f/i;

    move-result-object v5

    new-array v6, v9, [Lorg/cocos2d/a/a/b;

    aput-object v0, v6, v8

    invoke-static {v1, v6}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v6

    invoke-static {v6, v10}, Lorg/cocos2d/a/f/p;->a(Lorg/cocos2d/a/a/b;I)Lorg/cocos2d/a/f/p;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    invoke-virtual {v0}, Lorg/cocos2d/a/f/i;->l()Lorg/cocos2d/a/f/i;

    move-result-object v0

    new-array v6, v9, [Lorg/cocos2d/a/a/b;

    invoke-virtual {v1}, Lorg/cocos2d/a/f/i;->l()Lorg/cocos2d/a/f/i;

    move-result-object v1

    aput-object v1, v6, v8

    invoke-static {v0, v6}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v0

    invoke-static {v0, v10}, Lorg/cocos2d/a/f/p;->a(Lorg/cocos2d/a/a/b;I)Lorg/cocos2d/a/f/p;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    new-array v0, v9, [Lorg/cocos2d/a/a/b;

    aput-object v5, v0, v8

    invoke-static {v2, v0}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v0

    invoke-static {v0, v10}, Lorg/cocos2d/a/f/p;->a(Lorg/cocos2d/a/a/b;I)Lorg/cocos2d/a/f/p;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    invoke-virtual {v5}, Lorg/cocos2d/a/f/i;->l()Lorg/cocos2d/a/f/i;

    move-result-object v0

    new-array v1, v9, [Lorg/cocos2d/a/a/b;

    invoke-virtual {v2}, Lorg/cocos2d/a/f/i;->l()Lorg/cocos2d/a/f/i;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v0

    invoke-static {v0, v10}, Lorg/cocos2d/a/f/p;->a(Lorg/cocos2d/a/a/b;I)Lorg/cocos2d/a/f/p;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    return-void
.end method
