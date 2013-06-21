.class Lorg/cocos2d/tests/fu;
.super Lorg/cocos2d/tests/fo;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/cocos2d/tests/fo;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "Repeat / RepeatForever actions"

    return-object v0
.end method

.method public final a_()V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/high16 v2, 0x4270

    invoke-super {p0}, Lorg/cocos2d/tests/fo;->a_()V

    const/high16 v0, 0x4316

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-static {v1, v0}, Lorg/cocos2d/a/f/l;->a(FLorg/cocos2d/l/e;)Lorg/cocos2d/a/f/l;

    move-result-object v1

    iput v2, v0, Lorg/cocos2d/l/e;->a:F

    iput v2, v0, Lorg/cocos2d/l/e;->b:F

    invoke-static {v0}, Lorg/cocos2d/a/e/f;->a(Lorg/cocos2d/l/e;)Lorg/cocos2d/a/e/f;

    move-result-object v0

    new-array v2, v3, [Lorg/cocos2d/a/a/b;

    aput-object v1, v2, v4

    invoke-static {v0, v2}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v0

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lorg/cocos2d/a/f/p;->a(Lorg/cocos2d/a/a/b;I)Lorg/cocos2d/a/f/p;

    move-result-object v0

    invoke-virtual {v1}, Lorg/cocos2d/a/f/i;->l()Lorg/cocos2d/a/f/i;

    move-result-object v2

    new-array v3, v3, [Lorg/cocos2d/a/a/b;

    invoke-virtual {v1}, Lorg/cocos2d/a/f/i;->k()Lorg/cocos2d/a/f/i;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v1

    invoke-static {v1}, Lorg/cocos2d/a/a/d;->a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/a/d;

    move-result-object v1

    iget-object v2, p0, Lorg/cocos2d/tests/fu;->a:Lorg/cocos2d/g/o;

    invoke-virtual {v2, v0}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    iget-object v0, p0, Lorg/cocos2d/tests/fu;->b:Lorg/cocos2d/g/o;

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    return-void
.end method
