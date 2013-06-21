.class Lexam/Widget/WebViewTest$1;
.super Ljava/lang/Object;
.source "WebViewTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/Widget/WebViewTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/Widget/WebViewTest;


# direct methods
.method constructor <init>(Lexam/Widget/WebViewTest;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/Widget/WebViewTest$1;->this$0:Lexam/Widget/WebViewTest;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 34
    :pswitch_0
    iget-object v2, p0, Lexam/Widget/WebViewTest$1;->this$0:Lexam/Widget/WebViewTest;

    const v3, 0x7f0c00a0

    invoke-virtual {v2, v3}, Lexam/Widget/WebViewTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 35
    .local v0, addr:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, url:Ljava/lang/String;
    iget-object v2, p0, Lexam/Widget/WebViewTest$1;->this$0:Lexam/Widget/WebViewTest;

    iget-object v2, v2, Lexam/Widget/WebViewTest;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 39
    .end local v0           #addr:Landroid/widget/EditText;
    .end local v1           #url:Ljava/lang/String;
    :pswitch_1
    iget-object v2, p0, Lexam/Widget/WebViewTest$1;->this$0:Lexam/Widget/WebViewTest;

    iget-object v2, v2, Lexam/Widget/WebViewTest;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    iget-object v2, p0, Lexam/Widget/WebViewTest$1;->this$0:Lexam/Widget/WebViewTest;

    iget-object v2, v2, Lexam/Widget/WebViewTest;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 44
    :pswitch_2
    iget-object v2, p0, Lexam/Widget/WebViewTest$1;->this$0:Lexam/Widget/WebViewTest;

    iget-object v2, v2, Lexam/Widget/WebViewTest;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    iget-object v2, p0, Lexam/Widget/WebViewTest$1;->this$0:Lexam/Widget/WebViewTest;

    iget-object v2, v2, Lexam/Widget/WebViewTest;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->goForward()V

    goto :goto_0

    .line 49
    :pswitch_3
    iget-object v2, p0, Lexam/Widget/WebViewTest$1;->this$0:Lexam/Widget/WebViewTest;

    iget-object v2, v2, Lexam/Widget/WebViewTest;->mWeb:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/test.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 31
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c00a1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
