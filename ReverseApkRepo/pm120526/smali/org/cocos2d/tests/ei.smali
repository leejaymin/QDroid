.class Lorg/cocos2d/tests/ei;
.super Lorg/cocos2d/tests/en;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/cocos2d/tests/en;-><init>()V

    return-void
.end method


# virtual methods
.method public final a_()V
    .locals 3

    invoke-super {p0}, Lorg/cocos2d/tests/en;->a_()V

    invoke-static {}, Lorg/cocos2d/h/h;->a()Lorg/cocos2d/h/l;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/tests/ei;->d:Lorg/cocos2d/h/l;

    iget-object v0, p0, Lorg/cocos2d/tests/ei;->e:Lorg/cocos2d/g/o;

    iget-object v1, p0, Lorg/cocos2d/tests/ei;->d:Lorg/cocos2d/h/l;

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    iget-object v0, p0, Lorg/cocos2d/tests/ei;->d:Lorg/cocos2d/h/l;

    invoke-virtual {v0}, Lorg/cocos2d/h/l;->r()Lorg/cocos2d/l/e;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/tests/ei;->d:Lorg/cocos2d/h/l;

    iget v0, v0, Lorg/cocos2d/l/e;->a:F

    const/high16 v2, 0x42c8

    invoke-static {v0, v2}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/cocos2d/h/l;->e(Lorg/cocos2d/l/e;)V

    invoke-virtual {p0}, Lorg/cocos2d/tests/ei;->H()V

    return-void
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    const-string v0, "ParticleSmoke"

    return-object v0
.end method
