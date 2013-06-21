.class Lcom/admob/android/ads/AdView$1$1;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/admob/android/ads/AdView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/admob/android/ads/AdView$1;

.field final synthetic val$firstAd:Z

.field final synthetic val$newAdContainer:Lcom/admob/android/ads/AdContainer;

.field final synthetic val$visibility:I


# direct methods
.method constructor <init>(Lcom/admob/android/ads/AdView$1;Lcom/admob/android/ads/AdContainer;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 362
    iput-object p1, p0, Lcom/admob/android/ads/AdView$1$1;->this$1:Lcom/admob/android/ads/AdView$1;

    iput-object p2, p0, Lcom/admob/android/ads/AdView$1$1;->val$newAdContainer:Lcom/admob/android/ads/AdContainer;

    iput p3, p0, Lcom/admob/android/ads/AdView$1$1;->val$visibility:I

    iput-boolean p4, p0, Lcom/admob/android/ads/AdView$1$1;->val$firstAd:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 368
    :try_start_0
    iget-object v1, p0, Lcom/admob/android/ads/AdView$1$1;->this$1:Lcom/admob/android/ads/AdView$1;

    iget-object v1, v1, Lcom/admob/android/ads/AdView$1;->this$0:Lcom/admob/android/ads/AdView;

    iget-object v2, p0, Lcom/admob/android/ads/AdView$1$1;->val$newAdContainer:Lcom/admob/android/ads/AdContainer;

    invoke-virtual {v1, v2}, Lcom/admob/android/ads/AdView;->addView(Landroid/view/View;)V

    .line 371
    iget v1, p0, Lcom/admob/android/ads/AdView$1$1;->val$visibility:I

    if-nez v1, :cond_1

    .line 373
    iget-boolean v1, p0, Lcom/admob/android/ads/AdView$1$1;->val$firstAd:Z

    if-eqz v1, :cond_0

    .line 375
    iget-object v1, p0, Lcom/admob/android/ads/AdView$1$1;->this$1:Lcom/admob/android/ads/AdView$1;

    iget-object v1, v1, Lcom/admob/android/ads/AdView$1;->this$0:Lcom/admob/android/ads/AdView;

    iget-object v2, p0, Lcom/admob/android/ads/AdView$1$1;->val$newAdContainer:Lcom/admob/android/ads/AdContainer;

    #calls: Lcom/admob/android/ads/AdView;->applyFadeIn(Lcom/admob/android/ads/AdContainer;)V
    invoke-static {v1, v2}, Lcom/admob/android/ads/AdView;->access$600(Lcom/admob/android/ads/AdView;Lcom/admob/android/ads/AdContainer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :goto_0
    iget-object v1, p0, Lcom/admob/android/ads/AdView$1$1;->this$1:Lcom/admob/android/ads/AdView$1;

    iget-object v1, v1, Lcom/admob/android/ads/AdView$1;->this$0:Lcom/admob/android/ads/AdView;

    #setter for: Lcom/admob/android/ads/AdView;->requestingFreshAd:Z
    invoke-static {v1, v3}, Lcom/admob/android/ads/AdView;->access$302(Lcom/admob/android/ads/AdView;Z)Z

    .line 397
    :goto_1
    return-void

    .line 379
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/admob/android/ads/AdView$1$1;->this$1:Lcom/admob/android/ads/AdView$1;

    iget-object v1, v1, Lcom/admob/android/ads/AdView$1;->this$0:Lcom/admob/android/ads/AdView;

    iget-object v2, p0, Lcom/admob/android/ads/AdView$1$1;->val$newAdContainer:Lcom/admob/android/ads/AdContainer;

    #calls: Lcom/admob/android/ads/AdView;->applyRotation(Lcom/admob/android/ads/AdContainer;)V
    invoke-static {v1, v2}, Lcom/admob/android/ads/AdView;->access$700(Lcom/admob/android/ads/AdView;Lcom/admob/android/ads/AdContainer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 388
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 390
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "AdMob SDK"

    const-string v2, "Unhandled exception placing AdContainer into AdView."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 395
    iget-object v1, p0, Lcom/admob/android/ads/AdView$1$1;->this$1:Lcom/admob/android/ads/AdView$1;

    iget-object v1, v1, Lcom/admob/android/ads/AdView$1;->this$0:Lcom/admob/android/ads/AdView;

    #setter for: Lcom/admob/android/ads/AdView;->requestingFreshAd:Z
    invoke-static {v1, v3}, Lcom/admob/android/ads/AdView;->access$302(Lcom/admob/android/ads/AdView;Z)Z

    goto :goto_1

    .line 385
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/admob/android/ads/AdView$1$1;->this$1:Lcom/admob/android/ads/AdView$1;

    iget-object v1, v1, Lcom/admob/android/ads/AdView$1;->this$0:Lcom/admob/android/ads/AdView;

    iget-object v2, p0, Lcom/admob/android/ads/AdView$1$1;->val$newAdContainer:Lcom/admob/android/ads/AdContainer;

    #setter for: Lcom/admob/android/ads/AdView;->ad:Lcom/admob/android/ads/AdContainer;
    invoke-static {v1, v2}, Lcom/admob/android/ads/AdView;->access$202(Lcom/admob/android/ads/AdView;Lcom/admob/android/ads/AdContainer;)Lcom/admob/android/ads/AdContainer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 395
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/admob/android/ads/AdView$1$1;->this$1:Lcom/admob/android/ads/AdView$1;

    iget-object v2, v2, Lcom/admob/android/ads/AdView$1;->this$0:Lcom/admob/android/ads/AdView;

    #setter for: Lcom/admob/android/ads/AdView;->requestingFreshAd:Z
    invoke-static {v2, v3}, Lcom/admob/android/ads/AdView;->access$302(Lcom/admob/android/ads/AdView;Z)Z

    throw v1
.end method
