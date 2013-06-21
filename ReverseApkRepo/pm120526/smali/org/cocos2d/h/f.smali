.class public final Lorg/cocos2d/h/f;
.super Lorg/cocos2d/h/s;


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/cocos2d/h/f;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 7

    const v6, 0x3e4ccccd

    const/high16 v5, -0x4080

    const/high16 v4, 0x4000

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    const/16 v0, 0x96

    invoke-direct {p0, v0}, Lorg/cocos2d/h/s;-><init>(I)V

    iput v5, p0, Lorg/cocos2d/h/f;->b:F

    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2d/h/f;->T:I

    const/high16 v0, -0x3cb8

    const/high16 v1, 0x4348

    invoke-static {v0, v1}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/f;->b(Lorg/cocos2d/l/e;)V

    const/high16 v0, 0x4170

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/f;->t(F)V

    const/high16 v0, 0x40a0

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/f;->u(F)V

    invoke-virtual {p0, v2}, Lorg/cocos2d/h/f;->r(F)V

    invoke-virtual {p0, v2}, Lorg/cocos2d/h/f;->s(F)V

    invoke-virtual {p0, v2}, Lorg/cocos2d/h/f;->p(F)V

    invoke-virtual {p0, v2}, Lorg/cocos2d/h/f;->q(F)V

    const/high16 v0, 0x42b4

    iput v0, p0, Lorg/cocos2d/h/f;->o:F

    const/high16 v0, 0x43b4

    iput v0, p0, Lorg/cocos2d/h/f;->p:F

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v0

    iget v1, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v1, v4

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v0, v4

    invoke-static {v1, v0}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/f;->e(Lorg/cocos2d/l/e;)V

    invoke-static {}, Lorg/cocos2d/l/e;->b()Lorg/cocos2d/l/e;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/h/f;->n:Lorg/cocos2d/l/e;

    iput v4, p0, Lorg/cocos2d/h/f;->F:F

    iput v3, p0, Lorg/cocos2d/h/f;->G:F

    const/high16 v0, 0x4270

    iput v0, p0, Lorg/cocos2d/h/f;->d:F

    const/high16 v0, 0x4120

    iput v0, p0, Lorg/cocos2d/h/f;->e:F

    iput v5, p0, Lorg/cocos2d/h/f;->f:F

    iget v0, p0, Lorg/cocos2d/h/f;->O:I

    int-to-float v0, v0

    iget v1, p0, Lorg/cocos2d/h/f;->F:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/cocos2d/h/f;->Q:F

    iget-object v0, p0, Lorg/cocos2d/h/f;->H:Lorg/cocos2d/l/l;

    iput v6, v0, Lorg/cocos2d/l/l;->a:F

    iget-object v0, p0, Lorg/cocos2d/h/f;->H:Lorg/cocos2d/l/l;

    const v1, 0x3ecccccd

    iput v1, v0, Lorg/cocos2d/l/l;->b:F

    iget-object v0, p0, Lorg/cocos2d/h/f;->H:Lorg/cocos2d/l/l;

    const v1, 0x3f333333

    iput v1, v0, Lorg/cocos2d/l/l;->c:F

    iget-object v0, p0, Lorg/cocos2d/h/f;->H:Lorg/cocos2d/l/l;

    iput v3, v0, Lorg/cocos2d/l/l;->d:F

    iget-object v0, p0, Lorg/cocos2d/h/f;->I:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->a:F

    iget-object v0, p0, Lorg/cocos2d/h/f;->I:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->b:F

    iget-object v0, p0, Lorg/cocos2d/h/f;->I:Lorg/cocos2d/l/l;

    iput v6, v0, Lorg/cocos2d/l/l;->c:F

    iget-object v0, p0, Lorg/cocos2d/h/f;->I:Lorg/cocos2d/l/l;

    const v1, 0x3dcccccd

    iput v1, v0, Lorg/cocos2d/l/l;->d:F

    iget-object v0, p0, Lorg/cocos2d/h/f;->J:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->a:F

    iget-object v0, p0, Lorg/cocos2d/h/f;->J:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->b:F

    iget-object v0, p0, Lorg/cocos2d/h/f;->J:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->c:F

    iget-object v0, p0, Lorg/cocos2d/h/f;->J:Lorg/cocos2d/l/l;

    iput v3, v0, Lorg/cocos2d/l/l;->d:F

    iget-object v0, p0, Lorg/cocos2d/h/f;->K:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->a:F

    iget-object v0, p0, Lorg/cocos2d/h/f;->K:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->b:F

    iget-object v0, p0, Lorg/cocos2d/h/f;->K:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->c:F

    iget-object v0, p0, Lorg/cocos2d/h/f;->K:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->d:F

    invoke-static {}, Lorg/cocos2d/g/s;->a()Lorg/cocos2d/g/s;

    move-result-object v0

    const-string v1, "fire.png"

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/s;->a(Ljava/lang/String;)Lorg/cocos2d/opengl/i;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/f;->a(Lorg/cocos2d/opengl/i;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/f;->a(Z)V

    return-void
.end method

.method public static a()Lorg/cocos2d/h/l;
    .locals 1

    new-instance v0, Lorg/cocos2d/h/f;

    invoke-direct {v0}, Lorg/cocos2d/h/f;-><init>()V

    return-object v0
.end method
