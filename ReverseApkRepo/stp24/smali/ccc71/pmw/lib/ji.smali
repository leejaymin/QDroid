.class final Lccc71/pmw/lib/ji;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 90
    invoke-static {}, Lccc71/pmw/lib/jg;->c()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 92
    :try_start_0
    sget-object v0, Lccc71/pmw/lib/pmw_monitor;->a:Lccc71/pmw/lib/pmw_monitor;

    if-nez v0, :cond_0

    .line 96
    invoke-static {}, Lccc71/pmw/lib/jg;->b()V

    .line 97
    monitor-exit v1

    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-static {}, Lccc71/pmw/lib/jg;->d()Lccc71/pmw/lib/jg;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 102
    sget-object v0, Lccc71/pmw/lib/pmw_monitor;->a:Lccc71/pmw/lib/pmw_monitor;

    if-eqz v0, :cond_1

    .line 103
    sget-object v0, Lccc71/pmw/lib/pmw_monitor;->a:Lccc71/pmw/lib/pmw_monitor;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_monitor;->g()V

    .line 105
    :cond_1
    invoke-static {}, Lccc71/pmw/lib/jg;->d()Lccc71/pmw/lib/jg;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/jg;->a(Lccc71/pmw/lib/jg;)I

    move-result v2

    add-int/lit16 v2, v2, -0x3e8

    invoke-static {v0, v2}, Lccc71/pmw/lib/jg;->a(Lccc71/pmw/lib/jg;I)V

    .line 106
    invoke-static {}, Lccc71/pmw/lib/jg;->d()Lccc71/pmw/lib/jg;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/jg;->a(Lccc71/pmw/lib/jg;)I

    move-result v0

    const/16 v2, 0x1f4

    if-gt v0, v2, :cond_3

    .line 108
    new-instance v0, Lccc71/pmw/lib/jj;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/jj;-><init>(Lccc71/pmw/lib/ji;)V

    .line 147
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 148
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 90
    :cond_2
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 151
    :cond_3
    :try_start_1
    invoke-static {}, Lccc71/pmw/lib/jg;->d()Lccc71/pmw/lib/jg;

    move-result-object v0

    sget-object v2, Lccc71/pmw/lib/jg;->b:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Lccc71/pmw/lib/jg;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
