.class public Lcom/garageapps/android/spacetracks/game/EffectsRotate;
.super Ljava/lang/Object;
.source "EffectsRotate.java"


# instance fields
.field private angle:F

.field private direction:F

.field private peek:F

.field private speed:F

.field private state:Z

.field private timer:J

.field private timerLimit:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/garageapps/android/spacetracks/game/EffectsRotate;->state:Z

    .line 25
    return-void
.end method

.method public start(IJFF)V
    .locals 2
    .parameter "direction"
    .parameter "timerLimit"
    .parameter "peek"
    .parameter "speed"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/garageapps/android/spacetracks/game/EffectsRotate;->state:Z

    if-eqz v0, :cond_0

    .line 39
    :goto_0
    return-void

    .line 32
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/garageapps/android/spacetracks/game/EffectsRotate;->state:Z

    .line 33
    int-to-float v0, p1

    iput v0, p0, Lcom/garageapps/android/spacetracks/game/EffectsRotate;->direction:F

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/garageapps/android/spacetracks/game/EffectsRotate;->angle:F

    .line 35
    invoke-static {}, Lcom/garageapps/android/spacetracks/glSpec;->timerStart()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/garageapps/android/spacetracks/game/EffectsRotate;->timer:J

    .line 36
    iput-wide p2, p0, Lcom/garageapps/android/spacetracks/game/EffectsRotate;->timerLimit:J

    .line 37
    iput p4, p0, Lcom/garageapps/android/spacetracks/game/EffectsRotate;->peek:F

    .line 38
    iput p5, p0, Lcom/garageapps/android/spacetracks/game/EffectsRotate;->speed:F

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/garageapps/android/spacetracks/game/EffectsRotate;->state:Z

    .line 71
    return-void
.end method

.method public update()F
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 43
    iget-boolean v5, p0, Lcom/garageapps/android/spacetracks/game/EffectsRotate;->state:Z

    if-nez v5, :cond_1

    move v2, v4

    .line 65
    :cond_0
    :goto_0
    return v2

    .line 46
    :cond_1
    const/4 v2, 0x0

    .line 47
    .local v2, result:F
    iget-wide v5, p0, Lcom/garageapps/android/spacetracks/game/EffectsRotate;->timer:J

    invoke-static {v5, v6}, Lcom/garageapps/android/spacetracks/glSpec;->timerGet(J)J

    move-result-wide v0

    .line 49
    .local v0, elapsedTime:J
    iget v5, p0, Lcom/garageapps/android/spacetracks/game/EffectsRotate;->angle:F

    iget v6, p0, Lcom/garageapps/android/spacetracks/game/EffectsRotate;->direction:F

    iget v7, p0, Lcom/garageapps/android/spacetracks/game/EffectsRotate;->speed:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, p0, Lcom/garageapps/android/spacetracks/game/EffectsRotate;->angle:F

    .line 51
    iget-wide v5, p0, Lcom/garageapps/android/spacetracks/game/EffectsRotate;->timerLimit:J

    cmp-long v5, v0, v5

    if-lez v5, :cond_2

    .line 52
    iget v5, p0, Lcom/garageapps/android/spacetracks/game/EffectsRotate;->peek:F

    const/high16 v6, 0x3f00

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/garageapps/android/spacetracks/game/EffectsRotate;->peek:F

    .line 53
    iget v5, p0, Lcom/garageapps/android/spacetracks/game/EffectsRotate;->peek:F

    cmpg-float v5, v5, v4

    if-gez v5, :cond_2

    .line 54
    iput v4, p0, Lcom/garageapps/android/spacetracks/game/EffectsRotate;->peek:F

    .line 57
    :cond_2
    iget v5, p0, Lcom/garageapps/android/spacetracks/game/EffectsRotate;->angle:F

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v3, v5

    .line 59
    .local v3, sine:F
    iget v5, p0, Lcom/garageapps/android/spacetracks/game/EffectsRotate;->peek:F

    mul-float v2, v3, v5

    .line 61
    cmpl-float v5, v2, v4

    if-eqz v5, :cond_3

    cmpl-float v4, v2, v4

    if-nez v4, :cond_0

    .line 62
    :cond_3
    invoke-virtual {p0}, Lcom/garageapps/android/spacetracks/game/EffectsRotate;->stop()V

    goto :goto_0
.end method
