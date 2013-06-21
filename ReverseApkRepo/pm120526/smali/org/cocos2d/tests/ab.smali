.class Lorg/cocos2d/tests/ab;
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

    const-string v0, "RepeatForever / Repeat + Rotate"

    return-object v0
.end method

.method public final a_()V
    .locals 5

    const/high16 v4, 0x3f00

    invoke-super {p0}, Lorg/cocos2d/tests/m;->a_()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/cocos2d/tests/ab;->b(I)V

    const/high16 v0, -0x3e60

    invoke-static {v4, v0}, Lorg/cocos2d/a/f/s;->a(FF)Lorg/cocos2d/a/f/s;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/cocos2d/a/a/b;

    const/4 v2, 0x0

    const/high16 v3, 0x41a0

    invoke-static {v4, v3}, Lorg/cocos2d/a/f/s;->a(FF)Lorg/cocos2d/a/f/s;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lorg/cocos2d/a/f/p;->a(Lorg/cocos2d/a/a/b;I)Lorg/cocos2d/a/f/p;

    move-result-object v1

    invoke-virtual {v0}, Lorg/cocos2d/a/f/v;->j()Lorg/cocos2d/a/f/v;

    move-result-object v0

    invoke-static {v0}, Lorg/cocos2d/a/a/d;->a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/a/d;

    move-result-object v0

    iget-object v2, p0, Lorg/cocos2d/tests/ab;->b:Lorg/cocos2d/g/o;

    invoke-virtual {v2, v1}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    iget-object v1, p0, Lorg/cocos2d/tests/ab;->c:Lorg/cocos2d/g/o;

    invoke-virtual {v1, v0}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "You should see smooth movements (no jerks). issue #390"

    return-object v0
.end method
