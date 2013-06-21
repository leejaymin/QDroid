.class public final Lorg/cocos2d/h/g;
.super Lorg/cocos2d/h/s;


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/cocos2d/h/g;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 7

    const v6, 0x3f333333

    const/high16 v5, -0x4080

    const/high16 v4, 0x4000

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lorg/cocos2d/h/s;-><init>(I)V

    iput v5, p0, Lorg/cocos2d/h/g;->b:F

    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2d/h/g;->T:I

    const/high16 v0, 0x4120

    const/high16 v1, -0x3ee0

    invoke-static {v0, v1}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/g;->b(Lorg/cocos2d/l/e;)V

    invoke-virtual {p0, v2}, Lorg/cocos2d/h/g;->r(F)V

    invoke-virtual {p0, v3}, Lorg/cocos2d/h/g;->s(F)V

    invoke-virtual {p0, v2}, Lorg/cocos2d/h/g;->p(F)V

    invoke-virtual {p0, v3}, Lorg/cocos2d/h/g;->q(F)V

    const/high16 v0, 0x4302

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/g;->t(F)V

    const/high16 v0, 0x41f0

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/g;->u(F)V

    const/high16 v0, -0x3d4c

    iput v0, p0, Lorg/cocos2d/h/g;->o:F

    const/high16 v0, 0x40a0

    iput v0, p0, Lorg/cocos2d/h/g;->p:F

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v0

    iget v0, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v0, v4

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v1

    iget v1, v1, Lorg/cocos2d/l/g;->b:F

    invoke-static {v0, v1}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/g;->e(Lorg/cocos2d/l/e;)V

    iget-object v0, p0, Lorg/cocos2d/h/g;->n:Lorg/cocos2d/l/e;

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v1

    iget v1, v1, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v1, v4

    iput v1, v0, Lorg/cocos2d/l/e;->a:F

    iget-object v0, p0, Lorg/cocos2d/h/g;->n:Lorg/cocos2d/l/e;

    iput v2, v0, Lorg/cocos2d/l/e;->b:F

    const/high16 v0, 0x4090

    iput v0, p0, Lorg/cocos2d/h/g;->F:F

    iput v2, p0, Lorg/cocos2d/h/g;->G:F

    const/high16 v0, 0x4080

    iput v0, p0, Lorg/cocos2d/h/g;->q:F

    iput v4, p0, Lorg/cocos2d/h/g;->E:F

    const/high16 v0, 0x4080

    iput v0, p0, Lorg/cocos2d/h/g;->d:F

    iput v4, p0, Lorg/cocos2d/h/g;->e:F

    iput v5, p0, Lorg/cocos2d/h/g;->f:F

    const/high16 v0, 0x41a0

    iput v0, p0, Lorg/cocos2d/h/g;->Q:F

    iget-object v0, p0, Lorg/cocos2d/h/g;->H:Lorg/cocos2d/l/l;

    iput v6, v0, Lorg/cocos2d/l/l;->a:F

    iget-object v0, p0, Lorg/cocos2d/h/g;->H:Lorg/cocos2d/l/l;

    const v1, 0x3f4ccccd

    iput v1, v0, Lorg/cocos2d/l/l;->b:F

    iget-object v0, p0, Lorg/cocos2d/h/g;->H:Lorg/cocos2d/l/l;

    iput v3, v0, Lorg/cocos2d/l/l;->c:F

    iget-object v0, p0, Lorg/cocos2d/h/g;->H:Lorg/cocos2d/l/l;

    iput v3, v0, Lorg/cocos2d/l/l;->d:F

    iget-object v0, p0, Lorg/cocos2d/h/g;->I:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->a:F

    iget-object v0, p0, Lorg/cocos2d/h/g;->I:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->b:F

    iget-object v0, p0, Lorg/cocos2d/h/g;->I:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->c:F

    iget-object v0, p0, Lorg/cocos2d/h/g;->I:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->d:F

    iget-object v0, p0, Lorg/cocos2d/h/g;->J:Lorg/cocos2d/l/l;

    iput v6, v0, Lorg/cocos2d/l/l;->a:F

    iget-object v0, p0, Lorg/cocos2d/h/g;->J:Lorg/cocos2d/l/l;

    const v1, 0x3f4ccccd

    iput v1, v0, Lorg/cocos2d/l/l;->b:F

    iget-object v0, p0, Lorg/cocos2d/h/g;->J:Lorg/cocos2d/l/l;

    iput v3, v0, Lorg/cocos2d/l/l;->c:F

    iget-object v0, p0, Lorg/cocos2d/h/g;->J:Lorg/cocos2d/l/l;

    const/high16 v1, 0x3f00

    iput v1, v0, Lorg/cocos2d/l/l;->d:F

    iget-object v0, p0, Lorg/cocos2d/h/g;->K:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->a:F

    iget-object v0, p0, Lorg/cocos2d/h/g;->K:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->b:F

    iget-object v0, p0, Lorg/cocos2d/h/g;->K:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->c:F

    iget-object v0, p0, Lorg/cocos2d/h/g;->K:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->d:F

    invoke-static {}, Lorg/cocos2d/g/s;->a()Lorg/cocos2d/g/s;

    move-result-object v0

    const-string v1, "fire.png"

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/s;->a(Ljava/lang/String;)Lorg/cocos2d/opengl/i;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/g;->a(Lorg/cocos2d/opengl/i;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/g;->a(Z)V

    return-void
.end method

.method public static a()Lorg/cocos2d/h/l;
    .locals 1

    new-instance v0, Lorg/cocos2d/h/g;

    invoke-direct {v0}, Lorg/cocos2d/h/g;-><init>()V

    return-object v0
.end method
