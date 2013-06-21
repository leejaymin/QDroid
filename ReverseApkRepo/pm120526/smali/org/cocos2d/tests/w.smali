.class Lorg/cocos2d/tests/w;
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

    const-string v0, "CallFuncN + RepeatForever"

    return-object v0
.end method

.method public final a_()V
    .locals 4

    const/4 v1, 0x1

    invoke-super {p0}, Lorg/cocos2d/tests/m;->a_()V

    invoke-virtual {p0, v1}, Lorg/cocos2d/tests/w;->b(I)V

    const/high16 v0, 0x3f80

    invoke-static {v0}, Lorg/cocos2d/a/f/e;->c(F)Lorg/cocos2d/a/f/e;

    move-result-object v0

    new-array v1, v1, [Lorg/cocos2d/a/a/b;

    const/4 v2, 0x0

    const-string v3, "repeatForever"

    invoke-static {p0, v3}, Lorg/cocos2d/a/e/b;->b(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/a/e/b;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/tests/w;->a:Lorg/cocos2d/g/o;

    invoke-virtual {v1, v0}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    return-void
.end method
