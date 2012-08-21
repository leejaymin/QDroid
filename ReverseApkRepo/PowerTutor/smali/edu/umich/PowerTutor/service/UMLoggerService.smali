.class public Ledu/umich/PowerTutor/service/UMLoggerService;
.super Landroid/app/Service;
.source "UMLoggerService.java"


# static fields
.field private static final NOTIFICATION_ID:I = 0x1

.field private static final NOTIFICATION_ID_LETTER:I = 0x2

.field private static final TAG:Ljava/lang/String; = "UMLoggerService"


# instance fields
.field private final binder:Ledu/umich/PowerTutor/service/ICounterService$Stub;

.field broadcastIntentReceiver:Landroid/content/BroadcastReceiver;

.field private estimatorThread:Ljava/lang/Thread;

.field private notification:Landroid/app/Notification;

.field private notificationManager:Landroid/app/NotificationManager;

.field phoneListener:Landroid/telephony/PhoneStateListener;

.field private phoneManager:Landroid/telephony/TelephonyManager;

.field private powerEstimator:Ledu/umich/PowerTutor/service/PowerEstimator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 239
    new-instance v0, Ledu/umich/PowerTutor/service/UMLoggerService$1;

    invoke-direct {v0, p0}, Ledu/umich/PowerTutor/service/UMLoggerService$1;-><init>(Ledu/umich/PowerTutor/service/UMLoggerService;)V

    iput-object v0, p0, Ledu/umich/PowerTutor/service/UMLoggerService;->binder:Ledu/umich/PowerTutor/service/ICounterService$Stub;

    .line 288
    new-instance v0, Ledu/umich/PowerTutor/service/UMLoggerService$2;

    invoke-direct {v0, p0}, Ledu/umich/PowerTutor/service/UMLoggerService$2;-><init>(Ledu/umich/PowerTutor/service/UMLoggerService;)V

    iput-object v0, p0, Ledu/umich/PowerTutor/service/UMLoggerService;->broadcastIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 324
    new-instance v0, Ledu/umich/PowerTutor/service/UMLoggerService$3;

    invoke-direct {v0, p0}, Ledu/umich/PowerTutor/service/UMLoggerService$3;-><init>(Ledu/umich/PowerTutor/service/UMLoggerService;)V

    iput-object v0, p0, Ledu/umich/PowerTutor/service/UMLoggerService;->phoneListener:Landroid/telephony/PhoneStateListener;

    .line 51
    return-void
.end method

.method static synthetic access$0(Ledu/umich/PowerTutor/service/UMLoggerService;)Ledu/umich/PowerTutor/service/PowerEstimator;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Ledu/umich/PowerTutor/service/UMLoggerService;->powerEstimator:Ledu/umich/PowerTutor/service/PowerEstimator;

    return-object v0
.end method

.method static synthetic access$1(Ledu/umich/PowerTutor/service/UMLoggerService;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Ledu/umich/PowerTutor/service/UMLoggerService;->phoneManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 67
    iget-object v0, p0, Ledu/umich/PowerTutor/service/UMLoggerService;->binder:Ledu/umich/PowerTutor/service/ICounterService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 72
    new-instance v1, Ledu/umich/PowerTutor/service/PowerEstimator;

    invoke-direct {v1, p0}, Ledu/umich/PowerTutor/service/PowerEstimator;-><init>(Ledu/umich/PowerTutor/service/UMLoggerService;)V

    iput-object v1, p0, Ledu/umich/PowerTutor/service/UMLoggerService;->powerEstimator:Ledu/umich/PowerTutor/service/PowerEstimator;

    .line 75
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Ledu/umich/PowerTutor/service/UMLoggerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Ledu/umich/PowerTutor/service/UMLoggerService;->phoneManager:Landroid/telephony/TelephonyManager;

    .line 76
    iget-object v1, p0, Ledu/umich/PowerTutor/service/UMLoggerService;->phoneManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Ledu/umich/PowerTutor/service/UMLoggerService;->phoneListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x63

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 82
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 83
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Ledu/umich/PowerTutor/service/UMLoggerService;->broadcastIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Ledu/umich/PowerTutor/service/UMLoggerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 91
    const-string v1, "notification"

    .line 90
    invoke-virtual {p0, v1}, Ledu/umich/PowerTutor/service/UMLoggerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Ledu/umich/PowerTutor/service/UMLoggerService;->notificationManager:Landroid/app/NotificationManager;

    .line 92
    return-void
.end method

.method public onDestroy()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 113
    iget-object v2, p0, Ledu/umich/PowerTutor/service/UMLoggerService;->estimatorThread:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    .line 114
    iget-object v2, p0, Ledu/umich/PowerTutor/service/UMLoggerService;->estimatorThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 115
    :goto_0
    iget-object v2, p0, Ledu/umich/PowerTutor/service/UMLoggerService;->estimatorThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-nez v2, :cond_2

    .line 122
    :cond_0
    iget-object v2, p0, Ledu/umich/PowerTutor/service/UMLoggerService;->broadcastIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Ledu/umich/PowerTutor/service/UMLoggerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 126
    const/4 v0, 0x0

    .line 128
    .local v0, foregroundSet:Z
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "stopForeground"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    .line 129
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    .line 128
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 130
    .local v1, stopForeground:Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 131
    const/4 v0, 0x1

    .line 136
    .end local v1           #stopForeground:Ljava/lang/reflect/Method;
    :goto_1
    if-nez v0, :cond_1

    .line 138
    iget-object v2, p0, Ledu/umich/PowerTutor/service/UMLoggerService;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v7}, Landroid/app/NotificationManager;->cancel(I)V

    .line 141
    :cond_1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 142
    return-void

    .line 117
    .end local v0           #foregroundSet:Z
    :cond_2
    :try_start_1
    iget-object v2, p0, Ledu/umich/PowerTutor/service/UMLoggerService;->estimatorThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 118
    :catch_0
    move-exception v2

    goto :goto_0

    .line 134
    .restart local v0       #foregroundSet:Z
    :catch_1
    move-exception v2

    goto :goto_1

    .line 133
    :catch_2
    move-exception v2

    goto :goto_1

    .line 132
    :catch_3
    move-exception v2

    goto :goto_1
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 96
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 99
    const-string v0, "stop"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {p0}, Ledu/umich/PowerTutor/service/UMLoggerService;->stopSelf()V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Ledu/umich/PowerTutor/service/UMLoggerService;->estimatorThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 105
    invoke-virtual {p0}, Ledu/umich/PowerTutor/service/UMLoggerService;->showNotification()V

    .line 106
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Ledu/umich/PowerTutor/service/UMLoggerService;->powerEstimator:Ledu/umich/PowerTutor/service/PowerEstimator;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Ledu/umich/PowerTutor/service/UMLoggerService;->estimatorThread:Ljava/lang/Thread;

    .line 107
    iget-object v0, p0, Ledu/umich/PowerTutor/service/UMLoggerService;->estimatorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public showNotification()V
    .locals 17

    .prologue
    .line 146
    const v6, 0x7f020003

    .line 149
    .local v6, icon:I
    const-string v9, "PowerTutor"

    .line 150
    .local v9, tickerText:Ljava/lang/CharSequence;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 151
    .local v10, when:J
    invoke-virtual/range {p0 .. p0}, Ledu/umich/PowerTutor/service/UMLoggerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 152
    .local v4, context:Landroid/content/Context;
    const-string v3, "PowerTutor"

    .line 153
    .local v3, contentTitle:Ljava/lang/CharSequence;
    const-string v2, ""

    .line 155
    .local v2, contentText:Ljava/lang/CharSequence;
    new-instance v7, Landroid/content/Intent;

    const-class v12, Ledu/umich/PowerTutor/ui/UMLogger;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 156
    .local v7, notificationIntent:Landroid/content/Intent;
    const-string v12, "isFromIcon"

    const/4 v13, 0x1

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 157
    const/4 v12, 0x0

    .line 159
    const/high16 v13, 0x800

    .line 157
    move-object/from16 v0, p0

    invoke-static {v0, v12, v7, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 163
    .local v1, contentIntent:Landroid/app/PendingIntent;
    new-instance v12, Landroid/app/Notification;

    invoke-direct {v12, v6, v9, v10, v11}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    move-object/from16 v0, p0

    iput-object v12, v0, Ledu/umich/PowerTutor/service/UMLoggerService;->notification:Landroid/app/Notification;

    .line 164
    move-object/from16 v0, p0

    iget-object v12, v0, Ledu/umich/PowerTutor/service/UMLoggerService;->notification:Landroid/app/Notification;

    const/4 v13, 0x2

    iput v13, v12, Landroid/app/Notification;->iconLevel:I

    .line 165
    move-object/from16 v0, p0

    iget-object v12, v0, Ledu/umich/PowerTutor/service/UMLoggerService;->notification:Landroid/app/Notification;

    invoke-virtual {v12, v4, v3, v2, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 177
    const/4 v5, 0x0

    .line 179
    .local v5, foregroundSet:Z
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    const-string v13, "startForeground"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Class;

    const/4 v15, 0x0

    .line 180
    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-class v16, Landroid/app/Notification;

    aput-object v16, v14, v15

    .line 179
    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 181
    .local v8, startForeground:Ljava/lang/reflect/Method;
    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/umich/PowerTutor/service/UMLoggerService;->notification:Landroid/app/Notification;

    aput-object v14, v12, v13

    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    const/4 v5, 0x1

    .line 187
    .end local v8           #startForeground:Ljava/lang/reflect/Method;
    :goto_0
    if-nez v5, :cond_0

    .line 189
    move-object/from16 v0, p0

    iget-object v12, v0, Ledu/umich/PowerTutor/service/UMLoggerService;->notificationManager:Landroid/app/NotificationManager;

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/umich/PowerTutor/service/UMLoggerService;->notification:Landroid/app/Notification;

    invoke-virtual {v12, v13, v14}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 191
    :cond_0
    return-void

    .line 185
    :catch_0
    move-exception v12

    goto :goto_0

    .line 184
    :catch_1
    move-exception v12

    goto :goto_0

    .line 183
    :catch_2
    move-exception v12

    goto :goto_0
.end method

.method public updateNotification(ID)V
    .locals 23
    .parameter "level"
    .parameter "totalPower"

    .prologue
    .line 198
    move-object/from16 v0, p0

    iget-object v12, v0, Ledu/umich/PowerTutor/service/UMLoggerService;->notification:Landroid/app/Notification;

    const v13, 0x7f020003

    iput v13, v12, Landroid/app/Notification;->icon:I

    .line 199
    move-object/from16 v0, p0

    iget-object v12, v0, Ledu/umich/PowerTutor/service/UMLoggerService;->notification:Landroid/app/Notification;

    move/from16 v0, p1

    iput v0, v12, Landroid/app/Notification;->iconLevel:I

    .line 204
    invoke-static {}, Ledu/umich/PowerTutor/util/BatteryStats;->getInstance()Ledu/umich/PowerTutor/util/BatteryStats;

    move-result-object v1

    .line 205
    .local v1, bst:Ledu/umich/PowerTutor/util/BatteryStats;
    invoke-virtual {v1}, Ledu/umich/PowerTutor/util/BatteryStats;->hasCharge()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v1}, Ledu/umich/PowerTutor/util/BatteryStats;->hasVoltage()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 206
    invoke-virtual {v1}, Ledu/umich/PowerTutor/util/BatteryStats;->getCharge()D

    move-result-wide v2

    .line 207
    .local v2, charge:D
    invoke-virtual {v1}, Ledu/umich/PowerTutor/util/BatteryStats;->getVoltage()D

    move-result-wide v10

    .line 208
    .local v10, volt:D
    const-wide/16 v12, 0x0

    cmpl-double v12, v2, v12

    if-lez v12, :cond_0

    const-wide/16 v12, 0x0

    cmpl-double v12, v10, v12

    if-lez v12, :cond_0

    .line 209
    move-object/from16 v0, p0

    iget-object v12, v0, Ledu/umich/PowerTutor/service/UMLoggerService;->notification:Landroid/app/Notification;

    const v13, 0x7f020010

    iput v13, v12, Landroid/app/Notification;->icon:I

    .line 211
    mul-double v12, v2, v10

    const-wide v14, 0x408f400000000000L

    div-double v14, p2, v14

    div-double/2addr v12, v14

    const-wide/high16 v14, 0x404e

    div-double v7, v12, v14

    .line 212
    .local v7, minutes:D
    const-wide v12, 0x404b800000000000L

    cmpg-double v12, v7, v12

    if-gez v12, :cond_1

    .line 213
    move-object/from16 v0, p0

    iget-object v12, v0, Ledu/umich/PowerTutor/service/UMLoggerService;->notification:Landroid/app/Notification;

    .line 214
    const-wide/16 v13, 0x0

    const-wide/high16 v15, 0x4024

    div-double v15, v7, v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->round(D)J

    move-result-wide v15

    const-wide/16 v17, 0x1

    sub-long v15, v15, v17

    invoke-static/range {v13 .. v16}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    long-to-int v13, v13

    add-int/lit8 v13, v13, 0x1

    .line 213
    iput v13, v12, Landroid/app/Notification;->iconLevel:I

    .line 222
    .end local v2           #charge:D
    .end local v7           #minutes:D
    .end local v10           #volt:D
    :cond_0
    :goto_0
    const-string v6, "PowerTutor"

    .line 223
    .local v6, contentTitle:Ljava/lang/CharSequence;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Total Power: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->round(D)J

    move-result-wide v13

    long-to-int v13, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 224
    const-string v13, " mW"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 223
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 229
    .local v5, contentText:Ljava/lang/CharSequence;
    new-instance v9, Landroid/content/Intent;

    const-class v12, Ledu/umich/PowerTutor/ui/UMLogger;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 230
    .local v9, notificationIntent:Landroid/content/Intent;
    const-string v12, "isFromIcon"

    const/4 v13, 0x1

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 231
    const/4 v12, 0x0

    .line 232
    const/4 v13, 0x0

    .line 231
    move-object/from16 v0, p0

    invoke-static {v0, v12, v9, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 233
    .local v4, contentIntent:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v12, v0, Ledu/umich/PowerTutor/service/UMLoggerService;->notification:Landroid/app/Notification;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0, v6, v5, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 235
    move-object/from16 v0, p0

    iget-object v12, v0, Ledu/umich/PowerTutor/service/UMLoggerService;->notificationManager:Landroid/app/NotificationManager;

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/umich/PowerTutor/service/UMLoggerService;->notification:Landroid/app/Notification;

    invoke-virtual {v12, v13, v14}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 236
    return-void

    .line 216
    .end local v4           #contentIntent:Landroid/app/PendingIntent;
    .end local v5           #contentText:Ljava/lang/CharSequence;
    .end local v6           #contentTitle:Ljava/lang/CharSequence;
    .end local v9           #notificationIntent:Landroid/content/Intent;
    .restart local v2       #charge:D
    .restart local v7       #minutes:D
    .restart local v10       #volt:D
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Ledu/umich/PowerTutor/service/UMLoggerService;->notification:Landroid/app/Notification;

    const-wide/16 v13, 0xd

    .line 217
    const-wide/16 v15, 0x6

    const-wide/16 v17, 0x0

    const-wide/high16 v19, 0x404e

    div-double v19, v7, v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->round(D)J

    move-result-wide v19

    const-wide/16 v21, 0x1

    sub-long v19, v19, v21

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v17

    add-long v15, v15, v17

    .line 216
    invoke-static/range {v13 .. v16}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    long-to-int v13, v13

    iput v13, v12, Landroid/app/Notification;->iconLevel:I

    goto :goto_0
.end method
