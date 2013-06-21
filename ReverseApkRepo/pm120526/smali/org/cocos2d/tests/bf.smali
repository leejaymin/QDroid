.class Lorg/cocos2d/tests/bf;
.super Lorg/cocos2d/tests/bm;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lorg/cocos2d/tests/bm;-><init>()V

    new-instance v0, Lorg/cocos2d/tests/bd;

    invoke-direct {v0}, Lorg/cocos2d/tests/bd;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/cocos2d/tests/bf;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    const-string v1, "doSomething"

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/i;->d(Ljava/lang/String;)V

    const-string v1, "doSomething"

    invoke-static {}, Lorg/cocos2d/a/e;->a()Lorg/cocos2d/a/e;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lorg/cocos2d/a/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "cocosnode scheduler test #1"

    return-object v0
.end method
