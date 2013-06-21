.class Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;
.super Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;
.source "MobclixAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FetchAdResponseThread"
.end annotation


# instance fields
.field nextRequestParams:Ljava/lang/String;

.field final synthetic this$0:Lcom/mobclix/android/sdk/MobclixAdView;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixAdView;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter "h"

    .prologue
    .line 388
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    .line 387
    const-string v0, ""

    invoke-direct {p0, v0, p2}, Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    .line 384
    const-string v0, ""

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->nextRequestParams:Ljava/lang/String;

    return-void
.end method

.method private getAdUrl()Ljava/lang/String;
    .locals 10

    .prologue
    .line 417
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 418
    .local v0, data:Ljava/lang/StringBuffer;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 419
    .local v3, keywordsBuffer:Ljava/lang/StringBuffer;
    const-string v2, ""

    .line 420
    .local v2, keywords:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 421
    .local v6, queryBuffer:Ljava/lang/StringBuffer;
    const-string v5, ""

    .line 423
    .local v5, query:Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v7, v7, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v7}, Lcom/mobclix/android/sdk/Mobclix;->getAdServer()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 424
    const-string v7, "?p=android"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 425
    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v7, v7, Lcom/mobclix/android/sdk/MobclixAdView;->adCode:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 426
    const-string v7, "&i="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v8, v8, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v8}, Lcom/mobclix/android/sdk/Mobclix;->getApplicationId()Ljava/lang/String;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 427
    const-string v7, "&s="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v8, v8, Lcom/mobclix/android/sdk/MobclixAdView;->size:Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 431
    :goto_0
    const-string v7, "&av="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v8, v8, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v8}, Lcom/mobclix/android/sdk/Mobclix;->getApplicationVersion()Ljava/lang/String;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 432
    const-string v7, "&u="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v8, v8, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v8}, Lcom/mobclix/android/sdk/Mobclix;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 433
    const-string v7, "&andid="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v8, v8, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v8}, Lcom/mobclix/android/sdk/Mobclix;->getAndroidId()Ljava/lang/String;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 434
    const-string v7, "&v="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v8, v8, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v8}, Lcom/mobclix/android/sdk/Mobclix;->getMobclixVersion()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 435
    const-string v7, "&ct="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v8, v8, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v8}, Lcom/mobclix/android/sdk/Mobclix;->getConnectionType()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 436
    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v7, v7, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v7}, Lcom/mobclix/android/sdk/Mobclix;->getGPS()Ljava/lang/String;

    move-result-object v7

    const-string v8, "null"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 437
    const-string v7, "&ll="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v8, v8, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v8}, Lcom/mobclix/android/sdk/Mobclix;->getGPS()Ljava/lang/String;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 439
    :cond_0
    const-string v7, "&l="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v8, v8, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v8}, Lcom/mobclix/android/sdk/Mobclix;->getLocale()Ljava/lang/String;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 440
    const-string v7, "&dt="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 441
    const-string v7, "&sv="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v8, v8, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v8}, Lcom/mobclix/android/sdk/Mobclix;->getAndroidVersion()Ljava/lang/String;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 442
    const-string v7, "&ua="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v8, v8, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v8}, Lcom/mobclix/android/sdk/Mobclix;->getUserAgent()Ljava/lang/String;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 443
    const-string v7, "&o="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget v8, v8, Lcom/mobclix/android/sdk/MobclixAdView;->ordinal:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 444
    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget v8, v7, Lcom/mobclix/android/sdk/MobclixAdView;->ordinal:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/mobclix/android/sdk/MobclixAdView;->ordinal:I

    .line 445
    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget v7, v7, Lcom/mobclix/android/sdk/MobclixAdView;->allowAutoplay:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    .line 446
    const-string v7, "&ap=1"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 450
    :goto_1
    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    #getter for: Lcom/mobclix/android/sdk/MobclixAdView;->adSpace:Ljava/lang/String;
    invoke-static {v7}, Lcom/mobclix/android/sdk/MobclixAdView;->access$2(Lcom/mobclix/android/sdk/MobclixAdView;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    #getter for: Lcom/mobclix/android/sdk/MobclixAdView;->adSpace:Ljava/lang/String;
    invoke-static {v7}, Lcom/mobclix/android/sdk/MobclixAdView;->access$2(Lcom/mobclix/android/sdk/MobclixAdView;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 451
    const-string v7, "&as="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    #getter for: Lcom/mobclix/android/sdk/MobclixAdView;->adSpace:Ljava/lang/String;
    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixAdView;->access$2(Lcom/mobclix/android/sdk/MobclixAdView;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 453
    :cond_1
    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-boolean v7, v7, Lcom/mobclix/android/sdk/MobclixAdView;->testMode:Z

    if-eqz v7, :cond_2

    .line 454
    const-string v7, "&t=1"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 457
    :cond_2
    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v7, v7, Lcom/mobclix/android/sdk/MobclixAdView;->listeners:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_9

    .line 481
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 482
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 483
    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 484
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 485
    :cond_5
    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->nextRequestParams:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 486
    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->nextRequestParams:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 487
    :cond_6
    const-string v7, ""

    iput-object v7, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->nextRequestParams:Ljava/lang/String;

    .line 491
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 496
    :goto_3
    return-object v7

    .line 429
    :cond_7
    const-string v7, "&a="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v8, v8, Lcom/mobclix/android/sdk/MobclixAdView;->adCode:Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 492
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 496
    .local v1, e:Ljava/lang/Exception;
    const-string v7, ""

    goto :goto_3

    .line 448
    .end local v1           #e:Ljava/lang/Exception;
    :cond_8
    :try_start_1
    const-string v7, "&ap=0"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 457
    :cond_9
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mobclix/android/sdk/MobclixAdViewListener;

    .line 458
    .local v4, listener:Lcom/mobclix/android/sdk/MobclixAdViewListener;
    if-eqz v4, :cond_a

    .line 459
    invoke-interface {v4}, Lcom/mobclix/android/sdk/MobclixAdViewListener;->keywords()Ljava/lang/String;

    move-result-object v2

    .line 460
    :cond_a
    if-nez v2, :cond_b

    .line 461
    const-string v2, ""

    .line 462
    :cond_b
    const-string v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 463
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-nez v8, :cond_e

    .line 464
    const-string v8, "&k="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-static {v2, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 469
    :cond_c
    :goto_4
    invoke-interface {v4}, Lcom/mobclix/android/sdk/MobclixAdViewListener;->query()Ljava/lang/String;

    move-result-object v5

    .line 470
    if-nez v5, :cond_d

    .line 471
    const-string v5, ""

    .line 472
    :cond_d
    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 473
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-nez v8, :cond_f

    .line 474
    const-string v8, "&q="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-static {v5, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 466
    :cond_e
    const-string v8, "%2C"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-static {v2, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 476
    :cond_f
    const-string v8, "%2B"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-static {v2, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 392
    :try_start_0
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixAdView;->context:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 394
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 395
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 396
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 397
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 398
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixAdView;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 399
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    const/4 v2, 0x0

    iput v2, v1, Lcom/mobclix/android/sdk/MobclixAdView;->ordinal:I

    .line 400
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    #calls: Lcom/mobclix/android/sdk/MobclixAdView;->stopFetchAdRequestTimer()V
    invoke-static {v1}, Lcom/mobclix/android/sdk/MobclixAdView;->access$1(Lcom/mobclix/android/sdk/MobclixAdView;)V

    .line 401
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->this$0:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    iget-object v1, v1, Lcom/mobclix/android/sdk/Mobclix;->location:Lcom/mobclix/android/sdk/MobclixLocation;

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/MobclixLocation;->stopLocation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    .end local v0           #am:Landroid/app/ActivityManager;
    :goto_0
    return-void

    .line 404
    :catch_0
    move-exception v1

    .line 406
    :cond_0
    invoke-direct {p0}, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->getAdUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->setUrl(Ljava/lang/String;)V

    .line 407
    invoke-super {p0}, Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;->run()V

    goto :goto_0
.end method

.method setNextRequestParams(Ljava/lang/String;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 412
    if-nez p1, :cond_0

    .line 413
    const-string p1, ""

    .line 414
    :cond_0
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixAdView$FetchAdResponseThread;->nextRequestParams:Ljava/lang/String;

    .line 415
    return-void
.end method
