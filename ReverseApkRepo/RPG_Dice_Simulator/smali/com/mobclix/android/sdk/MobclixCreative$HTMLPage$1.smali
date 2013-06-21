.class Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$1;
.super Landroid/webkit/WebViewClient;
.source "MobclixCreative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->createLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    .line 736
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .parameter "view"
    .parameter "url"

    .prologue
    .line 764
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 765
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 766
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "loaded"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 767
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 768
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->getParentCreative()Lcom/mobclix/android/sdk/MobclixCreative;

    move-result-object v2

    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixCreative;->handler:Lcom/mobclix/android/sdk/MobclixCreative$ResourceResponseHandler;

    invoke-virtual {v2, v1}, Lcom/mobclix/android/sdk/MobclixCreative$ResourceResponseHandler;->sendMessage(Landroid/os/Message;)Z

    .line 769
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 10
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v9, 0x1

    .line 738
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 743
    .local v4, uri:Landroid/net/Uri;
    const-string v5, "mobclix://"

    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .local v3, tmp:[Ljava/lang/String;
    array-length v5, v3

    if-gt v5, v9, :cond_0

    .line 744
    const-string v5, "mobclix%3A%2F%2F"

    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3

    if-le v5, v9, :cond_3

    .line 746
    :cond_0
    aget-object v0, v3, v9

    .line 748
    .local v0, customAdString:Ljava/lang/String;
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    #getter for: Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;
    invoke-static {v5}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->access$0(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;)Lcom/mobclix/android/sdk/MobclixCreative;

    move-result-object v5

    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/mobclix/android/sdk/MobclixCreative$CustomAdThread;

    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    #getter for: Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;
    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->access$0(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;)Lcom/mobclix/android/sdk/MobclixCreative;

    move-result-object v8

    invoke-direct {v7, v8, p2}, Lcom/mobclix/android/sdk/MobclixCreative$CustomAdThread;-><init>(Lcom/mobclix/android/sdk/MobclixCreative;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #setter for: Lcom/mobclix/android/sdk/MobclixCreative;->customAdThread:Ljava/lang/Thread;
    invoke-static {v5, v6}, Lcom/mobclix/android/sdk/MobclixCreative;->access$7(Lcom/mobclix/android/sdk/MobclixCreative;Ljava/lang/Thread;)V

    .line 749
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    #getter for: Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;
    invoke-static {v5}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->access$0(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;)Lcom/mobclix/android/sdk/MobclixCreative;

    move-result-object v5

    #getter for: Lcom/mobclix/android/sdk/MobclixCreative;->customAdThread:Ljava/lang/Thread;
    invoke-static {v5}, Lcom/mobclix/android/sdk/MobclixCreative;->access$8(Lcom/mobclix/android/sdk/MobclixCreative;)Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 750
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    #getter for: Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;
    invoke-static {v5}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->access$0(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;)Lcom/mobclix/android/sdk/MobclixCreative;

    move-result-object v5

    iget-object v5, v5, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v5, v5, Lcom/mobclix/android/sdk/MobclixAdView;->listeners:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    move v5, v9

    .line 760
    .end local v0           #customAdString:Ljava/lang/String;
    :goto_1
    return v5

    .line 750
    .restart local v0       #customAdString:Ljava/lang/String;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobclix/android/sdk/MobclixAdViewListener;

    .line 751
    .local v1, listener:Lcom/mobclix/android/sdk/MobclixAdViewListener;
    if-eqz v1, :cond_1

    .line 752
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    #getter for: Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;
    invoke-static {v6}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->access$0(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;)Lcom/mobclix/android/sdk/MobclixCreative;

    move-result-object v6

    iget-object v6, v6, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-interface {v1, v6, v0}, Lcom/mobclix/android/sdk/MobclixAdViewListener;->onCustomAdTouchThrough(Lcom/mobclix/android/sdk/MobclixAdView;Ljava/lang/String;)V

    goto :goto_0

    .line 758
    .end local v0           #customAdString:Ljava/lang/String;
    .end local v1           #listener:Lcom/mobclix/android/sdk/MobclixAdViewListener;
    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 759
    .local v2, mIntent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v5, v9

    .line 760
    goto :goto_1
.end method
