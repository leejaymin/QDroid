.class final Lccc71/pmw/lib/qj;
.super Lccc71/utils/android/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_watcher;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_watcher;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/qj;->a:Lccc71/pmw/lib/pmw_watcher;

    iput-object p2, p0, Lccc71/pmw/lib/qj;->b:Landroid/content/Context;

    .line 109
    invoke-direct {p0}, Lccc71/utils/android/a;-><init>()V

    return-void
.end method

.method private varargs d()Ljava/lang/Void;
    .locals 5

    .prologue
    .line 114
    new-instance v0, Lccc71/pmw/a/ah;

    iget-object v1, p0, Lccc71/pmw/lib/qj;->b:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lccc71/pmw/a/ah;-><init>(Landroid/content/Context;Z)V

    .line 116
    invoke-static {}, Lccc71/pmw/lib/pmw_widget_scheduler;->b()V

    .line 117
    invoke-static {}, Lccc71/pmw/lib/pmw_notif_scheduler;->b()V

    .line 119
    invoke-static {}, Lccc71/pmw/lib/pmw_watcher;->b()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lccc71/pmw/lib/pmw_watcher;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 121
    :cond_0
    sget-object v1, Lccc71/pmw/lib/pmw_watcher;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 123
    :try_start_0
    sget-boolean v0, Lccc71/pmw/lib/pmw_watcher;->c:Z

    if-nez v0, :cond_2

    .line 125
    iget-object v0, p0, Lccc71/pmw/lib/qj;->b:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 127
    invoke-static {}, Lccc71/pmw/lib/pmw_watcher;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 129
    const-string v2, "process_monitor_widget"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Setting CPU governor to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lccc71/pmw/lib/pmw_watcher;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-static {}, Lccc71/pmw/lib/pmw_watcher;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lccc71/pmw/a/ah;->a(Ljava/lang/String;)V

    .line 132
    :cond_1
    invoke-static {}, Lccc71/pmw/lib/pmw_watcher;->b()I

    move-result v2

    if-eqz v2, :cond_2

    .line 134
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    .line 136
    const-string v0, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NO CALL - Setting CPU max frequency to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lccc71/pmw/lib/pmw_watcher;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-static {}, Lccc71/pmw/lib/pmw_watcher;->b()I

    move-result v0

    invoke-static {v0}, Lccc71/pmw/a/ah;->b(I)V

    .line 121
    :cond_2
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :cond_3
    invoke-static {}, Lccc71/pmw/lib/pmw_watcher;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 151
    iget-object v0, p0, Lccc71/pmw/lib/qj;->b:Landroid/content/Context;

    invoke-static {v0}, Lccc71/pmw/lib/at_auto_kill_service;->b(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 154
    :cond_4
    const/4 v0, 0x0

    return-object v0

    .line 141
    :cond_5
    :try_start_1
    const-string v0, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IN CALL - Setting CPU max frequency to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lccc71/pmw/lib/pmw_watcher;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-static {}, Lccc71/pmw/lib/pmw_watcher;->d()I

    move-result v0

    invoke-static {v0}, Lccc71/pmw/a/ah;->b(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-direct {p0}, Lccc71/pmw/lib/qj;->d()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
