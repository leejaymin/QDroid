.class Lorg/cocos2d/tests/e;
.super Lorg/cocos2d/tests/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/cocos2d/tests/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "Pause Test"

    return-object v0
.end method

.method public final a_()V
    .locals 5

    const/4 v4, 0x1

    const/high16 v2, 0x4348

    invoke-super {p0}, Lorg/cocos2d/tests/a;->a_()V

    const-string v0, "grossini.png"

    invoke-static {v0}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v4}, Lorg/cocos2d/tests/e;->a(Lorg/cocos2d/g/i;II)Lorg/cocos2d/g/i;

    invoke-static {v2, v2}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    const/high16 v1, 0x3f80

    const/high16 v2, 0x4316

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/cocos2d/a/f/l;->a(FLorg/cocos2d/l/e;)Lorg/cocos2d/a/f/l;

    move-result-object v1

    invoke-static {}, Lorg/cocos2d/a/a;->a()Lorg/cocos2d/a/a;

    move-result-object v2

    invoke-virtual {v2, v1, v0, v4}, Lorg/cocos2d/a/a;->a(Lorg/cocos2d/a/a/a;Lorg/cocos2d/g/i;Z)V

    const-string v0, "unpause"

    const/high16 v1, 0x4040

    invoke-virtual {p0, v0, v1}, Lorg/cocos2d/tests/e;->a(Ljava/lang/String;F)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "After 3 seconds grossini should move"

    return-object v0
.end method
