.class public Lccc71/pmw/lib/pmw_widget_scheduler;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/Object;

.field private static b:Lccc71/pmw/lib/pmw_widget_scheduler;


# instance fields
.field private c:Landroid/app/AlarmManager;

.field private d:Landroid/app/PendingIntent;

.field private e:Z

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lccc71/pmw/lib/pmw_widget_scheduler;->a:Ljava/lang/Object;

    .line 76
    const/4 v0, 0x0

    sput-object v0, Lccc71/pmw/lib/pmw_widget_scheduler;->b:Lccc71/pmw/lib/pmw_widget_scheduler;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 78
    iput-object v1, p0, Lccc71/pmw/lib/pmw_widget_scheduler;->c:Landroid/app/AlarmManager;

    .line 79
    iput-object v1, p0, Lccc71/pmw/lib/pmw_widget_scheduler;->d:Landroid/app/PendingIntent;

    .line 80
    iput-boolean v0, p0, Lccc71/pmw/lib/pmw_widget_scheduler;->e:Z

    .line 81
    iput v0, p0, Lccc71/pmw/lib/pmw_widget_scheduler;->f:I

    .line 12
    return-void
.end method

.method static a(Landroid/content/Context;)V
    .locals 8
    .parameter

    .prologue
    .line 23
    invoke-static {p0}, Lccc71/pmw/lib/pmw_widget;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    :goto_0
    return-void

    :cond_0
    sget-object v7, Lccc71/pmw/lib/pmw_widget_scheduler;->a:Ljava/lang/Object;

    monitor-enter v7

    .line 28
    :try_start_0
    sget-object v0, Lccc71/pmw/lib/pmw_widget_scheduler;->b:Lccc71/pmw/lib/pmw_widget_scheduler;

    if-nez v0, :cond_1

    .line 30
    const-string v0, "process_monitor_widget"

    const-string v1, "Registering pmw_widget_scheduler"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    new-instance v0, Lccc71/pmw/lib/pmw_widget_scheduler;

    invoke-direct {v0}, Lccc71/pmw/lib/pmw_widget_scheduler;-><init>()V

    sput-object v0, Lccc71/pmw/lib/pmw_widget_scheduler;->b:Lccc71/pmw/lib/pmw_widget_scheduler;

    .line 33
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lccc71/pmw/lib/pmw_widget_scheduler;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    sget-object v1, Lccc71/pmw/lib/pmw_widget_scheduler;->b:Lccc71/pmw/lib/pmw_widget_scheduler;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Lccc71/pmw/lib/pmw_widget_scheduler;->d:Landroid/app/PendingIntent;

    .line 35
    sget-object v1, Lccc71/pmw/lib/pmw_widget_scheduler;->b:Lccc71/pmw/lib/pmw_widget_scheduler;

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, v1, Lccc71/pmw/lib/pmw_widget_scheduler;->c:Landroid/app/AlarmManager;

    .line 37
    sget-object v0, Lccc71/pmw/lib/pmw_widget_scheduler;->b:Lccc71/pmw/lib/pmw_widget_scheduler;

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->W(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lccc71/pmw/lib/pmw_widget_scheduler;->e:Z

    .line 38
    sget-object v0, Lccc71/pmw/lib/pmw_widget_scheduler;->b:Lccc71/pmw/lib/pmw_widget_scheduler;

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->w(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lccc71/pmw/lib/pmw_widget_scheduler;->f:I

    .line 39
    const-string v0, "process_monitor_widget"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Scheduling precisely every "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lccc71/pmw/lib/pmw_widget_scheduler;->b:Lccc71/pmw/lib/pmw_widget_scheduler;

    iget v2, v2, Lccc71/pmw/lib/pmw_widget_scheduler;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    sget-object v0, Lccc71/pmw/lib/pmw_widget_scheduler;->b:Lccc71/pmw/lib/pmw_widget_scheduler;

    iget v1, v0, Lccc71/pmw/lib/pmw_widget_scheduler;->f:I

    mul-int/lit16 v1, v1, 0x3e8

    iput v1, v0, Lccc71/pmw/lib/pmw_widget_scheduler;->f:I

    .line 41
    sget-object v0, Lccc71/pmw/lib/pmw_widget_scheduler;->b:Lccc71/pmw/lib/pmw_widget_scheduler;

    iget-object v0, v0, Lccc71/pmw/lib/pmw_widget_scheduler;->c:Landroid/app/AlarmManager;

    const/4 v1, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-object v4, Lccc71/pmw/lib/pmw_widget_scheduler;->b:Lccc71/pmw/lib/pmw_widget_scheduler;

    iget v4, v4, Lccc71/pmw/lib/pmw_widget_scheduler;->f:I

    int-to-long v4, v4

    sget-object v6, Lccc71/pmw/lib/pmw_widget_scheduler;->b:Lccc71/pmw/lib/pmw_widget_scheduler;

    iget-object v6, v6, Lccc71/pmw/lib/pmw_widget_scheduler;->d:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 26
    :cond_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method static a()Z
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lccc71/pmw/lib/pmw_widget_scheduler;->b:Lccc71/pmw/lib/pmw_widget_scheduler;

    if-eqz v0, :cond_0

    .line 17
    const/4 v0, 0x1

    .line 18
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_widget_scheduler;)Z
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-boolean v0, p0, Lccc71/pmw/lib/pmw_widget_scheduler;->e:Z

    return v0
.end method

.method static b()V
    .locals 3

    .prologue
    .line 48
    sget-object v1, Lccc71/pmw/lib/pmw_widget_scheduler;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 50
    :try_start_0
    sget-object v0, Lccc71/pmw/lib/pmw_widget_scheduler;->b:Lccc71/pmw/lib/pmw_widget_scheduler;

    if-eqz v0, :cond_0

    .line 52
    sget-object v0, Lccc71/pmw/lib/pmw_widget_scheduler;->b:Lccc71/pmw/lib/pmw_widget_scheduler;

    iget-object v0, v0, Lccc71/pmw/lib/pmw_widget_scheduler;->c:Landroid/app/AlarmManager;

    sget-object v2, Lccc71/pmw/lib/pmw_widget_scheduler;->b:Lccc71/pmw/lib/pmw_widget_scheduler;

    iget-object v2, v2, Lccc71/pmw/lib/pmw_widget_scheduler;->d:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 53
    sget-object v0, Lccc71/pmw/lib/pmw_widget_scheduler;->b:Lccc71/pmw/lib/pmw_widget_scheduler;

    const/4 v2, 0x0

    iput-object v2, v0, Lccc71/pmw/lib/pmw_widget_scheduler;->d:Landroid/app/PendingIntent;

    .line 54
    sget-object v0, Lccc71/pmw/lib/pmw_widget_scheduler;->b:Lccc71/pmw/lib/pmw_widget_scheduler;

    const/4 v2, 0x0

    iput-object v2, v0, Lccc71/pmw/lib/pmw_widget_scheduler;->c:Landroid/app/AlarmManager;

    .line 55
    const/4 v0, 0x0

    sput-object v0, Lccc71/pmw/lib/pmw_widget_scheduler;->b:Lccc71/pmw/lib/pmw_widget_scheduler;

    .line 57
    const-string v0, "process_monitor_widget"

    const-string v2, "UNregistered pmw_widget_scheduler"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 64
    sget-object v0, Lccc71/pmw/lib/pmw_widget_scheduler;->b:Lccc71/pmw/lib/pmw_widget_scheduler;

    if-eqz v0, :cond_1

    .line 66
    sget-object v0, Lccc71/pmw/lib/pmw_widget_scheduler;->b:Lccc71/pmw/lib/pmw_widget_scheduler;

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->W(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lccc71/pmw/lib/pmw_widget_scheduler;->e:Z

    .line 67
    invoke-static {p0}, Lccc71/pmw/lib/pmw_widget;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lccc71/pmw/lib/pmw_widget_scheduler;->b:Lccc71/pmw/lib/pmw_widget_scheduler;

    iget v0, v0, Lccc71/pmw/lib/pmw_widget_scheduler;->f:I

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->w(Landroid/content/Context;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    if-eq v0, v1, :cond_1

    .line 69
    :cond_0
    invoke-static {}, Lccc71/pmw/lib/pmw_widget_scheduler;->b()V

    .line 72
    :cond_1
    invoke-static {p0}, Lccc71/pmw/lib/pmw_widget_scheduler;->a(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method static synthetic c()Lccc71/pmw/lib/pmw_widget_scheduler;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lccc71/pmw/lib/pmw_widget_scheduler;->b:Lccc71/pmw/lib/pmw_widget_scheduler;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 85
    sget-boolean v0, Lccc71/pmw/lib/pmw_watcher;->c:Z

    if-eqz v0, :cond_0

    .line 87
    new-instance v0, Lccc71/pmw/lib/qn;

    invoke-direct {v0, p0, p1}, Lccc71/pmw/lib/qn;-><init>(Lccc71/pmw/lib/pmw_widget_scheduler;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 106
    invoke-virtual {v0, v1}, Lccc71/pmw/lib/qn;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    .line 108
    :cond_0
    return-void
.end method
