.class Lorg/cocos2d/tests/gh;
.super Lorg/cocos2d/tests/gy;


# direct methods
.method public constructor <init>()V
    .locals 6

    const/high16 v5, 0x3f00

    const/16 v1, 0x40

    invoke-direct {p0}, Lorg/cocos2d/tests/gy;-><init>()V

    const/16 v0, 0xff

    invoke-static {v1, v1, v1, v0}, Lorg/cocos2d/l/k;->a(IIII)Lorg/cocos2d/l/k;

    move-result-object v0

    invoke-static {v0}, Lorg/cocos2d/e/a;->a(Lorg/cocos2d/l/k;)Lorg/cocos2d/e/a;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lorg/cocos2d/tests/gh;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    const-string v0, "iso-test1.tmx"

    invoke-static {v0}, Lorg/cocos2d/e/j;->a(Ljava/lang/String;)Lorg/cocos2d/e/j;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/cocos2d/tests/gh;->a(Lorg/cocos2d/g/i;II)Lorg/cocos2d/g/i;

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

    invoke-virtual {v0, v5, v5}, Lorg/cocos2d/e/j;->c(FF)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "TMX Isometric test + anchorPoint"

    return-object v0
.end method