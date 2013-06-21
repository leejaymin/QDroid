.class Lorg/cocos2d/tests/al;
.super Lorg/cocos2d/tests/aq;


# instance fields
.field a:F


# direct methods
.method public constructor <init>()V
    .locals 13

    const/high16 v12, 0x3f80

    const/4 v9, 0x1

    const/high16 v8, 0x3f00

    const/4 v11, 0x0

    const/high16 v10, 0x4000

    invoke-direct {p0}, Lorg/cocos2d/tests/aq;-><init>()V

    const-string v0, "Bitmap Font Atlas"

    const-string v1, "bitmapFontTest.fnt"

    invoke-static {v0, v1}, Lorg/cocos2d/opengl/a;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Lorg/cocos2d/opengl/a;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/cocos2d/tests/al;->a(Lorg/cocos2d/g/i;)Lorg/cocos2d/g/i;

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v3

    iget v0, v3, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v0, v10

    iget v1, v3, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v1, v10

    invoke-static {v0, v1}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/cocos2d/opengl/a;->e(Lorg/cocos2d/l/e;)V

    invoke-static {v8, v8}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/cocos2d/opengl/a;->d(Lorg/cocos2d/l/e;)V

    invoke-virtual {v2, v11}, Lorg/cocos2d/opengl/a;->e(I)Lorg/cocos2d/g/i;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/g/o;

    const/4 v1, 0x7

    invoke-virtual {v2, v1}, Lorg/cocos2d/opengl/a;->e(I)Lorg/cocos2d/g/i;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/g/o;

    const/16 v4, 0xc

    invoke-virtual {v2, v4}, Lorg/cocos2d/opengl/a;->e(I)Lorg/cocos2d/g/i;

    move-result-object v2

    check-cast v2, Lorg/cocos2d/g/o;

    const/high16 v4, 0x43b4

    invoke-static {v10, v4}, Lorg/cocos2d/a/f/r;->a(FF)Lorg/cocos2d/a/f/r;

    move-result-object v4

    invoke-static {v4}, Lorg/cocos2d/a/a/d;->a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/a/d;

    move-result-object v4

    const/high16 v5, 0x3fc0

    invoke-static {v10, v5}, Lorg/cocos2d/a/f/t;->a(FF)Lorg/cocos2d/a/f/t;

    move-result-object v5

    invoke-virtual {v5}, Lorg/cocos2d/a/f/t;->m()Lorg/cocos2d/a/f/t;

    move-result-object v6

    new-array v7, v9, [Lorg/cocos2d/a/a/b;

    aput-object v6, v7, v11

    invoke-static {v5, v7}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v5

    invoke-static {v5}, Lorg/cocos2d/a/a/d;->a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/a/d;

    move-result-object v5

    invoke-static {}, Lorg/cocos2d/l/e;->b()Lorg/cocos2d/l/e;

    move-result-object v6

    const/high16 v7, 0x4270

    invoke-static {v8, v6, v7, v9}, Lorg/cocos2d/a/f/j;->a(FLorg/cocos2d/l/e;FI)Lorg/cocos2d/a/f/j;

    move-result-object v6

    invoke-static {v6}, Lorg/cocos2d/a/a/d;->a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/a/d;

    move-result-object v6

    invoke-static {v12}, Lorg/cocos2d/a/f/g;->c(F)Lorg/cocos2d/a/f/g;

    move-result-object v7

    invoke-static {v12}, Lorg/cocos2d/a/f/f;->c(F)Lorg/cocos2d/a/f/f;

    move-result-object v8

    new-array v9, v9, [Lorg/cocos2d/a/a/b;

    aput-object v8, v9, v11

    invoke-static {v7, v9}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v7

    invoke-static {v7}, Lorg/cocos2d/a/a/d;->a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/a/d;

    move-result-object v7

    invoke-virtual {v0, v4}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    invoke-virtual {v0, v5}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    invoke-virtual {v1, v6}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    invoke-virtual {v2, v7}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    const-string v0, "00.0"

    const-string v1, "bitmapFontTest.fnt"

    invoke-static {v0, v1}, Lorg/cocos2d/opengl/a;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Lorg/cocos2d/opengl/a;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v11, v1}, Lorg/cocos2d/tests/al;->a(Lorg/cocos2d/g/i;II)Lorg/cocos2d/g/i;

    iget v1, v3, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v1, v10

    const/high16 v2, 0x42a0

    invoke-static {v1, v2}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/opengl/a;->e(Lorg/cocos2d/l/e;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/cocos2d/opengl/a;->e(I)Lorg/cocos2d/g/i;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/g/o;

    invoke-virtual {v4}, Lorg/cocos2d/a/a/d;->c()Lorg/cocos2d/a/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    new-instance v0, Lorg/cocos2d/tests/am;

    invoke-direct {v0, p0}, Lorg/cocos2d/tests/am;-><init>(Lorg/cocos2d/tests/al;)V

    const v1, 0x3dcccccd

    invoke-virtual {p0, v0, v1}, Lorg/cocos2d/tests/al;->a(Lorg/cocos2d/a/i;F)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "CCBitmapFontAtlas Atlas4"

    return-object v0
.end method

.method public final a(F)V
    .locals 4

    iget v0, p0, Lorg/cocos2d/tests/al;->a:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/cocos2d/tests/al;->a:F

    const-string v0, "%04.1f"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lorg/cocos2d/tests/al;->a:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/cocos2d/m/d;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lorg/cocos2d/tests/al;->e(I)Lorg/cocos2d/g/i;

    move-result-object p0

    check-cast p0, Lorg/cocos2d/opengl/a;

    invoke-virtual {p0, v0}, Lorg/cocos2d/opengl/a;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6

    const/4 v5, 0x0

    const/high16 v4, 0x4000

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v0

    iget v1, v0, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v1, v4

    invoke-static {v5, v1}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    iget v2, v0, Lorg/cocos2d/l/g;->a:F

    iget v3, v0, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lorg/cocos2d/opengl/f;->a(Ljavax/microedition/khronos/opengles/GL10;Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)V

    iget v1, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v1, v4

    invoke-static {v1, v5}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    iget v2, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v2, v4

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    invoke-static {v2, v0}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lorg/cocos2d/opengl/f;->a(Ljavax/microedition/khronos/opengles/GL10;Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "Using fonts as CCSprite objects. Some characters should rotate."

    return-object v0
.end method
