.class public Lccc71/bmw/lib/bmw_scheduler;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static a:I

.field static b:I

.field static c:I

.field private static d:Landroid/app/AlarmManager;

.field private static e:Landroid/app/PendingIntent;

.field private static f:I

.field private static g:I

.field private static h:Lccc71/bmw/lib/bi;

.field private static i:Z

.field private static j:Z

.field private static k:Z

.field private static l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 43
    sput-object v0, Lccc71/bmw/lib/bmw_scheduler;->d:Landroid/app/AlarmManager;

    .line 44
    sput-object v0, Lccc71/bmw/lib/bmw_scheduler;->e:Landroid/app/PendingIntent;

    .line 51
    const/4 v0, 0x1

    sput-boolean v0, Lccc71/bmw/lib/bmw_scheduler;->i:Z

    .line 53
    sput-boolean v1, Lccc71/bmw/lib/bmw_scheduler;->j:Z

    .line 54
    sput v1, Lccc71/bmw/lib/bmw_scheduler;->b:I

    .line 55
    sput v1, Lccc71/bmw/lib/bmw_scheduler;->c:I

    .line 57
    sput-boolean v1, Lccc71/bmw/lib/bmw_scheduler;->k:Z

    .line 58
    sput-boolean v1, Lccc71/bmw/lib/bmw_scheduler;->l:Z

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 19
    sget-object v0, Lccc71/bmw/lib/bmw_scheduler;->d:Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    .line 21
    const-string v0, "battery_widget_monitor"

    const-string v1, "Registered bmw_scheduler"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lccc71/bmw/lib/bmw_scheduler;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 24
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_scheduler;->e:Landroid/app/PendingIntent;

    .line 25
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    sput-object v0, Lccc71/bmw/lib/bmw_scheduler;->d:Landroid/app/AlarmManager;

    .line 27
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lccc71/bmw/lib/bmw_scheduler;->a(Landroid/content/Context;Z)V

    .line 29
    :cond_0
    return-void
.end method

.method private static a(Landroid/content/Context;Z)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const v0, 0xea60

    const/4 v1, 0x0

    .line 62
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->n(Landroid/content/Context;)Z

    move-result v2

    sput-boolean v2, Lccc71/bmw/lib/bmw_scheduler;->k:Z

    .line 63
    sget-boolean v2, Lccc71/bmw/lib/bmw_watcher;->y:Z

    sput-boolean v2, Lccc71/bmw/lib/bmw_scheduler;->l:Z

    .line 65
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->ab(Landroid/content/Context;)Z

    move-result v2

    sput-boolean v2, Lccc71/bmw/lib/bmw_scheduler;->i:Z

    .line 66
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->o(Landroid/content/Context;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    sput v2, Lccc71/bmw/lib/bmw_scheduler;->f:I

    .line 67
    sget-boolean v2, Lccc71/bmw/lib/bmw_scheduler;->l:Z

    if-eqz v2, :cond_2

    sget v0, Lccc71/bmw/lib/bmw_scheduler;->f:I

    :cond_0
    :goto_0
    sput v0, Lccc71/bmw/lib/bmw_scheduler;->a:I

    .line 68
    sput v1, Lccc71/bmw/lib/bmw_scheduler;->g:I

    .line 70
    new-instance v0, Lccc71/bmw/lib/bi;

    invoke-direct {v0, p0}, Lccc71/bmw/lib/bi;-><init>(Landroid/content/Context;)V

    .line 71
    sput-object v0, Lccc71/bmw/lib/bmw_scheduler;->h:Lccc71/bmw/lib/bi;

    invoke-static {}, Lccc71/bmw/lib/bi;->a()Z

    move-result v0

    sput-boolean v0, Lccc71/bmw/lib/bmw_scheduler;->j:Z

    .line 73
    const/16 v0, 0xb40

    sput v0, Lccc71/bmw/lib/aj;->a:I

    .line 75
    if-eqz p1, :cond_1

    sget-object v0, Lccc71/bmw/lib/bmw_scheduler;->d:Landroid/app/AlarmManager;

    if-eqz v0, :cond_1

    .line 77
    sget-boolean v0, Lccc71/bmw/lib/bmw_scheduler;->l:Z

    if-eqz v0, :cond_3

    .line 79
    const-string v0, "battery_widget_monitor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Scheduling saves every "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lccc71/bmw/lib/bmw_scheduler;->f:I

    div-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seconds."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :goto_1
    const-string v2, "battery_widget_monitor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "  logging is "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Lccc71/bmw/lib/bmw_scheduler;->j:Z

    if-eqz v0, :cond_4

    const-string v0, "active"

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " and "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v0, Lccc71/bmw/lib/bmw_scheduler;->k:Z

    if-eqz v0, :cond_5

    const-string v0, "awakes phone"

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    sget-boolean v0, Lccc71/bmw/lib/bmw_scheduler;->k:Z

    if-eqz v0, :cond_6

    .line 88
    sget-object v0, Lccc71/bmw/lib/bmw_scheduler;->d:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget v4, Lccc71/bmw/lib/bmw_scheduler;->a:I

    int-to-long v4, v4

    sget-object v6, Lccc71/bmw/lib/bmw_scheduler;->e:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 92
    :cond_1
    :goto_4
    return-void

    .line 67
    :cond_2
    sget v2, Lccc71/bmw/lib/bmw_scheduler;->f:I

    if-ge v2, v0, :cond_0

    sget v0, Lccc71/bmw/lib/bmw_scheduler;->f:I

    goto :goto_0

    .line 83
    :cond_3
    const-string v0, "battery_widget_monitor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Scheduling every "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lccc71/bmw/lib/bmw_scheduler;->a:I

    div-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seconds, saving every "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lccc71/bmw/lib/bmw_scheduler;->f:I

    div-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seconds."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 85
    :cond_4
    const-string v0, "inactive"

    goto :goto_2

    :cond_5
    const-string v0, "does not awakes phone"

    goto :goto_3

    .line 90
    :cond_6
    sget-object v0, Lccc71/bmw/lib/bmw_scheduler;->d:Landroid/app/AlarmManager;

    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget v4, Lccc71/bmw/lib/bmw_scheduler;->a:I

    int-to-long v4, v4

    sget-object v6, Lccc71/bmw/lib/bmw_scheduler;->e:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_4
.end method

.method static a()Z
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lccc71/bmw/lib/bmw_scheduler;->d:Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 33
    sget-object v0, Lccc71/bmw/lib/bmw_scheduler;->d:Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    .line 35
    sget-object v0, Lccc71/bmw/lib/bmw_scheduler;->d:Landroid/app/AlarmManager;

    sget-object v1, Lccc71/bmw/lib/bmw_scheduler;->e:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 36
    sput-object v2, Lccc71/bmw/lib/bmw_scheduler;->d:Landroid/app/AlarmManager;

    .line 37
    sput-object v2, Lccc71/bmw/lib/bmw_scheduler;->e:Landroid/app/PendingIntent;

    .line 39
    const-string v0, "battery_widget_monitor"

    const-string v1, "UNregistered bmw_scheduler"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_0
    return-void
.end method

.method static b(Landroid/content/Context;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 96
    sget v0, Lccc71/bmw/lib/bmw_scheduler;->f:I

    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->o(Landroid/content/Context;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    if-ne v0, v3, :cond_0

    .line 97
    sget-boolean v0, Lccc71/bmw/lib/bmw_scheduler;->k:Z

    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->n(Landroid/content/Context;)Z

    move-result v3

    if-ne v0, v3, :cond_0

    sget-boolean v0, Lccc71/bmw/lib/bmw_scheduler;->l:Z

    sget-boolean v3, Lccc71/bmw/lib/bmw_watcher;->y:Z

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 99
    :goto_0
    invoke-static {p0, v0}, Lccc71/bmw/lib/bmw_scheduler;->a(Landroid/content/Context;Z)V

    .line 101
    sget v0, Lccc71/bmw/lib/bmw_scheduler;->f:I

    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->o(Landroid/content/Context;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    if-eq v0, v3, :cond_1

    :goto_1
    return v2

    :cond_0
    move v0, v2

    .line 97
    goto :goto_0

    :cond_1
    move v2, v1

    .line 101
    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 106
    sget v3, Lccc71/bmw/lib/bmw_watcher;->f:I

    .line 107
    invoke-static {}, Lccc71/bmw/lib/bmw_watcher;->g()V

    .line 108
    invoke-static {p1}, Lccc71/bmw/lib/bmw_watcher;->i(Landroid/content/Context;)V

    .line 112
    sget-boolean v0, Lccc71/bmw/lib/bmw_scheduler;->j:Z

    if-eqz v0, :cond_e

    .line 114
    sget-boolean v0, Lccc71/bmw/lib/bmw_scheduler;->i:Z

    if-nez v0, :cond_0

    sget v0, Lccc71/bmw/lib/bmw_watcher;->j:I

    if-eqz v0, :cond_0

    sget v0, Lccc71/bmw/lib/bmw_watcher;->h:I

    const/16 v4, 0x64

    if-ne v0, v4, :cond_0

    sget v0, Lccc71/bmw/lib/bmw_watcher;->f:I

    if-eqz v0, :cond_e

    .line 116
    :cond_0
    sget-boolean v0, Lccc71/bmw/lib/bmw_watcher;->y:Z

    if-eqz v0, :cond_4

    .line 119
    sget-object v0, Lccc71/bmw/lib/bmw_scheduler;->h:Lccc71/bmw/lib/bi;

    if-nez v0, :cond_1

    .line 120
    new-instance v0, Lccc71/bmw/lib/bi;

    invoke-direct {v0, p1}, Lccc71/bmw/lib/bi;-><init>(Landroid/content/Context;)V

    sput-object v0, Lccc71/bmw/lib/bmw_scheduler;->h:Lccc71/bmw/lib/bi;

    .line 121
    :cond_1
    sget v0, Lccc71/bmw/lib/bmw_scheduler;->c:I

    if-nez v0, :cond_3

    .line 123
    sget-object v0, Lccc71/bmw/lib/bmw_scheduler;->h:Lccc71/bmw/lib/bi;

    sget v4, Lccc71/bmw/lib/bmw_watcher;->f:I

    invoke-virtual {v0, v4}, Lccc71/bmw/lib/bi;->a(I)V

    move v0, v2

    .line 165
    :goto_0
    invoke-static {p1}, Lccc71/bmw/lib/bmw_service;->a(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 167
    const-string v0, "battery_widget_monitor"

    const-string v1, "bmw_scheduler - Service not running, restarting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-static {p1}, Lccc71/bmw/lib/bmw_service;->b(Landroid/content/Context;)V

    .line 199
    :cond_2
    :goto_1
    return-void

    .line 127
    :cond_3
    sget-object v0, Lccc71/bmw/lib/bmw_scheduler;->h:Lccc71/bmw/lib/bi;

    sget v4, Lccc71/bmw/lib/bmw_scheduler;->b:I

    sget v5, Lccc71/bmw/lib/bmw_scheduler;->c:I

    div-int/2addr v4, v5

    invoke-virtual {v0, v4}, Lccc71/bmw/lib/bi;->a(I)V

    .line 128
    sput v1, Lccc71/bmw/lib/bmw_scheduler;->b:I

    .line 129
    sput v1, Lccc71/bmw/lib/bmw_scheduler;->c:I

    move v0, v2

    goto :goto_0

    .line 134
    :cond_4
    sget v0, Lccc71/bmw/lib/bmw_scheduler;->f:I

    sget v4, Lccc71/bmw/lib/bmw_scheduler;->a:I

    if-ne v0, v4, :cond_6

    .line 138
    sget-object v0, Lccc71/bmw/lib/bmw_scheduler;->h:Lccc71/bmw/lib/bi;

    if-nez v0, :cond_5

    .line 139
    new-instance v0, Lccc71/bmw/lib/bi;

    invoke-direct {v0, p1}, Lccc71/bmw/lib/bi;-><init>(Landroid/content/Context;)V

    sput-object v0, Lccc71/bmw/lib/bmw_scheduler;->h:Lccc71/bmw/lib/bi;

    .line 140
    :cond_5
    sget-object v0, Lccc71/bmw/lib/bmw_scheduler;->h:Lccc71/bmw/lib/bi;

    sget v4, Lccc71/bmw/lib/bmw_watcher;->f:I

    invoke-virtual {v0, v4}, Lccc71/bmw/lib/bi;->a(I)V

    move v0, v2

    goto :goto_0

    .line 144
    :cond_6
    sget v0, Lccc71/bmw/lib/bmw_scheduler;->b:I

    sget v4, Lccc71/bmw/lib/bmw_watcher;->f:I

    add-int/2addr v0, v4

    sput v0, Lccc71/bmw/lib/bmw_scheduler;->b:I

    .line 145
    sget v0, Lccc71/bmw/lib/bmw_scheduler;->c:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lccc71/bmw/lib/bmw_scheduler;->c:I

    .line 147
    sget v0, Lccc71/bmw/lib/bmw_scheduler;->g:I

    sget v4, Lccc71/bmw/lib/bmw_scheduler;->a:I

    sub-int/2addr v0, v4

    .line 148
    sput v0, Lccc71/bmw/lib/bmw_scheduler;->g:I

    if-gtz v0, :cond_e

    .line 151
    sget v0, Lccc71/bmw/lib/bmw_scheduler;->f:I

    sput v0, Lccc71/bmw/lib/bmw_scheduler;->g:I

    .line 153
    sget-object v0, Lccc71/bmw/lib/bmw_scheduler;->h:Lccc71/bmw/lib/bi;

    if-nez v0, :cond_7

    .line 154
    new-instance v0, Lccc71/bmw/lib/bi;

    invoke-direct {v0, p1}, Lccc71/bmw/lib/bi;-><init>(Landroid/content/Context;)V

    sput-object v0, Lccc71/bmw/lib/bmw_scheduler;->h:Lccc71/bmw/lib/bi;

    .line 155
    :cond_7
    sget-object v0, Lccc71/bmw/lib/bmw_scheduler;->h:Lccc71/bmw/lib/bi;

    sget v4, Lccc71/bmw/lib/bmw_scheduler;->b:I

    sget v5, Lccc71/bmw/lib/bmw_scheduler;->c:I

    div-int/2addr v4, v5

    invoke-virtual {v0, v4}, Lccc71/bmw/lib/bi;->a(I)V

    .line 157
    sput v1, Lccc71/bmw/lib/bmw_scheduler;->b:I

    .line 158
    sput v1, Lccc71/bmw/lib/bmw_scheduler;->c:I

    move v0, v2

    goto :goto_0

    .line 172
    :cond_8
    sget-boolean v4, Lccc71/bmw/lib/bmw_watcher;->c:Z

    if-eqz v4, :cond_d

    .line 174
    sget v4, Lccc71/bmw/lib/bmw_watcher;->f:I

    if-eq v3, v4, :cond_c

    .line 176
    invoke-static {p1}, Lccc71/bmw/lib/bmw_watcher;->h(Landroid/content/Context;)V

    .line 177
    invoke-static {p1, v0}, Lccc71/bmw/lib/bmw_widget;->a(Landroid/content/Context;Z)V

    .line 178
    sget-object v3, Lccc71/bmw/lib/bmw_status;->a:Lccc71/bmw/lib/ed;

    if-eqz v3, :cond_a

    .line 179
    sget-object v3, Lccc71/bmw/lib/bmw_status;->a:Lccc71/bmw/lib/ed;

    if-eqz v0, :cond_9

    move v2, v1

    :cond_9
    invoke-virtual {v3, v2}, Lccc71/bmw/lib/ed;->sendEmptyMessage(I)Z

    .line 180
    :cond_a
    sget-object v2, Lccc71/bmw/lib/bmw_estimates;->a:Lccc71/bmw/lib/an;

    if-eqz v2, :cond_b

    .line 181
    sget-object v2, Lccc71/bmw/lib/bmw_estimates;->a:Lccc71/bmw/lib/an;

    invoke-virtual {v2, v1}, Lccc71/bmw/lib/an;->sendEmptyMessage(I)Z

    .line 193
    :cond_b
    :goto_2
    if-eqz v0, :cond_2

    sget-object v0, Lccc71/bmw/lib/bmw_history;->a:Lccc71/bmw/lib/bg;

    if-eqz v0, :cond_2

    .line 194
    sget-object v0, Lccc71/bmw/lib/bmw_history;->a:Lccc71/bmw/lib/bg;

    invoke-virtual {v0, v1}, Lccc71/bmw/lib/bg;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 185
    :cond_c
    if-eqz v0, :cond_b

    .line 187
    invoke-static {p1, v2}, Lccc71/bmw/lib/bmw_widget;->a(Landroid/content/Context;Z)V

    .line 188
    sget-object v2, Lccc71/bmw/lib/bmw_status;->a:Lccc71/bmw/lib/ed;

    if-eqz v2, :cond_b

    .line 189
    sget-object v2, Lccc71/bmw/lib/bmw_status;->a:Lccc71/bmw/lib/ed;

    invoke-virtual {v2, v1}, Lccc71/bmw/lib/ed;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 197
    :cond_d
    sput-boolean v2, Lccc71/bmw/lib/bmw_watcher;->d:Z

    goto/16 :goto_1

    :cond_e
    move v0, v1

    goto/16 :goto_0
.end method
