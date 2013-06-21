.class Lorg/cocos2d/tests/aj;
.super Lorg/cocos2d/tests/aq;


# instance fields
.field a:F


# direct methods
.method public constructor <init>()V
    .locals 8

    const/high16 v7, 0x3f00

    const/16 v1, 0x80

    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Lorg/cocos2d/tests/aq;-><init>()V

    const/16 v0, 0xff

    invoke-static {v1, v1, v1, v0}, Lorg/cocos2d/l/k;->a(IIII)Lorg/cocos2d/l/k;

    move-result-object v0

    invoke-static {v0}, Lorg/cocos2d/e/a;->a(Lorg/cocos2d/l/k;)Lorg/cocos2d/e/a;

    move-result-object v0

    const/16 v1, -0xa

    invoke-virtual {p0, v0, v1}, Lorg/cocos2d/tests/aj;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    const-string v0, "Test"

    const-string v1, "bitmapFontTest2.fnt"

    invoke-static {v0, v1}, Lorg/cocos2d/opengl/a;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Lorg/cocos2d/opengl/a;

    move-result-object v0

    invoke-static {v4, v4}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/opengl/a;->d(Lorg/cocos2d/l/e;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v5, v1}, Lorg/cocos2d/tests/aj;->a(Lorg/cocos2d/g/i;II)Lorg/cocos2d/g/i;

    invoke-static {v6}, Lorg/cocos2d/a/f/g;->c(F)Lorg/cocos2d/a/f/g;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/a/f/g;->j()Lorg/cocos2d/a/f/f;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/cocos2d/a/a/b;

    aput-object v2, v3, v5

    invoke-static {v1, v3}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v1

    invoke-static {v1}, Lorg/cocos2d/a/a/d;->a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/a/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/opengl/a;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    const-string v2, "Test"

    const-string v3, "bitmapFontTest2.fnt"

    invoke-static {v2, v3}, Lorg/cocos2d/opengl/a;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Lorg/cocos2d/opengl/a;

    move-result-object v2

    invoke-static {v7, v7}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/cocos2d/opengl/a;->d(Lorg/cocos2d/l/e;)V

    sget-object v3, Lorg/cocos2d/l/j;->e:Lorg/cocos2d/l/j;

    invoke-virtual {v2, v3}, Lorg/cocos2d/opengl/a;->a(Lorg/cocos2d/l/j;)V

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v5, v3}, Lorg/cocos2d/tests/aj;->a(Lorg/cocos2d/g/i;II)Lorg/cocos2d/g/i;

    invoke-virtual {v1}, Lorg/cocos2d/a/a/d;->c()Lorg/cocos2d/a/a/a;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/cocos2d/opengl/a;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    const-string v1, "Test"

    const-string v3, "bitmapFontTest2.fnt"

    invoke-static {v1, v3}, Lorg/cocos2d/opengl/a;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Lorg/cocos2d/opengl/a;

    move-result-object v1

    invoke-static {v6, v6}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/cocos2d/opengl/a;->d(Lorg/cocos2d/l/e;)V

    const/4 v3, 0x3

    invoke-virtual {p0, v1, v5, v3}, Lorg/cocos2d/tests/aj;->a(Lorg/cocos2d/g/i;II)Lorg/cocos2d/g/i;

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v3

    invoke-virtual {v3}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v3

    invoke-static {v4, v4}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/cocos2d/opengl/a;->e(Lorg/cocos2d/l/e;)V

    iget v0, v3, Lorg/cocos2d/l/g;->a:F

    const/high16 v4, 0x4000

    div-float/2addr v0, v4

    iget v4, v3, Lorg/cocos2d/l/g;->b:F

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    invoke-static {v0, v4}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/cocos2d/opengl/a;->e(Lorg/cocos2d/l/e;)V

    iget v0, v3, Lorg/cocos2d/l/g;->a:F

    iget v2, v3, Lorg/cocos2d/l/g;->b:F

    invoke-static {v0, v2}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/cocos2d/opengl/a;->e(Lorg/cocos2d/l/e;)V

    new-instance v0, Lorg/cocos2d/tests/ak;

    invoke-direct {v0, p0}, Lorg/cocos2d/tests/ak;-><init>(Lorg/cocos2d/tests/aj;)V

    invoke-virtual {p0, v0}, Lorg/cocos2d/tests/aj;->a(Lorg/cocos2d/a/i;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "CCBitmapFontAtlas Atlas3"

    return-object v0
.end method

.method public final a(F)V
    .locals 5

    const/4 v4, 0x1

    iget v0, p0, Lorg/cocos2d/tests/aj;->a:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/cocos2d/tests/aj;->a:F

    const-string v0, "%2.2f Test j"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lorg/cocos2d/tests/aj;->a:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/cocos2d/m/d;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4}, Lorg/cocos2d/tests/aj;->e(I)Lorg/cocos2d/g/i;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/opengl/a;

    invoke-virtual {v0, v1}, Lorg/cocos2d/opengl/a;->a(Ljava/lang/CharSequence;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/cocos2d/tests/aj;->e(I)Lorg/cocos2d/g/i;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/opengl/a;

    invoke-virtual {v0, v1}, Lorg/cocos2d/opengl/a;->a(Ljava/lang/CharSequence;)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/cocos2d/tests/aj;->e(I)Lorg/cocos2d/g/i;

    move-result-object p0

    check-cast p0, Lorg/cocos2d/opengl/a;

    invoke-virtual {p0, v1}, Lorg/cocos2d/opengl/a;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "Testing alignment. Testing opacity + tint"

    return-object v0
.end method
