.class Lorg/cocos2d/tests/et;
.super Lorg/cocos2d/tests/ez;


# instance fields
.field a:F


# direct methods
.method public constructor <init>()V
    .locals 2

    const/high16 v1, 0x3f00

    invoke-direct {p0}, Lorg/cocos2d/tests/ez;-><init>()V

    const-string v0, "autoremove"

    invoke-virtual {p0, v0, v1}, Lorg/cocos2d/tests/et;->a(Ljava/lang/String;F)V

    const-string v0, "tick"

    invoke-virtual {p0, v0, v1}, Lorg/cocos2d/tests/et;->a(Ljava/lang/String;F)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2d/tests/et;->a:F

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "Self-remove an scheduler"

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "1 scheduler will be autoremoved in 3 seconds. See console"

    return-object v0
.end method
