.class Lorg/cocos2d/tests/u;
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

    const-string v0, "PropertyAction"

    return-object v0
.end method

.method public final a_()V
    .locals 7

    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-super {p0}, Lorg/cocos2d/tests/m;->a_()V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/cocos2d/tests/u;->b(I)V

    const-string v0, "setRotation"

    const/high16 v1, -0x3c79

    invoke-static {v0, v6, v1}, Lorg/cocos2d/a/f/o;->a(Ljava/lang/String;FF)Lorg/cocos2d/a/f/o;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/a/f/o;->j()Lorg/cocos2d/a/f/o;

    move-result-object v1

    new-array v2, v4, [Lorg/cocos2d/a/a/b;

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v0

    const-string v1, "setScale"

    const/high16 v2, 0x3f80

    const/high16 v3, 0x4040

    invoke-static {v1, v2, v3}, Lorg/cocos2d/a/f/o;->a(Ljava/lang/String;FF)Lorg/cocos2d/a/f/o;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/a/f/o;->j()Lorg/cocos2d/a/f/o;

    move-result-object v2

    new-array v3, v4, [Lorg/cocos2d/a/a/b;

    aput-object v2, v3, v5

    invoke-static {v1, v3}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v1

    const-string v2, "setOpacity"

    const/high16 v3, 0x437f

    invoke-static {v2, v3, v6}, Lorg/cocos2d/a/f/o;->a(Ljava/lang/String;FF)Lorg/cocos2d/a/f/o;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cocos2d/a/f/o;->j()Lorg/cocos2d/a/f/o;

    move-result-object v3

    new-array v4, v4, [Lorg/cocos2d/a/a/b;

    aput-object v3, v4, v5

    invoke-static {v2, v4}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v2

    iget-object v3, p0, Lorg/cocos2d/tests/u;->a:Lorg/cocos2d/g/o;

    invoke-virtual {v3, v0}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    iget-object v0, p0, Lorg/cocos2d/tests/u;->b:Lorg/cocos2d/g/o;

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    iget-object v0, p0, Lorg/cocos2d/tests/u;->c:Lorg/cocos2d/g/o;

    invoke-virtual {v0, v2}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "Simulates Rotation, Scale and Opacity using a generic action"

    return-object v0
.end method
