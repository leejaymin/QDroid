.class public final Lorg/cocos2d/h/e;
.super Lorg/cocos2d/h/s;


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/cocos2d/h/e;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 7

    const/high16 v6, 0x4120

    const/high16 v5, 0x4000

    const/high16 v4, -0x4080

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    const/16 v0, 0xc8

    invoke-direct {p0, v0}, Lorg/cocos2d/h/s;-><init>(I)V

    iput v4, p0, Lorg/cocos2d/h/e;->b:F

    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2d/h/e;->T:I

    invoke-static {v2, v2}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/e;->b(Lorg/cocos2d/l/e;)V

    const/high16 v0, 0x4270

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/e;->t(F)V

    invoke-virtual {p0, v6}, Lorg/cocos2d/h/e;->u(F)V

    const/high16 v0, -0x3d60

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/e;->r(F)V

    invoke-virtual {p0, v2}, Lorg/cocos2d/h/e;->s(F)V

    const/high16 v0, 0x42a0

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/e;->p(F)V

    invoke-virtual {p0, v2}, Lorg/cocos2d/h/e;->q(F)V

    const/high16 v0, 0x42b4

    iput v0, p0, Lorg/cocos2d/h/e;->o:F

    const/high16 v0, 0x43b4

    iput v0, p0, Lorg/cocos2d/h/e;->p:F

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

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/e;->e(Lorg/cocos2d/l/e;)V

    invoke-static {}, Lorg/cocos2d/l/e;->b()Lorg/cocos2d/l/e;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/h/e;->n:Lorg/cocos2d/l/e;

    const/high16 v0, 0x4080

    iput v0, p0, Lorg/cocos2d/h/e;->F:F

    iput v3, p0, Lorg/cocos2d/h/e;->G:F

    const/high16 v0, 0x4214

    iput v0, p0, Lorg/cocos2d/h/e;->d:F

    iput v6, p0, Lorg/cocos2d/h/e;->e:F

    iput v4, p0, Lorg/cocos2d/h/e;->f:F

    iget v0, p0, Lorg/cocos2d/h/e;->O:I

    int-to-float v0, v0

    iget v1, p0, Lorg/cocos2d/h/e;->F:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/cocos2d/h/e;->Q:F

    iget-object v0, p0, Lorg/cocos2d/h/e;->H:Lorg/cocos2d/l/l;

    const v1, 0x3df5c28f

    iput v1, v0, Lorg/cocos2d/l/l;->a:F

    iget-object v0, p0, Lorg/cocos2d/h/e;->H:Lorg/cocos2d/l/l;

    const/high16 v1, 0x3e80

    iput v1, v0, Lorg/cocos2d/l/l;->b:F

    iget-object v0, p0, Lorg/cocos2d/h/e;->H:Lorg/cocos2d/l/l;

    const v1, 0x3f428f5c

    iput v1, v0, Lorg/cocos2d/l/l;->c:F

    iget-object v0, p0, Lorg/cocos2d/h/e;->H:Lorg/cocos2d/l/l;

    iput v3, v0, Lorg/cocos2d/l/l;->d:F

    iget-object v0, p0, Lorg/cocos2d/h/e;->I:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->a:F

    iget-object v0, p0, Lorg/cocos2d/h/e;->I:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->b:F

    iget-object v0, p0, Lorg/cocos2d/h/e;->I:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->c:F

    iget-object v0, p0, Lorg/cocos2d/h/e;->I:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->d:F

    iget-object v0, p0, Lorg/cocos2d/h/e;->J:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->a:F

    iget-object v0, p0, Lorg/cocos2d/h/e;->J:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->b:F

    iget-object v0, p0, Lorg/cocos2d/h/e;->J:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->c:F

    iget-object v0, p0, Lorg/cocos2d/h/e;->J:Lorg/cocos2d/l/l;

    iput v3, v0, Lorg/cocos2d/l/l;->d:F

    iget-object v0, p0, Lorg/cocos2d/h/e;->K:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->a:F

    iget-object v0, p0, Lorg/cocos2d/h/e;->K:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->b:F

    iget-object v0, p0, Lorg/cocos2d/h/e;->K:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->c:F

    iget-object v0, p0, Lorg/cocos2d/h/e;->K:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->d:F

    invoke-static {}, Lorg/cocos2d/g/s;->a()Lorg/cocos2d/g/s;

    move-result-object v0

    const-string v1, "fire.png"

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/s;->a(Ljava/lang/String;)Lorg/cocos2d/opengl/i;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/e;->a(Lorg/cocos2d/opengl/i;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/e;->a(Z)V

    return-void
.end method

.method public static a()Lorg/cocos2d/h/l;
    .locals 1

    new-instance v0, Lorg/cocos2d/h/e;

    invoke-direct {v0}, Lorg/cocos2d/h/e;-><init>()V

    return-object v0
.end method
