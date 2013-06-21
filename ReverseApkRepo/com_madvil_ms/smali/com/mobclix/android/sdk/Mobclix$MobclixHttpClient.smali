.class Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;
.super Lorg/apache/http/impl/client/DefaultHttpClient;
.source "Mobclix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/Mobclix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MobclixHttpClient"
.end annotation


# instance fields
.field httpGet:Lorg/apache/http/client/methods/HttpGet;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "u"

    .prologue
    .line 1292
    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 1293
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;->url:Ljava/lang/String;

    .line 1294
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;->httpGet:Lorg/apache/http/client/methods/HttpGet;

    .line 1295
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;->httpGet:Lorg/apache/http/client/methods/HttpGet;

    const-string v1, "Cookie"

    iget-object v2, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;->url:Ljava/lang/String;

    invoke-static {v2}, Lcom/mobclix/android/sdk/Mobclix;->getCookieStringFromCookieManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;->httpGet:Lorg/apache/http/client/methods/HttpGet;

    const-string v1, "User-Agent"

    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$6()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/Mobclix;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    return-void
.end method


# virtual methods
.method public execute()Lorg/apache/http/HttpResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1302
    :try_start_0
    iget-object v2, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;->httpGet:Lorg/apache/http/client/methods/HttpGet;

    invoke-super {p0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 1305
    .local v0, httpResponse:Lorg/apache/http/HttpResponse;
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v2

    iget-object v3, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;->url:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/mobclix/android/sdk/Mobclix;->syncCookiesToCookieManager(Lorg/apache/http/client/CookieStore;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    .line 1307
    .end local v0           #httpResponse:Lorg/apache/http/HttpResponse;
    :goto_0
    return-object v2

    :catch_0
    move-exception v2

    move-object v1, v2

    .local v1, t:Ljava/lang/Throwable;
    const/4 v2, 0x0

    goto :goto_0
.end method
