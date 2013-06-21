.class Lorg/cocos2d/tests/fn;
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

    const-string v0, "DelayTime: m + Delay + m"

    return-object v0
.end method

.method public final a_()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lorg/cocos2d/tests/fo;->a_()V

    iget-object v0, p0, Lorg/cocos2d/tests/fn;->b:Lorg/cocos2d/g/o;

    invoke-virtual {v0, v3}, Lorg/cocos2d/g/o;->c(Z)V

    const/high16 v0, 0x3f80

    const/high16 v1, 0x4316

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/cocos2d/a/f/l;->a(FLorg/cocos2d/l/e;)Lorg/cocos2d/a/f/l;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/cocos2d/a/a/b;

    const/high16 v2, 0x4000

    invoke-static {v2}, Lorg/cocos2d/a/f/e;->c(F)Lorg/cocos2d/a/f/e;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v0, v1}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/tests/fn;->a:Lorg/cocos2d/g/o;

    invoke-virtual {v1, v0}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    return-void
.end method
