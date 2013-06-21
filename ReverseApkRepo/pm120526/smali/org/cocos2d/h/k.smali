.class public final Lorg/cocos2d/h/k;
.super Lorg/cocos2d/h/s;


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/16 v0, 0x15e

    invoke-direct {p0, v0}, Lorg/cocos2d/h/k;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 6

    const/high16 v5, 0x4000

    const/high16 v4, -0x4080

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lorg/cocos2d/h/s;-><init>(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/k;->a(Z)V

    iput v4, p0, Lorg/cocos2d/h/k;->b:F

    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2d/h/k;->T:I

    invoke-static {v2, v2}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/k;->b(Lorg/cocos2d/l/e;)V

    invoke-virtual {p0, v2}, Lorg/cocos2d/h/k;->r(F)V

    invoke-virtual {p0, v2}, Lorg/cocos2d/h/k;->s(F)V

    const/high16 v0, 0x41a0

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/k;->t(F)V

    const/high16 v0, 0x40a0

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/k;->u(F)V

    const/high16 v0, 0x42b4

    iput v0, p0, Lorg/cocos2d/h/k;->o:F

    const/high16 v0, 0x43b4

    iput v0, p0, Lorg/cocos2d/h/k;->p:F

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v0

    iget v1, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v1, v5

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v0, v5

    invoke-static {v1, v0}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/k;->e(Lorg/cocos2d/l/e;)V

    invoke-static {}, Lorg/cocos2d/l/e;->b()Lorg/cocos2d/l/e;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/h/k;->n:Lorg/cocos2d/l/e;

    iput v3, p0, Lorg/cocos2d/h/k;->F:F

    const/high16 v0, 0x3f00

    iput v0, p0, Lorg/cocos2d/h/k;->G:F

    const/high16 v0, 0x41f0

    iput v0, p0, Lorg/cocos2d/h/k;->d:F

    const/high16 v0, 0x4120

    iput v0, p0, Lorg/cocos2d/h/k;->e:F

    iput v4, p0, Lorg/cocos2d/h/k;->f:F

    iget v0, p0, Lorg/cocos2d/h/k;->O:I

    int-to-float v0, v0

    iget v1, p0, Lorg/cocos2d/h/k;->F:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/cocos2d/h/k;->Q:F

    iget-object v0, p0, Lorg/cocos2d/h/k;->H:Lorg/cocos2d/l/l;

    const v1, 0x3f428f5c

    iput v1, v0, Lorg/cocos2d/l/l;->a:F

    iget-object v0, p0, Lorg/cocos2d/h/k;->H:Lorg/cocos2d/l/l;

    const/high16 v1, 0x3e80

    iput v1, v0, Lorg/cocos2d/l/l;->b:F

    iget-object v0, p0, Lorg/cocos2d/h/k;->H:Lorg/cocos2d/l/l;

    const v1, 0x3df5c28f

    iput v1, v0, Lorg/cocos2d/l/l;->c:F

    iget-object v0, p0, Lorg/cocos2d/h/k;->H:Lorg/cocos2d/l/l;

    iput v3, v0, Lorg/cocos2d/l/l;->d:F

    iget-object v0, p0, Lorg/cocos2d/h/k;->I:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->a:F

    iget-object v0, p0, Lorg/cocos2d/h/k;->I:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->b:F

    iget-object v0, p0, Lorg/cocos2d/h/k;->I:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->c:F

    iget-object v0, p0, Lorg/cocos2d/h/k;->I:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->d:F

    iget-object v0, p0, Lorg/cocos2d/h/k;->J:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->a:F

    iget-object v0, p0, Lorg/cocos2d/h/k;->J:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->b:F

    iget-object v0, p0, Lorg/cocos2d/h/k;->J:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->c:F

    iget-object v0, p0, Lorg/cocos2d/h/k;->J:Lorg/cocos2d/l/l;

    iput v3, v0, Lorg/cocos2d/l/l;->d:F

    iget-object v0, p0, Lorg/cocos2d/h/k;->K:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->a:F

    iget-object v0, p0, Lorg/cocos2d/h/k;->K:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->b:F

    iget-object v0, p0, Lorg/cocos2d/h/k;->K:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->c:F

    iget-object v0, p0, Lorg/cocos2d/h/k;->K:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->d:F

    invoke-static {}, Lorg/cocos2d/g/s;->a()Lorg/cocos2d/g/s;

    move-result-object v0

    const-string v1, "fire.png"

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/s;->a(Ljava/lang/String;)Lorg/cocos2d/opengl/i;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/k;->a(Lorg/cocos2d/opengl/i;)V

    return-void
.end method

.method public static a()Lorg/cocos2d/h/k;
    .locals 1

    new-instance v0, Lorg/cocos2d/h/k;

    invoke-direct {v0}, Lorg/cocos2d/h/k;-><init>()V

    return-object v0
.end method

.method public static b()Lorg/cocos2d/h/k;
    .locals 2

    new-instance v0, Lorg/cocos2d/h/k;

    const/16 v1, 0xfa

    invoke-direct {v0, v1}, Lorg/cocos2d/h/k;-><init>(I)V

    return-object v0
.end method
