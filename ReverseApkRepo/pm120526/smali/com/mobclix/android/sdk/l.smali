.class final Lcom/mobclix/android/sdk/l;
.super Lorg/apache/http/impl/client/DefaultHttpClient;


# instance fields
.field a:Ljava/lang/String;

.field b:Lorg/apache/http/client/methods/HttpGet;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iput-object p1, p0, Lcom/mobclix/android/sdk/l;->a:Ljava/lang/String;

    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    iget-object v1, p0, Lcom/mobclix/android/sdk/l;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mobclix/android/sdk/l;->b:Lorg/apache/http/client/methods/HttpGet;

    iget-object v0, p0, Lcom/mobclix/android/sdk/l;->b:Lorg/apache/http/client/methods/HttpGet;

    const-string v1, "Cookie"

    iget-object v2, p0, Lcom/mobclix/android/sdk/l;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/mobclix/android/sdk/e;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/l;->b:Lorg/apache/http/client/methods/HttpGet;

    const-string v1, "User-Agent"

    invoke-static {}, Lcom/mobclix/android/sdk/e;->F()Lcom/mobclix/android/sdk/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/e;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Lorg/apache/http/HttpResponse;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/l;->b:Lorg/apache/http/client/methods/HttpGet;

    invoke-super {p0, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/l;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v1

    iget-object v2, p0, Lcom/mobclix/android/sdk/l;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/mobclix/android/sdk/e;->a(Lorg/apache/http/client/CookieStore;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
