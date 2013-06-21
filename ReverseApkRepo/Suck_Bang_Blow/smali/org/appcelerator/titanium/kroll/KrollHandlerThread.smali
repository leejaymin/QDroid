.class public Lorg/appcelerator/titanium/kroll/KrollHandlerThread;
.super Ljava/lang/Thread;
.source "KrollHandlerThread.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "KrollHandlerThread"


# instance fields
.field private krollContext:Lorg/appcelerator/titanium/kroll/KrollContext;

.field private mLooper:Landroid/os/Looper;

.field private mPriority:I

.field private mTid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->DEBUG:Z

    sput-boolean v0, Lorg/appcelerator/titanium/kroll/KrollHandlerThread;->DBG:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILorg/appcelerator/titanium/kroll/KrollContext;)V
    .locals 6
    .parameter "name"
    .parameter "priority"
    .parameter "stackSize"
    .parameter "krollContext"

    .prologue
    const/4 v1, 0x0

    .line 67
    int-to-long v4, p3

    move-object v0, p0

    move-object v2, v1

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lorg/appcelerator/titanium/kroll/KrollHandlerThread;->mTid:I

    .line 68
    iput p2, p0, Lorg/appcelerator/titanium/kroll/KrollHandlerThread;->mPriority:I

    .line 69
    iput-object p4, p0, Lorg/appcelerator/titanium/kroll/KrollHandlerThread;->krollContext:Lorg/appcelerator/titanium/kroll/KrollContext;

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILorg/appcelerator/titanium/kroll/KrollContext;)V
    .locals 1
    .parameter "name"
    .parameter "priority"
    .parameter "krollContext"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lorg/appcelerator/titanium/kroll/KrollHandlerThread;->mTid:I

    .line 61
    iput p2, p0, Lorg/appcelerator/titanium/kroll/KrollHandlerThread;->mPriority:I

    .line 62
    iput-object p3, p0, Lorg/appcelerator/titanium/kroll/KrollHandlerThread;->krollContext:Lorg/appcelerator/titanium/kroll/KrollContext;

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/appcelerator/titanium/kroll/KrollContext;)V
    .locals 1
    .parameter "name"
    .parameter "krollContext"

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/appcelerator/titanium/kroll/KrollHandlerThread;-><init>(Ljava/lang/String;ILorg/appcelerator/titanium/kroll/KrollContext;)V

    .line 48
    return-void
.end method


# virtual methods
.method public getLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0}, Lorg/appcelerator/titanium/kroll/KrollHandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    const/4 v0, 0x0

    .line 116
    :goto_0
    return-object v0

    .line 108
    :cond_0
    monitor-enter p0

    .line 109
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/kroll/KrollHandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/appcelerator/titanium/kroll/KrollHandlerThread;->mLooper:Landroid/os/Looper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 111
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 112
    :catch_0
    move-exception v0

    goto :goto_1

    .line 115
    :cond_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    iget-object v0, p0, Lorg/appcelerator/titanium/kroll/KrollHandlerThread;->mLooper:Landroid/os/Looper;

    goto :goto_0

    .line 115
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public getThreadId()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lorg/appcelerator/titanium/kroll/KrollHandlerThread;->mTid:I

    return v0
.end method

.method protected onLooperPrepared()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/appcelerator/titanium/kroll/KrollHandlerThread;->krollContext:Lorg/appcelerator/titanium/kroll/KrollContext;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/kroll/KrollContext;->initContext()V

    .line 78
    return-void
.end method

.method public quit()Z
    .locals 2

    .prologue
    .line 126
    invoke-virtual {p0}, Lorg/appcelerator/titanium/kroll/KrollHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 127
    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 129
    const/4 v1, 0x1

    .line 131
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 81
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iput v0, p0, Lorg/appcelerator/titanium/kroll/KrollHandlerThread;->mTid:I

    .line 82
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 83
    monitor-enter p0

    .line 84
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lorg/appcelerator/titanium/kroll/KrollHandlerThread;->mLooper:Landroid/os/Looper;

    .line 85
    iget v0, p0, Lorg/appcelerator/titanium/kroll/KrollHandlerThread;->mPriority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 87
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    invoke-virtual {p0}, Lorg/appcelerator/titanium/kroll/KrollHandlerThread;->onLooperPrepared()V

    .line 89
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 90
    const/4 v0, -0x1

    iput v0, p0, Lorg/appcelerator/titanium/kroll/KrollHandlerThread;->mTid:I

    .line 91
    return-void

    .line 87
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
