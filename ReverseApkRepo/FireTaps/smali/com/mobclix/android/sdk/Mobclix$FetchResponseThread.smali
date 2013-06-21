.class Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;
.super Ljava/util/TimerTask;
.source "Mobclix.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/Mobclix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FetchResponseThread"
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;

.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0
    .parameter "u"
    .parameter "h"

    .prologue
    .line 1312
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 1313
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;->url:Ljava/lang/String;

    .line 1314
    iput-object p2, p0, Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;->handler:Landroid/os/Handler;

    .line 1315
    return-void
.end method

.method private sendErrorCode(I)V
    .locals 4
    .parameter "errorCode"

    .prologue
    .line 1404
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1405
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1406
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "type"

    const-string v3, "failure"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    const-string v2, "errorCode"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1408
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1409
    iget-object v2, p0, Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1410
    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .prologue
    .line 1318
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$6()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/mobclix/android/sdk/Mobclix;->updateSession()V

    .line 1323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;->url:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 1324
    const/16 v17, -0x1f7

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;->sendErrorCode(I)V

    .line 1325
    :cond_0
    const-string v13, ""

    .line 1326
    .local v13, response:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1329
    .local v3, br:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v8, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v8}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 1332
    .local v8, httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v10, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;->url:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object v0, v10

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 1333
    .local v10, httpGet:Lorg/apache/http/client/methods/HttpGet;
    const-string v17, "Cookie"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;->url:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/mobclix/android/sdk/Mobclix;->getCookieStringFromCookieManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object v0, v10

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    invoke-virtual {v8, v10}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v11

    .line 1337
    .local v11, httpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    .line 1338
    .local v9, httpEntity:Lorg/apache/http/HttpEntity;
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    .line 1341
    .local v14, responseCode:I
    invoke-virtual {v8}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;->url:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/mobclix/android/sdk/Mobclix;->syncCookiesToCookieManager(Lorg/apache/http/client/CookieStore;Ljava/lang/String;)V

    .line 1345
    const/16 v17, 0xc8

    move v0, v14

    move/from16 v1, v17

    if-eq v0, v1, :cond_1

    const/16 v17, 0xfb

    move v0, v14

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 1346
    :cond_1
    if-eqz v9, :cond_3

    .line 1347
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/InputStreamReader;

    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v18, 0x1f40

    move-object v0, v4

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1349
    .end local v3           #br:Ljava/io/BufferedReader;
    .local v4, br:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    .line 1350
    .local v16, tmp:Ljava/lang/String;
    :goto_0
    if-nez v16, :cond_2

    .line 1354
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 1356
    const-string v17, ""

    move-object v0, v13

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 1358
    new-instance v12, Landroid/os/Message;

    invoke-direct {v12}, Landroid/os/Message;-><init>()V

    .line 1359
    .local v12, msg:Landroid/os/Message;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1360
    .local v5, bundle:Landroid/os/Bundle;
    const-string v17, "type"

    const-string v18, "success"

    move-object v0, v5

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1361
    const-string v17, "response"

    move-object v0, v5

    move-object/from16 v1, v17

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    invoke-virtual {v12, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;->handler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-object v3, v4

    .line 1396
    .end local v4           #br:Ljava/io/BufferedReader;
    .end local v5           #bundle:Landroid/os/Bundle;
    .end local v12           #msg:Landroid/os/Message;
    .end local v16           #tmp:Ljava/lang/String;
    .restart local v3       #br:Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 1399
    .end local v8           #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v9           #httpEntity:Lorg/apache/http/HttpEntity;
    .end local v10           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v11           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v14           #responseCode:I
    :goto_2
    return-void

    .line 1351
    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v4       #br:Ljava/io/BufferedReader;
    .restart local v8       #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v9       #httpEntity:Lorg/apache/http/HttpEntity;
    .restart local v10       #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v11       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v14       #responseCode:I
    .restart local v16       #tmp:Ljava/lang/String;
    :cond_2
    :try_start_3
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1352
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v16

    goto :goto_0

    .line 1368
    .end local v4           #br:Ljava/io/BufferedReader;
    .end local v16           #tmp:Ljava/lang/String;
    .restart local v3       #br:Ljava/io/BufferedReader;
    :cond_3
    packed-switch v14, :pswitch_data_0

    .line 1382
    const/16 v7, -0x1f7

    .line 1387
    .local v7, errorCode:I
    :goto_3
    :try_start_4
    move-object/from16 v0, p0

    move v1, v7

    invoke-direct {v0, v1}, Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;->sendErrorCode(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 1389
    .end local v7           #errorCode:I
    .end local v8           #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v9           #httpEntity:Lorg/apache/http/HttpEntity;
    .end local v10           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v11           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v14           #responseCode:I
    :catch_0
    move-exception v17

    move-object/from16 v6, v17

    .line 1393
    .local v6, e:Ljava/lang/Exception;
    :goto_4
    const/16 v17, -0x1f7

    :try_start_5
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;->sendErrorCode(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1396
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 1397
    :catch_1
    move-exception v17

    goto :goto_2

    .line 1370
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v8       #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v9       #httpEntity:Lorg/apache/http/HttpEntity;
    .restart local v10       #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v11       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v14       #responseCode:I
    :pswitch_0
    :try_start_7
    const-string v17, "X-Mobclix-Suballocation"

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v15

    .line 1371
    .local v15, sub:Ljava/lang/String;
    if-nez v15, :cond_4

    .line 1372
    const/16 v7, -0x1f7

    .restart local v7       #errorCode:I
    goto :goto_3

    .line 1374
    .end local v7           #errorCode:I
    :cond_4
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-result v7

    .line 1379
    .restart local v7       #errorCode:I
    goto :goto_3

    .line 1394
    .end local v7           #errorCode:I
    .end local v8           #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v9           #httpEntity:Lorg/apache/http/HttpEntity;
    .end local v10           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v11           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v14           #responseCode:I
    .end local v15           #sub:Ljava/lang/String;
    :catchall_0
    move-exception v17

    .line 1396
    :goto_5
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 1398
    :goto_6
    throw v17

    .line 1397
    :catch_2
    move-exception v18

    goto :goto_6

    .restart local v8       #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v9       #httpEntity:Lorg/apache/http/HttpEntity;
    .restart local v10       #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v11       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v14       #responseCode:I
    :catch_3
    move-exception v17

    goto :goto_2

    .line 1394
    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v4       #br:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v17

    move-object v3, v4

    .end local v4           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    goto :goto_5

    .line 1389
    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v4       #br:Ljava/io/BufferedReader;
    :catch_4
    move-exception v17

    move-object/from16 v6, v17

    move-object v3, v4

    .end local v4           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    goto :goto_4

    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v4       #br:Ljava/io/BufferedReader;
    .restart local v16       #tmp:Ljava/lang/String;
    :cond_5
    move-object v3, v4

    .end local v4           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    goto :goto_1

    .line 1368
    nop

    :pswitch_data_0
    .packed-switch 0xfb
        :pswitch_0
    .end packed-switch
.end method

.method setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "u"

    .prologue
    .line 1401
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;->url:Ljava/lang/String;

    return-void
.end method
