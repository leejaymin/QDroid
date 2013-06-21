.class Lorg/cocos2d/tests/gn;
.super Lorg/cocos2d/tests/gy;


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Lorg/cocos2d/tests/gy;-><init>()V

    const-string v0, "orthogonal-test2.tmx"

    invoke-static {v0}, Lorg/cocos2d/e/j;->a(Ljava/lang/String;)Lorg/cocos2d/e/j;

    move-result-object v0

    invoke-virtual {p0, v0, v5, v6}, Lorg/cocos2d/tests/gn;->a(Lorg/cocos2d/g/i;II)Lorg/cocos2d/g/i;

    invoke-virtual {v0}, Lorg/cocos2d/e/j;->n()Lorg/cocos2d/l/g;

    move-result-object v1

    const-string v2, "ContentSize: %f, %f"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, v1, Lorg/cocos2d/l/g;->a:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    iget v1, v1, Lorg/cocos2d/l/g;->b:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/cocos2d/tests/TileMapTest;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lorg/cocos2d/e/j;->z()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    new-array v1, v6, [F

    new-array v2, v6, [F

    new-array v3, v6, [F

    invoke-virtual {v0}, Lorg/cocos2d/e/j;->t()Lorg/cocos2d/opengl/e;

    move-result-object v4

    invoke-virtual {v4, v1, v2, v3}, Lorg/cocos2d/opengl/e;->a([F[F[F)V

    invoke-virtual {v0}, Lorg/cocos2d/e/j;->t()Lorg/cocos2d/opengl/e;

    move-result-object v0

    aget v1, v1, v5

    const/high16 v4, 0x4348

    sub-float/2addr v1, v4

    aget v2, v2, v5

    aget v3, v3, v5

    const/high16 v4, 0x4396

    add-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/cocos2d/opengl/e;->a(FFF)V

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/cocos2d/g/i;

    check-cast p0, Lorg/cocos2d/g/r;

    invoke-virtual {p0}, Lorg/cocos2d/g/r;->d()Lorg/cocos2d/opengl/i;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cocos2d/opengl/i;->j()V

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "TMX Orthogonal test"

    return-object v0
.end method

.method public final a_()V
    .locals 2

    invoke-super {p0}, Lorg/cocos2d/tests/gy;->a_()V

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/c;->a(I)V

    return-void
.end method

.method public final g()V
    .locals 2

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/c;->a(I)V

    invoke-super {p0}, Lorg/cocos2d/tests/gy;->g()V

    return-void
.end method
