.class public Lccc71/utils/phone/receivers/ccc71_wifi_receiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static a:Lccc71/utils/phone/a/j;

.field private static b:Ljava/lang/Object;

.field private static c:Lccc71/utils/phone/receivers/ccc71_wifi_receiver;

.field private static d:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lccc71/utils/phone/receivers/ccc71_wifi_receiver;->b:Ljava/lang/Object;

    .line 16
    sput-object v1, Lccc71/utils/phone/receivers/ccc71_wifi_receiver;->c:Lccc71/utils/phone/receivers/ccc71_wifi_receiver;

    .line 18
    sput-object v1, Lccc71/utils/phone/receivers/ccc71_wifi_receiver;->d:Landroid/net/wifi/WifiManager;

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

.method private static a(I)I
    .locals 2
    .parameter

    .prologue
    .line 78
    packed-switch p0, :pswitch_data_0

    .line 88
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 83
    :pswitch_0
    sget-object v0, Lccc71/utils/phone/receivers/ccc71_wifi_receiver;->d:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 84
    const/4 v0, 0x2

    goto :goto_0

    .line 85
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;)I
    .locals 1
    .parameter

    .prologue
    .line 23
    sget-object v0, Lccc71/utils/phone/receivers/ccc71_wifi_receiver;->d:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 24
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    sput-object v0, Lccc71/utils/phone/receivers/ccc71_wifi_receiver;->d:Landroid/net/wifi/WifiManager;

    .line 26
    :cond_0
    sget-object v0, Lccc71/utils/phone/receivers/ccc71_wifi_receiver;->d:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    invoke-static {v0}, Lccc71/utils/phone/receivers/ccc71_wifi_receiver;->a(I)I

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 31
    sget-object v1, Lccc71/utils/phone/receivers/ccc71_wifi_receiver;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 33
    :try_start_0
    sget-object v0, Lccc71/utils/phone/receivers/ccc71_wifi_receiver;->c:Lccc71/utils/phone/receivers/ccc71_wifi_receiver;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 36
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 38
    new-instance v3, Lccc71/utils/phone/receivers/ccc71_wifi_receiver;

    invoke-direct {v3}, Lccc71/utils/phone/receivers/ccc71_wifi_receiver;-><init>()V

    sput-object v3, Lccc71/utils/phone/receivers/ccc71_wifi_receiver;->c:Lccc71/utils/phone/receivers/ccc71_wifi_receiver;

    .line 40
    sget-object v3, Lccc71/utils/phone/receivers/ccc71_wifi_receiver;->c:Lccc71/utils/phone/receivers/ccc71_wifi_receiver;

    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 41
    sget-object v0, Lccc71/utils/phone/receivers/ccc71_wifi_receiver;->c:Lccc71/utils/phone/receivers/ccc71_wifi_receiver;

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 43
    const-string v0, "process_monitor_widget"

    const-string v2, "Registered ccc71_wifi_receiver"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :goto_0
    monitor-exit v1

    return-void

    .line 47
    :cond_0
    const-string v0, "process_monitor_widget"

    const-string v2, "ccc71_wifi_receiver already registered, not registering again"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    .line 54
    sget-object v1, Lccc71/utils/phone/receivers/ccc71_wifi_receiver;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 56
    :try_start_0
    sget-object v0, Lccc71/utils/phone/receivers/ccc71_wifi_receiver;->c:Lccc71/utils/phone/receivers/ccc71_wifi_receiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 60
    :try_start_1
    sget-object v0, Lccc71/utils/phone/receivers/ccc71_wifi_receiver;->c:Lccc71/utils/phone/receivers/ccc71_wifi_receiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 61
    const-string v0, "process_monitor_widget"

    const-string v2, "UNregistered ccc71_wifi_receiver"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 67
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    sput-object v0, Lccc71/utils/phone/receivers/ccc71_wifi_receiver;->c:Lccc71/utils/phone/receivers/ccc71_wifi_receiver;

    .line 54
    :goto_1
    monitor-exit v1

    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 65
    const-string v2, "process_monitor_widget"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not unregister ccc71_wifi_receiver "

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

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 71
    :cond_0
    :try_start_3
    const-string v0, "process_monitor_widget"

    const-string v2, "Could not unregister WIFI state receiver"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 94
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 96
    sget-object v2, Lccc71/utils/phone/receivers/ccc71_wifi_receiver;->a:Lccc71/utils/phone/a/j;

    .line 97
    if-eqz v2, :cond_1

    .line 99
    sget-object v0, Lccc71/utils/phone/receivers/ccc71_wifi_receiver;->d:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 100
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    sput-object v0, Lccc71/utils/phone/receivers/ccc71_wifi_receiver;->d:Landroid/net/wifi/WifiManager;

    .line 102
    :cond_0
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    sget-object v0, Lccc71/utils/phone/receivers/ccc71_wifi_receiver;->d:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1

    .line 105
    sget-object v0, Lccc71/utils/phone/receivers/ccc71_wifi_receiver;->d:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    invoke-static {v0}, Lccc71/utils/phone/receivers/ccc71_wifi_receiver;->a(I)I

    move-result v0

    invoke-virtual {v2, v0}, Lccc71/utils/phone/a/j;->d(I)V

    .line 121
    :cond_1
    :goto_0
    return-void

    .line 109
    :cond_2
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 110
    if-eqz v0, :cond_4

    .line 112
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 113
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Lccc71/utils/phone/a/j;->d(I)V

    goto :goto_0

    .line 115
    :cond_3
    invoke-virtual {v2, v3}, Lccc71/utils/phone/a/j;->d(I)V

    goto :goto_0

    .line 118
    :cond_4
    invoke-virtual {v2, v3}, Lccc71/utils/phone/a/j;->d(I)V

    goto :goto_0
.end method
