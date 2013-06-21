.class public Lccc71/utils/phone/receivers/ccc71_bt_receiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static a:Lccc71/utils/phone/a/a;

.field private static b:Ljava/lang/Object;

.field private static c:Lccc71/utils/phone/receivers/ccc71_bt_receiver;

.field private static d:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lccc71/utils/phone/receivers/ccc71_bt_receiver;->b:Ljava/lang/Object;

    .line 23
    sput-object v1, Lccc71/utils/phone/receivers/ccc71_bt_receiver;->c:Lccc71/utils/phone/receivers/ccc71_bt_receiver;

    .line 25
    sput-object v1, Lccc71/utils/phone/receivers/ccc71_bt_receiver;->d:Landroid/bluetooth/BluetoothAdapter;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 2

    .prologue
    .line 30
    sget-object v0, Lccc71/utils/phone/receivers/ccc71_bt_receiver;->d:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 31
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    sput-object v0, Lccc71/utils/phone/receivers/ccc71_bt_receiver;->d:Landroid/bluetooth/BluetoothAdapter;

    .line 35
    :cond_0
    sget-object v0, Lccc71/utils/phone/receivers/ccc71_bt_receiver;->d:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccc71/utils/phone/receivers/ccc71_bt_receiver;->a(II)I

    move-result v0

    return v0
.end method

.method private static a(II)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 83
    packed-switch p0, :pswitch_data_0

    .line 114
    const-string v1, "process_monitor_widget"

    const-string v2, "BT unknown state"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :goto_0
    return v0

    .line 88
    :pswitch_0
    const-string v1, "process_monitor_widget"

    const-string v2, "BT (turning) off"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 93
    :pswitch_1
    if-eqz p1, :cond_0

    .line 95
    packed-switch p1, :pswitch_data_1

    .line 110
    :cond_0
    :pswitch_2
    const-string v0, "process_monitor_widget"

    const-string v2, "BT (turning) on"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 111
    goto :goto_0

    .line 100
    :pswitch_3
    const-string v0, "process_monitor_widget"

    const-string v2, "BT (dis)connecting"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 101
    goto :goto_0

    .line 103
    :pswitch_4
    const-string v0, "process_monitor_widget"

    const-string v1, "BT connected"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/4 v0, 0x2

    goto :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 95
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 40
    sget-object v1, Lccc71/utils/phone/receivers/ccc71_bt_receiver;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 42
    :try_start_0
    sget-object v0, Lccc71/utils/phone/receivers/ccc71_bt_receiver;->c:Lccc71/utils/phone/receivers/ccc71_bt_receiver;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 45
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 47
    new-instance v3, Lccc71/utils/phone/receivers/ccc71_bt_receiver;

    invoke-direct {v3}, Lccc71/utils/phone/receivers/ccc71_bt_receiver;-><init>()V

    sput-object v3, Lccc71/utils/phone/receivers/ccc71_bt_receiver;->c:Lccc71/utils/phone/receivers/ccc71_bt_receiver;

    .line 49
    sget-object v3, Lccc71/utils/phone/receivers/ccc71_bt_receiver;->c:Lccc71/utils/phone/receivers/ccc71_bt_receiver;

    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 50
    sget-object v0, Lccc71/utils/phone/receivers/ccc71_bt_receiver;->c:Lccc71/utils/phone/receivers/ccc71_bt_receiver;

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 52
    const-string v0, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Registered ccc71_bt_receiver "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lccc71/utils/phone/receivers/ccc71_bt_receiver;->c:Lccc71/utils/phone/receivers/ccc71_bt_receiver;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :goto_0
    monitor-exit v1

    return-void

    .line 56
    :cond_0
    const-string v0, "process_monitor_widget"

    const-string v2, "ccc71_bt_receiver already registered, not registering again"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    .line 63
    sget-object v1, Lccc71/utils/phone/receivers/ccc71_bt_receiver;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 65
    :try_start_0
    sget-object v0, Lccc71/utils/phone/receivers/ccc71_bt_receiver;->c:Lccc71/utils/phone/receivers/ccc71_bt_receiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 69
    :try_start_1
    sget-object v0, Lccc71/utils/phone/receivers/ccc71_bt_receiver;->c:Lccc71/utils/phone/receivers/ccc71_bt_receiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 70
    const-string v0, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UNregistered ccc71_bt_receiver "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lccc71/utils/phone/receivers/ccc71_bt_receiver;->c:Lccc71/utils/phone/receivers/ccc71_bt_receiver;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 76
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    sput-object v0, Lccc71/utils/phone/receivers/ccc71_bt_receiver;->c:Lccc71/utils/phone/receivers/ccc71_bt_receiver;

    .line 63
    :cond_0
    monitor-exit v1

    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 74
    const-string v2, "process_monitor_widget"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not unregister ccc71_bt_receiver "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lccc71/utils/phone/receivers/ccc71_bt_receiver;->c:Lccc71/utils/phone/receivers/ccc71_bt_receiver;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

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

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 121
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 123
    sget-object v1, Lccc71/utils/phone/receivers/ccc71_bt_receiver;->a:Lccc71/utils/phone/a/a;

    .line 124
    if-eqz v1, :cond_1

    .line 126
    sget-object v2, Lccc71/utils/phone/receivers/ccc71_bt_receiver;->d:Landroid/bluetooth/BluetoothAdapter;

    if-nez v2, :cond_0

    .line 127
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    sput-object v2, Lccc71/utils/phone/receivers/ccc71_bt_receiver;->d:Landroid/bluetooth/BluetoothAdapter;

    .line 129
    :cond_0
    sget-object v2, Lccc71/utils/phone/receivers/ccc71_bt_receiver;->d:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v2, :cond_1

    .line 131
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    sget-object v0, Lccc71/utils/phone/receivers/ccc71_bt_receiver;->d:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lccc71/utils/phone/receivers/ccc71_bt_receiver;->a(II)I

    move-result v0

    invoke-virtual {v1, v0}, Lccc71/utils/phone/a/a;->d(I)V

    .line 142
    :cond_1
    :goto_0
    return-void

    .line 137
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 138
    sget-object v2, Lccc71/utils/phone/receivers/ccc71_bt_receiver;->d:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    invoke-static {v2, v0}, Lccc71/utils/phone/receivers/ccc71_bt_receiver;->a(II)I

    move-result v0

    invoke-virtual {v1, v0}, Lccc71/utils/phone/a/a;->d(I)V

    goto :goto_0
.end method
