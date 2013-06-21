.class public Lccc71/pmw/lib/pmw_watcher;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field static a:Ljava/lang/Object;

.field static b:Ljava/lang/Object;

.field public static c:Z

.field private static d:Lccc71/pmw/lib/pmw_watcher;

.field private static e:I

.field private static f:I

.field private static g:Ljava/lang/String;

.field private static h:Z

.field private static i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lccc71/pmw/lib/pmw_watcher;->a:Ljava/lang/Object;

    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lccc71/pmw/lib/pmw_watcher;->b:Ljava/lang/Object;

    .line 17
    sput-object v2, Lccc71/pmw/lib/pmw_watcher;->d:Lccc71/pmw/lib/pmw_watcher;

    .line 19
    const/4 v0, 0x1

    sput-boolean v0, Lccc71/pmw/lib/pmw_watcher;->c:Z

    .line 21
    sput v1, Lccc71/pmw/lib/pmw_watcher;->e:I

    .line 22
    sput v1, Lccc71/pmw/lib/pmw_watcher;->f:I

    .line 23
    sput-object v2, Lccc71/pmw/lib/pmw_watcher;->g:Ljava/lang/String;

    .line 24
    sput-boolean v1, Lccc71/pmw/lib/pmw_watcher;->h:Z

    .line 25
    sput-boolean v1, Lccc71/pmw/lib/pmw_watcher;->i:Z

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 34
    invoke-static {p0}, Lccc71/pmw/lib/pmw_watcher;->c(Landroid/content/Context;)V

    .line 36
    invoke-static {p0}, Lccc71/pmw/lib/pmw_widget;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lccc71/pmw/lib/pmw_notif_scheduler;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    sget v0, Lccc71/pmw/lib/pmw_watcher;->e:I

    if-nez v0, :cond_0

    sget-boolean v0, Lccc71/pmw/lib/pmw_watcher;->h:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lccc71/pmw/lib/pmw_watcher;->i:Z

    if-nez v0, :cond_0

    sget-object v0, Lccc71/pmw/lib/pmw_watcher;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 40
    :goto_0
    return-void

    :cond_0
    sget-object v1, Lccc71/pmw/lib/pmw_watcher;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 42
    :try_start_0
    sget-object v0, Lccc71/pmw/lib/pmw_watcher;->d:Lccc71/pmw/lib/pmw_watcher;

    if-nez v0, :cond_1

    .line 44
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 45
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 47
    new-instance v3, Lccc71/pmw/lib/pmw_watcher;

    invoke-direct {v3}, Lccc71/pmw/lib/pmw_watcher;-><init>()V

    sput-object v3, Lccc71/pmw/lib/pmw_watcher;->d:Lccc71/pmw/lib/pmw_watcher;

    .line 49
    sget-object v3, Lccc71/pmw/lib/pmw_watcher;->d:Lccc71/pmw/lib/pmw_watcher;

    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 50
    sget-object v0, Lccc71/pmw/lib/pmw_watcher;->d:Lccc71/pmw/lib/pmw_watcher;

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 52
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v0

    .line 53
    invoke-virtual {v0, p0}, Lccc71/utils/android/y;->d(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lccc71/pmw/lib/pmw_watcher;->c:Z

    .line 55
    const-string v0, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Registered pmw_watcher (screen "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lccc71/pmw/lib/pmw_watcher;->c:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 57
    :cond_1
    :try_start_1
    const-string v0, "process_monitor_widget"

    .line 58
    const-string v2, "pmw_watcher already registered, not registering again"

    .line 57
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lccc71/pmw/lib/pmw_watcher;->d:Lccc71/pmw/lib/pmw_watcher;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b()I
    .locals 1

    .prologue
    .line 21
    sget v0, Lccc71/pmw/lib/pmw_watcher;->e:I

    return v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 65
    sget-object v1, Lccc71/pmw/lib/pmw_watcher;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 67
    :try_start_0
    sget-object v0, Lccc71/pmw/lib/pmw_watcher;->d:Lccc71/pmw/lib/pmw_watcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 71
    :try_start_1
    sget-object v0, Lccc71/pmw/lib/pmw_watcher;->d:Lccc71/pmw/lib/pmw_watcher;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 72
    const/4 v0, 0x0

    sput-object v0, Lccc71/pmw/lib/pmw_watcher;->d:Lccc71/pmw/lib/pmw_watcher;

    .line 73
    const-string v0, "process_monitor_widget"

    const-string v2, "UNregistered pmw_watcher"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 65
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 77
    const-string v2, "process_monitor_widget"

    const-string v3, "Could not unregister pmw_watcher"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lccc71/pmw/lib/pmw_watcher;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 85
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->A(Landroid/content/Context;)I

    move-result v0

    sput v0, Lccc71/pmw/lib/pmw_watcher;->e:I

    .line 86
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 87
    sput-object v0, Lccc71/pmw/lib/pmw_watcher;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lccc71/pmw/lib/pmw_watcher;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 88
    const/4 v0, 0x0

    sput-object v0, Lccc71/pmw/lib/pmw_watcher;->g:Ljava/lang/String;

    .line 89
    :cond_0
    sget v0, Lccc71/pmw/lib/pmw_watcher;->e:I

    if-eqz v0, :cond_1

    .line 91
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->z(Landroid/content/Context;)I

    move-result v0

    .line 92
    sput v0, Lccc71/pmw/lib/pmw_watcher;->f:I

    if-nez v0, :cond_1

    .line 93
    sget v0, Lccc71/pmw/lib/pmw_watcher;->e:I

    sput v0, Lccc71/pmw/lib/pmw_watcher;->f:I

    .line 95
    :cond_1
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->Y(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lccc71/pmw/lib/pmw_watcher;->h:Z

    .line 96
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->Z(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lccc71/pmw/lib/pmw_watcher;->i:Z

    .line 97
    return-void
.end method

.method static synthetic d()I
    .locals 1

    .prologue
    .line 22
    sget v0, Lccc71/pmw/lib/pmw_watcher;->f:I

    return v0
.end method

.method static synthetic e()Z
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Lccc71/pmw/lib/pmw_watcher;->h:Z

    return v0
.end method

.method static synthetic f()Z
    .locals 1

    .prologue
    .line 25
    sget-boolean v0, Lccc71/pmw/lib/pmw_watcher;->i:Z

    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 102
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 105
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 107
    sput-boolean v2, Lccc71/pmw/lib/pmw_watcher;->c:Z

    .line 109
    new-instance v0, Lccc71/pmw/lib/qj;

    invoke-direct {v0, p0, p1}, Lccc71/pmw/lib/qj;-><init>(Lccc71/pmw/lib/pmw_watcher;Landroid/content/Context;)V

    new-array v1, v2, [Ljava/lang/Void;

    .line 156
    invoke-virtual {v0, v1}, Lccc71/pmw/lib/qj;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    .line 220
    :cond_0
    :goto_0
    invoke-static {p1}, Lccc71/pmw/lib/pmw_service;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 222
    const-string v0, "process_monitor_widget"

    const-string v1, "Service not running - restarting..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-static {p1}, Lccc71/pmw/lib/pmw_service;->b(Landroid/content/Context;)V

    .line 225
    :cond_1
    return-void

    .line 158
    :cond_2
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    const/4 v0, 0x1

    sput-boolean v0, Lccc71/pmw/lib/pmw_watcher;->c:Z

    .line 161
    new-instance v0, Lccc71/pmw/lib/qk;

    invoke-direct {v0, p0, p1}, Lccc71/pmw/lib/qk;-><init>(Lccc71/pmw/lib/pmw_watcher;Landroid/content/Context;)V

    new-array v1, v2, [Ljava/lang/Void;

    .line 217
    invoke-virtual {v0, v1}, Lccc71/pmw/lib/qk;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    goto :goto_0
.end method
