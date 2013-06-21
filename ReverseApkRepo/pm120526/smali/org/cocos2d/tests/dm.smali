.class final Lorg/cocos2d/tests/dm;
.super Lorg/cocos2d/e/b;


# instance fields
.field a:Lorg/cocos2d/f/c;


# direct methods
.method public constructor <init>()V
    .locals 13

    const/high16 v12, 0x4000

    const/high16 v4, 0x42e6

    const/high16 v3, 0x41b8

    const/4 v11, 0x0

    const/4 v10, 0x0

    invoke-direct {p0}, Lorg/cocos2d/e/b;-><init>()V

    const/16 v0, 0x1e

    invoke-static {v0}, Lorg/cocos2d/f/d;->b(I)V

    const-string v0, "DroidSans"

    invoke-static {v0}, Lorg/cocos2d/f/d;->a(Ljava/lang/String;)V

    const-string v0, "menuitemsprite.png"

    const/high16 v1, 0x4238

    invoke-static {v10, v1, v4, v3}, Lorg/cocos2d/l/f;->a(FFFF)Lorg/cocos2d/l/f;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;Lorg/cocos2d/l/f;)Lorg/cocos2d/g/o;

    move-result-object v0

    const-string v1, "menuitemsprite.png"

    invoke-static {v10, v3, v4, v3}, Lorg/cocos2d/l/f;->a(FFFF)Lorg/cocos2d/l/f;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;Lorg/cocos2d/l/f;)Lorg/cocos2d/g/o;

    move-result-object v1

    const-string v2, "menuitemsprite.png"

    invoke-static {v10, v10, v4, v3}, Lorg/cocos2d/l/f;->a(FFFF)Lorg/cocos2d/l/f;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;Lorg/cocos2d/l/f;)Lorg/cocos2d/g/o;

    move-result-object v2

    const-string v3, "menuCallback"

    invoke-static {v0, v1, v2, p0, v3}, Lorg/cocos2d/f/g;->a(Lorg/cocos2d/g/i;Lorg/cocos2d/g/i;Lorg/cocos2d/g/i;Lorg/cocos2d/g/i;Ljava/lang/String;)Lorg/cocos2d/f/g;

    move-result-object v0

    const-string v1, "SendScoreButton.png"

    const-string v2, "SendScoreButtonPressed.png"

    const-string v3, "menuCallback2"

    invoke-static {v1, v2, p0, v3}, Lorg/cocos2d/f/e;->a(Ljava/lang/String;Ljava/lang/String;Lorg/cocos2d/g/i;Ljava/lang/String;)Lorg/cocos2d/f/e;

    move-result-object v1

    const-string v2, "0123456789"

    const-string v3, "fps_images.png"

    const/16 v4, 0x10

    const/16 v5, 0x18

    const/16 v6, 0x2e

    invoke-static {v2, v3, v4, v5, v6}, Lorg/cocos2d/g/g;->a(Ljava/lang/CharSequence;Ljava/lang/String;IIC)Lorg/cocos2d/g/g;

    move-result-object v2

    const-string v3, "menuCallbackDisabled"

    invoke-static {v2, p0, v3}, Lorg/cocos2d/f/f;->a(Lorg/cocos2d/i/b;Lorg/cocos2d/g/i;Ljava/lang/String;)Lorg/cocos2d/f/f;

    move-result-object v2

    const/16 v3, 0x20

    const/16 v4, 0x20

    const/16 v5, 0x40

    invoke-static {v3, v4, v5}, Lorg/cocos2d/l/j;->a(III)Lorg/cocos2d/l/j;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/cocos2d/f/f;->b(Lorg/cocos2d/l/j;)V

    const/16 v3, 0xc8

    const/16 v4, 0xc8

    const/16 v5, 0xff

    invoke-static {v3, v4, v5}, Lorg/cocos2d/l/j;->a(III)Lorg/cocos2d/l/j;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/cocos2d/f/f;->a(Lorg/cocos2d/l/j;)V

    const-string v3, "I toggle enable items"

    const-string v4, "menuCallbackEnable"

    invoke-static {v3, p0, v4}, Lorg/cocos2d/f/d;->a(Ljava/lang/String;Lorg/cocos2d/g/i;Ljava/lang/String;)Lorg/cocos2d/f/d;

    move-result-object v3

    const-string v4, "configuration"

    const-string v5, "bitmapFontTest3.fnt"

    invoke-static {v4, v5}, Lorg/cocos2d/opengl/a;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Lorg/cocos2d/opengl/a;

    move-result-object v4

    const-string v5, "menuCallbackConfig"

    invoke-static {v4, p0, v5}, Lorg/cocos2d/f/f;->a(Lorg/cocos2d/i/b;Lorg/cocos2d/g/i;Ljava/lang/String;)Lorg/cocos2d/f/f;

    move-result-object v4

    const v5, 0x3f4ccccd

    invoke-virtual {v4, v5}, Lorg/cocos2d/f/f;->e(F)V

    const-string v5, "Quit"

    const-string v6, "onQuit"

    invoke-static {v5, p0, v6}, Lorg/cocos2d/f/d;->a(Ljava/lang/String;Lorg/cocos2d/g/i;Ljava/lang/String;)Lorg/cocos2d/f/d;

    move-result-object v5

    const/high16 v6, 0x3f00

    const/16 v7, -0xff

    const/16 v8, -0xff

    invoke-static {v11, v7, v8}, Lorg/cocos2d/l/j;->a(III)Lorg/cocos2d/l/j;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/cocos2d/a/f/x;->a(FLorg/cocos2d/l/j;)Lorg/cocos2d/a/f/x;

    move-result-object v6

    invoke-virtual {v6}, Lorg/cocos2d/a/f/i;->k()Lorg/cocos2d/a/f/i;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Lorg/cocos2d/a/a/b;

    aput-object v7, v8, v11

    invoke-static {v6, v8}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v6

    invoke-static {v6}, Lorg/cocos2d/a/a/d;->a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/a/d;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/cocos2d/f/d;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    const/4 v6, 0x6

    new-array v6, v6, [Lorg/cocos2d/f/c;

    aput-object v0, v6, v11

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v2, v6, v0

    const/4 v0, 0x3

    aput-object v3, v6, v0

    const/4 v0, 0x4

    aput-object v4, v6, v0

    const/4 v0, 0x5

    aput-object v5, v6, v0

    invoke-static {v6}, Lorg/cocos2d/f/a;->a([Lorg/cocos2d/f/c;)Lorg/cocos2d/f/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/f/a;->a()V

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v3

    invoke-virtual {v1}, Lorg/cocos2d/f/a;->z()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v11

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object v2, p0, Lorg/cocos2d/tests/dm;->a:Lorg/cocos2d/f/c;

    iget-object v0, p0, Lorg/cocos2d/tests/dm;->a:Lorg/cocos2d/f/c;

    invoke-virtual {v0, v11}, Lorg/cocos2d/f/c;->a(Z)V

    invoke-virtual {p0, v1}, Lorg/cocos2d/tests/dm;->a(Lorg/cocos2d/g/i;)Lorg/cocos2d/g/i;

    return-void

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/g/i;

    invoke-virtual {v0}, Lorg/cocos2d/g/i;->s()Lorg/cocos2d/l/e;

    move-result-object v6

    iget v7, v3, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v7, v12

    const/high16 v8, 0x41a0

    add-float/2addr v7, v8

    float-to-int v7, v7

    rem-int/lit8 v8, v5, 0x2

    if-nez v8, :cond_1

    neg-int v7, v7

    :cond_1
    iget v8, v6, Lorg/cocos2d/l/e;->a:F

    int-to-float v9, v7

    add-float/2addr v8, v9

    iget v9, v6, Lorg/cocos2d/l/e;->b:F

    invoke-virtual {v0, v8, v9}, Lorg/cocos2d/g/i;->d(FF)V

    iget v6, v6, Lorg/cocos2d/l/e;->a:F

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-static {v6, v10}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v6

    invoke-static {v12, v6}, Lorg/cocos2d/a/f/l;->a(FLorg/cocos2d/l/e;)Lorg/cocos2d/a/f/l;

    move-result-object v6

    invoke-static {v6}, Lorg/cocos2d/a/c/l;->b(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/c/l;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/cocos2d/g/i;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0
.end method
