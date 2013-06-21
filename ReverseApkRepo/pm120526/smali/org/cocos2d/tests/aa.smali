.class Lorg/cocos2d/tests/aa;
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

    const-string v0, "RotateTo / RotateBy"

    return-object v0
.end method

.method public final a_()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x4000

    invoke-super {p0}, Lorg/cocos2d/tests/m;->a_()V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/cocos2d/tests/aa;->b(I)V

    const/high16 v0, 0x4234

    invoke-static {v5, v0}, Lorg/cocos2d/a/f/s;->a(FF)Lorg/cocos2d/a/f/s;

    move-result-object v0

    const/high16 v1, -0x3dcc

    invoke-static {v5, v1}, Lorg/cocos2d/a/f/s;->a(FF)Lorg/cocos2d/a/f/s;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v5, v2}, Lorg/cocos2d/a/f/s;->a(FF)Lorg/cocos2d/a/f/s;

    move-result-object v2

    iget-object v3, p0, Lorg/cocos2d/tests/aa;->b:Lorg/cocos2d/g/o;

    new-array v4, v7, [Lorg/cocos2d/a/a/b;

    aput-object v2, v4, v6

    invoke-static {v0, v4}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    const/high16 v0, 0x43b4

    invoke-static {v5, v0}, Lorg/cocos2d/a/f/r;->a(FF)Lorg/cocos2d/a/f/r;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/a/f/r;->j()Lorg/cocos2d/a/f/r;

    move-result-object v3

    iget-object v4, p0, Lorg/cocos2d/tests/aa;->a:Lorg/cocos2d/g/o;

    new-array v5, v7, [Lorg/cocos2d/a/a/b;

    aput-object v3, v5, v6

    invoke-static {v0, v5}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    iget-object v0, p0, Lorg/cocos2d/tests/aa;->c:Lorg/cocos2d/g/o;

    new-array v3, v7, [Lorg/cocos2d/a/a/b;

    invoke-virtual {v2}, Lorg/cocos2d/a/f/s;->j()Lorg/cocos2d/a/f/s;

    move-result-object v2

    aput-object v2, v3, v6

    invoke-static {v1, v3}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    return-void
.end method
