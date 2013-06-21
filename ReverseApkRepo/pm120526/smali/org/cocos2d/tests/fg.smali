.class Lorg/cocos2d/tests/fg;
.super Lorg/cocos2d/tests/ez;

# interfaces
.implements Lorg/cocos2d/a/i;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/cocos2d/tests/ez;-><init>()V

    const-string v0, "schedUpdate"

    const/high16 v1, 0x4000

    invoke-virtual {p0, v0, v1}, Lorg/cocos2d/tests/fg;->a(Ljava/lang/String;F)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "Schedule Update in 2 sec"

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

    const-string v0, "Update schedules in 2 secs. Stops 2 sec later. See console"

    return-object v0
.end method
