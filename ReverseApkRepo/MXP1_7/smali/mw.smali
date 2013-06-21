.class Lmw;
.super Lec;


# instance fields
.field final synthetic 癤욱븳援:Lmv;


# direct methods
.method private constructor <init>(Lmv;)V
    .locals 0

    iput-object p1, p0, Lmw;->癤욱븳援:Lmv;

    invoke-direct {p0}, Lec;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmv;Lmw;)V
    .locals 0

    invoke-direct {p0, p1}, Lmw;-><init>(Lmv;)V

    return-void
.end method


# virtual methods
.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lmw;->癤욱븳援([Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lmw;->癤욱븳援(Ljava/util/Map;)V

    return-void
.end method

.method protected varargs 癤욱븳援([Landroid/net/Uri;)Ljava/util/Map;
    .locals 6

    const/4 v1, 0x0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move v0, v1

    :goto_0
    array-length v3, p1

    if-lt v0, v3, :cond_0

    move-object v0, v2

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lmw;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    aget-object v3, p1, v0

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "http"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "https"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    :try_start_0
    invoke-static {v3}, Lem;->癤욱븳援(Landroid/net/Uri;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    if-nez v4, :cond_4

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method protected 癤욱븳援(Ljava/util/Map;)V
    .locals 2

    iget-object v0, p0, Lmw;->癤욱븳援:Lmv;

    invoke-static {v0}, Lmv;->먯꽌(Lmv;)Lmw;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Lmw;->癤욱븳援:Lmv;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmv;->癤욱븳援(Lmv;Lmw;)V

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmw;->癤욱븳援:Lmv;

    invoke-static {v0}, Lmv;->ㅼ꽑嫄(Lmv;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method
