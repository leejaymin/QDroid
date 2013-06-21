.class public Lsd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic 癤욱븳援:Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;


# direct methods
.method public constructor <init>(Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;)V
    .locals 0

    iput-object p1, p0, Lsd;->癤욱븳援:Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lsd;->癤욱븳援:Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;

    invoke-static {v0}, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->ㅼ꽑嫄(Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsd;->癤욱븳援:Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;

    iget-object v0, v0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->궗:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lsd;->癤욱븳援:Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;

    iget-object v0, v0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->궗:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    goto :goto_0
.end method
