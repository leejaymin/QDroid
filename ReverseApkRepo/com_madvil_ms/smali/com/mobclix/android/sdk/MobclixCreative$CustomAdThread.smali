.class Lcom/mobclix/android/sdk/MobclixCreative$CustomAdThread;
.super Ljava/lang/Object;
.source "MobclixCreative.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixCreative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomAdThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobclix/android/sdk/MobclixCreative;

.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixCreative;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "fetchUrl"

    .prologue
    .line 384
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$CustomAdThread;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    iput-object p2, p0, Lcom/mobclix/android/sdk/MobclixCreative$CustomAdThread;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 387
    const/4 v1, 0x0

    .line 389
    .local v1, con:Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$CustomAdThread;->url:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 390
    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 391
    const-string v2, "User-Agent"

    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$CustomAdThread;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v3, v3, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v3, v3, Lcom/mobclix/android/sdk/MobclixAdView;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v3}, Lcom/mobclix/android/sdk/Mobclix;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 397
    :goto_0
    return-void

    .line 393
    :catch_0
    move-exception v2

    .line 395
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 394
    :catchall_0
    move-exception v2

    .line 395
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 396
    throw v2
.end method
