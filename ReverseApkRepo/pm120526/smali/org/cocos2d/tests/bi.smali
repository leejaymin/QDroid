.class Lorg/cocos2d/tests/bi;
.super Lorg/cocos2d/tests/bm;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/cocos2d/tests/bm;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "anchorPoint and children"

    return-object v0
.end method

.method public final a_()V
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v8, 0x3e80

    const/high16 v7, 0x4000

    invoke-super {p0}, Lorg/cocos2d/tests/bm;->a_()V

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v0

    const-string v1, "grossinis_sister1.png"

    invoke-static {v1}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v1

    const-string v2, "grossinis_sister2.png"

    invoke-static {v2}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v2

    const-string v3, "grossinis_sister1.png"

    invoke-static {v3}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v3

    const-string v4, "grossinis_sister2.png"

    invoke-static {v4}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v4

    const/high16 v5, 0x42c8

    iget v6, v0, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    const/high16 v5, 0x43be

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v0, v7

    invoke-static {v5, v0}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    invoke-virtual {p0, v1}, Lorg/cocos2d/tests/bi;->a(Lorg/cocos2d/g/i;)Lorg/cocos2d/g/i;

    invoke-virtual {p0, v2}, Lorg/cocos2d/tests/bi;->a(Lorg/cocos2d/g/i;)Lorg/cocos2d/g/i;

    invoke-virtual {v3, v8}, Lorg/cocos2d/g/o;->e(F)V

    invoke-virtual {v4, v8}, Lorg/cocos2d/g/o;->e(F)V

    invoke-virtual {v1, v3}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/g/i;)Lorg/cocos2d/g/i;

    invoke-virtual {v2, v4}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/g/i;)Lorg/cocos2d/g/i;

    const/high16 v0, 0x43b4

    invoke-static {v7, v0}, Lorg/cocos2d/a/f/r;->a(FF)Lorg/cocos2d/a/f/r;

    move-result-object v0

    invoke-static {v7, v7}, Lorg/cocos2d/a/f/t;->a(FF)Lorg/cocos2d/a/f/t;

    move-result-object v3

    new-array v4, v11, [Lorg/cocos2d/a/a/b;

    aput-object v3, v4, v9

    invoke-virtual {v3}, Lorg/cocos2d/a/f/i;->k()Lorg/cocos2d/a/f/i;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v0, v4}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v4

    invoke-static {v4}, Lorg/cocos2d/a/a/d;->a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/a/d;

    move-result-object v4

    invoke-virtual {v0}, Lorg/cocos2d/a/f/i;->l()Lorg/cocos2d/a/f/i;

    move-result-object v0

    new-array v5, v11, [Lorg/cocos2d/a/a/b;

    invoke-virtual {v3}, Lorg/cocos2d/a/f/i;->l()Lorg/cocos2d/a/f/i;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v3}, Lorg/cocos2d/a/f/i;->k()Lorg/cocos2d/a/f/i;

    move-result-object v3

    aput-object v3, v5, v10

    invoke-static {v0, v5}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v0

    invoke-static {v0}, Lorg/cocos2d/a/a/d;->a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/a/d;

    move-result-object v0

    invoke-static {}, Lorg/cocos2d/l/e;->b()Lorg/cocos2d/l/e;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/cocos2d/g/o;->d(Lorg/cocos2d/l/e;)V

    invoke-virtual {v1, v4}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    invoke-virtual {v2, v0}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    return-void
.end method
