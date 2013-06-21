.class public Lah;
.super Ljava/lang/Object;


# instance fields
.field private ㅼ꽑嫄:Ljava/lang/Thread;

.field private 弱밧:Ljava/lang/Object;

.field private final 癤욱븳援:Lbg;

.field private 궗:Lao;

.field private 대쫫:Ljava/lang/Object;

.field private 먯꽌:Ljava/lang/Object;

.field private 쇰뒗:Z


# direct methods
.method protected constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lah;->궗:Lao;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lah;->먯꽌:Ljava/lang/Object;

    iput-object v1, p0, Lah;->ㅼ꽑嫄:Ljava/lang/Thread;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lah;->弱밧:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lah;->쇰뒗:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lah;->대쫫:Ljava/lang/Object;

    iput-object v1, p0, Lah;->癤욱븳援:Lbg;

    return-void
.end method

.method public constructor <init>(Lbg;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lah;->궗:Lao;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lah;->먯꽌:Ljava/lang/Object;

    iput-object v1, p0, Lah;->ㅼ꽑嫄:Ljava/lang/Thread;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lah;->弱밧:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lah;->쇰뒗:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lah;->대쫫:Ljava/lang/Object;

    invoke-static {p1}, Lct;->癤욱븳援(Ljava/lang/Object;)V

    iput-object p1, p0, Lah;->癤욱븳援:Lbg;

    return-void
.end method

.method static synthetic 癤욱븳援(Lah;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lah;->弱밧:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic 癤욱븳援(Lah;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lah;->ㅼ꽑嫄:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic 癤욱븳援(Lah;Lad;Li;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lah;->궗(Lad;Li;)V

    return-void
.end method

.method public static 癤욱븳援(Lad;Lbg;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lad;->먯껜蹂대떎()Lbm;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lbg;->洹()Lbw;

    move-result-object v0

    invoke-virtual {v0}, Lbw;->궗()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lad;->먯껜蹂대떎()Lbm;

    move-result-object v0

    invoke-virtual {v0}, Lbm;->癤욱븳援()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "InterstitialAd received a mediation response corresponding to a non-interstitial ad. Make sure you specify \'interstitial\' as the ad-type in the mediation UI."

    invoke-static {v0}, Lcv;->弱밧(Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lbg;->洹()Lbw;

    move-result-object v0

    iget-object v0, v0, Lbw;->몃Ъ:Ldu;

    invoke-virtual {v0}, Ldu;->癤욱븳援()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbm;

    invoke-virtual {v0}, Lbm;->궗()Ll;

    move-result-object v0

    invoke-virtual {p0}, Lad;->먯껜蹂대떎()Lbm;

    move-result-object v3

    invoke-virtual {v3}, Lbm;->癤욱븳援()Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AdView received a mediation response corresponding to an interstitial ad. Make sure you specify the banner ad size corresponding to the AdSize you used in your AdView  ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") in the ad-type field in the mediation UI."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcv;->弱밧(Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lad;->먯껜蹂대떎()Lbm;

    move-result-object v3

    invoke-virtual {v3}, Lbm;->궗()Ll;

    move-result-object v3

    if-eq v3, v0, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mediation server returned ad size: \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

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

    invoke-static {v0}, Lcv;->弱밧(Ljava/lang/String;)V

    move v0, v2

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto/16 :goto_0
.end method

.method static synthetic 癤욱븳援(Lah;Lao;)Z
    .locals 1

    invoke-direct {p0, p1}, Lah;->궗(Lao;)Z

    move-result v0

    return v0
.end method

.method private 癤욱븳援(Ljava/lang/String;Landroid/app/Activity;Li;Lal;Ljava/util/HashMap;J)Z
    .locals 7

    new-instance v0, Lao;

    iget-object v1, p0, Lah;->癤욱븳援:Lbg;

    invoke-virtual {v1}, Lbg;->洹()Lbw;

    move-result-object v1

    iget-object v1, v1, Lbw;->몃Ъ:Ldu;

    invoke-virtual {v1}, Ldu;->癤욱븳援()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbm;

    move-object v1, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lao;-><init>(Lah;Lbm;Lal;Ljava/lang/String;Li;Ljava/util/HashMap;)V

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, p2}, Lao;->癤욱븳援(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lao;->궗()Z

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

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interrupted while waiting for ad network to load ad using adapter class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcv;->癤욱븳援(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lah;->癤욱븳援:Lbg;

    invoke-virtual {v1}, Lbg;->붿슧()Lbl;

    move-result-object v1

    invoke-virtual {v0}, Lao;->ㅼ꽑嫄()Lan;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbl;->癤욱븳援(Lan;)V

    invoke-virtual {v0}, Lao;->궗()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lao;->먯꽌()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lah;->癤욱븳援:Lbg;

    invoke-virtual {v1}, Lbg;->洹()Lbw;

    move-result-object v1

    invoke-virtual {v1}, Lbw;->궗()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lah;->癤욱븳援:Lbg;

    new-instance v3, Lak;

    invoke-direct {v3, p0, v0, v1, p4}, Lak;-><init>(Lah;Lao;Landroid/view/View;Lal;)V

    invoke-virtual {v2, v3}, Lbg;->癤욱븳援(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    monitor-exit v0

    move v0, v1

    :goto_2
    return v0

    :cond_1
    invoke-virtual {v0}, Lao;->弱밧()Landroid/view/View;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lao;->癤욱븳援()V

    const/4 v1, 0x0

    monitor-exit v0

    move v0, v1

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method static synthetic 궗(Lah;)Lbg;
    .locals 1

    iget-object v0, p0, Lah;->癤욱븳援:Lbg;

    return-object v0
.end method

.method private 궗(Lad;Li;)V
    .locals 12

    iget-object v1, p0, Lah;->弱밧:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v2, p0, Lah;->ㅼ꽑嫄:Ljava/lang/Thread;

    invoke-static {v0, v2}, Lct;->癤욱븳援(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lad;->쇰뒗()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lad;->癤욱븳援()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lad;->궗()I

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

    check-cast v2, Lo;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Looking to fetch ads from network: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lo;->궗()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcv;->癤욱븳援(Ljava/lang/String;)V

    invoke-virtual {v2}, Lo;->먯꽌()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v2}, Lo;->ㅼ꽑嫄()Ljava/util/HashMap;

    move-result-object v11

    new-instance v0, Lal;

    invoke-virtual {v2}, Lo;->癤욱븳援()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lo;->궗()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lad;->먯꽌()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lad;->대쫫()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p1}, Lad;->洹()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p1}, Lad;->몃Ъ()Ljava/util/List;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lal;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v1, p0, Lah;->癤욱븳援:Lbg;

    invoke-virtual {v1}, Lbg;->洹()Lbw;

    move-result-object v1

    iget-object v1, v1, Lbw;->먯꽌:Ldw;

    invoke-virtual {v1}, Ldw;->癤욱븳援()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    if-nez v3, :cond_4

    const-string v0, "Activity is null while mediating.  Terminating mediation thread."

    invoke-static {v0}, Lcv;->癤욱븳援(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    const-wide/16 v7, 0x2710

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lah;->癤욱븳援:Lbg;

    invoke-virtual {v1}, Lbg;->붿슧()Lbl;

    move-result-object v1

    invoke-virtual {v1}, Lbl;->먯꽌()V

    move-object v1, p0

    move-object v4, p2

    move-object v5, v0

    move-object v6, v11

    invoke-direct/range {v1 .. v8}, Lah;->癤욱븳援(Ljava/lang/String;Landroid/app/Activity;Li;Lal;Ljava/util/HashMap;J)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lah;->먯꽌()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "GWController.destroy() called. Terminating mediation thread."

    invoke-static {v0}, Lcv;->癤욱븳援(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lah;->癤욱븳援:Lbg;

    new-instance v1, Laj;

    invoke-direct {v1, p0, p1}, Laj;-><init>(Lah;Lad;)V

    invoke-virtual {v0, v1}, Lbg;->癤욱븳援(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method private 궗(Lao;)Z
    .locals 2

    iget-object v1, p0, Lah;->대쫫:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lah;->먯꽌()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lao;->癤욱븳援()V

    const/4 v0, 0x1

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private 먯꽌()Z
    .locals 2

    iget-object v1, p0, Lah;->대쫫:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lah;->쇰뒗:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public 癤욱븳援(Lad;Li;)V
    .locals 3

    iget-object v1, p0, Lah;->弱밧:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lah;->癤욱븳援()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Mediation thread is not done executing previous mediation  request. Ignoring new mediation request"

    invoke-static {v0}, Lcv;->먯꽌(Ljava/lang/String;)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lah;->癤욱븳援:Lbg;

    invoke-static {p1, v0}, Lah;->癤욱븳援(Lad;Lbg;)Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lai;

    invoke-direct {v2, p0, p1, p2}, Lai;-><init>(Lah;Lad;Li;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lah;->ㅼ꽑嫄:Ljava/lang/Thread;

    iget-object v0, p0, Lah;->ㅼ꽑嫄:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public 癤욱븳援(Lao;)V
    .locals 2

    iget-object v1, p0, Lah;->먯꽌:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lah;->궗:Lao;

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lah;->궗:Lao;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lah;->궗:Lao;

    invoke-virtual {v0}, Lao;->癤욱븳援()V

    :cond_0
    iput-object p1, p0, Lah;->궗:Lao;

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public 癤욱븳援()Z
    .locals 2

    iget-object v1, p0, Lah;->弱밧:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lah;->ㅼ꽑嫄:Ljava/lang/Thread;

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

.method public 궗()V
    .locals 3

    iget-object v1, p0, Lah;->대쫫:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lah;->쇰뒗:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lah;->癤욱븳援(Lao;)V

    iget-object v2, p0, Lah;->弱밧:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lah;->ㅼ꽑嫄:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lah;->ㅼ꽑嫄:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method
