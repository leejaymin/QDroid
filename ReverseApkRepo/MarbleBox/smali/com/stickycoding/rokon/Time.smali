.class public Lcom/stickycoding/rokon/Time;
.super Ljava/lang/Object;
.source "Time.java"


# static fields
.field protected static drawRealTicks:J

.field protected static drawTicks:J

.field protected static drawTicksFraction:F

.field protected static lastDrawTicks:J

.field protected static lastLoopTicks:J

.field protected static loopRealTicks:J

.field protected static loopTicks:J

.field protected static loopTicksFraction:F

.field protected static pauseStart:J

.field protected static pauseTime:J

.field protected static paused:Z

.field protected static ticksSinceLastFrame:I

.field protected static ticksSinceLastLoop:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDrawTicks()J
    .locals 2

    .prologue
    .line 64
    sget-wide v0, Lcom/stickycoding/rokon/Time;->drawTicks:J

    return-wide v0
.end method

.method public static getDrawTicksFraction()F
    .locals 1

    .prologue
    .line 82
    sget v0, Lcom/stickycoding/rokon/Time;->drawTicksFraction:F

    return v0
.end method

.method public static getLastDrawTicks()J
    .locals 2

    .prologue
    .line 91
    sget-wide v0, Lcom/stickycoding/rokon/Time;->lastDrawTicks:J

    return-wide v0
.end method

.method public static getLastLoopTicks()J
    .locals 2

    .prologue
    .line 55
    sget-wide v0, Lcom/stickycoding/rokon/Time;->lastLoopTicks:J

    return-wide v0
.end method

.method public static getLoopTicks()J
    .locals 2

    .prologue
    .line 43
    sget-wide v0, Lcom/stickycoding/rokon/Time;->loopTicks:J

    return-wide v0
.end method

.method public static getLoopTicksFraction()F
    .locals 1

    .prologue
    .line 51
    sget v0, Lcom/stickycoding/rokon/Time;->loopTicksFraction:F

    return v0
.end method

.method public static getTicksSinceLastFrame()I
    .locals 1

    .prologue
    .line 73
    sget v0, Lcom/stickycoding/rokon/Time;->ticksSinceLastFrame:I

    return v0
.end method

.method public static getTicksSinceLastLoop()I
    .locals 1

    .prologue
    .line 47
    sget v0, Lcom/stickycoding/rokon/Time;->ticksSinceLastLoop:I

    return v0
.end method

.method public static pause()V
    .locals 2

    .prologue
    .line 98
    sget-wide v0, Lcom/stickycoding/rokon/Time;->drawTicks:J

    sput-wide v0, Lcom/stickycoding/rokon/Time;->pauseStart:J

    .line 99
    const/4 v0, 0x1

    sput-boolean v0, Lcom/stickycoding/rokon/Time;->paused:Z

    .line 100
    return-void
.end method

.method public static resume()V
    .locals 4

    .prologue
    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/stickycoding/rokon/Time;->pauseStart:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/stickycoding/rokon/Time;->pauseTime:J

    .line 107
    const/4 v0, 0x0

    sput-boolean v0, Lcom/stickycoding/rokon/Time;->paused:Z

    .line 108
    return-void
.end method

.method protected static update()V
    .locals 4

    .prologue
    .line 23
    sget-wide v0, Lcom/stickycoding/rokon/Time;->drawTicks:J

    sput-wide v0, Lcom/stickycoding/rokon/Time;->lastDrawTicks:J

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/stickycoding/rokon/Time;->drawRealTicks:J

    .line 25
    sget-boolean v0, Lcom/stickycoding/rokon/Time;->paused:Z

    if-eqz v0, :cond_1

    .line 30
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    sget-wide v0, Lcom/stickycoding/rokon/Time;->drawRealTicks:J

    sget-wide v2, Lcom/stickycoding/rokon/Time;->pauseTime:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/stickycoding/rokon/Time;->drawTicks:J

    .line 27
    sget-wide v0, Lcom/stickycoding/rokon/Time;->lastDrawTicks:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 28
    sget-wide v0, Lcom/stickycoding/rokon/Time;->drawTicks:J

    sget-wide v2, Lcom/stickycoding/rokon/Time;->lastDrawTicks:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    sput v0, Lcom/stickycoding/rokon/Time;->ticksSinceLastFrame:I

    .line 29
    sget v0, Lcom/stickycoding/rokon/Time;->ticksSinceLastFrame:I

    int-to-float v0, v0

    const/high16 v1, 0x447a

    div-float/2addr v0, v1

    sput v0, Lcom/stickycoding/rokon/Time;->drawTicksFraction:F

    goto :goto_0
.end method

.method protected static updateLoop()V
    .locals 4

    .prologue
    .line 33
    sget-wide v0, Lcom/stickycoding/rokon/Time;->loopTicks:J

    sput-wide v0, Lcom/stickycoding/rokon/Time;->lastLoopTicks:J

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/stickycoding/rokon/Time;->loopRealTicks:J

    .line 35
    sget-boolean v0, Lcom/stickycoding/rokon/Time;->paused:Z

    if-eqz v0, :cond_1

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    sget-wide v0, Lcom/stickycoding/rokon/Time;->loopRealTicks:J

    sget-wide v2, Lcom/stickycoding/rokon/Time;->pauseTime:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/stickycoding/rokon/Time;->loopTicks:J

    .line 37
    sget-wide v0, Lcom/stickycoding/rokon/Time;->lastLoopTicks:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 38
    sget-wide v0, Lcom/stickycoding/rokon/Time;->loopTicks:J

    sget-wide v2, Lcom/stickycoding/rokon/Time;->lastLoopTicks:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    sput v0, Lcom/stickycoding/rokon/Time;->ticksSinceLastLoop:I

    .line 39
    sget v0, Lcom/stickycoding/rokon/Time;->ticksSinceLastLoop:I

    int-to-float v0, v0

    const/high16 v1, 0x447a

    div-float/2addr v0, v1

    sput v0, Lcom/stickycoding/rokon/Time;->loopTicksFraction:F

    goto :goto_0
.end method
