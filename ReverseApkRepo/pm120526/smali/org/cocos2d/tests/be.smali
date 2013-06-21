.class Lorg/cocos2d/tests/be;
.super Lorg/cocos2d/tests/bm;


# direct methods
.method public constructor <init>()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x4000

    const/4 v5, 0x0

    invoke-direct {p0}, Lorg/cocos2d/tests/bm;-><init>()V

    const-string v0, "background3.png"

    invoke-static {v0}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v0

    const/16 v1, -0xa

    invoke-virtual {p0, v0, v1}, Lorg/cocos2d/tests/be;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    invoke-static {v5, v5}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->d(Lorg/cocos2d/l/e;)V

    invoke-virtual {v0}, Lorg/cocos2d/g/o;->n()Lorg/cocos2d/l/g;

    move-result-object v1

    const-string v2, "btn-play-normal.png"

    const-string v3, "btn-play-selected.png"

    invoke-static {v2, v3}, Lorg/cocos2d/f/e;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/cocos2d/f/e;

    move-result-object v2

    new-array v3, v8, [Lorg/cocos2d/f/c;

    aput-object v2, v3, v7

    invoke-static {v3}, Lorg/cocos2d/f/a;->a([Lorg/cocos2d/f/c;)Lorg/cocos2d/f/a;

    move-result-object v3

    invoke-virtual {v3}, Lorg/cocos2d/f/a;->a()V

    iget v4, v1, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v4, v6

    iget v1, v1, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v1, v6

    invoke-static {v4, v1}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/cocos2d/f/a;->e(Lorg/cocos2d/l/e;)V

    invoke-virtual {v0, v3}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/g/i;)Lorg/cocos2d/g/i;

    const/high16 v1, 0x40a0

    const/high16 v3, 0x43b4

    invoke-static {v1, v3}, Lorg/cocos2d/a/f/r;->a(FF)Lorg/cocos2d/a/f/r;

    move-result-object v1

    invoke-static {v1}, Lorg/cocos2d/a/a/d;->a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/a/d;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/cocos2d/f/c;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    const/high16 v1, 0x4040

    const/high16 v2, 0x4348

    invoke-static {v2, v5}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/cocos2d/a/f/l;->a(FLorg/cocos2d/l/e;)Lorg/cocos2d/a/f/l;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/a/f/i;->k()Lorg/cocos2d/a/f/i;

    move-result-object v2

    new-array v3, v8, [Lorg/cocos2d/a/a/b;

    aput-object v2, v3, v7

    invoke-static {v1, v3}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v1

    invoke-static {v1}, Lorg/cocos2d/a/a/d;->a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/a/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "nodeToParent transform"

    return-object v0
.end method
