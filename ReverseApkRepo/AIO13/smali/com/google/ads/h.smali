.class public Lcom/google/ads/h;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/google/ads/internal/h;

.field private final b:Lcom/google/ads/f;

.field private c:Z

.field private d:Z

.field private e:Lcom/google/ads/g$a;

.field private final f:Lcom/google/ads/e;

.field private g:Lcom/google/ads/mediation/MediationAdapter;

.field private h:Z

.field private i:Z

.field private j:Landroid/view/View;

.field private final k:Landroid/os/Handler;

.field private final l:Ljava/lang/String;

.field private final m:Lcom/google/ads/AdRequest;

.field private final n:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lcom/google/ads/e;Lcom/google/ads/internal/h;Lcom/google/ads/f;Ljava/lang/String;Lcom/google/ads/AdRequest;Ljava/util/HashMap;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/ads/util/a;->b(Z)V

    iput-object p1, p0, Lcom/google/ads/h;->f:Lcom/google/ads/e;

    iput-object p2, p0, Lcom/google/ads/h;->a:Lcom/google/ads/internal/h;

    iput-object p3, p0, Lcom/google/ads/h;->b:Lcom/google/ads/f;

    iput-object p4, p0, Lcom/google/ads/h;->l:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/ads/h;->m:Lcom/google/ads/AdRequest;

    iput-object p6, p0, Lcom/google/ads/h;->n:Ljava/util/HashMap;

    iput-boolean v1, p0, Lcom/google/ads/h;->c:Z

    iput-boolean v1, p0, Lcom/google/ads/h;->d:Z

    iput-object v2, p0, Lcom/google/ads/h;->e:Lcom/google/ads/g$a;

    iput-object v2, p0, Lcom/google/ads/h;->g:Lcom/google/ads/mediation/MediationAdapter;

    iput-boolean v1, p0, Lcom/google/ads/h;->h:Z

    iput-boolean v1, p0, Lcom/google/ads/h;->i:Z

    iput-object v2, p0, Lcom/google/ads/h;->j:Landroid/view/View;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/ads/h;->k:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/google/ads/h;)Lcom/google/ads/mediation/MediationAdapter;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/h;->g:Lcom/google/ads/mediation/MediationAdapter;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/ads/f;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/h;->b:Lcom/google/ads/f;

    return-object v0
.end method

.method public declared-synchronized a(Landroid/app/Activity;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/h;->h:Z

    const-string v1, "startLoadAdTask has already been called."

    invoke-static {v0, v1}, Lcom/google/ads/util/a;->b(ZLjava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/h;->h:Z

    iget-object v6, p0, Lcom/google/ads/h;->k:Landroid/os/Handler;

    new-instance v0, Lcom/google/ads/av;

    iget-object v3, p0, Lcom/google/ads/h;->l:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/ads/h;->m:Lcom/google/ads/AdRequest;

    iget-object v5, p0, Lcom/google/ads/h;->n:Ljava/util/HashMap;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/av;-><init>(Lcom/google/ads/h;Landroid/app/Activity;Ljava/lang/String;Lcom/google/ads/AdRequest;Ljava/util/HashMap;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Landroid/view/View;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/ads/h;->j:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Lcom/google/ads/mediation/MediationAdapter;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/ads/h;->g:Lcom/google/ads/mediation/MediationAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(ZLcom/google/ads/g$a;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/ads/h;->d:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/h;->c:Z

    iput-object p2, p0, Lcom/google/ads/h;->e:Lcom/google/ads/g$a;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/h;->h:Z

    const-string v1, "destroy() called but startLoadAdTask has not been called."

    invoke-static {v0, v1}, Lcom/google/ads/util/a;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/h;->k:Landroid/os/Handler;

    new-instance v1, Lcom/google/ads/at;

    invoke-direct {v1, p0}, Lcom/google/ads/at;-><init>(Lcom/google/ads/h;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/h;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/h;->c:Z

    const-string v1, "isLoadAdTaskSuccessful() called when isLoadAdTaskDone() is false."

    invoke-static {v0, v1}, Lcom/google/ads/util/a;->a(ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/ads/h;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()Lcom/google/ads/g$a;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/h;->e:Lcom/google/ads/g$a;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/ads/g$a;->d:Lcom/google/ads/g$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/ads/h;->e:Lcom/google/ads/g$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()Landroid/view/View;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/h;->c:Z

    const-string v1, "getAdView() called when isLoadAdTaskDone() is false."

    invoke-static {v0, v1}, Lcom/google/ads/util/a;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/h;->j:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/h;->a:Lcom/google/ads/internal/h;

    invoke-virtual {v0}, Lcom/google/ads/internal/h;->a()Z

    move-result v0

    invoke-static {v0}, Lcom/google/ads/util/a;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/google/ads/h;->g:Lcom/google/ads/mediation/MediationAdapter;

    check-cast v0, Lcom/google/ads/mediation/MediationInterstitialAdapter;

    iget-object v1, p0, Lcom/google/ads/h;->k:Landroid/os/Handler;

    new-instance v2, Lcom/google/ads/au;

    invoke-direct {v2, p0, v0}, Lcom/google/ads/au;-><init>(Lcom/google/ads/h;Lcom/google/ads/mediation/MediationInterstitialAdapter;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "In Ambassador.show(): ambassador.adapter does not implement the MediationInterstitialAdapter interface."

    invoke-static {v1, v0}, Lcom/google/ads/util/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized h()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/h;->g:Lcom/google/ads/mediation/MediationAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/h;->g:Lcom/google/ads/mediation/MediationAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    const-string v0, "\"adapter was not created.\""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized i()Lcom/google/ads/mediation/MediationAdapter;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/h;->g:Lcom/google/ads/mediation/MediationAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method j()Lcom/google/ads/e;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/h;->f:Lcom/google/ads/e;

    return-object v0
.end method

.method declared-synchronized k()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/ads/h;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized l()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/h;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
