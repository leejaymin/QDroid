.class Lorg/cocos2d/tests/gj;
.super Lorg/cocos2d/tests/gy;


# instance fields
.field a:Lorg/cocos2d/g/o;


# direct methods
.method public constructor <init>()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x41e8

    invoke-direct {p0}, Lorg/cocos2d/tests/gy;-><init>()V

    const-string v0, "iso-test-vertexz.tmx"

    invoke-static {v0}, Lorg/cocos2d/e/j;->a(Ljava/lang/String;)Lorg/cocos2d/e/j;

    move-result-object v0

    invoke-virtual {p0, v0, v6, v7}, Lorg/cocos2d/tests/gj;->a(Lorg/cocos2d/g/i;II)Lorg/cocos2d/g/i;

    const/high16 v1, -0x3bd1

    const/high16 v2, -0x3db8

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/e/j;->d(FF)V

    invoke-virtual {v0}, Lorg/cocos2d/e/j;->n()Lorg/cocos2d/l/g;

    move-result-object v1

    sget-object v2, Lorg/cocos2d/tests/TileMapTest;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ContentSize: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Lorg/cocos2d/l/g;->a:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v1, v1, Lorg/cocos2d/l/g;->b:F

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Trees"

    invoke-virtual {v0, v1}, Lorg/cocos2d/e/j;->b(Ljava/lang/String;)Lorg/cocos2d/e/e;

    move-result-object v0

    invoke-static {v5, v5}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/e/e;->a(Lorg/cocos2d/l/e;)Lorg/cocos2d/g/o;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/tests/gj;->a:Lorg/cocos2d/g/o;

    const/high16 v0, 0x4120

    const/high16 v1, 0x4396

    const/high16 v2, 0x437a

    invoke-static {v1, v2}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/cocos2d/a/f/l;->a(FLorg/cocos2d/l/e;)Lorg/cocos2d/a/f/l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/a/f/l;->m()Lorg/cocos2d/a/f/l;

    move-result-object v1

    new-array v2, v7, [Lorg/cocos2d/a/a/b;

    aput-object v1, v2, v6

    invoke-static {v0, v2}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/tests/gj;->a:Lorg/cocos2d/g/o;

    invoke-static {v0}, Lorg/cocos2d/a/a/d;->a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/a/d;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    const-string v0, "repositionSprite"

    invoke-virtual {p0, v0}, Lorg/cocos2d/tests/gj;->d(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "TMX Iso VertexZ"

    return-object v0
.end method

.method public final a_()V
    .locals 2

    invoke-super {p0}, Lorg/cocos2d/tests/gy;->a_()V

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/c;->a(I)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "Sprite should hide behind the trees"

    return-object v0
.end method

.method public final g()V
    .locals 0

    invoke-super {p0}, Lorg/cocos2d/tests/gy;->g()V

    return-void
.end method
