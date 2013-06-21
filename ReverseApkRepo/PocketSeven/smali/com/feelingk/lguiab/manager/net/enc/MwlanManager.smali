.class public Lcom/feelingk/lguiab/manager/net/enc/MwlanManager;
.super Ljava/lang/Object;
.source "MwlanManager.java"


# static fields
.field public static final MWLAN_OZSTORE_PID:Ljava/lang/String;

.field private static mTimeOfFirstStartConnect:J


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMwlanStateReceiver:Lcom/feelingk/lguiab/manager/net/enc/MwlanStateReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/feelingk/lguiab/manager/net/enc/MwlanManager;->mTimeOfFirstStartConnect:J

    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 37
    const-string v0, "Q25010002051"

    .line 35
    :goto_0
    sput-object v0, Lcom/feelingk/lguiab/manager/net/enc/MwlanManager;->MWLAN_OZSTORE_PID:Ljava/lang/String;

    .line 23
    return-void

    .line 37
    :cond_0
    const-string v0, "Q25010016731"

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/feelingk/lguiab/manager/net/enc/MwlanManager;->mContext:Landroid/content/Context;

    .line 29
    iput-object v0, p0, Lcom/feelingk/lguiab/manager/net/enc/MwlanManager;->mMwlanStateReceiver:Lcom/feelingk/lguiab/manager/net/enc/MwlanStateReceiver;

    .line 53
    iput-object p1, p0, Lcom/feelingk/lguiab/manager/net/enc/MwlanManager;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method

.method public static getmTimeOfFirstStartConnect()J
    .locals 2

    .prologue
    .line 62
    sget-wide v0, Lcom/feelingk/lguiab/manager/net/enc/MwlanManager;->mTimeOfFirstStartConnect:J

    return-wide v0
.end method

.method public static startUpdateMwlanInOzStore(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 40
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 41
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.lgt.appstore"

    const-string v2, "android.lgt.appstore.ExternalUpdate"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    const-string v1, "PID"

    sget-object v2, Lcom/feelingk/lguiab/manager/net/enc/MwlanManager;->MWLAN_OZSTORE_PID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 44
    return-void
.end method


# virtual methods
.method public androidVersionCheck()Z
    .locals 2

    .prologue
    .line 205
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 207
    const-string v0, "[Mwlan] Android Version SDK >=8 "

    invoke-static {v0}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 208
    const/4 v0, 0x1

    .line 213
    :goto_0
    return v0

    .line 212
    :cond_0
    const-string v0, "[Mwlan] Android Version SDK < 8 "

    invoke-static {v0}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 213
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public connectMwlan()Z
    .locals 5

    .prologue
    .line 140
    const/4 v1, 0x0

    .line 141
    .local v1, count:I
    const/4 v0, 0x0

    .line 142
    .local v0, connect_result:Z
    invoke-virtual {p0}, Lcom/feelingk/lguiab/manager/net/enc/MwlanManager;->registerReceiver()V

    .line 143
    const-string v3, "startConnectMwlan"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/feelingk/lguiab/manager/net/enc/MwlanManager;->sendToMwlan(Ljava/lang/String;[Ljava/lang/String;)V

    .line 146
    :goto_0
    if-nez v0, :cond_0

    const/16 v3, 0xf

    if-lt v1, v3, :cond_1

    .line 154
    :cond_0
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[Mwlan] connectMwlan result:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " try : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/feelingk/lguiab/util/Logger;->i(Ljava/lang/String;)V

    .line 155
    return v0

    .line 147
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/feelingk/lguiab/manager/net/enc/MwlanManager;->mMwlanStateReceiver:Lcom/feelingk/lguiab/manager/net/enc/MwlanStateReceiver;

    invoke-virtual {v3}, Lcom/feelingk/lguiab/manager/net/enc/MwlanStateReceiver;->ismIsMwlanConnection()Z

    move-result v0

    .line 148
    add-int/lit8 v1, v1, 0x1

    .line 149
    const-wide/16 v3, 0x1f4

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public disconnectMwlan()V
    .locals 2

    .prologue
    .line 163
    invoke-static {}, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->dismissProgressDialog()V

    .line 164
    const-string v0, "disconnectMwlan"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/feelingk/lguiab/manager/net/enc/MwlanManager;->sendToMwlan(Ljava/lang/String;[Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Lcom/feelingk/lguiab/manager/net/enc/MwlanManager;->unregisterReceiver()V

    .line 166
    return-void
.end method

.method findFgPkgName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 128
    :try_start_0
    iget-object v3, p0, Lcom/feelingk/lguiab/manager/net/enc/MwlanManager;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 129
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 130
    .local v2, topApp:Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 132
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v2           #topApp:Landroid/app/ActivityManager$RunningTaskInfo;
    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    const-string v3, ""

    goto :goto_0
.end method

.method public getMwlanApiVersion()I
    .locals 2

    .prologue
    .line 240
    const-string v1, "mwlanApiVersion"

    invoke-virtual {p0, v1}, Lcom/feelingk/lguiab/manager/net/enc/MwlanManager;->queryMwlanContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, v:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public isMwlanAvailable()Z
    .locals 2

    .prologue
    .line 175
    const-string v0, "isMwlanAvailable"

    invoke-virtual {p0, v0}, Lcom/feelingk/lguiab/manager/net/enc/MwlanManager;->queryMwlanContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMwlanFullVerInstalled()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 185
    :try_start_0
    iget-object v4, p0, Lcom/feelingk/lguiab/manager/net/enc/MwlanManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 186
    .local v2, pm:Landroid/content/pm/PackageManager;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x8

    if-gt v4, v5, :cond_1

    .line 187
    const-string v4, "com.lguplus.common.wificm"

    :goto_0
    const/4 v5, 0x0

    .line 186
    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 189
    .local v1, pi:Landroid/content/pm/PackageInfo;
    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v5, 0x3

    if-lt v4, v5, :cond_0

    const/4 v3, 0x1

    .line 195
    .end local v1           #pi:Landroid/content/pm/PackageInfo;
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_1
    return v3

    .line 187
    .restart local v2       #pm:Landroid/content/pm/PackageManager;
    :cond_1
    const-string v4, "com.lguplus.common.wificm.mwlan"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 192
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 193
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public queryMwlanContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "apiName"

    .prologue
    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/feelingk/lguiab/manager/net/enc/MwlanManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 229
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-gt v1, v2, :cond_0

    .line 230
    const-string v1, "content://com.lguplus.common.wificm"

    .line 229
    :goto_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 232
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "api_name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "value"

    aput-object v4, v2, v3

    .line 233
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "api_name=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 228
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 234
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 236
    .end local v6           #c:Landroid/database/Cursor;
    :goto_1
    return-object v0

    .line 231
    :cond_0
    const-string v1, "content://com.lguplus.common.wificm.mwlan"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method public declared-synchronized registerReceiver()V
    .locals 3

    .prologue
    .line 97
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/feelingk/lguiab/manager/net/enc/MwlanManager;->mMwlanStateReceiver:Lcom/feelingk/lguiab/manager/net/enc/MwlanStateReceiver;

    if-eqz v1, :cond_0

    .line 98
    const-string v1, "[Mwlan] Receiver was already registered."

    invoke-static {v1}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :goto_0
    monitor-exit p0

    return-void

    .line 101
    :cond_0
    :try_start_1
    new-instance v1, Lcom/feelingk/lguiab/manager/net/enc/MwlanStateReceiver;

    invoke-direct {v1}, Lcom/feelingk/lguiab/manager/net/enc/MwlanStateReceiver;-><init>()V

    iput-object v1, p0, Lcom/feelingk/lguiab/manager/net/enc/MwlanManager;->mMwlanStateReceiver:Lcom/feelingk/lguiab/manager/net/enc/MwlanStateReceiver;

    .line 102
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 103
    .local v0, filter:Landroid/content/IntentFilter;
    sget-object v1, Lcom/feelingk/lguiab/common/Defines;->MWLAN_ACTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    const-string v1, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    const-string v1, "android.lgt.intent.event.INSTALL_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/feelingk/lguiab/manager/net/enc/MwlanManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/feelingk/lguiab/manager/net/enc/MwlanManager;->mMwlanStateReceiver:Lcom/feelingk/lguiab/manager/net/enc/MwlanStateReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 108
    const-string v1, "[Mwlan] Receiver is registered."

    invoke-static {v1}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 97
    .end local v0           #filter:Landroid/content/IntentFilter;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public varargs sendToMwlan(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .parameter "action"
    .parameter "args"

    .prologue
    .line 72
    iget-object v2, p0, Lcom/feelingk/lguiab/manager/net/enc/MwlanManager;->mMwlanStateReceiver:Lcom/feelingk/lguiab/manager/net/enc/MwlanStateReceiver;

    if-nez v2, :cond_0

    .line 74
    const-string v2, "[Mwlan] Receiver is not registered."

    invoke-static {v2}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 90
    :goto_0
    return-void

    .line 78
    :cond_0
    const-string v2, "startConnectMwlan"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    invoke-static {}, Lcom/feelingk/lguiab/util/DateUtil;->getCurrentTime()J

    move-result-wide v2

    sput-wide v2, Lcom/feelingk/lguiab/manager/net/enc/MwlanManager;->mTimeOfFirstStartConnect:J

    .line 82
    :cond_1
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/feelingk/lguiab/common/Defines;->MWLAN_ACTION:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    .local v1, intent:Landroid/content/Intent;
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 84
    const-string v2, "type"

    const-string v3, "request"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const-string v2, "action"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p2

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_2

    .line 89
    iget-object v2, p0, Lcom/feelingk/lguiab/manager/net/enc/MwlanManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 88
    :cond_2
    aget-object v2, p2, v0

    add-int/lit8 v3, v0, 0x1

    aget-object v3, p2, v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    add-int/lit8 v0, v0, 0x2

    goto :goto_1
.end method

.method public declared-synchronized unregisterReceiver()V
    .locals 2

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/feelingk/lguiab/manager/net/enc/MwlanManager;->mMwlanStateReceiver:Lcom/feelingk/lguiab/manager/net/enc/MwlanStateReceiver;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/feelingk/lguiab/manager/net/enc/MwlanManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/feelingk/lguiab/manager/net/enc/MwlanManager;->mMwlanStateReceiver:Lcom/feelingk/lguiab/manager/net/enc/MwlanStateReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/feelingk/lguiab/manager/net/enc/MwlanManager;->mMwlanStateReceiver:Lcom/feelingk/lguiab/manager/net/enc/MwlanStateReceiver;

    .line 120
    const-string v0, "[Mwlan] Receiver is unregistered."

    invoke-static {v0}, Lcom/feelingk/lguiab/util/Logger;->i(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :cond_0
    monitor-exit p0

    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
