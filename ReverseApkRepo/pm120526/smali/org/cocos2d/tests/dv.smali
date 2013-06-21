.class Lorg/cocos2d/tests/dv;
.super Lorg/cocos2d/tests/dw;


# instance fields
.field a:Lorg/cocos2d/l/e;


# direct methods
.method public constructor <init>()V
    .locals 12

    const/high16 v11, 0x4020

    const/high16 v10, 0x3f80

    const/4 v9, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Lorg/cocos2d/tests/dw;-><init>()V

    new-instance v0, Lorg/cocos2d/l/e;

    invoke-direct {v0}, Lorg/cocos2d/l/e;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/tests/dv;->a:Lorg/cocos2d/l/e;

    invoke-virtual {p0, v9}, Lorg/cocos2d/tests/dv;->a(Z)V

    const-string v0, "powered.png"

    invoke-static {v0}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v7

    invoke-virtual {v7, v11}, Lorg/cocos2d/g/o;->e(F)V

    invoke-static {v5, v5}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/cocos2d/g/o;->d(Lorg/cocos2d/l/e;)V

    const-string v0, "tiles.png"

    const-string v1, "levelmap.tga"

    invoke-static {v0, v1}, Lorg/cocos2d/g/u;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/cocos2d/g/u;

    move-result-object v8

    invoke-static {v5, v5}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/cocos2d/g/u;->d(Lorg/cocos2d/l/e;)V

    const-string v0, "background.png"

    invoke-static {v0}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v1

    const/high16 v0, 0x3fc0

    invoke-virtual {v1, v0}, Lorg/cocos2d/g/o;->e(F)V

    invoke-static {v5, v5}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/cocos2d/g/o;->d(Lorg/cocos2d/l/e;)V

    invoke-static {}, Lorg/cocos2d/g/k;->a()Lorg/cocos2d/g/k;

    move-result-object v0

    const/4 v2, -0x1

    const v3, 0x3ecccccd

    const/high16 v4, 0x3f00

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lorg/cocos2d/g/k;->a(Lorg/cocos2d/g/i;IFFFF)Lorg/cocos2d/g/i;

    const/high16 v6, -0x3cb8

    move-object v1, v8

    move v2, v9

    move v3, v10

    move v4, v10

    invoke-virtual/range {v0 .. v6}, Lorg/cocos2d/g/k;->a(Lorg/cocos2d/g/i;IFFFF)Lorg/cocos2d/g/i;

    const/4 v2, 0x2

    const/high16 v3, 0x4040

    const/high16 v5, 0x4348

    const/high16 v6, 0x447a

    move-object v1, v7

    move v4, v11

    invoke-virtual/range {v0 .. v6}, Lorg/cocos2d/g/k;->a(Lorg/cocos2d/g/i;IFFFF)Lorg/cocos2d/g/i;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v9}, Lorg/cocos2d/tests/dv;->a(Lorg/cocos2d/g/i;II)Lorg/cocos2d/g/i;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "Parallax: drag screen"

    return-object v0
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lorg/cocos2d/tests/dv;->a:Lorg/cocos2d/l/e;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/l/e;->b(FF)V

    const/4 v0, 0x1

    return v0
.end method

.method public final b(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final c(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x1

    invoke-static {}, Lorg/cocos2d/l/e;->b()Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v1, v2}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/cocos2d/g/c;->a(Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v3

    iget-object v4, p0, Lorg/cocos2d/tests/dv;->a:Lorg/cocos2d/l/e;

    invoke-virtual {v3, v4}, Lorg/cocos2d/g/c;->a(Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v3

    iget v4, v2, Lorg/cocos2d/l/e;->a:F

    iget v5, v3, Lorg/cocos2d/l/e;->a:F

    sub-float/2addr v4, v5

    iput v4, v0, Lorg/cocos2d/l/e;->a:F

    iget v2, v2, Lorg/cocos2d/l/e;->b:F

    iget v3, v3, Lorg/cocos2d/l/e;->b:F

    sub-float/2addr v2, v3

    iput v2, v0, Lorg/cocos2d/l/e;->b:F

    invoke-virtual {p0, v6}, Lorg/cocos2d/tests/dv;->e(I)Lorg/cocos2d/g/i;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cocos2d/g/i;->r()Lorg/cocos2d/l/e;

    move-result-object v3

    invoke-static {v3, v0}, Lorg/cocos2d/l/e;->b(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/cocos2d/g/i;->e(Lorg/cocos2d/l/e;)V

    iput-object v1, p0, Lorg/cocos2d/tests/dv;->a:Lorg/cocos2d/l/e;

    return v6
.end method

.method public final d(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ParallaxTest: registerWithTouchDispatcher"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Lorg/cocos2d/c/d;->b()Lorg/cocos2d/c/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/cocos2d/c/d;->a(Lorg/cocos2d/i/d;)V

    return-void
.end method
