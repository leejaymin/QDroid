.class Lorg/chemlab/dealdroidapp/SiteChecker$SiteCheckerThread;
.super Ljava/lang/Thread;
.source "SiteChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chemlab/dealdroidapp/SiteChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SiteCheckerThread"
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final database:Lorg/chemlab/dealdroidapp/Database;

.field private final httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private final preferences:Landroid/content/SharedPreferences;

.field private final sitesToCheck:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/chemlab/dealdroidapp/Site;",
            "Lorg/chemlab/dealdroidapp/Item;",
            ">;"
        }
    .end annotation
.end field

.field private final wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/Map;)V
    .locals 4
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Lorg/chemlab/dealdroidapp/Site;",
            "Lorg/chemlab/dealdroidapp/Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, sitesToCheck:Ljava/util/Map;,"Ljava/util/Map<Lorg/chemlab/dealdroidapp/Site;Lorg/chemlab/dealdroidapp/Item;>;"
    const/16 v3, 0x1388

    .line 216
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 210
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iput-object v1, p0, Lorg/chemlab/dealdroidapp/SiteChecker$SiteCheckerThread;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 214
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/chemlab/dealdroidapp/SiteChecker$SiteCheckerThread;->LOG_TAG:Ljava/lang/String;

    .line 217
    iput-object p1, p0, Lorg/chemlab/dealdroidapp/SiteChecker$SiteCheckerThread;->context:Landroid/content/Context;

    .line 218
    iput-object p2, p0, Lorg/chemlab/dealdroidapp/SiteChecker$SiteCheckerThread;->sitesToCheck:Ljava/util/Map;

    .line 219
    new-instance v1, Lorg/chemlab/dealdroidapp/Database;

    invoke-direct {v1, p1}, Lorg/chemlab/dealdroidapp/Database;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/chemlab/dealdroidapp/SiteChecker$SiteCheckerThread;->database:Lorg/chemlab/dealdroidapp/Database;

    .line 220
    const-string v1, "org.chemlab.dealdroidapp_preferences"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lorg/chemlab/dealdroidapp/SiteChecker$SiteCheckerThread;->preferences:Landroid/content/SharedPreferences;

    .line 221
    iget-object v1, p0, Lorg/chemlab/dealdroidapp/SiteChecker$SiteCheckerThread;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v2, "http.connection.timeout"

    invoke-interface {v1, v2, v3}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 222
    iget-object v1, p0, Lorg/chemlab/dealdroidapp/SiteChecker$SiteCheckerThread;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v2, "http.socket.timeout"

    invoke-interface {v1, v2, v3}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 224
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 225
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "DealDroid"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lorg/chemlab/dealdroidapp/SiteChecker$SiteCheckerThread;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 226
    return-void
.end method

.method private checkSites()V
    .locals 13

    .prologue
    .line 257
    iget-object v9, p0, Lorg/chemlab/dealdroidapp/SiteChecker$SiteCheckerThread;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Updating sites: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lorg/chemlab/dealdroidapp/SiteChecker$SiteCheckerThread;->sitesToCheck:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v9, p0, Lorg/chemlab/dealdroidapp/SiteChecker$SiteCheckerThread;->sitesToCheck:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_1

    .line 302
    return-void

    .line 259
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 261
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lorg/chemlab/dealdroidapp/Site;Lorg/chemlab/dealdroidapp/Item;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/chemlab/dealdroidapp/Site;

    .line 262
    .local v8, site:Lorg/chemlab/dealdroidapp/Site;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/chemlab/dealdroidapp/Item;

    .line 266
    .local v5, oldItem:Lorg/chemlab/dealdroidapp/Item;
    :try_start_0
    new-instance v6, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v8}, Lorg/chemlab/dealdroidapp/Site;->getUrl()Ljava/net/URL;

    move-result-object v10

    invoke-virtual {v10}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v10

    invoke-direct {v6, v10}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 269
    .local v6, req:Lorg/apache/http/client/methods/HttpGet;
    const-string v10, "Cache-Control"

    const-string v11, "no-cache"

    invoke-virtual {v6, v10, v11}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v10, "Pragma"

    const-string v11, "no-cache"

    invoke-virtual {v6, v10, v11}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    if-eqz v5, :cond_2

    .line 274
    invoke-virtual {v5}, Lorg/chemlab/dealdroidapp/Item;->getTimestamp()Ljava/util/Date;

    move-result-object v4

    .line 275
    .local v4, lastModified:Ljava/util/Date;
    if-eqz v4, :cond_2

    .line 276
    const-string v10, "If-Modified-Since"

    invoke-static {v4}, Lorg/chemlab/dealdroidapp/Utils;->formatRFC822Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    .end local v4           #lastModified:Ljava/util/Date;
    :cond_2
    iget-object v10, p0, Lorg/chemlab/dealdroidapp/SiteChecker$SiteCheckerThread;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v10, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 282
    .local v7, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    const/16 v11, 0xc8

    if-ne v10, v11, :cond_3

    .line 284
    invoke-virtual {v8}, Lorg/chemlab/dealdroidapp/Site;->getHandler()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chemlab/dealdroidapp/feed/FeedHandler;

    .line 286
    .local v2, handler:Lorg/chemlab/dealdroidapp/feed/FeedHandler;
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 287
    .local v3, in:Ljava/io/InputStream;
    invoke-virtual {v8}, Lorg/chemlab/dealdroidapp/Site;->getEncoding()Landroid/util/Xml$Encoding;

    move-result-object v10

    invoke-static {v3, v10, v2}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V

    .line 288
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 290
    invoke-interface {v2}, Lorg/chemlab/dealdroidapp/feed/FeedHandler;->getCurrentItem()Lorg/chemlab/dealdroidapp/Item;

    move-result-object v10

    invoke-direct {p0, v8, v10}, Lorg/chemlab/dealdroidapp/SiteChecker$SiteCheckerThread;->notify(Lorg/chemlab/dealdroidapp/Site;Lorg/chemlab/dealdroidapp/Item;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 296
    .end local v2           #handler:Lorg/chemlab/dealdroidapp/feed/FeedHandler;
    .end local v3           #in:Ljava/io/InputStream;
    .end local v6           #req:Lorg/apache/http/client/methods/HttpGet;
    .end local v7           #response:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v0

    .line 298
    .local v0, e:Ljava/lang/Throwable;
    iget-object v10, p0, Lorg/chemlab/dealdroidapp/SiteChecker$SiteCheckerThread;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 292
    .end local v0           #e:Ljava/lang/Throwable;
    .restart local v6       #req:Lorg/apache/http/client/methods/HttpGet;
    .restart local v7       #response:Lorg/apache/http/HttpResponse;
    :cond_3
    :try_start_1
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    const/16 v11, 0x130

    if-eq v10, v11, :cond_0

    .line 293
    iget-object v10, p0, Lorg/chemlab/dealdroidapp/SiteChecker$SiteCheckerThread;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "HTTP request for "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lorg/chemlab/dealdroidapp/Site;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " failed: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private createNotification(Lorg/chemlab/dealdroidapp/Site;Lorg/chemlab/dealdroidapp/Item;)Landroid/app/Notification;
    .locals 12
    .parameter "site"
    .parameter "item"

    .prologue
    const/16 v11, 0x1f4

    const/4 v10, 0x0

    .line 334
    new-instance v3, Landroid/app/Notification;

    invoke-virtual {p1}, Lorg/chemlab/dealdroidapp/Site;->getDrawable()I

    move-result v6

    invoke-virtual {p2}, Lorg/chemlab/dealdroidapp/Item;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v3, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 336
    .local v3, notification:Landroid/app/Notification;
    invoke-virtual {p2}, Lorg/chemlab/dealdroidapp/Item;->getLink()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p1, v6}, Lorg/chemlab/dealdroidapp/Site;->applyAffiliation(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 341
    .local v2, link:Landroid/net/Uri;
    iget-object v6, p0, Lorg/chemlab/dealdroidapp/SiteChecker$SiteCheckerThread;->context:Landroid/content/Context;

    invoke-static {v6, p1}, Lorg/chemlab/dealdroidapp/Utils;->hasSiteAsset(Landroid/content/Context;Lorg/chemlab/dealdroidapp/Site;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 342
    new-instance v1, Landroid/content/Intent;

    iget-object v6, p0, Lorg/chemlab/dealdroidapp/SiteChecker$SiteCheckerThread;->context:Landroid/content/Context;

    const-class v7, Lorg/chemlab/dealdroidapp/ItemViewer;

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 346
    .local v1, i:Landroid/content/Intent;
    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 347
    const-string v6, "site"

    invoke-virtual {p1}, Lorg/chemlab/dealdroidapp/Site;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    iget-object v6, p0, Lorg/chemlab/dealdroidapp/SiteChecker$SiteCheckerThread;->context:Landroid/content/Context;

    invoke-static {v6, v10, v1, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 352
    .local v0, contentIntent:Landroid/app/PendingIntent;
    invoke-virtual {p2}, Lorg/chemlab/dealdroidapp/Item;->getSalePrice()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {p2}, Lorg/chemlab/dealdroidapp/Item;->getSavings()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 353
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "$"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/chemlab/dealdroidapp/Item;->getSalePrice()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lorg/chemlab/dealdroidapp/Item;->getSavings()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "% Off! Regularly: $"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lorg/chemlab/dealdroidapp/Item;->getRetailPrice()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 362
    .local v5, summary:Ljava/lang/String;
    :goto_1
    if-nez v5, :cond_7

    .line 363
    iget-object v6, p0, Lorg/chemlab/dealdroidapp/SiteChecker$SiteCheckerThread;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lorg/chemlab/dealdroidapp/Site;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lorg/chemlab/dealdroidapp/Item;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v6, v7, v8, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 368
    :goto_2
    iget v6, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v3, Landroid/app/Notification;->flags:I

    .line 371
    iget-object v6, p0, Lorg/chemlab/dealdroidapp/SiteChecker$SiteCheckerThread;->preferences:Landroid/content/SharedPreferences;

    const-string v7, "notify_vibrate"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 372
    const/4 v6, 0x4

    new-array v6, v6, [J

    fill-array-data v6, :array_0

    iput-object v6, v3, Landroid/app/Notification;->vibrate:[J

    .line 375
    :cond_0
    iget-object v6, p0, Lorg/chemlab/dealdroidapp/SiteChecker$SiteCheckerThread;->preferences:Landroid/content/SharedPreferences;

    const-string v7, "notify_ringtone"

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 376
    .local v4, ringtone:Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 377
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, v3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 380
    :cond_1
    iget-object v6, p0, Lorg/chemlab/dealdroidapp/SiteChecker$SiteCheckerThread;->preferences:Landroid/content/SharedPreferences;

    const-string v7, "notify_lights"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 381
    const v6, -0xae8f

    iput v6, v3, Landroid/app/Notification;->ledARGB:I

    .line 382
    iput v11, v3, Landroid/app/Notification;->ledOnMS:I

    .line 383
    iput v11, v3, Landroid/app/Notification;->ledOffMS:I

    .line 384
    iget v6, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x1

    iput v6, v3, Landroid/app/Notification;->flags:I

    .line 387
    :cond_2
    return-object v3

    .line 344
    .end local v0           #contentIntent:Landroid/app/PendingIntent;
    .end local v1           #i:Landroid/content/Intent;
    .end local v4           #ringtone:Ljava/lang/String;
    .end local v5           #summary:Ljava/lang/String;
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v1       #i:Landroid/content/Intent;
    goto/16 :goto_0

    .line 354
    .restart local v0       #contentIntent:Landroid/app/PendingIntent;
    :cond_4
    invoke-virtual {p2}, Lorg/chemlab/dealdroidapp/Item;->getSalePrice()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {p2}, Lorg/chemlab/dealdroidapp/Item;->getShortDescription()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 355
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/chemlab/dealdroidapp/Item;->getSalePrice()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lorg/chemlab/dealdroidapp/Item;->getShortDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #summary:Ljava/lang/String;
    goto/16 :goto_1

    .line 356
    .end local v5           #summary:Ljava/lang/String;
    :cond_5
    invoke-virtual {p2}, Lorg/chemlab/dealdroidapp/Item;->getSalePrice()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 357
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "$"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/chemlab/dealdroidapp/Item;->getSalePrice()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lorg/chemlab/dealdroidapp/Site;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #summary:Ljava/lang/String;
    goto/16 :goto_1

    .line 359
    .end local v5           #summary:Ljava/lang/String;
    :cond_6
    const/4 v5, 0x0

    .restart local v5       #summary:Ljava/lang/String;
    goto/16 :goto_1

    .line 365
    :cond_7
    iget-object v6, p0, Lorg/chemlab/dealdroidapp/SiteChecker$SiteCheckerThread;->context:Landroid/content/Context;

    invoke-virtual {p2}, Lorg/chemlab/dealdroidapp/Item;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7, v5, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto/16 :goto_2

    .line 372
    :array_0
    .array-data 0x8
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private notify(Lorg/chemlab/dealdroidapp/Site;Lorg/chemlab/dealdroidapp/Item;)V
    .locals 3
    .parameter "site"
    .parameter "item"

    .prologue
    .line 310
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/chemlab/dealdroidapp/Item;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 312
    iget-object v0, p0, Lorg/chemlab/dealdroidapp/SiteChecker$SiteCheckerThread;->database:Lorg/chemlab/dealdroidapp/Database;

    invoke-virtual {v0, p1, p2}, Lorg/chemlab/dealdroidapp/Database;->updateStateIfNotCurrent(Lorg/chemlab/dealdroidapp/Site;Lorg/chemlab/dealdroidapp/Item;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lorg/chemlab/dealdroidapp/SiteChecker$SiteCheckerThread;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Creating new notification for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/chemlab/dealdroidapp/Site;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v0, p0, Lorg/chemlab/dealdroidapp/SiteChecker$SiteCheckerThread;->context:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {p1}, Lorg/chemlab/dealdroidapp/Site;->ordinal()I

    move-result v1

    invoke-direct {p0, p1, p2}, Lorg/chemlab/dealdroidapp/SiteChecker$SiteCheckerThread;->createNotification(Lorg/chemlab/dealdroidapp/Site;Lorg/chemlab/dealdroidapp/Item;)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    if-nez p2, :cond_2

    .line 320
    iget-object v0, p0, Lorg/chemlab/dealdroidapp/SiteChecker$SiteCheckerThread;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Item was null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 322
    :cond_2
    iget-object v0, p0, Lorg/chemlab/dealdroidapp/SiteChecker$SiteCheckerThread;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Incomplete item object, not notifying."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lorg/chemlab/dealdroidapp/SiteChecker$SiteCheckerThread;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lorg/chemlab/dealdroidapp/SiteChecker$SiteCheckerThread;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 242
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/chemlab/dealdroidapp/SiteChecker$SiteCheckerThread;->database:Lorg/chemlab/dealdroidapp/Database;

    invoke-virtual {v0}, Lorg/chemlab/dealdroidapp/Database;->open()V

    .line 243
    invoke-direct {p0}, Lorg/chemlab/dealdroidapp/SiteChecker$SiteCheckerThread;->checkSites()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    iget-object v0, p0, Lorg/chemlab/dealdroidapp/SiteChecker$SiteCheckerThread;->database:Lorg/chemlab/dealdroidapp/Database;

    invoke-virtual {v0}, Lorg/chemlab/dealdroidapp/Database;->close()V

    .line 246
    iget-object v0, p0, Lorg/chemlab/dealdroidapp/SiteChecker$SiteCheckerThread;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lorg/chemlab/dealdroidapp/SiteChecker$SiteCheckerThread;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 250
    :cond_1
    return-void

    .line 244
    :catchall_0
    move-exception v0

    .line 245
    iget-object v1, p0, Lorg/chemlab/dealdroidapp/SiteChecker$SiteCheckerThread;->database:Lorg/chemlab/dealdroidapp/Database;

    invoke-virtual {v1}, Lorg/chemlab/dealdroidapp/Database;->close()V

    .line 246
    iget-object v1, p0, Lorg/chemlab/dealdroidapp/SiteChecker$SiteCheckerThread;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_2

    .line 247
    iget-object v1, p0, Lorg/chemlab/dealdroidapp/SiteChecker$SiteCheckerThread;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 249
    :cond_2
    throw v0
.end method
