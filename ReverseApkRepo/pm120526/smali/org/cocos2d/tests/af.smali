.class Lorg/cocos2d/tests/af;
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

    const-string v0, "Sequence of InstantActions"

    return-object v0
.end method

.method public final a_()V
    .locals 6

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/high16 v1, 0x4348

    const/high16 v4, 0x3f80

    invoke-super {p0}, Lorg/cocos2d/tests/m;->a_()V

    invoke-virtual {p0, v5}, Lorg/cocos2d/tests/af;->a(I)V

    iget-object v0, p0, Lorg/cocos2d/tests/af;->a:Lorg/cocos2d/g/o;

    invoke-virtual {v0, v3}, Lorg/cocos2d/g/o;->c(Z)V

    invoke-static {v1, v1}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-static {v0}, Lorg/cocos2d/a/e/f;->a(Lorg/cocos2d/l/e;)Lorg/cocos2d/a/e/f;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Lorg/cocos2d/a/a/b;

    invoke-static {}, Lorg/cocos2d/a/e/g;->j()Lorg/cocos2d/a/e/g;

    move-result-object v2

    aput-object v2, v1, v3

    const/high16 v2, 0x42c8

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-static {v4, v2}, Lorg/cocos2d/a/f/l;->a(FLorg/cocos2d/l/e;)Lorg/cocos2d/a/f/l;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string v3, "callback1"

    invoke-static {p0, v3}, Lorg/cocos2d/a/e/a;->a(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/a/e/a;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "callback2"

    invoke-static {p0, v3}, Lorg/cocos2d/a/e/b;->b(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/a/e/b;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "callback3"

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lorg/cocos2d/a/e/c;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/a/e/c;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/tests/af;->a:Lorg/cocos2d/g/o;

    invoke-virtual {v1, v0}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    return-void
.end method
