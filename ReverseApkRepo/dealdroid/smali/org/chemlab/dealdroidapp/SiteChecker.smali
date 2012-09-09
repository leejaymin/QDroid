.class public Lorg/chemlab/dealdroidapp/SiteChecker;
.super Landroid/content/BroadcastReceiver;
.source "SiteChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chemlab/dealdroidapp/SiteChecker$SiteCheckerThread;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DealDroid"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private varargs checkSites(Landroid/content/Context;[Lorg/chemlab/dealdroidapp/Site;)V
    .locals 12
    .parameter "context"
    .parameter "sites"

    .prologue
    const/4 v8, 0x0

    .line 131
    const-string v9, "connectivity"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 132
    .local v1, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 134
    .local v3, info:Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 135
    new-instance v2, Lorg/chemlab/dealdroidapp/Database;

    invoke-direct {v2, p1}, Lorg/chemlab/dealdroidapp/Database;-><init>(Landroid/content/Context;)V

    .line 136
    .local v2, db:Lorg/chemlab/dealdroidapp/Database;
    new-instance v7, Ljava/util/EnumMap;

    const-class v9, Lorg/chemlab/dealdroidapp/Site;

    invoke-direct {v7, v9}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 139
    .local v7, sitesToCheck:Ljava/util/Map;,"Ljava/util/Map<Lorg/chemlab/dealdroidapp/Site;Lorg/chemlab/dealdroidapp/Item;>;"
    :try_start_0
    invoke-virtual {v2}, Lorg/chemlab/dealdroidapp/Database;->open()V

    .line 140
    const-string v9, "org.chemlab.dealdroidapp_preferences"

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 141
    .local v5, prefs:Landroid/content/SharedPreferences;
    array-length v9, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-lt v8, v9, :cond_1

    .line 150
    invoke-virtual {v2}, Lorg/chemlab/dealdroidapp/Database;->close()V

    .line 152
    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 153
    new-instance v0, Lorg/chemlab/dealdroidapp/SiteChecker$SiteCheckerThread;

    invoke-direct {v0, p1, v7}, Lorg/chemlab/dealdroidapp/SiteChecker$SiteCheckerThread;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    .line 154
    .local v0, checker:Ljava/lang/Thread;
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 155
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 158
    .end local v0           #checker:Ljava/lang/Thread;
    .end local v2           #db:Lorg/chemlab/dealdroidapp/Database;
    .end local v5           #prefs:Landroid/content/SharedPreferences;
    .end local v7           #sitesToCheck:Ljava/util/Map;,"Ljava/util/Map<Lorg/chemlab/dealdroidapp/Site;Lorg/chemlab/dealdroidapp/Item;>;"
    :cond_0
    return-void

    .line 141
    .restart local v2       #db:Lorg/chemlab/dealdroidapp/Database;
    .restart local v5       #prefs:Landroid/content/SharedPreferences;
    .restart local v7       #sitesToCheck:Ljava/util/Map;,"Ljava/util/Map<Lorg/chemlab/dealdroidapp/Site;Lorg/chemlab/dealdroidapp/Item;>;"
    :cond_1
    :try_start_1
    aget-object v6, p2, v8

    .line 142
    .local v6, site:Lorg/chemlab/dealdroidapp/Site;
    invoke-static {v5, v6}, Lorg/chemlab/dealdroidapp/Preferences;->isEnabled(Landroid/content/SharedPreferences;Lorg/chemlab/dealdroidapp/Site;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 143
    invoke-virtual {v2, v6}, Lorg/chemlab/dealdroidapp/Database;->getCurrentItem(Lorg/chemlab/dealdroidapp/Site;)Lorg/chemlab/dealdroidapp/Item;

    move-result-object v4

    .line 144
    .local v4, oldItem:Lorg/chemlab/dealdroidapp/Item;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lorg/chemlab/dealdroidapp/Item;->getExpiration()Ljava/util/Date;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {v4}, Lorg/chemlab/dealdroidapp/Item;->getExpiration()Ljava/util/Date;

    move-result-object v10

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10, v11}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 145
    :cond_2
    invoke-interface {v7, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    .end local v4           #oldItem:Lorg/chemlab/dealdroidapp/Item;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 149
    .end local v5           #prefs:Landroid/content/SharedPreferences;
    .end local v6           #site:Lorg/chemlab/dealdroidapp/Site;
    :catchall_0
    move-exception v8

    .line 150
    invoke-virtual {v2}, Lorg/chemlab/dealdroidapp/Database;->close()V

    .line 151
    throw v8
.end method

.method private declared-synchronized disable(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 180
    monitor-enter p0

    :try_start_0
    const-string v0, "DealDroid"

    const-string v1, "Stopping DealDroid updater.."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-static {p1}, Lorg/chemlab/dealdroidapp/SiteChecker;->getAlarmManager(Landroid/content/Context;)Landroid/app/AlarmManager;

    move-result-object v0

    invoke-static {p1}, Lorg/chemlab/dealdroidapp/SiteChecker;->getSiteCheckerIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    monitor-exit p0

    return-void

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private disableSite(Landroid/content/Context;Lorg/chemlab/dealdroidapp/Site;)V
    .locals 4
    .parameter "context"
    .parameter "site"

    .prologue
    .line 110
    const-string v1, "DealDroid"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Deleting data for site: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/chemlab/dealdroidapp/Site;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance v0, Lorg/chemlab/dealdroidapp/Database;

    invoke-direct {v0, p1}, Lorg/chemlab/dealdroidapp/Database;-><init>(Landroid/content/Context;)V

    .line 113
    .local v0, db:Lorg/chemlab/dealdroidapp/Database;
    :try_start_0
    invoke-virtual {v0}, Lorg/chemlab/dealdroidapp/Database;->open()V

    .line 114
    invoke-virtual {v0, p2}, Lorg/chemlab/dealdroidapp/Database;->delete(Lorg/chemlab/dealdroidapp/Site;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    invoke-virtual {v0}, Lorg/chemlab/dealdroidapp/Database;->close()V

    .line 118
    const-string v1, "org.chemlab.dealdroidapp_preferences"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1}, Lorg/chemlab/dealdroidapp/Preferences;->getNumSitesEnabled(Landroid/content/SharedPreferences;)I

    move-result v1

    if-nez v1, :cond_0

    .line 119
    const-string v1, "DealDroid"

    const-string v2, "Checking for all sites disabled.  Disabling alarm.."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-direct {p0, p1}, Lorg/chemlab/dealdroidapp/SiteChecker;->disable(Landroid/content/Context;)V

    .line 122
    :cond_0
    return-void

    .line 115
    :catchall_0
    move-exception v1

    .line 116
    invoke-virtual {v0}, Lorg/chemlab/dealdroidapp/Database;->close()V

    .line 117
    throw v1
.end method

.method private declared-synchronized enable(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    .line 165
    monitor-enter p0

    :try_start_0
    const-string v0, "org.chemlab.dealdroidapp_preferences"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 166
    .local v8, prefs:Landroid/content/SharedPreferences;
    invoke-static {v8}, Lorg/chemlab/dealdroidapp/Preferences;->getNumSitesEnabled(Landroid/content/SharedPreferences;)I

    move-result v0

    if-lez v0, :cond_0

    .line 167
    const-string v0, "DealDroid"

    const-string v1, "Starting DealDroid updater.."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-string v0, "check_interval"

    sget-object v1, Lorg/chemlab/dealdroidapp/Interval;->I_10_MINUTES:Lorg/chemlab/dealdroidapp/Interval;

    invoke-virtual {v1}, Lorg/chemlab/dealdroidapp/Interval;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/chemlab/dealdroidapp/Interval;->valueOf(Ljava/lang/String;)Lorg/chemlab/dealdroidapp/Interval;

    move-result-object v7

    .line 170
    .local v7, interval:Lorg/chemlab/dealdroidapp/Interval;
    invoke-static {p1}, Lorg/chemlab/dealdroidapp/SiteChecker;->getAlarmManager(Landroid/content/Context;)Landroid/app/AlarmManager;

    move-result-object v0

    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    invoke-virtual {v7}, Lorg/chemlab/dealdroidapp/Interval;->getMillis()I

    move-result v4

    int-to-long v4, v4

    invoke-static {p1}, Lorg/chemlab/dealdroidapp/SiteChecker;->getSiteCheckerIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    .end local v7           #interval:Lorg/chemlab/dealdroidapp/Interval;
    :goto_0
    monitor-exit p0

    return-void

    .line 172
    :cond_0
    :try_start_1
    const-string v0, "DealDroid"

    const-string v1, "Not starting updater (no sites enabled)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 165
    .end local v8           #prefs:Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static getAlarmManager(Landroid/content/Context;)Landroid/app/AlarmManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 189
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    return-object v0
.end method

.method private static getSiteCheckerIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 197
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/chemlab/dealdroidapp/Intents;->DEALDROID_UPDATE:Lorg/chemlab/dealdroidapp/Intents;

    invoke-virtual {v1}, Lorg/chemlab/dealdroidapp/Intents;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 70
    const-string v2, "org.chemlab.dealdroidapp_preferences"

    invoke-virtual {p1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "app_enabled"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 72
    .local v0, enabled:Z
    sget-object v2, Lorg/chemlab/dealdroidapp/Intents;->DEALDROID_ENABLE:Lorg/chemlab/dealdroidapp/Intents;

    invoke-virtual {v2}, Lorg/chemlab/dealdroidapp/Intents;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 73
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "site"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/chemlab/dealdroidapp/Site;->valueOf(Ljava/lang/String;)Lorg/chemlab/dealdroidapp/Site;

    move-result-object v1

    .line 75
    .local v1, site:Lorg/chemlab/dealdroidapp/Site;
    if-eqz v1, :cond_0

    .line 76
    const-string v2, "org.chemlab.dealdroidapp_preferences"

    invoke-virtual {p1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v2}, Lorg/chemlab/dealdroidapp/Preferences;->getNumSitesEnabled(Landroid/content/SharedPreferences;)I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 77
    invoke-direct {p0, p1}, Lorg/chemlab/dealdroidapp/SiteChecker;->enable(Landroid/content/Context;)V

    .line 104
    .end local v1           #site:Lorg/chemlab/dealdroidapp/Site;
    :cond_0
    :goto_0
    return-void

    .line 79
    .restart local v1       #site:Lorg/chemlab/dealdroidapp/Site;
    :cond_1
    new-array v2, v5, [Lorg/chemlab/dealdroidapp/Site;

    aput-object v1, v2, v4

    invoke-direct {p0, p1, v2}, Lorg/chemlab/dealdroidapp/SiteChecker;->checkSites(Landroid/content/Context;[Lorg/chemlab/dealdroidapp/Site;)V

    goto :goto_0

    .line 83
    .end local v1           #site:Lorg/chemlab/dealdroidapp/Site;
    :cond_2
    sget-object v2, Lorg/chemlab/dealdroidapp/Intents;->DEALDROID_DISABLE:Lorg/chemlab/dealdroidapp/Intents;

    invoke-virtual {v2}, Lorg/chemlab/dealdroidapp/Intents;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 84
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "site"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/chemlab/dealdroidapp/Site;->valueOf(Ljava/lang/String;)Lorg/chemlab/dealdroidapp/Site;

    move-result-object v1

    .line 85
    .restart local v1       #site:Lorg/chemlab/dealdroidapp/Site;
    if-eqz v1, :cond_0

    .line 86
    invoke-direct {p0, p1, v1}, Lorg/chemlab/dealdroidapp/SiteChecker;->disableSite(Landroid/content/Context;Lorg/chemlab/dealdroidapp/Site;)V

    goto :goto_0

    .line 89
    .end local v1           #site:Lorg/chemlab/dealdroidapp/Site;
    :cond_3
    if-eqz v0, :cond_4

    sget-object v2, Lorg/chemlab/dealdroidapp/Intents;->BOOT_INTENT:Lorg/chemlab/dealdroidapp/Intents;

    invoke-virtual {v2}, Lorg/chemlab/dealdroidapp/Intents;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 90
    invoke-direct {p0, p1}, Lorg/chemlab/dealdroidapp/SiteChecker;->disable(Landroid/content/Context;)V

    .line 91
    invoke-direct {p0, p1}, Lorg/chemlab/dealdroidapp/SiteChecker;->enable(Landroid/content/Context;)V

    goto :goto_0

    .line 93
    :cond_4
    sget-object v2, Lorg/chemlab/dealdroidapp/Intents;->DEALDROID_STOP:Lorg/chemlab/dealdroidapp/Intents;

    invoke-virtual {v2}, Lorg/chemlab/dealdroidapp/Intents;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 94
    invoke-direct {p0, p1}, Lorg/chemlab/dealdroidapp/SiteChecker;->disable(Landroid/content/Context;)V

    goto :goto_0

    .line 96
    :cond_5
    sget-object v2, Lorg/chemlab/dealdroidapp/Intents;->DEALDROID_RESTART:Lorg/chemlab/dealdroidapp/Intents;

    invoke-virtual {v2}, Lorg/chemlab/dealdroidapp/Intents;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    sget-object v2, Lorg/chemlab/dealdroidapp/Intents;->DEALDROID_START:Lorg/chemlab/dealdroidapp/Intents;

    invoke-virtual {v2}, Lorg/chemlab/dealdroidapp/Intents;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 97
    :cond_6
    invoke-direct {p0, p1}, Lorg/chemlab/dealdroidapp/SiteChecker;->disable(Landroid/content/Context;)V

    .line 98
    invoke-direct {p0, p1}, Lorg/chemlab/dealdroidapp/SiteChecker;->enable(Landroid/content/Context;)V

    goto :goto_0

    .line 100
    :cond_7
    sget-object v2, Lorg/chemlab/dealdroidapp/Intents;->DEALDROID_UPDATE:Lorg/chemlab/dealdroidapp/Intents;

    invoke-virtual {v2}, Lorg/chemlab/dealdroidapp/Intents;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    invoke-static {}, Lorg/chemlab/dealdroidapp/Site;->values()[Lorg/chemlab/dealdroidapp/Site;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lorg/chemlab/dealdroidapp/SiteChecker;->checkSites(Landroid/content/Context;[Lorg/chemlab/dealdroidapp/Site;)V

    goto/16 :goto_0
.end method
