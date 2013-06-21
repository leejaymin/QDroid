.class Lcom/wolfram/android/alpha/QueryTask$5;
.super Ljava/lang/Object;
.source "QueryTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wolfram/android/alpha/QueryTask;->createPing_Thread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field volatile connection:Ljava/net/HttpURLConnection;

.field delay_thread_sleep_time:I

.field volatile isInitialResponse:Z

.field volatile isPingRecieved:Z

.field volatile isPingRecieved_After_TimeOut:Z

.field ping_thread_handler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/wolfram/android/alpha/QueryTask;

.field timeout:I

.field url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/wolfram/android/alpha/QueryTask;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 263
    iput-object p1, p0, Lcom/wolfram/android/alpha/QueryTask$5;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/wolfram/android/alpha/QueryTask$5;->ping_thread_handler:Landroid/os/Handler;

    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wolfram/android/alpha/QueryTask$5;->isInitialResponse:Z

    .line 267
    iput-boolean v1, p0, Lcom/wolfram/android/alpha/QueryTask$5;->isPingRecieved_After_TimeOut:Z

    .line 268
    iput-boolean v1, p0, Lcom/wolfram/android/alpha/QueryTask$5;->isPingRecieved:Z

    .line 269
    const-string v0, "http://www.wolframalpha.com/api/v2/ping.jsp"

    iput-object v0, p0, Lcom/wolfram/android/alpha/QueryTask$5;->url:Ljava/lang/String;

    .line 270
    const/16 v0, 0x320

    iput v0, p0, Lcom/wolfram/android/alpha/QueryTask$5;->timeout:I

    .line 271
    const/16 v0, 0x384

    iput v0, p0, Lcom/wolfram/android/alpha/QueryTask$5;->delay_thread_sleep_time:I

    .line 272
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wolfram/android/alpha/QueryTask$5;->connection:Ljava/net/HttpURLConnection;

    return-void
.end method


# virtual methods
.method public after_response()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 337
    iget-boolean v0, p0, Lcom/wolfram/android/alpha/QueryTask$5;->isPingRecieved:Z

    if-eqz v0, :cond_2

    .line 338
    iput-boolean v1, p0, Lcom/wolfram/android/alpha/QueryTask$5;->isPingRecieved:Z

    .line 339
    iget-boolean v0, p0, Lcom/wolfram/android/alpha/QueryTask$5;->isPingRecieved_After_TimeOut:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wolfram/android/alpha/QueryTask$5;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    #getter for: Lcom/wolfram/android/alpha/QueryTask;->UIhandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/wolfram/android/alpha/QueryTask;->access$1300(Lcom/wolfram/android/alpha/QueryTask;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask$5;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    #getter for: Lcom/wolfram/android/alpha/QueryTask;->runnable_computing:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/wolfram/android/alpha/QueryTask;->access$1500(Lcom/wolfram/android/alpha/QueryTask;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/wolfram/android/alpha/QueryTask$5;->ping_thread_handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask$5;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    #getter for: Lcom/wolfram/android/alpha/QueryTask;->runnable_ping:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/wolfram/android/alpha/QueryTask;->access$1000(Lcom/wolfram/android/alpha/QueryTask;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 347
    :cond_1
    :goto_0
    return-void

    .line 341
    :cond_2
    iget-boolean v0, p0, Lcom/wolfram/android/alpha/QueryTask$5;->isPingRecieved_After_TimeOut:Z

    if-eqz v0, :cond_1

    .line 342
    iput-boolean v1, p0, Lcom/wolfram/android/alpha/QueryTask$5;->isPingRecieved_After_TimeOut:Z

    .line 343
    iget-boolean v0, p0, Lcom/wolfram/android/alpha/QueryTask$5;->isPingRecieved:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/wolfram/android/alpha/QueryTask$5;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    #getter for: Lcom/wolfram/android/alpha/QueryTask;->UIhandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/wolfram/android/alpha/QueryTask;->access$1300(Lcom/wolfram/android/alpha/QueryTask;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask$5;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    #getter for: Lcom/wolfram/android/alpha/QueryTask;->runnable_communicating:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/wolfram/android/alpha/QueryTask;->access$1600(Lcom/wolfram/android/alpha/QueryTask;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 344
    :cond_3
    iget-object v0, p0, Lcom/wolfram/android/alpha/QueryTask$5;->ping_thread_handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask$5;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    #getter for: Lcom/wolfram/android/alpha/QueryTask;->runnable_ping:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/wolfram/android/alpha/QueryTask;->access$1000(Lcom/wolfram/android/alpha/QueryTask;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public initial_response()V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/wolfram/android/alpha/QueryTask$5;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    #getter for: Lcom/wolfram/android/alpha/QueryTask;->isProgress_QueryResult_Done:Z
    invoke-static {v0}, Lcom/wolfram/android/alpha/QueryTask;->access$900(Lcom/wolfram/android/alpha/QueryTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/wolfram/android/alpha/QueryTask$5;->ping_thread_handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask$5;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    #getter for: Lcom/wolfram/android/alpha/QueryTask;->runnable_ping:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/wolfram/android/alpha/QueryTask;->access$1000(Lcom/wolfram/android/alpha/QueryTask;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 325
    iget-object v0, p0, Lcom/wolfram/android/alpha/QueryTask$5;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    #calls: Lcom/wolfram/android/alpha/QueryTask;->stop_Thread_Safe()V
    invoke-static {v0}, Lcom/wolfram/android/alpha/QueryTask;->access$1100(Lcom/wolfram/android/alpha/QueryTask;)V

    .line 333
    :goto_0
    return-void

    .line 327
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wolfram/android/alpha/QueryTask$5;->isInitialResponse:Z

    .line 328
    iget-object v0, p0, Lcom/wolfram/android/alpha/QueryTask$5;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    #getter for: Lcom/wolfram/android/alpha/QueryTask;->UIhandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/wolfram/android/alpha/QueryTask;->access$1300(Lcom/wolfram/android/alpha/QueryTask;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask$5;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    #getter for: Lcom/wolfram/android/alpha/QueryTask;->runnable_connecting:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/wolfram/android/alpha/QueryTask;->access$1200(Lcom/wolfram/android/alpha/QueryTask;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 329
    iget-boolean v0, p0, Lcom/wolfram/android/alpha/QueryTask$5;->isPingRecieved:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wolfram/android/alpha/QueryTask$5;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    #getter for: Lcom/wolfram/android/alpha/QueryTask;->UIhandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/wolfram/android/alpha/QueryTask;->access$1300(Lcom/wolfram/android/alpha/QueryTask;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask$5;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    #getter for: Lcom/wolfram/android/alpha/QueryTask;->runnable_computing:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/wolfram/android/alpha/QueryTask;->access$1500(Lcom/wolfram/android/alpha/QueryTask;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 331
    :goto_1
    iget-object v0, p0, Lcom/wolfram/android/alpha/QueryTask$5;->ping_thread_handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask$5;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    #getter for: Lcom/wolfram/android/alpha/QueryTask;->runnable_ping:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/wolfram/android/alpha/QueryTask;->access$1000(Lcom/wolfram/android/alpha/QueryTask;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/wolfram/android/alpha/QueryTask$5;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    #getter for: Lcom/wolfram/android/alpha/QueryTask;->UIhandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/wolfram/android/alpha/QueryTask;->access$1300(Lcom/wolfram/android/alpha/QueryTask;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask$5;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    #getter for: Lcom/wolfram/android/alpha/QueryTask;->runnable_connecting:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/wolfram/android/alpha/QueryTask;->access$1200(Lcom/wolfram/android/alpha/QueryTask;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 276
    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask$5;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    #getter for: Lcom/wolfram/android/alpha/QueryTask;->isProgress_QueryResult_Done:Z
    invoke-static {v1}, Lcom/wolfram/android/alpha/QueryTask;->access$900(Lcom/wolfram/android/alpha/QueryTask;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 278
    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask$5;->ping_thread_handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/wolfram/android/alpha/QueryTask$5;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    #getter for: Lcom/wolfram/android/alpha/QueryTask;->runnable_ping:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/wolfram/android/alpha/QueryTask;->access$1000(Lcom/wolfram/android/alpha/QueryTask;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 279
    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask$5;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    #calls: Lcom/wolfram/android/alpha/QueryTask;->stop_Thread_Safe()V
    invoke-static {v1}, Lcom/wolfram/android/alpha/QueryTask;->access$1100(Lcom/wolfram/android/alpha/QueryTask;)V

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    :try_start_0
    iget-boolean v1, p0, Lcom/wolfram/android/alpha/QueryTask$5;->isPingRecieved:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/wolfram/android/alpha/QueryTask$5;->isInitialResponse:Z

    if-eqz v1, :cond_2

    .line 283
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/wolfram/android/alpha/QueryTask$5;->url:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    iput-object v1, p0, Lcom/wolfram/android/alpha/QueryTask$5;->connection:Ljava/net/HttpURLConnection;

    .line 284
    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask$5;->connection:Ljava/net/HttpURLConnection;

    iget v2, p0, Lcom/wolfram/android/alpha/QueryTask$5;->timeout:I

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 285
    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask$5;->connection:Ljava/net/HttpURLConnection;

    const-string v2, "connection"

    const-string v3, "Keep-Alive"

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :cond_2
    iget-boolean v1, p0, Lcom/wolfram/android/alpha/QueryTask$5;->isInitialResponse:Z

    if-eqz v1, :cond_3

    .line 289
    iget v1, p0, Lcom/wolfram/android/alpha/QueryTask$5;->delay_thread_sleep_time:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 290
    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask$5;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    #getter for: Lcom/wolfram/android/alpha/QueryTask;->UIhandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/wolfram/android/alpha/QueryTask;->access$1300(Lcom/wolfram/android/alpha/QueryTask;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/wolfram/android/alpha/QueryTask$5;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    #getter for: Lcom/wolfram/android/alpha/QueryTask;->runnable_connecting:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/wolfram/android/alpha/QueryTask;->access$1200(Lcom/wolfram/android/alpha/QueryTask;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 292
    :cond_3
    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask$5;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 294
    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask$5;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 295
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/wolfram/android/alpha/QueryTask$5;->isPingRecieved:Z

    .line 296
    iget-boolean v1, p0, Lcom/wolfram/android/alpha/QueryTask$5;->isInitialResponse:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/QueryTask$5;->initial_response()V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 300
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 301
    .local v0, e:Ljava/net/SocketTimeoutException;
    iget-boolean v1, p0, Lcom/wolfram/android/alpha/QueryTask$5;->isInitialResponse:Z

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/QueryTask$5;->initial_response()V

    goto :goto_0

    .line 297
    .end local v0           #e:Ljava/net/SocketTimeoutException;
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/QueryTask$5;->after_response()V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 309
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 311
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask$5;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    #getter for: Lcom/wolfram/android/alpha/QueryTask;->UIhandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/wolfram/android/alpha/QueryTask;->access$1300(Lcom/wolfram/android/alpha/QueryTask;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/wolfram/android/alpha/QueryTask$5$1;

    invoke-direct {v2, p0}, Lcom/wolfram/android/alpha/QueryTask$5$1;-><init>(Lcom/wolfram/android/alpha/QueryTask$5;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 303
    .local v0, e:Ljava/net/SocketTimeoutException;
    :cond_5
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/wolfram/android/alpha/QueryTask$5;->isPingRecieved:Z

    .line 304
    iput-boolean v4, p0, Lcom/wolfram/android/alpha/QueryTask$5;->isPingRecieved_After_TimeOut:Z

    .line 305
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/QueryTask$5;->after_response()V

    goto/16 :goto_0

    .line 316
    .end local v0           #e:Ljava/net/SocketTimeoutException;
    :catch_2
    move-exception v1

    goto/16 :goto_0
.end method
