.class public Lsb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic 癤욱븳援:Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;


# direct methods
.method public constructor <init>(Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;)V
    .locals 0

    iput-object p1, p0, Lsb;->癤욱븳援:Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lsb;->癤욱븳援:Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;

    iget-object v0, v0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->궗:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsb;->癤욱븳援:Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;

    iget-object v0, v0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->궗:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    :cond_0
    return-void
.end method
