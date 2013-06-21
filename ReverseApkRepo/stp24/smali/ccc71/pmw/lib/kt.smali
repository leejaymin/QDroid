.class final Lccc71/pmw/lib/kt;
.super Lccc71/utils/android/a;
.source "SourceFile"


# instance fields
.field a:Z

.field final synthetic b:Lccc71/pmw/lib/pmw_recorder;

.field private final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_recorder;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/kt;->b:Lccc71/pmw/lib/pmw_recorder;

    iput-object p2, p0, Lccc71/pmw/lib/kt;->c:Landroid/content/Context;

    .line 423
    invoke-direct {p0}, Lccc71/utils/android/a;-><init>()V

    .line 425
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccc71/pmw/lib/kt;->a:Z

    return-void
.end method

.method private varargs d()Ljava/lang/Void;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 430
    invoke-static {}, Lccc71/pmw/lib/pmw_recorder;->l()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 432
    :try_start_0
    invoke-static {}, Lccc71/pmw/lib/pmw_recorder;->m()Lccc71/pmw/lib/pmw_recorder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 434
    const-string v0, "process_monitor_widget"

    const-string v2, "Taking snapshot..."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-static {}, Lccc71/pmw/lib/pmw_recorder;->m()Lccc71/pmw/lib/pmw_recorder;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_recorder;->e(Lccc71/pmw/lib/pmw_recorder;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 437
    invoke-static {}, Lccc71/pmw/lib/pmw_recorder;->m()Lccc71/pmw/lib/pmw_recorder;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_recorder;->f(Lccc71/pmw/lib/pmw_recorder;)Lccc71/pmw/b/q;

    move-result-object v0

    invoke-static {}, Lccc71/pmw/lib/pmw_recorder;->m()Lccc71/pmw/lib/pmw_recorder;

    move-result-object v2

    invoke-static {v2}, Lccc71/pmw/lib/pmw_recorder;->g(Lccc71/pmw/lib/pmw_recorder;)Z

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lccc71/pmw/b/q;->a(ZZ)V

    .line 441
    :goto_0
    invoke-static {}, Lccc71/pmw/lib/pmw_recorder;->m()Lccc71/pmw/lib/pmw_recorder;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_recorder;->f(Lccc71/pmw/lib/pmw_recorder;)Lccc71/pmw/b/q;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_recorder;->a(Lccc71/pmw/b/q;)V

    .line 443
    const-string v0, "process_monitor_widget"

    const-string v2, "Snapshot completed..."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-static {}, Lccc71/pmw/lib/pmw_recorder;->m()Lccc71/pmw/lib/pmw_recorder;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_recorder;->c(Lccc71/pmw/lib/pmw_recorder;)I

    move-result v0

    if-gtz v0, :cond_3

    .line 447
    iget-object v0, p0, Lccc71/pmw/lib/kt;->c:Landroid/content/Context;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_settings;->N(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 449
    const-string v0, "process_monitor_widget"

    const-string v2, "Finished recording, restarting"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-static {}, Lccc71/pmw/lib/pmw_recorder;->m()Lccc71/pmw/lib/pmw_recorder;

    move-result-object v0

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_recorder;->c()V

    .line 430
    :cond_0
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    new-array v0, v5, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/kt;->d([Ljava/lang/Object;)V

    .line 469
    const/4 v0, 0x0

    return-object v0

    .line 439
    :cond_1
    :try_start_1
    invoke-static {}, Lccc71/pmw/lib/pmw_recorder;->m()Lccc71/pmw/lib/pmw_recorder;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_recorder;->f(Lccc71/pmw/lib/pmw_recorder;)Lccc71/pmw/b/q;

    move-result-object v0

    invoke-static {}, Lccc71/pmw/lib/pmw_recorder;->m()Lccc71/pmw/lib/pmw_recorder;

    move-result-object v2

    invoke-static {v2}, Lccc71/pmw/lib/pmw_recorder;->g(Lccc71/pmw/lib/pmw_recorder;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lccc71/pmw/b/q;->a(ZZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 430
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 454
    :cond_2
    :try_start_2
    const-string v0, "process_monitor_widget"

    const-string v2, "Finished recording"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-static {}, Lccc71/pmw/lib/pmw_recorder;->d()V

    .line 457
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccc71/pmw/lib/kt;->a:Z

    goto :goto_1

    .line 462
    :cond_3
    invoke-static {}, Lccc71/pmw/lib/pmw_recorder;->m()Lccc71/pmw/lib/pmw_recorder;

    move-result-object v0

    iget-object v2, p0, Lccc71/pmw/lib/kt;->c:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lccc71/pmw/lib/pmw_recorder;->a(Landroid/content/Context;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-direct {p0}, Lccc71/pmw/lib/kt;->d()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final varargs synthetic b([Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    sget-boolean v0, Lccc71/pmw/lib/pmw_watcher;->c:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lccc71/pmw/lib/pmw_monitor;->e()V

    invoke-static {}, Lccc71/pmw/lib/pmw_process;->f()V

    :cond_0
    iget-boolean v0, p0, Lccc71/pmw/lib/kt;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccc71/pmw/lib/kt;->c:Landroid/content/Context;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_recorder_service;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lccc71/pmw/lib/kt;->b:Lccc71/pmw/lib/pmw_recorder;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_recorder;->a(Lccc71/pmw/lib/pmw_recorder;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_notif_scheduler;->d(Landroid/content/Context;)V

    iget-object v0, p0, Lccc71/pmw/lib/kt;->b:Lccc71/pmw/lib/pmw_recorder;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_recorder;->a(Lccc71/pmw/lib/pmw_recorder;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_widget;->c(Landroid/content/Context;)V

    :cond_1
    invoke-super {p0, p1}, Lccc71/utils/android/a;->b([Ljava/lang/Object;)V

    return-void
.end method
