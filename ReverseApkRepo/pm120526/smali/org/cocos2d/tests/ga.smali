.class Lorg/cocos2d/tests/ga;
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

    const-string v0, "Sequence: Move + Rotate"

    return-object v0
.end method

.method public final a_()V
    .locals 5

    const/4 v4, 0x0

    const/high16 v3, 0x4000

    invoke-super {p0}, Lorg/cocos2d/tests/fo;->a_()V

    iget-object v0, p0, Lorg/cocos2d/tests/ga;->b:Lorg/cocos2d/g/o;

    invoke-virtual {v0, v4}, Lorg/cocos2d/g/o;->c(Z)V

    const/high16 v0, 0x4370

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-static {v3, v0}, Lorg/cocos2d/a/f/l;->a(FLorg/cocos2d/l/e;)Lorg/cocos2d/a/f/l;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/cocos2d/a/a/b;

    const/high16 v2, 0x4407

    invoke-static {v3, v2}, Lorg/cocos2d/a/f/r;->a(FF)Lorg/cocos2d/a/f/r;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/tests/ga;->a:Lorg/cocos2d/g/o;

    invoke-virtual {v1, v0}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    return-void
.end method
