.class final Lccc71/utils/android/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field final a:Ljava/util/ArrayList;

.field b:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccc71/utils/android/g;->a:Ljava/util/ArrayList;

    .line 89
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 89
    invoke-direct {p0}, Lccc71/utils/android/g;-><init>()V

    return-void
.end method


# virtual methods
.method protected final declared-synchronized a()V
    .locals 2

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lccc71/utils/android/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lccc71/utils/android/g;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lccc71/utils/android/g;->b:Ljava/lang/Runnable;

    .line 122
    sget-object v0, Lccc71/utils/android/a;->e:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lccc71/utils/android/g;->b:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :goto_0
    monitor-exit p0

    return-void

    .line 125
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lccc71/utils/android/g;->b:Ljava/lang/Runnable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized execute(Ljava/lang/Runnable;)V
    .locals 2
    .parameter

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lccc71/utils/android/g;->a:Ljava/util/ArrayList;

    new-instance v1, Lccc71/utils/android/h;

    invoke-direct {v1, p0, p1}, Lccc71/utils/android/h;-><init>(Lccc71/utils/android/g;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v0, p0, Lccc71/utils/android/g;->b:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lccc71/utils/android/g;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :cond_0
    monitor-exit p0

    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
