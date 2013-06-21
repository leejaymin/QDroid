.class Lorg/cocos2d/tests/cf;
.super Lorg/cocos2d/tests/cj;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/cocos2d/tests/cj;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "Effects on 2 sprites"

    return-object v0
.end method

.method public final a_()V
    .locals 8

    const/16 v7, 0xf

    const/16 v5, 0xa

    const/4 v6, 0x1

    invoke-super {p0}, Lorg/cocos2d/tests/cj;->a_()V

    invoke-virtual {p0, v6}, Lorg/cocos2d/tests/cf;->e(I)Lorg/cocos2d/g/i;

    move-result-object v0

    invoke-virtual {v0, v6}, Lorg/cocos2d/g/i;->e(I)Lorg/cocos2d/g/i;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lorg/cocos2d/g/i;->e(I)Lorg/cocos2d/g/i;

    move-result-object v2

    invoke-static {v7, v5}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v3

    invoke-static {v3}, Lorg/cocos2d/a/d/m;->b(Lorg/cocos2d/l/m;)Lorg/cocos2d/a/d/m;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v7, v5}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/cocos2d/a/d/j;->a(ILorg/cocos2d/l/m;)Lorg/cocos2d/a/d/j;

    move-result-object v4

    invoke-static {v3}, Lorg/cocos2d/a/a/d;->a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/a/d;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/cocos2d/g/i;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    invoke-static {v4}, Lorg/cocos2d/a/a/d;->a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/a/d;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/cocos2d/g/i;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    const/high16 v1, 0x4040

    const/high16 v2, 0x4348

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/cocos2d/a/f/l;->a(FLorg/cocos2d/l/e;)Lorg/cocos2d/a/f/l;

    move-result-object v1

    new-array v2, v6, [Lorg/cocos2d/a/a/b;

    const/4 v3, 0x0

    invoke-virtual {v1}, Lorg/cocos2d/a/f/l;->m()Lorg/cocos2d/a/f/l;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v1

    invoke-static {v1}, Lorg/cocos2d/a/a/d;->a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/a/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/i;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    return-void
.end method
