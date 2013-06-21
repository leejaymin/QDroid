.class Lorg/cocos2d/tests/gt;
.super Lorg/cocos2d/tests/gy;


# instance fields
.field a:I

.field b:I


# direct methods
.method public constructor <init>()V
    .locals 14

    invoke-direct {p0}, Lorg/cocos2d/tests/gy;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2d/tests/gt;->a:I

    const-string v0, "orthogonal-test2.tmx"

    invoke-static {v0}, Lorg/cocos2d/e/j;->a(Ljava/lang/String;)Lorg/cocos2d/e/j;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/cocos2d/tests/gt;->a(Lorg/cocos2d/g/i;II)Lorg/cocos2d/g/i;

    invoke-virtual {v0}, Lorg/cocos2d/e/j;->n()Lorg/cocos2d/l/g;

    move-result-object v1

    sget-object v2, Lorg/cocos2d/tests/TileMapTest;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ContentSize: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Lorg/cocos2d/l/g;->a:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v1, v1, Lorg/cocos2d/l/g;->b:F

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Layer 0"

    invoke-virtual {v0, v1}, Lorg/cocos2d/e/j;->b(Ljava/lang/String;)Lorg/cocos2d/e/e;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/e/e;->d()Lorg/cocos2d/opengl/i;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cocos2d/opengl/i;->j()V

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v2}, Lorg/cocos2d/e/j;->e(F)V

    const/high16 v0, 0x3f80

    const/high16 v2, 0x427c

    invoke-static {v0, v2}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/cocos2d/e/e;->a(Lorg/cocos2d/l/e;)Lorg/cocos2d/g/o;

    move-result-object v0

    const/high16 v2, 0x4000

    const/high16 v3, 0x427c

    invoke-static {v2, v3}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/e/e;->a(Lorg/cocos2d/l/e;)Lorg/cocos2d/g/o;

    move-result-object v2

    const/high16 v3, 0x3f80

    const/high16 v4, 0x4278

    invoke-static {v3, v4}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/cocos2d/e/e;->a(Lorg/cocos2d/l/e;)Lorg/cocos2d/g/o;

    move-result-object v3

    const/high16 v4, 0x4000

    const/high16 v5, 0x4278

    invoke-static {v4, v5}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/cocos2d/e/e;->a(Lorg/cocos2d/l/e;)Lorg/cocos2d/g/o;

    move-result-object v4

    const/high16 v5, 0x3f00

    const/high16 v6, 0x3f00

    invoke-virtual {v0, v5, v6}, Lorg/cocos2d/g/o;->c(FF)V

    const/high16 v5, 0x3f00

    const/high16 v6, 0x3f00

    invoke-virtual {v2, v5, v6}, Lorg/cocos2d/g/o;->c(FF)V

    const/high16 v5, 0x3f00

    const/high16 v6, 0x3f00

    invoke-virtual {v3, v5, v6}, Lorg/cocos2d/g/o;->c(FF)V

    const/high16 v5, 0x3f00

    const/high16 v6, 0x3f00

    invoke-virtual {v4, v5, v6}, Lorg/cocos2d/g/o;->c(FF)V

    const/high16 v5, 0x3f00

    const/4 v6, 0x0

    const/high16 v7, 0x4320

    invoke-static {v6, v7}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/cocos2d/a/f/l;->a(FLorg/cocos2d/l/e;)Lorg/cocos2d/a/f/l;

    move-result-object v5

    const/high16 v6, 0x4000

    const/high16 v7, 0x43b4

    invoke-static {v6, v7}, Lorg/cocos2d/a/f/r;->a(FF)Lorg/cocos2d/a/f/r;

    move-result-object v6

    const/high16 v7, 0x4000

    const/high16 v8, 0x40a0

    invoke-static {v7, v8}, Lorg/cocos2d/a/f/t;->a(FF)Lorg/cocos2d/a/f/t;

    move-result-object v7

    const/high16 v8, 0x4000

    invoke-static {v8}, Lorg/cocos2d/a/f/g;->c(F)Lorg/cocos2d/a/f/g;

    move-result-object v8

    const/high16 v9, 0x4000

    invoke-static {v9}, Lorg/cocos2d/a/f/f;->c(F)Lorg/cocos2d/a/f/f;

    move-result-object v9

    const/high16 v10, 0x3f80

    const/high16 v11, 0x3f80

    invoke-static {v10, v11}, Lorg/cocos2d/a/f/u;->b(FF)Lorg/cocos2d/a/f/u;

    move-result-object v10

    const-string v11, "removeSprite"

    invoke-static {p0, v11}, Lorg/cocos2d/a/e/b;->b(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/a/e/b;

    move-result-object v11

    const/4 v12, 0x6

    new-array v12, v12, [Lorg/cocos2d/a/a/b;

    const/4 v13, 0x0

    aput-object v6, v12, v13

    const/4 v6, 0x1

    aput-object v7, v12, v6

    const/4 v6, 0x2

    aput-object v8, v12, v6

    const/4 v6, 0x3

    aput-object v9, v12, v6

    const/4 v6, 0x4

    aput-object v10, v12, v6

    const/4 v6, 0x5

    aput-object v11, v12, v6

    invoke-static {v5, v12}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v5

    invoke-virtual {v5}, Lorg/cocos2d/a/f/i;->l()Lorg/cocos2d/a/f/i;

    move-result-object v6

    invoke-virtual {v5}, Lorg/cocos2d/a/f/i;->l()Lorg/cocos2d/a/f/i;

    move-result-object v7

    invoke-virtual {v5}, Lorg/cocos2d/a/f/i;->l()Lorg/cocos2d/a/f/i;

    move-result-object v8

    invoke-virtual {v0, v5}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    invoke-virtual {v2, v6}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    invoke-virtual {v3, v7}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    invoke-virtual {v4, v8}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    const/4 v0, 0x0

    const/high16 v2, 0x427c

    invoke-static {v0, v2}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/cocos2d/e/e;->b(Lorg/cocos2d/l/e;)I

    move-result v0

    iput v0, p0, Lorg/cocos2d/tests/gt;->a:I

    sget-object v0, Lorg/cocos2d/tests/TileMapTest;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Tile GID at:(0,63) is: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lorg/cocos2d/tests/gt;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "updateCol"

    const/high16 v2, 0x4000

    invoke-virtual {p0, v0, v2}, Lorg/cocos2d/tests/gt;->a(Ljava/lang/String;F)V

    const-string v0, "repaintWithGID"

    const/high16 v2, 0x4000

    invoke-virtual {p0, v0, v2}, Lorg/cocos2d/tests/gt;->a(Ljava/lang/String;F)V

    const-string v0, "removeTiles"

    const/high16 v2, 0x3f80

    invoke-virtual {p0, v0, v2}, Lorg/cocos2d/tests/gt;->a(Ljava/lang/String;F)V

    sget-object v0, Lorg/cocos2d/tests/TileMapTest;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "++++atlas quantity: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/cocos2d/e/e;->c()Lorg/cocos2d/opengl/m;

    move-result-object v3

    invoke-virtual {v3}, Lorg/cocos2d/opengl/m;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lorg/cocos2d/tests/TileMapTest;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "++++children: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/cocos2d/e/e;->z()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2d/tests/gt;->b:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "TMX Read/Write test"

    return-object v0
.end method
