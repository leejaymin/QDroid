.class Lorg/cocos2d/tests/fz;
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

    const-string v0, "ScaleTo / ScaleBy"

    return-object v0
.end method

.method public final a_()V
    .locals 3

    const/high16 v1, 0x4000

    invoke-super {p0}, Lorg/cocos2d/tests/fo;->a_()V

    invoke-virtual {p0}, Lorg/cocos2d/tests/fz;->b()V

    const/high16 v0, 0x3f00

    invoke-static {v1, v0}, Lorg/cocos2d/a/f/u;->b(FF)Lorg/cocos2d/a/f/u;

    move-result-object v0

    invoke-static {v1, v1}, Lorg/cocos2d/a/f/t;->a(FF)Lorg/cocos2d/a/f/t;

    move-result-object v1

    iget-object v2, p0, Lorg/cocos2d/tests/fz;->b:Lorg/cocos2d/g/o;

    invoke-virtual {v2, v0}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    iget-object v0, p0, Lorg/cocos2d/tests/fz;->a:Lorg/cocos2d/g/o;

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    return-void
.end method
