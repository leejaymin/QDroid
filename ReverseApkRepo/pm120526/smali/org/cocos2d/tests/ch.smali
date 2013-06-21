.class Lorg/cocos2d/tests/ch;
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

    const-string v0, "Test Stop-Copy-Restart"

    return-object v0
.end method

.method public final a_()V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0}, Lorg/cocos2d/tests/cj;->a_()V

    const/16 v0, 0x20

    const/16 v1, 0x18

    invoke-static {v0, v1}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v0

    invoke-static {v0}, Lorg/cocos2d/a/d/f;->b(Lorg/cocos2d/l/m;)Lorg/cocos2d/a/d/f;

    move-result-object v0

    const/high16 v1, 0x4000

    invoke-static {v1}, Lorg/cocos2d/a/f/e;->c(F)Lorg/cocos2d/a/f/e;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Lorg/cocos2d/a/a/b;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {}, Lorg/cocos2d/a/d/k;->j()Lorg/cocos2d/a/d/k;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x2

    invoke-virtual {v1}, Lorg/cocos2d/a/f/i;->l()Lorg/cocos2d/a/f/i;

    move-result-object v1

    aput-object v1, v2, v3

    const/4 v1, 0x3

    invoke-virtual {v0}, Lorg/cocos2d/a/f/i;->l()Lorg/cocos2d/a/f/i;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v0

    invoke-virtual {p0, v4}, Lorg/cocos2d/tests/ch;->e(I)Lorg/cocos2d/g/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/cocos2d/g/i;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    return-void
.end method
