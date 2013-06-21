.class Lorg/cocos2d/tests/fp;
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

    const-string v0, "FadeIn / FadeOut"

    return-object v0
.end method

.method public final a_()V
    .locals 3

    const/high16 v2, 0x3f80

    invoke-super {p0}, Lorg/cocos2d/tests/fo;->a_()V

    invoke-virtual {p0}, Lorg/cocos2d/tests/fp;->b()V

    iget-object v0, p0, Lorg/cocos2d/tests/fp;->b:Lorg/cocos2d/g/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->a(I)V

    invoke-static {v2}, Lorg/cocos2d/a/f/f;->c(F)Lorg/cocos2d/a/f/f;

    move-result-object v0

    invoke-static {v2}, Lorg/cocos2d/a/f/g;->c(F)Lorg/cocos2d/a/f/g;

    move-result-object v1

    iget-object v2, p0, Lorg/cocos2d/tests/fp;->b:Lorg/cocos2d/g/o;

    invoke-virtual {v2, v0}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    iget-object v0, p0, Lorg/cocos2d/tests/fp;->a:Lorg/cocos2d/g/o;

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    return-void
.end method
