.class public Lccc71/pmw/lib/pmw_notif_scheduler;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String;

.field private static b:Ljava/lang/Object;

.field private static c:Lccc71/pmw/lib/pmw_notif_scheduler;

.field private static i:Landroid/content/Intent;


# instance fields
.field private d:Landroid/app/AlarmManager;

.field private e:Landroid/app/PendingIntent;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 116
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lccc71/pmw/lib/pmw_notif_scheduler;->b:Ljava/lang/Object;

    .line 117
    const/4 v0, 0x0

    sput-object v0, Lccc71/pmw/lib/pmw_notif_scheduler;->c:Lccc71/pmw/lib/pmw_notif_scheduler;

    .line 127
    const-string v0, ".pmw_notification"

    sput-object v0, Lccc71/pmw/lib/pmw_notif_scheduler;->a:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 119
    iput-object v0, p0, Lccc71/pmw/lib/pmw_notif_scheduler;->d:Landroid/app/AlarmManager;

    .line 120
    iput-object v0, p0, Lccc71/pmw/lib/pmw_notif_scheduler;->e:Landroid/app/PendingIntent;

    .line 121
    iput-object v0, p0, Lccc71/pmw/lib/pmw_notif_scheduler;->f:Ljava/lang/String;

    .line 122
    iput v1, p0, Lccc71/pmw/lib/pmw_notif_scheduler;->g:I

    .line 123
    iput-boolean v1, p0, Lccc71/pmw/lib/pmw_notif_scheduler;->h:Z

    .line 16
    return-void
.end method

.method static a(Landroid/content/Context;)V
    .locals 8
    .parameter

    .prologue
    .line 27
    invoke-static {p0}, Lccc71/pmw/lib/pmw_notif_scheduler;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    :goto_0
    return-void

    :cond_0
    sget-object v7, Lccc71/pmw/lib/pmw_notif_scheduler;->b:Ljava/lang/Object;

    monitor-enter v7

    .line 32
    :try_start_0
    sget-object v0, Lccc71/pmw/lib/pmw_notif_scheduler;->c:Lccc71/pmw/lib/pmw_notif_scheduler;

    if-nez v0, :cond_1

    .line 34
    const-string v0, "process_monitor_widget"

    const-string v1, "Registering pmw_notif_scheduler"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    new-instance v0, Lccc71/pmw/lib/pmw_notif_scheduler;

    invoke-direct {v0}, Lccc71/pmw/lib/pmw_notif_scheduler;-><init>()V

    sput-object v0, Lccc71/pmw/lib/pmw_notif_scheduler;->c:Lccc71/pmw/lib/pmw_notif_scheduler;

    .line 37
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lccc71/pmw/lib/pmw_notif_scheduler;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    sget-object v1, Lccc71/pmw/lib/pmw_notif_scheduler;->c:Lccc71/pmw/lib/pmw_notif_scheduler;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Lccc71/pmw/lib/pmw_notif_scheduler;->e:Landroid/app/PendingIntent;

    .line 39
    sget-object v1, Lccc71/pmw/lib/pmw_notif_scheduler;->c:Lccc71/pmw/lib/pmw_notif_scheduler;

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, v1, Lccc71/pmw/lib/pmw_notif_scheduler;->d:Landroid/app/AlarmManager;

    .line 41
    sget-object v0, Lccc71/pmw/lib/pmw_notif_scheduler;->c:Lccc71/pmw/lib/pmw_notif_scheduler;

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->ab(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccc71/pmw/lib/pmw_notif_scheduler;->f:Ljava/lang/String;

    .line 43
    sget-object v0, Lccc71/pmw/lib/pmw_notif_scheduler;->c:Lccc71/pmw/lib/pmw_notif_scheduler;

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->x(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lccc71/pmw/lib/pmw_notif_scheduler;->g:I

    .line 44
    const-string v0, "process_monitor_widget"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Scheduling precisely every "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lccc71/pmw/lib/pmw_notif_scheduler;->c:Lccc71/pmw/lib/pmw_notif_scheduler;

    iget v2, v2, Lccc71/pmw/lib/pmw_notif_scheduler;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    sget-object v0, Lccc71/pmw/lib/pmw_notif_scheduler;->c:Lccc71/pmw/lib/pmw_notif_scheduler;

    iget v1, v0, Lccc71/pmw/lib/pmw_notif_scheduler;->g:I

    mul-int/lit16 v1, v1, 0x3e8

    iput v1, v0, Lccc71/pmw/lib/pmw_notif_scheduler;->g:I

    .line 47
    sget-object v0, Lccc71/pmw/lib/pmw_notif_scheduler;->c:Lccc71/pmw/lib/pmw_notif_scheduler;

    iget-object v0, v0, Lccc71/pmw/lib/pmw_notif_scheduler;->d:Landroid/app/AlarmManager;

    const/4 v1, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-object v4, Lccc71/pmw/lib/pmw_notif_scheduler;->c:Lccc71/pmw/lib/pmw_notif_scheduler;

    iget v4, v4, Lccc71/pmw/lib/pmw_notif_scheduler;->g:I

    int-to-long v4, v4

    sget-object v6, Lccc71/pmw/lib/pmw_notif_scheduler;->c:Lccc71/pmw/lib/pmw_notif_scheduler;

    iget-object v6, v6, Lccc71/pmw/lib/pmw_notif_scheduler;->e:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 30
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
    .line 20
    sget-object v0, Lccc71/pmw/lib/pmw_notif_scheduler;->c:Lccc71/pmw/lib/pmw_notif_scheduler;

    if-eqz v0, :cond_0

    .line 21
    const/4 v0, 0x1

    .line 22
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b()V
    .locals 3

    .prologue
    .line 54
    sget-object v1, Lccc71/pmw/lib/pmw_notif_scheduler;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 56
    :try_start_0
    sget-object v0, Lccc71/pmw/lib/pmw_notif_scheduler;->c:Lccc71/pmw/lib/pmw_notif_scheduler;

    if-eqz v0, :cond_0

    .line 58
    sget-object v0, Lccc71/pmw/lib/pmw_notif_scheduler;->c:Lccc71/pmw/lib/pmw_notif_scheduler;

    iget-object v0, v0, Lccc71/pmw/lib/pmw_notif_scheduler;->d:Landroid/app/AlarmManager;

    sget-object v2, Lccc71/pmw/lib/pmw_notif_scheduler;->c:Lccc71/pmw/lib/pmw_notif_scheduler;

    iget-object v2, v2, Lccc71/pmw/lib/pmw_notif_scheduler;->e:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 59
    sget-object v0, Lccc71/pmw/lib/pmw_notif_scheduler;->c:Lccc71/pmw/lib/pmw_notif_scheduler;

    const/4 v2, 0x0

    iput-object v2, v0, Lccc71/pmw/lib/pmw_notif_scheduler;->e:Landroid/app/PendingIntent;

    .line 60
    sget-object v0, Lccc71/pmw/lib/pmw_notif_scheduler;->c:Lccc71/pmw/lib/pmw_notif_scheduler;

    const/4 v2, 0x0

    iput-object v2, v0, Lccc71/pmw/lib/pmw_notif_scheduler;->d:Landroid/app/AlarmManager;

    .line 61
    const/4 v0, 0x0

    sput-object v0, Lccc71/pmw/lib/pmw_notif_scheduler;->c:Lccc71/pmw/lib/pmw_notif_scheduler;

    .line 63
    const-string v0, "process_monitor_widget"

    const-string v2, "UNregistered pmw_notif_scheduler"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
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
    .locals 9
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 70
    sget-object v2, Lccc71/pmw/lib/pmw_notif_scheduler;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 72
    :try_start_0
    sget-object v1, Lccc71/pmw/lib/pmw_notif_scheduler;->c:Lccc71/pmw/lib/pmw_notif_scheduler;

    if-eqz v1, :cond_2

    .line 74
    sget-object v1, Lccc71/pmw/lib/pmw_notif_scheduler;->c:Lccc71/pmw/lib/pmw_notif_scheduler;

    iget-object v1, v1, Lccc71/pmw/lib/pmw_notif_scheduler;->f:Ljava/lang/String;

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->ab(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v0

    .line 75
    :goto_0
    if-eqz v1, :cond_0

    .line 77
    sget-object v3, Lccc71/pmw/lib/pmw_notif_scheduler;->c:Lccc71/pmw/lib/pmw_notif_scheduler;

    iget-object v3, v3, Lccc71/pmw/lib/pmw_notif_scheduler;->f:Ljava/lang/String;

    if-eqz v3, :cond_0

    sget-object v3, Lccc71/pmw/lib/pmw_notif_scheduler;->c:Lccc71/pmw/lib/pmw_notif_scheduler;

    iget-object v3, v3, Lccc71/pmw/lib/pmw_notif_scheduler;->f:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 79
    const-string v3, "process_monitor_widget"

    const-string v4, "Cancelling external notifications"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    sget-object v3, Lccc71/pmw/lib/pmw_notif_scheduler;->c:Lccc71/pmw/lib/pmw_notif_scheduler;

    iget-object v3, v3, Lccc71/pmw/lib/pmw_notif_scheduler;->f:Ljava/lang/String;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 83
    array-length v4, v3

    .line 84
    :goto_1
    if-lt v0, v4, :cond_4

    .line 95
    :cond_0
    sget-object v0, Lccc71/pmw/lib/pmw_notif_scheduler;->c:Lccc71/pmw/lib/pmw_notif_scheduler;

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->X(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, v0, Lccc71/pmw/lib/pmw_notif_scheduler;->h:Z

    .line 96
    sget-object v0, Lccc71/pmw/lib/pmw_notif_scheduler;->c:Lccc71/pmw/lib/pmw_notif_scheduler;

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->ab(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lccc71/pmw/lib/pmw_notif_scheduler;->f:Ljava/lang/String;

    .line 97
    sget-object v0, Lccc71/pmw/lib/pmw_notif_scheduler;->c:Lccc71/pmw/lib/pmw_notif_scheduler;

    iget v0, v0, Lccc71/pmw/lib/pmw_notif_scheduler;->g:I

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->x(Landroid/content/Context;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    if-ne v0, v3, :cond_1

    if-eqz v1, :cond_2

    .line 99
    :cond_1
    sget-object v0, Lccc71/pmw/lib/pmw_notif_scheduler;->c:Lccc71/pmw/lib/pmw_notif_scheduler;

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->x(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lccc71/pmw/lib/pmw_notif_scheduler;->g:I

    .line 100
    invoke-static {}, Lccc71/pmw/lib/pmw_notif_scheduler;->b()V

    .line 70
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    invoke-static {p0}, Lccc71/pmw/lib/pmw_notif_scheduler;->a(Landroid/content/Context;)V

    .line 105
    return-void

    .line 74
    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 86
    :cond_4
    :try_start_1
    aget-object v5, v3, v0

    .line 88
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 89
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lccc71/pmw/lib/pmw_notif_scheduler;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    invoke-virtual {p0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 109
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->ab(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 111
    :cond_0
    const/4 v0, 0x0

    .line 113
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 131
    sget-object v1, Lccc71/pmw/lib/pmw_notif_scheduler;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 133
    :try_start_0
    sget-object v0, Lccc71/pmw/lib/pmw_notif_scheduler;->c:Lccc71/pmw/lib/pmw_notif_scheduler;

    if-eqz v0, :cond_0

    .line 134
    sget-object v0, Lccc71/pmw/lib/pmw_notif_scheduler;->c:Lccc71/pmw/lib/pmw_notif_scheduler;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/pmw_notif_scheduler;->e(Landroid/content/Context;)V

    .line 131
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

.method private e(Landroid/content/Context;)V
    .locals 11
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 140
    iget-object v0, p0, Lccc71/pmw/lib/pmw_notif_scheduler;->f:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 259
    :cond_0
    return-void

    .line 143
    :cond_1
    iget-object v0, p0, Lccc71/pmw/lib/pmw_notif_scheduler;->f:Ljava/lang/String;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 145
    sget v0, Lccc71/pmw/lib/g;->bv:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 146
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 150
    const-string v1, "recording"

    invoke-static {}, Lccc71/pmw/lib/pmw_recorder;->a()Z

    move-result v5

    invoke-virtual {v4, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 152
    const-string v1, "title"

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const-string v0, "text"

    const-string v1, ""

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    const-string v0, "intent"

    sget-object v1, Lccc71/pmw/lib/pmw_notif_scheduler;->i:Landroid/content/Intent;

    if-nez v1, :cond_2

    new-instance v1, Landroid/content/Intent;

    const-class v5, Lccc71/pmw/lib/pmw_main_popup;

    invoke-direct {v1, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object v1, Lccc71/pmw/lib/pmw_notif_scheduler;->i:Landroid/content/Intent;

    const v5, 0x8000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v1, Lccc71/pmw/lib/pmw_notif_scheduler;->i:Landroid/content/Intent;

    const/high16 v5, 0x800

    invoke-static {p1, v2, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    :cond_2
    sget-object v1, Lccc71/pmw/lib/pmw_notif_scheduler;->i:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    const/4 v0, 0x0

    .line 157
    array-length v5, v3

    move v1, v2

    .line 162
    :goto_0
    if-ge v1, v5, :cond_0

    .line 164
    aget-object v6, v3, v1

    .line 166
    const-string v7, "process_monitor_widget"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Notifying package: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const-string v7, ".cpu."

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 169
    if-nez v0, :cond_3

    .line 171
    new-instance v0, Lccc71/pmw/a/ah;

    invoke-direct {v0}, Lccc71/pmw/a/ah;-><init>()V

    .line 173
    invoke-static {}, Lccc71/pmw/a/ah;->d()I

    move-result v7

    .line 174
    invoke-virtual {v0, v2}, Lccc71/pmw/a/ah;->g(I)I

    move-result v8

    .line 175
    invoke-virtual {v0}, Lccc71/pmw/a/ah;->h()I

    move-result v9

    .line 176
    invoke-virtual {v0}, Lccc71/pmw/a/ah;->m()I

    move-result v0

    .line 178
    const-string v10, "cpu_load"

    invoke-virtual {v4, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 179
    const-string v10, "cpu_freq"

    invoke-virtual {v4, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 180
    const-string v10, "cpu_max_freq"

    invoke-virtual {v4, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 181
    const-string v9, "cpu_temp"

    invoke-virtual {v4, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 183
    if-eqz v8, :cond_8

    .line 185
    if-eqz v7, :cond_6

    .line 187
    if-eqz v0, :cond_5

    .line 188
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "CPU @ "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lccc71/utils/ag;->c(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    int-to-long v9, v7

    invoke-static {v9, v10}, Lccc71/utils/ag;->b(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    int-to-float v0, v0

    invoke-static {p1, v0}, Lccc71/pmw/lib/pmw_settings;->b(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    :cond_3
    :goto_1
    const-string v7, "text"

    invoke-virtual {v4, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    :cond_4
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lccc71/pmw/lib/pmw_notif_scheduler;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    invoke-virtual {p1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 190
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v9, "CPU @ "

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lccc71/utils/ag;->c(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " - "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-long v7, v7

    invoke-static {v7, v8}, Lccc71/utils/ag;->b(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 194
    :cond_6
    if-eqz v0, :cond_7

    .line 195
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "CPU @ "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lccc71/utils/ag;->c(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\u00b0C"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 197
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "CPU @ "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lccc71/utils/ag;->c(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 202
    :cond_8
    if-eqz v7, :cond_a

    .line 204
    if-eqz v0, :cond_9

    .line 205
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "CPU "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-long v9, v7

    invoke-static {v9, v10}, Lccc71/utils/ag;->b(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\u00b0C"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 207
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, "CPU "

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-long v7, v7

    invoke-static {v7, v8}, Lccc71/utils/ag;->b(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 211
    :cond_a
    if-eqz v0, :cond_b

    .line 212
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "CPU "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\u00b0C"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 214
    :cond_b
    const-string v0, "CPU"

    goto/16 :goto_1

    .line 220
    :cond_c
    const-string v7, ".memory."

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 222
    new-instance v7, Lccc71/pmw/b/k;

    invoke-direct {v7, p1}, Lccc71/pmw/b/k;-><init>(Landroid/content/Context;)V

    .line 226
    iget v8, v7, Lccc71/pmw/b/k;->b:I

    div-int/lit16 v8, v8, 0x400

    .line 227
    iget v7, v7, Lccc71/pmw/b/k;->a:I

    div-int/lit16 v7, v7, 0x400

    .line 229
    const-string v9, "mem_free"

    invoke-virtual {v4, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 230
    const-string v8, "mem_total"

    invoke-virtual {v4, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_2

    .line 233
    :cond_d
    const-string v7, ".sd."

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 235
    new-instance v7, Lccc71/pmw/b/u;

    invoke-direct {v7}, Lccc71/pmw/b/u;-><init>()V

    .line 238
    invoke-static {}, Lccc71/pmw/b/u;->a()V

    .line 240
    const-string v7, "sd_free"

    sget-wide v8, Lccc71/pmw/b/u;->h:J

    invoke-virtual {v4, v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 241
    const-string v7, "sd_total"

    sget-wide v8, Lccc71/pmw/b/u;->i:J

    invoke-virtual {v4, v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto/16 :goto_2

    .line 244
    :cond_e
    const-string v7, ".internal."

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 246
    new-instance v7, Lccc71/pmw/b/u;

    invoke-direct {v7}, Lccc71/pmw/b/u;-><init>()V

    .line 249
    invoke-virtual {v7}, Lccc71/pmw/b/u;->c()V

    .line 251
    const-string v8, "int_free"

    iget-wide v9, v7, Lccc71/pmw/b/u;->a:J

    invoke-virtual {v4, v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 252
    const-string v8, "int_total"

    iget-wide v9, v7, Lccc71/pmw/b/u;->b:J

    invoke-virtual {v4, v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto/16 :goto_2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 263
    invoke-static {p1}, Lccc71/pmw/lib/pmw_service;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 265
    const-string v0, "process_monitor_widget"

    const-string v1, "Service not running - restarting..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-static {p1}, Lccc71/pmw/lib/pmw_service;->b(Landroid/content/Context;)V

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    sget-boolean v0, Lccc71/pmw/lib/pmw_watcher;->c:Z

    if-eqz v0, :cond_0

    .line 270
    sget-object v1, Lccc71/pmw/lib/pmw_notif_scheduler;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 272
    :try_start_0
    sget-object v0, Lccc71/pmw/lib/pmw_notif_scheduler;->c:Lccc71/pmw/lib/pmw_notif_scheduler;

    if-eqz v0, :cond_2

    .line 274
    sget-object v0, Lccc71/pmw/lib/pmw_notif_scheduler;->c:Lccc71/pmw/lib/pmw_notif_scheduler;

    invoke-direct {v0, p1}, Lccc71/pmw/lib/pmw_notif_scheduler;->e(Landroid/content/Context;)V

    .line 276
    sget-object v0, Lccc71/pmw/lib/pmw_notif_scheduler;->c:Lccc71/pmw/lib/pmw_notif_scheduler;

    iget-boolean v0, v0, Lccc71/pmw/lib/pmw_notif_scheduler;->h:Z

    if-eqz v0, :cond_2

    .line 278
    new-instance v0, Lccc71/pmw/lib/jk;

    invoke-direct {v0, p0, p1}, Lccc71/pmw/lib/jk;-><init>(Lccc71/pmw/lib/pmw_notif_scheduler;Landroid/content/Context;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 287
    invoke-virtual {v0, v2}, Lccc71/pmw/lib/jk;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    .line 270
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
