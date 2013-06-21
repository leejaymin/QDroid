.class Lorg/cocos2d/tests/ge;
.super Lorg/cocos2d/tests/gy;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lorg/cocos2d/tests/gy;-><init>()V

    const-string v0, "iso-test-movelayer.tmx"

    invoke-static {v0}, Lorg/cocos2d/e/j;->a(Ljava/lang/String;)Lorg/cocos2d/e/j;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/cocos2d/tests/ge;->a(Lorg/cocos2d/g/i;II)Lorg/cocos2d/g/i;

    const/high16 v1, -0x3bd1

    const/high16 v2, -0x3db8

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/e/j;->d(FF)V

    invoke-virtual {v0}, Lorg/cocos2d/e/j;->n()Lorg/cocos2d/l/g;

    move-result-object v0

    sget-object v1, Lorg/cocos2d/tests/TileMapTest;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ContentSize: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lorg/cocos2d/l/g;->a:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "TMX Iso Move Layer"

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "Trees should be horizontally aligned"

    return-object v0
.end method
