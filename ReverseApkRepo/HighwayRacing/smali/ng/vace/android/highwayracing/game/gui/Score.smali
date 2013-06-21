.class public Lng/vace/android/highwayracing/game/gui/Score;
.super Ljava/lang/Object;
.source "Score.java"


# instance fields
.field index:F

.field private removed:Z

.field score:I

.field private speedX:F

.field private speedY:F

.field x:F

.field y:F


# direct methods
.method public constructor <init>(FFFFI)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "speedX"
    .parameter "speedY"
    .parameter "points"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lng/vace/android/highwayracing/game/gui/Score;->removed:Z

    .line 19
    iput p1, p0, Lng/vace/android/highwayracing/game/gui/Score;->x:F

    .line 20
    iput p2, p0, Lng/vace/android/highwayracing/game/gui/Score;->y:F

    .line 21
    iput p3, p0, Lng/vace/android/highwayracing/game/gui/Score;->speedX:F

    .line 22
    iput p4, p0, Lng/vace/android/highwayracing/game/gui/Score;->speedY:F

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lng/vace/android/highwayracing/game/gui/Score;->index:F

    .line 24
    iput p5, p0, Lng/vace/android/highwayracing/game/gui/Score;->score:I

    .line 25
    return-void
.end method


# virtual methods
.method public getScore()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lng/vace/android/highwayracing/game/gui/Score;->score:I

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lng/vace/android/highwayracing/game/gui/Score;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lng/vace/android/highwayracing/game/gui/Score;->y:F

    return v0
.end method

.method public isRemoved()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lng/vace/android/highwayracing/game/gui/Score;->removed:Z

    return v0
.end method

.method public updatePosition()V
    .locals 2

    .prologue
    .line 28
    iget v0, p0, Lng/vace/android/highwayracing/game/gui/Score;->x:F

    iget v1, p0, Lng/vace/android/highwayracing/game/gui/Score;->speedX:F

    add-float/2addr v0, v1

    iput v0, p0, Lng/vace/android/highwayracing/game/gui/Score;->x:F

    .line 29
    iget v0, p0, Lng/vace/android/highwayracing/game/gui/Score;->y:F

    iget v1, p0, Lng/vace/android/highwayracing/game/gui/Score;->speedY:F

    add-float/2addr v0, v1

    iput v0, p0, Lng/vace/android/highwayracing/game/gui/Score;->y:F

    .line 31
    iget v0, p0, Lng/vace/android/highwayracing/game/gui/Score;->index:F

    const/high16 v1, 0x3f80

    add-float/2addr v1, v0

    iput v1, p0, Lng/vace/android/highwayracing/game/gui/Score;->index:F

    const/high16 v1, 0x4248

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lng/vace/android/highwayracing/game/gui/Score;->removed:Z

    .line 32
    :cond_0
    return-void
.end method
