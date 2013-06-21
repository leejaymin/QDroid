.class final Lccc71/pmw/lib/qk;
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
    iput-object p1, p0, Lccc71/pmw/lib/qk;->a:Lccc71/pmw/lib/pmw_watcher;

    iput-object p2, p0, Lccc71/pmw/lib/qk;->b:Landroid/content/Context;

    .line 161
    invoke-direct {p0}, Lccc71/utils/android/a;-><init>()V

    return-void
.end method

.method private varargs d()Ljava/lang/Void;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 166
    new-instance v2, Lccc71/pmw/a/ah;

    iget-object v0, p0, Lccc71/pmw/lib/qk;->b:Landroid/content/Context;

    invoke-direct {v2, v0, v3}, Lccc71/pmw/a/ah;-><init>(Landroid/content/Context;Z)V

    .line 168
    invoke-static {}, Lccc71/pmw/lib/pmw_watcher;->b()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lccc71/pmw/lib/pmw_watcher;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 170
    :cond_0
    sget-object v3, Lccc71/pmw/lib/pmw_watcher;->b:Ljava/lang/Object;

    monitor-enter v3

    .line 172
    :try_start_0
    sget-boolean v0, Lccc71/pmw/lib/pmw_watcher;->c:Z

    if-eqz v0, :cond_3

    .line 175
    invoke-static {}, Lccc71/pmw/lib/pmw_watcher;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 177
    iget-object v0, p0, Lccc71/pmw/lib/qk;->b:Landroid/content/Context;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_settings;->J(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_1

    .line 180
    const-string v4, "process_monitor_widget"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Setting CPU governor back to "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-static {v0}, Lccc71/pmw/a/ah;->a(Ljava/lang/String;)V

    .line 185
    :cond_1
    :goto_0
    iget-object v4, p0, Lccc71/pmw/lib/qk;->b:Landroid/content/Context;

    invoke-static {v4}, Lccc71/pmw/lib/pmw_settings;->I(Landroid/content/Context;)I

    move-result v4

    .line 186
    if-eqz v4, :cond_6

    .line 188
    const-string v5, "process_monitor_widget"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Settings CPU max frequency back to "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-static {v4}, Lccc71/pmw/a/ah;->b(I)V

    .line 196
    :goto_1
    iget-object v4, p0, Lccc71/pmw/lib/qk;->b:Landroid/content/Context;

    invoke-static {v4}, Lccc71/pmw/lib/pmw_settings;->O(Landroid/content/Context;)I

    move-result v4

    .line 197
    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 199
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lccc71/pmw/a/ah;->b(Z)V

    .line 202
    :cond_2
    invoke-static {v0}, Lccc71/pmw/lib/pmw_cpu;->a(Ljava/lang/String;)V

    .line 170
    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    :cond_4
    invoke-static {}, Lccc71/pmw/lib/pmw_watcher;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 209
    iget-object v0, p0, Lccc71/pmw/lib/qk;->b:Landroid/content/Context;

    invoke-static {v0}, Lccc71/pmw/lib/at_auto_kill_service;->b(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 212
    :cond_5
    iget-object v0, p0, Lccc71/pmw/lib/qk;->b:Landroid/content/Context;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_widget_scheduler;->a(Landroid/content/Context;)V

    .line 213
    iget-object v0, p0, Lccc71/pmw/lib/qk;->b:Landroid/content/Context;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_notif_scheduler;->a(Landroid/content/Context;)V

    .line 215
    return-object v1

    .line 193
    :cond_6
    :try_start_1
    const-string v4, "process_monitor_widget"

    const-string v5, "Cannot set CPU max frequency"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_7
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-direct {p0}, Lccc71/pmw/lib/qk;->d()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
