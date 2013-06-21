.class Lorg/cocos2d/tests/gy;
.super Lorg/cocos2d/e/b;


# direct methods
.method public constructor <init>()V
    .locals 11

    const/high16 v10, 0x42c8

    const/4 v9, 0x0

    const/high16 v8, 0x41f0

    const/4 v7, 0x1

    const/high16 v6, 0x4000

    invoke-direct {p0}, Lorg/cocos2d/e/b;-><init>()V

    invoke-virtual {p0, v7}, Lorg/cocos2d/tests/gy;->a(Z)V

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cocos2d/tests/gy;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DroidSans"

    const/high16 v3, 0x41c0

    invoke-static {v1, v2, v3}, Lorg/cocos2d/g/d;->a(Ljava/lang/String;Ljava/lang/String;F)Lorg/cocos2d/g/d;

    move-result-object v1

    invoke-virtual {p0, v1, v7}, Lorg/cocos2d/tests/gy;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    iget v2, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v2, v6

    iget v3, v0, Lorg/cocos2d/l/g;->b:F

    const/high16 v4, 0x4248

    sub-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/cocos2d/g/d;->d(FF)V

    invoke-virtual {p0}, Lorg/cocos2d/tests/gy;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "DroidSerif"

    const/high16 v3, 0x4160

    invoke-static {v1, v2, v3}, Lorg/cocos2d/g/d;->a(Ljava/lang/String;Ljava/lang/String;F)Lorg/cocos2d/g/d;

    move-result-object v1

    invoke-virtual {p0, v1, v7}, Lorg/cocos2d/tests/gy;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    iget v2, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v2, v6

    iget v3, v0, Lorg/cocos2d/l/g;->b:F

    const/high16 v4, 0x42a0

    sub-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/cocos2d/g/d;->d(FF)V

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

    invoke-virtual {v4, v9, v9}, Lorg/cocos2d/f/a;->d(FF)V

    iget v5, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v5, v6

    sub-float/2addr v5, v10

    invoke-virtual {v1, v5, v8}, Lorg/cocos2d/f/e;->d(FF)V

    iget v1, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v1, v6

    invoke-virtual {v2, v1, v8}, Lorg/cocos2d/f/e;->d(FF)V

    iget v0, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v0, v6

    add-float/2addr v0, v10

    invoke-virtual {v3, v0, v8}, Lorg/cocos2d/f/e;->d(FF)V

    invoke-virtual {p0, v4, v7}, Lorg/cocos2d/tests/gy;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "No title"

    return-object v0
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "drag the screen"

    return-object v0
.end method

.method public final b(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final c(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    sub-int/2addr v0, v3

    if-gtz v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v1, v2}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v0

    invoke-static {v2, v0}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/cocos2d/g/c;->a(Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/cocos2d/g/c;->a(Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/cocos2d/l/e;->c(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {p0, v3}, Lorg/cocos2d/tests/gy;->e(I)Lorg/cocos2d/g/i;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/g/i;->r()Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/cocos2d/l/e;->b(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/cocos2d/g/i;->e(Lorg/cocos2d/l/e;)V

    move v0, v3

    goto :goto_0
.end method

.method public final d(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()V
    .locals 1

    invoke-static {}, Lorg/cocos2d/c/d;->b()Lorg/cocos2d/c/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/cocos2d/c/d;->a(Lorg/cocos2d/i/d;)V

    return-void
.end method
