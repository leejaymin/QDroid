.class public Lcom/flurry/android/CatalogActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static volatile a:Ljava/lang/String;


# instance fields
.field private b:Landroid/webkit/WebView;

.field private c:Lcom/flurry/android/ao;

.field private d:Ljava/util/List;

.field private e:Lcom/flurry/android/am;

.field private f:Lcom/flurry/android/ah;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "<html><body><table height=\'100%\' width=\'100%\' border=\'0\'><tr><td style=\'vertical-align:middle;text-align:center\'>No recommendations available<p><button type=\'input\' onClick=\'activity.finish()\'>Back</button></td></tr></table></body></html>"

    sput-object v0, Lcom/flurry/android/CatalogActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/CatalogActivity;->d:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/flurry/android/CatalogActivity;)Lcom/flurry/android/ah;
    .locals 1

    iget-object v0, p0, Lcom/flurry/android/CatalogActivity;->f:Lcom/flurry/android/ah;

    return-object v0
.end method

.method private a(Lcom/flurry/android/ap;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/CatalogActivity;->b:Landroid/webkit/WebView;

    iget-object v1, p1, Lcom/flurry/android/ap;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/android/CatalogActivity;->c:Lcom/flurry/android/ao;

    iget-object v1, p1, Lcom/flurry/android/ap;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/flurry/android/ao;->a(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "FlurryAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error loading url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/flurry/android/ap;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/o;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic b(Lcom/flurry/android/CatalogActivity;)J
    .locals 2

    iget-object v0, p0, Lcom/flurry/android/CatalogActivity;->e:Lcom/flurry/android/am;

    invoke-virtual {v0}, Lcom/flurry/android/am;->j()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic c(Lcom/flurry/android/CatalogActivity;)Lcom/flurry/android/am;
    .locals 1

    iget-object v0, p0, Lcom/flurry/android/CatalogActivity;->e:Lcom/flurry/android/am;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    instance-of v1, p1, Lcom/flurry/android/aq;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/flurry/android/ap;

    invoke-direct {v1}, Lcom/flurry/android/ap;-><init>()V

    iget-object v2, p0, Lcom/flurry/android/CatalogActivity;->f:Lcom/flurry/android/ah;

    iput-object v2, v1, Lcom/flurry/android/ap;->a:Lcom/flurry/android/ah;

    iget-object v2, p0, Lcom/flurry/android/CatalogActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/flurry/android/ap;->b:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/flurry/android/CatalogActivity;->c:Lcom/flurry/android/ao;

    invoke-virtual {v3}, Lcom/flurry/android/ao;->b()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v1, Lcom/flurry/android/ap;->c:Ljava/util/List;

    iget-object v2, p0, Lcom/flurry/android/CatalogActivity;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/flurry/android/CatalogActivity;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/flurry/android/CatalogActivity;->d:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    new-instance v2, Lcom/flurry/android/ap;

    invoke-direct {v2}, Lcom/flurry/android/ap;-><init>()V

    move-object v0, p1

    check-cast v0, Lcom/flurry/android/aq;

    move-object v1, v0

    iget-object v3, p0, Lcom/flurry/android/CatalogActivity;->e:Lcom/flurry/android/am;

    invoke-virtual {v3}, Lcom/flurry/android/am;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/flurry/android/aq;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/flurry/android/aq;->a()Lcom/flurry/android/ah;

    move-result-object v4

    iput-object v4, p0, Lcom/flurry/android/CatalogActivity;->f:Lcom/flurry/android/ah;

    invoke-virtual {v1}, Lcom/flurry/android/aq;->a()Lcom/flurry/android/ah;

    move-result-object v1

    iput-object v1, v2, Lcom/flurry/android/ap;->a:Lcom/flurry/android/ah;

    iget-object v1, v2, Lcom/flurry/android/ap;->a:Lcom/flurry/android/ah;

    new-instance v4, Lcom/flurry/android/x;

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/flurry/android/CatalogActivity;->e:Lcom/flurry/android/am;

    invoke-virtual {v6}, Lcom/flurry/android/am;->j()J

    move-result-wide v6

    invoke-direct {v4, v5, v6, v7}, Lcom/flurry/android/x;-><init>(BJ)V

    invoke-virtual {v1, v4}, Lcom/flurry/android/ah;->a(Lcom/flurry/android/x;)V

    iput-object v3, v2, Lcom/flurry/android/ap;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/flurry/android/CatalogActivity;->c:Lcom/flurry/android/ao;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/flurry/android/ao;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v2, Lcom/flurry/android/ap;->c:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/flurry/android/CatalogActivity;->a(Lcom/flurry/android/ap;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const/16 v2, 0x2710

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/flurry/android/CatalogActivity;->finish()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const/16 v2, 0x2712

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/flurry/android/CatalogActivity;->c:Lcom/flurry/android/ao;

    invoke-virtual {v1}, Lcom/flurry/android/ao;->a()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/flurry/android/CatalogActivity;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/flurry/android/CatalogActivity;->finish()V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/flurry/android/CatalogActivity;->d:Ljava/util/List;

    iget-object v2, p0, Lcom/flurry/android/CatalogActivity;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/android/ap;

    invoke-direct {p0, v1}, Lcom/flurry/android/CatalogActivity;->a(Lcom/flurry/android/ap;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v7, -0x2

    const/4 v5, -0x1

    const v0, 0x103000f

    invoke-virtual {p0, v0}, Lcom/flurry/android/CatalogActivity;->setTheme(I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/flurry/android/e;->c()Lcom/flurry/android/am;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/CatalogActivity;->e:Lcom/flurry/android/am;

    invoke-virtual {p0}, Lcom/flurry/android/CatalogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "o"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/flurry/android/CatalogActivity;->e:Lcom/flurry/android/am;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/flurry/android/am;->b(J)Lcom/flurry/android/ah;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/CatalogActivity;->f:Lcom/flurry/android/ah;

    :cond_0
    new-instance v0, Lcom/flurry/android/i;

    invoke-direct {v0, p0, p0}, Lcom/flurry/android/i;-><init>(Lcom/flurry/android/CatalogActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v6}, Lcom/flurry/android/i;->setId(I)V

    const/high16 v2, -0x100

    invoke-virtual {v0, v2}, Lcom/flurry/android/i;->setBackgroundColor(I)V

    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/flurry/android/CatalogActivity;->b:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/flurry/android/CatalogActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v2, v8}, Landroid/webkit/WebView;->setId(I)V

    iget-object v2, p0, Lcom/flurry/android/CatalogActivity;->b:Landroid/webkit/WebView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    iget-object v2, p0, Lcom/flurry/android/CatalogActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v2, v5}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/flurry/android/CatalogActivity;->f:Lcom/flurry/android/ah;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/flurry/android/CatalogActivity;->b:Landroid/webkit/WebView;

    new-instance v3, Lcom/flurry/android/ai;

    invoke-direct {v3, p0}, Lcom/flurry/android/ai;-><init>(Lcom/flurry/android/CatalogActivity;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :cond_1
    iget-object v2, p0, Lcom/flurry/android/CatalogActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v2, p0, Lcom/flurry/android/CatalogActivity;->b:Landroid/webkit/WebView;

    const-string v3, "activity"

    invoke-virtual {v2, p0, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/flurry/android/ao;

    invoke-direct {v2, p0, p0}, Lcom/flurry/android/ao;-><init>(Lcom/flurry/android/CatalogActivity;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/flurry/android/CatalogActivity;->c:Lcom/flurry/android/ao;

    iget-object v2, p0, Lcom/flurry/android/CatalogActivity;->c:Lcom/flurry/android/ao;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/flurry/android/ao;->setId(I)V

    new-instance v6, Landroid/widget/RelativeLayout;

    invoke-direct {v6, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xa

    invoke-virtual {v0}, Lcom/flurry/android/i;->getId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v6, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x3

    invoke-virtual {v0}, Lcom/flurry/android/i;->getId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v3, p0, Lcom/flurry/android/CatalogActivity;->c:Lcom/flurry/android/ao;

    invoke-virtual {v3}, Lcom/flurry/android/ao;->getId()I

    move-result v3

    invoke-virtual {v2, v8, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v3, p0, Lcom/flurry/android/CatalogActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v6, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xc

    invoke-virtual {v0}, Lcom/flurry/android/i;->getId()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/flurry/android/CatalogActivity;->c:Lcom/flurry/android/ao;

    invoke-virtual {v6, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/flurry/android/CatalogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v1

    :goto_0
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/flurry/android/CatalogActivity;->b:Landroid/webkit/WebView;

    sget-object v2, Lcom/flurry/android/CatalogActivity;->a:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0, v6}, Lcom/flurry/android/CatalogActivity;->setContentView(Landroid/view/View;)V

    return-void

    :cond_2
    const-string v2, "u"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/flurry/android/CatalogActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/flurry/android/CatalogActivity;->e:Lcom/flurry/android/am;

    invoke-virtual {v0}, Lcom/flurry/android/am;->h()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
