.class Lorg/cocos2d/tests/gw;
.super Lorg/cocos2d/tests/gy;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lorg/cocos2d/tests/gy;-><init>()V

    const-string v0, "orthogonal-test5.tmx"

    invoke-static {v0}, Lorg/cocos2d/e/j;->a(Ljava/lang/String;)Lorg/cocos2d/e/j;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/cocos2d/tests/gw;->a(Lorg/cocos2d/g/i;II)Lorg/cocos2d/g/i;

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

    const-string v1, "Layer 0"

    invoke-virtual {v0, v1}, Lorg/cocos2d/e/j;->b(Ljava/lang/String;)Lorg/cocos2d/e/e;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/e/e;->d()Lorg/cocos2d/opengl/i;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/opengl/i;->j()V

    const-string v1, "Layer 1"

    invoke-virtual {v0, v1}, Lorg/cocos2d/e/j;->b(Ljava/lang/String;)Lorg/cocos2d/e/e;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/e/e;->d()Lorg/cocos2d/opengl/i;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/opengl/i;->j()V

    const-string v1, "Layer 2"

    invoke-virtual {v0, v1}, Lorg/cocos2d/e/j;->b(Ljava/lang/String;)Lorg/cocos2d/e/e;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/e/e;->d()Lorg/cocos2d/opengl/i;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/opengl/i;->j()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "TMX Tileset test"

    return-object v0
.end method
