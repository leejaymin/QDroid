.class Lorg/cocos2d/tests/r;
.super Lorg/cocos2d/tests/m;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/cocos2d/tests/m;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "Manual Transformation"

    return-object v0
.end method

.method public final a_()V
    .locals 7

    const/4 v6, 0x0

    const/high16 v5, 0x42c8

    const/high16 v4, 0x4000

    invoke-super {p0}, Lorg/cocos2d/tests/m;->a_()V

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/tests/r;->b:Lorg/cocos2d/g/o;

    const/high16 v2, 0x4020

    invoke-virtual {v1, v2}, Lorg/cocos2d/g/o;->c(F)V

    iget-object v1, p0, Lorg/cocos2d/tests/r;->b:Lorg/cocos2d/g/o;

    const/high16 v2, -0x4080

    invoke-virtual {v1, v2}, Lorg/cocos2d/g/o;->d(F)V

    iget-object v1, p0, Lorg/cocos2d/tests/r;->b:Lorg/cocos2d/g/o;

    const/high16 v2, 0x428c

    invoke-static {v5, v2}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    iget-object v1, p0, Lorg/cocos2d/tests/r;->b:Lorg/cocos2d/g/o;

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Lorg/cocos2d/g/o;->a(I)V

    iget-object v1, p0, Lorg/cocos2d/tests/r;->a:Lorg/cocos2d/g/o;

    const/high16 v2, 0x42f0

    invoke-virtual {v1, v2}, Lorg/cocos2d/g/o;->b(F)V

    iget-object v1, p0, Lorg/cocos2d/tests/r;->a:Lorg/cocos2d/g/o;

    iget v2, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v2, v4

    iget v3, v0, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    iget-object v1, p0, Lorg/cocos2d/tests/r;->a:Lorg/cocos2d/g/o;

    const/16 v2, 0xff

    invoke-static {v2, v6, v6}, Lorg/cocos2d/l/j;->a(III)Lorg/cocos2d/l/j;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/l/j;)V

    iget-object v1, p0, Lorg/cocos2d/tests/r;->c:Lorg/cocos2d/g/o;

    iget v2, v0, Lorg/cocos2d/l/g;->a:F

    sub-float/2addr v2, v5

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v0, v4

    invoke-static {v2, v0}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    iget-object v0, p0, Lorg/cocos2d/tests/r;->c:Lorg/cocos2d/g/o;

    sget-object v1, Lorg/cocos2d/l/j;->c:Lorg/cocos2d/l/j;

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/l/j;)V

    return-void
.end method
