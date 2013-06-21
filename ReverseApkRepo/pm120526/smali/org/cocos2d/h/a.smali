.class public final Lorg/cocos2d/h/a;
.super Lorg/cocos2d/h/s;


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/cocos2d/h/a;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 7

    const/4 v6, 0x0

    const v5, 0x3dcccccd

    const/high16 v4, 0x4000

    const/high16 v3, 0x3f00

    const/4 v2, 0x0

    const/16 v0, 0x2bc

    invoke-direct {p0, v0}, Lorg/cocos2d/h/s;-><init>(I)V

    iput v5, p0, Lorg/cocos2d/h/a;->b:F

    iput v6, p0, Lorg/cocos2d/h/a;->T:I

    invoke-static {v2, v2}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/a;->b(Lorg/cocos2d/l/e;)V

    const/high16 v0, 0x428c

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/a;->t(F)V

    const/high16 v0, 0x4220

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/a;->u(F)V

    invoke-virtual {p0, v2}, Lorg/cocos2d/h/a;->r(F)V

    invoke-virtual {p0, v2}, Lorg/cocos2d/h/a;->s(F)V

    invoke-virtual {p0, v2}, Lorg/cocos2d/h/a;->p(F)V

    invoke-virtual {p0, v2}, Lorg/cocos2d/h/a;->q(F)V

    const/high16 v0, 0x42b4

    iput v0, p0, Lorg/cocos2d/h/a;->o:F

    const/high16 v0, 0x43b4

    iput v0, p0, Lorg/cocos2d/h/a;->p:F

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

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/a;->e(Lorg/cocos2d/l/e;)V

    invoke-static {}, Lorg/cocos2d/l/e;->b()Lorg/cocos2d/l/e;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/h/a;->n:Lorg/cocos2d/l/e;

    const/high16 v0, 0x40a0

    iput v0, p0, Lorg/cocos2d/h/a;->F:F

    iput v4, p0, Lorg/cocos2d/h/a;->G:F

    const/high16 v0, 0x4170

    iput v0, p0, Lorg/cocos2d/h/a;->d:F

    const/high16 v0, 0x4120

    iput v0, p0, Lorg/cocos2d/h/a;->e:F

    const/high16 v0, -0x4080

    iput v0, p0, Lorg/cocos2d/h/a;->f:F

    iget v0, p0, Lorg/cocos2d/h/a;->O:I

    int-to-float v0, v0

    iget v1, p0, Lorg/cocos2d/h/a;->b:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/cocos2d/h/a;->Q:F

    iget-object v0, p0, Lorg/cocos2d/h/a;->H:Lorg/cocos2d/l/l;

    const v1, 0x3f333333

    iput v1, v0, Lorg/cocos2d/l/l;->a:F

    iget-object v0, p0, Lorg/cocos2d/h/a;->H:Lorg/cocos2d/l/l;

    iput v5, v0, Lorg/cocos2d/l/l;->b:F

    iget-object v0, p0, Lorg/cocos2d/h/a;->H:Lorg/cocos2d/l/l;

    const v1, 0x3e4ccccd

    iput v1, v0, Lorg/cocos2d/l/l;->c:F

    iget-object v0, p0, Lorg/cocos2d/h/a;->H:Lorg/cocos2d/l/l;

    const/high16 v1, 0x3f80

    iput v1, v0, Lorg/cocos2d/l/l;->d:F

    iget-object v0, p0, Lorg/cocos2d/h/a;->I:Lorg/cocos2d/l/l;

    iput v3, v0, Lorg/cocos2d/l/l;->a:F

    iget-object v0, p0, Lorg/cocos2d/h/a;->I:Lorg/cocos2d/l/l;

    iput v3, v0, Lorg/cocos2d/l/l;->b:F

    iget-object v0, p0, Lorg/cocos2d/h/a;->I:Lorg/cocos2d/l/l;

    iput v3, v0, Lorg/cocos2d/l/l;->c:F

    iget-object v0, p0, Lorg/cocos2d/h/a;->I:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->d:F

    iget-object v0, p0, Lorg/cocos2d/h/a;->J:Lorg/cocos2d/l/l;

    iput v3, v0, Lorg/cocos2d/l/l;->a:F

    iget-object v0, p0, Lorg/cocos2d/h/a;->J:Lorg/cocos2d/l/l;

    iput v3, v0, Lorg/cocos2d/l/l;->b:F

    iget-object v0, p0, Lorg/cocos2d/h/a;->J:Lorg/cocos2d/l/l;

    iput v3, v0, Lorg/cocos2d/l/l;->c:F

    iget-object v0, p0, Lorg/cocos2d/h/a;->J:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->d:F

    iget-object v0, p0, Lorg/cocos2d/h/a;->K:Lorg/cocos2d/l/l;

    iput v3, v0, Lorg/cocos2d/l/l;->a:F

    iget-object v0, p0, Lorg/cocos2d/h/a;->K:Lorg/cocos2d/l/l;

    iput v3, v0, Lorg/cocos2d/l/l;->b:F

    iget-object v0, p0, Lorg/cocos2d/h/a;->K:Lorg/cocos2d/l/l;

    iput v3, v0, Lorg/cocos2d/l/l;->c:F

    iget-object v0, p0, Lorg/cocos2d/h/a;->K:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->d:F

    invoke-static {}, Lorg/cocos2d/g/s;->a()Lorg/cocos2d/g/s;

    move-result-object v0

    const-string v1, "fire.png"

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/s;->a(Ljava/lang/String;)Lorg/cocos2d/opengl/i;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/a;->a(Lorg/cocos2d/opengl/i;)V

    invoke-virtual {p0, v6}, Lorg/cocos2d/h/a;->a(Z)V

    return-void
.end method

.method public static a()Lorg/cocos2d/h/l;
    .locals 1

    new-instance v0, Lorg/cocos2d/h/a;

    invoke-direct {v0}, Lorg/cocos2d/h/a;-><init>()V

    return-object v0
.end method
