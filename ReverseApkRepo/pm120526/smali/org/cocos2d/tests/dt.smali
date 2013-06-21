.class Lorg/cocos2d/tests/dt;
.super Lorg/cocos2d/tests/dq;


# instance fields
.field a:Lorg/cocos2d/g/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/cocos2d/tests/dq;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "MotionStreak(touch and move)"

    return-object v0
.end method

.method public final a_()V
    .locals 8

    const/high16 v7, 0x4000

    const/16 v6, 0xff

    invoke-super {p0}, Lorg/cocos2d/tests/dq;->a_()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/cocos2d/tests/dt;->a(Z)V

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v0

    new-instance v1, Lorg/cocos2d/g/h;

    const/high16 v2, 0x4040

    const-string v3, "streak.png"

    const/high16 v4, 0x4280

    new-instance v5, Lorg/cocos2d/l/k;

    invoke-direct {v5, v6, v6, v6, v6}, Lorg/cocos2d/l/k;-><init>(IIII)V

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/cocos2d/g/h;-><init>(FLjava/lang/String;FLorg/cocos2d/l/k;)V

    iput-object v1, p0, Lorg/cocos2d/tests/dt;->a:Lorg/cocos2d/g/h;

    iget-object v1, p0, Lorg/cocos2d/tests/dt;->a:Lorg/cocos2d/g/h;

    invoke-virtual {p0, v1}, Lorg/cocos2d/tests/dt;->a(Lorg/cocos2d/g/i;)Lorg/cocos2d/g/i;

    iget-object v1, p0, Lorg/cocos2d/tests/dt;->a:Lorg/cocos2d/g/h;

    iget v2, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v2, v7

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v0, v7

    invoke-virtual {v1, v2, v0}, Lorg/cocos2d/g/h;->d(FF)V

    return-void
.end method

.method public final c(Landroid/view/MotionEvent;)Z
    .locals 2

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

    iget-object v1, p0, Lorg/cocos2d/tests/dt;->a:Lorg/cocos2d/g/h;

    invoke-virtual {v1, v0}, Lorg/cocos2d/g/h;->e(Lorg/cocos2d/l/e;)V

    const/4 v0, 0x1

    return v0
.end method
