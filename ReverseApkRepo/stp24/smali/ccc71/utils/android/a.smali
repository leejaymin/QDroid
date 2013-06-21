.class public abstract Lccc71/utils/android/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/concurrent/ThreadFactory;

.field private static final b:Ljava/util/concurrent/BlockingQueue;

.field private static final c:Lccc71/utils/android/f;

.field private static volatile d:Ljava/util/concurrent/Executor;

.field public static final e:Ljava/util/concurrent/Executor;

.field public static final f:Ljava/util/concurrent/Executor;

.field private static synthetic k:[I


# instance fields
.field private final g:Lccc71/utils/android/j;

.field private final h:Ljava/util/concurrent/FutureTask;

.field private volatile i:Lccc71/utils/android/i;

.field private final j:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 50
    new-instance v0, Lccc71/utils/android/b;

    invoke-direct {v0}, Lccc71/utils/android/b;-><init>()V

    sput-object v0, Lccc71/utils/android/a;->a:Ljava/util/concurrent/ThreadFactory;

    .line 60
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lccc71/utils/android/a;->b:Ljava/util/concurrent/BlockingQueue;

    .line 65
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 66
    const/4 v1, 0x5

    const/16 v2, 0x80

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 67
    sget-object v6, Lccc71/utils/android/a;->b:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Lccc71/utils/android/a;->a:Ljava/util/concurrent/ThreadFactory;

    .line 65
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lccc71/utils/android/a;->e:Ljava/util/concurrent/Executor;

    .line 73
    new-instance v0, Lccc71/utils/android/g;

    invoke-direct {v0, v8}, Lccc71/utils/android/g;-><init>(B)V

    sput-object v0, Lccc71/utils/android/a;->f:Ljava/util/concurrent/Executor;

    .line 78
    new-instance v0, Lccc71/utils/android/f;

    invoke-direct {v0, v8}, Lccc71/utils/android/f;-><init>(B)V

    sput-object v0, Lccc71/utils/android/a;->c:Lccc71/utils/android/f;

    .line 80
    sget-object v0, Lccc71/utils/android/a;->f:Ljava/util/concurrent/Executor;

    sput-object v0, Lccc71/utils/android/a;->d:Ljava/util/concurrent/Executor;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 167
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lccc71/utils/android/a;-><init>(I)V

    .line 168
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    sget-object v0, Lccc71/utils/android/i;->a:Lccc71/utils/android/i;

    iput-object v0, p0, Lccc71/utils/android/a;->i:Lccc71/utils/android/i;

    .line 87
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lccc71/utils/android/a;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 172
    new-instance v0, Lccc71/utils/android/c;

    invoke-direct {v0, p0, p1}, Lccc71/utils/android/c;-><init>(Lccc71/utils/android/a;I)V

    iput-object v0, p0, Lccc71/utils/android/a;->g:Lccc71/utils/android/j;

    .line 183
    new-instance v0, Lccc71/utils/android/d;

    iget-object v1, p0, Lccc71/utils/android/a;->g:Lccc71/utils/android/j;

    invoke-direct {v0, p0, v1}, Lccc71/utils/android/d;-><init>(Lccc71/utils/android/a;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lccc71/utils/android/a;->h:Ljava/util/concurrent/FutureTask;

    .line 212
    return-void
.end method

.method static synthetic a(Lccc71/utils/android/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lccc71/utils/android/a;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic a(Lccc71/utils/android/a;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 581
    iget-object v0, p0, Lccc71/utils/android/a;->h:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lccc71/utils/android/a;->a(Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lccc71/utils/android/i;->c:Lccc71/utils/android/i;

    iput-object v0, p0, Lccc71/utils/android/a;->i:Lccc71/utils/android/i;

    return-void
.end method

.method static synthetic b(Lccc71/utils/android/a;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lccc71/utils/android/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 226
    sget-object v0, Lccc71/utils/android/a;->c:Lccc71/utils/android/f;

    new-instance v1, Lccc71/utils/android/e;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lccc71/utils/android/e;-><init>(Lccc71/utils/android/a;[Ljava/lang/Object;)V

    invoke-virtual {v0, v4, v1}, Lccc71/utils/android/f;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 228
    return-object p1
.end method

.method static synthetic c(Lccc71/utils/android/a;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 214
    iget-object v0, p0, Lccc71/utils/android/a;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lccc71/utils/android/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static synthetic d()[I
    .locals 3

    .prologue
    .line 42
    sget-object v0, Lccc71/utils/android/a;->k:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lccc71/utils/android/i;->values()[Lccc71/utils/android/i;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lccc71/utils/android/i;->c:Lccc71/utils/android/i;

    invoke-virtual {v1}, Lccc71/utils/android/i;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lccc71/utils/android/i;->a:Lccc71/utils/android/i;

    invoke-virtual {v1}, Lccc71/utils/android/i;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lccc71/utils/android/i;->b:Lccc71/utils/android/i;

    invoke-virtual {v1}, Lccc71/utils/android/i;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lccc71/utils/android/a;->k:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final varargs a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lccc71/utils/android/a;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 524
    iget-object v0, p0, Lccc71/utils/android/a;->i:Lccc71/utils/android/i;

    sget-object v1, Lccc71/utils/android/i;->a:Lccc71/utils/android/i;

    if-eq v0, v1, :cond_0

    .line 526
    invoke-static {}, Lccc71/utils/android/a;->d()[I

    move-result-object v0

    iget-object v1, p0, Lccc71/utils/android/a;->i:Lccc71/utils/android/i;

    invoke-virtual {v1}, Lccc71/utils/android/i;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 538
    :cond_0
    sget-object v0, Lccc71/utils/android/i;->b:Lccc71/utils/android/i;

    iput-object v0, p0, Lccc71/utils/android/a;->i:Lccc71/utils/android/i;

    .line 540
    invoke-virtual {p0}, Lccc71/utils/android/a;->a()V

    .line 542
    iget-object v0, p0, Lccc71/utils/android/a;->g:Lccc71/utils/android/j;

    iput-object p2, v0, Lccc71/utils/android/j;->b:[Ljava/lang/Object;

    .line 543
    iget-object v0, p0, Lccc71/utils/android/a;->h:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 545
    return-object p0

    .line 529
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 532
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 526
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected varargs abstract a([Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method protected a()V
    .locals 0

    .prologue
    .line 268
    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 290
    return-void
.end method

.method protected varargs b([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 304
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lccc71/utils/android/a;->h:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public final varargs c([Ljava/lang/Object;)Lccc71/utils/android/a;
    .locals 1
    .parameter

    .prologue
    .line 479
    sget-object v0, Lccc71/utils/android/a;->d:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lccc71/utils/android/a;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lccc71/utils/android/a;

    move-result-object v0

    return-object v0
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Lccc71/utils/android/a;->h:Ljava/util/concurrent/FutureTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method protected final varargs d([Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 574
    iget-object v0, p0, Lccc71/utils/android/a;->h:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 576
    sget-object v0, Lccc71/utils/android/a;->c:Lccc71/utils/android/f;

    const/4 v1, 0x2

    .line 577
    new-instance v2, Lccc71/utils/android/e;

    invoke-direct {v2, p0, p1}, Lccc71/utils/android/e;-><init>(Lccc71/utils/android/a;[Ljava/lang/Object;)V

    .line 576
    invoke-virtual {v0, v1, v2}, Lccc71/utils/android/f;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 577
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 579
    :cond_0
    return-void
.end method
