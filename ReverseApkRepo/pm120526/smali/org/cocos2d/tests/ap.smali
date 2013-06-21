.class Lorg/cocos2d/tests/ap;
.super Lorg/cocos2d/tests/aq;


# direct methods
.method public constructor <init>()V
    .locals 7

    const/high16 v6, 0x4080

    const/high16 v5, 0x4000

    const/high16 v4, 0x3f00

    invoke-direct {p0}, Lorg/cocos2d/tests/aq;-><init>()V

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v0

    const-string v1, "Blue"

    const-string v2, "bitmapFontTest5.fnt"

    invoke-static {v1, v2}, Lorg/cocos2d/opengl/a;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Lorg/cocos2d/opengl/a;

    move-result-object v1

    sget-object v2, Lorg/cocos2d/l/j;->c:Lorg/cocos2d/l/j;

    invoke-virtual {v1, v2}, Lorg/cocos2d/opengl/a;->a(Lorg/cocos2d/l/j;)V

    invoke-virtual {p0, v1}, Lorg/cocos2d/tests/ap;->a(Lorg/cocos2d/g/i;)Lorg/cocos2d/g/i;

    iget v2, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v2, v5

    iget v3, v0, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v3, v6

    invoke-static {v2, v3}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/opengl/a;->e(Lorg/cocos2d/l/e;)V

    invoke-static {v4, v4}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/opengl/a;->d(Lorg/cocos2d/l/e;)V

    const-string v1, "Red"

    const-string v2, "bitmapFontTest5.fnt"

    invoke-static {v1, v2}, Lorg/cocos2d/opengl/a;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Lorg/cocos2d/opengl/a;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/cocos2d/tests/ap;->a(Lorg/cocos2d/g/i;)Lorg/cocos2d/g/i;

    iget v2, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v2, v5

    iget v3, v0, Lorg/cocos2d/l/g;->b:F

    mul-float/2addr v3, v5

    div-float/2addr v3, v6

    invoke-static {v2, v3}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/opengl/a;->e(Lorg/cocos2d/l/e;)V

    invoke-static {v4, v4}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/opengl/a;->d(Lorg/cocos2d/l/e;)V

    sget-object v2, Lorg/cocos2d/l/j;->e:Lorg/cocos2d/l/j;

    invoke-virtual {v1, v2}, Lorg/cocos2d/opengl/a;->a(Lorg/cocos2d/l/j;)V

    const-string v1, "G"

    const-string v2, "bitmapFontTest5.fnt"

    invoke-static {v1, v2}, Lorg/cocos2d/opengl/a;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Lorg/cocos2d/opengl/a;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/cocos2d/tests/ap;->a(Lorg/cocos2d/g/i;)Lorg/cocos2d/g/i;

    iget v2, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v2, v5

    const/high16 v3, 0x4040

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    mul-float/2addr v0, v3

    div-float/2addr v0, v6

    invoke-static {v2, v0}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/cocos2d/opengl/a;->e(Lorg/cocos2d/l/e;)V

    invoke-static {v4, v4}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/cocos2d/opengl/a;->d(Lorg/cocos2d/l/e;)V

    sget-object v0, Lorg/cocos2d/l/j;->d:Lorg/cocos2d/l/j;

    invoke-virtual {v1, v0}, Lorg/cocos2d/opengl/a;->a(Lorg/cocos2d/l/j;)V

    const-string v0, "Green"

    invoke-virtual {v1, v0}, Lorg/cocos2d/opengl/a;->a(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "CCBitmapFontAtlas AtlasBitmapColor"

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "Testing color"

    return-object v0
.end method
