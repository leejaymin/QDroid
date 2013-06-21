.class Lorg/cocos2d/tests/ae;
.super Lorg/cocos2d/tests/m;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/cocos2d/tests/m;-><init>()V

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

    const/4 v2, 0x1

    const/high16 v4, 0x4000

    invoke-super {p0}, Lorg/cocos2d/tests/m;->a_()V

    invoke-virtual {p0, v2}, Lorg/cocos2d/tests/ae;->a(I)V

    const/high16 v0, 0x4370

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-static {v4, v0}, Lorg/cocos2d/a/f/l;->a(FLorg/cocos2d/l/e;)Lorg/cocos2d/a/f/l;

    move-result-object v0

    new-array v1, v2, [Lorg/cocos2d/a/a/b;

    const/4 v2, 0x0

    const/high16 v3, 0x4407

    invoke-static {v4, v3}, Lorg/cocos2d/a/f/r;->a(FF)Lorg/cocos2d/a/f/r;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/tests/ae;->a:Lorg/cocos2d/g/o;

    invoke-virtual {v1, v0}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    return-void
.end method
