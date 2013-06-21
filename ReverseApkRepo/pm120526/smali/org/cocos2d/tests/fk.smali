.class Lorg/cocos2d/tests/fk;
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

    const-string v0, "BezierBy"

    return-object v0
.end method

.method public final a_()V
    .locals 9

    const/4 v8, 0x0

    const/high16 v7, 0x42c8

    const/4 v6, 0x0

    const/high16 v5, 0x4396

    const/high16 v4, 0x4000

    invoke-super {p0}, Lorg/cocos2d/tests/fo;->a_()V

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v0

    new-instance v1, Lorg/cocos2d/l/a;

    invoke-direct {v1}, Lorg/cocos2d/l/a;-><init>()V

    iget v2, v0, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v2, v4

    invoke-static {v6, v2}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    iput-object v2, v1, Lorg/cocos2d/l/a;->b:Lorg/cocos2d/l/e;

    iget v2, v0, Lorg/cocos2d/l/g;->b:F

    neg-float v2, v2

    div-float/2addr v2, v4

    invoke-static {v5, v2}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    iput-object v2, v1, Lorg/cocos2d/l/a;->c:Lorg/cocos2d/l/e;

    invoke-static {v5, v7}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    iput-object v2, v1, Lorg/cocos2d/l/a;->a:Lorg/cocos2d/l/e;

    invoke-static {v1}, Lorg/cocos2d/a/f/b;->a(Lorg/cocos2d/l/a;)Lorg/cocos2d/a/f/b;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/a/f/i;->k()Lorg/cocos2d/a/f/i;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/cocos2d/a/a/b;

    aput-object v2, v3, v8

    invoke-static {v1, v3}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v1

    invoke-static {v1}, Lorg/cocos2d/a/a/d;->a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/a/d;

    move-result-object v1

    new-instance v2, Lorg/cocos2d/l/a;

    invoke-direct {v2}, Lorg/cocos2d/l/a;-><init>()V

    iget v3, v0, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v3, v4

    invoke-static {v7, v3}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v3

    iput-object v3, v2, Lorg/cocos2d/l/a;->b:Lorg/cocos2d/l/e;

    const/high16 v3, 0x4348

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    neg-float v0, v0

    div-float/2addr v0, v4

    invoke-static {v3, v0}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    iput-object v0, v2, Lorg/cocos2d/l/a;->c:Lorg/cocos2d/l/e;

    invoke-static {v5, v6}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    iput-object v0, v2, Lorg/cocos2d/l/a;->a:Lorg/cocos2d/l/e;

    invoke-static {v2}, Lorg/cocos2d/a/f/b;->a(Lorg/cocos2d/l/a;)Lorg/cocos2d/a/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/a/f/i;->k()Lorg/cocos2d/a/f/i;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/cocos2d/a/a/b;

    aput-object v2, v3, v8

    invoke-static {v0, v3}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v0

    invoke-static {v0}, Lorg/cocos2d/a/a/d;->a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/a/d;

    move-result-object v0

    iget-object v2, p0, Lorg/cocos2d/tests/fk;->a:Lorg/cocos2d/g/o;

    invoke-virtual {v2, v1}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    iget-object v1, p0, Lorg/cocos2d/tests/fk;->b:Lorg/cocos2d/g/o;

    invoke-virtual {v1, v0}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    return-void
.end method
