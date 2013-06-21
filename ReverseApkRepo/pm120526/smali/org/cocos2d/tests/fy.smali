.class Lorg/cocos2d/tests/fy;
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

    const-string v0, "RotateTo / RotateBy"

    return-object v0
.end method

.method public final a_()V
    .locals 3

    const/high16 v2, 0x4000

    invoke-super {p0}, Lorg/cocos2d/tests/fo;->a_()V

    invoke-virtual {p0}, Lorg/cocos2d/tests/fy;->b()V

    const/high16 v0, 0x4234

    invoke-static {v2, v0}, Lorg/cocos2d/a/f/s;->a(FF)Lorg/cocos2d/a/f/s;

    move-result-object v0

    const/high16 v1, 0x43b4

    invoke-static {v2, v1}, Lorg/cocos2d/a/f/r;->a(FF)Lorg/cocos2d/a/f/r;

    move-result-object v1

    iget-object v2, p0, Lorg/cocos2d/tests/fy;->b:Lorg/cocos2d/g/o;

    invoke-virtual {v2, v0}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    iget-object v0, p0, Lorg/cocos2d/tests/fy;->a:Lorg/cocos2d/g/o;

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    return-void
.end method
