.class Lorg/cocos2d/tests/gx;
.super Lorg/cocos2d/tests/gy;


# direct methods
.method public constructor <init>()V
    .locals 7

    const/high16 v6, 0x4000

    const/16 v1, 0x40

    invoke-direct {p0}, Lorg/cocos2d/tests/gy;-><init>()V

    const/16 v0, 0xff

    invoke-static {v1, v1, v1, v0}, Lorg/cocos2d/l/k;->a(IIII)Lorg/cocos2d/l/k;

    move-result-object v0

    invoke-static {v0}, Lorg/cocos2d/e/a;->a(Lorg/cocos2d/l/k;)Lorg/cocos2d/e/a;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lorg/cocos2d/tests/gx;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    const-string v0, "iso-test2-uncompressed.tmx"

    invoke-static {v0}, Lorg/cocos2d/e/j;->a(Ljava/lang/String;)Lorg/cocos2d/e/j;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/cocos2d/tests/gx;->a(Lorg/cocos2d/g/i;II)Lorg/cocos2d/g/i;

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

    invoke-virtual {v0}, Lorg/cocos2d/e/j;->a()Lorg/cocos2d/l/g;

    move-result-object v1

    invoke-virtual {v0}, Lorg/cocos2d/e/j;->b()Lorg/cocos2d/l/g;

    move-result-object v2

    const/high16 v3, 0x3f80

    iget v4, v1, Lorg/cocos2d/l/g;->a:F

    neg-float v4, v4

    iget v5, v2, Lorg/cocos2d/l/g;->a:F

    mul-float/2addr v4, v5

    div-float/2addr v4, v6

    iget v1, v1, Lorg/cocos2d/l/g;->b:F

    neg-float v1, v1

    iget v2, v2, Lorg/cocos2d/l/g;->b:F

    mul-float/2addr v1, v2

    div-float/2addr v1, v6

    invoke-static {v4, v1}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-static {v3, v1}, Lorg/cocos2d/a/f/m;->b(FLorg/cocos2d/l/e;)Lorg/cocos2d/a/f/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/e/j;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    invoke-virtual {v0}, Lorg/cocos2d/e/j;->z()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/cocos2d/g/i;

    check-cast p0, Lorg/cocos2d/e/e;

    invoke-virtual {p0}, Lorg/cocos2d/e/e;->a()V

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "TMX Uncompressed test"

    return-object v0
.end method
