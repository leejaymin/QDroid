.class Lorg/tf/GameActivity$CupcakeDetector;
.super Lorg/tf/GameActivity$VersionedGestureDetector;
.source "GameActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tf/GameActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CupcakeDetector"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0}, Lorg/tf/GameActivity$VersionedGestureDetector;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/tf/GameActivity$CupcakeDetector;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    invoke-direct {p0}, Lorg/tf/GameActivity$CupcakeDetector;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/high16 v2, -0x4080

    .line 181
    const-string v0, "demoActivity"

    const-string v1, "less than eclair"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 183
    invoke-static {v2}, Lorg/tf/GameActivity;->access$0(F)V

    .line 184
    invoke-static {v2}, Lorg/tf/GameActivity;->access$1(F)V

    .line 185
    const/4 v0, -0x1

    invoke-static {v0}, Lorg/tf/GameActivity;->access$2(I)V

    .line 203
    :cond_0
    :goto_0
    invoke-static {}, Lorg/tf/Config;->getTouchHandlerSleep()I

    move-result v0

    invoke-static {v0}, Lskiba/util/Simply;->waitSleep(I)Z

    .line 204
    return v3

    .line 186
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 187
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Lorg/tf/GameActivity;->access$0(F)V

    .line 188
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-static {v0}, Lorg/tf/GameActivity;->access$1(F)V

    .line 189
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/tf/GameActivity;->access$2(I)V

    goto :goto_0
.end method
