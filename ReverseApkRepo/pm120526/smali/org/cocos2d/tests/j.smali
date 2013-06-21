.class Lorg/cocos2d/tests/j;
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

    const-string v0, "Callbacks: CallFunc and friends"

    return-object v0
.end method

.method public final a_()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x4000

    invoke-super {p0}, Lorg/cocos2d/tests/m;->a_()V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/cocos2d/tests/j;->b(I)V

    const/high16 v0, 0x4348

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-static {v4, v0}, Lorg/cocos2d/a/f/l;->a(FLorg/cocos2d/l/e;)Lorg/cocos2d/a/f/l;

    move-result-object v0

    new-array v1, v6, [Lorg/cocos2d/a/a/b;

    const-string v2, "callback1"

    invoke-static {p0, v2}, Lorg/cocos2d/a/e/a;->a(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/a/e/a;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v0

    invoke-static {v4, v4}, Lorg/cocos2d/a/f/t;->a(FF)Lorg/cocos2d/a/f/t;

    move-result-object v1

    new-array v2, v7, [Lorg/cocos2d/a/a/b;

    invoke-static {v4}, Lorg/cocos2d/a/f/g;->c(F)Lorg/cocos2d/a/f/g;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "callback2"

    invoke-static {p0, v3}, Lorg/cocos2d/a/e/b;->b(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/a/e/b;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v1

    const/high16 v2, 0x4040

    const/high16 v3, 0x43b4

    invoke-static {v2, v3}, Lorg/cocos2d/a/f/r;->a(FF)Lorg/cocos2d/a/f/r;

    move-result-object v2

    new-array v3, v7, [Lorg/cocos2d/a/a/b;

    invoke-static {v4}, Lorg/cocos2d/a/f/g;->c(F)Lorg/cocos2d/a/f/g;

    move-result-object v4

    aput-object v4, v3, v5

    const-string v4, "callback3"

    const/high16 v5, 0x3f80

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lorg/cocos2d/a/e/c;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/a/e/c;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v2

    iget-object v3, p0, Lorg/cocos2d/tests/j;->a:Lorg/cocos2d/g/o;

    invoke-virtual {v3, v0}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    iget-object v0, p0, Lorg/cocos2d/tests/j;->b:Lorg/cocos2d/g/o;

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    iget-object v0, p0, Lorg/cocos2d/tests/j;->c:Lorg/cocos2d/g/o;

    invoke-virtual {v0, v2}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    return-void
.end method
