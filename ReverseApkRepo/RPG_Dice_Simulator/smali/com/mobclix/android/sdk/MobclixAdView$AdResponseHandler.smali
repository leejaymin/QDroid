.class Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;
.super Landroid/os/Handler;
.source "MobclixAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdResponseHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobclix/android/sdk/MobclixAdView;


# direct methods
.method private constructor <init>(Lcom/mobclix/android/sdk/MobclixAdView;)V
    .locals 0
    .parameter

    .prologue
    .line 419
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mobclix/android/sdk/MobclixAdView;Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 419
    invoke-direct {p0, p1}, Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;-><init>(Lcom/mobclix/android/sdk/MobclixAdView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 421
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 422
    .local v3, type:Ljava/lang/String;
    const-string v4, "success"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 423
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v4, v4, Lcom/mobclix/android/sdk/MobclixAdView;->ad:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 424
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v5, v5, Lcom/mobclix/android/sdk/MobclixAdView;->ad:Landroid/view/View;

    iput-object v5, v4, Lcom/mobclix/android/sdk/MobclixAdView;->prevAd:Landroid/view/View;

    .line 425
    :cond_0
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v4, v4, Lcom/mobclix/android/sdk/MobclixAdView;->creative:Lcom/mobclix/android/sdk/MobclixCreative;

    if-eqz v4, :cond_1

    .line 426
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v5, v5, Lcom/mobclix/android/sdk/MobclixAdView;->creative:Lcom/mobclix/android/sdk/MobclixCreative;

    iput-object v5, v4, Lcom/mobclix/android/sdk/MobclixAdView;->prevCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    .line 427
    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "response"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 428
    .local v2, response:Ljava/lang/String;
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    new-instance v5, Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v2, v7}, Lcom/mobclix/android/sdk/MobclixCreative;-><init>(Lcom/mobclix/android/sdk/MobclixAdView;Ljava/lang/String;Z)V

    iput-object v5, v4, Lcom/mobclix/android/sdk/MobclixAdView;->creative:Lcom/mobclix/android/sdk/MobclixCreative;

    .line 436
    .end local v2           #response:Ljava/lang/String;
    :cond_2
    return-void

    .line 429
    :cond_3
    const-string v4, "failure"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 430
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "errorCode"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 431
    .local v0, errorCode:I
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v4, v4, Lcom/mobclix/android/sdk/MobclixAdView;->listeners:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobclix/android/sdk/MobclixAdViewListener;

    .line 432
    .local v1, listener:Lcom/mobclix/android/sdk/MobclixAdViewListener;
    if-eqz v1, :cond_4

    .line 433
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixAdView$AdResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-interface {v1, v5, v0}, Lcom/mobclix/android/sdk/MobclixAdViewListener;->onFailedLoad(Lcom/mobclix/android/sdk/MobclixAdView;I)V

    goto :goto_0
.end method
