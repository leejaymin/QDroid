.class Lorg/cocos2d/tests/fx;
.super Lorg/cocos2d/tests/fo;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/cocos2d/tests/fo;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "Reverse Sequence 2"

    return-object v0
.end method

.method public final a_()V
    .locals 10

    const/high16 v9, 0x4248

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    invoke-super {p0}, Lorg/cocos2d/tests/fo;->a_()V

    const/high16 v0, 0x437a

    invoke-static {v0, v5}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-static {v6, v0}, Lorg/cocos2d/a/f/l;->a(FLorg/cocos2d/l/e;)Lorg/cocos2d/a/f/l;

    move-result-object v0

    invoke-static {v5, v9}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-static {v6, v1}, Lorg/cocos2d/a/f/l;->a(FLorg/cocos2d/l/e;)Lorg/cocos2d/a/f/l;

    move-result-object v1

    invoke-static {}, Lorg/cocos2d/a/e/h;->j()Lorg/cocos2d/a/e/h;

    move-result-object v2

    invoke-static {}, Lorg/cocos2d/a/e/h;->j()Lorg/cocos2d/a/e/h;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Lorg/cocos2d/a/a/b;

    aput-object v2, v4, v7

    aput-object v1, v4, v8

    const/4 v1, 0x2

    aput-object v3, v4, v1

    const/4 v1, 0x3

    invoke-virtual {v0}, Lorg/cocos2d/a/f/i;->k()Lorg/cocos2d/a/f/i;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0, v4}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v0

    new-array v1, v8, [Lorg/cocos2d/a/a/b;

    invoke-virtual {v0}, Lorg/cocos2d/a/f/i;->k()Lorg/cocos2d/a/f/i;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lorg/cocos2d/a/f/p;->a(Lorg/cocos2d/a/a/b;I)Lorg/cocos2d/a/f/p;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/tests/fx;->a:Lorg/cocos2d/g/o;

    invoke-virtual {v1, v0}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    const/high16 v0, 0x42c8

    invoke-static {v0, v5}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-static {v6, v0}, Lorg/cocos2d/a/f/l;->a(FLorg/cocos2d/l/e;)Lorg/cocos2d/a/f/l;

    move-result-object v0

    invoke-static {v9, v5}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-static {v6, v1}, Lorg/cocos2d/a/f/l;->a(FLorg/cocos2d/l/e;)Lorg/cocos2d/a/f/l;

    move-result-object v1

    new-instance v2, Lorg/cocos2d/a/e/d;

    invoke-direct {v2}, Lorg/cocos2d/a/e/d;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/cocos2d/a/a/b;

    aput-object v2, v3, v7

    aput-object v1, v3, v8

    invoke-static {v0, v3}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/a/f/i;->k()Lorg/cocos2d/a/f/i;

    move-result-object v1

    iget-object v2, p0, Lorg/cocos2d/tests/fx;->b:Lorg/cocos2d/g/o;

    new-array v3, v8, [Lorg/cocos2d/a/a/b;

    aput-object v1, v3, v7

    invoke-static {v0, v3}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    return-void
.end method
