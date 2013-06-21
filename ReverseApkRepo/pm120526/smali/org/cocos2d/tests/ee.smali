.class Lorg/cocos2d/tests/ee;
.super Lorg/cocos2d/tests/en;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/cocos2d/tests/en;-><init>()V

    return-void
.end method


# virtual methods
.method public final a_()V
    .locals 8

    const/high16 v7, 0x4000

    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    const/high16 v4, 0x3f00

    const v3, 0x3dcccccd

    invoke-super {p0}, Lorg/cocos2d/tests/en;->a_()V

    new-instance v0, Lorg/cocos2d/h/r;

    invoke-direct {v0}, Lorg/cocos2d/h/r;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/tests/ee;->d:Lorg/cocos2d/h/l;

    iget-object v0, p0, Lorg/cocos2d/tests/ee;->e:Lorg/cocos2d/g/o;

    iget-object v1, p0, Lorg/cocos2d/tests/ee;->d:Lorg/cocos2d/h/l;

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/tests/ee;->d:Lorg/cocos2d/h/l;

    invoke-virtual {v1}, Lorg/cocos2d/h/l;->P()V

    iget-object v1, p0, Lorg/cocos2d/tests/ee;->d:Lorg/cocos2d/h/l;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/cocos2d/h/l;->a(I)V

    iget-object v1, p0, Lorg/cocos2d/tests/ee;->d:Lorg/cocos2d/h/l;

    invoke-static {v5, v5}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/h/l;->b(Lorg/cocos2d/l/e;)V

    iget-object v1, p0, Lorg/cocos2d/tests/ee;->d:Lorg/cocos2d/h/l;

    const/high16 v2, 0x428c

    invoke-virtual {v1, v2}, Lorg/cocos2d/h/l;->r(F)V

    iget-object v1, p0, Lorg/cocos2d/tests/ee;->d:Lorg/cocos2d/h/l;

    const/high16 v2, 0x4120

    invoke-virtual {v1, v2}, Lorg/cocos2d/h/l;->s(F)V

    iget-object v1, p0, Lorg/cocos2d/tests/ee;->d:Lorg/cocos2d/h/l;

    const/high16 v2, 0x42a0

    invoke-virtual {v1, v2}, Lorg/cocos2d/h/l;->p(F)V

    iget-object v1, p0, Lorg/cocos2d/tests/ee;->d:Lorg/cocos2d/h/l;

    invoke-virtual {v1, v5}, Lorg/cocos2d/h/l;->q(F)V

    iget-object v1, p0, Lorg/cocos2d/tests/ee;->d:Lorg/cocos2d/h/l;

    const/high16 v2, 0x4248

    invoke-virtual {v1, v2}, Lorg/cocos2d/h/l;->t(F)V

    iget-object v1, p0, Lorg/cocos2d/tests/ee;->d:Lorg/cocos2d/h/l;

    const/high16 v2, 0x4120

    invoke-virtual {v1, v2}, Lorg/cocos2d/h/l;->u(F)V

    iget-object v1, p0, Lorg/cocos2d/tests/ee;->d:Lorg/cocos2d/h/l;

    invoke-virtual {v1, v5}, Lorg/cocos2d/h/l;->l(F)V

    iget-object v1, p0, Lorg/cocos2d/tests/ee;->d:Lorg/cocos2d/h/l;

    const/high16 v2, 0x43b4

    invoke-virtual {v1, v2}, Lorg/cocos2d/h/l;->m(F)V

    iget-object v1, p0, Lorg/cocos2d/tests/ee;->d:Lorg/cocos2d/h/l;

    iget v2, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v2, v7

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v0, v7

    invoke-static {v2, v0}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/cocos2d/h/l;->e(Lorg/cocos2d/l/e;)V

    iget-object v0, p0, Lorg/cocos2d/tests/ee;->d:Lorg/cocos2d/h/l;

    invoke-static {}, Lorg/cocos2d/l/e;->b()Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/h/l;->a(Lorg/cocos2d/l/e;)V

    iget-object v0, p0, Lorg/cocos2d/tests/ee;->d:Lorg/cocos2d/h/l;

    invoke-virtual {v0, v7}, Lorg/cocos2d/h/l;->y(F)V

    iget-object v0, p0, Lorg/cocos2d/tests/ee;->d:Lorg/cocos2d/h/l;

    const v1, 0x3e99999a

    invoke-virtual {v0, v1}, Lorg/cocos2d/h/l;->n(F)V

    iget-object v0, p0, Lorg/cocos2d/tests/ee;->d:Lorg/cocos2d/h/l;

    iget-object v1, p0, Lorg/cocos2d/tests/ee;->d:Lorg/cocos2d/h/l;

    invoke-virtual {v1}, Lorg/cocos2d/h/l;->J()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/cocos2d/tests/ee;->d:Lorg/cocos2d/h/l;

    invoke-virtual {v2}, Lorg/cocos2d/h/l;->Q()F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/cocos2d/h/l;->o(F)V

    new-instance v0, Lorg/cocos2d/l/l;

    invoke-direct {v0, v4, v4, v4, v6}, Lorg/cocos2d/l/l;-><init>(FFFF)V

    iget-object v1, p0, Lorg/cocos2d/tests/ee;->d:Lorg/cocos2d/h/l;

    invoke-virtual {v1, v0}, Lorg/cocos2d/h/l;->a(Lorg/cocos2d/l/l;)V

    new-instance v0, Lorg/cocos2d/l/l;

    invoke-direct {v0, v4, v4, v4, v6}, Lorg/cocos2d/l/l;-><init>(FFFF)V

    iget-object v1, p0, Lorg/cocos2d/tests/ee;->d:Lorg/cocos2d/h/l;

    invoke-virtual {v1, v0}, Lorg/cocos2d/h/l;->b(Lorg/cocos2d/l/l;)V

    new-instance v0, Lorg/cocos2d/l/l;

    const v1, 0x3e4ccccd

    invoke-direct {v0, v3, v3, v3, v1}, Lorg/cocos2d/l/l;-><init>(FFFF)V

    iget-object v1, p0, Lorg/cocos2d/tests/ee;->d:Lorg/cocos2d/h/l;

    invoke-virtual {v1, v0}, Lorg/cocos2d/h/l;->c(Lorg/cocos2d/l/l;)V

    new-instance v0, Lorg/cocos2d/l/l;

    const v1, 0x3e4ccccd

    invoke-direct {v0, v3, v3, v3, v1}, Lorg/cocos2d/l/l;-><init>(FFFF)V

    iget-object v1, p0, Lorg/cocos2d/tests/ee;->d:Lorg/cocos2d/h/l;

    invoke-virtual {v1, v0}, Lorg/cocos2d/h/l;->d(Lorg/cocos2d/l/l;)V

    iget-object v0, p0, Lorg/cocos2d/tests/ee;->d:Lorg/cocos2d/h/l;

    invoke-virtual {v0, v6}, Lorg/cocos2d/h/l;->g(F)V

    iget-object v0, p0, Lorg/cocos2d/tests/ee;->d:Lorg/cocos2d/h/l;

    invoke-virtual {v0, v6}, Lorg/cocos2d/h/l;->h(F)V

    iget-object v0, p0, Lorg/cocos2d/tests/ee;->d:Lorg/cocos2d/h/l;

    const/high16 v1, 0x4200

    invoke-virtual {v0, v1}, Lorg/cocos2d/h/l;->i(F)V

    iget-object v0, p0, Lorg/cocos2d/tests/ee;->d:Lorg/cocos2d/h/l;

    invoke-virtual {v0}, Lorg/cocos2d/h/l;->c()V

    iget-object v0, p0, Lorg/cocos2d/tests/ee;->d:Lorg/cocos2d/h/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/cocos2d/h/l;->a(Z)V

    invoke-virtual {p0}, Lorg/cocos2d/tests/ee;->H()V

    return-void
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    const-string v0, "Varying size"

    return-object v0
.end method
