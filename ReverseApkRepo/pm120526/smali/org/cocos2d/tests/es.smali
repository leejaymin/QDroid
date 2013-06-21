.class final Lorg/cocos2d/tests/es;
.super Lorg/cocos2d/e/b;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lorg/cocos2d/e/b;-><init>()V

    const-string v0, "Test pushScene"

    const-string v1, "onPushScene"

    invoke-static {v0, p0, v1}, Lorg/cocos2d/f/d;->a(Ljava/lang/String;Lorg/cocos2d/g/i;Ljava/lang/String;)Lorg/cocos2d/f/d;

    move-result-object v0

    const-string v1, "Test pushScene w/transition"

    const-string v2, "onPushSceneTran"

    invoke-static {v1, p0, v2}, Lorg/cocos2d/f/d;->a(Ljava/lang/String;Lorg/cocos2d/g/i;Ljava/lang/String;)Lorg/cocos2d/f/d;

    move-result-object v1

    const-string v2, "Quit"

    const-string v3, "onQuit"

    invoke-static {v2, p0, v3}, Lorg/cocos2d/f/d;->a(Ljava/lang/String;Lorg/cocos2d/g/i;Ljava/lang/String;)Lorg/cocos2d/f/d;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Lorg/cocos2d/f/c;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    invoke-static {v3}, Lorg/cocos2d/f/a;->a([Lorg/cocos2d/f/c;)Lorg/cocos2d/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/f/a;->a()V

    invoke-virtual {p0, v0}, Lorg/cocos2d/tests/es;->a(Lorg/cocos2d/g/i;)Lorg/cocos2d/g/i;

    return-void
.end method
