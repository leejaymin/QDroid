.class Lorg/cocos2d/tests/ey;
.super Lorg/cocos2d/tests/ez;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/cocos2d/tests/ez;-><init>()V

    const-string v0, "tick1"

    const/high16 v1, 0x3f00

    invoke-virtual {p0, v0, v1}, Lorg/cocos2d/tests/ey;->a(Ljava/lang/String;F)V

    const-string v0, "tick2"

    const/high16 v1, 0x3f80

    invoke-virtual {p0, v0, v1}, Lorg/cocos2d/tests/ey;->a(Ljava/lang/String;F)V

    const-string v0, "scheduleAndUnschedule"

    const/high16 v1, 0x4080

    invoke-virtual {p0, v0, v1}, Lorg/cocos2d/tests/ey;->a(Ljava/lang/String;F)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "Schedule from Schedule"

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "Will unschedule and schedule selectors in 4s. See console"

    return-object v0
.end method
