.class Lorg/cocos2d/tests/ej;
.super Lorg/cocos2d/tests/en;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/cocos2d/tests/en;-><init>()V

    return-void
.end method


# virtual methods
.method public final a_()V
    .locals 5

    const v4, 0x3f666666

    invoke-super {p0}, Lorg/cocos2d/tests/en;->a_()V

    invoke-static {}, Lorg/cocos2d/h/i;->a()Lorg/cocos2d/h/l;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/tests/ej;->d:Lorg/cocos2d/h/l;

    iget-object v0, p0, Lorg/cocos2d/tests/ej;->e:Lorg/cocos2d/g/o;

    iget-object v1, p0, Lorg/cocos2d/tests/ej;->d:Lorg/cocos2d/h/l;

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    iget-object v0, p0, Lorg/cocos2d/tests/ej;->d:Lorg/cocos2d/h/l;

    invoke-virtual {v0}, Lorg/cocos2d/h/l;->r()Lorg/cocos2d/l/e;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/tests/ej;->d:Lorg/cocos2d/h/l;

    iget v2, v0, Lorg/cocos2d/l/e;->a:F

    iget v0, v0, Lorg/cocos2d/l/e;->b:F

    const/high16 v3, 0x42dc

    sub-float/2addr v0, v3

    invoke-static {v2, v0}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/cocos2d/h/l;->e(Lorg/cocos2d/l/e;)V

    iget-object v0, p0, Lorg/cocos2d/tests/ej;->d:Lorg/cocos2d/h/l;

    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Lorg/cocos2d/h/l;->y(F)V

    iget-object v0, p0, Lorg/cocos2d/tests/ej;->d:Lorg/cocos2d/h/l;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lorg/cocos2d/h/l;->n(F)V

    iget-object v0, p0, Lorg/cocos2d/tests/ej;->d:Lorg/cocos2d/h/l;

    const/4 v1, 0x0

    const/high16 v2, -0x3ee0

    invoke-static {v1, v2}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/h/l;->b(Lorg/cocos2d/l/e;)V

    iget-object v0, p0, Lorg/cocos2d/tests/ej;->d:Lorg/cocos2d/h/l;

    const/high16 v1, 0x4302

    invoke-virtual {v0, v1}, Lorg/cocos2d/h/l;->t(F)V

    iget-object v0, p0, Lorg/cocos2d/tests/ej;->d:Lorg/cocos2d/h/l;

    const/high16 v1, 0x41f0

    invoke-virtual {v0, v1}, Lorg/cocos2d/h/l;->u(F)V

    iget-object v0, p0, Lorg/cocos2d/tests/ej;->d:Lorg/cocos2d/h/l;

    invoke-virtual {v0}, Lorg/cocos2d/h/l;->H()Lorg/cocos2d/l/l;

    move-result-object v0

    iput v4, v0, Lorg/cocos2d/l/l;->a:F

    iput v4, v0, Lorg/cocos2d/l/l;->b:F

    iput v4, v0, Lorg/cocos2d/l/l;->c:F

    iget-object v1, p0, Lorg/cocos2d/tests/ej;->d:Lorg/cocos2d/h/l;

    invoke-virtual {v1, v0}, Lorg/cocos2d/h/l;->a(Lorg/cocos2d/l/l;)V

    iget-object v0, p0, Lorg/cocos2d/tests/ej;->d:Lorg/cocos2d/h/l;

    invoke-virtual {v0}, Lorg/cocos2d/h/l;->I()Lorg/cocos2d/l/l;

    move-result-object v0

    const v1, 0x3dcccccd

    iput v1, v0, Lorg/cocos2d/l/l;->c:F

    iget-object v1, p0, Lorg/cocos2d/tests/ej;->d:Lorg/cocos2d/h/l;

    invoke-virtual {v1, v0}, Lorg/cocos2d/h/l;->b(Lorg/cocos2d/l/l;)V

    iget-object v0, p0, Lorg/cocos2d/tests/ej;->d:Lorg/cocos2d/h/l;

    iget-object v1, p0, Lorg/cocos2d/tests/ej;->d:Lorg/cocos2d/h/l;

    invoke-virtual {v1}, Lorg/cocos2d/h/l;->J()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/cocos2d/tests/ej;->d:Lorg/cocos2d/h/l;

    invoke-virtual {v2}, Lorg/cocos2d/h/l;->Q()F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/cocos2d/h/l;->o(F)V

    iget-object v0, p0, Lorg/cocos2d/tests/ej;->d:Lorg/cocos2d/h/l;

    invoke-static {}, Lorg/cocos2d/g/s;->a()Lorg/cocos2d/g/s;

    move-result-object v1

    const-string v2, "snow.png"

    invoke-virtual {v1, v2}, Lorg/cocos2d/g/s;->a(Ljava/lang/String;)Lorg/cocos2d/opengl/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/h/l;->a(Lorg/cocos2d/opengl/i;)V

    invoke-virtual {p0}, Lorg/cocos2d/tests/ej;->H()V

    return-void
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    const-string v0, "ParticleSnow"

    return-object v0
.end method
