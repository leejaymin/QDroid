.class Lsf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic 癤욱븳援:Lse;


# direct methods
.method constructor <init>(Lse;)V
    .locals 0

    iput-object p1, p0, Lsf;->癤욱븳援:Lse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lsf;->癤욱븳援:Lse;

    invoke-static {v0}, Lse;->癤욱븳援(Lse;)Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->궗:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lsf;->癤욱븳援:Lse;

    invoke-static {v0}, Lse;->癤욱븳援(Lse;)Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "clipboard"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lsf;->癤욱븳援:Lse;

    invoke-static {v0}, Lse;->癤욱븳援(Lse;)Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->궗:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-eqz v1, :cond_0

    iget-object v0, p0, Lsf;->癤욱븳援:Lse;

    invoke-static {v0}, Lse;->癤욱븳援(Lse;)Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lsf;->癤욱븳援:Lse;

    invoke-static {v0}, Lse;->癤욱븳援(Lse;)Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;->궗:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
