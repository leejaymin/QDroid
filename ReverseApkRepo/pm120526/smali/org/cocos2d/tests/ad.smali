.class Lorg/cocos2d/tests/ad;
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

    const-string v0, "ScaleTo / ScaleBy"

    return-object v0
.end method

.method public final a_()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v1, 0x4000

    invoke-super {p0}, Lorg/cocos2d/tests/m;->a_()V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/cocos2d/tests/ad;->b(I)V

    const/high16 v0, 0x3f00

    invoke-static {v1, v0}, Lorg/cocos2d/a/f/u;->b(FF)Lorg/cocos2d/a/f/u;

    move-result-object v0

    invoke-static {v1, v1}, Lorg/cocos2d/a/f/t;->a(FF)Lorg/cocos2d/a/f/t;

    move-result-object v1

    invoke-static {}, Lorg/cocos2d/a/f/t;->j()Lorg/cocos2d/a/f/t;

    move-result-object v2

    invoke-virtual {v1}, Lorg/cocos2d/a/f/t;->m()Lorg/cocos2d/a/f/t;

    move-result-object v3

    iget-object v4, p0, Lorg/cocos2d/tests/ad;->b:Lorg/cocos2d/g/o;

    invoke-virtual {v4, v0}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    iget-object v0, p0, Lorg/cocos2d/tests/ad;->a:Lorg/cocos2d/g/o;

    new-array v4, v6, [Lorg/cocos2d/a/a/b;

    aput-object v3, v4, v5

    invoke-static {v1, v4}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    iget-object v0, p0, Lorg/cocos2d/tests/ad;->c:Lorg/cocos2d/g/o;

    new-array v1, v6, [Lorg/cocos2d/a/a/b;

    invoke-virtual {v2}, Lorg/cocos2d/a/f/t;->m()Lorg/cocos2d/a/f/t;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-static {v2, v1}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    return-void
.end method
