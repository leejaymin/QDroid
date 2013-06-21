.class Lorg/cocos2d/tests/gg;
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

    invoke-virtual {p0, v0, v1}, Lorg/cocos2d/tests/gg;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    const-string v0, "iso-test.tmx"

    invoke-static {v0}, Lorg/cocos2d/e/j;->a(Ljava/lang/String;)Lorg/cocos2d/e/j;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/cocos2d/tests/gg;->a(Lorg/cocos2d/g/i;II)Lorg/cocos2d/g/i;

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

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "TMX Isometric test 0"

    return-object v0
.end method
