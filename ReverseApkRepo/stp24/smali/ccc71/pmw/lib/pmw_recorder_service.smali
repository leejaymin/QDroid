.class public Lccc71/pmw/lib/pmw_recorder_service;
.super Lccc71/utils/android/ccc71_service;
.source "SourceFile"


# static fields
.field static a:Landroid/content/Intent;

.field private static b:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM/yy HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lccc71/pmw/lib/pmw_recorder_service;->b:Ljava/text/SimpleDateFormat;

    .line 18
    const/4 v0, 0x0

    sput-object v0, Lccc71/pmw/lib/pmw_recorder_service;->a:Landroid/content/Intent;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lccc71/utils/android/ccc71_service;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 22
    sget-object v0, Lccc71/pmw/lib/pmw_recorder_service;->a:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lccc71/pmw/lib/pmw_recorder_service;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object v0, Lccc71/pmw/lib/pmw_recorder_service;->a:Landroid/content/Intent;

    .line 25
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lccc71/pmw/lib/pmw_recorder_service;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 26
    return-void
.end method

.method private b()V
    .locals 6

    .prologue
    .line 83
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lccc71/pmw/lib/pmw_main_popup;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 85
    new-instance v1, Landroid/app/Notification;

    sget v2, Lccc71/pmw/lib/c;->am:I

    sget v3, Lccc71/pmw/lib/g;->bv:I

    invoke-virtual {p0, v3}, Lccc71/pmw/lib/pmw_recorder_service;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 87
    sget-object v2, Lccc71/pmw/lib/pmw_recorder_service;->b:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 88
    sget v3, Lccc71/pmw/lib/g;->bv:I

    invoke-virtual {p0, v3}, Lccc71/pmw/lib/pmw_recorder_service;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lccc71/pmw/lib/g;->eB:I

    invoke-virtual {p0, v5}, Lccc71/pmw/lib/pmw_recorder_service;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/high16 v5, 0x800

    invoke-static {p0, v4, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, p0, v3, v2, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/app/Notification;->when:J

    .line 91
    sget v0, Lccc71/pmw/lib/c;->am:I

    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 93
    invoke-virtual {p0, v1}, Lccc71/pmw/lib/pmw_recorder_service;->a(Landroid/app/Notification;)V

    .line 94
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 30
    sget-object v0, Lccc71/pmw/lib/pmw_recorder_service;->a:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 32
    sget-object v0, Lccc71/pmw/lib/pmw_recorder_service;->a:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lccc71/pmw/lib/pmw_recorder_service;->a:Landroid/content/Intent;

    .line 39
    :goto_0
    return-void

    .line 37
    :cond_0
    const-string v0, "process_monitor_widget"

    const-string v1, "StopService - service not running!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 66
    const-string v0, "process_monitor_widget"

    const-string v1, "pmw_recorder_service - onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-super {p0}, Lccc71/utils/android/ccc71_service;->onDestroy()V

    .line 70
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_recorder_service;->a()V

    .line 71
    invoke-static {}, Lccc71/pmw/lib/pmw_recorder;->d()V

    .line 72
    const/4 v0, 0x0

    sput-object v0, Lccc71/pmw/lib/pmw_recorder_service;->a:Landroid/content/Intent;

    .line 73
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 44
    const-string v0, "process_monitor_widget"

    const-string v1, "pmw_recorder_service - onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->K(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_recorder_service;->b()V

    .line 48
    :cond_0
    invoke-static {p0}, Lccc71/pmw/lib/pmw_recorder;->a(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    const-string v0, "process_monitor_widget"

    const-string v1, "pmw_recorder_service - onStartCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->K(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_recorder_service;->b()V

    .line 58
    :cond_0
    invoke-static {p0}, Lccc71/pmw/lib/pmw_recorder;->a(Landroid/content/Context;)V

    .line 60
    const/4 v0, 0x1

    return v0
.end method
