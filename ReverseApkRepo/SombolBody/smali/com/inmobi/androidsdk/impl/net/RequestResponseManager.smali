.class public final Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;
.super Ljava/lang/Object;
.source "RequestResponseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->b:Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a:Landroid/content/Context;

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;Ljava/net/HttpURLConnection;Lcom/inmobi/androidsdk/impl/UserInfo;)Lcom/inmobi/androidsdk/impl/AdUnit;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inmobi/androidsdk/impl/AdException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    invoke-direct {p0, p1, p2}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a(Ljava/net/HttpURLConnection;Lcom/inmobi/androidsdk/impl/UserInfo;)Lcom/inmobi/androidsdk/impl/AdUnit;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/net/HttpURLConnection;Lcom/inmobi/androidsdk/impl/UserInfo;)Lcom/inmobi/androidsdk/impl/AdUnit;
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inmobi/androidsdk/impl/AdException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 287
    .line 290
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 291
    const-string v0, "InMobiAndroidSDK_3.5.4"

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Http Status Code: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 291
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_6

    .line 297
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    .line 298
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v0, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 297
    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 299
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    .line 305
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 306
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 307
    const-string v0, "InMobiAndroidSDK_3.5.4"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Ad Response: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v6

    .line 313
    if-eqz v6, :cond_3

    .line 314
    const-string v0, "x-mkhoj-ph"

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 316
    const-string v0, "x-mkhoj-ph"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 317
    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v7, :cond_9

    .line 318
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 323
    :goto_1
    const-string v0, "inmobicachedserver"

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 326
    const-string v0, "inmobicachedserver"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 329
    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v7, :cond_8

    .line 330
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 332
    const-string v0, "inmobicachedlife"

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 334
    const-string v0, "inmobicachedlife"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 335
    if-eqz v0, :cond_7

    .line 336
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v7, :cond_7

    .line 337
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 338
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    move-object v2, v4

    .line 342
    :goto_2
    invoke-direct {p0, v2, v0}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v2, v3

    .line 346
    :cond_3
    new-instance v0, Ljava/io/BufferedReader;

    .line 347
    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    .line 348
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v5, "UTF-8"

    .line 347
    invoke-direct {v3, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 346
    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 350
    new-instance v3, Lcom/inmobi/androidsdk/impl/XMLParser;

    invoke-direct {v3}, Lcom/inmobi/androidsdk/impl/XMLParser;-><init>()V

    .line 352
    invoke-virtual {v3, v0}, Lcom/inmobi/androidsdk/impl/XMLParser;->buildAdUnitFromResponseData(Ljava/io/Reader;)Lcom/inmobi/androidsdk/impl/AdUnit;

    move-result-object v0

    .line 353
    sget-boolean v3, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v3, :cond_4

    .line 354
    const-string v3, "InMobiAndroidSDK_3.5.4"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Retrived AdUnit: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_4
    invoke-direct {p0, v0, p2, v2}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a(Lcom/inmobi/androidsdk/impl/AdUnit;Lcom/inmobi/androidsdk/impl/UserInfo;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 361
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 362
    invoke-direct {p0, v1}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a(Ljava/io/Closeable;)V

    .line 358
    return-object v0

    .line 303
    :cond_5
    :try_start_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 359
    :catchall_0
    move-exception v0

    .line 361
    :goto_3
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 362
    invoke-direct {p0, v1}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a(Ljava/io/Closeable;)V

    .line 363
    throw v0

    .line 369
    :cond_6
    const-string v0, "InMobiAndroidSDK_3.5.4"

    .line 370
    const-string v1, "Invalid Request. This may be because of invalid appId or appId might not be in \'active\' state."

    .line 369
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    new-instance v0, Lcom/inmobi/androidsdk/impl/AdException;

    const-string v1, "Server did not return 200."

    .line 372
    const/16 v2, 0x12c

    .line 371
    invoke-direct {v0, v1, v2}, Lcom/inmobi/androidsdk/impl/AdException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 359
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :cond_7
    move-object v0, v2

    move-object v2, v4

    goto :goto_2

    :cond_8
    move-object v0, v2

    goto :goto_2

    :cond_9
    move-object v3, v2

    goto/16 :goto_1
.end method

.method private a()Ljava/lang/String;
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    .line 424
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a:Landroid/content/Context;

    .line 425
    const-string v2, "InMobi_Prefs_key"

    const/4 v3, 0x0

    .line 424
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 427
    const-string v0, "inmobicachedserver"

    .line 426
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 428
    if-eqz v0, :cond_0

    .line 429
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 430
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 432
    const-string v5, "inmobi_cached_timestamp"

    .line 431
    invoke-interface {v2, v5, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 434
    const-string v7, "inmobicachedlife"

    .line 433
    invoke-interface {v2, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 435
    sub-long v2, v3, v5

    cmp-long v2, v2, v7

    if-gtz v2, :cond_0

    .line 439
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private a(Lcom/inmobi/androidsdk/impl/UserInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 160
    const/4 v0, 0x0

    .line 164
    invoke-virtual {p1}, Lcom/inmobi/androidsdk/impl/UserInfo;->isTestMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    const-string p2, "http://i.w.sandbox.inmobi.com/showad.asm"

    .line 173
    :cond_0
    :goto_0
    return-object p2

    .line 168
    :cond_1
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a()Ljava/lang/String;

    .line 169
    if-eqz v0, :cond_0

    move-object p2, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;Lcom/inmobi/androidsdk/impl/UserInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 159
    invoke-direct {p0, p1, p2}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a(Lcom/inmobi/androidsdk/impl/UserInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;Ljava/lang/String;Lcom/inmobi/androidsdk/impl/UserInfo;Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;)Ljava/net/HttpURLConnection;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    invoke-direct {p0, p1, p2, p3}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a(Ljava/lang/String;Lcom/inmobi/androidsdk/impl/UserInfo;Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Lcom/inmobi/androidsdk/impl/UserInfo;Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;)Ljava/net/HttpURLConnection;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    .line 223
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 225
    invoke-static {v0, p2, p3}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a(Ljava/net/HttpURLConnection;Lcom/inmobi/androidsdk/impl/UserInfo;Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;)V

    .line 226
    return-object v0
.end method

.method private a(Lcom/inmobi/androidsdk/impl/AdUnit;Lcom/inmobi/androidsdk/impl/UserInfo;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 379
    if-nez p1, :cond_0

    .line 385
    :goto_0
    return-void

    .line 382
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/inmobi/androidsdk/impl/AdUnit;->setSendDeviceInfo(Z)V

    .line 383
    invoke-virtual {p1, p3}, Lcom/inmobi/androidsdk/impl/AdUnit;->setDeviceInfoUploadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    invoke-direct {p0, p1, p2}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/io/Closeable;)V
    .locals 4
    .parameter

    .prologue
    .line 246
    if-eqz p1, :cond_0

    .line 248
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 249
    :catch_0
    move-exception v0

    .line 250
    const-string v1, "InMobiAndroidSDK_3.5.4"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception closing resource: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 250
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const-wide/32 v0, 0x2932e00

    .line 443
    iget-object v2, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a:Landroid/content/Context;

    .line 444
    const-string v3, "InMobi_Prefs_key"

    const/4 v4, 0x0

    .line 443
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 445
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 446
    if-eqz p1, :cond_0

    .line 447
    const-string v3, "inmobicachedserver"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 449
    :cond_0
    if-eqz p2, :cond_1

    .line 452
    :try_start_0
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    const-wide/16 v3, 0x3e8

    mul-long/2addr v0, v3

    .line 456
    :goto_0
    const-string v3, "inmobicachedlife"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 461
    :goto_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 462
    const-string v1, "inmobi_cached_timestamp"

    .line 463
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 462
    invoke-interface {v2, v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 464
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 465
    return-void

    .line 458
    :cond_1
    const-string v3, "inmobicachedlife"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 453
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private static a(Ljava/net/HttpURLConnection;Lcom/inmobi/androidsdk/impl/UserInfo;Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x7530

    const/4 v0, 0x1

    .line 258
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 259
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 260
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 261
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 262
    const-string v0, "user-agent"

    invoke-virtual {p1}, Lcom/inmobi/androidsdk/impl/UserInfo;->getPhoneDefaultUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v1, "x-mkhoj-testmode"

    .line 264
    invoke-virtual {p1}, Lcom/inmobi/androidsdk/impl/UserInfo;->isTestMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "YES"

    .line 263
    :goto_0
    invoke-virtual {p0, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 270
    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;->AdClick:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;

    if-ne p2, v0, :cond_2

    .line 271
    const-string v0, "GET"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 275
    :goto_1
    const-string v0, "content-type"

    .line 276
    const-string v1, "application/x-www-form-urlencoded"

    .line 275
    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-virtual {p1}, Lcom/inmobi/androidsdk/impl/UserInfo;->isTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    const-string v1, "x-mkhoj-adactiontype"

    .line 280
    invoke-virtual {p1}, Lcom/inmobi/androidsdk/impl/UserInfo;->getTestModeAdActionType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 281
    invoke-virtual {p1}, Lcom/inmobi/androidsdk/impl/UserInfo;->getTestModeAdActionType()Ljava/lang/String;

    move-result-object v0

    .line 278
    :goto_2
    invoke-virtual {p0, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    :cond_0
    return-void

    .line 264
    :cond_1
    const-string v0, "NO"

    goto :goto_0

    .line 273
    :cond_2
    const-string v0, "POST"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_1

    .line 281
    :cond_3
    const-string v0, "web"

    goto :goto_2
.end method

.method private a(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    const-string v0, "Content-Length"

    .line 233
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 232
    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const/4 v2, 0x0

    .line 237
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    .line 238
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 237
    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 241
    invoke-direct {p0, v1}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a(Ljava/io/Closeable;)V

    .line 243
    return-void

    .line 240
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 241
    :goto_0
    invoke-direct {p0, v1}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a(Ljava/io/Closeable;)V

    .line 242
    throw v0

    .line 240
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method private b(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 389
    const/4 v1, 0x0

    .line 390
    invoke-static {v4}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 393
    :try_start_0
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 394
    const-string v0, "InMobiAndroidSDK_3.5.4"

    .line 395
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HTTP Response code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 394
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 398
    :cond_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 405
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 406
    :cond_2
    const-string v0, "location"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 409
    :goto_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    .line 410
    if-eqz v0, :cond_3

    const-string v2, "action-name"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 411
    const-string v2, "action-name"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 412
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 413
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->setNewAdActionType(Ljava/lang/String;)V

    .line 416
    :cond_3
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 417
    const-string v0, "InMobiAndroidSDK_3.5.4"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Redirection URL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_4
    return-object v1

    .line 400
    :catch_0
    move-exception v0

    .line 401
    const-string v2, "InMobiAndroidSDK_3.5.4"

    .line 402
    const-string v3, "Exception getting response code for redirection URL"

    .line 401
    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    move-object v0, v1

    goto :goto_0

    :cond_6
    move-object v1, v0

    goto :goto_1
.end method


# virtual methods
.method public asyncPing(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 477
    new-instance v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$2;

    invoke-direct {v0, p0, p1}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$2;-><init>(Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;Ljava/lang/String;)V

    .line 511
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$2;->start()V

    .line 512
    return-void
.end method

.method public asyncRequestAd(Lcom/inmobi/androidsdk/impl/UserInfo;Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;Ljava/lang/String;Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    new-instance v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$1;-><init>(Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;Lcom/inmobi/androidsdk/impl/UserInfo;Ljava/lang/String;Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;)V

    .line 155
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$1;->start()V

    .line 157
    return-void
.end method

.method public getNewAdActionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->b:Ljava/lang/String;

    return-object v0
.end method

.method public initiateClick(Ljava/lang/String;Lcom/inmobi/androidsdk/impl/UserInfo;Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/inmobi/androidsdk/impl/UserInfo;",
            "Ljava/util/List",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 180
    const-string v0, "InMobiAndroidSDK_3.5.4"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ">>> Enter initiateClick, clickURL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_0
    const/4 v0, 0x0

    .line 185
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 186
    const-string v1, "x-mkhoj-adactiontype"

    const/4 v2, 0x0

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    const/4 v0, 0x1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 192
    :cond_1
    sget-object v1, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;->AdClick:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;

    invoke-direct {p0, p1, p2, v1}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a(Ljava/lang/String;Lcom/inmobi/androidsdk/impl/UserInfo;Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 193
    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/inmobi/androidsdk/impl/UserInfo;->isTestMode()Z

    move-result v2

    if-nez v2, :cond_2

    .line 194
    const-string v2, "x-mkhoj-adactionType"

    invoke-virtual {v1, v2, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_2
    invoke-direct {p0, v1, p1}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->b(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestAd(Ljava/lang/String;Lcom/inmobi/androidsdk/impl/UserInfo;Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;)Lcom/inmobi/androidsdk/impl/AdUnit;
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inmobi/androidsdk/impl/AdException;
        }
    .end annotation

    .prologue
    .line 56
    :try_start_0
    invoke-static {p2, p3}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->a(Lcom/inmobi/androidsdk/impl/UserInfo;Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;)Ljava/lang/String;

    move-result-object v0

    .line 57
    const-string v1, "InMobiAndroidSDK_3.5.4"

    invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a(Ljava/lang/String;Lcom/inmobi/androidsdk/impl/UserInfo;Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 60
    invoke-direct {p0, v1, v0}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    .line 62
    invoke-direct {p0, v1, p2}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a(Ljava/net/HttpURLConnection;Lcom/inmobi/androidsdk/impl/UserInfo;)Lcom/inmobi/androidsdk/impl/AdUnit;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    .line 63
    :catch_0
    move-exception v0

    .line 65
    const-string v1, "InMobiAndroidSDK_3.5.4"

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception occured while requesting an ad"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 69
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNewAdActionType(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 472
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->b:Ljava/lang/String;

    .line 473
    return-void
.end method

.method public uploadDeviceInfo(Ljava/lang/String;Lcom/inmobi/androidsdk/impl/UserInfo;Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    invoke-static {p2, p3}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->a(Lcom/inmobi/androidsdk/impl/UserInfo;Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;)Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-direct {p0, p1, p2, p3}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a(Ljava/lang/String;Lcom/inmobi/androidsdk/impl/UserInfo;Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;)Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 208
    invoke-direct {p0, v3, v0}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    .line 209
    const/4 v2, 0x0

    .line 211
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    .line 212
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 211
    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    :try_start_1
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 216
    invoke-direct {p0, v1}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a(Ljava/io/Closeable;)V

    .line 218
    return-void

    .line 215
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 216
    :goto_0
    invoke-direct {p0, v1}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a(Ljava/io/Closeable;)V

    .line 217
    throw v0

    .line 215
    :catchall_1
    move-exception v0

    goto :goto_0
.end method
