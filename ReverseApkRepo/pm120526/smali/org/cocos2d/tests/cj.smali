.class abstract Lorg/cocos2d/tests/cj;
.super Lorg/cocos2d/e/b;


# direct methods
.method public constructor <init>()V
    .locals 13

    const/4 v12, 0x2

    const/high16 v11, 0x41f0

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/high16 v8, 0x4000

    invoke-direct {p0}, Lorg/cocos2d/e/b;-><init>()V

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v0

    iget v1, v0, Lorg/cocos2d/l/g;->a:F

    iget v2, v0, Lorg/cocos2d/l/g;->b:F

    const-string v3, "background3.png"

    invoke-static {v3}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v3

    invoke-virtual {p0, v3, v10, v9}, Lorg/cocos2d/tests/cj;->a(Lorg/cocos2d/g/i;II)Lorg/cocos2d/g/i;

    div-float v4, v1, v8

    div-float v5, v2, v8

    invoke-static {v4, v5}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    const-string v4, "grossinis_sister2.png"

    invoke-static {v4}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v4

    invoke-virtual {v3, v4, v9, v9}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/g/i;II)Lorg/cocos2d/g/i;

    const/high16 v5, 0x4040

    div-float v5, v1, v5

    const/high16 v6, 0x4348

    invoke-static {v5, v6}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    const/high16 v5, 0x40a0

    invoke-static {v8, v5}, Lorg/cocos2d/a/f/t;->a(FF)Lorg/cocos2d/a/f/t;

    move-result-object v5

    invoke-virtual {v5}, Lorg/cocos2d/a/f/i;->k()Lorg/cocos2d/a/f/i;

    move-result-object v6

    new-array v7, v9, [Lorg/cocos2d/a/a/b;

    aput-object v6, v7, v10

    invoke-static {v5, v7}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v5

    invoke-static {v5}, Lorg/cocos2d/a/a/d;->a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/a/d;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    const-string v4, "grossinis_sister1.png"

    invoke-static {v4}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v4

    invoke-virtual {v3, v4, v9, v12}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/g/i;II)Lorg/cocos2d/g/i;

    mul-float v3, v8, v1

    const/high16 v5, 0x4040

    div-float/2addr v3, v5

    const/high16 v5, 0x4348

    invoke-static {v3, v5}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    const/high16 v3, 0x40a0

    invoke-static {v8, v3}, Lorg/cocos2d/a/f/t;->a(FF)Lorg/cocos2d/a/f/t;

    move-result-object v3

    invoke-virtual {v3}, Lorg/cocos2d/a/f/i;->k()Lorg/cocos2d/a/f/i;

    move-result-object v5

    new-array v6, v9, [Lorg/cocos2d/a/a/b;

    aput-object v5, v6, v10

    invoke-static {v3, v6}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v3

    invoke-static {v3}, Lorg/cocos2d/a/a/d;->a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/a/d;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    invoke-virtual {p0}, Lorg/cocos2d/tests/cj;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DroidSans"

    const/high16 v5, 0x41c0

    invoke-static {v3, v4, v5}, Lorg/cocos2d/g/d;->a(Ljava/lang/String;Ljava/lang/String;F)Lorg/cocos2d/g/d;

    move-result-object v3

    div-float/2addr v1, v8

    const/high16 v4, 0x4220

    sub-float/2addr v2, v4

    invoke-static {v1, v2}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/cocos2d/g/d;->e(Lorg/cocos2d/l/e;)V

    const/16 v1, 0x64

    invoke-virtual {p0, v3, v1}, Lorg/cocos2d/tests/cj;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    invoke-virtual {v3, v12}, Lorg/cocos2d/g/d;->c(I)V

    invoke-virtual {p0}, Lorg/cocos2d/tests/cj;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/cocos2d/tests/cj;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DroidSerif"

    const/high16 v3, 0x4180

    invoke-static {v1, v2, v3}, Lorg/cocos2d/g/d;->a(Ljava/lang/String;Ljava/lang/String;F)Lorg/cocos2d/g/d;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {p0, v1, v2}, Lorg/cocos2d/tests/cj;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    iget v2, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v2, v8

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

    aput-object v1, v4, v10

    aput-object v2, v4, v9

    aput-object v3, v4, v12

    invoke-static {v4}, Lorg/cocos2d/f/a;->a([Lorg/cocos2d/f/c;)Lorg/cocos2d/f/a;

    move-result-object v4

    invoke-static {}, Lorg/cocos2d/l/e;->b()Lorg/cocos2d/l/e;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/cocos2d/f/a;->e(Lorg/cocos2d/l/e;)V

    iget v5, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v5, v8

    const/high16 v6, 0x42c8

    sub-float/2addr v5, v6

    invoke-static {v5, v11}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/cocos2d/f/e;->e(Lorg/cocos2d/l/e;)V

    iget v1, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v1, v8

    invoke-static {v1, v11}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/cocos2d/f/e;->e(Lorg/cocos2d/l/e;)V

    iget v0, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v0, v8

    const/high16 v1, 0x42c8

    add-float/2addr v0, v1

    invoke-static {v0, v11}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/cocos2d/f/e;->e(Lorg/cocos2d/l/e;)V

    const/16 v0, 0x65

    invoke-virtual {p0, v4, v0}, Lorg/cocos2d/tests/cj;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "No title"

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
