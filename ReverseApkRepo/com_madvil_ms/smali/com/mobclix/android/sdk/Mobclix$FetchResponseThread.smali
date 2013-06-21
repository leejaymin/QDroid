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
    .line 1354
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 1355
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;->url:Ljava/lang/String;

    .line 1356
    iput-object p2, p0, Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;->handler:Landroid/os/Handler;

    .line 1357
    return-void
.end method

.method private sendErrorCode(I)V
    .locals 4
    .parameter "errorCode"

    .prologue
    .line 1438
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1439
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1440
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "type"

    const-string v3, "failure"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    const-string v2, "errorCode"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1442
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1443
    iget-object v2, p0, Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1444
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 1360
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$6()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v13

    invoke-virtual {v13}, Lcom/mobclix/android/sdk/Mobclix;->updateSession()V

    .line 1365
    iget-object v13, p0, Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;->url:Ljava/lang/String;

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1366
    const/16 v13, -0x1f7

    invoke-direct {p0, v13}, Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;->sendErrorCode(I)V

    .line 1367
    :cond_0
    const-string v8, ""

    .line 1368
    .local v8, response:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1371
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;

    iget-object v13, p0, Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;->url:Ljava/lang/String;

    invoke-direct {v4, v13}, Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;-><init>(Ljava/lang/String;)V

    .line 1373
    .local v4, httpClient:Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;
    invoke-virtual {v4}, Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;->execute()Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 1374
    .local v6, httpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 1375
    .local v5, httpEntity:Lorg/apache/http/HttpEntity;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    .line 1379
    .local v9, responseCode:I
    const/16 v13, 0xc8

    if-eq v9, v13, :cond_1

    const/16 v13, 0xfb

    if-ne v9, v13, :cond_3

    .line 1380
    :cond_1
    if-eqz v5, :cond_3

    .line 1381
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v14, 0x1f40

    invoke-direct {v1, v13, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1383
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    .line 1384
    .local v12, tmp:Ljava/lang/String;
    :goto_0
    if-nez v12, :cond_2

    .line 1388
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 1390
    const-string v13, ""

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 1392
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 1393
    .local v7, msg:Landroid/os/Message;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1394
    .local v2, bundle:Landroid/os/Bundle;
    const-string v13, "type"

    const-string v14, "success"

    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    const-string v13, "response"

    invoke-virtual {v2, v13, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    invoke-virtual {v7, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1397
    iget-object v13, p0, Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;->handler:Landroid/os/Handler;

    invoke-virtual {v13, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    move-object v0, v1

    .line 1430
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v7           #msg:Landroid/os/Message;
    .end local v12           #tmp:Ljava/lang/String;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 1433
    .end local v4           #httpClient:Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;
    .end local v5           #httpEntity:Lorg/apache/http/HttpEntity;
    .end local v6           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v9           #responseCode:I
    :goto_2
    return-void

    .line 1385
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #httpClient:Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;
    .restart local v5       #httpEntity:Lorg/apache/http/HttpEntity;
    .restart local v6       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v9       #responseCode:I
    .restart local v12       #tmp:Ljava/lang/String;
    :cond_2
    :try_start_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1386
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v12

    goto :goto_0

    .line 1402
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v12           #tmp:Ljava/lang/String;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :cond_3
    packed-switch v9, :pswitch_data_0

    .line 1416
    const/16 v3, -0x1f7

    .line 1421
    .local v3, errorCode:I
    :goto_3
    :try_start_4
    invoke-direct {p0, v3}, Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;->sendErrorCode(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 1423
    .end local v3           #errorCode:I
    .end local v4           #httpClient:Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;
    .end local v5           #httpEntity:Lorg/apache/http/HttpEntity;
    .end local v6           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v9           #responseCode:I
    :catch_0
    move-exception v13

    move-object v11, v13

    .line 1427
    .local v11, t:Ljava/lang/Throwable;
    :goto_4
    const/16 v13, -0x1f7

    :try_start_5
    invoke-direct {p0, v13}, Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;->sendErrorCode(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1430
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 1431
    :catch_1
    move-exception v13

    goto :goto_2

    .line 1404
    .end local v11           #t:Ljava/lang/Throwable;
    .restart local v4       #httpClient:Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;
    .restart local v5       #httpEntity:Lorg/apache/http/HttpEntity;
    .restart local v6       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v9       #responseCode:I
    :pswitch_0
    :try_start_7
    const-string v13, "X-Mobclix-Suballocation"

    invoke-interface {v6, v13}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    .line 1405
    .local v10, sub:Ljava/lang/String;
    if-nez v10, :cond_4

    .line 1406
    const/16 v3, -0x1f7

    .restart local v3       #errorCode:I
    goto :goto_3

    .line 1408
    .end local v3           #errorCode:I
    :cond_4
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    move-result v3

    .line 1413
    .restart local v3       #errorCode:I
    goto :goto_3

    .line 1428
    .end local v3           #errorCode:I
    .end local v4           #httpClient:Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;
    .end local v5           #httpEntity:Lorg/apache/http/HttpEntity;
    .end local v6           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v9           #responseCode:I
    .end local v10           #sub:Ljava/lang/String;
    :catchall_0
    move-exception v13

    .line 1430
    :goto_5
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 1432
    :goto_6
    throw v13

    .line 1431
    :catch_2
    move-exception v14

    goto :goto_6

    .restart local v4       #httpClient:Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;
    .restart local v5       #httpEntity:Lorg/apache/http/HttpEntity;
    .restart local v6       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v9       #responseCode:I
    :catch_3
    move-exception v13

    goto :goto_2

    .line 1428
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v13

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_5

    .line 1423
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_4
    move-exception v13

    move-object v11, v13

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_4

    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v12       #tmp:Ljava/lang/String;
    :cond_5
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_1

    .line 1402
    :pswitch_data_0
    .packed-switch 0xfb
        :pswitch_0
    .end packed-switch
.end method

.method setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "u"

    .prologue
    .line 1435
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;->url:Ljava/lang/String;

    return-void
.end method
