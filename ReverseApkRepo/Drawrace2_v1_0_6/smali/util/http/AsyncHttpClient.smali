.class public Lutil/http/AsyncHttpClient;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"


# static fields
.field private static theInstance:Lutil/http/AsyncHttpClient;


# instance fields
.field protected httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field protected httpContext:Lorg/apache/http/protocol/HttpContext;

.field private nextRequestId:I

.field private requests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lutil/http/AsyncHttpRequest;",
            ">;"
        }
    .end annotation
.end field

.field protected threadPool:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 53
    .local v2, params:Lorg/apache/http/params/BasicHttpParams;
    const/4 v1, 0x5

    .line 54
    .local v1, connections:I
    new-instance v5, Lorg/apache/http/conn/params/ConnPerRouteBean;

    invoke-direct {v5, v1}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v2, v5}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 55
    invoke-static {v2, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 58
    const/16 v4, 0x3a98

    .line 59
    .local v4, timeout:I
    int-to-long v5, v4

    invoke-static {v2, v5, v6}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 60
    invoke-static {v2, v4}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 61
    invoke-static {v2, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 64
    invoke-static {v2, v9}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    .line 67
    new-instance v3, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 68
    .local v3, schreg:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v7

    const/16 v8, 0x50

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 69
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v7

    const/16 v8, 0x1bb

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 70
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v2, v3}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 71
    .local v0, conman:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5, v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v5, p0, Lutil/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 74
    iget-object v5, p0, Lutil/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    const/4 v7, 0x3

    invoke-direct {v6, v7, v9}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    invoke-virtual {v5, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 76
    new-instance v5, Lorg/apache/http/protocol/SyncBasicHttpContext;

    new-instance v6, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v6}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    invoke-direct {v5, v6}, Lorg/apache/http/protocol/SyncBasicHttpContext;-><init>(Lorg/apache/http/protocol/HttpContext;)V

    iput-object v5, p0, Lutil/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    .line 78
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v5, p0, Lutil/http/AsyncHttpClient;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 80
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lutil/http/AsyncHttpClient;->requests:Ljava/util/Map;

    .line 81
    return-void
.end method

.method public static getInstance()Lutil/http/AsyncHttpClient;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lutil/http/AsyncHttpClient;->theInstance:Lutil/http/AsyncHttpClient;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lutil/http/AsyncHttpClient;

    invoke-direct {v0}, Lutil/http/AsyncHttpClient;-><init>()V

    sput-object v0, Lutil/http/AsyncHttpClient;->theInstance:Lutil/http/AsyncHttpClient;

    .line 87
    :cond_0
    sget-object v0, Lutil/http/AsyncHttpClient;->theInstance:Lutil/http/AsyncHttpClient;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized cancel(I)V
    .locals 4
    .parameter "requestId"

    .prologue
    .line 220
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lutil/http/AsyncHttpClient;->requests:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lutil/http/AsyncHttpRequest;

    .line 221
    .local v1, request:Lutil/http/AsyncHttpRequest;
    if-eqz v1, :cond_0

    .line 222
    iget-object v0, v1, Lutil/http/AsyncHttpRequest;->future:Ljava/util/concurrent/Future;

    .line 223
    .local v0, future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<*>;"
    if-eqz v0, :cond_0

    .line 224
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    .end local v0           #future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<*>;"
    :cond_0
    monitor-exit p0

    return-void

    .line 220
    .end local v1           #request:Lutil/http/AsyncHttpRequest;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected createRequest(Lorg/apache/http/client/methods/HttpUriRequest;)I
    .locals 4
    .parameter "httpRequest"

    .prologue
    .line 127
    iget v2, p0, Lutil/http/AsyncHttpClient;->nextRequestId:I

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lutil/http/AsyncHttpClient;->nextRequestId:I

    .line 131
    .local v1, requestId:I
    new-instance v0, Lutil/http/AsyncHttpRequest;

    invoke-direct {v0, p0, p1}, Lutil/http/AsyncHttpRequest;-><init>(Lutil/http/AsyncHttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 132
    .local v0, request:Lutil/http/AsyncHttpRequest;
    iget-object v2, p0, Lutil/http/AsyncHttpClient;->requests:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    return v1
.end method

.method public declared-synchronized finishRequest(I)V
    .locals 2
    .parameter "requestId"

    .prologue
    .line 214
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lutil/http/AsyncHttpClient;->cancel(I)V

    .line 215
    iget-object v0, p0, Lutil/http/AsyncHttpClient;->requests:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    monitor-exit p0

    return-void

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getContentType(I)Ljava/lang/String;
    .locals 3
    .parameter "requestId"

    .prologue
    .line 201
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lutil/http/AsyncHttpClient;->requests:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lutil/http/AsyncHttpRequest;

    .line 202
    .local v0, request:Lutil/http/AsyncHttpRequest;
    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0}, Lutil/http/AsyncHttpRequest;->getContentType()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 205
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 201
    .end local v0           #request:Lutil/http/AsyncHttpRequest;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getResponseBody(I)Ljava/lang/String;
    .locals 3
    .parameter "requestId"

    .prologue
    .line 187
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lutil/http/AsyncHttpClient;->requests:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lutil/http/AsyncHttpRequest;

    .line 188
    .local v0, request:Lutil/http/AsyncHttpRequest;
    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0}, Lutil/http/AsyncHttpRequest;->getResponseBody()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 191
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 187
    .end local v0           #request:Lutil/http/AsyncHttpRequest;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getResponseCode(I)I
    .locals 3
    .parameter "requestId"

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lutil/http/AsyncHttpClient;->requests:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lutil/http/AsyncHttpRequest;

    .line 174
    .local v0, request:Lutil/http/AsyncHttpRequest;
    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0}, Lutil/http/AsyncHttpRequest;->getResponseCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 177
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0

    .line 173
    .end local v0           #request:Lutil/http/AsyncHttpRequest;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getStatus(I)I
    .locals 3
    .parameter "requestId"

    .prologue
    .line 150
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lutil/http/AsyncHttpClient;->requests:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lutil/http/AsyncHttpRequest;

    .line 151
    .local v0, request:Lutil/http/AsyncHttpRequest;
    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0}, Lutil/http/AsyncHttpRequest;->getState()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 155
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    .line 150
    .end local v0           #request:Lutil/http/AsyncHttpRequest;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized httpGet(Ljava/lang/String;)I
    .locals 1
    .parameter "url"

    .prologue
    .line 97
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lutil/http/AsyncHttpClient;->createRequest(Lorg/apache/http/client/methods/HttpUriRequest;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized httpPost(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "url"
    .parameter "postData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 110
    .local v2, httpPost:Lorg/apache/http/client/methods/HttpPost;
    new-instance v1, Lorg/apache/http/entity/StringEntity;

    const-string v3, "UTF-8"

    invoke-direct {v1, p2, v3}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .local v1, entity:Lorg/apache/http/entity/StringEntity;
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v3, "Content-Type"

    const-string v4, "application/x-www-form-urlencoded"

    invoke-direct {v0, v3, v4}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .local v0, basicHeader:Lorg/apache/http/message/BasicHeader;
    invoke-virtual {v1, v0}, Lorg/apache/http/entity/StringEntity;->setContentType(Lorg/apache/http/Header;)V

    .line 114
    invoke-virtual {v2, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 115
    invoke-virtual {p0, v2}, Lutil/http/AsyncHttpClient;->createRequest(Lorg/apache/http/client/methods/HttpUriRequest;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    monitor-exit p0

    return v3

    .line 109
    .end local v0           #basicHeader:Lorg/apache/http/message/BasicHeader;
    .end local v1           #entity:Lorg/apache/http/entity/StringEntity;
    .end local v2           #httpPost:Lorg/apache/http/client/methods/HttpPost;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized isFailed(I)Z
    .locals 2
    .parameter "requestId"

    .prologue
    .line 163
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lutil/http/AsyncHttpClient;->getStatus(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isReady(I)Z
    .locals 2
    .parameter "requestId"

    .prologue
    const/4 v0, 0x1

    .line 159
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lutil/http/AsyncHttpClient;->getStatus(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
