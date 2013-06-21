.class Lorg/cocos2d/tests/ag;
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

    const-string v0, "Spawn: Jump + Rotate"

    return-object v0
.end method

.method public final a_()V
    .locals 5

    const/4 v3, 0x1

    const/high16 v4, 0x4000

    invoke-super {p0}, Lorg/cocos2d/tests/m;->a_()V

    invoke-virtual {p0, v3}, Lorg/cocos2d/tests/ag;->a(I)V

    const/high16 v0, 0x4396

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    const/high16 v1, 0x4248

    const/4 v2, 0x4

    invoke-static {v4, v0, v1, v2}, Lorg/cocos2d/a/f/j;->a(FLorg/cocos2d/l/e;FI)Lorg/cocos2d/a/f/j;

    move-result-object v0

    new-array v1, v3, [Lorg/cocos2d/a/a/b;

    const/4 v2, 0x0

    const/high16 v3, 0x4434

    invoke-static {v4, v3}, Lorg/cocos2d/a/f/r;->a(FF)Lorg/cocos2d/a/f/r;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/cocos2d/a/f/w;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/w;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/tests/ag;->a:Lorg/cocos2d/g/o;

    invoke-virtual {v1, v0}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    return-void
.end method
