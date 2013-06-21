.class public final Lorg/cocos2d/h/h;
.super Lorg/cocos2d/h/s;


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/cocos2d/h/h;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 7

    const/high16 v6, -0x4080

    const/high16 v5, 0x3f80

    const v4, 0x3f4ccccd

    const v3, 0x3ca3d70a

    const/4 v2, 0x0

    const/16 v0, 0xc8

    invoke-direct {p0, v0}, Lorg/cocos2d/h/s;-><init>(I)V

    iput v6, p0, Lorg/cocos2d/h/h;->b:F

    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2d/h/h;->T:I

    invoke-static {}, Lorg/cocos2d/l/e;->b()Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/h;->b(Lorg/cocos2d/l/e;)V

    invoke-virtual {p0, v2}, Lorg/cocos2d/h/h;->r(F)V

    invoke-virtual {p0, v2}, Lorg/cocos2d/h/h;->s(F)V

    const/high16 v0, 0x41c8

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/h;->t(F)V

    const/high16 v0, 0x4120

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/h;->u(F)V

    const/high16 v0, 0x42b4

    iput v0, p0, Lorg/cocos2d/h/h;->o:F

    const/high16 v0, 0x40a0

    iput v0, p0, Lorg/cocos2d/h/h;->p:F

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v0

    iget v0, v0, Lorg/cocos2d/l/g;->a:F

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    invoke-static {v0, v2}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/h;->e(Lorg/cocos2d/l/e;)V

    const/high16 v0, 0x41a0

    invoke-static {v0, v2}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/h/h;->n:Lorg/cocos2d/l/e;

    const/high16 v0, 0x4080

    iput v0, p0, Lorg/cocos2d/h/h;->F:F

    iput v5, p0, Lorg/cocos2d/h/h;->G:F

    const/high16 v0, 0x4270

    iput v0, p0, Lorg/cocos2d/h/h;->d:F

    const/high16 v0, 0x4120

    iput v0, p0, Lorg/cocos2d/h/h;->e:F

    iput v6, p0, Lorg/cocos2d/h/h;->f:F

    iget v0, p0, Lorg/cocos2d/h/h;->O:I

    int-to-float v0, v0

    iget v1, p0, Lorg/cocos2d/h/h;->F:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/cocos2d/h/h;->Q:F

    iget-object v0, p0, Lorg/cocos2d/h/h;->H:Lorg/cocos2d/l/l;

    iput v4, v0, Lorg/cocos2d/l/l;->a:F

    iget-object v0, p0, Lorg/cocos2d/h/h;->H:Lorg/cocos2d/l/l;

    iput v4, v0, Lorg/cocos2d/l/l;->b:F

    iget-object v0, p0, Lorg/cocos2d/h/h;->H:Lorg/cocos2d/l/l;

    iput v4, v0, Lorg/cocos2d/l/l;->c:F

    iget-object v0, p0, Lorg/cocos2d/h/h;->H:Lorg/cocos2d/l/l;

    iput v5, v0, Lorg/cocos2d/l/l;->d:F

    iget-object v0, p0, Lorg/cocos2d/h/h;->I:Lorg/cocos2d/l/l;

    iput v3, v0, Lorg/cocos2d/l/l;->a:F

    iget-object v0, p0, Lorg/cocos2d/h/h;->I:Lorg/cocos2d/l/l;

    iput v3, v0, Lorg/cocos2d/l/l;->b:F

    iget-object v0, p0, Lorg/cocos2d/h/h;->I:Lorg/cocos2d/l/l;

    iput v3, v0, Lorg/cocos2d/l/l;->c:F

    iget-object v0, p0, Lorg/cocos2d/h/h;->I:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->d:F

    iget-object v0, p0, Lorg/cocos2d/h/h;->J:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->a:F

    iget-object v0, p0, Lorg/cocos2d/h/h;->J:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->b:F

    iget-object v0, p0, Lorg/cocos2d/h/h;->J:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->c:F

    iget-object v0, p0, Lorg/cocos2d/h/h;->J:Lorg/cocos2d/l/l;

    iput v5, v0, Lorg/cocos2d/l/l;->d:F

    iget-object v0, p0, Lorg/cocos2d/h/h;->K:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->a:F

    iget-object v0, p0, Lorg/cocos2d/h/h;->K:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->b:F

    iget-object v0, p0, Lorg/cocos2d/h/h;->K:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->c:F

    iget-object v0, p0, Lorg/cocos2d/h/h;->K:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->d:F

    invoke-static {}, Lorg/cocos2d/g/s;->a()Lorg/cocos2d/g/s;

    move-result-object v0

    const-string v1, "fire.png"

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/s;->a(Ljava/lang/String;)Lorg/cocos2d/opengl/i;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/h;->a(Lorg/cocos2d/opengl/i;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/h;->a(Z)V

    return-void
.end method

.method public static a()Lorg/cocos2d/h/l;
    .locals 1

    new-instance v0, Lorg/cocos2d/h/h;

    invoke-direct {v0}, Lorg/cocos2d/h/h;-><init>()V

    return-object v0
.end method
