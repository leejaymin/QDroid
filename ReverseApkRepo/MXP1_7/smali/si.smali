.class public Lsi;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic 癤욱븳援:Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;


# direct methods
.method private constructor <init>(Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;)V
    .locals 0

    iput-object p1, p0, Lsi;->癤욱븳援:Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;Lsi;)V
    .locals 0

    invoke-direct {p0, p1}, Lsi;-><init>(Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lsi;->癤욱븳援:Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;

    invoke-static {v0}, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->癤욱븳援(Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lsi;->癤욱븳援:Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->癤욱븳援(Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;Z)V

    iget-object v0, p0, Lsi;->癤욱븳援:Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;

    invoke-static {v0}, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->먯꽌(Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lsi;->癤욱븳援:Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;

    invoke-static {v0}, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->癤욱븳援(Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lsi;->癤욱븳援:Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->癤욱븳援(Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;Z)V

    iget-object v0, p0, Lsi;->癤욱븳援:Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;

    invoke-static {v0}, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->궗(Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lsi;->癤욱븳援:Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;

    invoke-static {v0}, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->癤욱븳援(Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
