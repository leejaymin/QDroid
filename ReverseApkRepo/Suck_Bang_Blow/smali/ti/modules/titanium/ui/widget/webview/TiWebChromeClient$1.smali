.class Lti/modules/titanium/ui/widget/webview/TiWebChromeClient$1;
.super Ljava/lang/Object;
.source "TiWebChromeClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/widget/webview/TiWebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/widget/webview/TiWebChromeClient;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$newProgress:I


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/widget/webview/TiWebChromeClient;Landroid/app/Activity;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lti/modules/titanium/ui/widget/webview/TiWebChromeClient$1;->this$0:Lti/modules/titanium/ui/widget/webview/TiWebChromeClient;

    iput-object p2, p0, Lti/modules/titanium/ui/widget/webview/TiWebChromeClient$1;->val$activity:Landroid/app/Activity;

    iput p3, p0, Lti/modules/titanium/ui/widget/webview/TiWebChromeClient$1;->val$newProgress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 68
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebChromeClient$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgressBarVisibility(Z)V

    .line 69
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebChromeClient$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 70
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebChromeClient$1;->val$activity:Landroid/app/Activity;

    iget v1, p0, Lti/modules/titanium/ui/widget/webview/TiWebChromeClient$1;->val$newProgress:I

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgress(I)V

    .line 71
    return-void
.end method