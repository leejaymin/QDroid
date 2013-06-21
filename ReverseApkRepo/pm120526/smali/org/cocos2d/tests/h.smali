.class Lorg/cocos2d/tests/h;
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

    const-string v0, "BezierBy / BezierTo"

    return-object v0
.end method

.method public final a_()V
    .locals 8

    const/high16 v4, 0x4396

    const/high16 v7, 0x42c8

    const/high16 v6, 0x4320

    const/high16 v5, 0x4000

    invoke-super {p0}, Lorg/cocos2d/tests/m;->a_()V

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v0

    new-instance v1, Lorg/cocos2d/l/a;

    invoke-direct {v1}, Lorg/cocos2d/l/a;-><init>()V

    const/4 v2, 0x0

    iget v3, v0, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v3, v5

    invoke-static {v2, v3}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    iput-object v2, v1, Lorg/cocos2d/l/a;->b:Lorg/cocos2d/l/e;

    iget v2, v0, Lorg/cocos2d/l/g;->b:F

    neg-float v2, v2

    div-float/2addr v2, v5

    invoke-static {v4, v2}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    iput-object v2, v1, Lorg/cocos2d/l/a;->c:Lorg/cocos2d/l/e;

    invoke-static {v4, v7}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    iput-object v2, v1, Lorg/cocos2d/l/a;->a:Lorg/cocos2d/l/e;

    invoke-static {v1}, Lorg/cocos2d/a/f/b;->a(Lorg/cocos2d/l/a;)Lorg/cocos2d/a/f/b;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/a/f/b;->j()Lorg/cocos2d/a/f/b;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/cocos2d/a/a/b;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v1

    invoke-static {v1}, Lorg/cocos2d/a/a/d;->a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/a/d;

    move-result-object v1

    iget-object v2, p0, Lorg/cocos2d/tests/h;->b:Lorg/cocos2d/g/o;

    const/high16 v3, 0x42a0

    invoke-static {v3, v6}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    new-instance v2, Lorg/cocos2d/l/a;

    invoke-direct {v2}, Lorg/cocos2d/l/a;-><init>()V

    iget v3, v0, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v3, v5

    invoke-static {v7, v3}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v3

    iput-object v3, v2, Lorg/cocos2d/l/a;->b:Lorg/cocos2d/l/e;

    const/high16 v3, 0x4348

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    neg-float v0, v0

    div-float/2addr v0, v5

    invoke-static {v3, v0}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    iput-object v0, v2, Lorg/cocos2d/l/a;->c:Lorg/cocos2d/l/e;

    const/high16 v0, 0x4370

    invoke-static {v0, v6}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    iput-object v0, v2, Lorg/cocos2d/l/a;->a:Lorg/cocos2d/l/e;

    invoke-static {v2}, Lorg/cocos2d/a/f/c;->b(Lorg/cocos2d/l/a;)Lorg/cocos2d/a/f/c;

    move-result-object v0

    iget-object v3, p0, Lorg/cocos2d/tests/h;->c:Lorg/cocos2d/g/o;

    const/high16 v4, 0x43c8

    invoke-static {v4, v6}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    invoke-static {v2}, Lorg/cocos2d/a/f/c;->b(Lorg/cocos2d/l/a;)Lorg/cocos2d/a/f/c;

    move-result-object v2

    iget-object v3, p0, Lorg/cocos2d/tests/h;->a:Lorg/cocos2d/g/o;

    invoke-virtual {v3, v1}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    iget-object v1, p0, Lorg/cocos2d/tests/h;->b:Lorg/cocos2d/g/o;

    invoke-virtual {v1, v0}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    iget-object v0, p0, Lorg/cocos2d/tests/h;->c:Lorg/cocos2d/g/o;

    invoke-virtual {v0, v2}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    return-void
.end method
