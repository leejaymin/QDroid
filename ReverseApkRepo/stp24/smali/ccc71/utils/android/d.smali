.class final Lccc71/utils/android/d;
.super Ljava/util/concurrent/FutureTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/utils/android/a;


# direct methods
.method constructor <init>(Lccc71/utils/android/a;Ljava/util/concurrent/Callable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/utils/android/d;->a:Lccc71/utils/android/a;

    .line 183
    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected final done()V
    .locals 3

    .prologue
    .line 190
    :try_start_0
    invoke-virtual {p0}, Lccc71/utils/android/d;->get()Ljava/lang/Object;

    move-result-object v0

    .line 192
    iget-object v1, p0, Lccc71/utils/android/d;->a:Lccc71/utils/android/a;

    invoke-static {v1, v0}, Lccc71/utils/android/a;->c(Lccc71/utils/android/a;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    .line 203
    :goto_0
    return-void

    .line 193
    :catch_0
    move-exception v0

    .line 195
    const-string v1, "AsyncTask"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 196
    :catch_1
    move-exception v0

    .line 198
    new-instance v1, Ljava/lang/RuntimeException;

    .line 199
    const-string v2, "An error occured while executing doInBackground()"

    .line 200
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 198
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 203
    :catch_2
    move-exception v0

    iget-object v0, p0, Lccc71/utils/android/d;->a:Lccc71/utils/android/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccc71/utils/android/a;->c(Lccc71/utils/android/a;Ljava/lang/Object;)V

    goto :goto_0

    .line 204
    :catch_3
    move-exception v0

    .line 206
    new-instance v1, Ljava/lang/RuntimeException;

    .line 207
    const-string v2, "An error occured while executing doInBackground()"

    .line 206
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
