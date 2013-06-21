.class public final Lorg/cocos2d/h/i;
.super Lorg/cocos2d/h/s;


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/cocos2d/h/i;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 8

    const/high16 v7, 0x4120

    const/high16 v6, 0x40a0

    const/high16 v5, -0x4080

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    const/16 v0, 0x2bc

    invoke-direct {p0, v0}, Lorg/cocos2d/h/s;-><init>(I)V

    iput v5, p0, Lorg/cocos2d/h/i;->b:F

    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2d/h/i;->T:I

    invoke-static {v3, v5}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/i;->b(Lorg/cocos2d/l/e;)V

    invoke-virtual {p0, v6}, Lorg/cocos2d/h/i;->t(F)V

    invoke-virtual {p0, v4}, Lorg/cocos2d/h/i;->u(F)V

    invoke-virtual {p0, v3}, Lorg/cocos2d/h/i;->r(F)V

    invoke-virtual {p0, v4}, Lorg/cocos2d/h/i;->s(F)V

    invoke-virtual {p0, v3}, Lorg/cocos2d/h/i;->p(F)V

    invoke-virtual {p0, v4}, Lorg/cocos2d/h/i;->q(F)V

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v0

    iget v1, v0, Lorg/cocos2d/l/g;->a:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    iget v2, v0, Lorg/cocos2d/l/g;->b:F

    add-float/2addr v2, v7

    invoke-static {v1, v2}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/cocos2d/h/i;->e(Lorg/cocos2d/l/e;)V

    iget v0, v0, Lorg/cocos2d/l/g;->a:F

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    invoke-static {v0, v3}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/h/i;->n:Lorg/cocos2d/l/e;

    const/high16 v0, -0x3d4c

    iput v0, p0, Lorg/cocos2d/h/i;->o:F

    iput v6, p0, Lorg/cocos2d/h/i;->p:F

    const/high16 v0, 0x4234

    iput v0, p0, Lorg/cocos2d/h/i;->F:F

    const/high16 v0, 0x4170

    iput v0, p0, Lorg/cocos2d/h/i;->G:F

    iput v7, p0, Lorg/cocos2d/h/i;->d:F

    iput v6, p0, Lorg/cocos2d/h/i;->e:F

    iput v5, p0, Lorg/cocos2d/h/i;->f:F

    iput v7, p0, Lorg/cocos2d/h/i;->Q:F

    iget-object v0, p0, Lorg/cocos2d/h/i;->H:Lorg/cocos2d/l/l;

    iput v4, v0, Lorg/cocos2d/l/l;->a:F

    iget-object v0, p0, Lorg/cocos2d/h/i;->H:Lorg/cocos2d/l/l;

    iput v4, v0, Lorg/cocos2d/l/l;->b:F

    iget-object v0, p0, Lorg/cocos2d/h/i;->H:Lorg/cocos2d/l/l;

    iput v4, v0, Lorg/cocos2d/l/l;->c:F

    iget-object v0, p0, Lorg/cocos2d/h/i;->H:Lorg/cocos2d/l/l;

    iput v4, v0, Lorg/cocos2d/l/l;->d:F

    iget-object v0, p0, Lorg/cocos2d/h/i;->I:Lorg/cocos2d/l/l;

    iput v3, v0, Lorg/cocos2d/l/l;->a:F

    iget-object v0, p0, Lorg/cocos2d/h/i;->I:Lorg/cocos2d/l/l;

    iput v3, v0, Lorg/cocos2d/l/l;->b:F

    iget-object v0, p0, Lorg/cocos2d/h/i;->I:Lorg/cocos2d/l/l;

    iput v3, v0, Lorg/cocos2d/l/l;->c:F

    iget-object v0, p0, Lorg/cocos2d/h/i;->I:Lorg/cocos2d/l/l;

    iput v3, v0, Lorg/cocos2d/l/l;->d:F

    iget-object v0, p0, Lorg/cocos2d/h/i;->J:Lorg/cocos2d/l/l;

    iput v4, v0, Lorg/cocos2d/l/l;->a:F

    iget-object v0, p0, Lorg/cocos2d/h/i;->J:Lorg/cocos2d/l/l;

    iput v4, v0, Lorg/cocos2d/l/l;->b:F

    iget-object v0, p0, Lorg/cocos2d/h/i;->J:Lorg/cocos2d/l/l;

    iput v4, v0, Lorg/cocos2d/l/l;->c:F

    iget-object v0, p0, Lorg/cocos2d/h/i;->J:Lorg/cocos2d/l/l;

    iput v3, v0, Lorg/cocos2d/l/l;->d:F

    iget-object v0, p0, Lorg/cocos2d/h/i;->K:Lorg/cocos2d/l/l;

    iput v3, v0, Lorg/cocos2d/l/l;->a:F

    iget-object v0, p0, Lorg/cocos2d/h/i;->K:Lorg/cocos2d/l/l;

    iput v3, v0, Lorg/cocos2d/l/l;->b:F

    iget-object v0, p0, Lorg/cocos2d/h/i;->K:Lorg/cocos2d/l/l;

    iput v3, v0, Lorg/cocos2d/l/l;->c:F

    iget-object v0, p0, Lorg/cocos2d/h/i;->K:Lorg/cocos2d/l/l;

    iput v3, v0, Lorg/cocos2d/l/l;->d:F

    invoke-static {}, Lorg/cocos2d/g/s;->a()Lorg/cocos2d/g/s;

    move-result-object v0

    const-string v1, "fire.png"

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/s;->a(Ljava/lang/String;)Lorg/cocos2d/opengl/i;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/i;->a(Lorg/cocos2d/opengl/i;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/i;->a(Z)V

    return-void
.end method

.method public static a()Lorg/cocos2d/h/l;
    .locals 1

    new-instance v0, Lorg/cocos2d/h/i;

    invoke-direct {v0}, Lorg/cocos2d/h/i;-><init>()V

    return-object v0
.end method
