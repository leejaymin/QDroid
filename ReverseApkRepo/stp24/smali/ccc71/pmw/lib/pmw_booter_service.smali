.class public Lccc71/pmw/lib/pmw_booter_service;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static a:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lccc71/pmw/lib/pmw_booter_service;->a:Landroid/content/Intent;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static a()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "rm "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lccc71/pmw/a/ah;->n:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "rm "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lccc71/pmw/a/ah;->m:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    new-instance v0, Lccc71/pmw/b/h;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    move-object v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lccc71/pmw/b/h;-><init>(Ljava/lang/String;Landroid/os/Handler;ZLjava/lang/Object;ZZ)V

    .line 303
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 53
    sget-object v0, Lccc71/pmw/lib/pmw_booter_service;->a:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lccc71/pmw/lib/pmw_booter_service;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object v0, Lccc71/pmw/lib/pmw_booter_service;->a:Landroid/content/Intent;

    .line 56
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lccc71/pmw/lib/pmw_booter_service;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 57
    return-void
.end method

.method public static a(Landroid/content/Context;Z)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 31
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 33
    if-nez p1, :cond_0

    .line 35
    const-string v1, "process_monitor_widget"

    const-string v2, "Enabling boot completed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lccc71/pmw/lib/pmw_booter;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0, v0}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 46
    :cond_0
    :goto_0
    return v0

    .line 43
    :cond_1
    const-string v1, "process_monitor_widget"

    const-string v2, "Disabling boot completed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lccc71/pmw/lib/pmw_booter;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3, v0}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 46
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 61
    sget-object v0, Lccc71/pmw/lib/pmw_booter_service;->a:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lccc71/pmw/lib/pmw_booter_service;->a:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 64
    const/4 v0, 0x0

    sput-object v0, Lccc71/pmw/lib/pmw_booter_service;->a:Landroid/content/Intent;

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    const-string v0, "process_monitor_widget"

    const-string v1, "StopService - service not running!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private c(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 100
    new-instance v0, Lccc71/pmw/lib/ea;

    invoke-direct {v0, p0, p1}, Lccc71/pmw/lib/ea;-><init>(Lccc71/pmw/lib/pmw_booter_service;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 294
    invoke-virtual {v0, v1}, Lccc71/pmw/lib/ea;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    .line 295
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 89
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 90
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_booter_service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_booter_service;->c(Landroid/content/Context;)V

    .line 76
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_booter_service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_booter_service;->c(Landroid/content/Context;)V

    .line 83
    const/4 v0, 0x1

    return v0
.end method
