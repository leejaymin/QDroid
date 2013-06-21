.class public final LbP;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private a:LbL;

.field private b:LbH;

.field private c:Z

.field private d:Z


# direct methods
.method constructor <init>(LbH;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 11
    iput-object v0, p0, LbP;->a:LbL;

    .line 12
    iput-object v0, p0, LbP;->b:LbH;

    .line 13
    iput-boolean v1, p0, LbP;->c:Z

    .line 14
    iput-boolean v1, p0, LbP;->d:Z

    .line 18
    iput-object p1, p0, LbP;->b:LbH;

    .line 19
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-static {v0, v1}, LbL;->a(Landroid/content/Context;Z)LbL;

    move-result-object v0

    iput-object v0, p0, LbP;->a:LbL;

    .line 20
    iput-boolean p2, p0, LbP;->d:Z

    .line 21
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    .prologue
    .line 25
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    monitor-exit p0

    return-void

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final run()V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, LbP;->a:LbL;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, LbL;->a(I)Z

    move-result v0

    iput-boolean v0, p0, LbP;->c:Z

    .line 42
    :try_start_0
    iget-boolean v0, p0, LbP;->c:Z

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, LbP;->a:LbL;

    invoke-virtual {v0}, LbL;->i()V

    .line 44
    iget-object v0, p0, LbP;->a:LbL;

    invoke-virtual {v0}, LbL;->g()V

    .line 50
    :cond_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    const-wide/32 v0, 0x493e0

    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 52
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    :try_start_2
    iget-boolean v0, p0, LbP;->d:Z

    if-nez v0, :cond_1

    .line 62
    iget-object v0, p0, LbP;->b:LbH;

    invoke-virtual {v0}, LbH;->a()Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 71
    :cond_1
    :goto_0
    iget-boolean v0, p0, LbP;->c:Z

    if-eqz v0, :cond_2

    .line 72
    iget-object v0, p0, LbP;->a:LbL;

    invoke-virtual {v0}, LbL;->h()V

    .line 73
    iget-object v0, p0, LbP;->a:LbL;

    invoke-virtual {v0}, LbL;->j()V

    .line 79
    :cond_2
    iget-object v0, p0, LbP;->b:LbH;

    invoke-virtual {v0}, LbH;->c()V

    .line 83
    return-void

    .line 52
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0

    throw v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
