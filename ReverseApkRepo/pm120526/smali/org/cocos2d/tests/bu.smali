.class Lorg/cocos2d/tests/bu;
.super Lorg/cocos2d/tests/bq;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/cocos2d/tests/bq;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "Bounce In - Out actions"

    return-object v0
.end method

.method public final a_()V
    .locals 13

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-super {p0}, Lorg/cocos2d/tests/bq;->a_()V

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v0

    const/high16 v1, 0x4040

    iget v0, v0, Lorg/cocos2d/l/g;->a:F

    const/high16 v2, 0x4302

    sub-float/2addr v0, v2

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/cocos2d/a/f/l;->a(FLorg/cocos2d/l/e;)Lorg/cocos2d/a/f/l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/a/f/i;->k()Lorg/cocos2d/a/f/i;

    move-result-object v1

    invoke-virtual {v0}, Lorg/cocos2d/a/f/i;->l()Lorg/cocos2d/a/f/i;

    move-result-object v2

    invoke-static {v2}, Lorg/cocos2d/a/c/f;->a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/c/f;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cocos2d/a/f/i;->k()Lorg/cocos2d/a/f/i;

    move-result-object v3

    invoke-virtual {v0}, Lorg/cocos2d/a/f/i;->l()Lorg/cocos2d/a/f/i;

    move-result-object v4

    invoke-static {v4}, Lorg/cocos2d/a/c/h;->a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/c/h;

    move-result-object v4

    invoke-virtual {v4}, Lorg/cocos2d/a/f/i;->k()Lorg/cocos2d/a/f/i;

    move-result-object v5

    const/high16 v6, 0x3e80

    invoke-static {v6}, Lorg/cocos2d/a/f/e;->c(F)Lorg/cocos2d/a/f/e;

    move-result-object v6

    new-array v7, v12, [Lorg/cocos2d/a/a/b;

    invoke-virtual {v6}, Lorg/cocos2d/a/f/i;->l()Lorg/cocos2d/a/f/i;

    move-result-object v8

    aput-object v8, v7, v9

    aput-object v1, v7, v10

    invoke-virtual {v6}, Lorg/cocos2d/a/f/i;->l()Lorg/cocos2d/a/f/i;

    move-result-object v1

    aput-object v1, v7, v11

    invoke-static {v0, v7}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v0

    new-array v1, v12, [Lorg/cocos2d/a/a/b;

    invoke-virtual {v6}, Lorg/cocos2d/a/f/i;->l()Lorg/cocos2d/a/f/i;

    move-result-object v7

    aput-object v7, v1, v9

    aput-object v3, v1, v10

    invoke-virtual {v6}, Lorg/cocos2d/a/f/i;->l()Lorg/cocos2d/a/f/i;

    move-result-object v3

    aput-object v3, v1, v11

    invoke-static {v2, v1}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v1

    new-array v2, v12, [Lorg/cocos2d/a/a/b;

    invoke-virtual {v6}, Lorg/cocos2d/a/f/i;->l()Lorg/cocos2d/a/f/i;

    move-result-object v3

    aput-object v3, v2, v9

    aput-object v5, v2, v10

    invoke-virtual {v6}, Lorg/cocos2d/a/f/i;->l()Lorg/cocos2d/a/f/i;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-static {v4, v2}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v2

    iget-object v3, p0, Lorg/cocos2d/tests/bu;->a:Lorg/cocos2d/g/o;

    invoke-static {v0}, Lorg/cocos2d/a/a/d;->a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/a/d;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    iget-object v0, p0, Lorg/cocos2d/tests/bu;->b:Lorg/cocos2d/g/o;

    invoke-static {v1}, Lorg/cocos2d/a/a/d;->a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/a/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    iget-object v0, p0, Lorg/cocos2d/tests/bu;->c:Lorg/cocos2d/g/o;

    invoke-static {v2}, Lorg/cocos2d/a/a/d;->a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/a/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    return-void
.end method