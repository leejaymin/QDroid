.class public Lcom/kavsdk/antivirus/AvFsMonitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lax;


# instance fields
.field public a:Z

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Law;

.field private f:Landroid/content/Context;

.field private g:Z

.field private h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private j:Z

.field private k:Lay;

.field private l:Ljava/lang/Runnable;

.field private m:Landroid/os/Handler;

.field private mContext:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean v1, p0, Lcom/kavsdk/antivirus/AvFsMonitor;->g:Z

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kavsdk/antivirus/AvFsMonitor;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kavsdk/antivirus/AvFsMonitor;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 43
    iput-boolean v1, p0, Lcom/kavsdk/antivirus/AvFsMonitor;->j:Z

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kavsdk/antivirus/AvFsMonitor;->k:Lay;

    .line 327
    iput-boolean v1, p0, Lcom/kavsdk/antivirus/AvFsMonitor;->a:Z

    .line 330
    new-instance v0, Lap;

    invoke-direct {v0, p0}, Lap;-><init>(Lcom/kavsdk/antivirus/AvFsMonitor;)V

    iput-object v0, p0, Lcom/kavsdk/antivirus/AvFsMonitor;->l:Ljava/lang/Runnable;

    .line 353
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kavsdk/antivirus/AvFsMonitor;->m:Landroid/os/Handler;

    .line 52
    iput-object p4, p0, Lcom/kavsdk/antivirus/AvFsMonitor;->d:Ljava/lang/String;

    .line 53
    iput-object p5, p0, Lcom/kavsdk/antivirus/AvFsMonitor;->f:Landroid/content/Context;

    .line 54
    invoke-static {}, Lcom/kavsdk/antivirus/BasesStorage;->a()Lcom/kavsdk/antivirus/BasesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kavsdk/antivirus/BasesStorage;->c()I

    move-result v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/kavsdk/antivirus/AvFsMonitor;->initContext(IILjava/lang/String;II)I

    move-result v0

    .line 56
    if-eqz v0, :cond_0

    .line 57
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Error loading monitor!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    iput-boolean v5, p0, Lcom/kavsdk/antivirus/AvFsMonitor;->j:Z

    .line 63
    return-void
.end method

.method private a(J)V
    .locals 4
    .parameter

    .prologue
    .line 356
    iget-object v0, p0, Lcom/kavsdk/antivirus/AvFsMonitor;->m:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kavsdk/antivirus/AvFsMonitor;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 357
    iget-object v0, p0, Lcom/kavsdk/antivirus/AvFsMonitor;->m:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kavsdk/antivirus/AvFsMonitor;->l:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 358
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kavsdk/antivirus/AvFsMonitor;->a:Z

    .line 359
    return-void
.end method

.method public static synthetic a(Lcom/kavsdk/antivirus/AvFsMonitor;)Z
    .locals 1
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/kavsdk/antivirus/AvFsMonitor;->pushMonEvents()Z

    move-result v0

    return v0
.end method

.method private native addExcludePath(Ljava/lang/String;)V
.end method

.method private native addRootPath(Ljava/lang/String;)V
.end method

.method public static synthetic b(Lcom/kavsdk/antivirus/AvFsMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/kavsdk/antivirus/AvFsMonitor;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static synthetic c(Lcom/kavsdk/antivirus/AvFsMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/kavsdk/antivirus/AvFsMonitor;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static synthetic d(Lcom/kavsdk/antivirus/AvFsMonitor;)Z
    .locals 1
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/kavsdk/antivirus/AvFsMonitor;->waitReloadMonitorJni()Z

    move-result v0

    return v0
.end method

.method public static synthetic e(Lcom/kavsdk/antivirus/AvFsMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/kavsdk/antivirus/AvFsMonitor;->h()V

    return-void
.end method

.method private native enableMonEvents(Z)V
.end method

.method public static synthetic f(Lcom/kavsdk/antivirus/AvFsMonitor;)Z
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/kavsdk/antivirus/AvFsMonitor;->g:Z

    return v0
.end method

.method private native fastReload()Z
.end method

.method private g()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 132
    iget-object v0, p0, Lcom/kavsdk/antivirus/AvFsMonitor;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 133
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/kavsdk/antivirus/AvFsMonitor;->addRootPath(Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_0
    invoke-static {v2}, Lcom/kavsdk/shared/SdkUtils;->a(Z)Ljava/util/ArrayList;

    move-result-object v3

    move v1, v2

    .line 138
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 140
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/kavsdk/antivirus/AvFsMonitor;->addRootPath(Ljava/lang/String;)V

    .line 138
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 144
    :cond_1
    const-string v0, "/mnt"

    invoke-direct {p0, v0}, Lcom/kavsdk/antivirus/AvFsMonitor;->addRootPath(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/kavsdk/antivirus/AvFsMonitor;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/kavsdk/antivirus/AvFsMonitor;->addExcludePath(Ljava/lang/String;)V

    .line 154
    invoke-direct {p0}, Lcom/kavsdk/antivirus/AvFsMonitor;->loadFsMonitor()I

    move-result v0

    .line 160
    if-nez v0, :cond_2

    .line 166
    iget v0, p0, Lcom/kavsdk/antivirus/AvFsMonitor;->b:I

    invoke-direct {p0, v0}, Lcom/kavsdk/antivirus/AvFsMonitor;->setFsMonScanMode(I)V

    .line 167
    iget v0, p0, Lcom/kavsdk/antivirus/AvFsMonitor;->c:I

    invoke-direct {p0, v0}, Lcom/kavsdk/antivirus/AvFsMonitor;->setFsMonCleanMode(I)V

    .line 168
    const/4 v2, 0x1

    .line 175
    :cond_2
    return v2
.end method

.method public static synthetic g(Lcom/kavsdk/antivirus/AvFsMonitor;)Z
    .locals 1
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/kavsdk/antivirus/AvFsMonitor;->fastReload()Z

    move-result v0

    return v0
.end method

.method private declared-synchronized h()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 185
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/kavsdk/antivirus/AvFsMonitor;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/kavsdk/antivirus/AvFsMonitor;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 186
    :goto_0
    iget-boolean v1, p0, Lcom/kavsdk/antivirus/AvFsMonitor;->g:Z

    if-eq v1, v0, :cond_0

    .line 187
    if-eqz v0, :cond_2

    .line 188
    invoke-direct {p0}, Lcom/kavsdk/antivirus/AvFsMonitor;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kavsdk/antivirus/AvFsMonitor;->g:Z

    .line 190
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    move v0, v1

    .line 185
    goto :goto_0

    .line 198
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/kavsdk/antivirus/AvFsMonitor;->unloadFsMonitor()I

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kavsdk/antivirus/AvFsMonitor;->g:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/kavsdk/antivirus/AvFsMonitor;->m:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kavsdk/antivirus/AvFsMonitor;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 364
    iget-object v0, p0, Lcom/kavsdk/antivirus/AvFsMonitor;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 365
    invoke-direct {p0}, Lcom/kavsdk/antivirus/AvFsMonitor;->h()V

    .line 367
    const-wide/16 v0, 0x5dc

    invoke-direct {p0, v0, v1}, Lcom/kavsdk/antivirus/AvFsMonitor;->a(J)V

    .line 368
    return-void
.end method

.method private native initContext(IILjava/lang/String;II)I
.end method

.method private j()V
    .locals 2

    .prologue
    .line 372
    const-wide/16 v0, 0x5dc

    invoke-direct {p0, v0, v1}, Lcom/kavsdk/antivirus/AvFsMonitor;->a(J)V

    .line 373
    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 376
    iget-boolean v0, p0, Lcom/kavsdk/antivirus/AvFsMonitor;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kavsdk/antivirus/AvFsMonitor;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kavsdk/antivirus/AvFsMonitor;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lar;

    invoke-direct {v1, p0}, Lar;-><init>(Lcom/kavsdk/antivirus/AvFsMonitor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private native loadFsMonitor()I
.end method

.method private monitorCallback(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 302
    iget-object v0, p0, Lcom/kavsdk/antivirus/AvFsMonitor;->e:Law;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/kavsdk/antivirus/AvFsMonitor;->e:Law;

    invoke-interface {v0, p1, p2}, Law;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 310
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private native pushMonEvents()Z
.end method

.method private native releaseContext()V
.end method

.method private native setFsMonCleanMode(I)V
.end method

.method private native setFsMonScanMode(I)V
.end method

.method private native unloadFsMonitor()I
.end method

.method private native waitReloadMonitorJni()Z
.end method


# virtual methods
.method public final declared-synchronized a(I)V
    .locals 1
    .parameter

    .prologue
    .line 215
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/kavsdk/antivirus/AvFsMonitor;->b:I

    .line 216
    iget-boolean v0, p0, Lcom/kavsdk/antivirus/AvFsMonitor;->g:Z

    if-eqz v0, :cond_0

    .line 217
    invoke-direct {p0, p1}, Lcom/kavsdk/antivirus/AvFsMonitor;->setFsMonScanMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    :cond_0
    monitor-exit p0

    return-void

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Law;)V
    .locals 0
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/kavsdk/antivirus/AvFsMonitor;->e:Law;

    .line 234
    return-void
.end method

.method public final a(ZLandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 397
    iget-object v0, p0, Lcom/kavsdk/antivirus/AvFsMonitor;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 413
    :goto_0
    return-void

    .line 403
    :cond_0
    if-nez p1, :cond_1

    .line 404
    invoke-direct {p0}, Lcom/kavsdk/antivirus/AvFsMonitor;->i()V

    goto :goto_0

    .line 407
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 408
    invoke-direct {p0}, Lcom/kavsdk/antivirus/AvFsMonitor;->k()V

    goto :goto_0

    .line 410
    :cond_2
    invoke-direct {p0}, Lcom/kavsdk/antivirus/AvFsMonitor;->j()V

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/kavsdk/antivirus/AvFsMonitor;->j:Z

    return v0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/kavsdk/antivirus/AvFsMonitor;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    monitor-enter p0

    .line 95
    :try_start_0
    invoke-static {}, Lay;->a()Lay;

    move-result-object v0

    iput-object v0, p0, Lcom/kavsdk/antivirus/AvFsMonitor;->k:Lay;

    .line 96
    iget-object v0, p0, Lcom/kavsdk/antivirus/AvFsMonitor;->k:Lay;

    iget-object v1, p0, Lcom/kavsdk/antivirus/AvFsMonitor;->f:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lay;->a(Landroid/content/Context;)V

    .line 97
    iget-object v0, p0, Lcom/kavsdk/antivirus/AvFsMonitor;->k:Lay;

    invoke-virtual {v0, p0}, Lay;->a(Lax;)V

    .line 98
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :cond_0
    invoke-direct {p0}, Lcom/kavsdk/antivirus/AvFsMonitor;->h()V

    .line 102
    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(I)V
    .locals 1
    .parameter

    .prologue
    .line 226
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/kavsdk/antivirus/AvFsMonitor;->c:I

    .line 227
    iget-boolean v0, p0, Lcom/kavsdk/antivirus/AvFsMonitor;->g:Z

    if-eqz v0, :cond_0

    .line 228
    invoke-direct {p0, p1}, Lcom/kavsdk/antivirus/AvFsMonitor;->setFsMonCleanMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    :cond_0
    monitor-exit p0

    return-void

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/kavsdk/antivirus/AvFsMonitor;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    monitor-enter p0

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/kavsdk/antivirus/AvFsMonitor;->k:Lay;

    invoke-virtual {v0, p0}, Lay;->b(Lax;)V

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kavsdk/antivirus/AvFsMonitor;->k:Lay;

    .line 118
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :cond_0
    invoke-direct {p0}, Lcom/kavsdk/antivirus/AvFsMonitor;->h()V

    .line 122
    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()Las;
    .locals 1

    .prologue
    .line 255
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/kavsdk/antivirus/AvFsMonitor;->enableMonEvents(Z)V

    .line 256
    new-instance v0, Las;

    invoke-direct {v0, p0, p0}, Las;-><init>(Lcom/kavsdk/antivirus/AvFsMonitor;Lcom/kavsdk/antivirus/AvFsMonitor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kavsdk/antivirus/AvFsMonitor;->enableMonEvents(Z)V

    .line 261
    return-void
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 267
    monitor-enter p0

    .line 271
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/kavsdk/antivirus/AvFsMonitor;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 276
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 281
    :catch_0
    move-exception v0

    goto :goto_0

    .line 289
    :cond_0
    :try_start_2
    iget-boolean v0, p0, Lcom/kavsdk/antivirus/AvFsMonitor;->g:Z

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v0

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 67
    :try_start_0
    invoke-virtual {p0}, Lcom/kavsdk/antivirus/AvFsMonitor;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    invoke-direct {p0}, Lcom/kavsdk/antivirus/AvFsMonitor;->releaseContext()V

    .line 75
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public native getMonitorNativePtr()I
.end method
