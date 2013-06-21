.class public Lcom/superdroid/util/SuperTimer;
.super Landroid/os/Handler;
.source "SuperTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superdroid/util/SuperTimer$OnTickListener;,
        Lcom/superdroid/util/SuperTimer$PeriodicTimerCallback;
    }
.end annotation


# instance fields
.field private mCallStart:J

.field private mInterval:J

.field private mLastReportedTime:J

.field private mListener:Lcom/superdroid/util/SuperTimer$OnTickListener;

.field private mTimerCallback:Lcom/superdroid/util/SuperTimer$PeriodicTimerCallback;


# direct methods
.method public constructor <init>(Lcom/superdroid/util/SuperTimer$OnTickListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 7
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/superdroid/util/SuperTimer;->mInterval:J

    .line 28
    iput-object p1, p0, Lcom/superdroid/util/SuperTimer;->mListener:Lcom/superdroid/util/SuperTimer$OnTickListener;

    .line 29
    new-instance v0, Lcom/superdroid/util/SuperTimer$PeriodicTimerCallback;

    invoke-direct {v0, p0}, Lcom/superdroid/util/SuperTimer$PeriodicTimerCallback;-><init>(Lcom/superdroid/util/SuperTimer;)V

    iput-object v0, p0, Lcom/superdroid/util/SuperTimer;->mTimerCallback:Lcom/superdroid/util/SuperTimer$PeriodicTimerCallback;

    .line 30
    return-void
.end method

.method private updateElapsedTime()V
    .locals 6

    .prologue
    .line 56
    iget-object v2, p0, Lcom/superdroid/util/SuperTimer;->mListener:Lcom/superdroid/util/SuperTimer$OnTickListener;

    if-eqz v2, :cond_0

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/superdroid/util/SuperTimer;->mCallStart:J

    sub-long v0, v2, v4

    .line 58
    .local v0, duration:J
    iget-object v2, p0, Lcom/superdroid/util/SuperTimer;->mListener:Lcom/superdroid/util/SuperTimer$OnTickListener;

    const-wide/16 v3, 0x3e8

    div-long v3, v0, v3

    invoke-interface {v2, v3, v4}, Lcom/superdroid/util/SuperTimer$OnTickListener;->onTickForCallTimeElapsed(J)V

    .line 60
    .end local v0           #duration:J
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelTimer()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/superdroid/util/SuperTimer;->mTimerCallback:Lcom/superdroid/util/SuperTimer$PeriodicTimerCallback;

    invoke-virtual {p0, v0}, Lcom/superdroid/util/SuperTimer;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 53
    return-void
.end method

.method public periodicUpdateTimer()V
    .locals 8

    .prologue
    .line 38
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 39
    .local v2, now:J
    iget-wide v4, p0, Lcom/superdroid/util/SuperTimer;->mLastReportedTime:J

    iget-wide v6, p0, Lcom/superdroid/util/SuperTimer;->mInterval:J

    add-long v0, v4, v6

    .line 41
    .local v0, nextReport:J
    :goto_0
    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    .line 45
    iget-object v4, p0, Lcom/superdroid/util/SuperTimer;->mTimerCallback:Lcom/superdroid/util/SuperTimer$PeriodicTimerCallback;

    invoke-virtual {p0, v4, v0, v1}, Lcom/superdroid/util/SuperTimer;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 46
    iput-wide v0, p0, Lcom/superdroid/util/SuperTimer;->mLastReportedTime:J

    .line 47
    invoke-direct {p0}, Lcom/superdroid/util/SuperTimer;->updateElapsedTime()V

    .line 49
    return-void

    .line 42
    :cond_0
    iget-wide v4, p0, Lcom/superdroid/util/SuperTimer;->mInterval:J

    add-long/2addr v0, v4

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 33
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/superdroid/util/SuperTimer;->mInterval:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/superdroid/util/SuperTimer;->mLastReportedTime:J

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/superdroid/util/SuperTimer;->mCallStart:J

    .line 35
    return-void
.end method
