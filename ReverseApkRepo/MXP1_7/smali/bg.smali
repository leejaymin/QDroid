.class public Lbg;
.super Ljava/lang/Object;


# static fields
.field private static final 癤욱븳援:Ljava/lang/Object;


# instance fields
.field private ㅼ꽑嫄:Li;

.field private ㅼ꽑嫄곗쓽:Lal;

.field private ㅼ쬆:Ljava/lang/Boolean;

.field private 寃껋씠:Z

.field private 弱밧:Lbl;

.field private 弱방떙:Laf;

.field private 洹:Landroid/os/Handler;

.field private final 궗:Lbw;

.field private 꾨뱾:Z

.field private 대떎:Lah;

.field private 대쫫:Lbn;

.field private 덉쓣:Lr;

.field private 뚮Ц:Z

.field private 뚮벏:Ljava/util/LinkedList;

.field private 뚮젮議뚮떎怨:Landroid/content/SharedPreferences;

.field private 롩퐢:I

.field private 먮:Z

.field private 먯껜蹂대떎:Z

.field private 먯꽌:Laz;

.field private 몃Ъ:J

.field private 붿슧:Z

.field private 쇰뒗:Lcom/google/ads/internal/AdWebView;

.field private 앸ぐ:Ljava/lang/String;

.field private 留먰븷:J

.field private 紐낆옱:Ljava/util/LinkedList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lbg;->癤욱븳援:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lbw;Z)V
    .locals 7

    const-wide/32 v2, 0xea60

    const/4 v1, 0x0

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lbg;->롩퐢:I

    iput-object v6, p0, Lbg;->앸ぐ:Ljava/lang/String;

    iput-object p1, p0, Lbg;->궗:Lbw;

    iput-boolean p2, p0, Lbg;->寃껋씠:Z

    new-instance v0, Lbl;

    invoke-direct {v0}, Lbl;-><init>()V

    iput-object v0, p0, Lbg;->弱밧:Lbl;

    iput-object v6, p0, Lbg;->먯꽌:Laz;

    iput-object v6, p0, Lbg;->ㅼ꽑嫄:Li;

    iput-boolean v1, p0, Lbg;->꾨뱾:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lbg;->洹:Landroid/os/Handler;

    iput-wide v2, p0, Lbg;->留먰븷:J

    iput-boolean v1, p0, Lbg;->뚮Ц:Z

    iput-boolean v1, p0, Lbg;->먮:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbg;->붿슧:Z

    if-eqz p1, :cond_0

    iget-object v0, p1, Lbw;->ㅼ꽑嫄:Ldu;

    invoke-virtual {v0}, Ldu;->癤욱븳援()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lbg;->癤욱븳援:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p1, Lbw;->ㅼ꽑嫄:Ldu;

    invoke-virtual {v0}, Ldu;->癤욱븳援()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v2, "GoogleAdMobAdsPrefs"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lbg;->뚮젮議뚮떎怨:Landroid/content/SharedPreferences;

    if-eqz p2, :cond_3

    iget-object v0, p0, Lbg;->뚮젮議뚮떎怨:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timeout"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lbw;->궗:Ldu;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, -0x1

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    const-wide/16 v2, 0x1388

    iput-wide v2, p0, Lbg;->몃Ъ:J

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lr;

    invoke-direct {v0, p0}, Lr;-><init>(Lbg;)V

    iput-object v0, p0, Lbg;->덉쓣:Lr;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lbg;->뚮벏:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lbg;->紐낆옱:Ljava/util/LinkedList;

    invoke-virtual {p0}, Lbg;->癤욱븳援()V

    iget-object v0, p1, Lbw;->ㅼ꽑嫄:Ldu;

    invoke-virtual {v0}, Ldu;->癤욱븳援()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->洹(Landroid/content/Context;)V

    new-instance v0, Laf;

    invoke-direct {v0}, Laf;-><init>()V

    iput-object v0, p0, Lbg;->弱방떙:Laf;

    new-instance v0, Lah;

    invoke-direct {v0, p0}, Lah;-><init>(Lbg;)V

    iput-object v0, p0, Lbg;->대떎:Lah;

    iput-object v6, p0, Lbg;->ㅼ쬆:Ljava/lang/Boolean;

    iput-object v6, p0, Lbg;->ㅼ꽑嫄곗쓽:Lal;

    goto :goto_0

    :cond_2
    :try_start_1
    iput-wide v2, p0, Lbg;->몃Ъ:J

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    const-wide/32 v2, 0xea60

    :try_start_2
    iput-wide v2, p0, Lbg;->몃Ъ:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private 癤욱븳援(Lal;Ljava/lang/Boolean;)V
    .locals 8

    invoke-virtual {p1}, Lal;->ㅼ꽑嫄()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "http://e.admob.com/imp?ad_loc=@gw_adlocid@&qdata=@gw_qdata@&ad_network_id=@gw_adnetid@&js=@gw_sdkver@&session_id=@gw_sessid@&seq_num=@gw_seqnum@&nr=@gw_adnetrefresh@&adt=@gw_adt@&aec=@gw_aec@"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p1}, Lal;->궗()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lal;->癤욱븳援()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lal;->먯꽌()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lbg;->弱밧:Lbl;

    invoke-virtual {v0}, Lbl;->ㅼ꽑嫄()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lbg;->弱밧:Lbl;

    invoke-virtual {v0}, Lbl;->弱밧()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v7}, Lbg;->癤욱븳援(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private 癤욱븳援(Ljava/util/List;Ljava/lang/String;)V
    .locals 8

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "http://e.admob.com/nofill?ad_loc=@gw_adlocid@&qdata=@gw_qdata@&js=@gw_sdkver@&session_id=@gw_sessid@&seq_num=@gw_seqnum@&adt=@gw_adt@&aec=@gw_aec@"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Lbg;->弱밧:Lbl;

    invoke-virtual {v0}, Lbl;->ㅼ꽑嫄()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lbg;->弱밧:Lbl;

    invoke-virtual {v0}, Lbl;->弱밧()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move-object v3, v2

    move-object v4, p2

    move-object v5, v2

    invoke-direct/range {v0 .. v7}, Lbg;->癤욱븳援(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    move-object v1, p1

    goto :goto_0
.end method

.method private 癤욱븳援(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    iget-object v0, p0, Lbg;->궗:Lbw;

    iget-object v0, v0, Lbw;->ㅼ꽑嫄:Ldu;

    invoke-virtual {v0}, Ldu;->癤욱븳援()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->癤욱븳援(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lac;->癤욱븳援()Lac;

    move-result-object v0

    invoke-virtual {v0}, Lac;->궗()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lac;->먯꽌()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lbg;->궗:Lbw;

    iget-object v1, v1, Lbw;->궗:Ldu;

    invoke-virtual {v1}, Ldu;->癤욱븳援()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v2, p5

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-static/range {v0 .. v10}, Lam;->癤욱븳援(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Lq;

    iget-object v0, p0, Lbg;->궗:Lbw;

    iget-object v0, v0, Lbw;->ㅼ꽑嫄:Ldu;

    invoke-virtual {v0}, Ldu;->癤욱븳援()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v4, v1, v0}, Lq;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lbg;->弱밧:Lbl;

    invoke-virtual {v0}, Lbl;->궗()V

    return-void
.end method


# virtual methods
.method public declared-synchronized ㅼ꽑嫄()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lbg;->붿슧:Z

    const-string v0, "Refreshing is no longer allowed on this AdView."

    invoke-static {v0}, Lcv;->癤욱븳援(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized ㅼ꽑嫄곗쓽()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbg;->ㅼ꽑嫄:Li;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lbg;->궗:Lbw;

    invoke-virtual {v0}, Lbw;->癤욱븳援()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbg;->궗:Lbw;

    iget-object v0, v0, Lbw;->대쫫:Ldu;

    invoke-virtual {v0}, Ldu;->癤욱븳援()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/AdView;

    invoke-virtual {v0}, Lcom/google/ads/AdView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/ads/util/AdUtil;->ㅼ꽑嫄()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Refreshing ad."

    invoke-static {v0}, Lcv;->먯꽌(Ljava/lang/String;)V

    iget-object v0, p0, Lbg;->ㅼ꽑嫄:Li;

    invoke-virtual {p0, v0}, Lbg;->癤욱븳援(Li;)V

    :goto_0
    iget-boolean v0, p0, Lbg;->먮:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lbg;->弱밧()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "Not refreshing because the ad is not visible."

    invoke-static {v0}, Lcv;->癤욱븳援(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lbg;->洹:Landroid/os/Handler;

    iget-object v1, p0, Lbg;->덉쓣:Lr;

    iget-wide v2, p0, Lbg;->留먰븷:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_2
    const-string v0, "Tried to refresh an ad that wasn\'t an AdView."

    invoke-static {v0}, Lcv;->癤욱븳援(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v0, "Tried to refresh before calling loadAd()."

    invoke-static {v0}, Lcv;->癤욱븳援(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized ㅼ쬆()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "onLeaveApplication()"

    invoke-static {v0}, Lcv;->먯꽌(Ljava/lang/String;)V

    iget-object v0, p0, Lbg;->궗:Lbw;

    iget-object v0, v0, Lbw;->꾨뱾:Ldv;

    invoke-virtual {v0}, Ldv;->癤욱븳援()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lbg;->궗:Lbw;

    iget-object v1, v1, Lbw;->쇰뒗:Ldu;

    invoke-virtual {v1}, Ldu;->癤욱븳援()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf;

    invoke-interface {v0, v1}, Lh;->ㅼ꽑嫄(Lf;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized 寃껋씠()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lbg;->꾨뱾:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized 弱밧()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lbg;->뚮Ц:Z

    if-eqz v0, :cond_0

    const-string v0, "Disabling refreshing."

    invoke-static {v0}, Lcv;->癤욱븳援(Ljava/lang/String;)V

    iget-object v0, p0, Lbg;->洹:Landroid/os/Handler;

    iget-object v1, p0, Lbg;->덉쓣:Lr;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbg;->뚮Ц:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "Refreshing is already disabled."

    invoke-static {v0}, Lcv;->癤욱븳援(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public 弱방떙()V
    .locals 1

    iget-object v0, p0, Lbg;->弱밧:Lbl;

    invoke-virtual {v0}, Lbl;->쇰뒗()V

    invoke-virtual {p0}, Lbg;->꾩()V

    return-void
.end method

.method public 洹()Lbw;
    .locals 1

    iget-object v0, p0, Lbg;->궗:Lbw;

    return-object v0
.end method

.method protected declared-synchronized 洹멸()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lbg;->먯꽌:Laz;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbg;->꾨뱾:Z

    iget-object v0, p0, Lbg;->쇰뒗:Lcom/google/ads/internal/AdWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/AdWebView;->setVisibility(I)V

    iget-object v0, p0, Lbg;->궗:Lbw;

    invoke-virtual {v0}, Lbw;->癤욱븳援()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbg;->쇰뒗:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {p0, v0}, Lbg;->癤욱븳援(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lbg;->弱밧:Lbl;

    invoke-virtual {v0}, Lbl;->대쫫()V

    iget-object v0, p0, Lbg;->궗:Lbw;

    invoke-virtual {v0}, Lbw;->癤욱븳援()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lbg;->대떎()V

    :cond_1
    const-string v0, "onReceiveAd()"

    invoke-static {v0}, Lcv;->먯꽌(Ljava/lang/String;)V

    iget-object v0, p0, Lbg;->궗:Lbw;

    iget-object v0, v0, Lbw;->꾨뱾:Ldv;

    invoke-virtual {v0}, Ldv;->癤욱븳援()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lbg;->궗:Lbw;

    iget-object v1, v1, Lbw;->쇰뒗:Ldu;

    invoke-virtual {v1}, Ldu;->癤욱븳援()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf;

    invoke-interface {v0, v1}, Lh;->癤욱븳援(Lf;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized 癤욱븳援()V
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/google/ads/internal/AdWebView;

    iget-object v2, p0, Lbg;->궗:Lbw;

    iget-object v0, p0, Lbg;->궗:Lbw;

    iget-object v0, v0, Lbw;->몃Ъ:Ldu;

    invoke-virtual {v0}, Ldu;->癤욱븳援()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbm;

    invoke-virtual {v0}, Lbm;->궗()Ll;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/ads/internal/AdWebView;-><init>(Lbw;Ll;)V

    iput-object v1, p0, Lbg;->쇰뒗:Lcom/google/ads/internal/AdWebView;

    iget-object v0, p0, Lbg;->쇰뒗:Lcom/google/ads/internal/AdWebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/AdWebView;->setVisibility(I)V

    sget-object v0, Lau;->먯꽌:Ljava/util/Map;

    const/4 v1, 0x1

    iget-object v2, p0, Lbg;->궗:Lbw;

    invoke-virtual {v2}, Lbw;->궗()Z

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lbn;->癤욱븳援(Lbg;Ljava/util/Map;ZZ)Lbn;

    move-result-object v0

    iput-object v0, p0, Lbg;->대쫫:Lbn;

    iget-object v0, p0, Lbg;->쇰뒗:Lcom/google/ads/internal/AdWebView;

    iget-object v1, p0, Lbg;->대쫫:Lbn;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/AdWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lbg;->궗:Lbw;

    iget-object v0, v0, Lbw;->癤욱븳援:Ldu;

    invoke-virtual {v0}, Ldu;->癤욱븳援()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbu;

    iget-object v0, v0, Lbu;->癤욱븳援:Ldu;

    invoke-virtual {v0}, Ldu;->癤욱븳援()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbv;

    sget v1, Lcom/google/ads/util/AdUtil;->癤욱븳援:I

    iget-object v0, v0, Lbv;->癤욱븳援:Ldv;

    invoke-virtual {v0}, Ldv;->癤욱븳援()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lbg;->궗:Lbw;

    iget-object v0, v0, Lbw;->몃Ъ:Ldu;

    invoke-virtual {v0}, Ldu;->癤욱븳援()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbm;

    invoke-virtual {v0}, Lbm;->癤욱븳援()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Disabling hardware acceleration for a banner."

    invoke-static {v0}, Lcv;->癤욱븳援(Ljava/lang/String;)V

    iget-object v0, p0, Lbg;->쇰뒗:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {v0}, Lcom/google/ads/internal/AdWebView;->궗()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized 癤욱븳援(F)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lbg;->留먰븷:J

    const/high16 v2, 0x447a

    mul-float/2addr v2, p1

    float-to-long v2, v2

    iput-wide v2, p0, Lbg;->留먰븷:J

    invoke-virtual {p0}, Lbg;->뚮벏()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lbg;->留먰븷:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbg;->弱밧()V

    invoke-virtual {p0}, Lbg;->쇰뒗()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized 癤욱븳援(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lbg;->롩퐢:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public 癤욱븳援(J)V
    .locals 4

    sget-object v1, Lbg;->癤욱븳援:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lbg;->뚮젮議뚮떎怨:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timeout"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lbg;->궗:Lbw;

    iget-object v3, v3, Lbw;->궗:Ldu;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-boolean v0, p0, Lbg;->寃껋씠:Z

    if-eqz v0, :cond_0

    iput-wide p1, p0, Lbg;->몃Ъ:J

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized 癤욱븳援(Lad;)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lbg;->먯꽌:Laz;

    invoke-virtual {p1}, Lad;->ㅼ꽑嫄()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lad;->弱밧()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lbg;->癤욱븳援(F)V

    iget-boolean v0, p0, Lbg;->뚮Ц:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lbg;->쇰뒗()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lbg;->대떎:Lah;

    iget-object v1, p0, Lbg;->ㅼ꽑嫄:Li;

    invoke-virtual {v0, p1, v1}, Lah;->癤욱븳援(Lad;Li;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lbg;->뚮Ц:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbg;->弱밧()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public 癤욱븳援(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lbg;->궗:Lbw;

    iget-object v0, v0, Lbw;->弱밧:Ldu;

    invoke-virtual {v0}, Ldu;->癤욱븳援()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lbg;->궗:Lbw;

    iget-object v0, v0, Lbw;->弱밧:Ldu;

    invoke-virtual {v0}, Ldu;->癤욱븳援()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public declared-synchronized 癤욱븳援(Landroid/view/View;Lao;Lal;Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "AdManager.onReceiveGWhirlAd() called."

    invoke-static {v0}, Lcv;->癤욱븳援(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbg;->꾨뱾:Z

    iput-object p3, p0, Lbg;->ㅼ꽑嫄곗쓽:Lal;

    iget-object v0, p0, Lbg;->궗:Lbw;

    invoke-virtual {v0}, Lbw;->癤욱븳援()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lbg;->癤욱븳援(Landroid/view/View;)V

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lbg;->癤욱븳援(Lal;Ljava/lang/Boolean;)V

    :cond_0
    iget-object v0, p0, Lbg;->대떎:Lah;

    invoke-virtual {v0, p2}, Lah;->癤욱븳援(Lao;)V

    iget-object v0, p0, Lbg;->궗:Lbw;

    iget-object v0, v0, Lbw;->꾨뱾:Ldv;

    invoke-virtual {v0}, Ldv;->癤욱븳援()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lbg;->궗:Lbw;

    iget-object v1, v1, Lbw;->쇰뒗:Ldu;

    invoke-virtual {v1}, Ldu;->癤욱븳援()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf;

    invoke-interface {v0, v1}, Lh;->癤욱븳援(Lf;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized 癤욱븳援(Li;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lbg;->留먰븷()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "loadAd called while the ad is already loading, so aborting."

    invoke-static {v0}, Lcv;->弱밧(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/google/ads/AdActivity;->먯꽌()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "loadAd called while an interstitial or landing page is displayed, so aborting"

    invoke-static {v0}, Lcv;->弱밧(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lbg;->궗:Lbw;

    iget-object v0, v0, Lbw;->ㅼ꽑嫄:Ldu;

    invoke-virtual {v0}, Ldu;->癤욱븳援()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->먯꽌(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbg;->궗:Lbw;

    iget-object v0, v0, Lbw;->ㅼ꽑嫄:Ldu;

    invoke-virtual {v0}, Ldu;->癤욱븳援()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->궗(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbg;->뚮젮議뚮떎怨:Landroid/content/SharedPreferences;

    const-string v1, "GoogleAdMobDoritosLife"

    const-wide/32 v2, 0xea60

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iget-object v0, p0, Lbg;->궗:Lbw;

    iget-object v0, v0, Lbw;->ㅼ꽑嫄:Ldu;

    invoke-virtual {v0}, Ldu;->癤욱븳援()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lt;->癤욱븳援(Landroid/content/Context;J)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lbg;->궗:Lbw;

    iget-object v0, v0, Lbw;->먯꽌:Ldw;

    invoke-virtual {v0}, Ldw;->癤욱븳援()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lt;->癤욱븳援(Landroid/app/Activity;)V

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbg;->꾨뱾:Z

    iget-object v0, p0, Lbg;->뚮벏:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iput-object p1, p0, Lbg;->ㅼ꽑嫄:Li;

    iget-object v0, p0, Lbg;->弱방떙:Laf;

    invoke-virtual {v0}, Laf;->癤욱븳援()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lbg;->대떎:Lah;

    iget-object v1, p0, Lbg;->弱방떙:Laf;

    invoke-virtual {v1}, Laf;->궗()Lad;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lah;->癤욱븳援(Lad;Li;)V

    goto :goto_0

    :cond_4
    new-instance v0, Laz;

    invoke-direct {v0, p0}, Laz;-><init>(Lbg;)V

    iput-object v0, p0, Lbg;->먯꽌:Laz;

    iget-object v0, p0, Lbg;->먯꽌:Laz;

    invoke-virtual {v0, p1}, Laz;->癤욱븳援(Li;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized 癤욱븳援(Lj;)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lbg;->먯꽌:Laz;

    sget-object v0, Lj;->먯꽌:Lj;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lbg;->붿슧()Lbl;

    move-result-object v0

    invoke-virtual {v0}, Lbl;->덉쓣()V

    const/high16 v0, 0x4270

    invoke-virtual {p0, v0}, Lbg;->癤욱븳援(F)V

    invoke-virtual {p0}, Lbg;->뚮벏()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lbg;->대쫫()V

    :cond_0
    iget-object v0, p0, Lbg;->궗:Lbw;

    invoke-virtual {v0}, Lbw;->궗()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lj;->궗:Lj;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lbg;->弱밧:Lbl;

    invoke-virtual {v0}, Lbl;->ㅼ쬆()V

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFailedToReceiveAd("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcv;->먯꽌(Ljava/lang/String;)V

    iget-object v0, p0, Lbg;->궗:Lbw;

    iget-object v0, v0, Lbw;->꾨뱾:Ldv;

    invoke-virtual {v0}, Ldv;->癤욱븳援()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lbg;->궗:Lbw;

    iget-object v1, v1, Lbw;->쇰뒗:Ldu;

    invoke-virtual {v1}, Ldu;->癤욱븳援()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf;

    invoke-interface {v0, v1, p1}, Lh;->癤욱븳援(Lf;Lj;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    sget-object v0, Lj;->먯꽌:Lj;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lbg;->弱밧:Lbl;

    invoke-virtual {v0}, Lbl;->紐낆옱()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public 癤욱븳援(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lbg;->洹:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public 癤욱븳援(Ljava/lang/String;)V
    .locals 6

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->궗(Landroid/net/Uri;)Ljava/util/HashMap;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbg;->앸ぐ:Ljava/lang/String;

    iget-object v0, p0, Lbg;->앸ぐ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lbg;->앸ぐ:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public declared-synchronized 癤욱븳援(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbg;->궗:Lbw;

    iget-object v0, v0, Lbw;->뚮Ц:Ldv;

    invoke-virtual {v0}, Ldv;->癤욱븳援()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lm;->癤욱븳援(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized 癤욱븳援(Ljava/util/LinkedList;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding a click tracking URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcv;->癤욱븳援(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iput-object p1, p0, Lbg;->紐낆옱:Ljava/util/LinkedList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized 癤욱븳援(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lbg;->먯껜蹂대떎:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized 궗()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbg;->대떎:Lah;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbg;->대떎:Lah;

    invoke-virtual {v0}, Lah;->궗()V

    :cond_0
    iget-object v0, p0, Lbg;->궗:Lbw;

    iget-object v0, v0, Lbw;->꾨뱾:Ldv;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldv;->癤욱븳援(Ljava/lang/Object;)V

    iget-object v0, p0, Lbg;->궗:Lbw;

    iget-object v0, v0, Lbw;->뚮Ц:Ldv;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldv;->癤욱븳援(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lbg;->앸ぐ()V

    iget-object v0, p0, Lbg;->쇰뒗:Lcom/google/ads/internal/AdWebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbg;->쇰뒗:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {v0}, Lcom/google/ads/internal/AdWebView;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized 궗(J)V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lbg;->뚮젮議뚮떎怨:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "GoogleAdMobDoritosLife"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized 궗(Lad;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "AdManager.onGWhirlNoFill() called."

    invoke-static {v0}, Lcv;->癤욱븳援(Ljava/lang/String;)V

    invoke-virtual {p1}, Lad;->몃Ъ()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lad;->먯꽌()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lbg;->癤욱븳援(Ljava/util/List;Ljava/lang/String;)V

    iget-object v0, p0, Lbg;->궗:Lbw;

    iget-object v0, v0, Lbw;->꾨뱾:Ldv;

    invoke-virtual {v0}, Ldv;->癤욱븳援()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lbg;->궗:Lbw;

    iget-object v1, v1, Lbw;->쇰뒗:Ldu;

    invoke-virtual {v1}, Ldu;->癤욱븳援()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf;

    sget-object v2, Lj;->궗:Lj;

    invoke-interface {v0, v1, v2}, Lh;->癤욱븳援(Lf;Lj;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized 궗(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding a tracking URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcv;->癤욱븳援(Ljava/lang/String;)V

    iget-object v0, p0, Lbg;->뚮벏:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public 궗(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lbg;->ㅼ쬆:Ljava/lang/Boolean;

    return-void
.end method

.method public declared-synchronized 꾨뱾()Lcom/google/ads/internal/AdWebView;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbg;->쇰뒗:Lcom/google/ads/internal/AdWebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized 꾩()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbg;->궗:Lbw;

    iget-object v0, v0, Lbw;->먯꽌:Ldw;

    invoke-virtual {v0}, Ldw;->癤욱븳援()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    const-string v0, "activity was null while trying to ping click tracking URLs."

    invoke-static {v0}, Lcv;->弱밧(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lbg;->紐낆옱:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lq;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lq;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized 대떎()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbg;->궗:Lbw;

    iget-object v0, v0, Lbw;->먯꽌:Ldw;

    invoke-virtual {v0}, Ldw;->癤욱븳援()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    const-string v0, "activity was null while trying to ping tracking URLs."

    invoke-static {v0}, Lcv;->弱밧(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lbg;->뚮벏:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lq;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lq;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public 대쫫()V
    .locals 1

    invoke-virtual {p0}, Lbg;->쇰뒗()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbg;->먮:Z

    return-void
.end method

.method public declared-synchronized 덉쓣()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lbg;->먯껜蹂대떎:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized 뚮Ц()Lbn;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbg;->대쫫:Lbn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized 뚮벏()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lbg;->뚮Ц:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public 뚮젮議뚮떎怨()J
    .locals 2

    iget-wide v0, p0, Lbg;->몃Ъ:J

    return-wide v0
.end method

.method public declared-synchronized 롩퐢()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "onPresentScreen()"

    invoke-static {v0}, Lcv;->먯꽌(Ljava/lang/String;)V

    iget-object v0, p0, Lbg;->궗:Lbw;

    iget-object v0, v0, Lbw;->꾨뱾:Ldv;

    invoke-virtual {v0}, Ldv;->癤욱븳援()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lbg;->궗:Lbw;

    iget-object v1, v1, Lbw;->쇰뒗:Ldu;

    invoke-virtual {v1}, Ldu;->癤욱븳援()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf;

    invoke-interface {v0, v1}, Lh;->궗(Lf;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized 먮()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lbg;->롩퐢:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized 먯껜蹂대떎()Laz;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbg;->먯꽌:Laz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public 먯꽌()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbg;->앸ぐ:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized 몃Ъ()Laf;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbg;->弱방떙:Laf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public 붿슧()Lbl;
    .locals 1

    iget-object v0, p0, Lbg;->弱밧:Lbl;

    return-object v0
.end method

.method public declared-synchronized 쇰뒗()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lbg;->먮:Z

    iget-object v0, p0, Lbg;->궗:Lbw;

    invoke-virtual {v0}, Lbw;->癤욱븳援()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lbg;->붿슧:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lbg;->뚮Ц:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enabling refreshing every "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lbg;->留먰븷:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " milliseconds."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcv;->癤욱븳援(Ljava/lang/String;)V

    iget-object v0, p0, Lbg;->洹:Landroid/os/Handler;

    iget-object v1, p0, Lbg;->덉쓣:Lr;

    iget-wide v2, p0, Lbg;->留먰븷:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbg;->뚮Ц:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "Refreshing is already enabled."

    invoke-static {v0}, Lcv;->癤욱븳援(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    const-string v0, "Refreshing disabled on this AdView"

    invoke-static {v0}, Lcv;->癤욱븳援(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "Tried to enable refreshing on something other than an AdView."

    invoke-static {v0}, Lcv;->癤욱븳援(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized 앸ぐ()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbg;->먯꽌:Laz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbg;->먯꽌:Laz;

    invoke-virtual {v0}, Laz;->癤욱븳援()V

    const/4 v0, 0x0

    iput-object v0, p0, Lbg;->먯꽌:Laz;

    :cond_0
    iget-object v0, p0, Lbg;->쇰뒗:Lcom/google/ads/internal/AdWebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbg;->쇰뒗:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {v0}, Lcom/google/ads/internal/AdWebView;->stopLoading()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized 留먰븷()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbg;->먯꽌:Laz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized 紐낆옱()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbg;->弱밧:Lbl;

    invoke-virtual {v0}, Lbl;->弱방떙()V

    const-string v0, "onDismissScreen()"

    invoke-static {v0}, Lcv;->먯꽌(Ljava/lang/String;)V

    iget-object v0, p0, Lbg;->궗:Lbw;

    iget-object v0, v0, Lbw;->꾨뱾:Ldv;

    invoke-virtual {v0}, Ldv;->癤욱븳援()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lbg;->궗:Lbw;

    iget-object v1, v1, Lbw;->쇰뒗:Ldu;

    invoke-virtual {v1}, Ldu;->癤욱븳援()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf;

    invoke-interface {v0, v1}, Lh;->먯꽌(Lf;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
