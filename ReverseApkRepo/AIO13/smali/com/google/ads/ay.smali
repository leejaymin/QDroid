.class final Lcom/google/ads/ay;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/mediation/MediationInterstitialListener;


# instance fields
.field private final a:Lcom/google/ads/h;


# direct methods
.method constructor <init>(Lcom/google/ads/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/ay;->a:Lcom/google/ads/h;

    return-void
.end method


# virtual methods
.method public final onDismissScreen(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V
    .locals 3

    iget-object v1, p0, Lcom/google/ads/ay;->a:Lcom/google/ads/h;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/ay;->a:Lcom/google/ads/h;

    invoke-virtual {v0}, Lcom/google/ads/h;->j()Lcom/google/ads/e;

    move-result-object v0

    iget-object v2, p0, Lcom/google/ads/ay;->a:Lcom/google/ads/h;

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

.method public final onFailedToReceiveAd(Lcom/google/ads/mediation/MediationInterstitialAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V
    .locals 4

    iget-object v1, p0, Lcom/google/ads/ay;->a:Lcom/google/ads/h;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/ay;->a:Lcom/google/ads/h;

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

    iget-object v0, p0, Lcom/google/ads/ay;->a:Lcom/google/ads/h;

    invoke-virtual {v0}, Lcom/google/ads/h;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Got an onFailedToReceiveAd() callback after loadAdTask is done from an interstitial adapter.  Ignoring callback."

    invoke-static {v0}, Lcom/google/ads/util/b;->b(Ljava/lang/String;)V

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/ads/ay;->a:Lcom/google/ads/h;

    const/4 v3, 0x0

    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->NO_FILL:Lcom/google/ads/AdRequest$ErrorCode;

    if-ne p2, v0, :cond_1

    sget-object v0, Lcom/google/ads/g$a;->b:Lcom/google/ads/g$a;

    :goto_1
    invoke-virtual {v2, v3, v0}, Lcom/google/ads/h;->a(ZLcom/google/ads/g$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_1
    sget-object v0, Lcom/google/ads/g$a;->c:Lcom/google/ads/g$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public final onLeaveApplication(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V
    .locals 3

    iget-object v1, p0, Lcom/google/ads/ay;->a:Lcom/google/ads/h;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/ay;->a:Lcom/google/ads/h;

    invoke-virtual {v0}, Lcom/google/ads/h;->j()Lcom/google/ads/e;

    move-result-object v0

    iget-object v2, p0, Lcom/google/ads/ay;->a:Lcom/google/ads/h;

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

.method public final onPresentScreen(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V
    .locals 3

    iget-object v1, p0, Lcom/google/ads/ay;->a:Lcom/google/ads/h;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/ay;->a:Lcom/google/ads/h;

    invoke-virtual {v0}, Lcom/google/ads/h;->j()Lcom/google/ads/e;

    move-result-object v0

    iget-object v2, p0, Lcom/google/ads/ay;->a:Lcom/google/ads/h;

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

.method public final onReceivedAd(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V
    .locals 4

    iget-object v1, p0, Lcom/google/ads/ay;->a:Lcom/google/ads/h;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/ay;->a:Lcom/google/ads/h;

    invoke-virtual {v0}, Lcom/google/ads/h;->i()Lcom/google/ads/mediation/MediationAdapter;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/ads/util/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/ads/ay;->a:Lcom/google/ads/h;

    invoke-virtual {v0}, Lcom/google/ads/h;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Got an onReceivedAd() callback after loadAdTask is done from an interstitial adapter. Ignoring callback."

    invoke-static {v0}, Lcom/google/ads/util/b;->b(Ljava/lang/String;)V

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/ads/ay;->a:Lcom/google/ads/h;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/ads/g$a;->a:Lcom/google/ads/g$a;

    invoke-virtual {v0, v2, v3}, Lcom/google/ads/h;->a(ZLcom/google/ads/g$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
