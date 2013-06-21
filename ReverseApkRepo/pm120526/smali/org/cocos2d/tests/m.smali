.class Lorg/cocos2d/tests/m;
.super Lorg/cocos2d/e/b;


# instance fields
.field a:Lorg/cocos2d/g/o;

.field b:Lorg/cocos2d/g/o;

.field c:Lorg/cocos2d/g/o;


# direct methods
.method public constructor <init>()V
    .locals 11

    const/high16 v9, 0x42c8

    const/high16 v4, 0x4040

    const/high16 v8, 0x41f0

    const/4 v7, 0x1

    const/high16 v6, 0x4000

    invoke-direct {p0}, Lorg/cocos2d/e/b;-><init>()V

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lorg/cocos2d/g/c;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "grossini.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    new-instance v0, Lorg/cocos2d/opengl/i;

    invoke-direct {v0}, Lorg/cocos2d/opengl/i;-><init>()V

    new-instance v2, Lorg/cocos2d/tests/n;

    invoke-direct {v2, p0, v1}, Lorg/cocos2d/tests/n;-><init>(Lorg/cocos2d/tests/m;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Lorg/cocos2d/opengl/i;->a(Lorg/cocos2d/opengl/r;)V

    invoke-static {v0}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/opengl/i;)Lorg/cocos2d/g/o;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/tests/m;->a:Lorg/cocos2d/g/o;

    const-string v0, "grossinis_sister1.png"

    invoke-static {v0}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/tests/m;->b:Lorg/cocos2d/g/o;

    const-string v0, "grossinis_sister2.png"

    invoke-static {v0}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/tests/m;->c:Lorg/cocos2d/g/o;

    iget-object v0, p0, Lorg/cocos2d/tests/m;->a:Lorg/cocos2d/g/o;

    invoke-virtual {p0, v0, v7}, Lorg/cocos2d/tests/m;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    iget-object v0, p0, Lorg/cocos2d/tests/m;->b:Lorg/cocos2d/g/o;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lorg/cocos2d/tests/m;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    iget-object v0, p0, Lorg/cocos2d/tests/m;->c:Lorg/cocos2d/g/o;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/cocos2d/tests/m;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/tests/m;->a:Lorg/cocos2d/g/o;

    iget v2, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v2, v6

    iget v3, v0, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    iget-object v1, p0, Lorg/cocos2d/tests/m;->b:Lorg/cocos2d/g/o;

    iget v2, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v2, v6

    iget v3, v0, Lorg/cocos2d/l/g;->b:F

    mul-float/2addr v3, v6

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    iget-object v1, p0, Lorg/cocos2d/tests/m;->c:Lorg/cocos2d/g/o;

    iget v2, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v2, v6

    iget v3, v0, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v3, v6

    invoke-static {v2, v3}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    invoke-virtual {p0}, Lorg/cocos2d/tests/m;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DroidSans"

    const/high16 v3, 0x41c0

    invoke-static {v1, v2, v3}, Lorg/cocos2d/g/d;->a(Ljava/lang/String;Ljava/lang/String;F)Lorg/cocos2d/g/d;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/cocos2d/tests/m;->a(Lorg/cocos2d/g/i;)Lorg/cocos2d/g/i;

    iget v2, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v2, v6

    iget v3, v0, Lorg/cocos2d/l/g;->b:F

    const/high16 v4, 0x4248

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/g/d;->e(Lorg/cocos2d/l/e;)V

    invoke-virtual {p0}, Lorg/cocos2d/tests/m;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "DroidSerif"

    const/high16 v3, 0x4180

    invoke-static {v1, v2, v3}, Lorg/cocos2d/g/d;->a(Ljava/lang/String;Ljava/lang/String;F)Lorg/cocos2d/g/d;

    move-result-object v1

    invoke-virtual {p0, v1, v7}, Lorg/cocos2d/tests/m;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    iget v2, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v2, v6

    iget v3, v0, Lorg/cocos2d/l/g;->b:F

    const/high16 v4, 0x42a0

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/g/d;->e(Lorg/cocos2d/l/e;)V

    :cond_0
    const-string v1, "b1.png"

    const-string v2, "b2.png"

    const-string v3, "backCallback"

    invoke-static {v1, v2, p0, v3}, Lorg/cocos2d/f/e;->a(Ljava/lang/String;Ljava/lang/String;Lorg/cocos2d/g/i;Ljava/lang/String;)Lorg/cocos2d/f/e;

    move-result-object v1

    const-string v2, "r1.png"

    const-string v3, "r2.png"

    const-string v4, "restartCallback"

    invoke-static {v2, v3, p0, v4}, Lorg/cocos2d/f/e;->a(Ljava/lang/String;Ljava/lang/String;Lorg/cocos2d/g/i;Ljava/lang/String;)Lorg/cocos2d/f/e;

    move-result-object v2

    const-string v3, "f1.png"

    const-string v4, "f2.png"

    const-string v5, "nextCallback"

    invoke-static {v3, v4, p0, v5}, Lorg/cocos2d/f/e;->a(Ljava/lang/String;Ljava/lang/String;Lorg/cocos2d/g/i;Ljava/lang/String;)Lorg/cocos2d/f/e;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Lorg/cocos2d/f/c;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    aput-object v2, v4, v7

    const/4 v5, 0x2

    aput-object v3, v4, v5

    invoke-static {v4}, Lorg/cocos2d/f/a;->a([Lorg/cocos2d/f/c;)Lorg/cocos2d/f/a;

    move-result-object v4

    invoke-static {}, Lorg/cocos2d/l/e;->b()Lorg/cocos2d/l/e;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/cocos2d/f/a;->e(Lorg/cocos2d/l/e;)V

    iget v5, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v5, v6

    sub-float/2addr v5, v9

    invoke-static {v5, v8}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/cocos2d/f/e;->e(Lorg/cocos2d/l/e;)V

    iget v1, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v1, v6

    invoke-static {v1, v8}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/cocos2d/f/e;->e(Lorg/cocos2d/l/e;)V

    iget v0, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v0, v6

    add-float/2addr v0, v9

    invoke-static {v0, v8}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/cocos2d/f/e;->e(Lorg/cocos2d/l/e;)V

    invoke-virtual {p0, v4, v7}, Lorg/cocos2d/tests/m;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    return-void

    :catch_0
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "No title"

    return-object v0
.end method

.method public final a(I)V
    .locals 7

    const/4 v6, 0x0

    const/high16 v5, 0x4040

    const/high16 v4, 0x4000

    const/high16 v3, 0x4270

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lorg/cocos2d/tests/m;->b:Lorg/cocos2d/g/o;

    invoke-virtual {v1, v6}, Lorg/cocos2d/g/o;->c(Z)V

    iget-object v1, p0, Lorg/cocos2d/tests/m;->c:Lorg/cocos2d/g/o;

    invoke-virtual {v1, v6}, Lorg/cocos2d/g/o;->c(Z)V

    iget-object v1, p0, Lorg/cocos2d/tests/m;->a:Lorg/cocos2d/g/o;

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v0, v4

    invoke-static {v3, v0}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lorg/cocos2d/tests/m;->c:Lorg/cocos2d/g/o;

    iget v2, v0, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v2, v5

    invoke-static {v3, v2}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    iget-object v1, p0, Lorg/cocos2d/tests/m;->b:Lorg/cocos2d/g/o;

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    mul-float/2addr v0, v4

    div-float/2addr v0, v5

    invoke-static {v3, v0}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    iget-object v0, p0, Lorg/cocos2d/tests/m;->a:Lorg/cocos2d/g/o;

    invoke-virtual {v0, v6}, Lorg/cocos2d/g/o;->c(Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lorg/cocos2d/tests/m;->a:Lorg/cocos2d/g/o;

    iget v2, v0, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v2, v4

    invoke-static {v3, v2}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    iget-object v1, p0, Lorg/cocos2d/tests/m;->b:Lorg/cocos2d/g/o;

    iget v2, v0, Lorg/cocos2d/l/g;->b:F

    mul-float/2addr v2, v4

    div-float/2addr v2, v5

    invoke-static {v3, v2}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    iget-object v1, p0, Lorg/cocos2d/tests/m;->c:Lorg/cocos2d/g/o;

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v0, v5

    invoke-static {v3, v0}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lorg/cocos2d/tests/ActionsTest;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActionsTests: Invalid number of Sprites"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(I)V
    .locals 7

    const/4 v6, 0x0

    const/high16 v5, 0x4040

    const/high16 v4, 0x4000

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lorg/cocos2d/tests/m;->b:Lorg/cocos2d/g/o;

    invoke-virtual {v1, v6}, Lorg/cocos2d/g/o;->c(Z)V

    iget-object v1, p0, Lorg/cocos2d/tests/m;->c:Lorg/cocos2d/g/o;

    invoke-virtual {v1, v6}, Lorg/cocos2d/g/o;->c(Z)V

    iget-object v1, p0, Lorg/cocos2d/tests/m;->a:Lorg/cocos2d/g/o;

    iget v2, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v2, v4

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v0, v4

    invoke-static {v2, v0}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lorg/cocos2d/tests/m;->c:Lorg/cocos2d/g/o;

    iget v2, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v2, v5

    iget v3, v0, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    iget-object v1, p0, Lorg/cocos2d/tests/m;->b:Lorg/cocos2d/g/o;

    iget v2, v0, Lorg/cocos2d/l/g;->a:F

    mul-float/2addr v2, v4

    div-float/2addr v2, v5

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v0, v4

    invoke-static {v2, v0}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    iget-object v0, p0, Lorg/cocos2d/tests/m;->a:Lorg/cocos2d/g/o;

    invoke-virtual {v0, v6}, Lorg/cocos2d/g/o;->c(Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lorg/cocos2d/tests/m;->a:Lorg/cocos2d/g/o;

    iget v2, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v2, v4

    iget v3, v0, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    iget-object v1, p0, Lorg/cocos2d/tests/m;->b:Lorg/cocos2d/g/o;

    iget v2, v0, Lorg/cocos2d/l/g;->a:F

    mul-float/2addr v2, v4

    div-float/2addr v2, v5

    iget v3, v0, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    iget-object v1, p0, Lorg/cocos2d/tests/m;->c:Lorg/cocos2d/g/o;

    iget v2, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v2, v5

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v0, v4

    invoke-static {v2, v0}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lorg/cocos2d/tests/ActionsTest;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActionsTests: Invalid number of Sprites"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
