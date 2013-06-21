.class public Lcom/google/ads/internal/i;
.super Landroid/webkit/WebViewClient;


# static fields
.field private static final c:Lcom/google/ads/internal/a;


# instance fields
.field protected a:Lcom/google/ads/internal/d;

.field protected b:Z

.field private d:Ljava/util/Map;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/ads/internal/a;->a:Lcom/google/ads/util/f;

    invoke-interface {v0}, Lcom/google/ads/util/f;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/a;

    sput-object v0, Lcom/google/ads/internal/i;->c:Lcom/google/ads/internal/a;

    return-void
.end method

.method protected constructor <init>(Lcom/google/ads/internal/d;Ljava/util/Map;ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    iput-object p1, p0, Lcom/google/ads/internal/i;->a:Lcom/google/ads/internal/d;

    iput-object p2, p0, Lcom/google/ads/internal/i;->d:Ljava/util/Map;

    iput-boolean p3, p0, Lcom/google/ads/internal/i;->e:Z

    iput-boolean p4, p0, Lcom/google/ads/internal/i;->f:Z

    iput-boolean v0, p0, Lcom/google/ads/internal/i;->b:Z

    iput-boolean v0, p0, Lcom/google/ads/internal/i;->g:Z

    iput-boolean v0, p0, Lcom/google/ads/internal/i;->h:Z

    return-void
.end method

.method public static a(Lcom/google/ads/internal/d;Ljava/util/Map;ZZ)Lcom/google/ads/internal/i;
    .locals 2

    sget v0, Lcom/google/ads/util/AdUtil;->a:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/google/ads/util/g$b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/ads/util/g$b;-><init>(Lcom/google/ads/internal/d;Ljava/util/Map;ZZ)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/ads/internal/i;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/ads/internal/i;-><init>(Lcom/google/ads/internal/d;Ljava/util/Map;ZZ)V

    goto :goto_0
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/ads/internal/i;->b:Z

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/ads/internal/i;->f:Z

    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/ads/internal/i;->g:Z

    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/ads/internal/i;->h:Z

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/ads/internal/i;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/internal/i;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->j()Lcom/google/ads/internal/c;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/ads/internal/c;->c()V

    :goto_0
    iput-boolean v1, p0, Lcom/google/ads/internal/i;->g:Z

    :cond_0
    iget-boolean v0, p0, Lcom/google/ads/internal/i;->h:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/ads/internal/i;->c:Lcom/google/ads/internal/a;

    invoke-virtual {v0, p1}, Lcom/google/ads/internal/a;->a(Landroid/webkit/WebView;)V

    iput-boolean v1, p0, Lcom/google/ads/internal/i;->h:Z

    :cond_1
    return-void

    :cond_2
    const-string v0, "adLoader was null while trying to setFinishedLoadingHtml()."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "shouldOverrideUrlLoading(\""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/google/ads/util/AdUtil;->b(Landroid/net/Uri;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, "ai"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/google/ads/internal/i;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v3}, Lcom/google/ads/internal/d;->m()Lcom/google/ads/internal/g;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/ads/internal/g;->a(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/google/ads/internal/i;->c:Lcom/google/ads/internal/a;

    invoke-virtual {v0, v2}, Lcom/google/ads/internal/a;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/ads/internal/i;->c:Lcom/google/ads/internal/a;

    iget-object v3, p0, Lcom/google/ads/internal/i;->a:Lcom/google/ads/internal/d;

    iget-object v4, p0, Lcom/google/ads/internal/i;->d:Ljava/util/Map;

    invoke-virtual {v0, v3, v4, v2, p1}, Lcom/google/ads/internal/a;->a(Lcom/google/ads/internal/d;Ljava/util/Map;Landroid/net/Uri;Landroid/webkit/WebView;)V

    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/google/ads/internal/i;->f:Z

    if-eqz v0, :cond_3

    invoke-static {v2}, Lcom/google/ads/util/AdUtil;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "u"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/ads/internal/i;->a:Lcom/google/ads/internal/d;

    new-instance v3, Lcom/google/ads/internal/e;

    const-string v4, "intent"

    invoke-direct {v3, v4, v0}, Lcom/google/ads/internal/e;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-static {v2, v3}, Lcom/google/ads/AdActivity;->launchAdActivity(Lcom/google/ads/internal/d;Lcom/google/ads/internal/e;)V

    move v0, v1

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/google/ads/internal/i;->e:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v3, "u"

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/ads/internal/i;->a:Lcom/google/ads/internal/d;

    new-instance v3, Lcom/google/ads/internal/e;

    const-string v4, "intent"

    invoke-direct {v3, v4, v0}, Lcom/google/ads/internal/e;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-static {v2, v3}, Lcom/google/ads/AdActivity;->launchAdActivity(Lcom/google/ads/internal/d;Lcom/google/ads/internal/e;)V

    move v0, v1

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "URL is not a GMSG and can\'t handle URL: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method
