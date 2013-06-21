.class public Lcom/wareone/tappmt/SyncService;
.super Landroid/app/Service;
.source "SyncService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mCondition:Landroid/os/ConditionVariable;

.field private mTask:Ljava/lang/Runnable;

.field private objHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/wareone/tappmt/SyncService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wareone/tappmt/SyncService;->TAG:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/wareone/tappmt/SyncService;->objHandler:Landroid/os/Handler;

    .line 89
    new-instance v0, Lcom/wareone/tappmt/SyncRunner;

    iget-object v1, p0, Lcom/wareone/tappmt/SyncService;->objHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/wareone/tappmt/SyncRunner;-><init>(Landroid/content/Context;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lcom/wareone/tappmt/SyncService;->mTask:Ljava/lang/Runnable;

    .line 496
    new-instance v0, Lcom/wareone/tappmt/SyncService$1;

    invoke-direct {v0, p0}, Lcom/wareone/tappmt/SyncService$1;-><init>(Lcom/wareone/tappmt/SyncService;)V

    iput-object v0, p0, Lcom/wareone/tappmt/SyncService;->mBinder:Landroid/os/IBinder;

    .line 47
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 491
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 57
    sget-object v1, Lcom/wareone/tappmt/SyncService;->TAG:Ljava/lang/String;

    const-string v2, "sync service start"

    invoke-static {v1, v2}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/wareone/tappmt/SyncService;->mTask:Ljava/lang/Runnable;

    const-string v3, "SyncService"

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 69
    .local v0, syncThread:Ljava/lang/Thread;
    new-instance v1, Landroid/os/ConditionVariable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v1, p0, Lcom/wareone/tappmt/SyncService;->mCondition:Landroid/os/ConditionVariable;

    .line 70
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 71
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/wareone/tappmt/SyncService;->mCondition:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 84
    iget-object v0, p0, Lcom/wareone/tappmt/SyncService;->objHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/wareone/tappmt/SyncService;->mTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 85
    sget-object v0, Lcom/wareone/tappmt/SyncService;->TAG:Ljava/lang/String;

    const-string v1, "sync service stop"

    invoke-static {v0, v1}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 87
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 75
    sget-object v0, Lcom/wareone/tappmt/SyncService;->TAG:Ljava/lang/String;

    const-string v1, "SyncService.onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void
.end method
