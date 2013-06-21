.class public Lcom/dakkhin/android/bhadram/App;
.super Landroid/app/Application;
.source "App.java"


# instance fields
.field private redirectHandler:Landroid/os/Handler;

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 25
    new-instance v0, Lcom/dakkhin/android/bhadram/App$1;

    invoke-direct {v0, p0}, Lcom/dakkhin/android/bhadram/App$1;-><init>(Lcom/dakkhin/android/bhadram/App;)V

    iput-object v0, p0, Lcom/dakkhin/android/bhadram/App;->redirectHandler:Landroid/os/Handler;

    .line 21
    return-void
.end method

.method static synthetic access$0(Lcom/dakkhin/android/bhadram/App;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dakkhin/android/bhadram/App;->redirectHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public cancelTimer()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/dakkhin/android/bhadram/App;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/dakkhin/android/bhadram/App;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dakkhin/android/bhadram/App;->timer:Ljava/util/Timer;

    .line 64
    :cond_0
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 69
    iget-object v0, p0, Lcom/dakkhin/android/bhadram/App;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/dakkhin/android/bhadram/App;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 72
    :cond_0
    return-void
.end method

.method public startAppTimeout()V
    .locals 4

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/dakkhin/android/bhadram/App;->cancelTimer()V

    .line 47
    new-instance v1, Ljava/util/Timer;

    const-string v2, "Akandaka timeout"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/dakkhin/android/bhadram/App;->timer:Ljava/util/Timer;

    .line 49
    new-instance v0, Lcom/dakkhin/android/bhadram/App$2;

    invoke-direct {v0, p0}, Lcom/dakkhin/android/bhadram/App$2;-><init>(Lcom/dakkhin/android/bhadram/App;)V

    .line 56
    .local v0, task:Ljava/util/TimerTask;
    iget-object v1, p0, Lcom/dakkhin/android/bhadram/App;->timer:Ljava/util/Timer;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 57
    return-void
.end method
