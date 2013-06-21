.class public Lccc71/utils/phone/receivers/ccc71_screen_receiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static a:Lccc71/utils/phone/a/h;

.field private static b:Ljava/lang/Object;

.field private static c:Lccc71/utils/phone/receivers/ccc71_screen_receiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lccc71/utils/phone/receivers/ccc71_screen_receiver;->b:Ljava/lang/Object;

    .line 15
    sput-object v1, Lccc71/utils/phone/receivers/ccc71_screen_receiver;->c:Lccc71/utils/phone/receivers/ccc71_screen_receiver;

    .line 17
    sput-object v1, Lccc71/utils/phone/receivers/ccc71_screen_receiver;->a:Lccc71/utils/phone/a/h;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 1
    .parameter

    .prologue
    .line 21
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v0

    .line 22
    invoke-virtual {v0, p0}, Lccc71/utils/android/y;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 27
    sget-object v1, Lccc71/utils/phone/receivers/ccc71_screen_receiver;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 29
    :try_start_0
    sget-object v0, Lccc71/utils/phone/receivers/ccc71_screen_receiver;->c:Lccc71/utils/phone/receivers/ccc71_screen_receiver;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 32
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 34
    new-instance v3, Lccc71/utils/phone/receivers/ccc71_screen_receiver;

    invoke-direct {v3}, Lccc71/utils/phone/receivers/ccc71_screen_receiver;-><init>()V

    sput-object v3, Lccc71/utils/phone/receivers/ccc71_screen_receiver;->c:Lccc71/utils/phone/receivers/ccc71_screen_receiver;

    .line 36
    sget-object v3, Lccc71/utils/phone/receivers/ccc71_screen_receiver;->c:Lccc71/utils/phone/receivers/ccc71_screen_receiver;

    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 37
    sget-object v0, Lccc71/utils/phone/receivers/ccc71_screen_receiver;->c:Lccc71/utils/phone/receivers/ccc71_screen_receiver;

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 39
    const-string v0, "process_monitor_widget"

    const-string v2, "Registered ccc71_screen_receiver"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :goto_0
    monitor-exit v1

    return-void

    .line 43
    :cond_0
    const-string v0, "process_monitor_widget"

    const-string v2, "ccc71_screen_receiver already registered, not registering again"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    .line 50
    sget-object v1, Lccc71/utils/phone/receivers/ccc71_screen_receiver;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 52
    :try_start_0
    sget-object v0, Lccc71/utils/phone/receivers/ccc71_screen_receiver;->c:Lccc71/utils/phone/receivers/ccc71_screen_receiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 56
    :try_start_1
    sget-object v0, Lccc71/utils/phone/receivers/ccc71_screen_receiver;->c:Lccc71/utils/phone/receivers/ccc71_screen_receiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 57
    const-string v0, "process_monitor_widget"

    const-string v2, "UNregistered ccc71_screen_receiver"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 63
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    sput-object v0, Lccc71/utils/phone/receivers/ccc71_screen_receiver;->c:Lccc71/utils/phone/receivers/ccc71_screen_receiver;

    .line 50
    :cond_0
    monitor-exit v1

    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 61
    const-string v2, "process_monitor_widget"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not unregister ccc71_screen_receiver "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 73
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    sget-object v0, Lccc71/utils/phone/receivers/ccc71_screen_receiver;->a:Lccc71/utils/phone/a/h;

    .line 76
    if-eqz v0, :cond_0

    .line 77
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccc71/utils/phone/a/h;->d(I)V

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Lccc71/utils/phone/receivers/ccc71_screen_receiver;->a:Lccc71/utils/phone/a/h;

    .line 82
    if-eqz v0, :cond_0

    .line 83
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccc71/utils/phone/a/h;->d(I)V

    goto :goto_0
.end method
