.class public final Lorg/cocos2d/h/d;
.super Lorg/cocos2d/h/s;


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/16 v0, 0xfa

    invoke-direct {p0, v0}, Lorg/cocos2d/h/d;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 7

    const/high16 v6, 0x4000

    const/high16 v5, -0x4080

    const/high16 v4, 0x3f80

    const/high16 v3, 0x3f00

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lorg/cocos2d/h/s;-><init>(I)V

    iput v5, p0, Lorg/cocos2d/h/d;->b:F

    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2d/h/d;->T:I

    invoke-static {v2, v2}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/d;->b(Lorg/cocos2d/l/e;)V

    const/high16 v0, 0x42a0

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/d;->t(F)V

    const/high16 v0, 0x4120

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/d;->u(F)V

    const/high16 v0, -0x3d90

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/d;->r(F)V

    invoke-virtual {p0, v2}, Lorg/cocos2d/h/d;->s(F)V

    const/high16 v0, 0x4170

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/d;->p(F)V

    invoke-virtual {p0, v2}, Lorg/cocos2d/h/d;->q(F)V

    const/high16 v0, 0x42b4

    iput v0, p0, Lorg/cocos2d/h/d;->o:F

    const/high16 v0, 0x43b4

    iput v0, p0, Lorg/cocos2d/h/d;->p:F

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v0

    iget v1, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v1, v6

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v0, v6

    invoke-static {v1, v0}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/d;->e(Lorg/cocos2d/l/e;)V

    invoke-static {}, Lorg/cocos2d/l/e;->b()Lorg/cocos2d/l/e;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/h/d;->n:Lorg/cocos2d/l/e;

    const/high16 v0, 0x4080

    iput v0, p0, Lorg/cocos2d/h/d;->F:F

    iput v4, p0, Lorg/cocos2d/h/d;->G:F

    const/high16 v0, 0x41f0

    iput v0, p0, Lorg/cocos2d/h/d;->d:F

    const/high16 v0, 0x4120

    iput v0, p0, Lorg/cocos2d/h/d;->e:F

    iput v5, p0, Lorg/cocos2d/h/d;->f:F

    iget v0, p0, Lorg/cocos2d/h/d;->O:I

    int-to-float v0, v0

    iget v1, p0, Lorg/cocos2d/h/d;->F:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/cocos2d/h/d;->Q:F

    iget-object v0, p0, Lorg/cocos2d/h/d;->H:Lorg/cocos2d/l/l;

    iput v3, v0, Lorg/cocos2d/l/l;->a:F

    iget-object v0, p0, Lorg/cocos2d/h/d;->H:Lorg/cocos2d/l/l;

    iput v3, v0, Lorg/cocos2d/l/l;->b:F

    iget-object v0, p0, Lorg/cocos2d/h/d;->H:Lorg/cocos2d/l/l;

    iput v3, v0, Lorg/cocos2d/l/l;->c:F

    iget-object v0, p0, Lorg/cocos2d/h/d;->H:Lorg/cocos2d/l/l;

    iput v4, v0, Lorg/cocos2d/l/l;->d:F

    iget-object v0, p0, Lorg/cocos2d/h/d;->I:Lorg/cocos2d/l/l;

    iput v3, v0, Lorg/cocos2d/l/l;->a:F

    iget-object v0, p0, Lorg/cocos2d/h/d;->I:Lorg/cocos2d/l/l;

    iput v3, v0, Lorg/cocos2d/l/l;->b:F

    iget-object v0, p0, Lorg/cocos2d/h/d;->I:Lorg/cocos2d/l/l;

    iput v3, v0, Lorg/cocos2d/l/l;->c:F

    iget-object v0, p0, Lorg/cocos2d/h/d;->I:Lorg/cocos2d/l/l;

    iput v3, v0, Lorg/cocos2d/l/l;->d:F

    iget-object v0, p0, Lorg/cocos2d/h/d;->J:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->a:F

    iget-object v0, p0, Lorg/cocos2d/h/d;->J:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->b:F

    iget-object v0, p0, Lorg/cocos2d/h/d;->J:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->c:F

    iget-object v0, p0, Lorg/cocos2d/h/d;->J:Lorg/cocos2d/l/l;

    iput v4, v0, Lorg/cocos2d/l/l;->d:F

    iget-object v0, p0, Lorg/cocos2d/h/d;->K:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->a:F

    iget-object v0, p0, Lorg/cocos2d/h/d;->K:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->b:F

    iget-object v0, p0, Lorg/cocos2d/h/d;->K:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->c:F

    iget-object v0, p0, Lorg/cocos2d/h/d;->K:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->d:F

    invoke-static {}, Lorg/cocos2d/g/s;->a()Lorg/cocos2d/g/s;

    move-result-object v0

    const-string v1, "fire.png"

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/s;->a(Ljava/lang/String;)Lorg/cocos2d/opengl/i;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/d;->a(Lorg/cocos2d/opengl/i;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/d;->a(Z)V

    return-void
.end method

.method public static a()Lorg/cocos2d/h/d;
    .locals 1

    new-instance v0, Lorg/cocos2d/h/d;

    invoke-direct {v0}, Lorg/cocos2d/h/d;-><init>()V

    return-object v0
.end method

.method public static b()Lorg/cocos2d/h/d;
    .locals 2

    new-instance v0, Lorg/cocos2d/h/d;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Lorg/cocos2d/h/d;-><init>(I)V

    return-object v0
.end method
