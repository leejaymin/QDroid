.class public final Lcom/google/ads/ba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/ar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/util/ac;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 81
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/ads/util/ac;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not parse \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" constant."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static b(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/util/ac;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 94
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, v0}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/google/ads/util/ac;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not parse \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" constant."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static c(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/util/ac;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 106
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 107
    invoke-virtual {p2, v0}, Lcom/google/ads/util/ac;->a(Ljava/lang/Object;)V

    .line 109
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/internal/o;Ljava/util/HashMap;Landroid/webkit/WebView;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 32
    invoke-virtual {p1}, Lcom/google/ads/internal/o;->g()Lcom/google/ads/aq;

    move-result-object v1

    .line 33
    iget-object v0, v1, Lcom/google/ads/aq;->a:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/ao;

    iget-object v0, v0, Lcom/google/ads/ao;->a:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/ap;

    .line 36
    const-string v3, "min_hwa_banner"

    iget-object v4, v0, Lcom/google/ads/ap;->a:Lcom/google/ads/util/ac;

    invoke-static {p2, v3, v4}, Lcom/google/ads/ba;->a(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/util/ac;)V

    .line 37
    const-string v3, "min_hwa_overlay"

    iget-object v4, v0, Lcom/google/ads/ap;->b:Lcom/google/ads/util/ac;

    invoke-static {p2, v3, v4}, Lcom/google/ads/ba;->a(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/util/ac;)V

    .line 38
    const-string v3, "mraid_banner_path"

    iget-object v4, v0, Lcom/google/ads/ap;->c:Lcom/google/ads/util/ac;

    invoke-static {p2, v3, v4}, Lcom/google/ads/ba;->c(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/util/ac;)V

    .line 39
    const-string v3, "mraid_expanded_banner_path"

    iget-object v4, v0, Lcom/google/ads/ap;->d:Lcom/google/ads/util/ac;

    invoke-static {p2, v3, v4}, Lcom/google/ads/ba;->c(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/util/ac;)V

    .line 40
    const-string v3, "mraid_interstitial_path"

    iget-object v4, v0, Lcom/google/ads/ap;->e:Lcom/google/ads/util/ac;

    invoke-static {p2, v3, v4}, Lcom/google/ads/ba;->c(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/util/ac;)V

    .line 41
    const-string v3, "ac_max_size"

    iget-object v4, v0, Lcom/google/ads/ap;->f:Lcom/google/ads/util/ac;

    invoke-static {p2, v3, v4}, Lcom/google/ads/ba;->b(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/util/ac;)V

    .line 42
    const-string v3, "ac_padding"

    iget-object v4, v0, Lcom/google/ads/ap;->g:Lcom/google/ads/util/ac;

    invoke-static {p2, v3, v4}, Lcom/google/ads/ba;->b(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/util/ac;)V

    .line 43
    const-string v3, "ac_total_quota"

    iget-object v4, v0, Lcom/google/ads/ap;->h:Lcom/google/ads/util/ac;

    invoke-static {p2, v3, v4}, Lcom/google/ads/ba;->b(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/util/ac;)V

    .line 44
    const-string v3, "db_total_quota"

    iget-object v4, v0, Lcom/google/ads/ap;->i:Lcom/google/ads/util/ac;

    invoke-static {p2, v3, v4}, Lcom/google/ads/ba;->b(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/util/ac;)V

    .line 45
    const-string v3, "db_quota_per_origin"

    iget-object v4, v0, Lcom/google/ads/ap;->j:Lcom/google/ads/util/ac;

    invoke-static {p2, v3, v4}, Lcom/google/ads/ba;->b(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/util/ac;)V

    .line 46
    const-string v3, "db_quota_step_size"

    iget-object v4, v0, Lcom/google/ads/ap;->k:Lcom/google/ads/util/ac;

    invoke-static {p2, v3, v4}, Lcom/google/ads/ba;->b(Ljava/util/HashMap;Ljava/lang/String;Lcom/google/ads/util/ac;)V

    .line 52
    invoke-virtual {p1}, Lcom/google/ads/internal/o;->j()Lcom/google/ads/internal/AdWebView;

    move-result-object v3

    .line 54
    sget v4, Lcom/google/ads/util/AdUtil;->a:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_0

    .line 55
    invoke-virtual {v3}, Lcom/google/ads/internal/AdWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/google/ads/util/n;->a(Landroid/webkit/WebSettings;Lcom/google/ads/aq;)V

    .line 56
    invoke-virtual {p3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/google/ads/util/n;->a(Landroid/webkit/WebSettings;Lcom/google/ads/aq;)V

    .line 59
    :cond_0
    iget-object v1, v1, Lcom/google/ads/aq;->i:Lcom/google/ads/util/ab;

    invoke-virtual {v1}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/internal/u;

    invoke-virtual {v1}, Lcom/google/ads/internal/u;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 60
    invoke-virtual {v3}, Lcom/google/ads/internal/AdWebView;->e()Z

    move-result v4

    .line 61
    sget v5, Lcom/google/ads/util/AdUtil;->a:I

    iget-object v1, v0, Lcom/google/ads/ap;->a:Lcom/google/ads/util/ac;

    invoke-virtual {v1}, Lcom/google/ads/util/ac;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v5, v1, :cond_2

    move v1, v2

    .line 63
    :goto_0
    if-nez v1, :cond_3

    if-eqz v4, :cond_3

    .line 64
    const-string v1, "Re-enabling hardware acceleration for a banner after reading constants."

    invoke-static {v1}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v3}, Lcom/google/ads/internal/AdWebView;->c()V

    .line 73
    :cond_1
    :goto_1
    iget-object v0, v0, Lcom/google/ads/ap;->l:Lcom/google/ads/util/ac;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/util/ac;->a(Ljava/lang/Object;)V

    .line 74
    return-void

    .line 61
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 66
    :cond_3
    if-eqz v1, :cond_1

    if-nez v4, :cond_1

    .line 67
    const-string v1, "Disabling hardware acceleration for a banner after reading constants."

    invoke-static {v1}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v3}, Lcom/google/ads/internal/AdWebView;->b()V

    goto :goto_1
.end method
