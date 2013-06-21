.class final Lccc71/pmw/lib/pl;
.super Lccc71/utils/android/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_user_present_service;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_user_present_service;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/pl;->a:Lccc71/pmw/lib/pmw_user_present_service;

    iput-object p2, p0, Lccc71/pmw/lib/pl;->b:Landroid/content/Context;

    .line 92
    invoke-direct {p0}, Lccc71/utils/android/a;-><init>()V

    return-void
.end method

.method private varargs d()Ljava/lang/Void;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 97
    iget-object v0, p0, Lccc71/pmw/lib/pl;->b:Landroid/content/Context;

    invoke-static {v0, v8}, Lccc71/pmw/lib/pmw_user_present_service;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lccc71/pmw/lib/pl;->b:Landroid/content/Context;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_user_present_service;->b(Landroid/content/Context;)V

    .line 151
    :goto_0
    return-object v9

    .line 103
    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/pl;->b:Landroid/content/Context;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_service;->a(Landroid/content/Context;)Z

    move-result v0

    .line 104
    new-instance v1, Lccc71/pmw/a/ah;

    iget-object v2, p0, Lccc71/pmw/lib/pl;->b:Landroid/content/Context;

    invoke-direct {v1, v2, v7}, Lccc71/pmw/a/ah;-><init>(Landroid/content/Context;Z)V

    .line 106
    if-nez v0, :cond_5

    .line 108
    iget-object v0, p0, Lccc71/pmw/lib/pl;->b:Landroid/content/Context;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_settings;->I(Landroid/content/Context;)I

    move-result v0

    .line 109
    iget-object v2, p0, Lccc71/pmw/lib/pl;->b:Landroid/content/Context;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_settings;->J(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 110
    if-nez v0, :cond_1

    if-eqz v2, :cond_3

    .line 112
    :cond_1
    sget-object v3, Lccc71/pmw/lib/pmw_watcher;->b:Ljava/lang/Object;

    monitor-enter v3

    .line 114
    :try_start_0
    sget-boolean v4, Lccc71/pmw/lib/pmw_watcher;->c:Z

    if-eqz v4, :cond_2

    .line 116
    if-eqz v2, :cond_6

    .line 118
    const-string v4, "process_monitor_widget"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Setting CPU governor back to "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-static {v2}, Lccc71/pmw/a/ah;->a(Ljava/lang/String;)V

    .line 125
    :goto_1
    if-eqz v0, :cond_7

    .line 127
    const-string v4, "process_monitor_widget"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Settings CPU max frequency back to "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-static {v0}, Lccc71/pmw/a/ah;->b(I)V

    .line 112
    :cond_2
    :goto_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    invoke-static {v2}, Lccc71/pmw/lib/pmw_cpu;->a(Ljava/lang/String;)V

    .line 140
    :cond_3
    iget-object v0, p0, Lccc71/pmw/lib/pl;->b:Landroid/content/Context;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_settings;->O(Landroid/content/Context;)I

    move-result v0

    .line 141
    if-ne v0, v8, :cond_4

    .line 143
    invoke-virtual {v1, v7}, Lccc71/pmw/a/ah;->b(Z)V

    .line 146
    :cond_4
    const-string v0, "process_monitor_widget"

    const-string v1, "Service not running - restarting..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lccc71/pmw/lib/pl;->b:Landroid/content/Context;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_service;->b(Landroid/content/Context;)V

    .line 150
    :cond_5
    iget-object v0, p0, Lccc71/pmw/lib/pl;->b:Landroid/content/Context;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_user_present_service;->b(Landroid/content/Context;)V

    goto :goto_0

    .line 123
    :cond_6
    :try_start_1
    const-string v4, "process_monitor_widget"

    const-string v5, "Cannot set CPU governor"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 132
    :cond_7
    :try_start_2
    const-string v0, "process_monitor_widget"

    const-string v4, "Cannot set CPU max frequency"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-direct {p0}, Lccc71/pmw/lib/pl;->d()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
