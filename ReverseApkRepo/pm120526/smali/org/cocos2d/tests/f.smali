.class Lorg/cocos2d/tests/f;
.super Lorg/cocos2d/tests/a;


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v5, 0x1

    const/high16 v4, 0x4348

    invoke-direct {p0}, Lorg/cocos2d/tests/a;-><init>()V

    const/high16 v0, 0x4000

    const/4 v1, 0x0

    invoke-static {v4, v1}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/cocos2d/a/f/l;->a(FLorg/cocos2d/l/e;)Lorg/cocos2d/a/f/l;

    move-result-object v0

    const-string v1, "stopAction"

    invoke-static {p0, v1}, Lorg/cocos2d/a/e/a;->a(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/a/e/a;

    move-result-object v1

    new-array v2, v5, [Lorg/cocos2d/a/a/b;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/cocos2d/a/f/v;->a(I)V

    const-string v1, "grossini.png"

    invoke-static {v1}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v1

    invoke-static {v4, v4}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    invoke-virtual {p0, v1, v5, v5}, Lorg/cocos2d/tests/f;->a(Lorg/cocos2d/g/i;II)Lorg/cocos2d/g/i;

    invoke-virtual {v1, v0}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "Remove Test"

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "Should not crash. Testing issue #841"

    return-object v0
.end method
