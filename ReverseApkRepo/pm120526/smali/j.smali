.class public final Lj;
.super Landroid/webkit/WebViewClient;


# instance fields
.field private a:Lf;

.field private b:Ljava/util/Map;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Lf;Ljava/util/Map;ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    iput-object p1, p0, Lj;->a:Lf;

    iput-object p2, p0, Lj;->b:Ljava/util/Map;

    iput-boolean p3, p0, Lj;->c:Z

    iput-boolean p4, p0, Lj;->d:Z

    iput-boolean v0, p0, Lj;->e:Z

    iput-boolean v0, p0, Lj;->f:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj;->e:Z

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj;->f:Z

    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lj;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj;->a:Lf;

    invoke-virtual {v0}, Lf;->g()Lc;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lc;->a()V

    :goto_0
    iput-boolean v1, p0, Lj;->e:Z

    :cond_0
    iget-boolean v0, p0, Lj;->f:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, La;->a(Landroid/webkit/WebView;)V

    iput-boolean v1, p0, Lj;->f:Z

    :cond_1
    return-void

    :cond_2
    const-string v0, "adLoader was null while trying to setFinishedLoadingHtml()."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "shouldOverrideUrlLoading(\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, La;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj;->a:Lf;

    iget-object v2, p0, Lj;->b:Ljava/util/Map;

    invoke-static {v0, v2, v1, p1}, La;->a(Lf;Ljava/util/Map;Landroid/net/Uri;Landroid/webkit/WebView;)V

    move v0, v4

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lj;->d:Z

    if-eqz v0, :cond_2

    invoke-static {v1}, Lcom/google/ads/util/AdUtil;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "u"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lj;->a:Lf;

    new-instance v2, Lh;

    const-string v3, "intent"

    invoke-direct {v2, v3, v0}, Lh;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-static {v1, v2}, Lcom/google/ads/AdActivity;->a(Lf;Lh;)V

    move v0, v4

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lj;->c:Z

    if-eqz v0, :cond_5

    invoke-static {v1}, Lcom/google/ads/util/AdUtil;->b(Landroid/net/Uri;)Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "An error occurred while parsing the url parameters."

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    move v0, v4

    goto :goto_0

    :cond_3
    const-string v2, "ai"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lj;->a:Lf;

    invoke-virtual {v2}, Lf;->l()Li;

    move-result-object v2

    invoke-virtual {v2, v0}, Li;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lj;->a:Lf;

    invoke-virtual {v0}, Lf;->t()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v1}, Lcom/google/ads/util/AdUtil;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "webapp"

    :goto_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "u"

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lj;->a:Lf;

    new-instance v3, Lh;

    invoke-direct {v3, v0, v2}, Lh;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-static {v1, v3}, Lcom/google/ads/AdActivity;->a(Lf;Lh;)V

    move v0, v4

    goto :goto_0

    :cond_4
    const-string v0, "intent"

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "URL is not a GMSG and can\'t handle URL: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    move v0, v4

    goto/16 :goto_0
.end method