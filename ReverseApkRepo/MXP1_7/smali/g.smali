.class public Lg;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public 癤욱븳援(Lbg;Lbh;)V
    .locals 4

    invoke-static {}, Lcom/google/ads/AdActivity;->ㅼ꽑嫄()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/google/ads/AdActivity;->쇰뒗()Lbg;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/google/ads/AdActivity;->궗(Lbg;)Lbg;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lbg;->洹()Lbw;

    move-result-object v0

    iget-object v0, v0, Lbw;->먯꽌:Ldw;

    invoke-virtual {v0}, Ldw;->癤욱븳援()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_2

    const-string v0, "activity was null while launching an AdActivity."

    invoke-static {v0}, Lcv;->弱밧(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/google/ads/AdActivity;->쇰뒗()Lbg;

    move-result-object v0

    if-eq v0, p1, :cond_0

    const-string v0, "Tried to launch a new AdActivity with a different AdManager."

    invoke-static {v0}, Lcv;->궗(Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/google/ads/AdActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.google.ads.AdOpener"

    invoke-virtual {p2}, Lbh;->癤욱븳援()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :try_start_2
    const-string v2, "Launching AdActivity."

    invoke-static {v2}, Lcv;->癤욱븳援(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Activity not found."

    invoke-static {v1, v0}, Lcv;->궗(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public 癤욱븳援()Z
    .locals 2

    invoke-static {}, Lcom/google/ads/AdActivity;->ㅼ꽑嫄()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/google/ads/AdActivity;->弱밧()Lcom/google/ads/AdActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
