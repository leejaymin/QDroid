.class Lorg/cocos2d/tests/gq;
.super Lorg/cocos2d/tests/gy;


# direct methods
.method public constructor <init>()V
    .locals 8

    const/high16 v7, 0x3f80

    const/high16 v6, 0x4000

    const/4 v5, 0x0

    invoke-direct {p0}, Lorg/cocos2d/tests/gy;-><init>()V

    const-string v0, "orthogonal-test4.tmx"

    invoke-static {v0}, Lorg/cocos2d/e/j;->a(Ljava/lang/String;)Lorg/cocos2d/e/j;

    move-result-object v1

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lorg/cocos2d/tests/gq;->a(Lorg/cocos2d/g/i;II)Lorg/cocos2d/g/i;

    invoke-virtual {v1}, Lorg/cocos2d/e/j;->n()Lorg/cocos2d/l/g;

    move-result-object v0

    sget-object v2, Lorg/cocos2d/tests/TileMapTest;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ContentSize: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lorg/cocos2d/l/g;->a:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lorg/cocos2d/e/j;->z()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1, v5, v5}, Lorg/cocos2d/e/j;->c(FF)V

    const-string v0, "Layer 0"

    invoke-virtual {v1, v0}, Lorg/cocos2d/e/j;->b(Ljava/lang/String;)Lorg/cocos2d/e/e;

    move-result-object v0

    iget-object v1, v0, Lorg/cocos2d/e/e;->c:Lorg/cocos2d/l/g;

    invoke-static {v5, v5}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/cocos2d/e/e;->a(Lorg/cocos2d/l/e;)Lorg/cocos2d/g/o;

    move-result-object v2

    invoke-virtual {v2, v6}, Lorg/cocos2d/g/o;->e(F)V

    iget v2, v1, Lorg/cocos2d/l/g;->a:F

    sub-float/2addr v2, v7

    invoke-static {v2, v5}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/cocos2d/e/e;->a(Lorg/cocos2d/l/e;)Lorg/cocos2d/g/o;

    move-result-object v2

    invoke-virtual {v2, v6}, Lorg/cocos2d/g/o;->e(F)V

    iget v2, v1, Lorg/cocos2d/l/g;->b:F

    sub-float/2addr v2, v7

    invoke-static {v5, v2}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/cocos2d/e/e;->a(Lorg/cocos2d/l/e;)Lorg/cocos2d/g/o;

    move-result-object v2

    invoke-virtual {v2, v6}, Lorg/cocos2d/g/o;->e(F)V

    iget v2, v1, Lorg/cocos2d/l/g;->a:F

    sub-float/2addr v2, v7

    iget v1, v1, Lorg/cocos2d/l/g;->b:F

    sub-float/2addr v1, v7

    invoke-static {v2, v1}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/e/e;->a(Lorg/cocos2d/l/e;)Lorg/cocos2d/g/o;

    move-result-object v0

    invoke-virtual {v0, v6}, Lorg/cocos2d/g/o;->e(F)V

    const-string v0, "removeSprite"

    invoke-virtual {p0, v0, v6}, Lorg/cocos2d/tests/gq;->a(Ljava/lang/String;F)V

    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/g/i;

    check-cast v0, Lorg/cocos2d/g/r;

    invoke-virtual {v0}, Lorg/cocos2d/g/r;->d()Lorg/cocos2d/opengl/i;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/opengl/i;->j()V

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "TMX width/height test"

    return-object v0
.end method
