.class Lcom/admob/android/ads/AdView$1;
.super Ljava/lang/Thread;
.source "AdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/admob/android/ads/AdView;->requestFreshAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/admob/android/ads/AdView;


# direct methods
.method constructor <init>(Lcom/admob/android/ads/AdView;)V
    .locals 0
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/admob/android/ads/AdView$1;->this$0:Lcom/admob/android/ads/AdView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    const-string v9, "AdMob SDK"

    .line 242
    :try_start_0
    iget-object v6, p0, Lcom/admob/android/ads/AdView$1;->this$0:Lcom/admob/android/ads/AdView;

    invoke-virtual {v6}, Lcom/admob/android/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 243
    .local v0, context:Landroid/content/Context;
    iget-object v6, p0, Lcom/admob/android/ads/AdView$1;->this$0:Lcom/admob/android/ads/AdView;

    #getter for: Lcom/admob/android/ads/AdView;->keywords:Ljava/lang/String;
    invoke-static {v6}, Lcom/admob/android/ads/AdView;->access$000(Lcom/admob/android/ads/AdView;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/admob/android/ads/AdView$1;->this$0:Lcom/admob/android/ads/AdView;

    #getter for: Lcom/admob/android/ads/AdView;->searchQuery:Ljava/lang/String;
    invoke-static {v7}, Lcom/admob/android/ads/AdView;->access$100(Lcom/admob/android/ads/AdView;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v6, v7}, Lcom/admob/android/ads/AdRequester;->requestAd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/admob/android/ads/Ad;

    move-result-object v3

    .line 245
    .local v3, newAd:Lcom/admob/android/ads/Ad;
    if-eqz v3, :cond_3

    .line 247
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :try_start_1
    iget-object v6, p0, Lcom/admob/android/ads/AdView$1;->this$0:Lcom/admob/android/ads/AdView;

    #getter for: Lcom/admob/android/ads/AdView;->ad:Lcom/admob/android/ads/AdContainer;
    invoke-static {v6}, Lcom/admob/android/ads/AdView;->access$200(Lcom/admob/android/ads/AdView;)Lcom/admob/android/ads/AdContainer;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/admob/android/ads/AdView$1;->this$0:Lcom/admob/android/ads/AdView;

    #getter for: Lcom/admob/android/ads/AdView;->ad:Lcom/admob/android/ads/AdContainer;
    invoke-static {v6}, Lcom/admob/android/ads/AdView;->access$200(Lcom/admob/android/ads/AdView;)Lcom/admob/android/ads/AdContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/admob/android/ads/AdContainer;->getAd()Lcom/admob/android/ads/Ad;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/admob/android/ads/Ad;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 252
    const-string v6, "AdMob SDK"

    const-string v7, "Received the same ad we already had.  Discarding it."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v6, p0, Lcom/admob/android/ads/AdView$1;->this$0:Lcom/admob/android/ads/AdView;

    const/4 v7, 0x0

    #setter for: Lcom/admob/android/ads/AdView;->requestingFreshAd:Z
    invoke-static {v6, v7}, Lcom/admob/android/ads/AdView;->access$302(Lcom/admob/android/ads/AdView;Z)Z

    .line 319
    :goto_0
    monitor-exit p0

    .line 331
    .end local v0           #context:Landroid/content/Context;
    .end local v3           #newAd:Lcom/admob/android/ads/Ad;
    :goto_1
    return-void

    .line 258
    .restart local v0       #context:Landroid/content/Context;
    .restart local v3       #newAd:Lcom/admob/android/ads/Ad;
    :cond_0
    iget-object v6, p0, Lcom/admob/android/ads/AdView$1;->this$0:Lcom/admob/android/ads/AdView;

    #getter for: Lcom/admob/android/ads/AdView;->ad:Lcom/admob/android/ads/AdContainer;
    invoke-static {v6}, Lcom/admob/android/ads/AdView;->access$200(Lcom/admob/android/ads/AdView;)Lcom/admob/android/ads/AdContainer;

    move-result-object v6

    if-nez v6, :cond_2

    const/4 v6, 0x1

    move v2, v6

    .line 259
    .local v2, firstAd:Z
    :goto_2
    iget-object v6, p0, Lcom/admob/android/ads/AdView$1;->this$0:Lcom/admob/android/ads/AdView;

    #calls: Landroid/view/View;->getVisibility()I
    invoke-static {v6}, Lcom/admob/android/ads/AdView;->access$401(Lcom/admob/android/ads/AdView;)I

    move-result v5

    .line 261
    .local v5, visibility:I
    new-instance v4, Lcom/admob/android/ads/AdContainer;

    invoke-direct {v4, v3, v0}, Lcom/admob/android/ads/AdContainer;-><init>(Lcom/admob/android/ads/Ad;Landroid/content/Context;)V

    .line 262
    .local v4, newAdContainer:Lcom/admob/android/ads/AdContainer;
    iget-object v6, p0, Lcom/admob/android/ads/AdView$1;->this$0:Lcom/admob/android/ads/AdView;

    invoke-virtual {v6}, Lcom/admob/android/ads/AdView;->getBackgroundColor()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/admob/android/ads/AdContainer;->setBackgroundColor(I)V

    .line 263
    iget-object v6, p0, Lcom/admob/android/ads/AdView$1;->this$0:Lcom/admob/android/ads/AdView;

    invoke-virtual {v6}, Lcom/admob/android/ads/AdView;->getTextColor()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/admob/android/ads/AdContainer;->setTextColor(I)V

    .line 264
    invoke-virtual {v4, v5}, Lcom/admob/android/ads/AdContainer;->setVisibility(I)V

    .line 267
    iget-object v6, p0, Lcom/admob/android/ads/AdView$1;->this$0:Lcom/admob/android/ads/AdView;

    #getter for: Lcom/admob/android/ads/AdView;->listener:Lcom/admob/android/ads/AdView$AdListener;
    invoke-static {v6}, Lcom/admob/android/ads/AdView;->access$500(Lcom/admob/android/ads/AdView;)Lcom/admob/android/ads/AdView$AdListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    if-eqz v6, :cond_1

    .line 271
    :try_start_2
    iget-object v6, p0, Lcom/admob/android/ads/AdView$1;->this$0:Lcom/admob/android/ads/AdView;

    #getter for: Lcom/admob/android/ads/AdView;->listener:Lcom/admob/android/ads/AdView$AdListener;
    invoke-static {v6}, Lcom/admob/android/ads/AdView;->access$500(Lcom/admob/android/ads/AdView;)Lcom/admob/android/ads/AdView$AdListener;

    move-result-object v6

    invoke-interface {v6}, Lcom/admob/android/ads/AdView$AdListener;->onNewAd()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 280
    :cond_1
    :goto_3
    :try_start_3
    iget-object v6, p0, Lcom/admob/android/ads/AdView$1;->this$0:Lcom/admob/android/ads/AdView;

    new-instance v7, Lcom/admob/android/ads/AdView$1$1;

    invoke-direct {v7, p0, v4, v5, v2}, Lcom/admob/android/ads/AdView$1$1;-><init>(Lcom/admob/android/ads/AdView$1;Lcom/admob/android/ads/AdContainer;IZ)V

    invoke-virtual {v6, v7}, Lcom/admob/android/ads/AdView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 319
    .end local v2           #firstAd:Z
    .end local v4           #newAdContainer:Lcom/admob/android/ads/AdContainer;
    .end local v5           #visibility:I
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 327
    .end local v0           #context:Landroid/content/Context;
    .end local v3           #newAd:Lcom/admob/android/ads/Ad;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 329
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "AdMob SDK"

    const-string v6, "Unhandled exception requesting a fresh ad."

    invoke-static {v9, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #context:Landroid/content/Context;
    .restart local v3       #newAd:Lcom/admob/android/ads/Ad;
    :cond_2
    move v2, v8

    .line 258
    goto :goto_2

    .line 273
    .restart local v2       #firstAd:Z
    .restart local v4       #newAdContainer:Lcom/admob/android/ads/AdContainer;
    .restart local v5       #visibility:I
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 275
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_5
    const-string v6, "AdMob SDK"

    const-string v7, "Unhandled exception raised in your AdListener.onNewAd()."

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 324
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #firstAd:Z
    .end local v4           #newAdContainer:Lcom/admob/android/ads/AdContainer;
    .end local v5           #visibility:I
    :cond_3
    :try_start_6
    iget-object v6, p0, Lcom/admob/android/ads/AdView$1;->this$0:Lcom/admob/android/ads/AdView;

    const/4 v7, 0x0

    #setter for: Lcom/admob/android/ads/AdView;->requestingFreshAd:Z
    invoke-static {v6, v7}, Lcom/admob/android/ads/AdView;->access$302(Lcom/admob/android/ads/AdView;Z)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1
.end method
