.class Lorg/cocos2d/tests/v;
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

    const-string v0, "Repeat / RepeatForever actions"

    return-object v0
.end method

.method public final a_()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x4270

    invoke-super {p0}, Lorg/cocos2d/tests/m;->a_()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/cocos2d/tests/v;->a(I)V

    const/high16 v0, 0x3f80

    const/high16 v1, 0x4316

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/cocos2d/a/f/l;->a(FLorg/cocos2d/l/e;)Lorg/cocos2d/a/f/l;

    move-result-object v0

    invoke-static {v3, v3}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-static {v1}, Lorg/cocos2d/a/e/f;->a(Lorg/cocos2d/l/e;)Lorg/cocos2d/a/e/f;

    move-result-object v1

    new-array v2, v5, [Lorg/cocos2d/a/a/b;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lorg/cocos2d/a/f/p;->a(Lorg/cocos2d/a/a/b;I)Lorg/cocos2d/a/f/p;

    move-result-object v1

    invoke-virtual {v0}, Lorg/cocos2d/a/f/l;->j()Lorg/cocos2d/a/f/l;

    move-result-object v2

    new-array v3, v5, [Lorg/cocos2d/a/a/b;

    invoke-virtual {v0}, Lorg/cocos2d/a/f/l;->m()Lorg/cocos2d/a/f/l;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v0

    invoke-static {v0}, Lorg/cocos2d/a/a/d;->a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/a/d;

    move-result-object v0

    iget-object v2, p0, Lorg/cocos2d/tests/v;->c:Lorg/cocos2d/g/o;

    invoke-virtual {v2, v1}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    iget-object v1, p0, Lorg/cocos2d/tests/v;->b:Lorg/cocos2d/g/o;

    invoke-virtual {v1, v0}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    return-void
.end method
