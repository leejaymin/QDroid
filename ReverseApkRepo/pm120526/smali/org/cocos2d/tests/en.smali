.class abstract Lorg/cocos2d/tests/en;
.super Lorg/cocos2d/e/a;

# interfaces
.implements Lorg/cocos2d/a/i;


# instance fields
.field d:Lorg/cocos2d/h/l;

.field e:Lorg/cocos2d/g/o;

.field private f:Lorg/cocos2d/m/b/b;


# direct methods
.method public constructor <init>()V
    .locals 13

    const/high16 v12, 0x41f0

    const/16 v11, 0x64

    const/4 v10, 0x1

    const/high16 v9, 0x4000

    const/4 v8, 0x0

    new-instance v0, Lorg/cocos2d/l/k;

    const/16 v1, 0x7f

    const/16 v2, 0x7f

    const/16 v3, 0x7f

    const/16 v4, 0xff

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/cocos2d/l/k;-><init>(IIII)V

    invoke-direct {p0, v0}, Lorg/cocos2d/e/a;-><init>(Lorg/cocos2d/l/k;)V

    new-instance v0, Lorg/cocos2d/m/b/b;

    invoke-direct {v0}, Lorg/cocos2d/m/b/b;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/tests/en;->f:Lorg/cocos2d/m/b/b;

    invoke-virtual {p0, v10}, Lorg/cocos2d/tests/en;->a(Z)V

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cocos2d/tests/en;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DroidSans"

    const/high16 v3, 0x4190

    invoke-static {v1, v2, v3}, Lorg/cocos2d/g/d;->a(Ljava/lang/String;Ljava/lang/String;F)Lorg/cocos2d/g/d;

    move-result-object v1

    iget v2, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v2, v9

    iget v3, v0, Lorg/cocos2d/l/g;->b:F

    const/high16 v4, 0x4248

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/g/d;->e(Lorg/cocos2d/l/e;)V

    invoke-virtual {p0, v1, v11}, Lorg/cocos2d/tests/en;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    const-string v1, "Tap the screen"

    const-string v2, "DroidSerif"

    const/high16 v3, 0x4180

    invoke-static {v1, v2, v3}, Lorg/cocos2d/g/d;->a(Ljava/lang/String;Ljava/lang/String;F)Lorg/cocos2d/g/d;

    move-result-object v1

    invoke-virtual {p0, v1, v11}, Lorg/cocos2d/tests/en;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    iget v2, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v2, v9

    iget v3, v0, Lorg/cocos2d/l/g;->b:F

    const/high16 v4, 0x42a0

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/g/d;->e(Lorg/cocos2d/l/e;)V

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

    const-string v4, "toggleCallback"

    const/4 v5, 0x2

    new-array v5, v5, [Lorg/cocos2d/f/c;

    const/4 v6, 0x0

    const-string v7, "Free Movement"

    invoke-static {v7}, Lorg/cocos2d/f/d;->b(Ljava/lang/String;)Lorg/cocos2d/f/d;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v6, "Grouped Movement"

    invoke-static {v6}, Lorg/cocos2d/f/d;->b(Ljava/lang/String;)Lorg/cocos2d/f/d;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {p0, v4, v5}, Lorg/cocos2d/f/h;->a(Lorg/cocos2d/g/i;Ljava/lang/String;[Lorg/cocos2d/f/c;)Lorg/cocos2d/f/h;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Lorg/cocos2d/f/c;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    aput-object v2, v5, v10

    const/4 v6, 0x2

    aput-object v3, v5, v6

    const/4 v6, 0x3

    aput-object v4, v5, v6

    invoke-static {v5}, Lorg/cocos2d/f/a;->a([Lorg/cocos2d/f/c;)Lorg/cocos2d/f/a;

    move-result-object v5

    invoke-static {v8, v8}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/cocos2d/f/a;->e(Lorg/cocos2d/l/e;)V

    iget v6, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v6, v9

    const/high16 v7, 0x42c8

    sub-float/2addr v6, v7

    invoke-static {v6, v12}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/cocos2d/f/e;->e(Lorg/cocos2d/l/e;)V

    iget v1, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v1, v9

    invoke-static {v1, v12}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/cocos2d/f/e;->e(Lorg/cocos2d/l/e;)V

    iget v1, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v1, v9

    const/high16 v2, 0x42c8

    add-float/2addr v1, v2

    invoke-static {v1, v12}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/cocos2d/f/e;->e(Lorg/cocos2d/l/e;)V

    const/high16 v1, 0x42c8

    invoke-static {v8, v1}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/cocos2d/f/h;->e(Lorg/cocos2d/l/e;)V

    invoke-static {v8, v8}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/cocos2d/f/h;->d(Lorg/cocos2d/l/e;)V

    invoke-virtual {p0, v5, v11}, Lorg/cocos2d/tests/en;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    const-string v1, "0000"

    const-string v2, "fps_images.png"

    const/16 v3, 0x10

    const/16 v4, 0x18

    const/16 v5, 0x2e

    invoke-static {v1, v2, v3, v4, v5}, Lorg/cocos2d/g/g;->a(Ljava/lang/CharSequence;Ljava/lang/String;IIC)Lorg/cocos2d/g/g;

    move-result-object v1

    invoke-virtual {p0, v1, v11, v10}, Lorg/cocos2d/tests/en;->a(Lorg/cocos2d/g/i;II)Lorg/cocos2d/g/i;

    iget v2, v0, Lorg/cocos2d/l/g;->a:F

    const/high16 v3, 0x4284

    sub-float/2addr v2, v3

    const/high16 v3, 0x4248

    invoke-static {v2, v3}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/g/g;->e(Lorg/cocos2d/l/e;)V

    const-string v1, "background3.png"

    invoke-static {v1}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2d/tests/en;->e:Lorg/cocos2d/g/o;

    iget-object v1, p0, Lorg/cocos2d/tests/en;->e:Lorg/cocos2d/g/o;

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Lorg/cocos2d/tests/en;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    iget-object v1, p0, Lorg/cocos2d/tests/en;->e:Lorg/cocos2d/g/o;

    iget v2, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v2, v9

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    const/high16 v3, 0x4334

    sub-float/2addr v0, v3

    invoke-static {v2, v0}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    const/high16 v0, 0x4080

    const/high16 v1, 0x4396

    invoke-static {v1, v8}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/cocos2d/a/f/l;->a(FLorg/cocos2d/l/e;)Lorg/cocos2d/a/f/l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/a/f/i;->k()Lorg/cocos2d/a/f/i;

    move-result-object v1

    new-array v2, v10, [Lorg/cocos2d/a/a/b;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/tests/en;->e:Lorg/cocos2d/g/o;

    invoke-static {v0}, Lorg/cocos2d/a/a/d;->a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/a/d;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    invoke-virtual {p0}, Lorg/cocos2d/tests/en;->D()V

    return-void
.end method


# virtual methods
.method public final H()V
    .locals 3

    iget-object v0, p0, Lorg/cocos2d/tests/en;->d:Lorg/cocos2d/h/l;

    invoke-virtual {v0}, Lorg/cocos2d/h/l;->h()Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-static {}, Lorg/cocos2d/l/e;->b()Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/cocos2d/l/e;->a(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/tests/en;->d:Lorg/cocos2d/h/l;

    const/high16 v1, 0x4348

    const/high16 v2, 0x428c

    invoke-static {v1, v2}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/h/l;->e(Lorg/cocos2d/l/e;)V

    :cond_0
    return-void
.end method

.method public final a(F)V
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/cocos2d/tests/en;->e(I)Lorg/cocos2d/g/i;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/g/g;

    iget-object v1, p0, Lorg/cocos2d/tests/en;->f:Lorg/cocos2d/m/b/b;

    invoke-virtual {v1}, Lorg/cocos2d/m/b/b;->a()V

    iget-object v1, p0, Lorg/cocos2d/tests/en;->d:Lorg/cocos2d/h/l;

    invoke-virtual {v1}, Lorg/cocos2d/h/l;->N()I

    move-result v1

    invoke-static {v1}, Lorg/cocos2d/m/b/a;->a(I)I

    move-result v2

    const/4 v3, 0x4

    sub-int v2, v3, v2

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-gtz v2, :cond_0

    iget-object v2, p0, Lorg/cocos2d/tests/en;->f:Lorg/cocos2d/m/b/b;

    invoke-virtual {v2, v1}, Lorg/cocos2d/m/b/b;->a(I)Lorg/cocos2d/m/b/b;

    iget-object v1, p0, Lorg/cocos2d/tests/en;->f:Lorg/cocos2d/m/b/b;

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/g;->a(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v2, p0, Lorg/cocos2d/tests/en;->f:Lorg/cocos2d/m/b/b;

    const/16 v4, 0x30

    invoke-virtual {v2, v4}, Lorg/cocos2d/m/b/b;->a(C)Lorg/cocos2d/m/b/b;

    move v2, v3

    goto :goto_0
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v0, v1}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/cocos2d/g/c;->a(Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-static {}, Lorg/cocos2d/l/e;->b()Lorg/cocos2d/l/e;

    move-result-object v1

    iget-object v2, p0, Lorg/cocos2d/tests/en;->e:Lorg/cocos2d/g/o;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lorg/cocos2d/tests/en;->e:Lorg/cocos2d/g/o;

    invoke-virtual {v1}, Lorg/cocos2d/g/o;->E()Lorg/cocos2d/l/e;

    move-result-object v1

    :cond_0
    iget-object v2, p0, Lorg/cocos2d/tests/en;->d:Lorg/cocos2d/h/l;

    invoke-static {v0, v1}, Lorg/cocos2d/l/e;->c(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/cocos2d/h/l;->e(Lorg/cocos2d/l/e;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final c(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const-string v0, "No title"

    return-object v0
.end method
