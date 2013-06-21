.class public Lccc71/pmw/lib/pmw_service;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static a:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lccc71/pmw/lib/pmw_service;->a:Landroid/content/Intent;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 14
    invoke-static {p0}, Lccc71/pmw/lib/pmw_widget;->a(Landroid/content/Context;)Z

    move-result v3

    .line 15
    invoke-static {p0}, Lccc71/pmw/lib/pmw_notif_scheduler;->c(Landroid/content/Context;)Z

    move-result v4

    .line 16
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->A(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->Y(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->Z(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v1

    .line 19
    :goto_0
    if-nez v3, :cond_2

    if-nez v4, :cond_2

    if-nez v2, :cond_2

    .line 39
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v2, v0

    .line 16
    goto :goto_0

    .line 23
    :cond_2
    invoke-static {}, Lccc71/pmw/lib/pmw_watcher;->a()Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    .line 24
    goto :goto_1

    .line 26
    :cond_3
    sget-boolean v2, Lccc71/pmw/lib/pmw_watcher;->c:Z

    if-eqz v2, :cond_5

    .line 29
    if-eqz v3, :cond_4

    invoke-static {}, Lccc71/pmw/lib/pmw_widget_scheduler;->a()Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 30
    goto :goto_1

    .line 32
    :cond_4
    if-eqz v4, :cond_5

    invoke-static {}, Lccc71/pmw/lib/pmw_notif_scheduler;->a()Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 33
    goto :goto_1

    .line 36
    :cond_5
    sget-object v2, Lccc71/pmw/lib/pmw_service;->a:Landroid/content/Intent;

    if-nez v2, :cond_0

    move v0, v1

    .line 37
    goto :goto_1
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 44
    sget-object v0, Lccc71/pmw/lib/pmw_service;->a:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lccc71/pmw/lib/pmw_service;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object v0, Lccc71/pmw/lib/pmw_service;->a:Landroid/content/Intent;

    .line 47
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lccc71/pmw/lib/pmw_service;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 48
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    sget-object v0, Lccc71/pmw/lib/pmw_service;->a:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Lccc71/pmw/lib/pmw_service;->a:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 55
    const/4 v0, 0x0

    sput-object v0, Lccc71/pmw/lib/pmw_service;->a:Landroid/content/Intent;

    .line 57
    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 82
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 84
    invoke-static {}, Lccc71/pmw/lib/pmw_notif_scheduler;->b()V

    .line 85
    invoke-static {}, Lccc71/pmw/lib/pmw_widget_scheduler;->b()V

    .line 86
    invoke-static {p0}, Lccc71/pmw/lib/pmw_watcher;->b(Landroid/content/Context;)V

    .line 87
    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 92
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 93
    invoke-static {v0}, Lccc71/pmw/lib/pmw_settings;->aa(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    invoke-static {v0}, Lccc71/pmw/lib/at_auto_kill_service;->b(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 97
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    .line 98
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-static {p0}, Lccc71/pmw/lib/pmw_notif_scheduler;->a(Landroid/content/Context;)V

    .line 63
    invoke-static {p0}, Lccc71/pmw/lib/pmw_widget_scheduler;->a(Landroid/content/Context;)V

    .line 64
    invoke-static {p0}, Lccc71/pmw/lib/pmw_watcher;->a(Landroid/content/Context;)V

    .line 65
    invoke-static {p0}, Lccc71/pmw/lib/pmw_backup_scheduler;->b(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-static {p0}, Lccc71/pmw/lib/pmw_notif_scheduler;->a(Landroid/content/Context;)V

    .line 72
    invoke-static {p0}, Lccc71/pmw/lib/pmw_widget_scheduler;->a(Landroid/content/Context;)V

    .line 73
    invoke-static {p0}, Lccc71/pmw/lib/pmw_watcher;->a(Landroid/content/Context;)V

    .line 74
    invoke-static {p0}, Lccc71/pmw/lib/pmw_backup_scheduler;->b(Landroid/content/Context;)V

    .line 76
    const/4 v0, 0x1

    return v0
.end method
