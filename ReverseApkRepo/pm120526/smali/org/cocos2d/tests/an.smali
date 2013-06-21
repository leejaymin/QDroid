.class Lorg/cocos2d/tests/an;
.super Lorg/cocos2d/tests/aq;


# direct methods
.method public constructor <init>()V
    .locals 5

    const/high16 v4, 0x4000

    const/high16 v3, 0x3f00

    invoke-direct {p0}, Lorg/cocos2d/tests/aq;-><init>()V

    const-string v0, "abcdefg"

    const-string v1, "bitmapFontTest4.fnt"

    invoke-static {v0, v1}, Lorg/cocos2d/opengl/a;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Lorg/cocos2d/opengl/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/tests/an;->a(Lorg/cocos2d/g/i;)Lorg/cocos2d/g/i;

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v1

    iget v2, v1, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v2, v4

    iget v1, v1, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v1, v4

    invoke-static {v2, v1}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/opengl/a;->e(Lorg/cocos2d/l/e;)V

    invoke-static {v3, v3}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/opengl/a;->d(Lorg/cocos2d/l/e;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "CCBitmapFontAtlas Atlas5"

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "Testing padding"

    return-object v0
.end method
