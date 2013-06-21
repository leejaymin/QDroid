.class Lorg/cocos2d/tests/gu;
.super Lorg/cocos2d/tests/gy;


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0}, Lorg/cocos2d/tests/gy;-><init>()V

    const-string v0, "orthogonal-test5.tmx"

    invoke-static {v0}, Lorg/cocos2d/e/j;->a(Ljava/lang/String;)Lorg/cocos2d/e/j;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v6, v1}, Lorg/cocos2d/tests/gu;->a(Lorg/cocos2d/g/i;II)Lorg/cocos2d/g/i;

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

    move-result-object v0

    iget-object v1, v0, Lorg/cocos2d/e/e;->c:Lorg/cocos2d/l/g;

    move v2, v6

    :goto_0
    int-to-float v3, v2

    iget v4, v1, Lorg/cocos2d/l/g;->b:F

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_0

    return-void

    :cond_0
    move v3, v6

    :goto_1
    int-to-float v4, v3

    iget v5, v1, Lorg/cocos2d/l/g;->a:F

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    int-to-float v4, v3

    int-to-float v5, v2

    invoke-static {v4, v5}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/cocos2d/e/e;->c(Lorg/cocos2d/l/e;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "TMX resize test"

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "Should not crash. Testing issue #740"

    return-object v0
.end method
