.class Lexam/Widget/WebViewTest$MyWebClient;
.super Landroid/webkit/WebViewClient;
.source "WebViewTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/Widget/WebViewTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyWebClient"
.end annotation


# instance fields
.field final synthetic this$0:Lexam/Widget/WebViewTest;


# direct methods
.method constructor <init>(Lexam/Widget/WebViewTest;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lexam/Widget/WebViewTest$MyWebClient;->this$0:Lexam/Widget/WebViewTest;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 57
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 58
    const/4 v0, 0x1

    return v0
.end method
