.class Lorg/cocos2d/tests/o;
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

    const-string v0, "FadeIn / FadeOut"

    return-object v0
.end method

.method public final a_()V
    .locals 8

    const/4 v7, 0x1

    const/high16 v2, 0x3f80

    const/4 v6, 0x0

    invoke-super {p0}, Lorg/cocos2d/tests/m;->a_()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/cocos2d/tests/o;->b(I)V

    iget-object v0, p0, Lorg/cocos2d/tests/o;->b:Lorg/cocos2d/g/o;

    invoke-virtual {v0, v6}, Lorg/cocos2d/g/o;->a(I)V

    invoke-static {v2}, Lorg/cocos2d/a/f/f;->c(F)Lorg/cocos2d/a/f/f;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/a/f/f;->j()Lorg/cocos2d/a/f/g;

    move-result-object v1

    invoke-static {v2}, Lorg/cocos2d/a/f/g;->c(F)Lorg/cocos2d/a/f/g;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cocos2d/a/f/g;->j()Lorg/cocos2d/a/f/f;

    move-result-object v3

    iget-object v4, p0, Lorg/cocos2d/tests/o;->b:Lorg/cocos2d/g/o;

    new-array v5, v7, [Lorg/cocos2d/a/a/b;

    aput-object v1, v5, v6

    invoke-static {v0, v5}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    iget-object v0, p0, Lorg/cocos2d/tests/o;->c:Lorg/cocos2d/g/o;

    new-array v1, v7, [Lorg/cocos2d/a/a/b;

    aput-object v3, v1, v6

    invoke-static {v2, v1}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    return-void
.end method
