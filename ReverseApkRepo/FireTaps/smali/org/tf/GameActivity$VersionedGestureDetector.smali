.class public abstract Lorg/tf/GameActivity$VersionedGestureDetector;
.super Ljava/lang/Object;
.source "GameActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tf/GameActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "VersionedGestureDetector"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;)Lorg/tf/GameActivity$VersionedGestureDetector;
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 164
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 165
    .local v1, sdkVersion:I
    const/4 v0, 0x0

    .line 166
    .local v0, detector:Lorg/tf/GameActivity$VersionedGestureDetector;
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 167
    new-instance v0, Lorg/tf/GameActivity$CupcakeDetector;

    .end local v0           #detector:Lorg/tf/GameActivity$VersionedGestureDetector;
    invoke-direct {v0, v3}, Lorg/tf/GameActivity$CupcakeDetector;-><init>(Lorg/tf/GameActivity$CupcakeDetector;)V

    .line 172
    .restart local v0       #detector:Lorg/tf/GameActivity$VersionedGestureDetector;
    :goto_0
    return-object v0

    .line 169
    :cond_0
    new-instance v0, Lorg/tf/GameActivity$EclairDetector;

    .end local v0           #detector:Lorg/tf/GameActivity$VersionedGestureDetector;
    invoke-direct {v0, v3}, Lorg/tf/GameActivity$EclairDetector;-><init>(Lorg/tf/GameActivity$EclairDetector;)V

    .restart local v0       #detector:Lorg/tf/GameActivity$VersionedGestureDetector;
    goto :goto_0
.end method


# virtual methods
.method public abstract onTouchEvent(Landroid/view/MotionEvent;)Z
.end method
