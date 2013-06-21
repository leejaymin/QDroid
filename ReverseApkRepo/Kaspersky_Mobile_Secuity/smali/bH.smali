.class public final LbH;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/PowerManager$WakeLock;

.field private b:LbP;

.field private c:Landroid/os/Looper;

.field private d:Z

.field private e:LbQ;

.field private f:Ljava/lang/Object;

.field private g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private h:Ljava/lang/Object;

.field private i:LbG;

.field private j:LbG;

.field private k:Ljava/lang/Object;

.field private l:LbI;

.field private m:Ljava/lang/Object;

.field private n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final o:Ljava/lang/String;


# direct methods
.method public constructor <init>(LbQ;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 25
    iput-object v1, p0, LbH;->b:LbP;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, LbH;->d:Z

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LbH;->f:Ljava/lang/Object;

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, LbH;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    iput-object v1, p0, LbH;->h:Ljava/lang/Object;

    .line 32
    iput-object v1, p0, LbH;->i:LbG;

    .line 33
    iput-object v1, p0, LbH;->j:LbG;

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LbH;->k:Ljava/lang/Object;

    .line 36
    iput-object v1, p0, LbH;->l:LbI;

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LbH;->m:Ljava/lang/Object;

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, LbH;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 43
    iput-object p1, p0, LbH;->e:LbQ;

    .line 44
    iput-object p2, p0, LbH;->h:Ljava/lang/Object;

    .line 45
    iput-object p3, p0, LbH;->o:Ljava/lang/String;

    .line 46
    return-void
.end method

.method static synthetic a(LbH;Landroid/os/Looper;)Landroid/os/Looper;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, LbH;->c:Landroid/os/Looper;

    return-object p1
.end method

.method static synthetic a(LbH;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, LbH;->k:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(LbH;)Landroid/os/Looper;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, LbH;->c:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic c(LbH;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, LbH;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic d(LbH;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, LbH;->m:Ljava/lang/Object;

    return-object v0
.end method

.method private e()Z
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, LbH;->e:LbQ;

    invoke-virtual {v0}, LbQ;->c()Z

    move-result v0

    return v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 247
    new-instance v0, LbI;

    invoke-direct {v0, p0, p0}, LbI;-><init>(LbH;LbH;)V

    iput-object v0, p0, LbH;->l:LbI;

    .line 248
    iget-object v0, p0, LbH;->l:LbI;

    invoke-virtual {v0}, LbI;->start()V

    .line 249
    :goto_0
    iget-object v0, p0, LbH;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    iget-object v1, p0, LbH;->m:Ljava/lang/Object;

    monitor-enter v1

    .line 252
    :try_start_0
    iget-object v0, p0, LbH;->m:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 253
    :catch_0
    move-exception v0

    .line 254
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 258
    :cond_0
    iget-object v0, p0, LbH;->l:LbI;

    invoke-virtual {v0}, LbI;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    :try_start_3
    iget-object v0, p0, LbH;->l:LbI;

    invoke-virtual {v0}, LbI;->join()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 265
    :cond_1
    :goto_2
    const/4 v0, 0x0

    iput-object v0, p0, LbH;->l:LbI;

    .line 266
    return-void

    .line 261
    :catch_1
    move-exception v0

    .line 262
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public final a(LbG;LbG;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, LbH;->i:LbG;

    .line 51
    iput-object p2, p0, LbH;->j:LbG;

    .line 52
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-boolean p1, p0, LbH;->d:Z

    .line 56
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, LbH;->e:LbQ;

    invoke-virtual {v0}, LbQ;->a()Z

    move-result v0

    return v0
.end method

.method public final declared-synchronized a(Landroid/location/Location;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 65
    monitor-enter p0

    .line 66
    if-nez p1, :cond_0

    .line 89
    :goto_0
    monitor-exit p0

    return v0

    .line 69
    :cond_0
    :try_start_0
    iget-object v1, p0, LbH;->h:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 70
    :try_start_1
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    .line 71
    iget-object v2, p0, LbH;->i:LbG;

    invoke-virtual {v2, p1}, LbG;->a(Landroid/location/Location;)Z

    .line 75
    :cond_1
    :goto_1
    iget-object v2, p0, LbH;->i:LbG;

    invoke-virtual {v2}, LbG;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 76
    iget-object v0, p0, LbH;->e:LbQ;

    iget-object v2, p0, LbH;->i:LbG;

    invoke-virtual {v2}, LbG;->a()Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v0, v2}, LbQ;->a(Landroid/location/Location;)Z

    move-result v0

    .line 77
    if-eqz v0, :cond_2

    .line 79
    iget-object v2, p0, LbH;->i:LbG;

    invoke-virtual {v2}, LbG;->c()V

    .line 88
    :cond_2
    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 65
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 72
    :cond_3
    :try_start_3
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    const-string v3, "network"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 73
    iget-object v2, p0, LbH;->j:LbG;

    invoke-virtual {v2, p1}, LbG;->a(Landroid/location/Location;)Z

    goto :goto_1

    .line 81
    :cond_4
    iget-object v2, p0, LbH;->j:LbG;

    invoke-virtual {v2}, LbG;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 82
    iget-object v0, p0, LbH;->e:LbQ;

    iget-object v2, p0, LbH;->j:LbG;

    invoke-virtual {v2}, LbG;->a()Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v0, v2}, LbQ;->a(Landroid/location/Location;)Z

    move-result v0

    .line 83
    if-eqz v0, :cond_2

    .line 85
    iget-object v2, p0, LbH;->j:LbG;

    invoke-virtual {v2}, LbG;->c()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 204
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const v1, 0x7f080118

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 213
    iget-object v1, p0, LbH;->o:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lfp;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 214
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 217
    iget-object v1, p0, LbH;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 218
    :try_start_0
    iget-object v0, p0, LbH;->c:Landroid/os/Looper;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, LbH;->c:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 225
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, LbH;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 236
    iget-object v1, p0, LbH;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 241
    :try_start_0
    iget-object v0, p0, LbH;->f:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 242
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 102
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 103
    new-instance v0, LbJ;

    invoke-direct {v0, p0}, LbJ;-><init>(LbH;)V

    .line 104
    const-wide/32 v2, 0x4baf0

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 107
    :cond_0
    :goto_0
    invoke-direct {p0}, LbH;->e()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, LbH;->e:LbQ;

    invoke-virtual {v0}, LbQ;->d()I

    move-result v0

    if-gt v0, v4, :cond_2

    .line 108
    const-string v0, "KmsGpsFindWakeLock"

    invoke-static {v0}, Lfp;->i(Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, LbH;->a:Landroid/os/PowerManager$WakeLock;

    .line 111
    new-instance v0, LbP;

    iget-boolean v2, p0, LbH;->d:Z

    invoke-direct {v0, p0, v2}, LbP;-><init>(LbH;Z)V

    iput-object v0, p0, LbH;->b:LbP;

    .line 112
    iget-object v0, p0, LbH;->b:LbP;

    invoke-virtual {v0, v4}, LbP;->setPriority(I)V

    .line 113
    iget-object v0, p0, LbH;->b:LbP;

    invoke-virtual {v0}, LbP;->start()V

    .line 120
    invoke-direct {p0}, LbH;->f()V

    .line 126
    iget-object v0, p0, LbH;->b:LbP;

    invoke-virtual {v0}, LbP;->a()V

    .line 130
    iget-object v0, p0, LbH;->b:LbP;

    invoke-virtual {v0}, LbP;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    :try_start_0
    iget-object v0, p0, LbH;->b:LbP;

    invoke-virtual {v0}, LbP;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :cond_1
    :goto_1
    invoke-direct {p0}, LbH;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, LbH;->e:LbQ;

    invoke-virtual {v0}, LbQ;->d()I

    move-result v0

    if-ge v0, v4, :cond_2

    .line 145
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->e:Lfy;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lfy;->b(I)V

    .line 147
    iget-object v0, p0, LbH;->a:Landroid/os/PowerManager$WakeLock;

    invoke-static {v0}, Lfp;->a(Landroid/os/PowerManager$WakeLock;)Z

    .line 148
    iput-object v6, p0, LbH;->a:Landroid/os/PowerManager$WakeLock;

    .line 152
    iget-object v0, p0, LbH;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iget-object v2, p0, LbH;->f:Ljava/lang/Object;

    monitor-enter v2

    .line 159
    :try_start_1
    iget-object v0, p0, LbH;->f:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 163
    :goto_2
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 168
    iget-object v0, p0, LbH;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 160
    :catch_1
    move-exception v0

    .line 161
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 178
    :cond_2
    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 184
    invoke-static {}, LbQ;->f()V

    .line 185
    iget-object v0, p0, LbH;->e:LbQ;

    invoke-virtual {v0}, LbQ;->b()V

    .line 186
    iget-object v0, p0, LbH;->e:LbQ;

    invoke-virtual {v0}, LbQ;->e()V

    .line 187
    iget-object v0, p0, LbH;->a:Landroid/os/PowerManager$WakeLock;

    invoke-static {v0}, Lfp;->a(Landroid/os/PowerManager$WakeLock;)Z

    .line 188
    iput-object v6, p0, LbH;->a:Landroid/os/PowerManager$WakeLock;

    .line 192
    return-void
.end method
