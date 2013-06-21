.class final Lcom/mobclix/android/sdk/ax;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/mobclix/android/sdk/aw;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/aw;)V
    .locals 0

    iput-object p1, p0, Lcom/mobclix/android/sdk/ax;->a:Lcom/mobclix/android/sdk/aw;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    iget-object v0, p0, Lcom/mobclix/android/sdk/ax;->a:Lcom/mobclix/android/sdk/aw;

    invoke-static {v0}, Lcom/mobclix/android/sdk/aw;->a(Lcom/mobclix/android/sdk/aw;)Lcom/mobclix/android/sdk/cq;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mobclix/android/sdk/cq;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mobclix/android/sdk/ax;->a:Lcom/mobclix/android/sdk/aw;

    iget-object v0, v0, Lcom/mobclix/android/sdk/aw;->f:Lcom/mobclix/android/sdk/ar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobclix/android/sdk/ax;->a:Lcom/mobclix/android/sdk/aw;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/aw;->c()Lcom/mobclix/android/sdk/ar;

    move-result-object v0

    iget-object v0, v0, Lcom/mobclix/android/sdk/ar;->d:Lcom/mobclix/android/sdk/bt;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/bt;->sendEmptyMessage(I)Z

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/ax;->a:Lcom/mobclix/android/sdk/aw;

    invoke-static {v0}, Lcom/mobclix/android/sdk/aw;->a(Lcom/mobclix/android/sdk/aw;)Lcom/mobclix/android/sdk/cq;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mobclix/android/sdk/cq;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mobclix/android/sdk/ax;->a:Lcom/mobclix/android/sdk/aw;

    invoke-static {v0}, Lcom/mobclix/android/sdk/aw;->c(Lcom/mobclix/android/sdk/aw;)Lcom/mobclix/android/sdk/cd;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mobclix/android/sdk/ax;->a:Lcom/mobclix/android/sdk/aw;

    invoke-static {v0}, Lcom/mobclix/android/sdk/aw;->c(Lcom/mobclix/android/sdk/aw;)Lcom/mobclix/android/sdk/cd;

    move-result-object v0

    iget-object v1, p0, Lcom/mobclix/android/sdk/ax;->a:Lcom/mobclix/android/sdk/aw;

    invoke-static {v1}, Lcom/mobclix/android/sdk/aw;->a(Lcom/mobclix/android/sdk/aw;)Lcom/mobclix/android/sdk/cq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/cd;->a(Lcom/mobclix/android/sdk/cq;)V

    :cond_1
    iget-object v0, p0, Lcom/mobclix/android/sdk/ax;->a:Lcom/mobclix/android/sdk/aw;

    invoke-static {v0}, Lcom/mobclix/android/sdk/aw;->a(Lcom/mobclix/android/sdk/aw;)Lcom/mobclix/android/sdk/cq;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mobclix/android/sdk/cq;->c:Z

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/mobclix/android/sdk/ax;->a:Lcom/mobclix/android/sdk/aw;

    invoke-static {v1}, Lcom/mobclix/android/sdk/aw;->a(Lcom/mobclix/android/sdk/aw;)Lcom/mobclix/android/sdk/cq;

    move-result-object v1

    iget-boolean v1, v1, Lcom/mobclix/android/sdk/cq;->c:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mobclix/android/sdk/ax;->a:Lcom/mobclix/android/sdk/aw;

    invoke-static {v1}, Lcom/mobclix/android/sdk/aw;->a(Lcom/mobclix/android/sdk/aw;)Lcom/mobclix/android/sdk/cq;

    move-result-object v1

    iget-boolean v1, v1, Lcom/mobclix/android/sdk/cq;->d:Z

    if-nez v1, :cond_0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/mobclix/android/sdk/ax;->a:Lcom/mobclix/android/sdk/aw;

    invoke-static {v1}, Lcom/mobclix/android/sdk/aw;->a(Lcom/mobclix/android/sdk/aw;)Lcom/mobclix/android/sdk/cq;

    move-result-object v1

    iget-boolean v1, v1, Lcom/mobclix/android/sdk/cq;->e:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/mobclix/android/sdk/ax;->a:Lcom/mobclix/android/sdk/aw;

    iget-object v1, v1, Lcom/mobclix/android/sdk/aw;->f:Lcom/mobclix/android/sdk/ar;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mobclix/android/sdk/ax;->a:Lcom/mobclix/android/sdk/aw;

    iget-object v1, v1, Lcom/mobclix/android/sdk/aw;->f:Lcom/mobclix/android/sdk/ar;

    iget-object v1, v1, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/MobclixAdView;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/mobclix/android/sdk/e;->C()Lcom/mobclix/android/sdk/e;

    iget-object v1, p0, Lcom/mobclix/android/sdk/ax;->a:Lcom/mobclix/android/sdk/aw;

    iget-object v1, v1, Lcom/mobclix/android/sdk/aw;->f:Lcom/mobclix/android/sdk/ar;

    iget-object v1, v1, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixAdView;->q:Ljava/lang/String;

    invoke-static {v1}, Lcom/mobclix/android/sdk/e;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/mobclix/android/sdk/ax;->a:Lcom/mobclix/android/sdk/aw;

    iget-object v1, v1, Lcom/mobclix/android/sdk/aw;->f:Lcom/mobclix/android/sdk/ar;

    invoke-static {v1}, Lcom/mobclix/android/sdk/ar;->f(Lcom/mobclix/android/sdk/ar;)V

    sget-object v1, Lcom/mobclix/android/sdk/MobclixAdView;->n:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/mobclix/android/sdk/ax;->a:Lcom/mobclix/android/sdk/aw;

    iget-object v2, v2, Lcom/mobclix/android/sdk/aw;->f:Lcom/mobclix/android/sdk/ar;

    iget-object v2, v2, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixAdView;->q:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mailto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_2
    iget-object v1, p0, Lcom/mobclix/android/sdk/ax;->a:Lcom/mobclix/android/sdk/aw;

    iget-object v1, v1, Lcom/mobclix/android/sdk/aw;->f:Lcom/mobclix/android/sdk/ar;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/mobclix/android/sdk/ax;->a:Lcom/mobclix/android/sdk/aw;

    iget-object v1, v1, Lcom/mobclix/android/sdk/aw;->f:Lcom/mobclix/android/sdk/ar;

    iget-object v1, v1, Lcom/mobclix/android/sdk/ar;->b:Lcom/mobclix/android/sdk/as;

    const-string v2, "null"

    iput-object v2, v1, Lcom/mobclix/android/sdk/as;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/mobclix/android/sdk/ax;->a:Lcom/mobclix/android/sdk/aw;

    iget-object v1, v1, Lcom/mobclix/android/sdk/aw;->f:Lcom/mobclix/android/sdk/ar;

    iget-object v1, v1, Lcom/mobclix/android/sdk/ar;->b:Lcom/mobclix/android/sdk/as;

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/as;->a()Z

    :cond_3
    iget-object v1, p0, Lcom/mobclix/android/sdk/ax;->a:Lcom/mobclix/android/sdk/aw;

    invoke-static {v1}, Lcom/mobclix/android/sdk/aw;->a(Lcom/mobclix/android/sdk/aw;)Lcom/mobclix/android/sdk/cq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/cq;->c()Lcom/mobclix/android/sdk/cf;

    move-result-object v1

    iget-object v1, v1, Lcom/mobclix/android/sdk/cf;->b:Lcom/mobclix/android/sdk/ae;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/mobclix/android/sdk/ax;->a:Lcom/mobclix/android/sdk/aw;

    invoke-static {v1}, Lcom/mobclix/android/sdk/aw;->a(Lcom/mobclix/android/sdk/aw;)Lcom/mobclix/android/sdk/cq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/cq;->c()Lcom/mobclix/android/sdk/cf;

    move-result-object v1

    iget-object v1, v1, Lcom/mobclix/android/sdk/cf;->b:Lcom/mobclix/android/sdk/ae;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/mobclix/android/sdk/ae;->o:Z

    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/ax;->a:Lcom/mobclix/android/sdk/aw;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/aw;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v0, v5

    goto/16 :goto_0

    :cond_5
    move v0, v5

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v0, p0, Lcom/mobclix/android/sdk/ax;->a:Lcom/mobclix/android/sdk/aw;

    iget-object v0, v0, Lcom/mobclix/android/sdk/aw;->f:Lcom/mobclix/android/sdk/ar;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/mobclix/android/sdk/ax;->a:Lcom/mobclix/android/sdk/aw;

    iget-object v0, v0, Lcom/mobclix/android/sdk/aw;->f:Lcom/mobclix/android/sdk/ar;

    iget-object v0, v0, Lcom/mobclix/android/sdk/ar;->b:Lcom/mobclix/android/sdk/as;

    const-string v1, "null"

    iput-object v1, v0, Lcom/mobclix/android/sdk/as;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/mobclix/android/sdk/ax;->a:Lcom/mobclix/android/sdk/aw;

    iget-object v0, v0, Lcom/mobclix/android/sdk/aw;->f:Lcom/mobclix/android/sdk/ar;

    iget-object v0, v0, Lcom/mobclix/android/sdk/ar;->b:Lcom/mobclix/android/sdk/as;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/as;->a()Z

    :cond_7
    iget-object v0, p0, Lcom/mobclix/android/sdk/ax;->a:Lcom/mobclix/android/sdk/aw;

    invoke-static {v0}, Lcom/mobclix/android/sdk/aw;->a(Lcom/mobclix/android/sdk/aw;)Lcom/mobclix/android/sdk/cq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->c()Lcom/mobclix/android/sdk/cf;

    move-result-object v0

    iget-object v0, v0, Lcom/mobclix/android/sdk/cf;->b:Lcom/mobclix/android/sdk/ae;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/mobclix/android/sdk/ax;->a:Lcom/mobclix/android/sdk/aw;

    invoke-static {v0}, Lcom/mobclix/android/sdk/aw;->a(Lcom/mobclix/android/sdk/aw;)Lcom/mobclix/android/sdk/cq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->c()Lcom/mobclix/android/sdk/cf;

    move-result-object v0

    iget-object v0, v0, Lcom/mobclix/android/sdk/cf;->b:Lcom/mobclix/android/sdk/ae;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mobclix/android/sdk/ae;->o:Z

    :cond_8
    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    move v1, v5

    :goto_1
    array-length v3, v0

    if-lt v1, v3, :cond_9

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "body"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\?"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "sms_body"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/mobclix/android/sdk/ax;->a:Lcom/mobclix/android/sdk/aw;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/aw;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v0, v5

    goto/16 :goto_0

    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v0, v1

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_a
    :try_start_1
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "market.android.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "market"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_b
    iget-object v1, p0, Lcom/mobclix/android/sdk/ax;->a:Lcom/mobclix/android/sdk/aw;

    invoke-static {v1}, Lcom/mobclix/android/sdk/aw;->a(Lcom/mobclix/android/sdk/aw;)Lcom/mobclix/android/sdk/cq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/cq;->c()Lcom/mobclix/android/sdk/cf;

    move-result-object v1

    iget-object v1, v1, Lcom/mobclix/android/sdk/cf;->b:Lcom/mobclix/android/sdk/ae;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/mobclix/android/sdk/ax;->a:Lcom/mobclix/android/sdk/aw;

    invoke-static {v1}, Lcom/mobclix/android/sdk/aw;->a(Lcom/mobclix/android/sdk/aw;)Lcom/mobclix/android/sdk/cq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/cq;->c()Lcom/mobclix/android/sdk/cf;

    move-result-object v1

    iget-object v1, v1, Lcom/mobclix/android/sdk/cf;->b:Lcom/mobclix/android/sdk/ae;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/mobclix/android/sdk/ae;->o:Z

    :cond_c
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/mobclix/android/sdk/ax;->a:Lcom/mobclix/android/sdk/aw;

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/aw;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/mobclix/android/sdk/ax;->a:Lcom/mobclix/android/sdk/aw;

    iget-object v1, v1, Lcom/mobclix/android/sdk/aw;->f:Lcom/mobclix/android/sdk/ar;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/mobclix/android/sdk/ax;->a:Lcom/mobclix/android/sdk/aw;

    iget-object v1, v1, Lcom/mobclix/android/sdk/aw;->f:Lcom/mobclix/android/sdk/ar;

    iget-object v1, v1, Lcom/mobclix/android/sdk/ar;->b:Lcom/mobclix/android/sdk/as;

    const-string v2, "null"

    iput-object v2, v1, Lcom/mobclix/android/sdk/as;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/mobclix/android/sdk/ax;->a:Lcom/mobclix/android/sdk/aw;

    iget-object v1, v1, Lcom/mobclix/android/sdk/aw;->f:Lcom/mobclix/android/sdk/ar;

    iget-object v1, v1, Lcom/mobclix/android/sdk/ar;->b:Lcom/mobclix/android/sdk/as;

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/as;->a()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_d
    move v0, v5

    goto/16 :goto_0

    :catch_0
    move-exception v1

    :cond_e
    :try_start_2
    const-string v1, "shouldOpenInNewWindow"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_13

    const-string v1, ""

    :goto_2
    iget-object v2, p0, Lcom/mobclix/android/sdk/ax;->a:Lcom/mobclix/android/sdk/aw;

    invoke-static {v2}, Lcom/mobclix/android/sdk/aw;->a(Lcom/mobclix/android/sdk/aw;)Lcom/mobclix/android/sdk/cq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/cq;->c()Lcom/mobclix/android/sdk/cf;

    move-result-object v2

    iget-object v2, v2, Lcom/mobclix/android/sdk/cf;->b:Lcom/mobclix/android/sdk/ae;

    if-nez v2, :cond_f

    const-string v2, "no"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_f
    const-string v2, "yes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    :cond_10
    iget-object v1, p0, Lcom/mobclix/android/sdk/ax;->a:Lcom/mobclix/android/sdk/aw;

    invoke-static {v1}, Lcom/mobclix/android/sdk/aw;->a(Lcom/mobclix/android/sdk/aw;)Lcom/mobclix/android/sdk/cq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/cq;->c()Lcom/mobclix/android/sdk/cf;

    move-result-object v1

    iget-object v1, v1, Lcom/mobclix/android/sdk/cf;->b:Lcom/mobclix/android/sdk/ae;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/mobclix/android/sdk/ax;->a:Lcom/mobclix/android/sdk/aw;

    invoke-static {v1}, Lcom/mobclix/android/sdk/aw;->a(Lcom/mobclix/android/sdk/aw;)Lcom/mobclix/android/sdk/cq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/cq;->c()Lcom/mobclix/android/sdk/cf;

    move-result-object v1

    iget-object v1, v1, Lcom/mobclix/android/sdk/cf;->b:Lcom/mobclix/android/sdk/ae;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/mobclix/android/sdk/ae;->o:Z

    :cond_11
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/ax;->a:Lcom/mobclix/android/sdk/aw;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/aw;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/ax;->a:Lcom/mobclix/android/sdk/aw;

    iget-object v0, v0, Lcom/mobclix/android/sdk/aw;->f:Lcom/mobclix/android/sdk/ar;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/mobclix/android/sdk/ax;->a:Lcom/mobclix/android/sdk/aw;

    iget-object v0, v0, Lcom/mobclix/android/sdk/aw;->f:Lcom/mobclix/android/sdk/ar;

    iget-object v0, v0, Lcom/mobclix/android/sdk/ar;->b:Lcom/mobclix/android/sdk/as;

    const-string v1, "null"

    iput-object v1, v0, Lcom/mobclix/android/sdk/as;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/mobclix/android/sdk/ax;->a:Lcom/mobclix/android/sdk/aw;

    iget-object v0, v0, Lcom/mobclix/android/sdk/aw;->f:Lcom/mobclix/android/sdk/ar;

    iget-object v0, v0, Lcom/mobclix/android/sdk/ar;->b:Lcom/mobclix/android/sdk/as;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/as;->a()Z

    :cond_12
    :goto_3
    move v0, v5

    goto/16 :goto_0

    :cond_13
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    goto :goto_2

    :catch_1
    move-exception v0

    move v0, v6

    goto/16 :goto_0

    :cond_14
    iget-object v0, p0, Lcom/mobclix/android/sdk/ax;->a:Lcom/mobclix/android/sdk/aw;

    invoke-static {v0}, Lcom/mobclix/android/sdk/aw;->a(Lcom/mobclix/android/sdk/aw;)Lcom/mobclix/android/sdk/cq;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mobclix/android/sdk/cq;->loadUrl(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3
.end method
