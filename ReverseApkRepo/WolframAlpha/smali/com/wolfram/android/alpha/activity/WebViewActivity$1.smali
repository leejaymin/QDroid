.class Lcom/wolfram/android/alpha/activity/WebViewActivity$1;
.super Landroid/webkit/WebChromeClient;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wolfram/android/alpha/activity/WebViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wolfram/android/alpha/activity/WebViewActivity;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/wolfram/android/alpha/activity/WebViewActivity;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/wolfram/android/alpha/activity/WebViewActivity$1;->this$0:Lcom/wolfram/android/alpha/activity/WebViewActivity;

    iput-object p2, p0, Lcom/wolfram/android/alpha/activity/WebViewActivity$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .parameter "view"
    .parameter "progress"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/WebViewActivity$1;->val$activity:Landroid/app/Activity;

    mul-int/lit16 v1, p2, 0x3e8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgress(I)V

    .line 81
    return-void
.end method
