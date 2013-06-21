.class final Lcom/google/ads/ax;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/mediation/MediationBannerListener;


# instance fields
.field private final a:Lcom/google/ads/h;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/google/ads/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/ax;->a:Lcom/google/ads/h;

    return-void
.end method


# virtual methods
.method public final onClick(Lcom/google/ads/mediation/MediationBannerAdapter;)V
    .locals 4

    iget-object v1, p0, Lcom/google/ads/ax;->a:Lcom/google/ads/h;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/ax;->a:Lcom/google/ads/h;

    invoke-virtual {v0}, Lcom/google/ads/h;->c()Z

    move-result v0

    invoke-static {v0}, Lcom/google/ads/util/a;->a(Z)V

    iget-object v0, p0, Lcom/google/ads/ax;->a:Lcom/google/ads/h;

    invoke-virtual {v0}, Lcom/google/ads/h;->j()Lcom/google/ads/e;

    move-result-object v0

    iget-object v2, p0, Lcom/google/ads/ax;->a:Lcom/google/ads/h;

    iget-boolean v3, p0, Lcom/google/ads/ax;->b:Z

    invoke-virtual {v0, v2, v3}, Lcom/google/ads/e;->a(Lcom/google/ads/h;Z)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final onDismissScreen(Lcom/google/ads/mediation/MediationBannerAdapter;)V
    .locals 3

    iget-object v1, p0, Lcom/google/ads/ax;->a:Lcom/google/ads/h;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/ax;->a:Lcom/google/ads/h;

    invoke-virtual {v0}, Lcom/google/ads/h;->j()Lcom/google/ads/e;

    move-result-object v0

    iget-object v2, p0, Lcom/google/ads/ax;->a:Lcom/google/ads/h;

    invoke-virtual {v0, v2}, Lcom/google/ads/e;->b(Lcom/google/ads/h;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final onFailedToReceiveAd(Lcom/google/ads/mediation/MediationBannerAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V
    .locals 4

    iget-object v1, p0, Lcom/google/ads/ax;->a:Lcom/google/ads/h;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/ax;->a:Lcom/google/ads/h;

    invoke-virtual {v0}, Lcom/google/ads/h;->i()Lcom/google/ads/mediation/MediationAdapter;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/ads/util/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Mediation adapter "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " failed to receive ad with error code: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/ax;->a:Lcom/google/ads/h;

    invoke-virtual {v0}, Lcom/google/ads/h;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/google/ads/ax;->a:Lcom/google/ads/h;

    const/4 v3, 0x0

    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->NO_FILL:Lcom/google/ads/AdRequest$ErrorCode;

    if-ne p2, v0, :cond_1

    sget-object v0, Lcom/google/ads/g$a;->b:Lcom/google/ads/g$a;

    :goto_0
    invoke-virtual {v2, v3, v0}, Lcom/google/ads/h;->a(ZLcom/google/ads/g$a;)V

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    sget-object v0, Lcom/google/ads/g$a;->c:Lcom/google/ads/g$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final onLeaveApplication(Lcom/google/ads/mediation/MediationBannerAdapter;)V
    .locals 3

    iget-object v1, p0, Lcom/google/ads/ax;->a:Lcom/google/ads/h;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/ax;->a:Lcom/google/ads/h;

    invoke-virtual {v0}, Lcom/google/ads/h;->j()Lcom/google/ads/e;

    move-result-object v0

    iget-object v2, p0, Lcom/google/ads/ax;->a:Lcom/google/ads/h;

    invoke-virtual {v0, v2}, Lcom/google/ads/e;->c(Lcom/google/ads/h;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final onPresentScreen(Lcom/google/ads/mediation/MediationBannerAdapter;)V
    .locals 3

    iget-object v1, p0, Lcom/google/ads/ax;->a:Lcom/google/ads/h;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/ax;->a:Lcom/google/ads/h;

    invoke-virtual {v0}, Lcom/google/ads/h;->j()Lcom/google/ads/e;

    move-result-object v0

    iget-object v2, p0, Lcom/google/ads/ax;->a:Lcom/google/ads/h;

    invoke-virtual {v0, v2}, Lcom/google/ads/e;->a(Lcom/google/ads/h;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final onReceivedAd(Lcom/google/ads/mediation/MediationBannerAdapter;)V
    .locals 4

    iget-object v1, p0, Lcom/google/ads/ax;->a:Lcom/google/ads/h;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/ax;->a:Lcom/google/ads/h;

    invoke-virtual {v0}, Lcom/google/ads/h;->i()Lcom/google/ads/mediation/MediationAdapter;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/ads/util/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/google/ads/ax;->a:Lcom/google/ads/h;

    invoke-interface {p1}, Lcom/google/ads/mediation/MediationBannerAdapter;->getBannerView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/ads/h;->a(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v0, p0, Lcom/google/ads/ax;->a:Lcom/google/ads/h;

    invoke-virtual {v0}, Lcom/google/ads/h;->c()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/ax;->b:Z

    iget-object v0, p0, Lcom/google/ads/ax;->a:Lcom/google/ads/h;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/ads/g$a;->a:Lcom/google/ads/g$a;

    invoke-virtual {v0, v2, v3}, Lcom/google/ads/h;->a(ZLcom/google/ads/g$a;)V

    monitor-exit v1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error while getting banner View from adapter ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/ads/ax;->a:Lcom/google/ads/h;

    invoke-virtual {v3}, Lcom/google/ads/h;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/ads/util/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/ads/ax;->a:Lcom/google/ads/h;

    invoke-virtual {v0}, Lcom/google/ads/h;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/ax;->a:Lcom/google/ads/h;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/ads/g$a;->f:Lcom/google/ads/g$a;

    invoke-virtual {v0, v2, v3}, Lcom/google/ads/h;->a(ZLcom/google/ads/g$a;)V

    :cond_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lcom/google/ads/ax;->b:Z

    iget-object v0, p0, Lcom/google/ads/ax;->a:Lcom/google/ads/h;

    invoke-virtual {v0}, Lcom/google/ads/h;->j()Lcom/google/ads/e;

    move-result-object v0

    iget-object v2, p0, Lcom/google/ads/ax;->a:Lcom/google/ads/h;

    iget-object v3, p0, Lcom/google/ads/ax;->a:Lcom/google/ads/h;

    invoke-virtual {v3}, Lcom/google/ads/h;->f()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/ads/e;->a(Lcom/google/ads/h;Landroid/view/View;)V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
