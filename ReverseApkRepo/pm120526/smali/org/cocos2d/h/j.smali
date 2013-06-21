.class public final Lorg/cocos2d/h/j;
.super Lorg/cocos2d/h/s;


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/cocos2d/h/j;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 7

    const/high16 v6, 0x4000

    const/high16 v5, 0x3f80

    const/high16 v4, -0x4080

    const/4 v3, 0x0

    const/high16 v2, 0x3f00

    const/16 v0, 0x1f4

    invoke-direct {p0, v0}, Lorg/cocos2d/h/s;-><init>(I)V

    iput v4, p0, Lorg/cocos2d/h/j;->b:F

    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2d/h/j;->T:I

    invoke-static {}, Lorg/cocos2d/l/e;->b()Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/j;->b(Lorg/cocos2d/l/e;)V

    const/high16 v0, 0x4316

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/j;->t(F)V

    invoke-virtual {p0, v3}, Lorg/cocos2d/h/j;->u(F)V

    const/high16 v0, -0x3c42

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/j;->r(F)V

    invoke-virtual {p0, v3}, Lorg/cocos2d/h/j;->s(F)V

    const/high16 v0, 0x4234

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/j;->p(F)V

    invoke-virtual {p0, v3}, Lorg/cocos2d/h/j;->q(F)V

    const/high16 v0, 0x42b4

    iput v0, p0, Lorg/cocos2d/h/j;->o:F

    iput v3, p0, Lorg/cocos2d/h/j;->p:F

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

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/j;->e(Lorg/cocos2d/l/e;)V

    invoke-static {}, Lorg/cocos2d/l/e;->b()Lorg/cocos2d/l/e;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/h/j;->n:Lorg/cocos2d/l/e;

    const/high16 v0, 0x4140

    iput v0, p0, Lorg/cocos2d/h/j;->F:F

    iput v3, p0, Lorg/cocos2d/h/j;->G:F

    const/high16 v0, 0x41a0

    iput v0, p0, Lorg/cocos2d/h/j;->d:F

    iput v3, p0, Lorg/cocos2d/h/j;->e:F

    iput v4, p0, Lorg/cocos2d/h/j;->f:F

    iget v0, p0, Lorg/cocos2d/h/j;->O:I

    int-to-float v0, v0

    iget v1, p0, Lorg/cocos2d/h/j;->F:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/cocos2d/h/j;->Q:F

    iget-object v0, p0, Lorg/cocos2d/h/j;->H:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->a:F

    iget-object v0, p0, Lorg/cocos2d/h/j;->H:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->b:F

    iget-object v0, p0, Lorg/cocos2d/h/j;->H:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->c:F

    iget-object v0, p0, Lorg/cocos2d/h/j;->H:Lorg/cocos2d/l/l;

    iput v5, v0, Lorg/cocos2d/l/l;->d:F

    iget-object v0, p0, Lorg/cocos2d/h/j;->I:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->a:F

    iget-object v0, p0, Lorg/cocos2d/h/j;->I:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->b:F

    iget-object v0, p0, Lorg/cocos2d/h/j;->I:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->c:F

    iget-object v0, p0, Lorg/cocos2d/h/j;->I:Lorg/cocos2d/l/l;

    iput v3, v0, Lorg/cocos2d/l/l;->d:F

    iget-object v0, p0, Lorg/cocos2d/h/j;->J:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->a:F

    iget-object v0, p0, Lorg/cocos2d/h/j;->J:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->b:F

    iget-object v0, p0, Lorg/cocos2d/h/j;->J:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->c:F

    iget-object v0, p0, Lorg/cocos2d/h/j;->J:Lorg/cocos2d/l/l;

    iput v5, v0, Lorg/cocos2d/l/l;->d:F

    iget-object v0, p0, Lorg/cocos2d/h/j;->K:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->a:F

    iget-object v0, p0, Lorg/cocos2d/h/j;->K:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->b:F

    iget-object v0, p0, Lorg/cocos2d/h/j;->K:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->c:F

    iget-object v0, p0, Lorg/cocos2d/h/j;->K:Lorg/cocos2d/l/l;

    iput v3, v0, Lorg/cocos2d/l/l;->d:F

    invoke-static {}, Lorg/cocos2d/g/s;->a()Lorg/cocos2d/g/s;

    move-result-object v0

    const-string v1, "fire.png"

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/s;->a(Ljava/lang/String;)Lorg/cocos2d/opengl/i;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/j;->a(Lorg/cocos2d/opengl/i;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/j;->a(Z)V

    return-void
.end method

.method public static a()Lorg/cocos2d/h/l;
    .locals 1

    new-instance v0, Lorg/cocos2d/h/j;

    invoke-direct {v0}, Lorg/cocos2d/h/j;-><init>()V

    return-object v0
.end method
