.class public final Lorg/cocos2d/h/b;
.super Lorg/cocos2d/h/s;


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/cocos2d/h/b;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 7

    const/high16 v6, 0x4120

    const/high16 v5, 0x3f80

    const/high16 v4, 0x3e80

    const/high16 v3, -0x4080

    const/4 v2, 0x0

    const/16 v0, 0xfa

    invoke-direct {p0, v0}, Lorg/cocos2d/h/s;-><init>(I)V

    iput v3, p0, Lorg/cocos2d/h/b;->b:F

    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2d/h/b;->T:I

    invoke-static {v2, v2}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/b;->b(Lorg/cocos2d/l/e;)V

    invoke-virtual {p0, v2}, Lorg/cocos2d/h/b;->r(F)V

    invoke-virtual {p0, v2}, Lorg/cocos2d/h/b;->s(F)V

    const/high16 v0, 0x4270

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/b;->t(F)V

    const/high16 v0, 0x41a0

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/b;->u(F)V

    const/high16 v0, 0x42b4

    iput v0, p0, Lorg/cocos2d/h/b;->o:F

    iput v6, p0, Lorg/cocos2d/h/b;->p:F

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v0

    iget v0, v0, Lorg/cocos2d/l/g;->a:F

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    const/high16 v1, 0x4270

    invoke-static {v0, v1}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/b;->e(Lorg/cocos2d/l/e;)V

    const/high16 v0, 0x4220

    const/high16 v1, 0x41a0

    invoke-static {v0, v1}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/h/b;->n:Lorg/cocos2d/l/e;

    const/high16 v0, 0x4040

    iput v0, p0, Lorg/cocos2d/h/b;->F:F

    iput v4, p0, Lorg/cocos2d/h/b;->G:F

    const/high16 v0, 0x4258

    iput v0, p0, Lorg/cocos2d/h/b;->d:F

    iput v6, p0, Lorg/cocos2d/h/b;->e:F

    iput v3, p0, Lorg/cocos2d/h/b;->f:F

    iget v0, p0, Lorg/cocos2d/h/b;->O:I

    int-to-float v0, v0

    iget v1, p0, Lorg/cocos2d/h/b;->F:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/cocos2d/h/b;->Q:F

    iget-object v0, p0, Lorg/cocos2d/h/b;->H:Lorg/cocos2d/l/l;

    const v1, 0x3f428f5c

    iput v1, v0, Lorg/cocos2d/l/l;->a:F

    iget-object v0, p0, Lorg/cocos2d/h/b;->H:Lorg/cocos2d/l/l;

    iput v4, v0, Lorg/cocos2d/l/l;->b:F

    iget-object v0, p0, Lorg/cocos2d/h/b;->H:Lorg/cocos2d/l/l;

    const v1, 0x3df5c28f

    iput v1, v0, Lorg/cocos2d/l/l;->c:F

    iget-object v0, p0, Lorg/cocos2d/h/b;->H:Lorg/cocos2d/l/l;

    iput v5, v0, Lorg/cocos2d/l/l;->d:F

    iget-object v0, p0, Lorg/cocos2d/h/b;->I:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->a:F

    iget-object v0, p0, Lorg/cocos2d/h/b;->I:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->b:F

    iget-object v0, p0, Lorg/cocos2d/h/b;->I:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->c:F

    iget-object v0, p0, Lorg/cocos2d/h/b;->I:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->d:F

    iget-object v0, p0, Lorg/cocos2d/h/b;->J:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->a:F

    iget-object v0, p0, Lorg/cocos2d/h/b;->J:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->b:F

    iget-object v0, p0, Lorg/cocos2d/h/b;->J:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->c:F

    iget-object v0, p0, Lorg/cocos2d/h/b;->J:Lorg/cocos2d/l/l;

    iput v5, v0, Lorg/cocos2d/l/l;->d:F

    iget-object v0, p0, Lorg/cocos2d/h/b;->K:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->a:F

    iget-object v0, p0, Lorg/cocos2d/h/b;->K:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->b:F

    iget-object v0, p0, Lorg/cocos2d/h/b;->K:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->c:F

    iget-object v0, p0, Lorg/cocos2d/h/b;->K:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->d:F

    invoke-static {}, Lorg/cocos2d/g/s;->a()Lorg/cocos2d/g/s;

    move-result-object v0

    const-string v1, "fire.png"

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/s;->a(Ljava/lang/String;)Lorg/cocos2d/opengl/i;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/b;->a(Lorg/cocos2d/opengl/i;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/b;->a(Z)V

    return-void
.end method

.method public static a()Lorg/cocos2d/h/b;
    .locals 1

    new-instance v0, Lorg/cocos2d/h/b;

    invoke-direct {v0}, Lorg/cocos2d/h/b;-><init>()V

    return-object v0
.end method
