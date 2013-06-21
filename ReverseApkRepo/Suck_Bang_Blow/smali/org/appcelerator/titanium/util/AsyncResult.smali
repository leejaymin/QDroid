.class public Lorg/appcelerator/titanium/util/AsyncResult;
.super Ljava/util/concurrent/Semaphore;
.source "AsyncResult.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected arg:Ljava/lang/Object;

.field protected exception:Ljava/lang/Throwable;

.field protected result:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/appcelerator/titanium/util/AsyncResult;-><init>(Ljava/lang/Object;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .parameter "arg"

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 25
    iput-object p1, p0, Lorg/appcelerator/titanium/util/AsyncResult;->arg:Ljava/lang/Object;

    .line 26
    return-void
.end method


# virtual methods
.method public getArg()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lorg/appcelerator/titanium/util/AsyncResult;->arg:Ljava/lang/Object;

    return-object v0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 46
    :try_start_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/util/AsyncResult;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    iget-object v0, p0, Lorg/appcelerator/titanium/util/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v1, p0, Lorg/appcelerator/titanium/util/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 53
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/util/AsyncResult;->result:Ljava/lang/Object;

    return-object v0

    .line 47
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setException(Ljava/lang/Throwable;)V
    .locals 1
    .parameter "exception"

    .prologue
    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/appcelerator/titanium/util/AsyncResult;->result:Ljava/lang/Object;

    .line 39
    iput-object p1, p0, Lorg/appcelerator/titanium/util/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 40
    invoke-virtual {p0}, Lorg/appcelerator/titanium/util/AsyncResult;->release()V

    .line 41
    return-void
.end method

.method public setResult(Ljava/lang/Object;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 33
    iput-object p1, p0, Lorg/appcelerator/titanium/util/AsyncResult;->result:Ljava/lang/Object;

    .line 34
    invoke-virtual {p0}, Lorg/appcelerator/titanium/util/AsyncResult;->release()V

    .line 35
    return-void
.end method
