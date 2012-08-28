.class public Lorg/connectbot/service/PromptHelper;
.super Ljava/lang/Object;
.source "PromptHelper.java"


# instance fields
.field private handler:Landroid/os/Handler;

.field public promptHint:Ljava/lang/String;

.field public promptInstructions:Ljava/lang/String;

.field public promptRequested:Ljava/lang/Object;

.field private promptResponse:Ljava/util/concurrent/Semaphore;

.field private promptToken:Ljava/util/concurrent/Semaphore;

.field private response:Ljava/lang/Object;

.field private final tag:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .parameter "tag"

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v0, p0, Lorg/connectbot/service/PromptHelper;->handler:Landroid/os/Handler;

    .line 39
    iput-object v0, p0, Lorg/connectbot/service/PromptHelper;->promptInstructions:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lorg/connectbot/service/PromptHelper;->promptHint:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lorg/connectbot/service/PromptHelper;->promptRequested:Ljava/lang/Object;

    .line 43
    iput-object v0, p0, Lorg/connectbot/service/PromptHelper;->response:Ljava/lang/Object;

    .line 46
    iput-object p1, p0, Lorg/connectbot/service/PromptHelper;->tag:Ljava/lang/Object;

    .line 49
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lorg/connectbot/service/PromptHelper;->promptToken:Ljava/util/concurrent/Semaphore;

    .line 52
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lorg/connectbot/service/PromptHelper;->promptResponse:Ljava/util/concurrent/Semaphore;

    .line 53
    return-void
.end method

.method private requestPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "instructions"
    .parameter "hint"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 94
    .local v0, response:Ljava/lang/Object;
    iget-object v1, p0, Lorg/connectbot/service/PromptHelper;->promptToken:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 97
    :try_start_0
    iput-object p1, p0, Lorg/connectbot/service/PromptHelper;->promptInstructions:Ljava/lang/String;

    .line 98
    iput-object p2, p0, Lorg/connectbot/service/PromptHelper;->promptHint:Ljava/lang/String;

    .line 99
    iput-object p3, p0, Lorg/connectbot/service/PromptHelper;->promptRequested:Ljava/lang/Object;

    .line 102
    iget-object v1, p0, Lorg/connectbot/service/PromptHelper;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lorg/connectbot/service/PromptHelper;->handler:Landroid/os/Handler;

    const/4 v2, -0x1

    iget-object v3, p0, Lorg/connectbot/service/PromptHelper;->tag:Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 106
    :cond_0
    iget-object v1, p0, Lorg/connectbot/service/PromptHelper;->promptResponse:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 108
    invoke-virtual {p0}, Lorg/connectbot/service/PromptHelper;->popResponse()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 110
    iget-object v1, p0, Lorg/connectbot/service/PromptHelper;->promptToken:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 113
    return-object v0

    .line 109
    :catchall_0
    move-exception v1

    .line 110
    iget-object v2, p0, Lorg/connectbot/service/PromptHelper;->promptToken:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 111
    throw v1
.end method


# virtual methods
.method public cancelPrompt()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lorg/connectbot/service/PromptHelper;->promptToken:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/connectbot/service/PromptHelper;->response:Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Lorg/connectbot/service/PromptHelper;->promptResponse:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lorg/connectbot/service/PromptHelper;->promptToken:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0
.end method

.method protected popResponse()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lorg/connectbot/service/PromptHelper;->response:Ljava/lang/Object;

    .line 80
    .local v0, value:Ljava/lang/Object;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/connectbot/service/PromptHelper;->response:Ljava/lang/Object;

    .line 81
    return-object v0
.end method

.method public requestBooleanPrompt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .parameter "instructions"
    .parameter "hint"

    .prologue
    .line 138
    const/4 v1, 0x0

    .line 140
    .local v1, value:Ljava/lang/Boolean;
    :try_start_0
    const-class v2, Ljava/lang/Boolean;

    invoke-direct {p0, p1, p2, v2}, Lorg/connectbot/service/PromptHelper;->requestPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/Boolean;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    return-object v1

    .line 141
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public requestStringPrompt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "instructions"
    .parameter "hint"

    .prologue
    .line 123
    const/4 v1, 0x0

    .line 125
    .local v1, value:Ljava/lang/String;
    :try_start_0
    const-class v2, Ljava/lang/String;

    invoke-direct {p0, p1, p2, v2}, Lorg/connectbot/service/PromptHelper;->requestPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    return-object v1

    .line 126
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 60
    iput-object p1, p0, Lorg/connectbot/service/PromptHelper;->handler:Landroid/os/Handler;

    .line 61
    return-void
.end method

.method public setResponse(Ljava/lang/Object;)V
    .locals 1
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 68
    iput-object p1, p0, Lorg/connectbot/service/PromptHelper;->response:Ljava/lang/Object;

    .line 69
    iput-object v0, p0, Lorg/connectbot/service/PromptHelper;->promptRequested:Ljava/lang/Object;

    .line 70
    iput-object v0, p0, Lorg/connectbot/service/PromptHelper;->promptInstructions:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lorg/connectbot/service/PromptHelper;->promptHint:Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lorg/connectbot/service/PromptHelper;->promptResponse:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 73
    return-void
.end method
