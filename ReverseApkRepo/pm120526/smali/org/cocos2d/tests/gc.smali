.class Lorg/cocos2d/tests/gc;
.super Lorg/cocos2d/tests/fo;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/cocos2d/tests/fo;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "TintTo / TintBy"

    return-object v0
.end method

.method public final a_()V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, -0x1

    const/16 v2, -0x80

    invoke-super {p0}, Lorg/cocos2d/tests/fo;->a_()V

    invoke-virtual {p0}, Lorg/cocos2d/tests/gc;->b()V

    invoke-static {v0, v3, v0}, Lorg/cocos2d/l/j;->a(III)Lorg/cocos2d/l/j;

    move-result-object v0

    invoke-static {v0}, Lorg/cocos2d/a/f/y;->a(Lorg/cocos2d/l/j;)Lorg/cocos2d/a/f/y;

    move-result-object v0

    const/high16 v1, 0x4000

    invoke-static {v3, v2, v2}, Lorg/cocos2d/l/j;->a(III)Lorg/cocos2d/l/j;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/cocos2d/a/f/x;->a(FLorg/cocos2d/l/j;)Lorg/cocos2d/a/f/x;

    move-result-object v1

    iget-object v2, p0, Lorg/cocos2d/tests/gc;->b:Lorg/cocos2d/g/o;

    invoke-virtual {v2, v0}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    iget-object v0, p0, Lorg/cocos2d/tests/gc;->a:Lorg/cocos2d/g/o;

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    return-void
.end method
