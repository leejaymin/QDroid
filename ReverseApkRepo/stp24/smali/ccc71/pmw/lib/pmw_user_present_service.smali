.class public Lccc71/pmw/lib/pmw_user_present_service;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static a:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lccc71/pmw/lib/pmw_user_present_service;->a:Landroid/content/Intent;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 47
    sget-object v0, Lccc71/pmw/lib/pmw_user_present_service;->a:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lccc71/pmw/lib/pmw_user_present_service;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object v0, Lccc71/pmw/lib/pmw_user_present_service;->a:Landroid/content/Intent;

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lccc71/pmw/lib/pmw_user_present_service;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 53
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Z)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 19
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 21
    if-nez p1, :cond_0

    .line 23
    const-string v1, "process_monitor_widget"

    const-string v2, "Enabling user present"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lccc71/pmw/lib/pmw_user_present;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0, v0}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 27
    invoke-static {p0}, Lccc71/pmw/lib/pmw_service;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 28
    invoke-static {p0}, Lccc71/pmw/lib/pmw_service;->b(Landroid/content/Context;)V

    .line 41
    :cond_0
    :goto_0
    return v0

    .line 35
    :cond_1
    const-string v1, "process_monitor_widget"

    const-string v2, "Disabling user present and service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lccc71/pmw/lib/pmw_user_present;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3, v0}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 39
    invoke-static {p0}, Lccc71/pmw/lib/pmw_service;->c(Landroid/content/Context;)V

    .line 41
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 57
    sget-object v0, Lccc71/pmw/lib/pmw_user_present_service;->a:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Lccc71/pmw/lib/pmw_user_present_service;->a:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 60
    const/4 v0, 0x0

    sput-object v0, Lccc71/pmw/lib/pmw_user_present_service;->a:Landroid/content/Intent;

    .line 62
    :cond_0
    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 92
    new-instance v0, Lccc71/pmw/lib/pl;

    invoke-direct {v0, p0, p1}, Lccc71/pmw/lib/pl;-><init>(Lccc71/pmw/lib/pmw_user_present_service;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 153
    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pl;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    .line 154
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 81
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 82
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_user_present_service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_user_present_service;->c(Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_user_present_service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_user_present_service;->c(Landroid/content/Context;)V

    .line 75
    const/4 v0, 0x1

    return v0
.end method
