.class Lorg/cocos2d/tests/bh;
.super Lorg/cocos2d/tests/bm;


# direct methods
.method public constructor <init>()V
    .locals 10

    const/4 v9, 0x0

    const/high16 v8, 0x42a0

    const/4 v7, 0x1

    const/high16 v6, 0x4000

    invoke-direct {p0}, Lorg/cocos2d/tests/bm;-><init>()V

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v0

    invoke-static {}, Lorg/cocos2d/e/b;->d()Lorg/cocos2d/e/b;

    move-result-object v1

    const-string v2, "grossinis_sister1.png"

    invoke-static {v2}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v2

    iget v3, v0, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v3, v6

    invoke-static {v8, v3}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    const/high16 v3, 0x4040

    const/high16 v4, 0x43af

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/cocos2d/a/f/l;->a(FLorg/cocos2d/l/e;)Lorg/cocos2d/a/f/l;

    move-result-object v3

    invoke-virtual {v3}, Lorg/cocos2d/a/f/i;->l()Lorg/cocos2d/a/f/i;

    move-result-object v3

    invoke-static {v3, v6}, Lorg/cocos2d/a/c/q;->a(Lorg/cocos2d/a/f/i;F)Lorg/cocos2d/a/c/q;

    move-result-object v3

    invoke-virtual {v3}, Lorg/cocos2d/a/f/i;->k()Lorg/cocos2d/a/f/i;

    move-result-object v4

    new-array v5, v7, [Lorg/cocos2d/a/a/b;

    aput-object v4, v5, v9

    invoke-static {v3, v5}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v3

    invoke-static {v3}, Lorg/cocos2d/a/a/d;->a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/a/d;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    invoke-virtual {v1, v2, v7}, Lorg/cocos2d/e/b;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    invoke-static {}, Lorg/cocos2d/h/b;->a()Lorg/cocos2d/h/b;

    move-result-object v2

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v0, v6

    const/high16 v4, 0x4248

    sub-float/2addr v0, v4

    invoke-static {v8, v0}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/cocos2d/h/b;->e(Lorg/cocos2d/l/e;)V

    invoke-virtual {v3}, Lorg/cocos2d/a/f/i;->l()Lorg/cocos2d/a/f/i;

    move-result-object v0

    invoke-static {v0}, Lorg/cocos2d/a/a/d;->a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/a/d;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/cocos2d/h/b;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    const/4 v0, 0x2

    invoke-virtual {v1, v2, v0}, Lorg/cocos2d/e/b;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    const-string v0, "shouldNotLeak"

    const/high16 v2, 0x40c0

    invoke-virtual {p0, v0, v2}, Lorg/cocos2d/tests/bh;->a(Ljava/lang/String;F)V

    invoke-virtual {p0, v1, v9, v7}, Lorg/cocos2d/tests/bh;->a(Lorg/cocos2d/g/i;II)Lorg/cocos2d/g/i;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "stress test #2: no leaks"

    return-object v0
.end method
