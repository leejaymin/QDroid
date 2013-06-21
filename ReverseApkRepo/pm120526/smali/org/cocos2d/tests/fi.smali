.class final Lorg/cocos2d/tests/fi;
.super Lorg/cocos2d/e/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/cocos2d/e/b;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/cocos2d/tests/fi;->a(Z)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-static {}, Lorg/cocos2d/j/a;->a()Lorg/cocos2d/j/a;

    move-result-object v0

    sget-object v1, Lorg/cocos2d/tests/SoundEngineTest;->a:Lorg/cocos2d/tests/SoundEngineTest;

    invoke-virtual {v0, v1}, Lorg/cocos2d/j/a;->a(Landroid/content/Context;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final a_()V
    .locals 3

    invoke-super {p0}, Lorg/cocos2d/e/b;->a_()V

    invoke-static {}, Lorg/cocos2d/j/a;->a()Lorg/cocos2d/j/a;

    move-result-object v0

    sget-object v1, Lorg/cocos2d/tests/SoundEngineTest;->a:Lorg/cocos2d/tests/SoundEngineTest;

    const/high16 v2, 0x7f05

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/j/a;->a(Landroid/content/Context;I)V

    return-void
.end method

.method public final g()V
    .locals 1

    invoke-static {}, Lorg/cocos2d/j/a;->a()Lorg/cocos2d/j/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/j/a;->b()V

    invoke-super {p0}, Lorg/cocos2d/e/b;->g()V

    return-void
.end method
