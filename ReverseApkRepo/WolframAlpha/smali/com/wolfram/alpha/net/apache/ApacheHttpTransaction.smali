.class public Lcom/wolfram/alpha/net/apache/ApacheHttpTransaction;
.super Ljava/lang/Object;
.source "ApacheHttpTransaction.java"

# interfaces
.implements Lcom/wolfram/alpha/net/impl/HttpTransaction;


# instance fields
.field private entity:Lorg/apache/http/HttpEntity;

.field private httpClient:Lorg/apache/http/client/HttpClient;

.field private httpGet:Lorg/apache/http/client/methods/HttpGet;

.field private maxRetryCount:I

.field private volatile noRetry:Z

.field private proxySettings:Lcom/wolfram/alpha/net/ProxySettings;

.field private response:Lorg/apache/http/HttpResponse;

.field private socketTimeoutMillis:I

.field private url:Ljava/net/URL;


# direct methods
.method constructor <init>(Lorg/apache/http/client/HttpClient;Ljava/net/URL;Lcom/wolfram/alpha/net/ProxySettings;II)V
    .locals 1
    .parameter "httpClient"
    .parameter "url"
    .parameter "proxySettings"
    .parameter "maxRetryCount"
    .parameter "socketTimeoutMillis"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wolfram/alpha/net/apache/ApacheHttpTransaction;->noRetry:Z

    .line 42
    iput-object p1, p0, Lcom/wolfram/alpha/net/apache/ApacheHttpTransaction;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 43
    iput-object p2, p0, Lcom/wolfram/alpha/net/apache/ApacheHttpTransaction;->url:Ljava/net/URL;

    .line 44
    if-eqz p3, :cond_0

    move-object v0, p3

    :goto_0
    iput-object v0, p0, Lcom/wolfram/alpha/net/apache/ApacheHttpTransaction;->proxySettings:Lcom/wolfram/alpha/net/ProxySettings;

    .line 45
    iput p4, p0, Lcom/wolfram/alpha/net/apache/ApacheHttpTransaction;->maxRetryCount:I

    .line 46
    iput p5, p0, Lcom/wolfram/alpha/net/apache/ApacheHttpTransaction;->socketTimeoutMillis:I

    .line 47
    return-void

    .line 44
    :cond_0
    invoke-static {}, Lcom/wolfram/alpha/net/ProxySettings;->getInstance()Lcom/wolfram/alpha/net/ProxySettings;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public abort()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/wolfram/alpha/net/apache/ApacheHttpTransaction;->httpGet:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 141
    return-void
.end method

.method public execute()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/wolfram/alpha/net/WAHttpException;
        }
    .end annotation

    .prologue
    .line 59
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    iget-object v4, p0, Lcom/wolfram/alpha/net/apache/ApacheHttpTransaction;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/wolfram/alpha/net/apache/ApacheHttpTransaction;->httpGet:Lorg/apache/http/client/methods/HttpGet;

    .line 60
    iget-object v3, p0, Lcom/wolfram/alpha/net/apache/ApacheHttpTransaction;->proxySettings:Lcom/wolfram/alpha/net/ProxySettings;

    iget-object v4, p0, Lcom/wolfram/alpha/net/apache/ApacheHttpTransaction;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wolfram/alpha/net/ProxySettings;->getProxyForHttpClient(Ljava/lang/String;)Lorg/apache/http/HttpHost;

    move-result-object v1

    .line 61
    .local v1, proxy:Lorg/apache/http/HttpHost;
    iget-object v3, p0, Lcom/wolfram/alpha/net/apache/ApacheHttpTransaction;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    const-string v4, "http.route.default-proxy"

    invoke-interface {v3, v4, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 64
    :try_start_0
    iget-object v3, p0, Lcom/wolfram/alpha/net/apache/ApacheHttpTransaction;->httpClient:Lorg/apache/http/client/HttpClient;

    iget-object v4, p0, Lcom/wolfram/alpha/net/apache/ApacheHttpTransaction;->httpGet:Lorg/apache/http/client/methods/HttpGet;

    invoke-interface {v3, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    iput-object v3, p0, Lcom/wolfram/alpha/net/apache/ApacheHttpTransaction;->response:Lorg/apache/http/HttpResponse;

    .line 65
    iget-object v3, p0, Lcom/wolfram/alpha/net/apache/ApacheHttpTransaction;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 66
    .local v2, statusCode:I
    const/16 v3, 0xc8

    if-eq v2, v3, :cond_0

    .line 67
    new-instance v3, Lcom/wolfram/alpha/net/WAHttpException;

    invoke-direct {v3, v2}, Lcom/wolfram/alpha/net/WAHttpException;-><init>(I)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v2           #statusCode:I
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 71
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/wolfram/alpha/net/apache/ApacheHttpTransaction;->httpGet:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 72
    instance-of v3, v0, Lcom/wolfram/alpha/net/WAHttpException;

    if-eqz v3, :cond_1

    .line 73
    check-cast v0, Lcom/wolfram/alpha/net/WAHttpException;

    .end local v0           #e:Ljava/lang/Exception;
    throw v0

    .line 68
    .restart local v2       #statusCode:I
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/wolfram/alpha/net/apache/ApacheHttpTransaction;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    iput-object v3, p0, Lcom/wolfram/alpha/net/apache/ApacheHttpTransaction;->entity:Lorg/apache/http/HttpEntity;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 77
    return-void

    .line 75
    .end local v2           #statusCode:I
    .restart local v0       #e:Ljava/lang/Exception;
    :cond_1
    new-instance v3, Lcom/wolfram/alpha/net/WAHttpException;

    invoke-direct {v3, v0}, Lcom/wolfram/alpha/net/WAHttpException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getCharSet()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/wolfram/alpha/net/apache/ApacheHttpTransaction;->entity:Lorg/apache/http/HttpEntity;

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->getContentCharSet(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/wolfram/alpha/net/apache/ApacheHttpTransaction;->entity:Lorg/apache/http/HttpEntity;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/wolfram/alpha/net/apache/ApacheHttpTransaction;->entity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getResponseHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "headerName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v1, p0, Lcom/wolfram/alpha/net/apache/ApacheHttpTransaction;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v1, p1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 111
    .local v0, hdr:Lorg/apache/http/Header;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getResponseHeaders()[[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v3, p0, Lcom/wolfram/alpha/net/apache/ApacheHttpTransaction;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    .line 95
    .local v0, hdrs:[Lorg/apache/http/Header;
    array-length v3, v0

    new-array v2, v3, [[Ljava/lang/String;

    .line 96
    .local v2, result:[[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 97
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v5, v0, v1

    invoke-interface {v5}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aget-object v5, v0, v1

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    aput-object v3, v2, v1

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    :cond_0
    return-object v2
.end method

.method public getResponseStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/wolfram/alpha/net/apache/ApacheHttpTransaction;->entity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getResponseString()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/wolfram/alpha/net/apache/ApacheHttpTransaction;->entity:Lorg/apache/http/HttpEntity;

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/wolfram/alpha/net/apache/ApacheHttpTransaction;->entity:Lorg/apache/http/HttpEntity;

    if-eqz v0, :cond_0

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/wolfram/alpha/net/apache/ApacheHttpTransaction;->entity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setNoRetry()V
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wolfram/alpha/net/apache/ApacheHttpTransaction;->noRetry:Z

    .line 135
    return-void
.end method
