.class final Lccc71/pmw/lib/jj;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/ji;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/ji;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/jj;->a:Lccc71/pmw/lib/ji;

    .line 108
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 113
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 115
    invoke-static {}, Lccc71/pmw/lib/jg;->c()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 117
    :try_start_0
    invoke-static {}, Lccc71/pmw/lib/jg;->d()Lccc71/pmw/lib/jg;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 119
    invoke-static {}, Lccc71/pmw/lib/jg;->d()Lccc71/pmw/lib/jg;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/jg;->b(Lccc71/pmw/lib/jg;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_monitor;->a(Landroid/content/Context;)Lccc71/pmw/b/q;

    move-result-object v3

    .line 120
    invoke-virtual {v3}, Lccc71/pmw/b/q;->e()Ljava/util/Comparator;

    move-result-object v0

    check-cast v0, Lccc71/pmw/b/o;

    iget v0, v0, Lccc71/pmw/b/o;->c:I

    const/16 v4, 0x40

    if-ne v0, v4, :cond_3

    move v0, v1

    :goto_0
    const/4 v1, 0x1

    sget-boolean v4, Lccc71/pmw/lib/pmw_monitor;->b:Z

    invoke-virtual {v3, v0, v1, v4}, Lccc71/pmw/b/q;->a(ZZZ)V

    .line 122
    invoke-static {}, Lccc71/pmw/lib/jg;->d()Lccc71/pmw/lib/jg;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/jg;->a(Lccc71/pmw/lib/jg;)I

    move-result v0

    if-gtz v0, :cond_4

    .line 124
    sget-object v0, Lccc71/pmw/lib/pmw_monitor;->a:Lccc71/pmw/lib/pmw_monitor;

    if-eqz v0, :cond_1

    .line 126
    invoke-static {}, Lccc71/pmw/lib/jg;->c()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 128
    :try_start_1
    invoke-static {}, Lccc71/pmw/lib/jg;->d()Lccc71/pmw/lib/jg;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    invoke-static {}, Lccc71/pmw/lib/jg;->d()Lccc71/pmw/lib/jg;

    move-result-object v0

    sget-object v3, Lccc71/pmw/lib/jg;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Lccc71/pmw/lib/jg;->post(Ljava/lang/Runnable;)Z

    .line 126
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    :cond_1
    :try_start_2
    invoke-static {}, Lccc71/pmw/lib/jg;->d()Lccc71/pmw/lib/jg;

    move-result-object v0

    invoke-static {}, Lccc71/pmw/lib/jg;->d()Lccc71/pmw/lib/jg;

    move-result-object v1

    invoke-static {v1}, Lccc71/pmw/lib/jg;->c(Lccc71/pmw/lib/jg;)I

    move-result v1

    invoke-static {v0, v1}, Lccc71/pmw/lib/jg;->a(Lccc71/pmw/lib/jg;I)V

    .line 135
    invoke-static {}, Lccc71/pmw/lib/jg;->d()Lccc71/pmw/lib/jg;

    move-result-object v0

    sget-object v1, Lccc71/pmw/lib/jg;->b:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v1, v3, v4}, Lccc71/pmw/lib/jg;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 115
    :cond_2
    :goto_1
    monitor-exit v2

    return-void

    .line 120
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 115
    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    .line 139
    :cond_4
    :try_start_3
    invoke-static {}, Lccc71/pmw/lib/jg;->d()Lccc71/pmw/lib/jg;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Lccc71/pmw/lib/jg;->a(Lccc71/pmw/lib/jg;I)V

    .line 141
    invoke-static {}, Lccc71/pmw/lib/jg;->d()Lccc71/pmw/lib/jg;

    move-result-object v0

    sget-object v1, Lccc71/pmw/lib/jg;->b:Ljava/lang/Runnable;

    const-wide/16 v3, 0xfa

    invoke-virtual {v0, v1, v3, v4}, Lccc71/pmw/lib/jg;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1
.end method
