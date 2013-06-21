.class Lcom/mopub/mobileads/AdView$LoadUrlTask;
.super Landroid/os/AsyncTask;
.source "AdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadUrlTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/mopub/mobileads/AdView$LoadUrlTaskResult;",
        ">;"
    }
.end annotation


# instance fields
.field private mAdView:Lcom/mopub/mobileads/AdView;

.field private mException:Ljava/lang/Exception;

.field private mHttpClient:Lorg/apache/http/client/HttpClient;

.field private mUserAgent:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/mopub/mobileads/AdView;)V
    .locals 2
    .parameter "adView"

    .prologue
    .line 365
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 366
    iput-object p1, p0, Lcom/mopub/mobileads/AdView$LoadUrlTask;->mAdView:Lcom/mopub/mobileads/AdView;

    .line 367
    #getter for: Lcom/mopub/mobileads/AdView;->mUserAgent:Ljava/lang/String;
    invoke-static {p1}, Lcom/mopub/mobileads/AdView;->access$600(Lcom/mopub/mobileads/AdView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    #getter for: Lcom/mopub/mobileads/AdView;->mUserAgent:Ljava/lang/String;
    invoke-static {p1}, Lcom/mopub/mobileads/AdView;->access$600(Lcom/mopub/mobileads/AdView;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object v0, p0, Lcom/mopub/mobileads/AdView$LoadUrlTask;->mUserAgent:Ljava/lang/String;

    .line 368
    #calls: Lcom/mopub/mobileads/AdView;->getAdViewHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-static {p1}, Lcom/mopub/mobileads/AdView;->access$700(Lcom/mopub/mobileads/AdView;)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/AdView$LoadUrlTask;->mHttpClient:Lorg/apache/http/client/HttpClient;

    .line 369
    return-void

    .line 367
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/mopub/mobileads/AdView;Lcom/mopub/mobileads/AdView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 359
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/AdView$LoadUrlTask;-><init>(Lcom/mopub/mobileads/AdView;)V

    return-void
.end method

.method private loadAdFromNetwork(Ljava/lang/String;)Lcom/mopub/mobileads/AdView$LoadUrlTaskResult;
    .locals 17
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 382
    new-instance v6, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 383
    .local v6, httpget:Lorg/apache/http/client/methods/HttpGet;
    const-string v13, "User-Agent"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mopub/mobileads/AdView$LoadUrlTask;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v6, v13, v14}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    monitor-enter p0

    .line 386
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mopub/mobileads/AdView$LoadUrlTask;->mAdView:Lcom/mopub/mobileads/AdView;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mopub/mobileads/AdView$LoadUrlTask;->mAdView:Lcom/mopub/mobileads/AdView;

    invoke-virtual {v13}, Lcom/mopub/mobileads/AdView;->isDestroyed()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 387
    :cond_0
    const-string v13, "MoPub"

    const-string v14, "Error loading ad: AdView has already been GCed or destroyed."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const/4 v13, 0x0

    monitor-exit p0

    .line 454
    :goto_0
    return-object v13

    .line 391
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mopub/mobileads/AdView$LoadUrlTask;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v13, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v12

    .line 392
    .local v12, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 394
    .local v4, entity:Lorg/apache/http/HttpEntity;
    if-eqz v12, :cond_2

    if-eqz v4, :cond_2

    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v13

    const/16 v14, 0xc8

    if-eq v13, v14, :cond_3

    .line 396
    :cond_2
    const-string v13, "MoPub"

    const-string v14, "MoPub server returned invalid response."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const/4 v13, 0x0

    monitor-exit p0

    goto :goto_0

    .line 455
    .end local v4           #entity:Lorg/apache/http/HttpEntity;
    .end local v12           #response:Lorg/apache/http/HttpResponse;
    :catchall_0
    move-exception v13

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    .line 400
    .restart local v4       #entity:Lorg/apache/http/HttpEntity;
    .restart local v12       #response:Lorg/apache/http/HttpResponse;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mopub/mobileads/AdView$LoadUrlTask;->mAdView:Lcom/mopub/mobileads/AdView;

    #calls: Lcom/mopub/mobileads/AdView;->configureAdViewUsingHeadersFromHttpResponse(Lorg/apache/http/HttpResponse;)V
    invoke-static {v13, v12}, Lcom/mopub/mobileads/AdView;->access$800(Lcom/mopub/mobileads/AdView;Lorg/apache/http/HttpResponse;)V

    .line 403
    const-string v13, "X-Adtype"

    invoke-interface {v12, v13}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 404
    .local v1, atHeader:Lorg/apache/http/Header;
    if-eqz v1, :cond_4

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v13

    const-string v14, "clear"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 405
    :cond_4
    const-string v13, "MoPub"

    const-string v14, "MoPub server returned no ad."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const/4 v13, 0x0

    monitor-exit p0

    goto :goto_0

    .line 410
    :cond_5
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v13

    const-string v14, "custom"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 411
    const-string v13, "MoPub"

    const-string v14, "Performing custom event."

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const-string v13, "X-Customselector"

    invoke-interface {v12, v13}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    .line 413
    .local v3, cmHeader:Lorg/apache/http/Header;
    new-instance v13, Lcom/mopub/mobileads/AdView$PerformCustomEventTaskResult;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mopub/mobileads/AdView$LoadUrlTask;->mAdView:Lcom/mopub/mobileads/AdView;

    invoke-direct {v13, v14, v3}, Lcom/mopub/mobileads/AdView$PerformCustomEventTaskResult;-><init>(Lcom/mopub/mobileads/AdView;Lorg/apache/http/Header;)V

    monitor-exit p0

    goto :goto_0

    .line 415
    .end local v3           #cmHeader:Lorg/apache/http/Header;
    :cond_6
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v13

    const-string v14, "mraid"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 416
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 417
    .local v11, paramsHash:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v13, "X-Adtype"

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v7

    .line 420
    .local v7, is:Ljava/io/InputStream;
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 421
    .local v10, out:Ljava/lang/StringBuffer;
    const/16 v13, 0x1000

    new-array v2, v13, [B

    .line 422
    .local v2, b:[B
    :goto_1
    invoke-virtual {v7, v2}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .local v8, n:I
    const/4 v13, -0x1

    if-eq v8, v13, :cond_7

    .line 423
    new-instance v13, Ljava/lang/String;

    const/4 v14, 0x0

    invoke-direct {v13, v2, v14, v8}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 425
    :cond_7
    const-string v13, "X-Nativeparams"

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    new-instance v13, Lcom/mopub/mobileads/AdView$LoadNativeAdTaskResult;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mopub/mobileads/AdView$LoadUrlTask;->mAdView:Lcom/mopub/mobileads/AdView;

    const/4 v15, 0x0

    invoke-direct {v13, v14, v11, v15}, Lcom/mopub/mobileads/AdView$LoadNativeAdTaskResult;-><init>(Lcom/mopub/mobileads/AdView;Ljava/util/HashMap;Lcom/mopub/mobileads/AdView$1;)V

    monitor-exit p0

    goto/16 :goto_0

    .line 429
    .end local v2           #b:[B
    .end local v7           #is:Ljava/io/InputStream;
    .end local v8           #n:I
    .end local v10           #out:Ljava/lang/StringBuffer;
    .end local v11           #paramsHash:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_8
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v13

    const-string v14, "html"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b

    .line 430
    const-string v13, "MoPub"

    const-string v14, "Loading native ad"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 433
    .restart local v11       #paramsHash:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v13, "X-Adtype"

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    const-string v13, "X-Nativeparams"

    invoke-interface {v12, v13}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v9

    .line 436
    .local v9, npHeader:Lorg/apache/http/Header;
    const-string v13, "X-Nativeparams"

    const-string v14, "{}"

    invoke-virtual {v11, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    if-eqz v9, :cond_9

    const-string v13, "X-Nativeparams"

    invoke-interface {v9}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    :cond_9
    const-string v13, "X-Fulladtype"

    invoke-interface {v12, v13}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v5

    .line 440
    .local v5, ftHeader:Lorg/apache/http/Header;
    if-eqz v5, :cond_a

    const-string v13, "X-Fulladtype"

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    :cond_a
    new-instance v13, Lcom/mopub/mobileads/AdView$LoadNativeAdTaskResult;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mopub/mobileads/AdView$LoadUrlTask;->mAdView:Lcom/mopub/mobileads/AdView;

    const/4 v15, 0x0

    invoke-direct {v13, v14, v11, v15}, Lcom/mopub/mobileads/AdView$LoadNativeAdTaskResult;-><init>(Lcom/mopub/mobileads/AdView;Ljava/util/HashMap;Lcom/mopub/mobileads/AdView$1;)V

    monitor-exit p0

    goto/16 :goto_0

    .line 446
    .end local v5           #ftHeader:Lorg/apache/http/Header;
    .end local v9           #npHeader:Lorg/apache/http/Header;
    .end local v11           #paramsHash:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_b
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v7

    .line 447
    .restart local v7       #is:Ljava/io/InputStream;
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 448
    .restart local v10       #out:Ljava/lang/StringBuffer;
    const/16 v13, 0x1000

    new-array v2, v13, [B

    .line 449
    .restart local v2       #b:[B
    :goto_2
    invoke-virtual {v7, v2}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .restart local v8       #n:I
    const/4 v13, -0x1

    if-eq v8, v13, :cond_c

    .line 450
    new-instance v13, Ljava/lang/String;

    const/4 v14, 0x0

    invoke-direct {v13, v2, v14, v8}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 452
    :cond_c
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 454
    new-instance v13, Lcom/mopub/mobileads/AdView$LoadHtmlAdTaskResult;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mopub/mobileads/AdView$LoadUrlTask;->mAdView:Lcom/mopub/mobileads/AdView;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lcom/mopub/mobileads/AdView$LoadHtmlAdTaskResult;-><init>(Lcom/mopub/mobileads/AdView;Ljava/lang/String;Lcom/mopub/mobileads/AdView$1;)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/mopub/mobileads/AdView$LoadUrlTaskResult;
    .locals 3
    .parameter "urls"

    .prologue
    .line 372
    const/4 v1, 0x0

    .line 374
    .local v1, result:Lcom/mopub/mobileads/AdView$LoadUrlTaskResult;
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, p1, v2

    invoke-direct {p0, v2}, Lcom/mopub/mobileads/AdView$LoadUrlTask;->loadAdFromNetwork(Ljava/lang/String;)Lcom/mopub/mobileads/AdView$LoadUrlTaskResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 378
    :goto_0
    return-object v1

    .line 375
    :catch_0
    move-exception v0

    .line 376
    .local v0, e:Ljava/lang/Exception;
    iput-object v0, p0, Lcom/mopub/mobileads/AdView$LoadUrlTask;->mException:Ljava/lang/Exception;

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 359
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/AdView$LoadUrlTask;->doInBackground([Ljava/lang/String;)Lcom/mopub/mobileads/AdView$LoadUrlTaskResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/mopub/mobileads/AdView$LoadUrlTaskResult;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 474
    iget-object v0, p0, Lcom/mopub/mobileads/AdView$LoadUrlTask;->mAdView:Lcom/mopub/mobileads/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/AdView$LoadUrlTask;->mAdView:Lcom/mopub/mobileads/AdView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdView;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 475
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/mopub/mobileads/AdView$LoadUrlTaskResult;->cleanup()V

    .line 476
    :cond_1
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdView$LoadUrlTask;->releaseResources()V

    .line 491
    :goto_0
    return-void

    .line 480
    :cond_2
    if-nez p1, :cond_4

    .line 481
    iget-object v0, p0, Lcom/mopub/mobileads/AdView$LoadUrlTask;->mException:Ljava/lang/Exception;

    if-eqz v0, :cond_3

    .line 482
    const-string v0, "MoPub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception caught while loading ad: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/AdView$LoadUrlTask;->mException:Ljava/lang/Exception;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_3
    iget-object v0, p0, Lcom/mopub/mobileads/AdView$LoadUrlTask;->mAdView:Lcom/mopub/mobileads/AdView;

    #calls: Lcom/mopub/mobileads/AdView;->adDidFail()V
    invoke-static {v0}, Lcom/mopub/mobileads/AdView;->access$1100(Lcom/mopub/mobileads/AdView;)V

    .line 490
    :goto_1
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdView$LoadUrlTask;->releaseResources()V

    goto :goto_0

    .line 486
    :cond_4
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdView$LoadUrlTaskResult;->execute()V

    .line 487
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdView$LoadUrlTaskResult;->cleanup()V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 359
    check-cast p1, Lcom/mopub/mobileads/AdView$LoadUrlTaskResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/AdView$LoadUrlTask;->onPostExecute(Lcom/mopub/mobileads/AdView$LoadUrlTaskResult;)V

    return-void
.end method

.method protected releaseResources()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 459
    monitor-enter p0

    .line 460
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/mopub/mobileads/AdView$LoadUrlTask;->mAdView:Lcom/mopub/mobileads/AdView;

    .line 462
    iget-object v1, p0, Lcom/mopub/mobileads/AdView$LoadUrlTask;->mHttpClient:Lorg/apache/http/client/HttpClient;

    if-eqz v1, :cond_1

    .line 463
    iget-object v1, p0, Lcom/mopub/mobileads/AdView$LoadUrlTask;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    .line 464
    .local v0, manager:Lorg/apache/http/conn/ClientConnectionManager;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 465
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mopub/mobileads/AdView$LoadUrlTask;->mHttpClient:Lorg/apache/http/client/HttpClient;

    .line 467
    .end local v0           #manager:Lorg/apache/http/conn/ClientConnectionManager;
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    iput-object v2, p0, Lcom/mopub/mobileads/AdView$LoadUrlTask;->mException:Ljava/lang/Exception;

    .line 470
    return-void

    .line 467
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
