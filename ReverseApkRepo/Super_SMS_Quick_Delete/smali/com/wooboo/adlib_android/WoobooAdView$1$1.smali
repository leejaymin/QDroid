.class Lcom/wooboo/adlib_android/WoobooAdView$1$1;
.super Ljava/lang/Object;
.source "WoobooAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wooboo/adlib_android/WoobooAdView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wooboo/adlib_android/WoobooAdView$1;

.field private final synthetic val$firstAd:Z

.field private final synthetic val$newAdContainer:Lcom/wooboo/adlib_android/_;

.field private final synthetic val$visibility:I


# direct methods
.method constructor <init>(Lcom/wooboo/adlib_android/WoobooAdView$1;Lcom/wooboo/adlib_android/_;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wooboo/adlib_android/WoobooAdView$1$1;->this$1:Lcom/wooboo/adlib_android/WoobooAdView$1;

    iput-object p2, p0, Lcom/wooboo/adlib_android/WoobooAdView$1$1;->val$newAdContainer:Lcom/wooboo/adlib_android/_;

    iput p3, p0, Lcom/wooboo/adlib_android/WoobooAdView$1$1;->val$visibility:I

    iput-boolean p4, p0, Lcom/wooboo/adlib_android/WoobooAdView$1$1;->val$firstAd:Z

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 255
    :try_start_0
    iget-object v1, p0, Lcom/wooboo/adlib_android/WoobooAdView$1$1;->this$1:Lcom/wooboo/adlib_android/WoobooAdView$1;

    #getter for: Lcom/wooboo/adlib_android/WoobooAdView$1;->this$0:Lcom/wooboo/adlib_android/WoobooAdView;
    invoke-static {v1}, Lcom/wooboo/adlib_android/WoobooAdView$1;->access$0(Lcom/wooboo/adlib_android/WoobooAdView$1;)Lcom/wooboo/adlib_android/WoobooAdView;

    move-result-object v1

    iget-object v2, p0, Lcom/wooboo/adlib_android/WoobooAdView$1$1;->val$newAdContainer:Lcom/wooboo/adlib_android/_;

    invoke-virtual {v1, v2}, Lcom/wooboo/adlib_android/WoobooAdView;->addView(Landroid/view/View;)V

    .line 256
    iget v1, p0, Lcom/wooboo/adlib_android/WoobooAdView$1$1;->val$visibility:I

    if-nez v1, :cond_1

    .line 257
    iget-object v1, p0, Lcom/wooboo/adlib_android/WoobooAdView$1$1;->val$newAdContainer:Lcom/wooboo/adlib_android/_;

    .line 258
    invoke-virtual {v1}, Lcom/wooboo/adlib_android/_;->startGIFShow()V

    .line 259
    iget-boolean v1, p0, Lcom/wooboo/adlib_android/WoobooAdView$1$1;->val$firstAd:Z

    if-eqz v1, :cond_0

    .line 260
    iget-object v1, p0, Lcom/wooboo/adlib_android/WoobooAdView$1$1;->this$1:Lcom/wooboo/adlib_android/WoobooAdView$1;

    #getter for: Lcom/wooboo/adlib_android/WoobooAdView$1;->this$0:Lcom/wooboo/adlib_android/WoobooAdView;
    invoke-static {v1}, Lcom/wooboo/adlib_android/WoobooAdView$1;->access$0(Lcom/wooboo/adlib_android/WoobooAdView$1;)Lcom/wooboo/adlib_android/WoobooAdView;

    move-result-object v1

    iget-object v2, p0, Lcom/wooboo/adlib_android/WoobooAdView$1$1;->val$newAdContainer:Lcom/wooboo/adlib_android/_;

    #calls: Lcom/wooboo/adlib_android/WoobooAdView;->applyFadeIn(Lcom/wooboo/adlib_android/_;)V
    invoke-static {v1, v2}, Lcom/wooboo/adlib_android/WoobooAdView;->access$5(Lcom/wooboo/adlib_android/WoobooAdView;Lcom/wooboo/adlib_android/_;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :goto_0
    iget-object v1, p0, Lcom/wooboo/adlib_android/WoobooAdView$1$1;->this$1:Lcom/wooboo/adlib_android/WoobooAdView$1;

    #getter for: Lcom/wooboo/adlib_android/WoobooAdView$1;->this$0:Lcom/wooboo/adlib_android/WoobooAdView;
    invoke-static {v1}, Lcom/wooboo/adlib_android/WoobooAdView$1;->access$0(Lcom/wooboo/adlib_android/WoobooAdView$1;)Lcom/wooboo/adlib_android/WoobooAdView;

    move-result-object v1

    iput-boolean v3, v1, Lcom/wooboo/adlib_android/WoobooAdView;->requestingFreshAd:Z

    .line 273
    :goto_1
    return-void

    .line 262
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/wooboo/adlib_android/WoobooAdView$1$1;->this$1:Lcom/wooboo/adlib_android/WoobooAdView$1;

    #getter for: Lcom/wooboo/adlib_android/WoobooAdView$1;->this$0:Lcom/wooboo/adlib_android/WoobooAdView;
    invoke-static {v1}, Lcom/wooboo/adlib_android/WoobooAdView$1;->access$0(Lcom/wooboo/adlib_android/WoobooAdView$1;)Lcom/wooboo/adlib_android/WoobooAdView;

    move-result-object v1

    iget-object v2, p0, Lcom/wooboo/adlib_android/WoobooAdView$1$1;->val$newAdContainer:Lcom/wooboo/adlib_android/_;

    #calls: Lcom/wooboo/adlib_android/WoobooAdView;->applyRotation(Lcom/wooboo/adlib_android/_;)V
    invoke-static {v1, v2}, Lcom/wooboo/adlib_android/WoobooAdView;->access$6(Lcom/wooboo/adlib_android/WoobooAdView;Lcom/wooboo/adlib_android/_;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 268
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 269
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "Wooboo SDK"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 271
    iget-object v1, p0, Lcom/wooboo/adlib_android/WoobooAdView$1$1;->this$1:Lcom/wooboo/adlib_android/WoobooAdView$1;

    #getter for: Lcom/wooboo/adlib_android/WoobooAdView$1;->this$0:Lcom/wooboo/adlib_android/WoobooAdView;
    invoke-static {v1}, Lcom/wooboo/adlib_android/WoobooAdView$1;->access$0(Lcom/wooboo/adlib_android/WoobooAdView$1;)Lcom/wooboo/adlib_android/WoobooAdView;

    move-result-object v1

    iput-boolean v3, v1, Lcom/wooboo/adlib_android/WoobooAdView;->requestingFreshAd:Z

    goto :goto_1

    .line 265
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/wooboo/adlib_android/WoobooAdView$1$1;->this$1:Lcom/wooboo/adlib_android/WoobooAdView$1;

    #getter for: Lcom/wooboo/adlib_android/WoobooAdView$1;->this$0:Lcom/wooboo/adlib_android/WoobooAdView;
    invoke-static {v1}, Lcom/wooboo/adlib_android/WoobooAdView$1;->access$0(Lcom/wooboo/adlib_android/WoobooAdView$1;)Lcom/wooboo/adlib_android/WoobooAdView;

    move-result-object v1

    iget-object v2, p0, Lcom/wooboo/adlib_android/WoobooAdView$1$1;->val$newAdContainer:Lcom/wooboo/adlib_android/_;

    #setter for: Lcom/wooboo/adlib_android/WoobooAdView;->ad:Lcom/wooboo/adlib_android/_;
    invoke-static {v1, v2}, Lcom/wooboo/adlib_android/WoobooAdView;->access$1(Lcom/wooboo/adlib_android/WoobooAdView;Lcom/wooboo/adlib_android/_;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 270
    :catchall_0
    move-exception v1

    .line 271
    iget-object v2, p0, Lcom/wooboo/adlib_android/WoobooAdView$1$1;->this$1:Lcom/wooboo/adlib_android/WoobooAdView$1;

    #getter for: Lcom/wooboo/adlib_android/WoobooAdView$1;->this$0:Lcom/wooboo/adlib_android/WoobooAdView;
    invoke-static {v2}, Lcom/wooboo/adlib_android/WoobooAdView$1;->access$0(Lcom/wooboo/adlib_android/WoobooAdView$1;)Lcom/wooboo/adlib_android/WoobooAdView;

    move-result-object v2

    iput-boolean v3, v2, Lcom/wooboo/adlib_android/WoobooAdView;->requestingFreshAd:Z

    .line 272
    throw v1
.end method
