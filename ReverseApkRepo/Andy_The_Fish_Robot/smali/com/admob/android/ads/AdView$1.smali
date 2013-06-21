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
    .line 310
    iput-object p1, p0, Lcom/admob/android/ads/AdView$1;->this$0:Lcom/admob/android/ads/AdView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const-string v9, "AdMob SDK"

    .line 316
    :try_start_0
    iget-object v7, p0, Lcom/admob/android/ads/AdView$1;->this$0:Lcom/admob/android/ads/AdView;

    invoke-virtual {v7}, Lcom/admob/android/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 317
    .local v0, context:Landroid/content/Context;
    iget-object v7, p0, Lcom/admob/android/ads/AdView$1;->this$0:Lcom/admob/android/ads/AdView;

    #getter for: Lcom/admob/android/ads/AdView;->keywords:Ljava/lang/String;
    invoke-static {v7}, Lcom/admob/android/ads/AdView;->access$000(Lcom/admob/android/ads/AdView;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/admob/android/ads/AdView$1;->this$0:Lcom/admob/android/ads/AdView;

    #getter for: Lcom/admob/android/ads/AdView;->searchQuery:Ljava/lang/String;
    invoke-static {v8}, Lcom/admob/android/ads/AdView;->access$100(Lcom/admob/android/ads/AdView;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v7, v8}, Lcom/admob/android/ads/AdRequester;->requestAd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/admob/android/ads/Ad;

    move-result-object v3

    .line 319
    .local v3, newAd:Lcom/admob/android/ads/Ad;
    if-eqz v3, :cond_4

    .line 321
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :try_start_1
    iget-object v7, p0, Lcom/admob/android/ads/AdView$1;->this$0:Lcom/admob/android/ads/AdView;

    #getter for: Lcom/admob/android/ads/AdView;->ad:Lcom/admob/android/ads/AdContainer;
    invoke-static {v7}, Lcom/admob/android/ads/AdView;->access$200(Lcom/admob/android/ads/AdView;)Lcom/admob/android/ads/AdContainer;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/admob/android/ads/AdView$1;->this$0:Lcom/admob/android/ads/AdView;

    #getter for: Lcom/admob/android/ads/AdView;->ad:Lcom/admob/android/ads/AdContainer;
    invoke-static {v7}, Lcom/admob/android/ads/AdView;->access$200(Lcom/admob/android/ads/AdView;)Lcom/admob/android/ads/AdContainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/admob/android/ads/AdContainer;->getAd()Lcom/admob/android/ads/Ad;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/admob/android/ads/Ad;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/admob/android/ads/AdManager;->isInTestMode()Z

    move-result v7

    if-nez v7, :cond_1

    .line 327
    const-string v7, "AdMob SDK"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 329
    const-string v7, "AdMob SDK"

    const-string v8, "Received the same ad we already had.  Discarding it."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_0
    iget-object v7, p0, Lcom/admob/android/ads/AdView$1;->this$0:Lcom/admob/android/ads/AdView;

    const/4 v8, 0x0

    #setter for: Lcom/admob/android/ads/AdView;->requestingFreshAd:Z
    invoke-static {v7, v8}, Lcom/admob/android/ads/AdView;->access$302(Lcom/admob/android/ads/AdView;Z)Z

    .line 401
    :goto_0
    monitor-exit p0

    .line 426
    .end local v0           #context:Landroid/content/Context;
    .end local v3           #newAd:Lcom/admob/android/ads/Ad;
    :goto_1
    return-void

    .line 337
    .restart local v0       #context:Landroid/content/Context;
    .restart local v3       #newAd:Lcom/admob/android/ads/Ad;
    :cond_1
    iget-object v7, p0, Lcom/admob/android/ads/AdView$1;->this$0:Lcom/admob/android/ads/AdView;

    #getter for: Lcom/admob/android/ads/AdView;->ad:Lcom/admob/android/ads/AdContainer;
    invoke-static {v7}, Lcom/admob/android/ads/AdView;->access$200(Lcom/admob/android/ads/AdView;)Lcom/admob/android/ads/AdContainer;

    move-result-object v7

    if-nez v7, :cond_3

    const/4 v7, 0x1

    move v2, v7

    .line 338
    .local v2, firstAd:Z
    :goto_2
    iget-object v7, p0, Lcom/admob/android/ads/AdView$1;->this$0:Lcom/admob/android/ads/AdView;

    #calls: Landroid/view/View;->getVisibility()I
    invoke-static {v7}, Lcom/admob/android/ads/AdView;->access$401(Lcom/admob/android/ads/AdView;)I

    move-result v6

    .line 340
    .local v6, visibility:I
    new-instance v4, Lcom/admob/android/ads/AdContainer;

    invoke-direct {v4, v3, v0}, Lcom/admob/android/ads/AdContainer;-><init>(Lcom/admob/android/ads/Ad;Landroid/content/Context;)V

    .line 341
    .local v4, newAdContainer:Lcom/admob/android/ads/AdContainer;
    iget-object v7, p0, Lcom/admob/android/ads/AdView$1;->this$0:Lcom/admob/android/ads/AdView;

    invoke-virtual {v7}, Lcom/admob/android/ads/AdView;->getBackgroundColor()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/admob/android/ads/AdContainer;->setBackgroundColor(I)V

    .line 342
    iget-object v7, p0, Lcom/admob/android/ads/AdView$1;->this$0:Lcom/admob/android/ads/AdView;

    invoke-virtual {v7}, Lcom/admob/android/ads/AdView;->getTextColor()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/admob/android/ads/AdContainer;->setTextColor(I)V

    .line 343
    invoke-virtual {v4, v6}, Lcom/admob/android/ads/AdContainer;->setVisibility(I)V

    .line 344
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x1

    const/16 v8, 0x30

    invoke-direct {v5, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 345
    .local v5, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v4, v5}, Lcom/admob/android/ads/AdContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    iget-object v7, p0, Lcom/admob/android/ads/AdView$1;->this$0:Lcom/admob/android/ads/AdView;

    #getter for: Lcom/admob/android/ads/AdView;->listener:Lcom/admob/android/ads/AdView$AdListener;
    invoke-static {v7}, Lcom/admob/android/ads/AdView;->access$500(Lcom/admob/android/ads/AdView;)Lcom/admob/android/ads/AdView$AdListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    if-eqz v7, :cond_2

    .line 352
    :try_start_2
    iget-object v7, p0, Lcom/admob/android/ads/AdView$1;->this$0:Lcom/admob/android/ads/AdView;

    #getter for: Lcom/admob/android/ads/AdView;->listener:Lcom/admob/android/ads/AdView$AdListener;
    invoke-static {v7}, Lcom/admob/android/ads/AdView;->access$500(Lcom/admob/android/ads/AdView;)Lcom/admob/android/ads/AdView$AdListener;

    move-result-object v7

    invoke-interface {v7}, Lcom/admob/android/ads/AdView$AdListener;->onNewAd()V

    .line 353
    iget-object v7, p0, Lcom/admob/android/ads/AdView$1;->this$0:Lcom/admob/android/ads/AdView;

    #getter for: Lcom/admob/android/ads/AdView;->listener:Lcom/admob/android/ads/AdView$AdListener;
    invoke-static {v7}, Lcom/admob/android/ads/AdView;->access$500(Lcom/admob/android/ads/AdView;)Lcom/admob/android/ads/AdView$AdListener;

    move-result-object v7

    iget-object v8, p0, Lcom/admob/android/ads/AdView$1;->this$0:Lcom/admob/android/ads/AdView;

    invoke-interface {v7, v8}, Lcom/admob/android/ads/AdView$AdListener;->onReceiveAd(Lcom/admob/android/ads/AdView;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 362
    :cond_2
    :goto_3
    :try_start_3
    invoke-static {}, Lcom/admob/android/ads/AdView;->access$800()Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Lcom/admob/android/ads/AdView$1$1;

    invoke-direct {v8, p0, v4, v6, v2}, Lcom/admob/android/ads/AdView$1$1;-><init>(Lcom/admob/android/ads/AdView$1;Lcom/admob/android/ads/AdContainer;IZ)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 401
    .end local v2           #firstAd:Z
    .end local v4           #newAdContainer:Lcom/admob/android/ads/AdContainer;
    .end local v5           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v6           #visibility:I
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 421
    .end local v0           #context:Landroid/content/Context;
    .end local v3           #newAd:Lcom/admob/android/ads/Ad;
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 423
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "AdMob SDK"

    const-string v7, "Unhandled exception requesting a fresh ad."

    invoke-static {v9, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 424
    iget-object v7, p0, Lcom/admob/android/ads/AdView$1;->this$0:Lcom/admob/android/ads/AdView;

    #setter for: Lcom/admob/android/ads/AdView;->requestingFreshAd:Z
    invoke-static {v7, v10}, Lcom/admob/android/ads/AdView;->access$302(Lcom/admob/android/ads/AdView;Z)Z

    goto :goto_1

    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #context:Landroid/content/Context;
    .restart local v3       #newAd:Lcom/admob/android/ads/Ad;
    :cond_3
    move v2, v10

    .line 337
    goto :goto_2

    .line 355
    .restart local v2       #firstAd:Z
    .restart local v4       #newAdContainer:Lcom/admob/android/ads/AdContainer;
    .restart local v5       #params:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v6       #visibility:I
    :catch_1
    move-exception v7

    move-object v1, v7

    .line 357
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_5
    const-string v7, "AdMob SDK"

    const-string v8, "Unhandled exception raised in your AdListener.onReceiveAd."

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 406
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #firstAd:Z
    .end local v4           #newAdContainer:Lcom/admob/android/ads/AdContainer;
    .end local v5           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v6           #visibility:I
    :cond_4
    :try_start_6
    iget-object v7, p0, Lcom/admob/android/ads/AdView$1;->this$0:Lcom/admob/android/ads/AdView;

    #getter for: Lcom/admob/android/ads/AdView;->listener:Lcom/admob/android/ads/AdView$AdListener;
    invoke-static {v7}, Lcom/admob/android/ads/AdView;->access$500(Lcom/admob/android/ads/AdView;)Lcom/admob/android/ads/AdView$AdListener;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v7

    if-eqz v7, :cond_5

    .line 410
    :try_start_7
    iget-object v7, p0, Lcom/admob/android/ads/AdView$1;->this$0:Lcom/admob/android/ads/AdView;

    #getter for: Lcom/admob/android/ads/AdView;->listener:Lcom/admob/android/ads/AdView$AdListener;
    invoke-static {v7}, Lcom/admob/android/ads/AdView;->access$500(Lcom/admob/android/ads/AdView;)Lcom/admob/android/ads/AdView$AdListener;

    move-result-object v7

    iget-object v8, p0, Lcom/admob/android/ads/AdView$1;->this$0:Lcom/admob/android/ads/AdView;

    invoke-interface {v7, v8}, Lcom/admob/android/ads/AdView$AdListener;->onFailedToReceiveAd(Lcom/admob/android/ads/AdView;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 418
    :cond_5
    :goto_4
    :try_start_8
    iget-object v7, p0, Lcom/admob/android/ads/AdView$1;->this$0:Lcom/admob/android/ads/AdView;

    const/4 v8, 0x0

    #setter for: Lcom/admob/android/ads/AdView;->requestingFreshAd:Z
    invoke-static {v7, v8}, Lcom/admob/android/ads/AdView;->access$302(Lcom/admob/android/ads/AdView;Z)Z

    goto/16 :goto_1

    .line 412
    :catch_2
    move-exception v7

    move-object v1, v7

    .line 414
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v7, "AdMob SDK"

    const-string v8, "Unhandled exception raised in your AdListener.onFailedToReceiveAd."

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_4
.end method
