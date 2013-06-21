.class Lorg/cocos2d/tests/eu;
.super Lorg/cocos2d/tests/ez;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/cocos2d/tests/ez;-><init>()V

    new-instance v0, Lorg/cocos2d/tests/ev;

    invoke-direct {v0, p0}, Lorg/cocos2d/tests/ev;-><init>(Lorg/cocos2d/tests/eu;)V

    const/high16 v1, 0x3f00

    invoke-virtual {p0, v0, v1}, Lorg/cocos2d/tests/eu;->a(Lorg/cocos2d/a/i;F)V

    new-instance v0, Lorg/cocos2d/tests/ew;

    invoke-direct {v0, p0}, Lorg/cocos2d/tests/ew;-><init>(Lorg/cocos2d/tests/eu;)V

    const/high16 v1, 0x3f80

    invoke-virtual {p0, v0, v1}, Lorg/cocos2d/tests/eu;->a(Lorg/cocos2d/a/i;F)V

    new-instance v0, Lorg/cocos2d/tests/ex;

    invoke-direct {v0, p0}, Lorg/cocos2d/tests/ex;-><init>(Lorg/cocos2d/tests/eu;)V

    const/high16 v1, 0x4040

    invoke-virtual {p0, v0, v1}, Lorg/cocos2d/tests/eu;->a(Lorg/cocos2d/a/i;F)V

    return-void
.end method

.method public static H()V
    .locals 2

    sget-object v0, Lorg/cocos2d/tests/SchedulerTest;->a:Ljava/lang/String;

    const-string v1, "tick2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static h()V
    .locals 2

    sget-object v0, Lorg/cocos2d/tests/SchedulerTest;->a:Ljava/lang/String;

    const-string v1, "tick1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final I()V
    .locals 1

    invoke-static {}, Lorg/cocos2d/a/e;->a()Lorg/cocos2d/a/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/cocos2d/a/e;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "Pause / Resume"

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "Scheduler should be paused after 3 seconds. See console"

    return-object v0
.end method
