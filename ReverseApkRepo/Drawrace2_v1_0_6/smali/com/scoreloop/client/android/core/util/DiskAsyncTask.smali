.class public abstract Lcom/scoreloop/client/android/core/util/DiskAsyncTask;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/core/util/DiskAsyncTask$2;,
        Lcom/scoreloop/client/android/core/util/DiskAsyncTask$a;,
        Lcom/scoreloop/client/android/core/util/DiskAsyncTask$c;,
        Lcom/scoreloop/client/android/core/util/DiskAsyncTask$b;,
        Lcom/scoreloop/client/android/core/util/DiskAsyncTask$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/concurrent/ThreadFactory;

.field private static final c:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final d:Lcom/scoreloop/client/android/core/util/DiskAsyncTask$b;


# instance fields
.field private final e:Lcom/scoreloop/client/android/core/util/DiskAsyncTask$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/scoreloop/client/android/core/util/DiskAsyncTask$c",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private volatile g:Lcom/scoreloop/client/android/core/util/DiskAsyncTask$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    .line 29
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v2, 0xc8

    invoke-direct {v0, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/scoreloop/client/android/core/util/DiskAsyncTask;->a:Ljava/util/concurrent/BlockingQueue;

    .line 31
    new-instance v0, Lcom/scoreloop/client/android/core/util/b;

    invoke-direct {v0}, Lcom/scoreloop/client/android/core/util/b;-><init>()V

    sput-object v0, Lcom/scoreloop/client/android/core/util/DiskAsyncTask;->b:Ljava/util/concurrent/ThreadFactory;

    .line 43
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lcom/scoreloop/client/android/core/util/DiskAsyncTask;->a:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Lcom/scoreloop/client/android/core/util/DiskAsyncTask;->b:Ljava/util/concurrent/ThreadFactory;

    move v2, v1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/scoreloop/client/android/core/util/DiskAsyncTask;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 51
    new-instance v0, Lcom/scoreloop/client/android/core/util/DiskAsyncTask$b;

    invoke-direct {v0}, Lcom/scoreloop/client/android/core/util/DiskAsyncTask$b;-><init>()V

    sput-object v0, Lcom/scoreloop/client/android/core/util/DiskAsyncTask;->d:Lcom/scoreloop/client/android/core/util/DiskAsyncTask$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    sget-object v0, Lcom/scoreloop/client/android/core/util/DiskAsyncTask$Status;->PENDING:Lcom/scoreloop/client/android/core/util/DiskAsyncTask$Status;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/util/DiskAsyncTask;->g:Lcom/scoreloop/client/android/core/util/DiskAsyncTask$Status;

    .line 81
    new-instance v0, Lcom/scoreloop/client/android/core/util/DiskAsyncTask$c;

    invoke-direct {v0, p0}, Lcom/scoreloop/client/android/core/util/DiskAsyncTask$c;-><init>(Lcom/scoreloop/client/android/core/util/DiskAsyncTask;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/util/DiskAsyncTask;->e:Lcom/scoreloop/client/android/core/util/DiskAsyncTask$c;

    .line 89
    new-instance v0, Lcom/scoreloop/client/android/core/util/DiskAsyncTask$1;

    iget-object v1, p0, Lcom/scoreloop/client/android/core/util/DiskAsyncTask;->e:Lcom/scoreloop/client/android/core/util/DiskAsyncTask$c;

    invoke-direct {v0, p0, v1}, Lcom/scoreloop/client/android/core/util/DiskAsyncTask$1;-><init>(Lcom/scoreloop/client/android/core/util/DiskAsyncTask;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/util/DiskAsyncTask;->f:Ljava/util/concurrent/FutureTask;

    .line 114
    return-void
.end method

.method static synthetic a(Lcom/scoreloop/client/android/core/util/DiskAsyncTask;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/scoreloop/client/android/core/util/DiskAsyncTask;->f:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/scoreloop/client/android/core/util/DiskAsyncTask;->a(Ljava/lang/Object;)V

    sget-object v0, Lcom/scoreloop/client/android/core/util/DiskAsyncTask$Status;->FINISHED:Lcom/scoreloop/client/android/core/util/DiskAsyncTask$Status;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/util/DiskAsyncTask;->g:Lcom/scoreloop/client/android/core/util/DiskAsyncTask$Status;

    return-void
.end method

.method static synthetic d()Lcom/scoreloop/client/android/core/util/DiskAsyncTask$b;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/scoreloop/client/android/core/util/DiskAsyncTask;->d:Lcom/scoreloop/client/android/core/util/DiskAsyncTask$b;

    return-object v0
.end method


# virtual methods
.method protected varargs abstract a()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 163
    return-void
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 150
    return-void
.end method

.method public final varargs c()Lcom/scoreloop/client/android/core/util/DiskAsyncTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/scoreloop/client/android/core/util/DiskAsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 271
    iget-object v0, p0, Lcom/scoreloop/client/android/core/util/DiskAsyncTask;->g:Lcom/scoreloop/client/android/core/util/DiskAsyncTask$Status;

    sget-object v1, Lcom/scoreloop/client/android/core/util/DiskAsyncTask$Status;->PENDING:Lcom/scoreloop/client/android/core/util/DiskAsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 272
    sget-object v0, Lcom/scoreloop/client/android/core/util/DiskAsyncTask$2;->a:[I

    iget-object v1, p0, Lcom/scoreloop/client/android/core/util/DiskAsyncTask;->g:Lcom/scoreloop/client/android/core/util/DiskAsyncTask$Status;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/util/DiskAsyncTask$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 281
    :cond_0
    sget-object v0, Lcom/scoreloop/client/android/core/util/DiskAsyncTask$Status;->RUNNING:Lcom/scoreloop/client/android/core/util/DiskAsyncTask$Status;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/util/DiskAsyncTask;->g:Lcom/scoreloop/client/android/core/util/DiskAsyncTask$Status;

    .line 283
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/util/DiskAsyncTask;->b()V

    .line 285
    sget-object v0, Lcom/scoreloop/client/android/core/util/DiskAsyncTask;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/scoreloop/client/android/core/util/DiskAsyncTask;->f:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 288
    return-object p0

    .line 274
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
