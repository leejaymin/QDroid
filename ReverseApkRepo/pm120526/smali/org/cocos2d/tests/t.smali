.class Lorg/cocos2d/tests/t;
.super Lorg/cocos2d/tests/m;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/cocos2d/tests/m;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "OrbitCamera action"

    return-object v0
.end method

.method public final a_()V
    .locals 10

    const/high16 v3, 0x4334

    const/high16 v0, 0x4000

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v1, 0x0

    invoke-super {p0}, Lorg/cocos2d/tests/m;->a_()V

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lorg/cocos2d/tests/t;->b(I)V

    move v2, v1

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Lorg/cocos2d/a/b/b;->a(FFFFFF)Lorg/cocos2d/a/b/b;

    move-result-object v2

    new-array v4, v9, [Lorg/cocos2d/a/a/b;

    invoke-virtual {v2}, Lorg/cocos2d/a/b/b;->j()Lorg/cocos2d/a/f/q;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v2, v4}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v6

    const/high16 v4, -0x3dcc

    move v2, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Lorg/cocos2d/a/b/b;->a(FFFFFF)Lorg/cocos2d/a/b/b;

    move-result-object v2

    new-array v4, v9, [Lorg/cocos2d/a/a/b;

    invoke-virtual {v2}, Lorg/cocos2d/a/b/b;->j()Lorg/cocos2d/a/f/q;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v2, v4}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v7

    const/high16 v4, 0x42b4

    move v2, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Lorg/cocos2d/a/b/b;->a(FFFFFF)Lorg/cocos2d/a/b/b;

    move-result-object v0

    new-array v1, v9, [Lorg/cocos2d/a/a/b;

    invoke-virtual {v0}, Lorg/cocos2d/a/b/b;->j()Lorg/cocos2d/a/f/q;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/tests/t;->c:Lorg/cocos2d/g/o;

    invoke-static {v6}, Lorg/cocos2d/a/a/d;->a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/a/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    iget-object v1, p0, Lorg/cocos2d/tests/t;->b:Lorg/cocos2d/g/o;

    invoke-static {v7}, Lorg/cocos2d/a/a/d;->a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/a/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    iget-object v1, p0, Lorg/cocos2d/tests/t;->a:Lorg/cocos2d/g/o;

    invoke-static {v0}, Lorg/cocos2d/a/a/d;->a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/a/d;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    const/high16 v0, 0x4040

    const/high16 v1, 0x42c8

    const/high16 v2, -0x3d38

    invoke-static {v1, v2}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/cocos2d/a/f/l;->a(FLorg/cocos2d/l/e;)Lorg/cocos2d/a/f/l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/a/f/l;->m()Lorg/cocos2d/a/f/l;

    move-result-object v1

    new-array v2, v9, [Lorg/cocos2d/a/a/b;

    aput-object v1, v2, v8

    invoke-static {v0, v2}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v0

    invoke-static {v0}, Lorg/cocos2d/a/a/d;->a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/a/d;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/tests/t;->c:Lorg/cocos2d/g/o;

    invoke-virtual {v1, v0}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    iget-object v1, p0, Lorg/cocos2d/tests/t;->b:Lorg/cocos2d/g/o;

    invoke-virtual {v0}, Lorg/cocos2d/a/a/d;->c()Lorg/cocos2d/a/a/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    iget-object v1, p0, Lorg/cocos2d/tests/t;->a:Lorg/cocos2d/g/o;

    invoke-virtual {v0}, Lorg/cocos2d/a/a/d;->c()Lorg/cocos2d/a/a/a;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    return-void
.end method
