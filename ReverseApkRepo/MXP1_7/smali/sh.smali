.class public Lsh;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field final synthetic 癤욱븳援:Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;


# direct methods
.method private constructor <init>(Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;)V
    .locals 0

    iput-object p1, p0, Lsh;->癤욱븳援:Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;Lsh;)V
    .locals 0

    invoke-direct {p0, p1}, Lsh;-><init>(Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    iget-object v0, p0, Lsh;->癤욱븳援:Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;

    invoke-static {v0}, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->癤욱븳援(Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsh;->癤욱븳援:Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;

    invoke-static {v0}, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->癤욱븳援(Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    return-void
.end method
