.class Lorg/cocos2d/tests/b;
.super Lorg/cocos2d/tests/a;


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v6, 0x0

    const/high16 v1, 0x4348

    const v5, 0x3fb33333

    const/4 v4, 0x1

    invoke-direct {p0}, Lorg/cocos2d/tests/a;-><init>()V

    const-string v0, "grossini.png"

    invoke-static {v0}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v0

    invoke-static {v1, v1}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    invoke-virtual {p0, v0, v4}, Lorg/cocos2d/tests/b;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    const/high16 v1, 0x3fc0

    const/high16 v2, 0x42b4

    invoke-static {v1, v2}, Lorg/cocos2d/a/f/r;->a(FF)Lorg/cocos2d/a/f/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    invoke-static {v5}, Lorg/cocos2d/a/f/e;->c(F)Lorg/cocos2d/a/f/e;

    move-result-object v1

    new-array v2, v4, [Lorg/cocos2d/a/a/b;

    const v3, 0x3f8ccccd

    invoke-static {v3}, Lorg/cocos2d/a/f/g;->c(F)Lorg/cocos2d/a/f/g;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    invoke-static {v5}, Lorg/cocos2d/a/f/e;->c(F)Lorg/cocos2d/a/f/e;

    move-result-object v0

    new-array v1, v4, [Lorg/cocos2d/a/a/b;

    const-string v2, "removeThis"

    invoke-static {p0, v2}, Lorg/cocos2d/a/e/a;->a(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/a/e/a;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/tests/b;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "Test 1. Should not crash"

    return-object v0
.end method
