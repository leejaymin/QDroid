.class public final Lcom/google/ads/ab;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/ads/internal/o;

.field private b:Lcom/google/ads/ai;

.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/Thread;

.field private e:Ljava/lang/Object;

.field private f:Z

.field private g:Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v1, p0, Lcom/google/ads/ab;->b:Lcom/google/ads/ai;

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/ads/ab;->c:Ljava/lang/Object;

    .line 64
    iput-object v1, p0, Lcom/google/ads/ab;->d:Ljava/lang/Thread;

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/ads/ab;->e:Ljava/lang/Object;

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/ab;->f:Z

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/ads/ab;->g:Ljava/lang/Object;

    .line 309
    iput-object v1, p0, Lcom/google/ads/ab;->a:Lcom/google/ads/internal/o;

    .line 310
    return-void
.end method

.method public constructor <init>(Lcom/google/ads/internal/o;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v1, p0, Lcom/google/ads/ab;->b:Lcom/google/ads/ai;

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/ads/ab;->c:Ljava/lang/Object;

    .line 64
    iput-object v1, p0, Lcom/google/ads/ab;->d:Ljava/lang/Thread;

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/ads/ab;->e:Ljava/lang/Object;

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/ab;->f:Z

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/ads/ab;->g:Ljava/lang/Object;

    .line 101
    invoke-static {p1}, Lcom/google/ads/util/b;->a(Ljava/lang/Object;)V

    .line 102
    iput-object p1, p0, Lcom/google/ads/ab;->a:Lcom/google/ads/internal/o;

    .line 103
    return-void
.end method

.method static synthetic a(Lcom/google/ads/ab;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/ads/ab;->e:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/google/ads/ab;Lcom/google/ads/y;Lcom/google/ads/d;)V
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    iget-object v1, p0, Lcom/google/ads/ab;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v2, p0, Lcom/google/ads/ab;->d:Ljava/lang/Thread;

    invoke-static {v0, v2}, Lcom/google/ads/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lcom/google/ads/y;->f()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/ads/y;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/google/ads/y;->b()I

    move-result v1

    int-to-long v7, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/ads/j;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Looking to fetch ads from network: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/ads/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/ads/j;->c()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v2}, Lcom/google/ads/j;->d()Ljava/util/HashMap;

    move-result-object v11

    new-instance v0, Lcom/google/ads/af;

    invoke-virtual {v2}, Lcom/google/ads/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/google/ads/j;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/ads/y;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/ads/y;->g()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/ads/y;->h()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/ads/y;->i()Ljava/util/List;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/ads/af;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/ads/ab;->a:Lcom/google/ads/internal/o;

    invoke-virtual {v1}, Lcom/google/ads/internal/o;->g()Lcom/google/ads/aq;

    move-result-object v1

    iget-object v1, v1, Lcom/google/ads/aq;->c:Lcom/google/ads/util/ad;

    invoke-virtual {v1}, Lcom/google/ads/util/ad;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    if-nez v3, :cond_4

    const-string v0, "Activity is null while mediating.  Terminating mediation thread."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    const-wide/16 v7, 0x2710

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/google/ads/ab;->a:Lcom/google/ads/internal/o;

    invoke-virtual {v1}, Lcom/google/ads/internal/o;->l()Lcom/google/ads/internal/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/internal/t;->c()V

    move-object v1, p0

    move-object v4, p2

    move-object v5, v0

    move-object v6, v11

    invoke-direct/range {v1 .. v8}, Lcom/google/ads/ab;->a(Ljava/lang/String;Landroid/app/Activity;Lcom/google/ads/d;Lcom/google/ads/af;Ljava/util/HashMap;J)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/google/ads/ab;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "GWController.destroy() called. Terminating mediation thread."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/google/ads/ab;->a:Lcom/google/ads/internal/o;

    new-instance v1, Lcom/google/ads/ad;

    invoke-direct {v1, p0, p1}, Lcom/google/ads/ad;-><init>(Lcom/google/ads/ab;Lcom/google/ads/y;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/o;->a(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/ads/ab;Lcom/google/ads/ai;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/google/ads/ab;->b(Lcom/google/ads/ai;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;Landroid/app/Activity;Lcom/google/ads/d;Lcom/google/ads/af;Ljava/util/HashMap;J)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 381
    new-instance v0, Lcom/google/ads/ai;

    iget-object v1, p0, Lcom/google/ads/ab;->a:Lcom/google/ads/internal/o;

    invoke-virtual {v1}, Lcom/google/ads/internal/o;->g()Lcom/google/ads/aq;

    move-result-object v1

    iget-object v1, v1, Lcom/google/ads/aq;->i:Lcom/google/ads/util/ab;

    invoke-virtual {v1}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/internal/u;

    move-object v1, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/ads/ai;-><init>(Lcom/google/ads/ab;Lcom/google/ads/internal/u;Lcom/google/ads/af;Ljava/lang/String;Lcom/google/ads/d;Ljava/util/HashMap;)V

    .line 387
    monitor-enter v0

    .line 388
    :try_start_0
    invoke-virtual {v0, p2}, Lcom/google/ads/ai;->a(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lcom/google/ads/ai;->b()Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v1, p6, v1

    if-lez v1, :cond_0

    .line 393
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 394
    invoke-virtual {v0, p6, p7}, Ljava/lang/Object;->wait(J)V

    .line 395
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v3

    sub-long v1, v3, v1

    .line 396
    sub-long/2addr p6, v1

    .line 397
    goto :goto_0

    .line 399
    :catch_0
    move-exception v1

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Interrupted while waiting for ad network to load ad using adapter class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    .line 404
    :cond_0
    iget-object v1, p0, Lcom/google/ads/ab;->a:Lcom/google/ads/internal/o;

    invoke-virtual {v1}, Lcom/google/ads/internal/o;->l()Lcom/google/ads/internal/t;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/ads/ai;->d()Lcom/google/ads/ah;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/ads/internal/t;->a(Lcom/google/ads/ah;)V

    .line 406
    invoke-virtual {v0}, Lcom/google/ads/ai;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/ads/ai;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 410
    iget-object v1, p0, Lcom/google/ads/ab;->a:Lcom/google/ads/internal/o;

    invoke-virtual {v1}, Lcom/google/ads/internal/o;->g()Lcom/google/ads/aq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/aq;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 416
    :goto_1
    iget-object v2, p0, Lcom/google/ads/ab;->a:Lcom/google/ads/internal/o;

    new-instance v3, Lcom/google/ads/ae;

    invoke-direct {v3, p0, v0, v1, p4}, Lcom/google/ads/ae;-><init>(Lcom/google/ads/ab;Lcom/google/ads/ai;Landroid/view/View;Lcom/google/ads/af;)V

    invoke-virtual {v2, v3}, Lcom/google/ads/internal/o;->a(Ljava/lang/Runnable;)V

    .line 432
    const/4 v1, 0x1

    monitor-exit v0

    move v0, v1

    .line 437
    :goto_2
    return v0

    .line 410
    :cond_1
    invoke-virtual {v0}, Lcom/google/ads/ai;->e()Landroid/view/View;

    move-result-object v1

    goto :goto_1

    .line 436
    :cond_2
    invoke-virtual {v0}, Lcom/google/ads/ai;->a()V

    .line 437
    const/4 v1, 0x0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    goto :goto_2

    .line 438
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic b(Lcom/google/ads/ab;)Ljava/lang/Thread;
    .locals 1
    .parameter

    .prologue
    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/ab;->d:Ljava/lang/Thread;

    return-object v0
.end method

.method private b()Z
    .locals 2

    .prologue
    .line 106
    iget-object v1, p0, Lcom/google/ads/ab;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/ab;->d:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(Lcom/google/ads/ai;)Z
    .locals 2
    .parameter

    .prologue
    .line 457
    iget-object v1, p0, Lcom/google/ads/ab;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 458
    :try_start_0
    invoke-direct {p0}, Lcom/google/ads/ab;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    invoke-virtual {p1}, Lcom/google/ads/ai;->a()V

    .line 460
    const/4 v0, 0x1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 464
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic c(Lcom/google/ads/ab;)Lcom/google/ads/internal/o;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/ads/ab;->a:Lcom/google/ads/internal/o;

    return-object v0
.end method

.method private c()Z
    .locals 2

    .prologue
    .line 313
    iget-object v1, p0, Lcom/google/ads/ab;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 314
    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/ab;->f:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 315
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 112
    iget-object v1, p0, Lcom/google/ads/ab;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 113
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/ads/ab;->f:Z

    .line 115
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/ab;->a(Lcom/google/ads/ai;)V

    .line 116
    iget-object v2, p0, Lcom/google/ads/ab;->e:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 117
    :try_start_1
    iget-object v0, p0, Lcom/google/ads/ab;->d:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/google/ads/ab;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 120
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    :try_start_2
    monitor-exit v1

    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 121
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/google/ads/ai;)V
    .locals 2
    .parameter

    .prologue
    .line 474
    iget-object v1, p0, Lcom/google/ads/ab;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 475
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/ab;->b:Lcom/google/ads/ai;

    if-eq v0, p1, :cond_1

    .line 476
    iget-object v0, p0, Lcom/google/ads/ab;->b:Lcom/google/ads/ai;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/google/ads/ab;->b:Lcom/google/ads/ai;

    invoke-virtual {v0}, Lcom/google/ads/ai;->a()V

    .line 480
    :cond_0
    iput-object p1, p0, Lcom/google/ads/ab;->b:Lcom/google/ads/ai;

    .line 482
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/google/ads/y;Lcom/google/ads/d;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 126
    iget-object v1, p0, Lcom/google/ads/ab;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 127
    :try_start_0
    invoke-direct {p0}, Lcom/google/ads/ab;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    const-string v0, "Mediation thread is not done executing previous mediation  request. Ignoring new mediation request"

    invoke-static {v0}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V

    .line 130
    monitor-exit v1

    .line 146
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/google/ads/ab;->a:Lcom/google/ads/internal/o;

    invoke-virtual {p1}, Lcom/google/ads/y;->j()Lcom/google/ads/internal/u;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/google/ads/internal/o;->g()Lcom/google/ads/aq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ads/aq;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/google/ads/y;->j()Lcom/google/ads/internal/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/internal/u;->a()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "InterstitialAd received a mediation response corresponding to a non-interstitial ad. Make sure you specify \'interstitial\' as the ad-type in the mediation UI."

    invoke-static {v0}, Lcom/google/ads/util/d;->e(Ljava/lang/String;)V

    .line 136
    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/google/ads/ac;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/ads/ac;-><init>(Lcom/google/ads/ab;Lcom/google/ads/y;Lcom/google/ads/d;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/ads/ab;->d:Ljava/lang/Thread;

    .line 145
    iget-object v0, p0, Lcom/google/ads/ab;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 146
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 134
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/google/ads/internal/o;->g()Lcom/google/ads/aq;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/aq;->i:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/u;

    invoke-virtual {v0}, Lcom/google/ads/internal/u;->b()Lcom/google/ads/g;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/ads/y;->j()Lcom/google/ads/internal/u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ads/internal/u;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AdView received a mediation response corresponding to an interstitial ad. Make sure you specify the banner ad size corresponding to the AdSize you used in your AdView  ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") in the ad-type field in the mediation UI."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/google/ads/y;->j()Lcom/google/ads/internal/u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ads/internal/u;->b()Lcom/google/ads/g;

    move-result-object v2

    if-eq v2, v0, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Mediation server returned ad size: \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', while the AdView was created with ad size: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'. Using the ad-size passed to the AdView on creation."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
