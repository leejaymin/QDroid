.class Lorg/cocos2d/tests/eo;
.super Lorg/cocos2d/tests/en;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/cocos2d/tests/en;-><init>()V

    return-void
.end method


# virtual methods
.method public final a_()V
    .locals 9

    const/high16 v8, 0x3f80

    const v7, 0x3e4ccccd

    const/high16 v6, 0x3f00

    const v5, 0x3dcccccd

    const/4 v4, 0x0

    invoke-super {p0}, Lorg/cocos2d/tests/en;->a_()V

    sget-object v0, Lorg/cocos2d/l/j;->g:Lorg/cocos2d/l/j;

    invoke-virtual {p0, v0}, Lorg/cocos2d/tests/eo;->a(Lorg/cocos2d/l/j;)V

    iget-object v0, p0, Lorg/cocos2d/tests/eo;->e:Lorg/cocos2d/g/o;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/cocos2d/tests/eo;->a(Lorg/cocos2d/g/i;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cocos2d/tests/eo;->e:Lorg/cocos2d/g/o;

    new-instance v0, Lorg/cocos2d/h/s;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Lorg/cocos2d/h/s;-><init>(I)V

    iput-object v0, p0, Lorg/cocos2d/tests/eo;->d:Lorg/cocos2d/h/l;

    iget-object v0, p0, Lorg/cocos2d/tests/eo;->d:Lorg/cocos2d/h/l;

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lorg/cocos2d/tests/eo;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    iget-object v0, p0, Lorg/cocos2d/tests/eo;->d:Lorg/cocos2d/h/l;

    invoke-static {}, Lorg/cocos2d/g/s;->a()Lorg/cocos2d/g/s;

    move-result-object v1

    const-string v2, "stars_grayscale.png"

    invoke-virtual {v1, v2}, Lorg/cocos2d/g/s;->a(Ljava/lang/String;)Lorg/cocos2d/opengl/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/h/l;->a(Lorg/cocos2d/opengl/i;)V

    iget-object v0, p0, Lorg/cocos2d/tests/eo;->d:Lorg/cocos2d/h/l;

    invoke-virtual {v0}, Lorg/cocos2d/h/l;->P()V

    iget-object v0, p0, Lorg/cocos2d/tests/eo;->d:Lorg/cocos2d/h/l;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/cocos2d/h/l;->a(I)V

    iget-object v0, p0, Lorg/cocos2d/tests/eo;->d:Lorg/cocos2d/h/l;

    invoke-virtual {v0, v4}, Lorg/cocos2d/h/l;->v(F)V

    iget-object v0, p0, Lorg/cocos2d/tests/eo;->d:Lorg/cocos2d/h/l;

    invoke-virtual {v0}, Lorg/cocos2d/h/l;->L()V

    iget-object v0, p0, Lorg/cocos2d/tests/eo;->d:Lorg/cocos2d/h/l;

    const/high16 v1, 0x4320

    invoke-virtual {v0, v1}, Lorg/cocos2d/h/l;->w(F)V

    iget-object v0, p0, Lorg/cocos2d/tests/eo;->d:Lorg/cocos2d/h/l;

    invoke-virtual {v0}, Lorg/cocos2d/h/l;->M()V

    iget-object v0, p0, Lorg/cocos2d/tests/eo;->d:Lorg/cocos2d/h/l;

    const/high16 v1, 0x4334

    invoke-virtual {v0, v1}, Lorg/cocos2d/h/l;->x(F)V

    iget-object v0, p0, Lorg/cocos2d/tests/eo;->d:Lorg/cocos2d/h/l;

    invoke-virtual {v0}, Lorg/cocos2d/h/l;->O()V

    iget-object v0, p0, Lorg/cocos2d/tests/eo;->d:Lorg/cocos2d/h/l;

    const/high16 v1, 0x42b4

    invoke-virtual {v0, v1}, Lorg/cocos2d/h/l;->l(F)V

    iget-object v0, p0, Lorg/cocos2d/tests/eo;->d:Lorg/cocos2d/h/l;

    invoke-virtual {v0, v4}, Lorg/cocos2d/h/l;->m(F)V

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/tests/eo;->d:Lorg/cocos2d/h/l;

    iget v2, v0, Lorg/cocos2d/l/g;->a:F

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    const/high16 v3, 0x4000

    div-float/2addr v0, v3

    invoke-static {v2, v0}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/cocos2d/h/l;->e(Lorg/cocos2d/l/e;)V

    iget-object v0, p0, Lorg/cocos2d/tests/eo;->d:Lorg/cocos2d/h/l;

    invoke-static {}, Lorg/cocos2d/l/e;->b()Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/h/l;->a(Lorg/cocos2d/l/e;)V

    iget-object v0, p0, Lorg/cocos2d/tests/eo;->d:Lorg/cocos2d/h/l;

    const/high16 v1, 0x40a0

    invoke-virtual {v0, v1}, Lorg/cocos2d/h/l;->y(F)V

    iget-object v0, p0, Lorg/cocos2d/tests/eo;->d:Lorg/cocos2d/h/l;

    invoke-virtual {v0, v4}, Lorg/cocos2d/h/l;->n(F)V

    iget-object v0, p0, Lorg/cocos2d/tests/eo;->d:Lorg/cocos2d/h/l;

    invoke-virtual {v0, v4}, Lorg/cocos2d/h/l;->j(F)V

    iget-object v0, p0, Lorg/cocos2d/tests/eo;->d:Lorg/cocos2d/h/l;

    invoke-virtual {v0}, Lorg/cocos2d/h/l;->d()V

    iget-object v0, p0, Lorg/cocos2d/tests/eo;->d:Lorg/cocos2d/h/l;

    invoke-virtual {v0}, Lorg/cocos2d/h/l;->e()V

    iget-object v0, p0, Lorg/cocos2d/tests/eo;->d:Lorg/cocos2d/h/l;

    invoke-virtual {v0, v4}, Lorg/cocos2d/h/l;->k(F)V

    new-instance v0, Lorg/cocos2d/l/l;

    invoke-direct {v0, v6, v6, v6, v8}, Lorg/cocos2d/l/l;-><init>(FFFF)V

    iget-object v1, p0, Lorg/cocos2d/tests/eo;->d:Lorg/cocos2d/h/l;

    invoke-virtual {v1, v0}, Lorg/cocos2d/h/l;->a(Lorg/cocos2d/l/l;)V

    new-instance v0, Lorg/cocos2d/l/l;

    invoke-direct {v0, v6, v6, v6, v8}, Lorg/cocos2d/l/l;-><init>(FFFF)V

    iget-object v1, p0, Lorg/cocos2d/tests/eo;->d:Lorg/cocos2d/h/l;

    invoke-virtual {v1, v0}, Lorg/cocos2d/h/l;->b(Lorg/cocos2d/l/l;)V

    new-instance v0, Lorg/cocos2d/l/l;

    invoke-direct {v0, v5, v5, v5, v7}, Lorg/cocos2d/l/l;-><init>(FFFF)V

    iget-object v1, p0, Lorg/cocos2d/tests/eo;->d:Lorg/cocos2d/h/l;

    invoke-virtual {v1, v0}, Lorg/cocos2d/h/l;->c(Lorg/cocos2d/l/l;)V

    new-instance v0, Lorg/cocos2d/l/l;

    invoke-direct {v0, v5, v5, v5, v7}, Lorg/cocos2d/l/l;-><init>(FFFF)V

    iget-object v1, p0, Lorg/cocos2d/tests/eo;->d:Lorg/cocos2d/h/l;

    invoke-virtual {v1, v0}, Lorg/cocos2d/h/l;->d(Lorg/cocos2d/l/l;)V

    iget-object v0, p0, Lorg/cocos2d/tests/eo;->d:Lorg/cocos2d/h/l;

    const/high16 v1, 0x4200

    invoke-virtual {v0, v1}, Lorg/cocos2d/h/l;->g(F)V

    iget-object v0, p0, Lorg/cocos2d/tests/eo;->d:Lorg/cocos2d/h/l;

    invoke-virtual {v0, v4}, Lorg/cocos2d/h/l;->h(F)V

    iget-object v0, p0, Lorg/cocos2d/tests/eo;->d:Lorg/cocos2d/h/l;

    const/high16 v1, -0x4080

    invoke-virtual {v0, v1}, Lorg/cocos2d/h/l;->i(F)V

    iget-object v0, p0, Lorg/cocos2d/tests/eo;->d:Lorg/cocos2d/h/l;

    iget-object v1, p0, Lorg/cocos2d/tests/eo;->d:Lorg/cocos2d/h/l;

    invoke-virtual {v1}, Lorg/cocos2d/h/l;->J()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/cocos2d/tests/eo;->d:Lorg/cocos2d/h/l;

    invoke-virtual {v2}, Lorg/cocos2d/h/l;->Q()F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/cocos2d/h/l;->o(F)V

    iget-object v0, p0, Lorg/cocos2d/tests/eo;->d:Lorg/cocos2d/h/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/cocos2d/h/l;->a(Z)V

    return-void
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    const-string v0, "Radius Mode: Spiral"

    return-object v0
.end method
