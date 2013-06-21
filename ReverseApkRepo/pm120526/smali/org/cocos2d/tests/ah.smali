.class Lorg/cocos2d/tests/ah;
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

    const-string v0, "TintTo / TintBy"

    return-object v0
.end method

.method public final a_()V
    .locals 5

    const/16 v1, 0xff

    const/4 v4, 0x0

    const/16 v3, -0x7f

    invoke-super {p0}, Lorg/cocos2d/tests/m;->a_()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/cocos2d/tests/ah;->b(I)V

    invoke-static {v1, v4, v1}, Lorg/cocos2d/l/j;->a(III)Lorg/cocos2d/l/j;

    move-result-object v0

    invoke-static {v0}, Lorg/cocos2d/a/f/y;->a(Lorg/cocos2d/l/j;)Lorg/cocos2d/a/f/y;

    move-result-object v0

    const/high16 v1, 0x4000

    const/16 v2, -0xff

    invoke-static {v3, v2, v3}, Lorg/cocos2d/l/j;->a(III)Lorg/cocos2d/l/j;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/cocos2d/a/f/x;->a(FLorg/cocos2d/l/j;)Lorg/cocos2d/a/f/x;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/a/f/x;->j()Lorg/cocos2d/a/f/x;

    move-result-object v2

    iget-object v3, p0, Lorg/cocos2d/tests/ah;->b:Lorg/cocos2d/g/o;

    invoke-virtual {v3, v0}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    iget-object v0, p0, Lorg/cocos2d/tests/ah;->c:Lorg/cocos2d/g/o;

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/cocos2d/a/a/b;

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    return-void
.end method
