.class public Lcom/kt/olleh/inapp/TimerService;
.super Landroid/app/Service;
.source "TimerService.java"


# static fields
.field private static final TIMER_PERIOD:I = 0xdbba0


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mRunning:Z

.field private mStartId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kt/olleh/inapp/TimerService;)Z
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/kt/olleh/inapp/TimerService;->mRunning:Z

    return v0
.end method

.method static synthetic access$1(Lcom/kt/olleh/inapp/TimerService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/kt/olleh/inapp/TimerService;->mRunning:Z

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 26
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 27
    const-string v0, ">>>>>"

    const-string v1, "onCreateService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/TimerService;->mHandler:Landroid/os/Handler;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kt/olleh/inapp/TimerService;->mRunning:Z

    .line 30
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kt/olleh/inapp/TimerService;->mRunning:Z

    .line 57
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 58
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 5
    .parameter "intent"
    .parameter "startId"

    .prologue
    const/4 v4, 0x1

    .line 34
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 35
    iput p2, p0, Lcom/kt/olleh/inapp/TimerService;->mStartId:I

    .line 36
    const-string v0, ">>>>>"

    const-string v1, "onStartService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-boolean v0, p0, Lcom/kt/olleh/inapp/TimerService;->mRunning:Z

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/kt/olleh/inapp/TimerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/kt/olleh/inapp/TimerService$1;

    invoke-direct {v1, p0}, Lcom/kt/olleh/inapp/TimerService$1;-><init>(Lcom/kt/olleh/inapp/TimerService;)V

    .line 48
    const-wide/32 v2, 0xdbba0

    .line 38
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 49
    sput-boolean v4, Lcom/kt/olleh/inapp/Config/Config;->isTimerRunning:Z

    .line 50
    iput-boolean v4, p0, Lcom/kt/olleh/inapp/TimerService;->mRunning:Z

    .line 52
    :cond_0
    return-void
.end method
