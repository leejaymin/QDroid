.class Lorg/cocos2d/tests/cd;
.super Lorg/cocos2d/tests/cj;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/cocos2d/tests/cj;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "Lens + Waves3d and CCOrbitCamera"

    return-object v0
.end method

.method public final a_()V
    .locals 13

    const/16 v5, 0xa

    const/4 v12, 0x0

    const/high16 v1, 0x4000

    const/4 v2, 0x0

    const/4 v11, 0x1

    invoke-super {p0}, Lorg/cocos2d/tests/cj;->a_()V

    invoke-virtual {p0, v11}, Lorg/cocos2d/tests/cd;->e(I)Lorg/cocos2d/g/i;

    move-result-object v6

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v0

    iget v3, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v3, v1

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v0, v1

    invoke-static {v3, v0}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    const/high16 v3, 0x4370

    const/16 v4, 0xf

    invoke-static {v4, v5}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v4

    invoke-static {v0, v3, v4, v2}, Lorg/cocos2d/a/d/e;->a(Lorg/cocos2d/l/e;FLorg/cocos2d/l/m;F)Lorg/cocos2d/a/d/e;

    move-result-object v7

    const/16 v0, 0xf

    invoke-static {v0, v5}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v0

    invoke-static {v0}, Lorg/cocos2d/a/d/n;->b(Lorg/cocos2d/l/m;)Lorg/cocos2d/a/d/n;

    move-result-object v8

    invoke-static {v11}, Lorg/cocos2d/a/d/h;->b(I)Lorg/cocos2d/a/d/h;

    move-result-object v9

    const/high16 v0, 0x4100

    invoke-static {v0}, Lorg/cocos2d/a/f/e;->c(F)Lorg/cocos2d/a/f/e;

    move-result-object v10

    const/high16 v0, 0x40a0

    const/high16 v3, 0x4334

    const/high16 v5, -0x3d4c

    move v4, v2

    invoke-static/range {v0 .. v5}, Lorg/cocos2d/a/b/b;->a(FFFFFF)Lorg/cocos2d/a/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/a/b/b;->j()Lorg/cocos2d/a/f/q;

    move-result-object v1

    new-array v2, v11, [Lorg/cocos2d/a/a/b;

    aput-object v1, v2, v12

    invoke-static {v0, v2}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v0

    invoke-static {v0}, Lorg/cocos2d/a/a/d;->a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/a/d;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/cocos2d/g/i;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/cocos2d/a/a/b;

    aput-object v10, v0, v12

    aput-object v9, v0, v11

    const/4 v1, 0x2

    aput-object v8, v0, v1

    invoke-static {v7, v0}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/cocos2d/g/i;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    return-void
.end method
