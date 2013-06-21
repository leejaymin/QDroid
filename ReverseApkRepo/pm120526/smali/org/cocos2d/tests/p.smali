.class Lorg/cocos2d/tests/p;
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

    const-string v0, "Follow action"

    return-object v0
.end method

.method public final a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/high16 v5, 0x40a0

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v0

    iget v1, v0, Lorg/cocos2d/l/g;->a:F

    const/high16 v2, 0x4000

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c8

    sub-float/2addr v1, v2

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    new-array v2, v7, [Lorg/cocos2d/l/e;

    const/4 v3, 0x0

    invoke-static {v5, v5}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v4

    aput-object v4, v2, v3

    sub-float v3, v1, v5

    invoke-static {v3, v5}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x2

    sub-float/2addr v1, v5

    sub-float v4, v0, v5

    invoke-static {v1, v4}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    aput-object v1, v2, v3

    const/4 v1, 0x3

    sub-float/2addr v0, v5

    invoke-static {v5, v0}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-static {p1, v2, v7, v6}, Lorg/cocos2d/opengl/f;->a(Ljavax/microedition/khronos/opengles/GL10;[Lorg/cocos2d/l/e;IZ)V

    return-void
.end method

.method public final a_()V
    .locals 7

    const/4 v4, 0x1

    const/high16 v6, 0x4000

    const/4 v5, 0x0

    invoke-super {p0}, Lorg/cocos2d/tests/m;->a_()V

    invoke-virtual {p0, v4}, Lorg/cocos2d/tests/p;->b(I)V

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/tests/p;->a:Lorg/cocos2d/g/o;

    const/high16 v2, -0x3cb8

    iget v3, v0, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v3, v6

    invoke-static {v2, v3}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    iget v1, v0, Lorg/cocos2d/l/g;->a:F

    const/high16 v2, 0x4040

    mul-float/2addr v1, v2

    invoke-static {v1, v5}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-static {v6, v1}, Lorg/cocos2d/a/f/l;->a(FLorg/cocos2d/l/e;)Lorg/cocos2d/a/f/l;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/a/f/l;->m()Lorg/cocos2d/a/f/l;

    move-result-object v2

    new-array v3, v4, [Lorg/cocos2d/a/a/b;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v1

    invoke-static {v1}, Lorg/cocos2d/a/a/d;->a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/a/d;

    move-result-object v1

    iget-object v2, p0, Lorg/cocos2d/tests/p;->a:Lorg/cocos2d/g/o;

    invoke-virtual {v2, v1}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    iget-object v1, p0, Lorg/cocos2d/tests/p;->a:Lorg/cocos2d/g/o;

    iget v2, v0, Lorg/cocos2d/l/g;->a:F

    mul-float/2addr v2, v6

    const/high16 v3, 0x42c8

    sub-float/2addr v2, v3

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    invoke-static {v5, v5, v2, v0}, Lorg/cocos2d/l/f;->a(FFFF)Lorg/cocos2d/l/f;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/cocos2d/a/a/c;->a(Lorg/cocos2d/g/i;Lorg/cocos2d/l/f;)Lorg/cocos2d/a/a/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/tests/p;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "The sprite should be centered, even though it is being moved"

    return-object v0
.end method
