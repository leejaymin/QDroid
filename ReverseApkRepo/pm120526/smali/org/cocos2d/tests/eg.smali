.class Lorg/cocos2d/tests/eg;
.super Lorg/cocos2d/tests/en;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/cocos2d/tests/en;-><init>()V

    return-void
.end method


# virtual methods
.method public final a_()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lorg/cocos2d/tests/en;->a_()V

    invoke-static {}, Lorg/cocos2d/h/d;->b()Lorg/cocos2d/h/d;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/tests/eg;->d:Lorg/cocos2d/h/l;

    iget-object v0, p0, Lorg/cocos2d/tests/eg;->e:Lorg/cocos2d/g/o;

    iget-object v1, p0, Lorg/cocos2d/tests/eg;->d:Lorg/cocos2d/h/l;

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    iget-object v0, p0, Lorg/cocos2d/tests/eg;->d:Lorg/cocos2d/h/l;

    invoke-static {}, Lorg/cocos2d/g/s;->a()Lorg/cocos2d/g/s;

    move-result-object v1

    const-string v2, "stars_grayscale.png"

    invoke-virtual {v1, v2}, Lorg/cocos2d/g/s;->a(Ljava/lang/String;)Lorg/cocos2d/opengl/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/h/l;->a(Lorg/cocos2d/opengl/i;)V

    iget-object v0, p0, Lorg/cocos2d/tests/eg;->d:Lorg/cocos2d/h/l;

    invoke-virtual {v0, v3}, Lorg/cocos2d/h/l;->n(F)V

    iget-object v0, p0, Lorg/cocos2d/tests/eg;->d:Lorg/cocos2d/h/l;

    const/high16 v1, 0x4120

    invoke-virtual {v0, v1}, Lorg/cocos2d/h/l;->y(F)V

    iget-object v0, p0, Lorg/cocos2d/tests/eg;->d:Lorg/cocos2d/h/l;

    const/high16 v1, 0x42c8

    invoke-virtual {v0, v1}, Lorg/cocos2d/h/l;->t(F)V

    iget-object v0, p0, Lorg/cocos2d/tests/eg;->d:Lorg/cocos2d/h/l;

    invoke-virtual {v0, v3}, Lorg/cocos2d/h/l;->u(F)V

    iget-object v0, p0, Lorg/cocos2d/tests/eg;->d:Lorg/cocos2d/h/l;

    const v1, 0x461c4000

    invoke-virtual {v0, v1}, Lorg/cocos2d/h/l;->o(F)V

    invoke-virtual {p0}, Lorg/cocos2d/tests/eg;->H()V

    return-void
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    const-string v0, "Ring Demo"

    return-object v0
.end method
