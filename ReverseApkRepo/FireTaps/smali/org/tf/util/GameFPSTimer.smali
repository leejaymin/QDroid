.class public Lorg/tf/util/GameFPSTimer;
.super Ljava/lang/Object;
.source "GameFPSTimer.java"


# instance fields
.field private m_averageCount:I

.field private m_averageFPS:I

.field private m_fpsStart:J

.field private m_frameTimeStart:J

.field private m_momentaryFPS:I

.field private m_outsideTimeStart:J

.field private m_renderCounter:I

.field private m_renderStart:J

.field private m_totalOutsideTime:J

.field private m_totalPriorityTime:J

.field private m_totalRenderTime:J

.field private m_totalWaitTime:J


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .parameter "averageCount"

    .prologue
    const-wide/16 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lorg/tf/util/GameFPSTimer;->m_renderCounter:I

    .line 100
    iput-wide v1, p0, Lorg/tf/util/GameFPSTimer;->m_totalWaitTime:J

    .line 101
    iput-wide v1, p0, Lorg/tf/util/GameFPSTimer;->m_totalRenderTime:J

    .line 102
    iput-wide v1, p0, Lorg/tf/util/GameFPSTimer;->m_totalOutsideTime:J

    .line 103
    iput-wide v1, p0, Lorg/tf/util/GameFPSTimer;->m_totalPriorityTime:J

    .line 104
    iput-wide v1, p0, Lorg/tf/util/GameFPSTimer;->m_fpsStart:J

    .line 105
    iput-wide v1, p0, Lorg/tf/util/GameFPSTimer;->m_outsideTimeStart:J

    .line 106
    iput-wide v1, p0, Lorg/tf/util/GameFPSTimer;->m_frameTimeStart:J

    .line 107
    iput-wide v1, p0, Lorg/tf/util/GameFPSTimer;->m_renderStart:J

    .line 30
    iput p1, p0, Lorg/tf/util/GameFPSTimer;->m_averageCount:I

    .line 31
    return-void
.end method


# virtual methods
.method public getAverageFPS()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lorg/tf/util/GameFPSTimer;->m_averageFPS:I

    return v0
.end method

.method public getMomentaryFPS()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lorg/tf/util/GameFPSTimer;->m_momentaryFPS:I

    return v0
.end method

.method public onAfterRender()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 61
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 62
    .local v0, setPriorityTime:J
    const/4 v2, -0x8

    invoke-static {v2}, Lskiba/util/Simply;->setThreadPriority(I)V

    .line 63
    iget-wide v2, p0, Lorg/tf/util/GameFPSTimer;->m_totalPriorityTime:J

    invoke-static {v0, v1}, Lskiba/util/Simply;->elapsedUptimeMillis(J)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/tf/util/GameFPSTimer;->m_totalPriorityTime:J

    .line 65
    const/16 v2, 0x3e8

    iget-wide v3, p0, Lorg/tf/util/GameFPSTimer;->m_outsideTimeStart:J

    invoke-static {v3, v4}, Lskiba/util/Simply;->elapsedUptimeMillis(J)I

    move-result v3

    div-int/2addr v2, v3

    iput v2, p0, Lorg/tf/util/GameFPSTimer;->m_momentaryFPS:I

    .line 67
    iget-wide v2, p0, Lorg/tf/util/GameFPSTimer;->m_totalRenderTime:J

    iget-wide v4, p0, Lorg/tf/util/GameFPSTimer;->m_renderStart:J

    invoke-static {v4, v5}, Lskiba/util/Simply;->elapsedUptimeMillis(J)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/tf/util/GameFPSTimer;->m_totalRenderTime:J

    .line 69
    iget v2, p0, Lorg/tf/util/GameFPSTimer;->m_renderCounter:I

    if-nez v2, :cond_0

    .line 70
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/tf/util/GameFPSTimer;->m_fpsStart:J

    .line 72
    :cond_0
    iget v2, p0, Lorg/tf/util/GameFPSTimer;->m_renderCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/tf/util/GameFPSTimer;->m_renderCounter:I

    .line 73
    iget v2, p0, Lorg/tf/util/GameFPSTimer;->m_renderCounter:I

    iget v3, p0, Lorg/tf/util/GameFPSTimer;->m_averageCount:I

    if-ne v2, v3, :cond_1

    .line 74
    iget v2, p0, Lorg/tf/util/GameFPSTimer;->m_averageCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    mul-int/lit16 v2, v2, 0x3e8

    .line 75
    iget-wide v3, p0, Lorg/tf/util/GameFPSTimer;->m_fpsStart:J

    invoke-static {v3, v4}, Lskiba/util/Simply;->elapsedUptimeMillis(J)I

    move-result v3

    div-int/2addr v2, v3

    .line 74
    iput v2, p0, Lorg/tf/util/GameFPSTimer;->m_averageFPS:I

    .line 83
    iput-wide v6, p0, Lorg/tf/util/GameFPSTimer;->m_totalWaitTime:J

    .line 84
    iput-wide v6, p0, Lorg/tf/util/GameFPSTimer;->m_totalOutsideTime:J

    .line 85
    iput-wide v6, p0, Lorg/tf/util/GameFPSTimer;->m_totalRenderTime:J

    .line 86
    const/4 v2, 0x0

    iput v2, p0, Lorg/tf/util/GameFPSTimer;->m_renderCounter:I

    .line 87
    iput-wide v6, p0, Lorg/tf/util/GameFPSTimer;->m_totalPriorityTime:J

    .line 89
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/tf/util/GameFPSTimer;->m_outsideTimeStart:J

    .line 90
    return-void
.end method

.method public onBeforeRender()V
    .locals 8

    .prologue
    .line 42
    iget-wide v4, p0, Lorg/tf/util/GameFPSTimer;->m_totalOutsideTime:J

    iget-wide v6, p0, Lorg/tf/util/GameFPSTimer;->m_outsideTimeStart:J

    invoke-static {v6, v7}, Lskiba/util/Simply;->elapsedUptimeMillis(J)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/tf/util/GameFPSTimer;->m_totalOutsideTime:J

    .line 44
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/tf/util/GameFPSTimer;->m_renderStart:J

    .line 46
    iget-wide v4, p0, Lorg/tf/util/GameFPSTimer;->m_frameTimeStart:J

    invoke-static {v4, v5}, Lskiba/util/Simply;->elapsedUptimeMillis(J)I

    move-result v0

    .line 47
    .local v0, frameTime:I
    const/16 v4, 0x3e8

    const/4 v5, 0x1

    invoke-static {}, Lorg/tf/Config;->getTargetFPS()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    div-int/2addr v4, v5

    sub-int v3, v4, v0

    .line 48
    .local v3, waitTime:I
    const/4 v4, 0x3

    if-le v3, v4, :cond_0

    .line 49
    const/4 v4, 0x2

    sub-int v4, v3, v4

    invoke-static {v4}, Lskiba/util/Simply;->waitSleep(I)Z

    .line 50
    iget-wide v4, p0, Lorg/tf/util/GameFPSTimer;->m_totalWaitTime:J

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/tf/util/GameFPSTimer;->m_totalWaitTime:J

    .line 52
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/tf/util/GameFPSTimer;->m_frameTimeStart:J

    .line 55
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 56
    .local v1, setPriorityTime:J
    const/16 v4, -0x10

    invoke-static {v4}, Lskiba/util/Simply;->setThreadPriority(I)V

    .line 57
    iget-wide v4, p0, Lorg/tf/util/GameFPSTimer;->m_totalPriorityTime:J

    invoke-static {v1, v2}, Lskiba/util/Simply;->elapsedUptimeMillis(J)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/tf/util/GameFPSTimer;->m_totalPriorityTime:J

    .line 58
    return-void
.end method
