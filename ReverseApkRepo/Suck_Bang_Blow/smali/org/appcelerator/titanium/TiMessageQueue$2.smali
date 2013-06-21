.class Lorg/appcelerator/titanium/TiMessageQueue$2;
.super Lorg/appcelerator/titanium/util/AsyncResult;
.source "TiMessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/titanium/TiMessageQueue;->sendBlockingMessage(Landroid/os/Message;Lorg/appcelerator/titanium/TiMessageQueue;Lorg/appcelerator/titanium/util/AsyncResult;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/titanium/TiMessageQueue;

.field final synthetic val$asyncResult:Lorg/appcelerator/titanium/util/AsyncResult;


# direct methods
.method constructor <init>(Lorg/appcelerator/titanium/TiMessageQueue;Ljava/lang/Object;Lorg/appcelerator/titanium/util/AsyncResult;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lorg/appcelerator/titanium/TiMessageQueue$2;->this$0:Lorg/appcelerator/titanium/TiMessageQueue;

    iput-object p3, p0, Lorg/appcelerator/titanium/TiMessageQueue$2;->val$asyncResult:Lorg/appcelerator/titanium/util/AsyncResult;

    invoke-direct {p0, p2}, Lorg/appcelerator/titanium/util/AsyncResult;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 164
    const/4 v1, 0x0

    .line 168
    .local v1, timeout:I
    :goto_0
    int-to-long v2, v1

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v2, v3, v4}, Lorg/appcelerator/titanium/TiMessageQueue$2;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 169
    iget-object v2, p0, Lorg/appcelerator/titanium/TiMessageQueue$2;->this$0:Lorg/appcelerator/titanium/TiMessageQueue;

    iget-object v2, v2, Lorg/appcelerator/titanium/TiMessageQueue;->messageQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 170
    const/16 v1, 0x32

    goto :goto_0

    .line 172
    :cond_0
    iget-object v2, p0, Lorg/appcelerator/titanium/TiMessageQueue$2;->this$0:Lorg/appcelerator/titanium/TiMessageQueue;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiMessageQueue;->dispatchPendingMessages()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 175
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 176
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "TiMessageQueue"

    const-string v3, "interrupted waiting for async result"

    invoke-static {v2, v3, v0}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    iget-object v2, p0, Lorg/appcelerator/titanium/TiMessageQueue$2;->this$0:Lorg/appcelerator/titanium/TiMessageQueue;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiMessageQueue;->dispatchPendingMessages()V

    .line 179
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1
    iget-object v2, p0, Lorg/appcelerator/titanium/TiMessageQueue$2;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    .line 180
    new-instance v2, Ljava/lang/RuntimeException;

    iget-object v3, p0, Lorg/appcelerator/titanium/TiMessageQueue$2;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 182
    :cond_2
    iget-object v2, p0, Lorg/appcelerator/titanium/TiMessageQueue$2;->result:Ljava/lang/Object;

    return-object v2
.end method

.method public setResult(Ljava/lang/Object;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 188
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/util/AsyncResult;->setResult(Ljava/lang/Object;)V

    .line 189
    iget-object v0, p0, Lorg/appcelerator/titanium/TiMessageQueue$2;->val$asyncResult:Lorg/appcelerator/titanium/util/AsyncResult;

    invoke-virtual {v0, p1}, Lorg/appcelerator/titanium/util/AsyncResult;->setResult(Ljava/lang/Object;)V

    .line 190
    return-void
.end method
