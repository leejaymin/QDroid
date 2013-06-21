.class Lorg/cocos2d/tests/gf;
.super Lorg/cocos2d/tests/gy;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lorg/cocos2d/tests/gy;-><init>()V

    const-string v0, "iso-test-objectgroup.tmx"

    invoke-static {v0}, Lorg/cocos2d/e/j;->a(Ljava/lang/String;)Lorg/cocos2d/e/j;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/cocos2d/tests/gf;->a(Lorg/cocos2d/g/i;II)Lorg/cocos2d/g/i;

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

    const-string v1, "Object Group 1"

    invoke-virtual {v0, v1}, Lorg/cocos2d/e/j;->c(Ljava/lang/String;)Lorg/cocos2d/e/i;

    move-result-object v0

    iget-object v0, v0, Lorg/cocos2d/e/i;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    sget-object v1, Lorg/cocos2d/tests/TileMapTest;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "object: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "TMX Iso object test"

    return-object v0
.end method

.method public final a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/cocos2d/tests/gf;->e(I)Lorg/cocos2d/g/i;

    move-result-object p0

    check-cast p0, Lorg/cocos2d/e/j;

    const-string v0, "Object Group 1"

    invoke-virtual {p0, v0}, Lorg/cocos2d/e/j;->c(Ljava/lang/String;)Lorg/cocos2d/e/i;

    move-result-object v0

    iget-object v0, v0, Lorg/cocos2d/e/i;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    const-string v0, "x"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string v0, "y"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const-string v0, "width"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v4, "height"

    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/high16 v5, 0x4040

    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    int-to-float v5, v2

    int-to-float v6, v3

    invoke-static {v5, v6}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v5

    add-int v6, v2, v0

    int-to-float v6, v6

    int-to-float v7, v3

    invoke-static {v6, v7}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v6

    invoke-static {p1, v5, v6}, Lorg/cocos2d/opengl/f;->a(Ljavax/microedition/khronos/opengles/GL10;Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)V

    add-int v5, v2, v0

    int-to-float v5, v5

    int-to-float v6, v3

    invoke-static {v5, v6}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v5

    add-int v6, v2, v0

    int-to-float v6, v6

    add-int v7, v3, v4

    int-to-float v7, v7

    invoke-static {v6, v7}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v6

    invoke-static {p1, v5, v6}, Lorg/cocos2d/opengl/f;->a(Ljavax/microedition/khronos/opengles/GL10;Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)V

    add-int/2addr v0, v2

    int-to-float v0, v0

    add-int v5, v3, v4

    int-to-float v5, v5

    invoke-static {v0, v5}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    int-to-float v5, v2

    add-int v6, v3, v4

    int-to-float v6, v6

    invoke-static {v5, v6}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v5

    invoke-static {p1, v0, v5}, Lorg/cocos2d/opengl/f;->a(Ljavax/microedition/khronos/opengles/GL10;Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)V

    int-to-float v0, v2

    add-int/2addr v4, v3

    int-to-float v4, v4

    invoke-static {v0, v4}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    int-to-float v2, v2

    int-to-float v3, v3

    invoke-static {v2, v3}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lorg/cocos2d/opengl/f;->a(Ljavax/microedition/khronos/opengles/GL10;Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)V

    const/high16 v0, 0x3f80

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    goto/16 :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "You need to parse them manually. See bug #810"

    return-object v0
.end method
