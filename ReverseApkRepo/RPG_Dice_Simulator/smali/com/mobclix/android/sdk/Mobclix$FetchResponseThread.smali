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
    .line 1443
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 1444
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;->url:Ljava/lang/String;

    .line 1445
    iput-object p2, p0, Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;->handler:Landroid/os/Handler;

    .line 1446
    return-void
.end method

.method private sendErrorCode(I)V
    .locals 4
    .parameter "errorCode"

    .prologue
    .line 1521
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1522
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1523
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "type"

    const-string v3, "failure"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1524
    const-string v2, "errorCode"

    const/16 v3, -0x1f7

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1525
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1526
    iget-object v2, p0, Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1527
    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    const/16 v15, -0x1f7

    const-string v16, ""

    .line 1449
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$0()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v13

    invoke-virtual {v13}, Lcom/mobclix/android/sdk/Mobclix;->updateSession()V

    .line 1453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;->url:Ljava/lang/String;

    move-object v13, v0

    const-string v14, ""

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1454
    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;->sendErrorCode(I)V

    .line 1455
    :cond_0
    const-string v9, ""

    .line 1456
    .local v9, response:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1457
    .local v5, con:Ljava/net/HttpURLConnection;
    const/4 v2, 0x0

    .line 1460
    .local v2, br:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v13, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;->url:Ljava/lang/String;

    move-object v14, v0

    invoke-direct {v13, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v5, v0

    .line 1461
    const-string v13, "GET"

    invoke-virtual {v5, v13}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1462
    const-string v13, "User-Agent"

    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$0()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v14

    invoke-virtual {v14}, Lcom/mobclix/android/sdk/Mobclix;->getUserAgent()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1463
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 1464
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    .line 1465
    .local v10, responseCode:I
    const/16 v13, 0xc8

    if-ne v10, v13, :cond_2

    .line 1466
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v14, 0x1f40

    invoke-direct {v3, v13, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1467
    .end local v2           #br:Ljava/io/BufferedReader;
    .local v3, br:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    .line 1468
    .local v12, tmp:Ljava/lang/String;
    :goto_0
    if-nez v12, :cond_1

    .line 1472
    const-string v13, ""

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 1474
    new-instance v8, Landroid/os/Message;

    invoke-direct {v8}, Landroid/os/Message;-><init>()V

    .line 1475
    .local v8, msg:Landroid/os/Message;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1476
    .local v4, bundle:Landroid/os/Bundle;
    const-string v13, "type"

    const-string v14, "success"

    invoke-virtual {v4, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    const-string v13, "response"

    invoke-virtual {v4, v13, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1478
    invoke-virtual {v8, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;->handler:Landroid/os/Handler;

    move-object v13, v0

    invoke-virtual {v13, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-object v2, v3

    .line 1512
    .end local v3           #br:Ljava/io/BufferedReader;
    .end local v4           #bundle:Landroid/os/Bundle;
    .end local v8           #msg:Landroid/os/Message;
    .end local v12           #tmp:Ljava/lang/String;
    .restart local v2       #br:Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 1514
    :goto_2
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1516
    .end local v10           #responseCode:I
    :goto_3
    return-void

    .line 1469
    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    .restart local v10       #responseCode:I
    .restart local v12       #tmp:Ljava/lang/String;
    :cond_1
    :try_start_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1470
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v12

    goto :goto_0

    .line 1484
    .end local v3           #br:Ljava/io/BufferedReader;
    .end local v12           #tmp:Ljava/lang/String;
    .restart local v2       #br:Ljava/io/BufferedReader;
    :cond_2
    packed-switch v10, :pswitch_data_0

    .line 1498
    const/16 v7, -0x1f7

    .line 1503
    .local v7, errorCode:I
    :goto_4
    :try_start_4
    move-object/from16 v0, p0

    move v1, v7

    invoke-direct {v0, v1}, Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;->sendErrorCode(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 1505
    .end local v7           #errorCode:I
    .end local v10           #responseCode:I
    :catch_0
    move-exception v13

    move-object v6, v13

    .line 1509
    .local v6, e:Ljava/lang/Exception;
    :goto_5
    const/16 v13, -0x1f7

    :try_start_5
    move-object/from16 v0, p0

    move v1, v13

    invoke-direct {v0, v1}, Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;->sendErrorCode(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1512
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 1514
    :goto_6
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_3

    .line 1486
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v10       #responseCode:I
    :pswitch_0
    :try_start_7
    const-string v13, "X-Mobclix-Suballocation"

    invoke-virtual {v5, v13}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1487
    .local v11, sub:Ljava/lang/String;
    if-nez v11, :cond_3

    .line 1488
    const/16 v7, -0x1f7

    .restart local v7       #errorCode:I
    goto :goto_4

    .line 1490
    .end local v7           #errorCode:I
    :cond_3
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-result v7

    .line 1495
    .restart local v7       #errorCode:I
    goto :goto_4

    .line 1510
    .end local v7           #errorCode:I
    .end local v10           #responseCode:I
    .end local v11           #sub:Ljava/lang/String;
    :catchall_0
    move-exception v13

    .line 1512
    :goto_7
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 1514
    :goto_8
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1515
    throw v13

    .line 1513
    .restart local v6       #e:Ljava/lang/Exception;
    :catch_1
    move-exception v13

    goto :goto_6

    .end local v6           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v14

    goto :goto_8

    .restart local v10       #responseCode:I
    :catch_3
    move-exception v13

    goto :goto_2

    .line 1510
    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v13

    move-object v2, v3

    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    goto :goto_7

    .line 1505
    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    :catch_4
    move-exception v13

    move-object v6, v13

    move-object v2, v3

    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    goto :goto_5

    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    .restart local v12       #tmp:Ljava/lang/String;
    :cond_4
    move-object v2, v3

    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    goto :goto_1

    .line 1484
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
    .line 1518
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;->url:Ljava/lang/String;

    return-void
.end method
