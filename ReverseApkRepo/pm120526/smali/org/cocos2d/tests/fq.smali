.class Lorg/cocos2d/tests/fq;
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

    const-string v0, "JumpTo / JumpBy"

    return-object v0
.end method

.method public final a_()V
    .locals 5

    const/high16 v4, 0x4248

    const/high16 v3, 0x4000

    const/high16 v2, 0x4396

    invoke-super {p0}, Lorg/cocos2d/tests/fo;->a_()V

    invoke-static {v2, v2}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-static {v3, v0, v4}, Lorg/cocos2d/a/f/k;->a(FLorg/cocos2d/l/e;F)Lorg/cocos2d/a/f/k;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v2, v1}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v3, v1, v4, v2}, Lorg/cocos2d/a/f/j;->a(FLorg/cocos2d/l/e;FI)Lorg/cocos2d/a/f/j;

    move-result-object v1

    iget-object v2, p0, Lorg/cocos2d/tests/fq;->b:Lorg/cocos2d/g/o;

    invoke-virtual {v2, v0}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    iget-object v0, p0, Lorg/cocos2d/tests/fq;->a:Lorg/cocos2d/g/o;

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    return-void
.end method
