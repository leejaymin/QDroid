.class public Lcom/sphericbox/syb/processing/ProcessingService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Lcom/sphericbox/syb/processing/IProcessingServiceCallback;


# static fields
.field private static bi:Lcom/sphericbox/syb/a/p;


# instance fields
.field private am:Lcom/sphericbox/syb/processing/ProcessingConfig;

.field private final bj:Landroid/os/IBinder;

.field private final bk:Landroid/os/RemoteCallbackList;

.field private bl:Landroid/app/NotificationManager;

.field private bm:Landroid/os/PowerManager$WakeLock;

.field private started:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/sphericbox/syb/a/p;

    invoke-direct {v0}, Lcom/sphericbox/syb/a/p;-><init>()V

    sput-object v0, Lcom/sphericbox/syb/processing/ProcessingService;->bi:Lcom/sphericbox/syb/a/p;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 29
    new-instance v0, Lcom/sphericbox/syb/processing/ProcessingService$ProcessingBinder;

    invoke-direct {v0, p0}, Lcom/sphericbox/syb/processing/ProcessingService$ProcessingBinder;-><init>(Lcom/sphericbox/syb/processing/ProcessingService;)V

    iput-object v0, p0, Lcom/sphericbox/syb/processing/ProcessingService;->bj:Landroid/os/IBinder;

    .line 30
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sphericbox/syb/processing/ProcessingService;->bk:Landroid/os/RemoteCallbackList;

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcom/sphericbox/syb/processing/ProcessingService;)Landroid/os/RemoteCallbackList;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sphericbox/syb/processing/ProcessingService;->bk:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$100()Lcom/sphericbox/syb/a/p;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/sphericbox/syb/processing/ProcessingService;->bi:Lcom/sphericbox/syb/a/p;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sphericbox/syb/processing/ProcessingService;)Lcom/sphericbox/syb/processing/ProcessingConfig;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sphericbox/syb/processing/ProcessingService;->am:Lcom/sphericbox/syb/processing/ProcessingConfig;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sphericbox/syb/processing/ProcessingService;)Landroid/app/NotificationManager;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sphericbox/syb/processing/ProcessingService;->bl:Landroid/app/NotificationManager;

    return-object v0
.end method

.method private startThread(Landroid/content/Intent;)V
    .locals 6
    .parameter

    .prologue
    .line 72
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_0

    .line 74
    const-string v1, "FILENAME_EXTRA"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 75
    if-eqz v3, :cond_0

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sphericbox/syb/processing/ProcessingService;->started:Z

    .line 77
    new-instance v0, Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v1

    new-instance v2, Lcom/sphericbox/syb/processing/d;

    invoke-direct {v2, p0, v3}, Lcom/sphericbox/syb/processing/d;-><init>(Lcom/sphericbox/syb/processing/ProcessingService;Ljava/lang/String;)V

    const-string v3, "ProcesingService"

    const-wide/32 v4, 0x7d000

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 80
    :cond_0
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 135
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sphericbox/syb/processing/ProcessingService;->bj:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sphericbox/syb/processing/ProcessingService;->setForeground(Z)V

    .line 41
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/sphericbox/syb/processing/ProcessingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/sphericbox/syb/processing/ProcessingService;->bl:Landroid/app/NotificationManager;

    .line 43
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/sphericbox/syb/processing/ProcessingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 44
    const v1, 0x20000006

    const-string v2, "ProcessingService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/sphericbox/syb/processing/ProcessingService;->bm:Landroid/os/PowerManager$WakeLock;

    .line 45
    iget-object v0, p0, Lcom/sphericbox/syb/processing/ProcessingService;->bm:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 47
    new-instance v0, Lcom/sphericbox/syb/processing/ProcessingConfig;

    invoke-direct {v0, p0}, Lcom/sphericbox/syb/processing/ProcessingConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sphericbox/syb/processing/ProcessingService;->am:Lcom/sphericbox/syb/processing/ProcessingConfig;

    .line 48
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sphericbox/syb/processing/ProcessingService;->bm:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 61
    iget-object v0, p0, Lcom/sphericbox/syb/processing/ProcessingService;->bk:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 62
    iget-object v0, p0, Lcom/sphericbox/syb/processing/ProcessingService;->bl:Landroid/app/NotificationManager;

    const v1, 0x7f08002a

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 63
    sget-object v0, Lcom/sphericbox/syb/processing/ProcessingService;->bi:Lcom/sphericbox/syb/a/p;

    invoke-virtual {v0}, Lcom/sphericbox/syb/a/p;->B()V

    .line 64
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 53
    iget-boolean v0, p0, Lcom/sphericbox/syb/processing/ProcessingService;->started:Z

    if-nez v0, :cond_0

    .line 54
    invoke-direct {p0, p1}, Lcom/sphericbox/syb/processing/ProcessingService;->startThread(Landroid/content/Intent;)V

    .line 56
    :cond_0
    return-void
.end method

.method public previewUpdated(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sphericbox/syb/processing/ProcessingService;->bk:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 101
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/sphericbox/syb/processing/ProcessingService;->bk:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/sphericbox/syb/processing/IProcessingServiceCallback;

    .line 103
    invoke-interface {v0, p1}, Lcom/sphericbox/syb/processing/IProcessingServiceCallback;->previewUpdated(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/sphericbox/syb/processing/ProcessingService;->bk:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 108
    return-void

    .line 106
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sphericbox/syb/processing/ProcessingService;->bk:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v0
.end method

.method public processingCompleted()V
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sphericbox/syb/processing/ProcessingService;->bk:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 113
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/sphericbox/syb/processing/ProcessingService;->bk:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/sphericbox/syb/processing/IProcessingServiceCallback;

    .line 115
    invoke-interface {v0}, Lcom/sphericbox/syb/processing/IProcessingServiceCallback;->processingCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/sphericbox/syb/processing/ProcessingService;->bk:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 120
    return-void

    .line 118
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sphericbox/syb/processing/ProcessingService;->bk:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v0
.end method

.method public processingFailed(ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sphericbox/syb/processing/ProcessingService;->bk:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 125
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/sphericbox/syb/processing/ProcessingService;->bk:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/sphericbox/syb/processing/IProcessingServiceCallback;

    .line 127
    invoke-interface {v0, p1, p2}, Lcom/sphericbox/syb/processing/IProcessingServiceCallback;->processingFailed(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/sphericbox/syb/processing/ProcessingService;->bk:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 132
    return-void

    .line 130
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sphericbox/syb/processing/ProcessingService;->bk:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v0
.end method

.method public progress(III)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 83
    iget-object v0, p0, Lcom/sphericbox/syb/processing/ProcessingService;->bk:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    move v2, v3

    .line 85
    :goto_0
    if-ge v2, v1, :cond_1

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/sphericbox/syb/processing/ProcessingService;->bk:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/sphericbox/syb/processing/IProcessingServiceCallback;

    .line 87
    invoke-interface {v0, p1, p2, p3}, Lcom/sphericbox/syb/processing/IProcessingServiceCallback;->progress(III)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    const/4 v0, 0x1

    .line 92
    iget-object v1, p0, Lcom/sphericbox/syb/processing/ProcessingService;->bk:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 95
    :goto_1
    return v0

    .line 85
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/sphericbox/syb/processing/ProcessingService;->bk:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    move v0, v3

    .line 95
    goto :goto_1

    .line 92
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sphericbox/syb/processing/ProcessingService;->bk:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v0
.end method
