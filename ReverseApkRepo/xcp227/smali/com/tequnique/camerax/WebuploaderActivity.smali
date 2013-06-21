.class public Lcom/tequnique/camerax/WebuploaderActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/ProgressBar;

.field private d:Landroid/webkit/WebView;

.field private e:Lcom/tequnique/camerax/a/a;

.field private f:Lcom/tequnique/camerax/bo;

.field private g:Landroid/os/Handler;

.field private h:Ljava/lang/String;

.field private i:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v1, p0, Lcom/tequnique/camerax/WebuploaderActivity;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/tequnique/camerax/WebuploaderActivity;->b:Landroid/widget/Button;

    iput-object v1, p0, Lcom/tequnique/camerax/WebuploaderActivity;->c:Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/tequnique/camerax/WebuploaderActivity;->d:Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/tequnique/camerax/WebuploaderActivity;->e:Lcom/tequnique/camerax/a/a;

    iput-object v1, p0, Lcom/tequnique/camerax/WebuploaderActivity;->f:Lcom/tequnique/camerax/bo;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tequnique/camerax/WebuploaderActivity;->g:Landroid/os/Handler;

    iput-object v1, p0, Lcom/tequnique/camerax/WebuploaderActivity;->h:Ljava/lang/String;

    iput-object v1, p0, Lcom/tequnique/camerax/WebuploaderActivity;->i:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic a(Lcom/tequnique/camerax/WebuploaderActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tequnique/camerax/WebuploaderActivity;->g:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/tequnique/camerax/WebuploaderActivity;Landroid/app/ProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/tequnique/camerax/WebuploaderActivity;->i:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic b(Lcom/tequnique/camerax/WebuploaderActivity;)Lcom/tequnique/camerax/a/a;
    .locals 1

    iget-object v0, p0, Lcom/tequnique/camerax/WebuploaderActivity;->e:Lcom/tequnique/camerax/a/a;

    return-object v0
.end method

.method static synthetic c(Lcom/tequnique/camerax/WebuploaderActivity;)Lcom/tequnique/camerax/bo;
    .locals 1

    iget-object v0, p0, Lcom/tequnique/camerax/WebuploaderActivity;->f:Lcom/tequnique/camerax/bo;

    return-object v0
.end method

.method static synthetic d(Lcom/tequnique/camerax/WebuploaderActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tequnique/camerax/WebuploaderActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/tequnique/camerax/WebuploaderActivity;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/tequnique/camerax/WebuploaderActivity;->i:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic f(Lcom/tequnique/camerax/WebuploaderActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tequnique/camerax/WebuploaderActivity;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/tequnique/camerax/WebuploaderActivity;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/tequnique/camerax/WebuploaderActivity;->d:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic h(Lcom/tequnique/camerax/WebuploaderActivity;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/tequnique/camerax/WebuploaderActivity;->c:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic i(Lcom/tequnique/camerax/WebuploaderActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/tequnique/camerax/WebuploaderActivity;->b:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 1

    iget-object v0, p0, Lcom/tequnique/camerax/WebuploaderActivity;->e:Lcom/tequnique/camerax/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tequnique/camerax/WebuploaderActivity;->e:Lcom/tequnique/camerax/a/a;

    invoke-virtual {v0}, Lcom/tequnique/camerax/a/a;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tequnique/camerax/WebuploaderActivity;->e:Lcom/tequnique/camerax/a/a;

    :cond_0
    invoke-virtual {p0}, Lcom/tequnique/camerax/WebuploaderActivity;->onBackPressed()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    iget-object v0, p0, Lcom/tequnique/camerax/WebuploaderActivity;->f:Lcom/tequnique/camerax/bo;

    invoke-virtual {v0, p0}, Lcom/tequnique/camerax/bo;->b(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/WebuploaderActivity;->setContentView(I)V

    invoke-static {p0}, Lcom/tequnique/camerax/bo;->a(Landroid/content/Context;)Lcom/tequnique/camerax/bo;

    move-result-object v0

    iput-object v0, p0, Lcom/tequnique/camerax/WebuploaderActivity;->f:Lcom/tequnique/camerax/bo;

    iget-object v0, p0, Lcom/tequnique/camerax/WebuploaderActivity;->f:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->aQ:Ljava/lang/String;

    iput-object v0, p0, Lcom/tequnique/camerax/WebuploaderActivity;->a:Ljava/lang/String;

    const v0, 0x7f0a0057

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/WebuploaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tequnique/camerax/WebuploaderActivity;->b:Landroid/widget/Button;

    const v0, 0x7f0a0059

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/WebuploaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/tequnique/camerax/WebuploaderActivity;->c:Landroid/widget/ProgressBar;

    const v0, 0x7f0a0058

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/WebuploaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/tequnique/camerax/WebuploaderActivity;->d:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/tequnique/camerax/WebuploaderActivity;->d:Landroid/webkit/WebView;

    new-instance v1, Lcom/tequnique/camerax/ci;

    invoke-direct {v1, p0, v3}, Lcom/tequnique/camerax/ci;-><init>(Lcom/tequnique/camerax/WebuploaderActivity;B)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/tequnique/camerax/WebuploaderActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/tequnique/camerax/WebuploaderActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    iget-object v0, p0, Lcom/tequnique/camerax/WebuploaderActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    iget-object v0, p0, Lcom/tequnique/camerax/WebuploaderActivity;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/tequnique/camerax/WebuploaderActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tequnique/camerax/WebuploaderActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/tequnique/camerax/WebuploaderActivity;->b:Landroid/widget/Button;

    new-instance v1, Lcom/tequnique/camerax/cg;

    invoke-direct {v1, p0}, Lcom/tequnique/camerax/cg;-><init>(Lcom/tequnique/camerax/WebuploaderActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tequnique/camerax/WebuploaderActivity;->f:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->aP:Ljava/lang/String;

    const-string v1, "facebook"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/tequnique/camerax/a/d;

    new-instance v1, Lcom/tequnique/camerax/cj;

    sget-object v2, Lcom/tequnique/camerax/ch;->a:Lcom/tequnique/camerax/ch;

    invoke-direct {v1, p0, v2}, Lcom/tequnique/camerax/cj;-><init>(Lcom/tequnique/camerax/WebuploaderActivity;Lcom/tequnique/camerax/ch;)V

    iget-object v2, p0, Lcom/tequnique/camerax/WebuploaderActivity;->f:Lcom/tequnique/camerax/bo;

    iget-object v2, v2, Lcom/tequnique/camerax/bo;->aG:Ljava/lang/String;

    const-string v3, "225326060814656"

    const-string v4, "http://webservices.tequnique.com/fbauth_campro.php?sid"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tequnique/camerax/a/d;-><init>(Lcom/tequnique/camerax/cj;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tequnique/camerax/WebuploaderActivity;->e:Lcom/tequnique/camerax/a/a;

    const-string v0, "Facebook"

    iput-object v0, p0, Lcom/tequnique/camerax/WebuploaderActivity;->h:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tequnique/camerax/WebuploaderActivity;->e:Lcom/tequnique/camerax/a/a;

    invoke-virtual {v0}, Lcom/tequnique/camerax/a/a;->d()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/tequnique/camerax/WebuploaderActivity;->f:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->aP:Ljava/lang/String;

    const-string v1, "flickr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/tequnique/camerax/a/e;

    new-instance v1, Lcom/tequnique/camerax/cj;

    sget-object v2, Lcom/tequnique/camerax/ch;->b:Lcom/tequnique/camerax/ch;

    invoke-direct {v1, p0, v2}, Lcom/tequnique/camerax/cj;-><init>(Lcom/tequnique/camerax/WebuploaderActivity;Lcom/tequnique/camerax/ch;)V

    iget-object v2, p0, Lcom/tequnique/camerax/WebuploaderActivity;->f:Lcom/tequnique/camerax/bo;

    iget-object v2, v2, Lcom/tequnique/camerax/bo;->aK:Ljava/lang/String;

    iget-object v3, p0, Lcom/tequnique/camerax/WebuploaderActivity;->f:Lcom/tequnique/camerax/bo;

    iget-object v3, v3, Lcom/tequnique/camerax/bo;->aL:Ljava/lang/String;

    const-string v4, "bcead72921f15a592eb7511e6cf2ce79"

    const-string v5, "3972fb50650ee43c"

    const-string v6, "http://webservices.tequnique.com/flickr_campro.php"

    invoke-direct/range {v0 .. v6}, Lcom/tequnique/camerax/a/e;-><init>(Lcom/tequnique/camerax/cj;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tequnique/camerax/WebuploaderActivity;->e:Lcom/tequnique/camerax/a/a;

    const-string v0, "Flickr"

    iput-object v0, p0, Lcom/tequnique/camerax/WebuploaderActivity;->h:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tequnique/camerax/WebuploaderActivity;->f:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->aP:Ljava/lang/String;

    const-string v1, "picasa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/tequnique/camerax/a/i;

    new-instance v1, Lcom/tequnique/camerax/cj;

    sget-object v2, Lcom/tequnique/camerax/ch;->c:Lcom/tequnique/camerax/ch;

    invoke-direct {v1, p0, v2}, Lcom/tequnique/camerax/cj;-><init>(Lcom/tequnique/camerax/WebuploaderActivity;Lcom/tequnique/camerax/ch;)V

    iget-object v2, p0, Lcom/tequnique/camerax/WebuploaderActivity;->f:Lcom/tequnique/camerax/bo;

    iget-object v2, v2, Lcom/tequnique/camerax/bo;->aJ:Ljava/lang/String;

    const-string v3, "535548626052.apps.googleusercontent.com"

    const-string v4, "l_REbbvr4okvGZRLsJFhGTP9"

    const-string v5, "http://webservices.tequnique.com/picasa_campro.php"

    invoke-direct/range {v0 .. v5}, Lcom/tequnique/camerax/a/i;-><init>(Lcom/tequnique/camerax/cj;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tequnique/camerax/WebuploaderActivity;->e:Lcom/tequnique/camerax/a/a;

    const-string v0, "Picasa"

    iput-object v0, p0, Lcom/tequnique/camerax/WebuploaderActivity;->h:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tequnique/camerax/WebuploaderActivity;->f:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->aP:Ljava/lang/String;

    const-string v1, "twitter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tequnique/camerax/a/k;

    new-instance v1, Lcom/tequnique/camerax/cj;

    sget-object v2, Lcom/tequnique/camerax/ch;->d:Lcom/tequnique/camerax/ch;

    invoke-direct {v1, p0, v2}, Lcom/tequnique/camerax/cj;-><init>(Lcom/tequnique/camerax/WebuploaderActivity;Lcom/tequnique/camerax/ch;)V

    iget-object v2, p0, Lcom/tequnique/camerax/WebuploaderActivity;->f:Lcom/tequnique/camerax/bo;

    iget-object v2, v2, Lcom/tequnique/camerax/bo;->aH:Ljava/lang/String;

    iget-object v3, p0, Lcom/tequnique/camerax/WebuploaderActivity;->f:Lcom/tequnique/camerax/bo;

    iget-object v3, v3, Lcom/tequnique/camerax/bo;->aI:Ljava/lang/String;

    const-string v4, "35698a2da7e51e1cb005cd63fc48ea01"

    const-string v5, "MMT2dveZCe852RwWZH5gA"

    const-string v6, "ZiDRiKVhtxdUCHPj8Tuqx9eMA8iAy98MBx9HG2Gw"

    const-string v7, "http://webservices.tequnique.com/twitpic_campro.php"

    invoke-direct/range {v0 .. v7}, Lcom/tequnique/camerax/a/k;-><init>(Lcom/tequnique/camerax/cj;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tequnique/camerax/WebuploaderActivity;->e:Lcom/tequnique/camerax/a/a;

    const-string v0, "Twitter"

    iput-object v0, p0, Lcom/tequnique/camerax/WebuploaderActivity;->h:Ljava/lang/String;

    goto/16 :goto_0
.end method
