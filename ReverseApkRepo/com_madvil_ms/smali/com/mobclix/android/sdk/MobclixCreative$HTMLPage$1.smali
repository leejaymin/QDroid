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

    .line 806
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 840
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 841
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->getParentCreative()Lcom/mobclix/android/sdk/MobclixCreative;

    move-result-object v0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative;->handler:Lcom/mobclix/android/sdk/MobclixCreative$ResourceResponseHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$ResourceResponseHandler;->sendEmptyMessage(I)Z

    .line 842
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 10
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v9, 0x1

    .line 808
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 813
    .local v4, uri:Landroid/net/Uri;
    const-string v5, "mobclix://"

    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .local v3, tmp:[Ljava/lang/String;
    array-length v5, v3

    if-gt v5, v9, :cond_0

    .line 814
    const-string v5, "mobclix%3A%2F%2F"

    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3

    if-le v5, v9, :cond_3

    .line 816
    :cond_0
    aget-object v0, v3, v9

    .line 818
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

    .line 819
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    #getter for: Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;
    invoke-static {v5}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->access$0(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;)Lcom/mobclix/android/sdk/MobclixCreative;

    move-result-object v5

    #getter for: Lcom/mobclix/android/sdk/MobclixCreative;->customAdThread:Ljava/lang/Thread;
    invoke-static {v5}, Lcom/mobclix/android/sdk/MobclixCreative;->access$8(Lcom/mobclix/android/sdk/MobclixCreative;)Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 820
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

    .line 836
    .end local v0           #customAdString:Ljava/lang/String;
    :goto_1
    return v5

    .line 820
    .restart local v0       #customAdString:Ljava/lang/String;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobclix/android/sdk/MobclixAdViewListener;

    .line 821
    .local v1, listener:Lcom/mobclix/android/sdk/MobclixAdViewListener;
    if-eqz v1, :cond_1

    .line 822
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    #getter for: Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;
    invoke-static {v6}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->access$0(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;)Lcom/mobclix/android/sdk/MobclixCreative;

    move-result-object v6

    iget-object v6, v6, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-interface {v1, v6, v0}, Lcom/mobclix/android/sdk/MobclixAdViewListener;->onCustomAdTouchThrough(Lcom/mobclix/android/sdk/MobclixAdView;Ljava/lang/String;)V

    goto :goto_0

    .line 827
    .end local v0           #customAdString:Ljava/lang/String;
    .end local v1           #listener:Lcom/mobclix/android/sdk/MobclixAdViewListener;
    :cond_3
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    #getter for: Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;
    invoke-static {v5}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->access$0(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;)Lcom/mobclix/android/sdk/MobclixCreative;

    move-result-object v5

    iget-object v5, v5, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v5, v5, Lcom/mobclix/android/sdk/MobclixAdView;->listeners:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_5

    .line 833
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 834
    .local v2, mIntent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 835
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/CookieSyncManager;->sync()V

    move v5, v9

    .line 836
    goto :goto_1

    .line 827
    .end local v2           #mIntent:Landroid/content/Intent;
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobclix/android/sdk/MobclixAdViewListener;

    .line 828
    .restart local v1       #listener:Lcom/mobclix/android/sdk/MobclixAdViewListener;
    if-eqz v1, :cond_4

    .line 829
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    #getter for: Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;
    invoke-static {v6}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->access$0(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;)Lcom/mobclix/android/sdk/MobclixCreative;

    move-result-object v6

    iget-object v6, v6, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-interface {v1, v6}, Lcom/mobclix/android/sdk/MobclixAdViewListener;->onAdClick(Lcom/mobclix/android/sdk/MobclixAdView;)V

    goto :goto_2
.end method
