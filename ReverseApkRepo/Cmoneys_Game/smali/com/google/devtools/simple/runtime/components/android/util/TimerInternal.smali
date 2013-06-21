.class public final Lcom/google/devtools/simple/runtime/components/android/util/TimerInternal;
.super Ljava/lang/Object;
.source "TimerInternal.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private component:Lcom/google/devtools/simple/runtime/components/AlarmHandler;

.field private enabled:Z

.field private handler:Landroid/os/Handler;

.field private interval:I


# direct methods
.method public constructor <init>(Lcom/google/devtools/simple/runtime/components/AlarmHandler;)V
    .locals 3
    .parameter "component"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/util/TimerInternal;->enabled:Z

    .line 22
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/google/devtools/simple/runtime/components/android/util/TimerInternal;->interval:I

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/util/TimerInternal;->handler:Landroid/os/Handler;

    .line 35
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/util/TimerInternal;->handler:Landroid/os/Handler;

    iget v1, p0, Lcom/google/devtools/simple/runtime/components/android/util/TimerInternal;->interval:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 36
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/util/TimerInternal;->component:Lcom/google/devtools/simple/runtime/components/AlarmHandler;

    .line 37
    return-void
.end method


# virtual methods
.method public Enabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/util/TimerInternal;->enabled:Z

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/util/TimerInternal;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 81
    :cond_0
    iput-boolean p1, p0, Lcom/google/devtools/simple/runtime/components/android/util/TimerInternal;->enabled:Z

    .line 83
    if-eqz p1, :cond_1

    .line 84
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/util/TimerInternal;->handler:Landroid/os/Handler;

    iget v1, p0, Lcom/google/devtools/simple/runtime/components/android/util/TimerInternal;->interval:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 86
    :cond_1
    return-void
.end method

.method public Enabled()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/util/TimerInternal;->enabled:Z

    return v0
.end method

.method public Interval()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/util/TimerInternal;->interval:I

    return v0
.end method

.method public Interval(I)V
    .locals 3
    .parameter "interval"

    .prologue
    .line 54
    iput p1, p0, Lcom/google/devtools/simple/runtime/components/android/util/TimerInternal;->interval:I

    .line 55
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/util/TimerInternal;->enabled:Z

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/util/TimerInternal;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 57
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/util/TimerInternal;->handler:Landroid/os/Handler;

    int-to-long v1, p1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 59
    :cond_0
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/util/TimerInternal;->enabled:Z

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/util/TimerInternal;->component:Lcom/google/devtools/simple/runtime/components/AlarmHandler;

    invoke-interface {v0}, Lcom/google/devtools/simple/runtime/components/AlarmHandler;->alarm()V

    .line 93
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/util/TimerInternal;->handler:Landroid/os/Handler;

    iget v1, p0, Lcom/google/devtools/simple/runtime/components/android/util/TimerInternal;->interval:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 95
    :cond_0
    return-void
.end method
