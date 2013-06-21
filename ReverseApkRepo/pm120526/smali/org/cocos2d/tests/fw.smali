.class Lorg/cocos2d/tests/fw;
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

    const-string v0, "Reverse a Sequence"

    return-object v0
.end method

.method public final a_()V
    .locals 6

    const/4 v5, 0x1

    const/high16 v4, 0x3f80

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-super {p0}, Lorg/cocos2d/tests/fo;->a_()V

    iget-object v0, p0, Lorg/cocos2d/tests/fw;->b:Lorg/cocos2d/g/o;

    invoke-virtual {v0, v3}, Lorg/cocos2d/g/o;->c(Z)V

    const/high16 v0, 0x437a

    invoke-static {v0, v2}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-static {v4, v0}, Lorg/cocos2d/a/f/l;->a(FLorg/cocos2d/l/e;)Lorg/cocos2d/a/f/l;

    move-result-object v0

    const/high16 v1, 0x4248

    invoke-static {v2, v1}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-static {v4, v1}, Lorg/cocos2d/a/f/l;->a(FLorg/cocos2d/l/e;)Lorg/cocos2d/a/f/l;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/cocos2d/a/a/b;

    aput-object v1, v2, v3

    invoke-virtual {v0}, Lorg/cocos2d/a/f/i;->k()Lorg/cocos2d/a/f/i;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v0

    new-array v1, v5, [Lorg/cocos2d/a/a/b;

    invoke-virtual {v0}, Lorg/cocos2d/a/f/i;->k()Lorg/cocos2d/a/f/i;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/tests/fw;->a:Lorg/cocos2d/g/o;

    invoke-virtual {v1, v0}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    return-void
.end method
