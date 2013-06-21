.class public Lcom/google/ads/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/ads/internal/d;

.field private b:Lcom/google/ads/h;

.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/Thread;

.field private e:Ljava/lang/Object;

.field private f:Z

.field private g:Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/ads/e;->b:Lcom/google/ads/h;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/ads/e;->c:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/ads/e;->d:Ljava/lang/Thread;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/ads/e;->e:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/e;->f:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/ads/e;->g:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/ads/e;->a:Lcom/google/ads/internal/d;

    return-void
.end method

.method public constructor <init>(Lcom/google/ads/internal/d;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/ads/e;->b:Lcom/google/ads/h;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/ads/e;->c:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/ads/e;->d:Ljava/lang/Thread;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/ads/e;->e:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/e;->f:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/ads/e;->g:Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/ads/util/a;->b(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/ads/e;->a:Lcom/google/ads/internal/d;

    return-void
.end method

.method static synthetic a(Lcom/google/ads/e;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/e;->e:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/google/ads/e;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lcom/google/ads/e;->d:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic a(Lcom/google/ads/e;Lcom/google/ads/c;Lcom/google/ads/AdRequest;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/ads/e;->b(Lcom/google/ads/c;Lcom/google/ads/AdRequest;)V

    return-void
.end method

.method public static a(Lcom/google/ads/c;Lcom/google/ads/internal/d;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/ads/c;->j()Lcom/google/ads/internal/h;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/ads/internal/d;->h()Lcom/google/ads/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/m;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/ads/c;->j()Lcom/google/ads/internal/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/internal/h;->a()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "InterstitialAd received a mediation response corresponding to a non-interstitial ad. Make sure you specify \'interstitial\' as the ad-type in the mediation UI."

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/ads/internal/d;->h()Lcom/google/ads/m;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/m;->i:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/h;

    invoke-virtual {v0}, Lcom/google/ads/internal/h;->b()Lcom/google/ads/AdSize;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/ads/c;->j()Lcom/google/ads/internal/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/ads/internal/h;->a()Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "AdView received a mediation response corresponding to an interstitial ad. Make sure you specify the banner ad size corresponding to the AdSize you used in your AdView  ("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") in the ad-type field in the mediation UI."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/ads/c;->j()Lcom/google/ads/internal/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/ads/internal/h;->b()Lcom/google/ads/AdSize;

    move-result-object v3

    if-eq v3, v0, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Mediation server returned ad size: \'"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\', while the AdView was created with ad size: \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'. Using the ad-size passed to the AdView on creation."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v1

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/google/ads/e;Lcom/google/ads/h;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/ads/e;->e(Lcom/google/ads/h;)Z

    move-result v0

    return v0
.end method

.method private a(Lcom/google/ads/h;Ljava/lang/String;)Z
    .locals 2

    invoke-direct {p0}, Lcom/google/ads/e;->e()Lcom/google/ads/h;

    move-result-object v0

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GWController: ignoring callback to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from non showing ambassador with adapter class: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/ads/h;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Landroid/app/Activity;Lcom/google/ads/AdRequest;Lcom/google/ads/f;Ljava/util/HashMap;J)Z
    .locals 7

    new-instance v0, Lcom/google/ads/h;

    iget-object v1, p0, Lcom/google/ads/e;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v1}, Lcom/google/ads/internal/d;->h()Lcom/google/ads/m;

    move-result-object v1

    iget-object v1, v1, Lcom/google/ads/m;->i:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/internal/h;

    move-object v1, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/ads/h;-><init>(Lcom/google/ads/e;Lcom/google/ads/internal/h;Lcom/google/ads/f;Ljava/lang/String;Lcom/google/ads/AdRequest;Ljava/util/HashMap;)V

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, p2}, Lcom/google/ads/h;->a(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lcom/google/ads/h;->c()Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v1, p6, v1

    if-lez v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, p6, p7}, Ljava/lang/Object;->wait(J)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v3

    sub-long v1, v3, v1

    sub-long/2addr p6, v1

    goto :goto_0

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

    invoke-static {v1}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/google/ads/e;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v1}, Lcom/google/ads/internal/d;->m()Lcom/google/ads/internal/g;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/ads/h;->e()Lcom/google/ads/g$a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/ads/internal/g;->a(Lcom/google/ads/g$a;)V

    invoke-virtual {v0}, Lcom/google/ads/h;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/ads/h;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/ads/e;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v1}, Lcom/google/ads/internal/d;->h()Lcom/google/ads/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/m;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/google/ads/e;->a:Lcom/google/ads/internal/d;

    new-instance v3, Lcom/google/ads/as;

    invoke-direct {v3, p0, v0, v1, p4}, Lcom/google/ads/as;-><init>(Lcom/google/ads/e;Lcom/google/ads/h;Landroid/view/View;Lcom/google/ads/f;)V

    invoke-virtual {v2, v3}, Lcom/google/ads/internal/d;->a(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    monitor-exit v0

    move v0, v1

    :goto_2
    return v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/ads/h;->f()Landroid/view/View;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/google/ads/h;->b()V

    const/4 v1, 0x0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic b(Lcom/google/ads/e;)Lcom/google/ads/internal/d;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/e;->a:Lcom/google/ads/internal/d;

    return-object v0
.end method

.method private b(Lcom/google/ads/c;Lcom/google/ads/AdRequest;)V
    .locals 12

    iget-object v1, p0, Lcom/google/ads/e;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v2, p0, Lcom/google/ads/e;->d:Ljava/lang/Thread;

    invoke-static {v0, v2}, Lcom/google/ads/util/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lcom/google/ads/c;->f()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/ads/c;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/google/ads/c;->b()I

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

    check-cast v2, Lcom/google/ads/a;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Looking to fetch ads from network: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/ads/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/ads/a;->c()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v2}, Lcom/google/ads/a;->d()Ljava/util/HashMap;

    move-result-object v11

    new-instance v0, Lcom/google/ads/f;

    invoke-virtual {v2}, Lcom/google/ads/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/google/ads/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/ads/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/ads/c;->g()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/ads/c;->h()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/ads/c;->i()Ljava/util/List;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/ads/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/ads/e;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v1}, Lcom/google/ads/internal/d;->h()Lcom/google/ads/m;

    move-result-object v1

    iget-object v1, v1, Lcom/google/ads/m;->c:Lcom/google/ads/util/i$d;

    invoke-virtual {v1}, Lcom/google/ads/util/i$d;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    if-nez v3, :cond_4

    const-string v0, "Activity is null while mediating.  Terminating mediation thread."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

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
    iget-object v1, p0, Lcom/google/ads/e;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v1}, Lcom/google/ads/internal/d;->m()Lcom/google/ads/internal/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/internal/g;->c()V

    move-object v1, p0

    move-object v4, p2

    move-object v5, v0

    move-object v6, v11

    invoke-direct/range {v1 .. v8}, Lcom/google/ads/e;->a(Ljava/lang/String;Landroid/app/Activity;Lcom/google/ads/AdRequest;Lcom/google/ads/f;Ljava/util/HashMap;J)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/google/ads/e;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "GWController.destroy() called. Terminating mediation thread."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/google/ads/e;->a:Lcom/google/ads/internal/d;

    new-instance v1, Lcom/google/ads/ar;

    invoke-direct {v1, p0, p1}, Lcom/google/ads/ar;-><init>(Lcom/google/ads/e;Lcom/google/ads/c;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/d;->a(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method static synthetic c(Lcom/google/ads/e;)Lcom/google/ads/h;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/e;->b:Lcom/google/ads/h;

    return-object v0
.end method

.method private d()Z
    .locals 2

    iget-object v1, p0, Lcom/google/ads/e;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/e;->f:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private e()Lcom/google/ads/h;
    .locals 2

    iget-object v1, p0, Lcom/google/ads/e;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/e;->b:Lcom/google/ads/h;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private e(Lcom/google/ads/h;)Z
    .locals 2

    iget-object v1, p0, Lcom/google/ads/e;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/google/ads/e;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/ads/h;->b()V

    const/4 v0, 0x1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Lcom/google/ads/c;Lcom/google/ads/AdRequest;)V
    .locals 3

    iget-object v1, p0, Lcom/google/ads/e;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/ads/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Mediation thread is not done executing previous mediation  request. Ignoring new mediation request"

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/ads/e;->a:Lcom/google/ads/internal/d;

    invoke-static {p1, v0}, Lcom/google/ads/e;->a(Lcom/google/ads/c;Lcom/google/ads/internal/d;)Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/google/ads/al;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/ads/al;-><init>(Lcom/google/ads/e;Lcom/google/ads/c;Lcom/google/ads/AdRequest;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/ads/e;->d:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/google/ads/e;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public a(Lcom/google/ads/h;)V
    .locals 2

    const-string v0, "onPresentScreen"

    invoke-direct {p0, p1, v0}, Lcom/google/ads/e;->a(Lcom/google/ads/h;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/ads/e;->a:Lcom/google/ads/internal/d;

    new-instance v1, Lcom/google/ads/ao;

    invoke-direct {v1, p0}, Lcom/google/ads/ao;-><init>(Lcom/google/ads/e;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/d;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Lcom/google/ads/h;Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/ads/e;->e()Lcom/google/ads/h;

    move-result-object v0

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GWController: ignoring onAdRefreshed() callback from non-showing ambassador (adapter class name is \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/ads/h;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/ads/e;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->m()Lcom/google/ads/internal/g;

    move-result-object v0

    sget-object v1, Lcom/google/ads/g$a;->a:Lcom/google/ads/g$a;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/g;->a(Lcom/google/ads/g$a;)V

    iget-object v0, p0, Lcom/google/ads/e;->b:Lcom/google/ads/h;

    invoke-virtual {v0}, Lcom/google/ads/h;->a()Lcom/google/ads/f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/e;->a:Lcom/google/ads/internal/d;

    new-instance v2, Lcom/google/ads/an;

    invoke-direct {v2, p0, p2, v0}, Lcom/google/ads/an;-><init>(Lcom/google/ads/e;Landroid/view/View;Lcom/google/ads/f;)V

    invoke-virtual {v1, v2}, Lcom/google/ads/internal/d;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Lcom/google/ads/h;Z)V
    .locals 3

    const-string v0, "onAdClicked()"

    invoke-direct {p0, p1, v0}, Lcom/google/ads/e;->a(Lcom/google/ads/h;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/ads/h;->a()Lcom/google/ads/f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/e;->a:Lcom/google/ads/internal/d;

    new-instance v2, Lcom/google/ads/am;

    invoke-direct {v2, p0, v0, p2}, Lcom/google/ads/am;-><init>(Lcom/google/ads/e;Lcom/google/ads/f;Z)V

    invoke-virtual {v1, v2}, Lcom/google/ads/internal/d;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 2

    iget-object v1, p0, Lcom/google/ads/e;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/e;->d:Ljava/lang/Thread;

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

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public b()V
    .locals 3

    iget-object v1, p0, Lcom/google/ads/e;->g:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/ads/e;->f:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/e;->d(Lcom/google/ads/h;)V

    iget-object v2, p0, Lcom/google/ads/e;->e:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/google/ads/e;->d:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/e;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public b(Lcom/google/ads/h;)V
    .locals 2

    const-string v0, "onDismissScreen"

    invoke-direct {p0, p1, v0}, Lcom/google/ads/e;->a(Lcom/google/ads/h;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/ads/e;->a:Lcom/google/ads/internal/d;

    new-instance v1, Lcom/google/ads/ap;

    invoke-direct {v1, p0}, Lcom/google/ads/ap;-><init>(Lcom/google/ads/e;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/d;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public c(Lcom/google/ads/h;)V
    .locals 2

    const-string v0, "onLeaveApplication"

    invoke-direct {p0, p1, v0}, Lcom/google/ads/e;->a(Lcom/google/ads/h;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/ads/e;->a:Lcom/google/ads/internal/d;

    new-instance v1, Lcom/google/ads/aq;

    invoke-direct {v1, p0}, Lcom/google/ads/aq;-><init>(Lcom/google/ads/e;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/d;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/e;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->h()Lcom/google/ads/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/m;->b()Z

    move-result v0

    invoke-static {v0}, Lcom/google/ads/util/a;->a(Z)V

    invoke-direct {p0}, Lcom/google/ads/e;->e()Lcom/google/ads/h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/ads/h;->g()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "There is no ad ready to show."

    invoke-static {v0}, Lcom/google/ads/util/b;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Lcom/google/ads/h;)V
    .locals 2

    iget-object v1, p0, Lcom/google/ads/e;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/e;->b:Lcom/google/ads/h;

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/google/ads/e;->b:Lcom/google/ads/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/e;->b:Lcom/google/ads/h;

    invoke-virtual {v0}, Lcom/google/ads/h;->b()V

    :cond_0
    iput-object p1, p0, Lcom/google/ads/e;->b:Lcom/google/ads/h;

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
