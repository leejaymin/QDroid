.class public Lorg/appcelerator/titanium/TiMessageQueue;
.super Ljava/lang/Object;
.source "TiMessageQueue.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field public static final DEFAULT_TIMEOUT:I = 0x32

.field private static final MSG_RUN:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "TiMessageQueue"

.field protected static mainQueue:Lorg/appcelerator/titanium/TiMessageQueue;

.field protected static threadLocalQueue:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lorg/appcelerator/titanium/TiMessageQueue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected blockCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected blockingLatch:Ljava/util/concurrent/CountDownLatch;

.field protected callback:Landroid/os/Handler$Callback;

.field protected handler:Landroid/os/Handler;

.field protected messageQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lorg/appcelerator/titanium/TiMessageQueue;->DBG:Z

    .line 55
    new-instance v0, Lorg/appcelerator/titanium/TiMessageQueue$1;

    invoke-direct {v0}, Lorg/appcelerator/titanium/TiMessageQueue$1;-><init>()V

    sput-object v0, Lorg/appcelerator/titanium/TiMessageQueue;->threadLocalQueue:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiMessageQueue;->messageQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiMessageQueue;->blockCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiMessageQueue;->handler:Landroid/os/Handler;

    .line 72
    return-void
.end method

.method public static getMainMessageQueue()Lorg/appcelerator/titanium/TiMessageQueue;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lorg/appcelerator/titanium/TiMessageQueue;->mainQueue:Lorg/appcelerator/titanium/TiMessageQueue;

    return-object v0
.end method

.method public static getMessageQueue()Lorg/appcelerator/titanium/TiMessageQueue;
    .locals 2

    .prologue
    .line 79
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_1

    .line 80
    sget-object v0, Lorg/appcelerator/titanium/TiMessageQueue;->threadLocalQueue:Ljava/lang/ThreadLocal;

    monitor-enter v0

    .line 81
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_0

    .line 82
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 84
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :cond_1
    sget-object v0, Lorg/appcelerator/titanium/TiMessageQueue;->threadLocalQueue:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/TiMessageQueue;

    return-object v0

    .line 84
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public dispatchMessage()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 315
    iget-object v1, p0, Lorg/appcelerator/titanium/TiMessageQueue;->messageQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 316
    .local v0, msg:Landroid/os/Message;
    if-nez v0, :cond_0

    move v1, v2

    .line 323
    :goto_0
    return v1

    .line 319
    :cond_0
    invoke-virtual {v0}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 320
    invoke-virtual {v0}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 321
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 323
    goto :goto_0
.end method

.method public dispatchMessage(ILjava/util/concurrent/TimeUnit;)Z
    .locals 5
    .parameter "timeout"
    .parameter "unit"

    .prologue
    const/4 v4, 0x0

    .line 337
    :try_start_0
    iget-object v1, p0, Lorg/appcelerator/titanium/TiMessageQueue;->messageQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3, p2}, Ljava/util/concurrent/ArrayBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 338
    .local v0, msg:Landroid/os/Message;
    if-eqz v0, :cond_2

    .line 339
    sget-boolean v1, Lorg/appcelerator/titanium/TiMessageQueue;->DBG:Z

    if-eqz v1, :cond_0

    .line 340
    const-string v1, "TiMessageQueue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dispatching message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_0
    invoke-virtual {v0}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 343
    invoke-virtual {v0}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    const/4 v1, 0x1

    .line 351
    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    return v1

    .restart local v0       #msg:Landroid/os/Message;
    :cond_1
    move v1, v4

    .line 346
    goto :goto_0

    .line 348
    .end local v0           #msg:Landroid/os/Message;
    :catch_0
    move-exception v1

    :cond_2
    move v1, v4

    .line 351
    goto :goto_0
.end method

.method public dispatchPendingMessages()V
    .locals 1

    .prologue
    .line 304
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiMessageQueue;->dispatchMessage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lorg/appcelerator/titanium/TiMessageQueue;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "msg"

    .prologue
    .line 218
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xbb8

    if-ne v0, v1, :cond_0

    .line 219
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 220
    const/4 v0, 0x1

    .line 225
    :goto_0
    return v0

    .line 222
    .restart local p0
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/TiMessageQueue;->callback:Landroid/os/Handler$Callback;

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lorg/appcelerator/titanium/TiMessageQueue;->callback:Landroid/os/Handler$Callback;

    invoke-interface {v0, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    goto :goto_0

    .line 225
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBlocking()Z
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lorg/appcelerator/titanium/TiMessageQueue;->blockCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "runnable"

    .prologue
    .line 236
    iget-object v0, p0, Lorg/appcelerator/titanium/TiMessageQueue;->handler:Landroid/os/Handler;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/TiMessageQueue;->sendMessage(Landroid/os/Message;)V

    .line 237
    return-void
.end method

.method public resetLatch()V
    .locals 2

    .prologue
    .line 244
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiMessageQueue;->blockingLatch:Ljava/util/concurrent/CountDownLatch;

    .line 245
    return-void
.end method

.method public sendBlockingMessage(Landroid/os/Message;Lorg/appcelerator/titanium/TiMessageQueue;Lorg/appcelerator/titanium/util/AsyncResult;)Ljava/lang/Object;
    .locals 3
    .parameter "msg"
    .parameter "blockQueue"
    .parameter "asyncResult"

    .prologue
    .line 160
    new-instance v0, Lorg/appcelerator/titanium/TiMessageQueue$2;

    invoke-virtual {p3}, Lorg/appcelerator/titanium/util/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, p0, v2, p3}, Lorg/appcelerator/titanium/TiMessageQueue$2;-><init>(Lorg/appcelerator/titanium/TiMessageQueue;Ljava/lang/Object;Lorg/appcelerator/titanium/util/AsyncResult;)V

    .line 192
    .local v0, blockingResult:Lorg/appcelerator/titanium/util/AsyncResult;
    iget-object v2, p0, Lorg/appcelerator/titanium/TiMessageQueue;->blockCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 193
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 194
    invoke-virtual {p2, p1}, Lorg/appcelerator/titanium/TiMessageQueue;->sendMessage(Landroid/os/Message;)V

    .line 196
    invoke-virtual {v0}, Lorg/appcelerator/titanium/util/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    .line 197
    .local v1, o:Ljava/lang/Object;
    iget-object v2, p0, Lorg/appcelerator/titanium/TiMessageQueue;->blockCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 198
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiMessageQueue;->dispatchPendingMessages()V

    .line 199
    return-object v1
.end method

.method public sendBlockingMessage(Landroid/os/Message;Lorg/appcelerator/titanium/util/AsyncResult;)Ljava/lang/Object;
    .locals 1
    .parameter "msg"
    .parameter "result"

    .prologue
    .line 145
    invoke-static {}, Lorg/appcelerator/titanium/TiMessageQueue;->getMessageQueue()Lorg/appcelerator/titanium/TiMessageQueue;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lorg/appcelerator/titanium/TiMessageQueue;->sendBlockingMessage(Landroid/os/Message;Lorg/appcelerator/titanium/TiMessageQueue;Lorg/appcelerator/titanium/util/AsyncResult;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public sendMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 113
    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v3

    .line 114
    .local v3, target:Landroid/os/Handler;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 115
    .local v0, currentThreadId:J
    const-wide/16 v4, -0x1

    .line 116
    .local v4, targetThreadId:J
    if-eqz v3, :cond_0

    .line 117
    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    .line 119
    :cond_0
    if-eqz v3, :cond_1

    cmp-long v6, v0, v4

    if-nez v6, :cond_1

    .line 120
    invoke-virtual {v3, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 133
    :goto_0
    return-void

    .line 122
    :cond_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiMessageQueue;->isBlocking()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 124
    :try_start_0
    iget-object v6, p0, Lorg/appcelerator/titanium/TiMessageQueue;->messageQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v6, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 125
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 126
    .local v2, e:Ljava/lang/InterruptedException;
    const-string v6, "TiMessageQueue"

    const-string v7, "interrupted trying to put new message, sending to handler"

    invoke-static {v6, v7, v2}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 130
    .end local v2           #e:Ljava/lang/InterruptedException;
    :cond_2
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setCallback(Landroid/os/Handler$Callback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 212
    iput-object p1, p0, Lorg/appcelerator/titanium/TiMessageQueue;->callback:Landroid/os/Handler$Callback;

    .line 213
    return-void
.end method

.method public startBlocking()V
    .locals 6

    .prologue
    .line 257
    monitor-enter p0

    .line 258
    :try_start_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiMessageQueue;->isBlocking()Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit p0

    .line 276
    :goto_0
    return-void

    .line 259
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiMessageQueue;->resetLatch()V

    .line 260
    iget-object v2, p0, Lorg/appcelerator/titanium/TiMessageQueue;->blockCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 261
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    const/4 v1, 0x0

    .line 264
    .local v1, timeout:I
    :goto_1
    :try_start_1
    iget-object v2, p0, Lorg/appcelerator/titanium/TiMessageQueue;->blockingLatch:Ljava/util/concurrent/CountDownLatch;

    int-to-long v3, v1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 265
    iget-object v2, p0, Lorg/appcelerator/titanium/TiMessageQueue;->messageQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-nez v2, :cond_1

    .line 266
    const/16 v1, 0x32

    goto :goto_1

    .line 261
    .end local v1           #timeout:I
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 268
    .restart local v1       #timeout:I
    :cond_1
    :try_start_3
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiMessageQueue;->dispatchPendingMessages()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 271
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 272
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "TiMessageQueue"

    const-string v3, "interrupted while blocking"

    invoke-static {v2, v3, v0}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 274
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_2
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiMessageQueue;->dispatchPendingMessages()V

    .line 275
    iget-object v2, p0, Lorg/appcelerator/titanium/TiMessageQueue;->blockCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0
.end method

.method public stopBlocking()V
    .locals 1

    .prologue
    .line 283
    monitor-enter p0

    .line 284
    :try_start_0
    iget-object v0, p0, Lorg/appcelerator/titanium/TiMessageQueue;->blockingLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lorg/appcelerator/titanium/TiMessageQueue;->blockingLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 287
    :cond_0
    monitor-exit p0

    .line 288
    return-void

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
