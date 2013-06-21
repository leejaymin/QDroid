.class Lorg/cocos2d/tests/k;
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

    const-string v0, "CallFuncND + auto remove"

    return-object v0
.end method

.method public final a_()V
    .locals 5

    const/4 v3, 0x1

    invoke-super {p0}, Lorg/cocos2d/tests/m;->a_()V

    invoke-virtual {p0, v3}, Lorg/cocos2d/tests/k;->b(I)V

    const/high16 v0, 0x4000

    const/high16 v1, 0x4348

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/cocos2d/a/f/l;->a(FLorg/cocos2d/l/e;)Lorg/cocos2d/a/f/l;

    move-result-object v0

    new-array v1, v3, [Lorg/cocos2d/a/a/b;

    const/4 v2, 0x0

    const-string v3, "callbackND"

    const-string v4, "a different implemetation of CCCallFuncND from iphone version"

    invoke-static {p0, v3, v4}, Lorg/cocos2d/a/e/c;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/a/e/c;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/tests/k;->a:Lorg/cocos2d/g/o;

    invoke-virtual {v1, v0}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "CallFuncND + remove sprite. Grossini dissapears in 2s"

    return-object v0
.end method
