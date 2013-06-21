.class public Lcom/chillingo/crystal/http/Reachability;
.super Landroid/content/BroadcastReceiver;


# static fields
.field public static final KNotification:Ljava/lang/String; = "Reachability"


# instance fields
.field private _context:Landroid/content/Context;

.field private _status:Lcom/chillingo/crystal/http/ReachabilityStatus;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    sget-object v0, Lcom/chillingo/crystal/http/ReachabilityStatus;->NoConnection:Lcom/chillingo/crystal/http/ReachabilityStatus;

    iput-object v0, p0, Lcom/chillingo/crystal/http/Reachability;->_status:Lcom/chillingo/crystal/http/ReachabilityStatus;

    iput-object p1, p0, Lcom/chillingo/crystal/http/Reachability;->_context:Landroid/content/Context;

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "Crystal"

    const-string v1, "Reachability - Registering broadcast receiver"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "Crystal"

    const-string v1, "Reachability - Unregister broadcast receiver"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/chillingo/crystal/http/Reachability;->_context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v1, :cond_0

    const-string v0, "Crystal"

    const-string v3, "Reachability - Received network change notification"

    invoke-static {v0, v3}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "noConnectivity"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v1, :cond_1

    const-string v0, "Crystal"

    const-string v2, "Reachability - Network connection lost"

    invoke-static {v0, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/chillingo/crystal/http/ReachabilityStatus;->NoConnection:Lcom/chillingo/crystal/http/ReachabilityStatus;

    iput-object v0, p0, Lcom/chillingo/crystal/http/Reachability;->_status:Lcom/chillingo/crystal/http/ReachabilityStatus;

    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/chillingo/crystal/NotificationCentre;->sharedInstance()Lcom/chillingo/crystal/NotificationCentre;

    move-result-object v0

    const-string v1, "Reachability"

    iget-object v2, p0, Lcom/chillingo/crystal/http/Reachability;->_status:Lcom/chillingo/crystal/http/ReachabilityStatus;

    invoke-virtual {v0, v1, v2}, Lcom/chillingo/crystal/NotificationCentre;->raiseNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    :goto_1
    if-ne v0, v1, :cond_b

    if-eq v3, v1, :cond_4

    const/4 v0, 0x6

    if-ne v3, v0, :cond_6

    :cond_4
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v1, :cond_5

    const-string v0, "Crystal"

    const-string v2, "Reachability - Connected to WIFI network"

    invoke-static {v0, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    sget-object v0, Lcom/chillingo/crystal/http/ReachabilityStatus;->Wifi:Lcom/chillingo/crystal/http/ReachabilityStatus;

    iput-object v0, p0, Lcom/chillingo/crystal/http/Reachability;->_status:Lcom/chillingo/crystal/http/ReachabilityStatus;

    move v0, v1

    goto :goto_0

    :cond_6
    if-nez v3, :cond_8

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v1, :cond_7

    const-string v0, "Crystal"

    const-string v2, "Reachability - Connected to mobile network"

    invoke-static {v0, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    sget-object v0, Lcom/chillingo/crystal/http/ReachabilityStatus;->Mobile:Lcom/chillingo/crystal/http/ReachabilityStatus;

    iput-object v0, p0, Lcom/chillingo/crystal/http/Reachability;->_status:Lcom/chillingo/crystal/http/ReachabilityStatus;

    move v0, v1

    goto :goto_0

    :cond_8
    if-ne v3, v4, :cond_a

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v1, :cond_9

    const-string v0, "Crystal"

    const-string v2, "Reachability - No Connection"

    invoke-static {v0, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    sget-object v0, Lcom/chillingo/crystal/http/ReachabilityStatus;->NoConnection:Lcom/chillingo/crystal/http/ReachabilityStatus;

    iput-object v0, p0, Lcom/chillingo/crystal/http/Reachability;->_status:Lcom/chillingo/crystal/http/ReachabilityStatus;

    move v0, v1

    goto :goto_0

    :cond_a
    move v0, v2

    goto :goto_0

    :cond_b
    move v0, v1

    goto :goto_0

    :cond_c
    move v0, v2

    move v3, v4

    goto :goto_1
.end method

.method public status()Lcom/chillingo/crystal/http/ReachabilityStatus;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/http/Reachability;->_status:Lcom/chillingo/crystal/http/ReachabilityStatus;

    return-object v0
.end method
