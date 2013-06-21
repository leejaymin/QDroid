.class public Lccc71/bmw/lib/bmw_service;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static a:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-object v0, Lccc71/bmw/lib/bmw_service;->a:Landroid/content/Intent;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 15
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->I(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Lccc71/bmw/lib/bmw_widget;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 16
    :cond_0
    sget-object v2, Lccc71/bmw/lib/bmw_service;->a:Landroid/content/Intent;

    if-eqz v2, :cond_2

    invoke-static {}, Lccc71/bmw/lib/bmw_watcher;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lccc71/bmw/lib/bmw_scheduler;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 23
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 16
    goto :goto_0

    .line 23
    :cond_3
    sget-object v2, Lccc71/bmw/lib/bmw_service;->a:Landroid/content/Intent;

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 28
    sget-object v0, Lccc71/bmw/lib/bmw_service;->a:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lccc71/bmw/lib/bmw_service;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object v0, Lccc71/bmw/lib/bmw_service;->a:Landroid/content/Intent;

    .line 31
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lccc71/bmw/lib/bmw_service;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 32
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 36
    sget-object v0, Lccc71/bmw/lib/bmw_service;->a:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 38
    sget-object v0, Lccc71/bmw/lib/bmw_service;->a:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_0
    const-string v0, "battery_widget_monitor"

    const-string v1, "StopService - service not running!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 49
    const-string v0, "battery_widget_monitor"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    sget-object v0, Lccc71/bmw/lib/bmw_service;->a:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lccc71/bmw/lib/bmw_service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 57
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lccc71/bmw/lib/bmw_service;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object v1, Lccc71/bmw/lib/bmw_service;->a:Landroid/content/Intent;

    .line 59
    invoke-static {v0}, Lccc71/bmw/lib/bmw_watcher;->b(Landroid/content/Context;)V

    .line 60
    invoke-static {v0}, Lccc71/bmw/lib/bmw_scheduler;->a(Landroid/content/Context;)V

    .line 63
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 64
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 93
    const-string v0, "battery_widget_monitor"

    const-string v1, "bmw_service - onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 97
    invoke-static {p0}, Lccc71/bmw/lib/bmw_watcher;->c(Landroid/content/Context;)V

    .line 98
    invoke-static {}, Lccc71/bmw/lib/bmw_scheduler;->b()V

    .line 99
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 69
    const-string v0, "battery_widget_monitor"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {p0}, Lccc71/bmw/lib/bmw_service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 73
    invoke-static {v0}, Lccc71/bmw/lib/bmw_watcher;->b(Landroid/content/Context;)V

    .line 74
    invoke-static {v0}, Lccc71/bmw/lib/bmw_scheduler;->a(Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    const-string v0, "battery_widget_monitor"

    const-string v1, "onStartCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {p0}, Lccc71/bmw/lib/bmw_service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 84
    invoke-static {v0}, Lccc71/bmw/lib/bmw_watcher;->b(Landroid/content/Context;)V

    .line 85
    invoke-static {v0}, Lccc71/bmw/lib/bmw_scheduler;->a(Landroid/content/Context;)V

    .line 87
    const/4 v0, 0x1

    return v0
.end method
