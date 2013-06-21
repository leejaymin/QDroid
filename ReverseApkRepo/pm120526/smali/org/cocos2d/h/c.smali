.class public final Lorg/cocos2d/h/c;
.super Lorg/cocos2d/h/s;


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/cocos2d/h/c;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 6

    const/high16 v5, -0x4080

    const/high16 v4, 0x4000

    const/4 v1, 0x0

    const/high16 v3, 0x3f00

    const v2, 0x3dcccccd

    const/16 v0, 0x5dc

    invoke-direct {p0, v0}, Lorg/cocos2d/h/s;-><init>(I)V

    iput v5, p0, Lorg/cocos2d/h/c;->b:F

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/c;->a(I)V

    const/high16 v0, -0x3d4c

    invoke-static {v1, v0}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/c;->b(Lorg/cocos2d/l/e;)V

    invoke-virtual {p0, v1}, Lorg/cocos2d/h/c;->r(F)V

    invoke-virtual {p0, v1}, Lorg/cocos2d/h/c;->s(F)V

    const/high16 v0, 0x4334

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/c;->t(F)V

    const/high16 v0, 0x4248

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/c;->u(F)V

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

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/c;->e(Lorg/cocos2d/l/e;)V

    const/high16 v0, 0x42b4

    iput v0, p0, Lorg/cocos2d/h/c;->o:F

    const/high16 v0, 0x41a0

    iput v0, p0, Lorg/cocos2d/h/c;->p:F

    const/high16 v0, 0x4060

    iput v0, p0, Lorg/cocos2d/h/c;->F:F

    const/high16 v0, 0x3f80

    iput v0, p0, Lorg/cocos2d/h/c;->G:F

    iget v0, p0, Lorg/cocos2d/h/c;->O:I

    int-to-float v0, v0

    iget v1, p0, Lorg/cocos2d/h/c;->F:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/cocos2d/h/c;->Q:F

    iget-object v0, p0, Lorg/cocos2d/h/c;->H:Lorg/cocos2d/l/l;

    iput v3, v0, Lorg/cocos2d/l/l;->a:F

    iget-object v0, p0, Lorg/cocos2d/h/c;->H:Lorg/cocos2d/l/l;

    iput v3, v0, Lorg/cocos2d/l/l;->b:F

    iget-object v0, p0, Lorg/cocos2d/h/c;->H:Lorg/cocos2d/l/l;

    iput v3, v0, Lorg/cocos2d/l/l;->c:F

    iget-object v0, p0, Lorg/cocos2d/h/c;->H:Lorg/cocos2d/l/l;

    const/high16 v1, 0x3f80

    iput v1, v0, Lorg/cocos2d/l/l;->d:F

    iget-object v0, p0, Lorg/cocos2d/h/c;->I:Lorg/cocos2d/l/l;

    iput v3, v0, Lorg/cocos2d/l/l;->a:F

    iget-object v0, p0, Lorg/cocos2d/h/c;->I:Lorg/cocos2d/l/l;

    iput v3, v0, Lorg/cocos2d/l/l;->b:F

    iget-object v0, p0, Lorg/cocos2d/h/c;->I:Lorg/cocos2d/l/l;

    iput v3, v0, Lorg/cocos2d/l/l;->c:F

    iget-object v0, p0, Lorg/cocos2d/h/c;->I:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->d:F

    iget-object v0, p0, Lorg/cocos2d/h/c;->J:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->a:F

    iget-object v0, p0, Lorg/cocos2d/h/c;->J:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->b:F

    iget-object v0, p0, Lorg/cocos2d/h/c;->J:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->c:F

    iget-object v0, p0, Lorg/cocos2d/h/c;->J:Lorg/cocos2d/l/l;

    const v1, 0x3e4ccccd

    iput v1, v0, Lorg/cocos2d/l/l;->d:F

    iget-object v0, p0, Lorg/cocos2d/h/c;->K:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->a:F

    iget-object v0, p0, Lorg/cocos2d/h/c;->K:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->b:F

    iget-object v0, p0, Lorg/cocos2d/h/c;->K:Lorg/cocos2d/l/l;

    iput v2, v0, Lorg/cocos2d/l/l;->c:F

    iget-object v0, p0, Lorg/cocos2d/h/c;->K:Lorg/cocos2d/l/l;

    const v1, 0x3e4ccccd

    iput v1, v0, Lorg/cocos2d/l/l;->d:F

    const/high16 v0, 0x4100

    iput v0, p0, Lorg/cocos2d/h/c;->d:F

    iput v4, p0, Lorg/cocos2d/h/c;->e:F

    iput v5, p0, Lorg/cocos2d/h/c;->f:F

    invoke-static {}, Lorg/cocos2d/g/s;->a()Lorg/cocos2d/g/s;

    move-result-object v0

    const-string v1, "blocks.png"

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/s;->a(Ljava/lang/String;)Lorg/cocos2d/opengl/i;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/c;->a(Lorg/cocos2d/opengl/i;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/cocos2d/h/c;->a(Z)V

    return-void
.end method

.method public static a()Lorg/cocos2d/h/l;
    .locals 1

    new-instance v0, Lorg/cocos2d/h/c;

    invoke-direct {v0}, Lorg/cocos2d/h/c;-><init>()V

    return-object v0
.end method
