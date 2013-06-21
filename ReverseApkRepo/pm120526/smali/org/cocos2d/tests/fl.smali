.class Lorg/cocos2d/tests/fl;
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

    const-string v0, "Blink"

    return-object v0
.end method

.method public final a_()V
    .locals 3

    invoke-super {p0}, Lorg/cocos2d/tests/fo;->a_()V

    invoke-virtual {p0}, Lorg/cocos2d/tests/fl;->b()V

    const/16 v0, 0xa

    invoke-static {v0}, Lorg/cocos2d/a/f/d;->b(I)Lorg/cocos2d/a/f/d;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1}, Lorg/cocos2d/a/f/d;->b(I)Lorg/cocos2d/a/f/d;

    move-result-object v1

    iget-object v2, p0, Lorg/cocos2d/tests/fl;->b:Lorg/cocos2d/g/o;

    invoke-virtual {v2, v0}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    iget-object v0, p0, Lorg/cocos2d/tests/fl;->a:Lorg/cocos2d/g/o;

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    return-void
.end method
