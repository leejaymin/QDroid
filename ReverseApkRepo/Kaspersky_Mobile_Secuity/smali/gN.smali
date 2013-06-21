.class public final LgN;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[LgQ;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-array v0, v3, [LgQ;

    iput-object v0, p0, LgN;->a:[LgQ;

    .line 29
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 30
    iget-object v1, p0, LgN;->a:[LgQ;

    new-instance v2, LgQ;

    invoke-direct {v2, p0}, LgQ;-><init>(LgN;)V

    aput-object v2, v1, v0

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method static synthetic a(LgN;)[LgQ;
    .locals 1
    .parameter

    .prologue
    .line 11
    iget-object v0, p0, LgN;->a:[LgQ;

    return-object v0
.end method

.method private b(ILgM;ILjava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, LgN;->a:[LgQ;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    iput-boolean v1, v0, LgQ;->b:Z

    .line 108
    iget-object v0, p0, LgN;->a:[LgQ;

    aget-object v0, v0, p1

    iput-object p2, v0, LgQ;->a:LgM;

    .line 109
    iget-object v0, p0, LgN;->a:[LgQ;

    aget-object v0, v0, p1

    iput p3, v0, LgQ;->c:I

    .line 110
    iget-object v0, p0, LgN;->a:[LgQ;

    aget-object v0, v0, p1

    iput-object p4, v0, LgQ;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 111
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(ILgM;ILjava/util/concurrent/atomic/AtomicBoolean;)LgP;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 56
    monitor-enter p0

    :try_start_0
    new-instance v0, LgP;

    invoke-direct {v0, p0}, LgP;-><init>(LgN;)V

    .line 57
    iget-object v1, p0, LgN;->a:[LgQ;

    aget-object v1, v1, p1

    iget-boolean v1, v1, LgQ;->b:Z

    if-eqz v1, :cond_1

    .line 58
    const/4 v1, -0x2

    iput v1, v0, LgP;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 62
    :cond_1
    :try_start_1
    invoke-interface {p2}, LgM;->a()I

    move-result v1

    .line 64
    if-ne v1, v2, :cond_0

    .line 66
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1, p4}, LgN;->b(ILgM;ILjava/util/concurrent/atomic/AtomicBoolean;)V

    .line 67
    new-instance v1, LgO;

    invoke-direct {v1, p0, p1}, LgO;-><init>(LgN;I)V

    iput-object v1, v0, LgP;->b:Ljava/lang/Thread;

    .line 68
    iget-object v1, v0, LgP;->b:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 69
    const/4 v1, 0x0

    iput v1, v0, LgP;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(I)Z
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, LgN;->a:[LgQ;

    aget-object v0, v0, p1

    iget-boolean v0, v0, LgQ;->b:Z

    return v0
.end method

.method public final a(ILandroid/os/Handler;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 87
    const/4 v0, 0x0

    .line 88
    iget-object v1, p0, LgN;->a:[LgQ;

    aget-object v1, v1, v2

    iget-object v1, v1, LgQ;->a:LgM;

    if-eqz v1, :cond_0

    .line 89
    iget-object v0, p0, LgN;->a:[LgQ;

    aget-object v0, v0, v2

    iget-object v0, v0, LgQ;->a:LgM;

    invoke-interface {v0, p2}, LgM;->a(Landroid/os/Handler;)Z

    move-result v0

    .line 90
    iget-object v1, p0, LgN;->a:[LgQ;

    aget-object v1, v1, v2

    iget-object v1, v1, LgQ;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, LgN;->a:[LgQ;

    aget-object v1, v1, v2

    iget-object v1, v1, LgQ;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 92
    :try_start_0
    iget-object v2, p0, LgN;->a:[LgQ;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, LgQ;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 93
    iget-object v2, p0, LgN;->a:[LgQ;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, LgQ;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 94
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :cond_0
    return v0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(ILandroid/os/Handler;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 101
    iget-object v0, p0, LgN;->a:[LgQ;

    aget-object v0, v0, v1

    iget-object v0, v0, LgQ;->a:LgM;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, LgN;->a:[LgQ;

    aget-object v0, v0, v1

    iget-object v0, v0, LgQ;->a:LgM;

    invoke-interface {v0, p2}, LgM;->b(Landroid/os/Handler;)V

    .line 104
    :cond_0
    return-void
.end method

.method public final b(I)Z
    .locals 2
    .parameter

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 81
    iget-object v1, p0, LgN;->a:[LgQ;

    aget-object v1, v1, p1

    iget-boolean v1, v1, LgQ;->b:Z

    if-eqz v1, :cond_0

    .line 82
    iget-object v0, p0, LgN;->a:[LgQ;

    aget-object v0, v0, p1

    iget-object v0, v0, LgQ;->a:LgM;

    invoke-interface {v0}, LgM;->d()Z

    move-result v0

    .line 84
    :cond_0
    return v0
.end method

.method public final declared-synchronized c(I)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 114
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, LgN;->a:[LgQ;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-boolean v1, v1, LgQ;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 115
    const/4 v0, 0x0

    .line 119
    :goto_0
    monitor-exit p0

    return v0

    .line 118
    :cond_0
    :try_start_1
    iget-object v1, p0, LgN;->a:[LgQ;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, LgQ;->a:LgM;

    invoke-interface {v1}, LgM;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
