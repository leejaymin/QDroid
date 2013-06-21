.class Lcom/arellomobile/android/push/PushWebview$HelloWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "PushWebview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/arellomobile/android/push/PushWebview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HelloWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/arellomobile/android/push/PushWebview;


# direct methods
.method private constructor <init>(Lcom/arellomobile/android/push/PushWebview;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/arellomobile/android/push/PushWebview$HelloWebViewClient;->this$0:Lcom/arellomobile/android/push/PushWebview;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/arellomobile/android/push/PushWebview;Lcom/arellomobile/android/push/PushWebview$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/arellomobile/android/push/PushWebview$HelloWebViewClient;-><init>(Lcom/arellomobile/android/push/PushWebview;)V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .parameter "view"
    .parameter "url"

    .prologue
    .line 36
    iget-object v2, p0, Lcom/arellomobile/android/push/PushWebview$HelloWebViewClient;->this$0:Lcom/arellomobile/android/push/PushWebview;

    invoke-virtual {v2}, Lcom/arellomobile/android/push/PushWebview;->finish()V

    .line 38
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 39
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 40
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/arellomobile/android/push/PushWebview$HelloWebViewClient;->this$0:Lcom/arellomobile/android/push/PushWebview;

    invoke-virtual {v2, v0}, Lcom/arellomobile/android/push/PushWebview;->startActivity(Landroid/content/Intent;)V

    .line 42
    const/4 v2, 0x0

    return v2
.end method
