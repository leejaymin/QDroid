.class Lorg/cocos2d/tests/ci;
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

    const-string v0, "Testing Opacity"

    return-object v0
.end method

.method public final a_()V
    .locals 8

    const/4 v3, 0x5

    const/16 v7, 0xff

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0}, Lorg/cocos2d/tests/cj;->a_()V

    const/high16 v0, 0x4000

    invoke-static {v0}, Lorg/cocos2d/a/f/e;->c(F)Lorg/cocos2d/a/f/e;

    move-result-object v0

    new-array v1, v6, [Lorg/cocos2d/a/a/b;

    const/16 v2, 0x10

    invoke-static {v3, v3}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/cocos2d/a/d/j;->a(ILorg/cocos2d/l/m;)Lorg/cocos2d/a/d/j;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v0

    invoke-virtual {p0, v6}, Lorg/cocos2d/tests/ci;->e(I)Lorg/cocos2d/g/i;

    move-result-object v1

    invoke-virtual {p0, v1, v6}, Lorg/cocos2d/tests/ci;->a(Lorg/cocos2d/g/i;Z)V

    invoke-static {v7, v5, v5, v7}, Lorg/cocos2d/l/k;->a(IIII)Lorg/cocos2d/l/k;

    move-result-object v1

    invoke-static {v1}, Lorg/cocos2d/e/a;->a(Lorg/cocos2d/l/k;)Lorg/cocos2d/e/a;

    move-result-object v1

    const/16 v2, -0xa

    invoke-virtual {p0, v1, v2}, Lorg/cocos2d/tests/ci;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    const-string v2, "grossini.png"

    invoke-static {v2}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v2

    const/high16 v3, 0x4248

    const/high16 v4, 0x42a0

    invoke-static {v3, v4}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Lorg/cocos2d/e/a;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    invoke-static {v5, v7, v5, v7}, Lorg/cocos2d/l/k;->a(IIII)Lorg/cocos2d/l/k;

    move-result-object v1

    invoke-static {v1}, Lorg/cocos2d/e/a;->a(Lorg/cocos2d/l/k;)Lorg/cocos2d/e/a;

    move-result-object v1

    const-string v2, "Fog.png"

    invoke-static {v2}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v2

    new-instance v3, Lorg/cocos2d/l/i;

    const/16 v4, 0x302

    const/16 v5, 0x303

    invoke-direct {v3, v4, v5}, Lorg/cocos2d/l/i;-><init>(II)V

    invoke-virtual {v2, v3}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/l/i;)V

    invoke-virtual {v1, v2, v6}, Lorg/cocos2d/e/a;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    invoke-virtual {p0, v1, v6}, Lorg/cocos2d/tests/ci;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    invoke-static {v0}, Lorg/cocos2d/a/a/d;->a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/a/d;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/cocos2d/e/a;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "Effect image should be 100% opaque. Testing issue #631"

    return-object v0
.end method
