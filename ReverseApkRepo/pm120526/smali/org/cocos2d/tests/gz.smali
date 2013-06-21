.class Lorg/cocos2d/tests/gz;
.super Lorg/cocos2d/tests/gy;


# direct methods
.method public constructor <init>()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-direct {p0}, Lorg/cocos2d/tests/gy;-><init>()V

    const-string v0, "tiles.png"

    const-string v1, "levelmap.tga"

    invoke-static {v0, v1}, Lorg/cocos2d/g/u;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/cocos2d/g/u;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/u;->c()Lorg/cocos2d/opengl/i;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/opengl/i;->i()V

    invoke-virtual {v0}, Lorg/cocos2d/g/u;->n()Lorg/cocos2d/l/g;

    move-result-object v1

    const-string v2, "ContentSize: %f, %f"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, v1, Lorg/cocos2d/l/g;->a:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    iget v1, v1, Lorg/cocos2d/l/g;->b:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/cocos2d/tests/TileMapTest;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "updateMap"

    const v2, 0x3e4ccccd

    invoke-virtual {p0, v1, v2}, Lorg/cocos2d/tests/gz;->a(Ljava/lang/String;F)V

    invoke-virtual {p0, v0, v6, v7}, Lorg/cocos2d/tests/gz;->a(Lorg/cocos2d/g/i;II)Lorg/cocos2d/g/i;

    invoke-virtual {v0, v5, v5}, Lorg/cocos2d/g/u;->c(FF)V

    const/high16 v1, -0x3e60

    const/high16 v2, -0x3cb8

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/g/u;->d(FF)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "Editable TileMapAtlas"

    return-object v0
.end method
