.class Lorg/cocos2d/tests/fd;
.super Lorg/cocos2d/tests/ez;

# interfaces
.implements Lorg/cocos2d/a/i;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/cocos2d/tests/ez;-><init>()V

    invoke-virtual {p0}, Lorg/cocos2d/tests/fd;->D()V

    new-instance v0, Lorg/cocos2d/tests/fe;

    invoke-direct {v0, p0}, Lorg/cocos2d/tests/fe;-><init>(Lorg/cocos2d/tests/fd;)V

    invoke-virtual {p0, v0}, Lorg/cocos2d/tests/fd;->a(Lorg/cocos2d/a/i;)V

    new-instance v0, Lorg/cocos2d/tests/ff;

    invoke-direct {v0, p0}, Lorg/cocos2d/tests/ff;-><init>(Lorg/cocos2d/tests/fd;)V

    const/high16 v1, 0x4080

    invoke-virtual {p0, v0, v1}, Lorg/cocos2d/tests/fd;->a(Lorg/cocos2d/a/i;F)V

    return-void
.end method

.method public static g(F)V
    .locals 4

    const-string v0, "custom selector called:%f"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/cocos2d/tests/SchedulerTest;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "Schedule Update + custom selector"

    return-object v0
.end method

.method public final a(F)V
    .locals 4

    const-string v0, "update called:%f"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/cocos2d/tests/SchedulerTest;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "Update + custom selector at the same time. Stops in 4s. See console"

    return-object v0
.end method

.method public final h()V
    .locals 1

    invoke-static {}, Lorg/cocos2d/a/e;->a()Lorg/cocos2d/a/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/cocos2d/a/e;->b(Ljava/lang/Object;)V

    return-void
.end method
