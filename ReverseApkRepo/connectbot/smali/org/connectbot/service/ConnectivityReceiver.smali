.class public Lorg/connectbot/service/ConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityReceiver.java"


# instance fields
.field private mIsConnected:Z

.field private mLock:[Ljava/lang/Object;

.field private mLockingWifi:Z

.field private mNetworkRef:I

.field private final mTerminalManager:Lorg/connectbot/service/TerminalManager;

.field private final mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method public constructor <init>(Lorg/connectbot/service/TerminalManager;Z)V
    .locals 7
    .parameter "manager"
    .parameter "lockingWifi"

    .prologue
    const/4 v4, 0x0

    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 24
    iput-boolean v4, p0, Lorg/connectbot/service/ConnectivityReceiver;->mIsConnected:Z

    .line 30
    iput v4, p0, Lorg/connectbot/service/ConnectivityReceiver;->mNetworkRef:I

    .line 34
    new-array v5, v4, [Ljava/lang/Object;

    iput-object v5, p0, Lorg/connectbot/service/ConnectivityReceiver;->mLock:[Ljava/lang/Object;

    .line 37
    iput-object p1, p0, Lorg/connectbot/service/ConnectivityReceiver;->mTerminalManager:Lorg/connectbot/service/TerminalManager;

    .line 40
    const-string v5, "connectivity"

    invoke-virtual {p1, v5}, Lorg/connectbot/service/TerminalManager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 42
    .local v0, cm:Landroid/net/ConnectivityManager;
    const-string v5, "wifi"

    invoke-virtual {p1, v5}, Lorg/connectbot/service/TerminalManager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 43
    .local v3, wm:Landroid/net/wifi/WifiManager;
    const-string v5, "ConnectBot.ConnectivityManager"

    invoke-virtual {v3, v5}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v5

    iput-object v5, p0, Lorg/connectbot/service/ConnectivityReceiver;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 45
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 46
    .local v2, info:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1

    .line 47
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v6, :cond_0

    const/4 v4, 0x1

    :cond_0
    iput-boolean v4, p0, Lorg/connectbot/service/ConnectivityReceiver;->mIsConnected:Z

    .line 50
    :cond_1
    iput-boolean p2, p0, Lorg/connectbot/service/ConnectivityReceiver;->mLockingWifi:Z

    .line 52
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 53
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1, p0, v1}, Lorg/connectbot/service/TerminalManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 55
    return-void
.end method

.method private acquireWifiLockIfNecessaryLocked()V
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lorg/connectbot/service/ConnectivityReceiver;->mLockingWifi:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/connectbot/service/ConnectivityReceiver;->mNetworkRef:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/connectbot/service/ConnectivityReceiver;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lorg/connectbot/service/ConnectivityReceiver;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 140
    :cond_0
    return-void
.end method

.method private releaseWifiLockIfNecessaryLocked()V
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lorg/connectbot/service/ConnectivityReceiver;->mNetworkRef:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/connectbot/service/ConnectivityReceiver;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lorg/connectbot/service/ConnectivityReceiver;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 146
    :cond_0
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/connectbot/service/ConnectivityReceiver;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lorg/connectbot/service/ConnectivityReceiver;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 94
    :cond_0
    iget-object v0, p0, Lorg/connectbot/service/ConnectivityReceiver;->mTerminalManager:Lorg/connectbot/service/TerminalManager;

    invoke-virtual {v0, p0}, Lorg/connectbot/service/TerminalManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 95
    return-void
.end method

.method public decRef()V
    .locals 2

    .prologue
    .line 114
    iget-object v1, p0, Lorg/connectbot/service/ConnectivityReceiver;->mLock:[Ljava/lang/Object;

    monitor-enter v1

    .line 115
    :try_start_0
    iget v0, p0, Lorg/connectbot/service/ConnectivityReceiver;->mNetworkRef:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/connectbot/service/ConnectivityReceiver;->mNetworkRef:I

    .line 117
    invoke-direct {p0}, Lorg/connectbot/service/ConnectivityReceiver;->releaseWifiLockIfNecessaryLocked()V

    .line 114
    monitor-exit v1

    .line 119
    return-void

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public incRef()V
    .locals 2

    .prologue
    .line 102
    iget-object v1, p0, Lorg/connectbot/service/ConnectivityReceiver;->mLock:[Ljava/lang/Object;

    monitor-enter v1

    .line 103
    :try_start_0
    iget v0, p0, Lorg/connectbot/service/ConnectivityReceiver;->mNetworkRef:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/connectbot/service/ConnectivityReceiver;->mNetworkRef:I

    .line 105
    invoke-direct {p0}, Lorg/connectbot/service/ConnectivityReceiver;->acquireWifiLockIfNecessaryLocked()V

    .line 102
    monitor-exit v1

    .line 107
    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lorg/connectbot/service/ConnectivityReceiver;->mIsConnected:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 62
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 65
    const-string v4, "ConnectBot.ConnectivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onReceived() called: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    const-string v5, "noConnectivity"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 70
    .local v3, noConnectivity:Z
    const-string v5, "isFailover"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 72
    .local v2, isFailover:Z
    const-string v5, "ConnectBot.ConnectivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onReceived() called; noConnectivity? "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; isFailover? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    if-eqz v3, :cond_2

    if-nez v2, :cond_2

    iget-boolean v5, p0, Lorg/connectbot/service/ConnectivityReceiver;->mIsConnected:Z

    if-eqz v5, :cond_2

    .line 75
    iput-boolean v4, p0, Lorg/connectbot/service/ConnectivityReceiver;->mIsConnected:Z

    .line 76
    iget-object v4, p0, Lorg/connectbot/service/ConnectivityReceiver;->mTerminalManager:Lorg/connectbot/service/TerminalManager;

    invoke-virtual {v4}, Lorg/connectbot/service/TerminalManager;->onConnectivityLost()V

    goto :goto_0

    .line 77
    :cond_2
    iget-boolean v5, p0, Lorg/connectbot/service/ConnectivityReceiver;->mIsConnected:Z

    if-nez v5, :cond_0

    .line 78
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 79
    const-string v6, "networkInfo"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 78
    check-cast v1, Landroid/net/NetworkInfo;

    .line 81
    .local v1, info:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v6, :cond_3

    const/4 v4, 0x1

    :cond_3
    iput-boolean v4, p0, Lorg/connectbot/service/ConnectivityReceiver;->mIsConnected:Z

    if-eqz v4, :cond_0

    .line 82
    iget-object v4, p0, Lorg/connectbot/service/ConnectivityReceiver;->mTerminalManager:Lorg/connectbot/service/TerminalManager;

    invoke-virtual {v4}, Lorg/connectbot/service/TerminalManager;->onConnectivityRestored()V

    goto :goto_0
.end method

.method public setWantWifiLock(Z)V
    .locals 2
    .parameter "lockingWifi"

    .prologue
    .line 125
    iget-object v1, p0, Lorg/connectbot/service/ConnectivityReceiver;->mLock:[Ljava/lang/Object;

    monitor-enter v1

    .line 126
    :try_start_0
    iput-boolean p1, p0, Lorg/connectbot/service/ConnectivityReceiver;->mLockingWifi:Z

    .line 128
    iget-boolean v0, p0, Lorg/connectbot/service/ConnectivityReceiver;->mLockingWifi:Z

    if-eqz v0, :cond_0

    .line 129
    invoke-direct {p0}, Lorg/connectbot/service/ConnectivityReceiver;->acquireWifiLockIfNecessaryLocked()V

    .line 125
    :goto_0
    monitor-exit v1

    .line 134
    return-void

    .line 131
    :cond_0
    invoke-direct {p0}, Lorg/connectbot/service/ConnectivityReceiver;->releaseWifiLockIfNecessaryLocked()V

    goto :goto_0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
