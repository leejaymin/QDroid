.class final Lcom/scoreloop/client/android/core/util/DiskAsyncTask$1;
.super Ljava/util/concurrent/FutureTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/core/util/DiskAsyncTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/scoreloop/client/android/core/util/DiskAsyncTask;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/core/util/DiskAsyncTask;Ljava/util/concurrent/Callable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/scoreloop/client/android/core/util/DiskAsyncTask$1;->a:Lcom/scoreloop/client/android/core/util/DiskAsyncTask;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected final done()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 94
    .line 97
    :try_start_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/util/DiskAsyncTask$1;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 110
    :goto_0
    invoke-static {}, Lcom/scoreloop/client/android/core/util/DiskAsyncTask;->d()Lcom/scoreloop/client/android/core/util/DiskAsyncTask$b;

    move-result-object v1

    new-instance v2, Lcom/scoreloop/client/android/core/util/DiskAsyncTask$a;

    iget-object v3, p0, Lcom/scoreloop/client/android/core/util/DiskAsyncTask$1;->a:Lcom/scoreloop/client/android/core/util/DiskAsyncTask;

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/scoreloop/client/android/core/util/DiskAsyncTask$a;-><init>(Lcom/scoreloop/client/android/core/util/DiskAsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v1, v6, v2}, Lcom/scoreloop/client/android/core/util/DiskAsyncTask$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 112
    :goto_1
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "An error occured while executing doInBackground()"

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 103
    :catch_1
    move-exception v1

    invoke-static {}, Lcom/scoreloop/client/android/core/util/DiskAsyncTask;->d()Lcom/scoreloop/client/android/core/util/DiskAsyncTask$b;

    move-result-object v1

    const/4 v2, 0x3

    new-instance v3, Lcom/scoreloop/client/android/core/util/DiskAsyncTask$a;

    iget-object v4, p0, Lcom/scoreloop/client/android/core/util/DiskAsyncTask$1;->a:Lcom/scoreloop/client/android/core/util/DiskAsyncTask;

    invoke-direct {v3, v4, v0}, Lcom/scoreloop/client/android/core/util/DiskAsyncTask$a;-><init>(Lcom/scoreloop/client/android/core/util/DiskAsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Lcom/scoreloop/client/android/core/util/DiskAsyncTask$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 106
    :catch_2
    move-exception v0

    .line 107
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "An error occured while executing doInBackground()"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 99
    :catch_3
    move-exception v1

    goto :goto_0
.end method
