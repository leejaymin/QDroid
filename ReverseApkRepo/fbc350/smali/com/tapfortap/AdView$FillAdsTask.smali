.class Lcom/tapfortap/AdView$FillAdsTask;
.super Landroid/os/AsyncTask;
.source "AdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapfortap/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FillAdsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/List",
        "<",
        "Lorg/apache/http/NameValuePair;",
        ">;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapfortap/AdView;


# direct methods
.method private constructor <init>(Lcom/tapfortap/AdView;)V
    .locals 0
    .parameter

    .prologue
    .line 414
    iput-object p1, p0, Lcom/tapfortap/AdView$FillAdsTask;->this$0:Lcom/tapfortap/AdView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapfortap/AdView;Lcom/tapfortap/AdView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 414
    invoke-direct {p0, p1}, Lcom/tapfortap/AdView$FillAdsTask;-><init>(Lcom/tapfortap/AdView;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/util/List;)Ljava/lang/Boolean;
    .locals 25
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 417
    .local p1, paramList:[Ljava/util/List;,"[Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/16 v21, 0x0

    aget-object v15, p1, v21

    .line 420
    .local v15, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v9, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v9}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 421
    .local v9, httpClient:Lorg/apache/http/client/HttpClient;
    new-instance v16, Lorg/apache/http/client/methods/HttpPost;

    const-string v21, "ad/fill"

    invoke-static/range {v21 .. v21}, Lcom/tapfortap/TapForTap;->urlFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 422
    .local v16, post:Lorg/apache/http/client/methods/HttpPost;
    const/16 v18, 0x0

    .line 423
    .local v18, response:Lorg/apache/http/HttpResponse;
    const/16 v19, 0x1

    .line 426
    .local v19, retry:Z
    :try_start_0
    new-instance v21, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v22, "UTF-8"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v15, v1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 427
    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v18

    .line 446
    :goto_0
    if-eqz v18, :cond_b

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    const-string v22, "200"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 449
    :try_start_1
    new-instance v14, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v14}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 450
    .local v14, outputStream:Ljava/io/ByteArrayOutputStream;
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v0, v14}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 451
    const-string v21, "UTF-8"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 452
    .local v5, body:Ljava/lang/String;
    const-string v21, "\n"

    move-object/from16 v0, v21

    invoke-static {v5, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 453
    .local v13, lines:[Ljava/lang/String;
    const/16 v21, 0x0

    aget-object v20, v13, v21

    .line 454
    .local v20, status:Ljava/lang/String;
    const-string v21, "ok"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 455
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 456
    .local v3, ads:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    move-object v4, v13

    .local v4, arr$:[Ljava/lang/String;
    array-length v11, v4

    .local v11, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_1
    if-ge v10, v11, :cond_5

    aget-object v12, v4, v10

    .line 457
    .local v12, line:Ljava/lang/String;
    const-string v21, "ok"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v21

    if-eqz v21, :cond_2

    .line 456
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 429
    .end local v3           #ads:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v5           #body:Ljava/lang/String;
    .end local v10           #i$:I
    .end local v11           #len$:I
    .end local v12           #line:Ljava/lang/String;
    .end local v13           #lines:[Ljava/lang/String;
    .end local v14           #outputStream:Ljava/io/ByteArrayOutputStream;
    .end local v20           #status:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 430
    .local v8, e:Lorg/apache/http/client/ClientProtocolException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapfortap/AdView$FillAdsTask;->this$0:Lcom/tapfortap/AdView;

    move-object/from16 v21, v0

    #getter for: Lcom/tapfortap/AdView;->listener:Lcom/tapfortap/AdView$AdViewListener;
    invoke-static/range {v21 .. v21}, Lcom/tapfortap/AdView;->access$700(Lcom/tapfortap/AdView;)Lcom/tapfortap/AdView$AdViewListener;

    move-result-object v21

    if-eqz v21, :cond_0

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapfortap/AdView$FillAdsTask;->this$0:Lcom/tapfortap/AdView;

    move-object/from16 v21, v0

    #getter for: Lcom/tapfortap/AdView;->listener:Lcom/tapfortap/AdView$AdViewListener;
    invoke-static/range {v21 .. v21}, Lcom/tapfortap/AdView;->access$700(Lcom/tapfortap/AdView;)Lcom/tapfortap/AdView$AdViewListener;

    move-result-object v21

    const-string v22, "network error"

    invoke-interface/range {v21 .. v22}, Lcom/tapfortap/AdView$AdViewListener;->didFailToReceiveAd(Ljava/lang/String;)V

    goto :goto_0

    .line 434
    :cond_0
    const-string v21, "com.tapfortap.AdView"

    const-string v22, "Failed to fill ads."

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 437
    .end local v8           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v8

    .line 438
    .local v8, e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapfortap/AdView$FillAdsTask;->this$0:Lcom/tapfortap/AdView;

    move-object/from16 v21, v0

    #getter for: Lcom/tapfortap/AdView;->listener:Lcom/tapfortap/AdView$AdViewListener;
    invoke-static/range {v21 .. v21}, Lcom/tapfortap/AdView;->access$700(Lcom/tapfortap/AdView;)Lcom/tapfortap/AdView$AdViewListener;

    move-result-object v21

    if-eqz v21, :cond_1

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapfortap/AdView$FillAdsTask;->this$0:Lcom/tapfortap/AdView;

    move-object/from16 v21, v0

    #getter for: Lcom/tapfortap/AdView;->listener:Lcom/tapfortap/AdView$AdViewListener;
    invoke-static/range {v21 .. v21}, Lcom/tapfortap/AdView;->access$700(Lcom/tapfortap/AdView;)Lcom/tapfortap/AdView$AdViewListener;

    move-result-object v21

    const-string v22, "network error"

    invoke-interface/range {v21 .. v22}, Lcom/tapfortap/AdView$AdViewListener;->didFailToReceiveAd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 442
    :cond_1
    const-string v21, "com.tapfortap.AdView"

    const-string v22, "Failed to fill ads."

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 458
    .end local v8           #e:Ljava/io/IOException;
    .restart local v3       #ads:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v4       #arr$:[Ljava/lang/String;
    .restart local v5       #body:Ljava/lang/String;
    .restart local v10       #i$:I
    .restart local v11       #len$:I
    .restart local v12       #line:Ljava/lang/String;
    .restart local v13       #lines:[Ljava/lang/String;
    .restart local v14       #outputStream:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #status:Ljava/lang/String;
    :cond_2
    :try_start_2
    const-string v21, "refresh"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 459
    const-wide/16 v21, 0x3e8

    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v23

    mul-long v6, v21, v23

    .line 460
    .local v6, delay:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapfortap/AdView$FillAdsTask;->this$0:Lcom/tapfortap/AdView;

    move-object/from16 v21, v0

    #calls: Lcom/tapfortap/AdView;->getRefreshTimer()Ljava/util/Timer;
    invoke-static/range {v21 .. v21}, Lcom/tapfortap/AdView;->access$800(Lcom/tapfortap/AdView;)Ljava/util/Timer;

    move-result-object v21

    new-instance v22, Lcom/tapfortap/AdView$RefreshTimerTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapfortap/AdView$FillAdsTask;->this$0:Lcom/tapfortap/AdView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-direct/range {v22 .. v24}, Lcom/tapfortap/AdView$RefreshTimerTask;-><init>(Lcom/tapfortap/AdView;Lcom/tapfortap/AdView$1;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_2

    .line 495
    .end local v3           #ads:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v5           #body:Ljava/lang/String;
    .end local v6           #delay:J
    .end local v10           #i$:I
    .end local v11           #len$:I
    .end local v12           #line:Ljava/lang/String;
    .end local v13           #lines:[Ljava/lang/String;
    .end local v14           #outputStream:Ljava/io/ByteArrayOutputStream;
    .end local v20           #status:Ljava/lang/String;
    :catch_2
    move-exception v8

    .line 496
    .local v8, e:Ljava/io/UnsupportedEncodingException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapfortap/AdView$FillAdsTask;->this$0:Lcom/tapfortap/AdView;

    move-object/from16 v21, v0

    #getter for: Lcom/tapfortap/AdView;->listener:Lcom/tapfortap/AdView$AdViewListener;
    invoke-static/range {v21 .. v21}, Lcom/tapfortap/AdView;->access$700(Lcom/tapfortap/AdView;)Lcom/tapfortap/AdView$AdViewListener;

    move-result-object v21

    if-eqz v21, :cond_9

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapfortap/AdView$FillAdsTask;->this$0:Lcom/tapfortap/AdView;

    move-object/from16 v21, v0

    #getter for: Lcom/tapfortap/AdView;->listener:Lcom/tapfortap/AdView$AdViewListener;
    invoke-static/range {v21 .. v21}, Lcom/tapfortap/AdView;->access$700(Lcom/tapfortap/AdView;)Lcom/tapfortap/AdView$AdViewListener;

    move-result-object v21

    const-string v22, "network error"

    invoke-interface/range {v21 .. v22}, Lcom/tapfortap/AdView$AdViewListener;->didFailToReceiveAd(Ljava/lang/String;)V

    .line 542
    .end local v8           #e:Ljava/io/UnsupportedEncodingException;
    :cond_3
    :goto_3
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    return-object v21

    .line 463
    .restart local v3       #ads:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v4       #arr$:[Ljava/lang/String;
    .restart local v5       #body:Ljava/lang/String;
    .restart local v10       #i$:I
    .restart local v11       #len$:I
    .restart local v12       #line:Ljava/lang/String;
    .restart local v13       #lines:[Ljava/lang/String;
    .restart local v14       #outputStream:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #status:Ljava/lang/String;
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapfortap/AdView$FillAdsTask;->this$0:Lcom/tapfortap/AdView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    #calls: Lcom/tapfortap/AdView;->decodeUrlEncodedBody(Ljava/lang/String;)Ljava/util/Map;
    invoke-static {v0, v12}, Lcom/tapfortap/AdView;->access$900(Lcom/tapfortap/AdView;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 464
    .local v2, ad:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_2

    .line 503
    .end local v2           #ad:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3           #ads:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v5           #body:Ljava/lang/String;
    .end local v10           #i$:I
    .end local v11           #len$:I
    .end local v12           #line:Ljava/lang/String;
    .end local v13           #lines:[Ljava/lang/String;
    .end local v14           #outputStream:Ljava/io/ByteArrayOutputStream;
    .end local v20           #status:Ljava/lang/String;
    :catch_3
    move-exception v8

    .line 504
    .local v8, e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapfortap/AdView$FillAdsTask;->this$0:Lcom/tapfortap/AdView;

    move-object/from16 v21, v0

    #getter for: Lcom/tapfortap/AdView;->listener:Lcom/tapfortap/AdView$AdViewListener;
    invoke-static/range {v21 .. v21}, Lcom/tapfortap/AdView;->access$700(Lcom/tapfortap/AdView;)Lcom/tapfortap/AdView$AdViewListener;

    move-result-object v21

    if-eqz v21, :cond_a

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapfortap/AdView$FillAdsTask;->this$0:Lcom/tapfortap/AdView;

    move-object/from16 v21, v0

    #getter for: Lcom/tapfortap/AdView;->listener:Lcom/tapfortap/AdView$AdViewListener;
    invoke-static/range {v21 .. v21}, Lcom/tapfortap/AdView;->access$700(Lcom/tapfortap/AdView;)Lcom/tapfortap/AdView$AdViewListener;

    move-result-object v21

    const-string v22, "network error"

    invoke-interface/range {v21 .. v22}, Lcom/tapfortap/AdView$AdViewListener;->didFailToReceiveAd(Ljava/lang/String;)V

    goto :goto_3

    .line 466
    .end local v8           #e:Ljava/io/IOException;
    .restart local v3       #ads:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v4       #arr$:[Ljava/lang/String;
    .restart local v5       #body:Ljava/lang/String;
    .restart local v10       #i$:I
    .restart local v11       #len$:I
    .restart local v13       #lines:[Ljava/lang/String;
    .restart local v14       #outputStream:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #status:Ljava/lang/String;
    :cond_5
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapfortap/AdView$FillAdsTask;->this$0:Lcom/tapfortap/AdView;

    move-object/from16 v21, v0

    #getter for: Lcom/tapfortap/AdView;->activity:Landroid/app/Activity;
    invoke-static/range {v21 .. v21}, Lcom/tapfortap/AdView;->access$200(Lcom/tapfortap/AdView;)Landroid/app/Activity;

    move-result-object v21

    new-instance v22, Lcom/tapfortap/AdView$FillAdsTask$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lcom/tapfortap/AdView$FillAdsTask$1;-><init>(Lcom/tapfortap/AdView$FillAdsTask;Ljava/util/List;)V

    invoke-virtual/range {v21 .. v22}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 475
    const/16 v19, 0x0

    .line 476
    goto :goto_3

    .line 478
    .end local v3           #ads:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v10           #i$:I
    .end local v11           #len$:I
    :cond_6
    const-string v17, "(unknown)"

    .line 479
    .local v17, reason:Ljava/lang/String;
    array-length v0, v13

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_7

    .line 480
    const/16 v21, 0x1

    aget-object v21, v13, v21

    const-string v22, "reason="

    const-string v23, ""

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    const-string v22, "UTF-8"

    invoke-static/range {v21 .. v22}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 482
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapfortap/AdView$FillAdsTask;->this$0:Lcom/tapfortap/AdView;

    move-object/from16 v21, v0

    #getter for: Lcom/tapfortap/AdView;->listener:Lcom/tapfortap/AdView$AdViewListener;
    invoke-static/range {v21 .. v21}, Lcom/tapfortap/AdView;->access$700(Lcom/tapfortap/AdView;)Lcom/tapfortap/AdView$AdViewListener;

    move-result-object v21

    if-eqz v21, :cond_8

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapfortap/AdView$FillAdsTask;->this$0:Lcom/tapfortap/AdView;

    move-object/from16 v21, v0

    #getter for: Lcom/tapfortap/AdView;->listener:Lcom/tapfortap/AdView$AdViewListener;
    invoke-static/range {v21 .. v21}, Lcom/tapfortap/AdView;->access$700(Lcom/tapfortap/AdView;)Lcom/tapfortap/AdView$AdViewListener;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/tapfortap/AdView$AdViewListener;->didFailToReceiveAd(Ljava/lang/String;)V

    .line 490
    :goto_4
    const-string v21, "invalid app id"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 491
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 486
    :cond_8
    const-string v21, "com.tapfortap.AdView"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Failed to fill ads: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    .line 500
    .end local v5           #body:Ljava/lang/String;
    .end local v13           #lines:[Ljava/lang/String;
    .end local v14           #outputStream:Ljava/io/ByteArrayOutputStream;
    .end local v17           #reason:Ljava/lang/String;
    .end local v20           #status:Ljava/lang/String;
    .local v8, e:Ljava/io/UnsupportedEncodingException;
    :cond_9
    const-string v21, "com.tapfortap.AdView"

    const-string v22, "Failed to fill ads."

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 508
    .local v8, e:Ljava/io/IOException;
    :cond_a
    const-string v21, "com.tapfortap.AdView"

    const-string v22, "Failed to fill ads."

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 513
    .end local v8           #e:Ljava/io/IOException;
    :cond_b
    if-nez v18, :cond_d

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapfortap/AdView$FillAdsTask;->this$0:Lcom/tapfortap/AdView;

    move-object/from16 v21, v0

    #getter for: Lcom/tapfortap/AdView;->listener:Lcom/tapfortap/AdView$AdViewListener;
    invoke-static/range {v21 .. v21}, Lcom/tapfortap/AdView;->access$700(Lcom/tapfortap/AdView;)Lcom/tapfortap/AdView$AdViewListener;

    move-result-object v21

    if-eqz v21, :cond_c

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapfortap/AdView$FillAdsTask;->this$0:Lcom/tapfortap/AdView;

    move-object/from16 v21, v0

    #getter for: Lcom/tapfortap/AdView;->listener:Lcom/tapfortap/AdView$AdViewListener;
    invoke-static/range {v21 .. v21}, Lcom/tapfortap/AdView;->access$700(Lcom/tapfortap/AdView;)Lcom/tapfortap/AdView$AdViewListener;

    move-result-object v21

    const-string v22, "network error"

    invoke-interface/range {v21 .. v22}, Lcom/tapfortap/AdView$AdViewListener;->didFailToReceiveAd(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 518
    :cond_c
    const-string v21, "com.tapfortap.AdView"

    const-string v22, "Failed to fill ads."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 523
    :cond_d
    :try_start_5
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 524
    .restart local v5       #body:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapfortap/AdView$FillAdsTask;->this$0:Lcom/tapfortap/AdView;

    move-object/from16 v21, v0

    #getter for: Lcom/tapfortap/AdView;->listener:Lcom/tapfortap/AdView$AdViewListener;
    invoke-static/range {v21 .. v21}, Lcom/tapfortap/AdView;->access$700(Lcom/tapfortap/AdView;)Lcom/tapfortap/AdView$AdViewListener;

    move-result-object v21

    if-eqz v21, :cond_e

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapfortap/AdView$FillAdsTask;->this$0:Lcom/tapfortap/AdView;

    move-object/from16 v21, v0

    #getter for: Lcom/tapfortap/AdView;->listener:Lcom/tapfortap/AdView$AdViewListener;
    invoke-static/range {v21 .. v21}, Lcom/tapfortap/AdView;->access$700(Lcom/tapfortap/AdView;)Lcom/tapfortap/AdView$AdViewListener;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v0, v5}, Lcom/tapfortap/AdView$AdViewListener;->didFailToReceiveAd(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_3

    .line 531
    .end local v5           #body:Ljava/lang/String;
    :catch_4
    move-exception v8

    .line 532
    .restart local v8       #e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapfortap/AdView$FillAdsTask;->this$0:Lcom/tapfortap/AdView;

    move-object/from16 v21, v0

    #getter for: Lcom/tapfortap/AdView;->listener:Lcom/tapfortap/AdView$AdViewListener;
    invoke-static/range {v21 .. v21}, Lcom/tapfortap/AdView;->access$700(Lcom/tapfortap/AdView;)Lcom/tapfortap/AdView$AdViewListener;

    move-result-object v21

    if-eqz v21, :cond_f

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapfortap/AdView$FillAdsTask;->this$0:Lcom/tapfortap/AdView;

    move-object/from16 v21, v0

    #getter for: Lcom/tapfortap/AdView;->listener:Lcom/tapfortap/AdView$AdViewListener;
    invoke-static/range {v21 .. v21}, Lcom/tapfortap/AdView;->access$700(Lcom/tapfortap/AdView;)Lcom/tapfortap/AdView$AdViewListener;

    move-result-object v21

    const-string v22, "network error"

    invoke-interface/range {v21 .. v22}, Lcom/tapfortap/AdView$AdViewListener;->didFailToReceiveAd(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 528
    .end local v8           #e:Ljava/io/IOException;
    .restart local v5       #body:Ljava/lang/String;
    :cond_e
    :try_start_6
    const-string v21, "com.tapfortap.AdView"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Failed to fill ads: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_3

    .line 536
    .end local v5           #body:Ljava/lang/String;
    .restart local v8       #e:Ljava/io/IOException;
    :cond_f
    const-string v21, "com.tapfortap.AdView"

    const-string v22, "Failed to fill ads."

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 414
    check-cast p1, [Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/tapfortap/AdView$FillAdsTask;->doInBackground([Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .parameter "retry"

    .prologue
    .line 548
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/tapfortap/AdView$FillAdsTask;->this$0:Lcom/tapfortap/AdView;

    #calls: Lcom/tapfortap/AdView;->getRefreshTimer()Ljava/util/Timer;
    invoke-static {v0}, Lcom/tapfortap/AdView;->access$800(Lcom/tapfortap/AdView;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/tapfortap/AdView$RefreshTimerTask;

    iget-object v2, p0, Lcom/tapfortap/AdView$FillAdsTask;->this$0:Lcom/tapfortap/AdView;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/tapfortap/AdView$RefreshTimerTask;-><init>(Lcom/tapfortap/AdView;Lcom/tapfortap/AdView$1;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 551
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 414
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/tapfortap/AdView$FillAdsTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
