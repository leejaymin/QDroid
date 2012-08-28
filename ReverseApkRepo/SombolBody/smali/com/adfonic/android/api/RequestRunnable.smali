.class Lcom/adfonic/android/api/RequestRunnable;
.super Ljava/lang/Object;
.source "RequestRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final CONNECTION_TIMEOUT:I = 0x4e20

.field private static final READ_TIMEOUT:I = 0x4e20

.field private static final USER_AGENT:Ljava/lang/String; = "User-Agent"


# instance fields
.field private final callback:Lcom/adfonic/android/api/ExecutorCallback;

.field private final handler:Landroid/os/Handler;

.field private final request:Lcom/adfonic/android/api/request/AndroidRequest;


# direct methods
.method public constructor <init>(Lcom/adfonic/android/api/request/AndroidRequest;Lcom/adfonic/android/api/ExecutorCallback;Landroid/os/Handler;)V
    .locals 1
    .parameter "request"
    .parameter "callback"
    .parameter "handler"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/adfonic/android/api/RequestRunnable;->request:Lcom/adfonic/android/api/request/AndroidRequest;

    .line 37
    iput-object p2, p0, Lcom/adfonic/android/api/RequestRunnable;->callback:Lcom/adfonic/android/api/ExecutorCallback;

    .line 38
    if-nez p3, :cond_0

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adfonic/android/api/RequestRunnable;->handler:Landroid/os/Handler;

    .line 43
    :goto_0
    return-void

    .line 41
    :cond_0
    iput-object p3, p0, Lcom/adfonic/android/api/RequestRunnable;->handler:Landroid/os/Handler;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/adfonic/android/api/RequestRunnable;)Lcom/adfonic/android/api/ExecutorCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/adfonic/android/api/RequestRunnable;->callback:Lcom/adfonic/android/api/ExecutorCallback;

    return-object v0
.end method

.method private closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 105
    if-eqz p1, :cond_0

    .line 106
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private execute()Lcom/adfonic/android/api/response/ApiResponse;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 75
    const/4 v2, 0x0

    .line 76
    .local v2, is:Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 78
    .local v4, os:Ljava/io/OutputStream;
    iget-object v7, p0, Lcom/adfonic/android/api/RequestRunnable;->request:Lcom/adfonic/android/api/request/AndroidRequest;

    invoke-virtual {v7}, Lcom/adfonic/android/api/request/AndroidRequest;->getAndroidSdkVersion()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/adfonic/android/api/RequestRunnable;->fixLeakProblemForOldVersionsOfAndroid(I)V

    .line 80
    :try_start_0
    new-instance v7, Lcom/adfonic/android/api/request/UriRequestAdapter;

    iget-object v8, p0, Lcom/adfonic/android/api/RequestRunnable;->request:Lcom/adfonic/android/api/request/AndroidRequest;

    invoke-direct {v7, v8}, Lcom/adfonic/android/api/request/UriRequestAdapter;-><init>(Lcom/adfonic/android/api/request/AndroidRequest;)V

    invoke-virtual {v7}, Lcom/adfonic/android/api/request/UriRequestAdapter;->toUrl()Ljava/lang/String;

    move-result-object v6

    .line 81
    .local v6, url:Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/adfonic/android/api/RequestRunnable;->logRequest(Ljava/lang/String;)V

    .line 82
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 83
    .local v1, conn:Ljava/net/HttpURLConnection;
    const/16 v7, 0x4e20

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 84
    const/16 v7, 0x4e20

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 85
    const-string v7, "User-Agent"

    iget-object v8, p0, Lcom/adfonic/android/api/RequestRunnable;->request:Lcom/adfonic/android/api/request/AndroidRequest;

    invoke-virtual {v8}, Lcom/adfonic/android/api/request/AndroidRequest;->getUserAgent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 87
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 88
    .local v0, br:Ljava/io/BufferedReader;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .local v5, sb:Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, line:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 94
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 98
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v1           #conn:Ljava/net/HttpURLConnection;
    .end local v3           #line:Ljava/lang/String;
    .end local v5           #sb:Ljava/lang/StringBuilder;
    .end local v6           #url:Ljava/lang/String;
    :catchall_0
    move-exception v7

    invoke-direct {p0, v2}, Lcom/adfonic/android/api/RequestRunnable;->closeSilently(Ljava/io/Closeable;)V

    .line 99
    invoke-direct {p0, v4}, Lcom/adfonic/android/api/RequestRunnable;->closeSilently(Ljava/io/Closeable;)V

    throw v7

    .line 96
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v1       #conn:Ljava/net/HttpURLConnection;
    .restart local v3       #line:Ljava/lang/String;
    .restart local v5       #sb:Ljava/lang/StringBuilder;
    .restart local v6       #url:Ljava/lang/String;
    :cond_0
    :try_start_1
    new-instance v7, Lcom/adfonic/android/api/response/ApiResponse;

    invoke-direct {v7}, Lcom/adfonic/android/api/response/ApiResponse;-><init>()V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/adfonic/android/api/response/ApiResponse;->handleResponse(Ljava/lang/String;)Lcom/adfonic/android/api/response/ApiResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 98
    invoke-direct {p0, v2}, Lcom/adfonic/android/api/RequestRunnable;->closeSilently(Ljava/io/Closeable;)V

    .line 99
    invoke-direct {p0, v4}, Lcom/adfonic/android/api/RequestRunnable;->closeSilently(Ljava/io/Closeable;)V

    return-object v7
.end method

.method private fixLeakProblemForOldVersionsOfAndroid(I)V
    .locals 2
    .parameter "sdkVersion"

    .prologue
    .line 122
    const/16 v0, 0x8

    if-lt p1, v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 125
    :cond_0
    const-string v0, "http.keepAlive"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method private logRequest(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 114
    invoke-static {}, Lcom/adfonic/android/utils/Log;->verboseLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const-string v0, "Executing: request to adfonic servers"

    invoke-static {v0}, Lcom/adfonic/android/utils/Log;->v(Ljava/lang/String;)V

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adfonic/android/utils/Log;->v(Ljava/lang/String;)V

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adfonic Request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adfonic/android/utils/Log;->adRequestSummary(Ljava/lang/String;)V

    .line 119
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 48
    :try_start_0
    invoke-direct {p0}, Lcom/adfonic/android/api/RequestRunnable;->execute()Lcom/adfonic/android/api/response/ApiResponse;

    move-result-object v1

    .line 49
    .local v1, response:Lcom/adfonic/android/api/response/ApiResponse;
    iget-object v2, p0, Lcom/adfonic/android/api/RequestRunnable;->handler:Landroid/os/Handler;

    if-nez v2, :cond_1

    .line 72
    .end local v1           #response:Lcom/adfonic/android/api/response/ApiResponse;
    :cond_0
    :goto_0
    return-void

    .line 52
    .restart local v1       #response:Lcom/adfonic/android/api/response/ApiResponse;
    :cond_1
    iget-object v2, p0, Lcom/adfonic/android/api/RequestRunnable;->callback:Lcom/adfonic/android/api/ExecutorCallback;

    if-eqz v2, :cond_0

    .line 55
    iget-object v2, p0, Lcom/adfonic/android/api/RequestRunnable;->handler:Landroid/os/Handler;

    const/16 v3, 0x7b

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 56
    iget-object v2, p0, Lcom/adfonic/android/api/RequestRunnable;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/adfonic/android/api/RequestRunnable$1;

    invoke-direct {v3, p0, v1}, Lcom/adfonic/android/api/RequestRunnable$1;-><init>(Lcom/adfonic/android/api/RequestRunnable;Lcom/adfonic/android/api/response/ApiResponse;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 62
    .end local v1           #response:Lcom/adfonic/android/api/response/ApiResponse;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 66
    :catch_1
    move-exception v0

    .line 67
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/adfonic/android/api/RequestRunnable;->callback:Lcom/adfonic/android/api/ExecutorCallback;

    if-eqz v2, :cond_0

    .line 70
    iget-object v2, p0, Lcom/adfonic/android/api/RequestRunnable;->callback:Lcom/adfonic/android/api/ExecutorCallback;

    invoke-interface {v2, v0}, Lcom/adfonic/android/api/ExecutorCallback;->onThrowable(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 64
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v2

    goto :goto_0
.end method
