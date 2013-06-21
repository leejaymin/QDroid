.class Lcom/adfonic/android/AdfonicActivity$7;
.super Landroid/webkit/WebViewClient;
.source "AdfonicActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adfonic/android/AdfonicActivity;->keepAllWebContentInsideWebView(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adfonic/android/AdfonicActivity;


# direct methods
.method constructor <init>(Lcom/adfonic/android/AdfonicActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 395
    iput-object p1, p0, Lcom/adfonic/android/AdfonicActivity$7;->this$0:Lcom/adfonic/android/AdfonicActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 398
    const-string v1, "market://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 400
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 401
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 403
    iget-object v1, p0, Lcom/adfonic/android/AdfonicActivity$7;->this$0:Lcom/adfonic/android/AdfonicActivity;

    invoke-virtual {v1, v0}, Lcom/adfonic/android/AdfonicActivity;->startActivity(Landroid/content/Intent;)V

    .line 404
    iget-object v1, p0, Lcom/adfonic/android/AdfonicActivity$7;->this$0:Lcom/adfonic/android/AdfonicActivity;

    invoke-virtual {v1}, Lcom/adfonic/android/AdfonicActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 409
    :cond_0
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 405
    :catch_0
    move-exception v1

    goto :goto_0
.end method
