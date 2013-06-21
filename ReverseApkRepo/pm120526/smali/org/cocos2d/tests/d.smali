.class Lorg/cocos2d/tests/d;
.super Lorg/cocos2d/tests/a;


# direct methods
.method public constructor <init>()V
    .locals 5

    const/high16 v1, 0x4348

    invoke-direct {p0}, Lorg/cocos2d/tests/a;-><init>()V

    const-string v0, "grossini.png"

    invoke-static {v0}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/tests/d;->a(Lorg/cocos2d/g/i;)Lorg/cocos2d/g/i;

    invoke-static {v1, v1}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    const/high16 v1, 0x3f80

    const/high16 v2, 0x4316

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/cocos2d/a/f/l;->a(FLorg/cocos2d/l/e;)Lorg/cocos2d/a/f/l;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/cocos2d/a/a/b;

    const/4 v3, 0x0

    const-string v4, "bugMe"

    invoke-static {p0, v4}, Lorg/cocos2d/a/e/b;->b(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/a/e/b;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "Logic test"

    return-object v0
.end method
