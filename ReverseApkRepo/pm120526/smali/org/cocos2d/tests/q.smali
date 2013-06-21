.class Lorg/cocos2d/tests/q;
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

    const-string v0, "JumpTo / JumpBy"

    return-object v0
.end method

.method public final a_()V
    .locals 6

    const/4 v5, 0x4

    const/high16 v3, 0x4248

    const/high16 v1, 0x4396

    const/high16 v4, 0x4000

    const/4 v2, 0x0

    invoke-super {p0}, Lorg/cocos2d/tests/m;->a_()V

    invoke-static {v1, v1}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-static {v4, v0, v3}, Lorg/cocos2d/a/f/k;->a(FLorg/cocos2d/l/e;F)Lorg/cocos2d/a/f/k;

    move-result-object v0

    invoke-static {v1, v2}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-static {v4, v1, v3, v5}, Lorg/cocos2d/a/f/j;->a(FLorg/cocos2d/l/e;FI)Lorg/cocos2d/a/f/j;

    move-result-object v1

    invoke-static {v2, v2}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    const/high16 v3, 0x4100

    invoke-static {v4, v2, v3, v5}, Lorg/cocos2d/a/f/j;->a(FLorg/cocos2d/l/e;FI)Lorg/cocos2d/a/f/j;

    move-result-object v2

    invoke-virtual {v1}, Lorg/cocos2d/a/f/j;->m()Lorg/cocos2d/a/f/j;

    move-result-object v3

    iget-object v4, p0, Lorg/cocos2d/tests/q;->b:Lorg/cocos2d/g/o;

    invoke-virtual {v4, v0}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    iget-object v0, p0, Lorg/cocos2d/tests/q;->a:Lorg/cocos2d/g/o;

    const/4 v4, 0x1

    new-array v4, v4, [Lorg/cocos2d/a/a/b;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v1, v4}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    iget-object v0, p0, Lorg/cocos2d/tests/q;->c:Lorg/cocos2d/g/o;

    invoke-static {v2}, Lorg/cocos2d/a/a/d;->a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/a/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    return-void
.end method
