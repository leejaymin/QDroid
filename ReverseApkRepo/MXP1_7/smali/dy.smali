.class public Ldy;
.super Ljava/lang/Object;

# interfaces
.implements Lci;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private 癤욱븳援(Ljava/util/HashMap;Ljava/lang/String;Ldv;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Ldv;->癤욱븳援(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not parse \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" constant."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcv;->癤욱븳援(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private 궗(Ljava/util/HashMap;Ljava/lang/String;Ldv;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, v0}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ldv;->癤욱븳援(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not parse \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" constant."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcv;->癤욱븳援(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private 먯꽌(Ljava/util/HashMap;Ljava/lang/String;Ldv;)V
    .locals 2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p3, v0}, Ldv;->癤욱븳援(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public 癤욱븳援(Lbg;Ljava/util/HashMap;Landroid/webkit/WebView;)V
    .locals 6

    const/4 v2, 0x1

    invoke-virtual {p1}, Lbg;->洹()Lbw;

    move-result-object v1

    iget-object v0, v1, Lbw;->癤욱븳援:Ldu;

    invoke-virtual {v0}, Ldu;->癤욱븳援()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbu;

    iget-object v0, v0, Lbu;->癤욱븳援:Ldu;

    invoke-virtual {v0}, Ldu;->癤욱븳援()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbv;

    const-string v3, "min_hwa_banner"

    iget-object v4, v0, Lbv;->癤욱븳援:Ldv;

    invoke-direct {p0, p2, v3, v4}, Ldy;->癤욱븳援(Ljava/util/HashMap;Ljava/lang/String;Ldv;)V

    const-string v3, "min_hwa_overlay"

    iget-object v4, v0, Lbv;->궗:Ldv;

    invoke-direct {p0, p2, v3, v4}, Ldy;->癤욱븳援(Ljava/util/HashMap;Ljava/lang/String;Ldv;)V

    const-string v3, "mraid_banner_path"

    iget-object v4, v0, Lbv;->먯꽌:Ldv;

    invoke-direct {p0, p2, v3, v4}, Ldy;->먯꽌(Ljava/util/HashMap;Ljava/lang/String;Ldv;)V

    const-string v3, "mraid_expanded_banner_path"

    iget-object v4, v0, Lbv;->ㅼ꽑嫄:Ldv;

    invoke-direct {p0, p2, v3, v4}, Ldy;->먯꽌(Ljava/util/HashMap;Ljava/lang/String;Ldv;)V

    const-string v3, "mraid_interstitial_path"

    iget-object v4, v0, Lbv;->弱밧:Ldv;

    invoke-direct {p0, p2, v3, v4}, Ldy;->먯꽌(Ljava/util/HashMap;Ljava/lang/String;Ldv;)V

    const-string v3, "ac_max_size"

    iget-object v4, v0, Lbv;->쇰뒗:Ldv;

    invoke-direct {p0, p2, v3, v4}, Ldy;->궗(Ljava/util/HashMap;Ljava/lang/String;Ldv;)V

    const-string v3, "ac_padding"

    iget-object v4, v0, Lbv;->대쫫:Ldv;

    invoke-direct {p0, p2, v3, v4}, Ldy;->궗(Ljava/util/HashMap;Ljava/lang/String;Ldv;)V

    const-string v3, "ac_total_quota"

    iget-object v4, v0, Lbv;->洹:Ldv;

    invoke-direct {p0, p2, v3, v4}, Ldy;->궗(Ljava/util/HashMap;Ljava/lang/String;Ldv;)V

    const-string v3, "db_total_quota"

    iget-object v4, v0, Lbv;->몃Ъ:Ldv;

    invoke-direct {p0, p2, v3, v4}, Ldy;->궗(Ljava/util/HashMap;Ljava/lang/String;Ldv;)V

    const-string v3, "db_quota_per_origin"

    iget-object v4, v0, Lbv;->먯껜蹂대떎:Ldv;

    invoke-direct {p0, p2, v3, v4}, Ldy;->궗(Ljava/util/HashMap;Ljava/lang/String;Ldv;)V

    const-string v3, "db_quota_step_size"

    iget-object v4, v0, Lbv;->꾨뱾:Ldv;

    invoke-direct {p0, p2, v3, v4}, Ldy;->궗(Ljava/util/HashMap;Ljava/lang/String;Ldv;)V

    invoke-virtual {p1}, Lbg;->꾨뱾()Lcom/google/ads/internal/AdWebView;

    move-result-object v3

    sget v4, Lcom/google/ads/util/AdUtil;->癤욱븳援:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_0

    invoke-virtual {v3}, Lcom/google/ads/internal/AdWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-static {v4, v1}, Ldf;->癤욱븳援(Landroid/webkit/WebSettings;Lbw;)V

    invoke-virtual {p3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-static {v4, v1}, Ldf;->癤욱븳援(Landroid/webkit/WebSettings;Lbw;)V

    :cond_0
    iget-object v1, v1, Lbw;->몃Ъ:Ldu;

    invoke-virtual {v1}, Ldu;->癤욱븳援()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbm;

    invoke-virtual {v1}, Lbm;->癤욱븳援()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v3}, Lcom/google/ads/internal/AdWebView;->弱밧()Z

    move-result v4

    sget v5, Lcom/google/ads/util/AdUtil;->癤욱븳援:I

    iget-object v1, v0, Lbv;->癤욱븳援:Ldv;

    invoke-virtual {v1}, Ldv;->癤욱븳援()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v5, v1, :cond_2

    move v1, v2

    :goto_0
    if-nez v1, :cond_3

    if-eqz v4, :cond_3

    const-string v1, "Re-enabling hardware acceleration for a banner after reading constants."

    invoke-static {v1}, Lcv;->癤욱븳援(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/ads/internal/AdWebView;->먯꽌()V

    :cond_1
    :goto_1
    iget-object v0, v0, Lbv;->뚮Ц:Ldv;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldv;->癤욱븳援(Ljava/lang/Object;)V

    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_1

    if-nez v4, :cond_1

    const-string v1, "Disabling hardware acceleration for a banner after reading constants."

    invoke-static {v1}, Lcv;->癤욱븳援(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/ads/internal/AdWebView;->궗()V

    goto :goto_1
.end method
