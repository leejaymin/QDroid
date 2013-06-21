.class Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$2;
.super Ljava/lang/Thread;
.source "RequestResponseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->asyncPing(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$2;->a:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    iput-object p2, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$2;->b:Ljava/lang/String;

    .line 477
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 479
    const/4 v1, 0x0

    .line 482
    :try_start_0
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 483
    const-string v0, "InMobiAndroidSDK_3.5.4"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Pinging URL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$2;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_0
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$2;->b:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 486
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    const/16 v1, 0x4e20

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 488
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 489
    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$2;->a:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a(Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 490
    const-string v1, "user-agent"

    iget-object v2, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$2;->a:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    invoke-static {v2}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a(Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    :cond_1
    sget-boolean v1, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 493
    const-string v1, "InMobiAndroidSDK_3.5.4"

    .line 494
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Async Ping Connection Response Code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 495
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 494
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 493
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 506
    :cond_2
    if-eqz v0, :cond_3

    .line 507
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 510
    :cond_3
    :goto_0
    return-void

    .line 500
    :catch_0
    move-exception v0

    .line 501
    :goto_1
    :try_start_2
    sget-boolean v2, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 502
    const-string v2, "InMobiAndroidSDK_3.5.4"

    const-string v3, "Error doing async Ping."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 506
    :cond_4
    if-eqz v1, :cond_3

    .line 507
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 505
    :catchall_0
    move-exception v0

    .line 506
    :goto_2
    if-eqz v1, :cond_5

    .line 507
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 509
    :cond_5
    throw v0

    .line 505
    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2

    .line 500
    :catch_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1
.end method
