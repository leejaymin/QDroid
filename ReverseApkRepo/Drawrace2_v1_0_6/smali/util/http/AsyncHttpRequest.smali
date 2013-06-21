.class public Lutil/http/AsyncHttpRequest;
.super Ljava/lang/Object;
.source "AsyncHttpRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final STATE_ERROR:I = 0x2

.field public static final STATE_HANDLING:I = 0x0

.field public static final STATE_READY:I = 0x1

.field public static final TAG:Ljava/lang/String; = "DrawRace2HTTPRequest"


# instance fields
.field private client:Lutil/http/AsyncHttpClient;

.field private errorMessage:Ljava/lang/String;

.field protected future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private httpResponseBody:Ljava/lang/String;

.field private httpResponseCode:I

.field private httpResponseContentType:Ljava/lang/String;

.field private request:Lorg/apache/http/client/methods/HttpUriRequest;

.field private state:I


# direct methods
.method public constructor <init>(Lutil/http/AsyncHttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 2
    .parameter "client"
    .parameter "httpRequest"

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lutil/http/AsyncHttpRequest;->httpResponseCode:I

    .line 34
    iput-object v1, p0, Lutil/http/AsyncHttpRequest;->httpResponseBody:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lutil/http/AsyncHttpRequest;->httpResponseContentType:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lutil/http/AsyncHttpRequest;->client:Lutil/http/AsyncHttpClient;

    .line 39
    iput-object p2, p0, Lutil/http/AsyncHttpRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 40
    iget-object v0, p1, Lutil/http/AsyncHttpClient;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lutil/http/AsyncHttpRequest;->future:Ljava/util/concurrent/Future;

    .line 41
    return-void
.end method

.method private setError(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .parameter "t"
    .parameter "message"

    .prologue
    .line 75
    const/4 v1, 0x2

    iput v1, p0, Lutil/http/AsyncHttpRequest;->state:I

    .line 76
    if-eqz p2, :cond_0

    .line 77
    iput-object p2, p0, Lutil/http/AsyncHttpRequest;->errorMessage:Ljava/lang/String;

    .line 79
    :cond_0
    if-eqz p1, :cond_1

    .line 80
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, s:Ljava/lang/String;
    iget-object v1, p0, Lutil/http/AsyncHttpRequest;->errorMessage:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lutil/http/AsyncHttpRequest;->errorMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lutil/http/AsyncHttpRequest;->errorMessage:Ljava/lang/String;

    .line 87
    .end local v0           #s:Ljava/lang/String;
    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lutil/http/AsyncHttpRequest;->future:Ljava/util/concurrent/Future;

    .line 91
    return-void

    .line 84
    .restart local v0       #s:Ljava/lang/String;
    :cond_2
    iput-object v0, p0, Lutil/http/AsyncHttpRequest;->errorMessage:Ljava/lang/String;

    goto :goto_0
.end method

.method private setResult(Lorg/apache/http/HttpResponse;)V
    .locals 8
    .parameter "response"

    .prologue
    .line 95
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    .line 96
    .local v3, statusCode:I
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 97
    .local v2, entity:Lorg/apache/http/HttpEntity;
    if-eqz v2, :cond_0

    .line 98
    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lutil/http/AsyncHttpRequest;->httpResponseBody:Ljava/lang/String;

    .line 100
    :cond_0
    iput v3, p0, Lutil/http/AsyncHttpRequest;->httpResponseCode:I

    .line 106
    const-string v0, "Content-Type"

    .line 107
    .local v0, CONTENT_TYPE:Ljava/lang/String;
    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 108
    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lutil/http/AsyncHttpRequest;->httpResponseContentType:Ljava/lang/String;

    .line 110
    :cond_1
    const/4 v5, 0x1

    iput v5, p0, Lutil/http/AsyncHttpRequest;->state:I

    .line 111
    const/4 v5, 0x0

    iput-object v5, p0, Lutil/http/AsyncHttpRequest;->future:Ljava/util/concurrent/Future;

    .line 115
    const-string v5, "DrawRace2HTTPRequest"

    const-string v6, "HTTP request succeeded"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 129
    .end local v0           #CONTENT_TYPE:Ljava/lang/String;
    .end local v2           #entity:Lorg/apache/http/HttpEntity;
    .end local v3           #statusCode:I
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v1

    .line 118
    .local v1, e:Ljava/io/IOException;
    :try_start_1
    const-string v5, "Exception"

    invoke-direct {p0, v1, v5}, Lutil/http/AsyncHttpRequest;->setError(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .line 121
    :goto_1
    const-string v5, "DrawRace2HTTPRequest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTTP response handling failed; reason IOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 122
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 124
    .local v4, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v5, "Throwable"

    invoke-direct {p0, v4, v5}, Lutil/http/AsyncHttpRequest;->setError(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 127
    :goto_2
    const-string v5, "DrawRace2HTTPRequest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTTP response handling failed; reason Throwable: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 125
    :catch_2
    move-exception v5

    goto :goto_2

    .line 119
    .end local v4           #t:Ljava/lang/Throwable;
    .restart local v1       #e:Ljava/io/IOException;
    :catch_3
    move-exception v5

    goto :goto_1
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lutil/http/AsyncHttpRequest;->httpResponseContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lutil/http/AsyncHttpRequest;->httpResponseBody:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lutil/http/AsyncHttpRequest;->httpResponseCode:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lutil/http/AsyncHttpRequest;->state:I

    return v0
.end method

.method public run()V
    .locals 10

    .prologue
    .line 44
    const/4 v3, 0x1

    .line 45
    .local v3, retry:Z
    const/4 v1, 0x0

    .line 46
    .local v1, executionCount:I
    iget-object v7, p0, Lutil/http/AsyncHttpRequest;->client:Lutil/http/AsyncHttpClient;

    iget-object v7, v7, Lutil/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->getHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;

    move-result-object v4

    .line 47
    .local v4, retryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;
    :goto_0
    if-eqz v3, :cond_2

    .line 49
    add-int/lit8 v1, v1, 0x1

    .line 50
    :try_start_0
    iget-object v7, p0, Lutil/http/AsyncHttpRequest;->client:Lutil/http/AsyncHttpClient;

    iget-object v7, v7, Lutil/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v8, p0, Lutil/http/AsyncHttpRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    iget-object v9, p0, Lutil/http/AsyncHttpRequest;->client:Lutil/http/AsyncHttpClient;

    iget-object v9, v9, Lutil/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v7, v8, v9}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 51
    .local v2, response:Lorg/apache/http/HttpResponse;
    invoke-direct {p0, v2}, Lutil/http/AsyncHttpRequest;->setResult(Lorg/apache/http/HttpResponse;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 72
    .end local v2           #response:Lorg/apache/http/HttpResponse;
    :goto_1
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 55
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    iget-object v7, p0, Lutil/http/AsyncHttpRequest;->client:Lutil/http/AsyncHttpClient;

    iget-object v7, v7, Lutil/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v4, v0, v1, v7}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 59
    :goto_2
    const-string v8, "DrawRace2HTTPRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "HTTP request failed; retry "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v3, :cond_0

    const-string v7, "YES"

    :goto_3
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "; reason IOException: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 56
    :catch_1
    move-exception v5

    .line 57
    .local v5, t:Ljava/lang/Throwable;
    const/4 v3, 0x0

    goto :goto_2

    .line 59
    .end local v5           #t:Ljava/lang/Throwable;
    :cond_0
    const-string v7, "NO"

    goto :goto_3

    .line 60
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v5

    .line 62
    .restart local v5       #t:Ljava/lang/Throwable;
    :try_start_2
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error in HttpClient: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lutil/http/AsyncHttpRequest;->client:Lutil/http/AsyncHttpClient;

    iget-object v8, v8, Lutil/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v4, v7, v1, v8}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    move-result v3

    .line 67
    :goto_4
    const-string v8, "DrawRace2HTTPRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "HTTP request failed; retry "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v3, :cond_1

    const-string v7, "YES"

    :goto_5
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "; reason Throwable: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 64
    :catch_3
    move-exception v6

    .line 65
    .local v6, tt:Ljava/lang/Throwable;
    const/4 v3, 0x0

    goto :goto_4

    .line 67
    .end local v6           #tt:Ljava/lang/Throwable;
    :cond_1
    const-string v7, "NO"

    goto :goto_5

    .line 71
    .end local v5           #t:Ljava/lang/Throwable;
    :cond_2
    const/4 v7, 0x0

    const-string v8, "Out of retries"

    invoke-direct {p0, v7, v8}, Lutil/http/AsyncHttpRequest;->setError(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
