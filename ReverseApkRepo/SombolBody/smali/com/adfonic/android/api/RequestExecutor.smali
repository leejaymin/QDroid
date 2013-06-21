.class public Lcom/adfonic/android/api/RequestExecutor;
.super Ljava/lang/Object;
.source "RequestExecutor.java"


# instance fields
.field private executor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/adfonic/android/api/RequestExecutor;->executor:Ljava/util/concurrent/ExecutorService;

    .line 24
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 28
    :try_start_0
    iget-object v1, p0, Lcom/adfonic/android/api/RequestExecutor;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Issue shutting down the executor"

    invoke-static {v1, v0}, Lcom/adfonic/android/utils/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public execute(Landroid/content/Context;Lcom/adfonic/android/api/Request;Lcom/adfonic/android/api/ExecutorCallback;Landroid/os/Handler;)V
    .locals 3
    .parameter "context"
    .parameter "request"
    .parameter "callback"
    .parameter "handler"

    .prologue
    .line 35
    if-nez p2, :cond_0

    .line 36
    const-string v2, "Can\'t execute a null request"

    invoke-static {v2}, Lcom/adfonic/android/utils/Log;->w(Ljava/lang/String;)V

    .line 46
    :goto_0
    return-void

    .line 39
    :cond_0
    iget-object v2, p0, Lcom/adfonic/android/api/RequestExecutor;->executor:Ljava/util/concurrent/ExecutorService;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/adfonic/android/api/RequestExecutor;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 40
    :cond_1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/adfonic/android/api/RequestExecutor;->executor:Ljava/util/concurrent/ExecutorService;

    .line 42
    :cond_2
    new-instance v0, Lcom/adfonic/android/api/request/AndroidRequest;

    invoke-direct {v0, p2}, Lcom/adfonic/android/api/request/AndroidRequest;-><init>(Lcom/adfonic/android/api/Request;)V

    .line 43
    .local v0, androidRequest:Lcom/adfonic/android/api/request/AndroidRequest;
    invoke-virtual {p0}, Lcom/adfonic/android/api/RequestExecutor;->getSystemRequestAdapter()Lcom/adfonic/android/api/request/AndroidSystemRequestAdapter;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Lcom/adfonic/android/api/request/AndroidSystemRequestAdapter;->prepareRequest(Lcom/adfonic/android/api/request/AndroidRequest;Landroid/content/Context;)V

    .line 44
    new-instance v1, Lcom/adfonic/android/api/RequestRunnable;

    invoke-direct {v1, v0, p3, p4}, Lcom/adfonic/android/api/RequestRunnable;-><init>(Lcom/adfonic/android/api/request/AndroidRequest;Lcom/adfonic/android/api/ExecutorCallback;Landroid/os/Handler;)V

    .line 45
    .local v1, r:Lcom/adfonic/android/api/RequestRunnable;
    iget-object v2, p0, Lcom/adfonic/android/api/RequestExecutor;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected getSystemRequestAdapter()Lcom/adfonic/android/api/request/AndroidSystemRequestAdapter;
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/adfonic/android/api/request/AndroidSystemRequestAdapter;

    invoke-direct {v0}, Lcom/adfonic/android/api/request/AndroidSystemRequestAdapter;-><init>()V

    return-object v0
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/adfonic/android/api/RequestExecutor;->executor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/adfonic/android/api/RequestExecutor;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 62
    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/adfonic/android/api/RequestExecutor;->executor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adfonic/android/api/RequestExecutor;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/adfonic/android/api/RequestExecutor;->executor:Ljava/util/concurrent/ExecutorService;

    .line 56
    :cond_1
    return-void
.end method
