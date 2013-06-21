.class final Lorg/cocos2d/tests/dk;
.super Lorg/cocos2d/e/b;


# instance fields
.field a:Lorg/cocos2d/f/c;


# direct methods
.method public constructor <init>()V
    .locals 10

    const/4 v9, 0x0

    const/high16 v6, 0x42e6

    const/high16 v5, 0x41b8

    const/high16 v8, 0x4000

    const/4 v7, 0x0

    invoke-direct {p0}, Lorg/cocos2d/e/b;-><init>()V

    const-string v0, "DroidSans"

    invoke-static {v0}, Lorg/cocos2d/f/d;->a(Ljava/lang/String;)V

    const/16 v0, 0x1c

    invoke-static {v0}, Lorg/cocos2d/f/d;->b(I)V

    const-string v0, "Enable AtlasItem"

    const-string v1, "bitmapFontTest3.fnt"

    invoke-static {v0, v1}, Lorg/cocos2d/opengl/a;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Lorg/cocos2d/opengl/a;

    move-result-object v0

    const-string v1, "menuCallback2"

    invoke-static {v0, p0, v1}, Lorg/cocos2d/f/f;->a(Lorg/cocos2d/i/b;Lorg/cocos2d/g/i;Ljava/lang/String;)Lorg/cocos2d/f/f;

    move-result-object v0

    const-string v1, "--- Go Back ---"

    const-string v2, "menuCallback"

    invoke-static {v1, p0, v2}, Lorg/cocos2d/f/d;->a(Ljava/lang/String;Lorg/cocos2d/g/i;Ljava/lang/String;)Lorg/cocos2d/f/d;

    move-result-object v1

    const-string v2, "menuitemsprite.png"

    const/high16 v3, 0x4238

    invoke-static {v7, v3, v6, v5}, Lorg/cocos2d/l/f;->a(FFFF)Lorg/cocos2d/l/f;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;Lorg/cocos2d/l/f;)Lorg/cocos2d/g/o;

    move-result-object v2

    const-string v3, "menuitemsprite.png"

    invoke-static {v7, v5, v6, v5}, Lorg/cocos2d/l/f;->a(FFFF)Lorg/cocos2d/l/f;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;Lorg/cocos2d/l/f;)Lorg/cocos2d/g/o;

    move-result-object v3

    const-string v4, "menuitemsprite.png"

    invoke-static {v7, v7, v6, v5}, Lorg/cocos2d/l/f;->a(FFFF)Lorg/cocos2d/l/f;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;Lorg/cocos2d/l/f;)Lorg/cocos2d/g/o;

    move-result-object v4

    const-string v5, "menuCallback3"

    invoke-static {v2, v3, v4, p0, v5}, Lorg/cocos2d/f/g;->a(Lorg/cocos2d/g/i;Lorg/cocos2d/g/i;Lorg/cocos2d/g/i;Lorg/cocos2d/g/i;Ljava/lang/String;)Lorg/cocos2d/f/g;

    move-result-object v2

    iput-object v2, p0, Lorg/cocos2d/tests/dk;->a:Lorg/cocos2d/f/c;

    iget-object v3, p0, Lorg/cocos2d/tests/dk;->a:Lorg/cocos2d/f/c;

    invoke-virtual {v3, v9}, Lorg/cocos2d/f/c;->a(Z)V

    const/4 v3, 0x3

    new-array v3, v3, [Lorg/cocos2d/f/c;

    aput-object v0, v3, v9

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v4, 0x2

    aput-object v2, v3, v4

    invoke-static {v3}, Lorg/cocos2d/f/a;->a([Lorg/cocos2d/f/c;)Lorg/cocos2d/f/a;

    move-result-object v3

    invoke-virtual {v3, v7, v7}, Lorg/cocos2d/f/a;->d(FF)V

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v4

    invoke-virtual {v4}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v4

    iget v5, v4, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v5, v8

    const/high16 v6, 0x4316

    sub-float/2addr v5, v6

    iget v6, v4, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v6, v8

    invoke-virtual {v0, v5, v6}, Lorg/cocos2d/f/f;->d(FF)V

    iget v5, v4, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v5, v8

    const/high16 v6, 0x4348

    sub-float/2addr v5, v6

    iget v6, v4, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v6, v8

    invoke-virtual {v1, v5, v6}, Lorg/cocos2d/f/d;->d(FF)V

    iget v5, v4, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v5, v8

    iget v4, v4, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v4, v8

    const/high16 v6, 0x42c8

    sub-float/2addr v4, v6

    invoke-virtual {v2, v5, v4}, Lorg/cocos2d/f/g;->d(FF)V

    const/high16 v4, 0x4040

    const/high16 v5, 0x43c8

    invoke-static {v5, v7}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v5

    const/high16 v6, 0x4248

    const/4 v7, 0x4

    invoke-static {v4, v5, v6, v7}, Lorg/cocos2d/a/f/j;->a(FLorg/cocos2d/l/e;FI)Lorg/cocos2d/a/f/j;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Lorg/cocos2d/a/a/b;

    invoke-virtual {v4}, Lorg/cocos2d/a/f/i;->k()Lorg/cocos2d/a/f/i;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v4

    invoke-static {v4}, Lorg/cocos2d/a/a/d;->a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/a/d;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/cocos2d/f/d;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    const/high16 v4, 0x4040

    const/high16 v5, 0x43b4

    invoke-static {v4, v5}, Lorg/cocos2d/a/f/r;->a(FF)Lorg/cocos2d/a/f/r;

    move-result-object v4

    invoke-virtual {v4}, Lorg/cocos2d/a/f/i;->l()Lorg/cocos2d/a/f/i;

    move-result-object v5

    invoke-virtual {v4}, Lorg/cocos2d/a/f/i;->l()Lorg/cocos2d/a/f/i;

    move-result-object v6

    invoke-static {v4}, Lorg/cocos2d/a/a/d;->a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/a/d;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/cocos2d/f/f;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    invoke-static {v5}, Lorg/cocos2d/a/a/d;->a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/a/d;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/cocos2d/f/d;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    invoke-static {v6}, Lorg/cocos2d/a/a/d;->a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/a/d;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/cocos2d/f/g;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    invoke-virtual {p0, v3}, Lorg/cocos2d/tests/dk;->a(Lorg/cocos2d/g/i;)Lorg/cocos2d/g/i;

    return-void
.end method
