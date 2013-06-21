.class public Lcom/scoreloop/client/android/core/model/Client;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/model/SessionObserver;
.implements Lcom/scoreloop/client/android/core/util/Destroyable;


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/scoreloop/client/android/core/model/ClientObserver;

.field private c:Lcom/scoreloop/client/android/core/model/Session;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 89
    sput-object v0, Lcom/scoreloop/client/android/core/model/Client;->a:Ljava/util/Map;

    const-string v1, "payment.paypalx"

    const-string v2, "paypal_mobile"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/scoreloop/client/android/core/model/Client;->a:Ljava/util/Map;

    const-string v1, "payment.creditcard"

    const-string v2, "credit_card"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/scoreloop/client/android/core/model/Client;->a:Ljava/util/Map;

    const-string v1, "payment.fortumo"

    const-string v2, "fortumo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/scoreloop/client/android/core/model/Client;->a:Ljava/util/Map;

    const-string v1, "payment.slvirtualcurrency"

    const-string v2, "game_currency"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/scoreloop/client/android/core/model/Client;->a:Ljava/util/Map;

    const-string v1, "payment.googlecheckout"

    const-string v2, "google_checkout"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/scoreloop/client/android/core/model/Client;->a:Ljava/util/Map;

    const-string v1, "payment.googlemarket"

    const-string v2, "google_market"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/scoreloop/client/android/core/model/ClientObserver;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_3_0;
    .end annotation

    .prologue
    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    if-nez p1, :cond_0

    .line 317
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the application context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_0
    if-nez p2, :cond_1

    .line 320
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the secret must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_1
    invoke-static {p1}, Lcom/scoreloop/client/android/core/model/Client;->getProperties(Landroid/content/Context;)Ljava/util/Properties;

    move-result-object v0

    .line 324
    const-string v1, "game.secret"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 325
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove game.secret from the scoreloop.properties file!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :cond_2
    const-string v1, "game.secret"

    invoke-virtual {v0, v1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 329
    invoke-direct {p0, p1, p3, v0}, Lcom/scoreloop/client/android/core/model/Client;->a(Landroid/content/Context;Lcom/scoreloop/client/android/core/model/ClientObserver;Ljava/util/Properties;)V

    .line 330
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/scoreloop/client/android/core/model/ClientObserver;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    if-nez p1, :cond_0

    .line 360
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the application context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :cond_0
    invoke-static {p1}, Lcom/scoreloop/client/android/core/model/Client;->getProperties(Landroid/content/Context;)Ljava/util/Properties;

    move-result-object v0

    .line 363
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 364
    const-string v1, "game.id"

    invoke-virtual {v0, v1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 365
    const-string v1, "game.secret"

    invoke-virtual {v0, v1, p3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 368
    :cond_1
    invoke-direct {p0, p1, p4, v0}, Lcom/scoreloop/client/android/core/model/Client;->a(Landroid/content/Context;Lcom/scoreloop/client/android/core/model/ClientObserver;Ljava/util/Properties;)V

    .line 369
    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/util/Properties;
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 155
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 159
    if-nez v1, :cond_0

    .line 178
    :goto_0
    return-object v0

    .line 165
    :cond_0
    :try_start_0
    const-string v2, "scoreloop.properties"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 172
    :try_start_1
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 173
    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    .line 178
    goto :goto_0

    .line 175
    :catch_0
    move-exception v1

    goto :goto_0

    .line 167
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Lcom/scoreloop/client/android/core/model/ClientObserver;Ljava/util/Properties;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 532
    :try_start_0
    const-string v0, "com.scoreloop.client.android.core.settings.Settings"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 533
    const-string v2, "init"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/util/Properties;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 534
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 536
    :goto_0
    iput-object p2, p0, Lcom/scoreloop/client/android/core/model/Client;->b:Lcom/scoreloop/client/android/core/model/ClientObserver;

    .line 542
    const-string v0, "game.id"

    invoke-virtual {p3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 543
    const-string v0, "game.secret"

    invoke-virtual {p3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 545
    const-string v0, "game.id"

    invoke-static {p3, v0}, Lcom/scoreloop/client/android/core/model/Client;->a(Ljava/util/Properties;Ljava/lang/String;)V

    const-string v0, "game.secret"

    invoke-static {p3, v0}, Lcom/scoreloop/client/android/core/model/Client;->a(Ljava/util/Properties;Ljava/lang/String;)V

    const-string v0, "game.name"

    invoke-static {p3, v0, v1}, Lcom/scoreloop/client/android/core/model/Client;->a(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "game.version"

    const-string v2, "1.0"

    invoke-static {p3, v0, v2}, Lcom/scoreloop/client/android/core/model/Client;->a(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "currency.code"

    invoke-static {p3, v0, v1}, Lcom/scoreloop/client/android/core/model/Client;->a(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "currency.name.singular"

    invoke-static {p3, v0, v1}, Lcom/scoreloop/client/android/core/model/Client;->a(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "currency.name.plural"

    invoke-static {p3, v0, v1}, Lcom/scoreloop/client/android/core/model/Client;->a(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "format.money"

    invoke-static {p3, v0, v1}, Lcom/scoreloop/client/android/core/model/Client;->a(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "format.score"

    invoke-static {p3, v0, v1}, Lcom/scoreloop/client/android/core/model/Client;->a(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "game.mode.min"

    invoke-virtual {p3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_1

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "property game.mode.min must be a valid integer >= 0"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    move-object v0, v1

    :cond_1
    const-string v2, "game.mode.max"

    invoke-virtual {p3, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    :try_start_2
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gtz v5, :cond_3

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "property game.mode.max must be a valid integer >= 1"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    move-object v2, v1

    :cond_3
    if-nez v0, :cond_4

    if-eqz v2, :cond_7

    :cond_4
    if-eqz v0, :cond_5

    if-nez v2, :cond_6

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "you have to provide both game.mode.min and game.mode.max"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v0, v2, :cond_7

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "game.mode.min must be less than game.mode.max"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 546
    :cond_7
    invoke-static {p1, v3}, Lcom/scoreloop/client/android/core/model/Client;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 548
    if-eqz v3, :cond_a

    if-eqz v4, :cond_a

    .line 549
    new-instance v1, Lcom/scoreloop/client/android/core/model/Game;

    invoke-direct {v1, v3, v4}, Lcom/scoreloop/client/android/core/model/Game;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    const-string v0, "game.version"

    invoke-virtual {p3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/scoreloop/client/android/core/model/Game;->d(Ljava/lang/String;)V

    .line 552
    const-string v0, "game.name"

    invoke-virtual {p3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/scoreloop/client/android/core/model/Game;->c(Ljava/lang/String;)V

    .line 554
    const-string v0, "game.mode.min"

    invoke-virtual {p3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 555
    if-eqz v0, :cond_8

    .line 556
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/scoreloop/client/android/core/model/Game;->d(Ljava/lang/Integer;)V

    .line 558
    :cond_8
    const-string v0, "game.mode.max"

    invoke-virtual {p3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 559
    if-eqz v0, :cond_9

    .line 560
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/scoreloop/client/android/core/model/Game;->b(Ljava/lang/Integer;)V

    .line 562
    :cond_9
    new-instance v0, Lcom/scoreloop/client/android/core/model/ScoreOrdering;

    const-string v2, "game.score.ordering"

    invoke-virtual {p3, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/scoreloop/client/android/core/model/ScoreOrdering;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/scoreloop/client/android/core/model/Game;->a(Lcom/scoreloop/client/android/core/model/ScoreOrdering;)V

    .line 565
    :cond_a
    :try_start_3
    new-instance v0, Lcom/scoreloop/client/android/core/server/Server;

    new-instance v2, Ljava/net/URL;

    const-string v3, "https://api.scoreloop.com/bayeux"

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p1, v2}, Lcom/scoreloop/client/android/core/server/Server;-><init>(Landroid/content/Context;Ljava/net/URL;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_2

    .line 573
    if-eqz v1, :cond_b

    .line 575
    :try_start_4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 576
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 577
    const-string v4, "id"

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Game;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 578
    const-string v4, "secret"

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Game;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 579
    const-string v4, "version"

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Game;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 580
    sget-object v4, Lcom/scoreloop/client/android/core/model/Game;->a:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 581
    invoke-virtual {v0, v2}, Lcom/scoreloop/client/android/core/server/Server;->a(Lorg/json/JSONObject;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    .line 587
    :cond_b
    new-instance v2, Lcom/scoreloop/client/android/core/model/Session;

    invoke-direct {v2, p0, v0}, Lcom/scoreloop/client/android/core/model/Session;-><init>(Lcom/scoreloop/client/android/core/model/SessionObserver;Lcom/scoreloop/client/android/core/server/Server;)V

    iput-object v2, p0, Lcom/scoreloop/client/android/core/model/Client;->c:Lcom/scoreloop/client/android/core/model/Session;

    .line 588
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Client;->c:Lcom/scoreloop/client/android/core/model/Session;

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/model/Session;->a(Lcom/scoreloop/client/android/core/model/Game;)V

    .line 589
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Client;->c:Lcom/scoreloop/client/android/core/model/Session;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/model/Session;->a(Lcom/scoreloop/client/android/core/model/Session;)V

    .line 591
    instance-of v0, p1, Landroid/app/Service;

    if-eqz v0, :cond_c

    .line 592
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/core/model/Client;->b(Landroid/content/Context;)V

    .line 597
    :goto_1
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Client;->c:Lcom/scoreloop/client/android/core/model/Session;

    const-string v1, "terms_of_service.enforce"

    invoke-static {p3, v1, v6}, Lcom/scoreloop/client/android/core/model/Client;->a(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/model/Session;->b(Z)V

    .line 600
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Client;->c:Lcom/scoreloop/client/android/core/model/Session;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->j()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 602
    :try_start_5
    sget-object v0, Lcom/scoreloop/client/android/core/settings/CommonSettings$TermsOfService;->b:Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/core/model/Client;->a(Ljava/lang/Class;)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_4

    .line 613
    :goto_2
    new-instance v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter;

    const-string v1, "format.score"

    invoke-virtual {p3, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/scoreloop/client/android/core/model/ScoreFormatter;-><init>(Ljava/lang/String;)V

    .line 614
    invoke-static {v0}, Lcom/scoreloop/client/android/core/model/ScoreFormatter;->setDefaultScoreFormatter(Lcom/scoreloop/client/android/core/model/ScoreFormatter;)V

    .line 617
    new-instance v0, Lcom/scoreloop/client/android/core/model/MoneyFormatter;

    const-string v1, "format.money"

    const-string v2, "%.2f %s"

    invoke-virtual {p3, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "currency.name.singular"

    invoke-virtual {p3, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "currency.name.plural"

    invoke-virtual {p3, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/scoreloop/client/android/core/model/MoneyFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    invoke-static {v0}, Lcom/scoreloop/client/android/core/model/MoneyFormatter;->setDefaultMoneyFormatter(Lcom/scoreloop/client/android/core/model/MoneyFormatter;)V

    .line 623
    const-string v0, "currency.code"

    invoke-virtual {p3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/scoreloop/client/android/core/model/Money;->a(Ljava/lang/String;)V

    .line 624
    const-string v0, "currency.name.plural"

    invoke-virtual {p3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/scoreloop/client/android/core/model/Money;->b(Ljava/lang/String;)V

    .line 627
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Client;->c:Lcom/scoreloop/client/android/core/model/Session;

    const-string v1, "main_thread.enforce"

    invoke-static {p3, v1, v6}, Lcom/scoreloop/client/android/core/model/Client;->a(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/model/Session;->a(Z)V

    .line 629
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Client;->c:Lcom/scoreloop/client/android/core/model/Session;

    const-string v1, "local.leaderboard.max.scores"

    invoke-static {p3, v1}, Lcom/scoreloop/client/android/core/model/Client;->b(Ljava/util/Properties;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/model/Session;->b(I)V

    .line 630
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Client;->c:Lcom/scoreloop/client/android/core/model/Session;

    const-string v1, "network.offline.support.score"

    invoke-static {p3, v1, v7}, Lcom/scoreloop/client/android/core/model/Client;->a(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/model/Session;->c(Z)V

    .line 633
    invoke-direct {p0, p3}, Lcom/scoreloop/client/android/core/model/Client;->a(Ljava/util/Properties;)V

    .line 634
    return-void

    .line 568
    :catch_2
    move-exception v0

    .line 569
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 582
    :catch_3
    move-exception v0

    .line 583
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 594
    :cond_c
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/core/model/Client;->b(Landroid/content/Context;)V

    goto/16 :goto_1

    :catch_4
    move-exception v0

    .line 605
    :cond_d
    sget-object v0, Lcom/scoreloop/client/android/core/settings/CommonSettings$TermsOfService;->a:Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/core/model/Client;->a(Ljava/lang/Class;)V

    goto/16 :goto_2

    :catch_5
    move-exception v0

    goto/16 :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 198
    :try_start_0
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 199
    const-string v0, "android.permission.INTERNET"

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 201
    if-nez p1, :cond_0

    .line 202
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x1000

    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 208
    if-eqz v0, :cond_5

    .line 209
    const/4 v2, 0x1

    .line 210
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 211
    invoke-static {v4, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 212
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 213
    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 219
    :goto_0
    if-nez v0, :cond_2

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    const-string v0, "\n  !!! "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Scoreloop currently requires you to add the following permissions to your AndroidManifest.xml file:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 225
    const-string v3, "\n  !!! "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<uses-permission android:name=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 232
    :catch_0
    move-exception v0

    :cond_2
    return-void

    .line 227
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method private a(Ljava/lang/Class;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 684
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/scoreloop/client/android/core/model/Session;

    aput-object v4, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 685
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/scoreloop/client/android/core/model/Client;->c:Lcom/scoreloop/client/android/core/model/Session;

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 686
    instance-of v3, v0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceManager;

    if-nez v3, :cond_0

    .line 687
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Class does not implement TermsOfServiceManager"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 691
    :catch_0
    move-exception v0

    .line 692
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 689
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/scoreloop/client/android/core/model/Client;->c:Lcom/scoreloop/client/android/core/model/Session;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0}, Lcom/scoreloop/client/android/core/model/Session;->a(ILjava/lang/Object;)V

    .line 690
    iget-object v3, p0, Lcom/scoreloop/client/android/core/model/Client;->c:Lcom/scoreloop/client/android/core/model/Session;

    check-cast v0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceManager;

    invoke-interface {v0}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceManager;->b()Lcom/scoreloop/client/android/core/model/TermsOfServiceStore;

    move-result-object v4

    invoke-interface {v4}, Lcom/scoreloop/client/android/core/model/TermsOfServiceStore;->g()Lcom/scoreloop/client/android/core/util/JSONSerializable;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/TermsOfService;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/TermsOfService;->getStatus()Lcom/scoreloop/client/android/core/model/TermsOfService$Status;

    move-result-object v5

    sget-object v6, Lcom/scoreloop/client/android/core/model/TermsOfService$Status;->REJECTED:Lcom/scoreloop/client/android/core/model/TermsOfService$Status;

    if-ne v5, v6, :cond_1

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/TermsOfService;->b()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/32 v7, 0x240c8400

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    sget-object v2, Lcom/scoreloop/client/android/core/model/TermsOfService$Status;->PENDING:Lcom/scoreloop/client/android/core/model/TermsOfService$Status;

    invoke-virtual {v0, v2}, Lcom/scoreloop/client/android/core/model/TermsOfService;->a(Lcom/scoreloop/client/android/core/model/TermsOfService$Status;)V

    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v4, v0}, Lcom/scoreloop/client/android/core/model/TermsOfServiceStore;->a(Lcom/scoreloop/client/android/core/model/TermsOfService;)V

    :cond_1
    invoke-virtual {v3, v0}, Lcom/scoreloop/client/android/core/model/Session;->a(Lcom/scoreloop/client/android/core/model/TermsOfService;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 693
    return-void

    :cond_2
    move v1, v2

    .line 690
    goto :goto_0
.end method

.method private a(Ljava/util/Properties;)V
    .locals 4
    .parameter

    .prologue
    .line 380
    sget-object v0, Lcom/scoreloop/client/android/core/model/Client;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 381
    sget-object v1, Lcom/scoreloop/client/android/core/model/Client;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, v0, v3}, Lcom/scoreloop/client/android/core/model/Client;->a(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Client;->c:Lcom/scoreloop/client/android/core/model/Session;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/scoreloop/client/android/core/model/PaymentProvider;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 385
    :cond_1
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Client;->getSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    invoke-static {v0}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->getInstance(Lcom/scoreloop/client/android/core/model/Session;)Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;

    move-result-object v0

    .line 386
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Client;->getSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->start(Lcom/scoreloop/client/android/core/model/Session;)V

    .line 387
    return-void
.end method

.method private static a(Ljava/util/Properties;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 182
    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must not be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_0
    return-void
.end method

.method private static a(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 188
    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "property "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " should not be null. Using default "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " instead"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    if-eqz p2, :cond_0

    .line 191
    invoke-virtual {p0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 194
    :cond_0
    return-void
.end method

.method private static a(Ljava/util/Properties;Ljava/lang/String;Z)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    :cond_0
    return p2
.end method

.method private static b(Ljava/util/Properties;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 638
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 640
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/16 v0, 0x14

    goto :goto_0
.end method

.method private b(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 722
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Client;->c:Lcom/scoreloop/client/android/core/model/Session;

    invoke-virtual {v0, p1}, Lcom/scoreloop/client/android/core/model/Session;->a(Landroid/content/Context;)V

    .line 723
    return-void
.end method

.method public static getProperties(Landroid/content/Context;)Ljava/util/Properties;
    .locals 1
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_0_0;
    .end annotation

    .prologue
    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/scoreloop/client/android/core/model/Client;->a(Landroid/content/Context;)Ljava/util/Properties;

    move-result-object v0

    .line 120
    if-nez v0, :cond_0

    .line 121
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 123
    :cond_0
    return-object v0
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .annotation build Lcom/scoreloop/client/android/core/UsedByScoreloopApp;
    .end annotation

    .prologue
    .line 498
    const-string v0, "3.0.1"

    return-object v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Lcom/scoreloop/client/android/core/model/ClientObserver;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_3_0;
    .end annotation

    .prologue
    .line 151
    new-instance v0, Lcom/scoreloop/client/android/core/model/Client;

    invoke-direct {v0, p0, p1, p2}, Lcom/scoreloop/client/android/core/model/Client;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/scoreloop/client/android/core/model/ClientObserver;)V

    .line 152
    return-void
.end method


# virtual methods
.method public final a(Lcom/scoreloop/client/android/core/model/Session;Ljava/lang/Boolean;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 708
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Client;->c:Lcom/scoreloop/client/android/core/model/Session;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Client;->b:Lcom/scoreloop/client/android/core/model/ClientObserver;

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Client;->b:Lcom/scoreloop/client/android/core/model/ClientObserver;

    invoke-interface {v0, p0, p2}, Lcom/scoreloop/client/android/core/model/ClientObserver;->clientDidAskUserForTermsOfService(Lcom/scoreloop/client/android/core/model/Client;Ljava/lang/Boolean;)V

    .line 711
    :cond_0
    return-void
.end method

.method public final a(Lcom/scoreloop/client/android/core/model/Session;)Z
    .locals 1
    .parameter

    .prologue
    .line 715
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Client;->c:Lcom/scoreloop/client/android/core/model/Session;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Client;->b:Lcom/scoreloop/client/android/core/model/ClientObserver;

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Client;->b:Lcom/scoreloop/client/android/core/model/ClientObserver;

    invoke-interface {v0, p0}, Lcom/scoreloop/client/android/core/model/ClientObserver;->clientShouldAskUserForTermsOfService(Lcom/scoreloop/client/android/core/model/Client;)Z

    move-result v0

    .line 718
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public destroy()V
    .locals 2
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 405
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Client;->c:Lcom/scoreloop/client/android/core/model/Session;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->a()V

    .line 406
    iput-object v1, p0, Lcom/scoreloop/client/android/core/model/Client;->c:Lcom/scoreloop/client/android/core/model/Session;

    .line 408
    invoke-static {v1}, Lcom/scoreloop/client/android/core/model/Session;->a(Lcom/scoreloop/client/android/core/model/Session;)V

    .line 409
    return-void
.end method

.method public getGameLevels()Lcom/scoreloop/client/android/core/model/Range;
    .locals 3
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 428
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Client;->c:Lcom/scoreloop/client/android/core/model/Session;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v0

    if-nez v0, :cond_0

    .line 429
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "canno access game levels without a game"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Client;->c:Lcom/scoreloop/client/android/core/model/Session;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Game;->hasLevels()Z

    move-result v0

    if-nez v0, :cond_1

    .line 433
    new-instance v0, Lcom/scoreloop/client/android/core/model/Range;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/scoreloop/client/android/core/model/Range;-><init>(II)V

    .line 436
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/scoreloop/client/android/core/model/Range;

    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/Client;->c:Lcom/scoreloop/client/android/core/model/Session;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Session;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Game;->getMinLevel()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/Client;->c:Lcom/scoreloop/client/android/core/model/Session;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Session;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Game;->getLevelCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/scoreloop/client/android/core/model/Range;-><init>(II)V

    goto :goto_0
.end method

.method public getGameModes()Lcom/scoreloop/client/android/core/model/Range;
    .locals 3
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 455
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Client;->c:Lcom/scoreloop/client/android/core/model/Session;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v0

    if-nez v0, :cond_0

    .line 456
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot access game modes without a game"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Client;->c:Lcom/scoreloop/client/android/core/model/Session;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Client;->c:Lcom/scoreloop/client/android/core/model/Session;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Game;->hasModes()Z

    move-result v0

    if-nez v0, :cond_2

    .line 460
    :cond_1
    new-instance v0, Lcom/scoreloop/client/android/core/model/Range;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/scoreloop/client/android/core/model/Range;-><init>(II)V

    .line 462
    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Lcom/scoreloop/client/android/core/model/Range;

    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/Client;->c:Lcom/scoreloop/client/android/core/model/Session;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Session;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Game;->getMinMode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/Client;->c:Lcom/scoreloop/client/android/core/model/Session;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Session;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Game;->getModeCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/scoreloop/client/android/core/model/Range;-><init>(II)V

    goto :goto_0
.end method

.method public getInfoString()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_2_0;
    .end annotation

    .prologue
    .line 474
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 475
    const-string v1, "version"

    const-string v2, "3.0.1-b47"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 482
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 484
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method public getSession()Lcom/scoreloop/client/android/core/model/Session;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 523
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Client;->c:Lcom/scoreloop/client/android/core/model/Session;

    return-object v0
.end method

.method public getSupportedPaymentProviderKinds()Ljava/util/Set;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 396
    invoke-static {}, Lcom/scoreloop/client/android/core/model/PaymentProvider;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public setGameLevels(Lcom/scoreloop/client/android/core/model/Range;)V
    .locals 2
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 753
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Client;->c:Lcom/scoreloop/client/android/core/model/Session;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v0

    if-nez v0, :cond_0

    .line 754
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot access game levels without a game"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 756
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Client;->c:Lcom/scoreloop/client/android/core/model/Session;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v0

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Range;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/model/Game;->c(Ljava/lang/Integer;)V

    .line 757
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Client;->c:Lcom/scoreloop/client/android/core/model/Session;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v0

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Range;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/model/Game;->a(Ljava/lang/Integer;)V

    .line 758
    return-void
.end method

.method public setGameModes(Lcom/scoreloop/client/android/core/model/Range;)V
    .locals 2
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 774
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Client;->c:Lcom/scoreloop/client/android/core/model/Session;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v0

    if-nez v0, :cond_0

    .line 775
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot access game modes without a game"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 777
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Client;->c:Lcom/scoreloop/client/android/core/model/Session;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v0

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Range;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/model/Game;->d(Ljava/lang/Integer;)V

    .line 778
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Client;->c:Lcom/scoreloop/client/android/core/model/Session;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v0

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Range;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/model/Game;->b(Ljava/lang/Integer;)V

    .line 779
    return-void
.end method
