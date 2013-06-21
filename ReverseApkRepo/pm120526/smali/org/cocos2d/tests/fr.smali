.class Lorg/cocos2d/tests/fr;
.super Lorg/cocos2d/tests/fo;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/cocos2d/tests/fo;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "Manual Transformation"

    return-object v0
.end method

.method public final a_()V
    .locals 3

    const/high16 v2, 0x42c8

    const/4 v0, 0x0

    invoke-super {p0}, Lorg/cocos2d/tests/fo;->a_()V

    invoke-static {v0, v0}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/tests/fr;->d(Lorg/cocos2d/l/e;)V

    iget-object v0, p0, Lorg/cocos2d/tests/fr;->b:Lorg/cocos2d/g/o;

    const/high16 v1, 0x4020

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->c(F)V

    iget-object v0, p0, Lorg/cocos2d/tests/fr;->b:Lorg/cocos2d/g/o;

    const/high16 v1, -0x4080

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->d(F)V

    iget-object v0, p0, Lorg/cocos2d/tests/fr;->b:Lorg/cocos2d/g/o;

    invoke-static {v2, v2}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    iget-object v0, p0, Lorg/cocos2d/tests/fr;->a:Lorg/cocos2d/g/o;

    const/high16 v1, 0x42f0

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->b(F)V

    iget-object v0, p0, Lorg/cocos2d/tests/fr;->a:Lorg/cocos2d/g/o;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->a(I)V

    iget-object v0, p0, Lorg/cocos2d/tests/fr;->a:Lorg/cocos2d/g/o;

    const/high16 v1, 0x4370

    const/high16 v2, 0x4320

    invoke-static {v1, v2}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    return-void
.end method
