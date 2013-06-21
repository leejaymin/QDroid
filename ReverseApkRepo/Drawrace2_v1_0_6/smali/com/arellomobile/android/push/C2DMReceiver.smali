.class public Lcom/arellomobile/android/push/C2DMReceiver;
.super Lcom/google/android/c2dm/C2DMBaseReceiver;
.source "C2DMReceiver.java"


# static fields
.field static final TAG:Ljava/lang/String; = "C2DMReceiver"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "psarkimo@gmail.com"

    invoke-direct {p0, v0}, Lcom/google/android/c2dm/C2DMBaseReceiver;-><init>(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method private isAppOnForeground(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 111
    const-string v6, "activity"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 112
    .local v0, activityManager:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 113
    .local v2, appProcesses:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v2, :cond_1

    .line 128
    :cond_0
    :goto_0
    return v5

    .line 118
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 119
    .local v4, packageName:Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 121
    .local v1, appProcess:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v7, 0x64

    if-ne v6, v7, :cond_2

    iget-object v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 124
    const/4 v5, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "errorId"

    .prologue
    .line 42
    const-string v0, "C2DMReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Messaging registration error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-static {p1, p2}, Lcom/arellomobile/android/push/PushEventsTransmitter;->onRegisterError(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method protected onMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 49
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 50
    .local v2, extras:Landroid/os/Bundle;
    if-nez v2, :cond_0

    .line 107
    :goto_0
    return-void

    .line 55
    :cond_0
    const-string v9, "foregroud"

    invoke-direct {p0, p1}, Lcom/arellomobile/android/push/C2DMReceiver;->isAppOnForeground(Landroid/content/Context;)Z

    move-result v10

    invoke-virtual {v2, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 57
    const-string v9, "title"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 58
    .local v7, title:Ljava/lang/String;
    const-string v9, "h"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 59
    .local v8, url:Ljava/lang/String;
    const-string v9, "l"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 62
    .local v3, link:Ljava/lang/String;
    const/4 v6, 0x0

    .line 63
    .local v6, notifyIntent:Landroid/content/Intent;
    if-nez v7, :cond_1

    if-nez v8, :cond_1

    if-nez v3, :cond_1

    .line 65
    new-instance v6, Landroid/content/Intent;

    .end local v6           #notifyIntent:Landroid/content/Intent;
    const-class v9, Lcom/arellomobile/android/push/PushHandlerActivity;

    invoke-direct {v6, p1, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    .restart local v6       #notifyIntent:Landroid/content/Intent;
    const/high16 v9, 0x2000

    invoke-virtual {v6, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 69
    const-string v9, "pushBundle"

    invoke-virtual {v6, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 72
    :cond_1
    if-eqz v3, :cond_3

    .line 75
    new-instance v6, Landroid/content/Intent;

    .end local v6           #notifyIntent:Landroid/content/Intent;
    const-string v9, "android.intent.action.VIEW"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v6, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 76
    .restart local v6       #notifyIntent:Landroid/content/Intent;
    const/high16 v9, 0x1000

    invoke-virtual {v6, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 87
    :goto_1
    const-string v9, "notification"

    invoke-virtual {p0, v9}, Lcom/arellomobile/android/push/C2DMReceiver;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 90
    .local v4, manager:Landroid/app/NotificationManager;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 91
    .local v0, appName:Ljava/lang/CharSequence;
    if-nez v0, :cond_2

    .line 93
    const-string v0, ""

    .line 95
    :cond_2
    new-instance v5, Landroid/app/Notification;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->icon:I

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": new message"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-direct {v5, v9, v10, v11, v12}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 99
    .local v5, notification:Landroid/app/Notification;
    iget v9, v5, Landroid/app/Notification;->flags:I

    or-int/lit8 v9, v9, 0x10

    iput v9, v5, Landroid/app/Notification;->flags:I

    .line 101
    invoke-virtual {p0}, Lcom/arellomobile/android/push/C2DMReceiver;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x0

    const/high16 v11, 0x1000

    invoke-static {v9, v10, v6, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 105
    .local v1, contentIntent:Landroid/app/PendingIntent;
    invoke-virtual {v5, p1, v0, v7, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 106
    const/16 v9, 0x3e9

    invoke-virtual {v4, v9, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 80
    .end local v0           #appName:Ljava/lang/CharSequence;
    .end local v1           #contentIntent:Landroid/app/PendingIntent;
    .end local v4           #manager:Landroid/app/NotificationManager;
    .end local v5           #notification:Landroid/app/Notification;
    :cond_3
    new-instance v6, Landroid/content/Intent;

    .end local v6           #notifyIntent:Landroid/content/Intent;
    const-class v9, Lcom/arellomobile/android/push/PushHandlerActivity;

    invoke-direct {v6, p1, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    .restart local v6       #notifyIntent:Landroid/content/Intent;
    const/high16 v9, 0x2000

    invoke-virtual {v6, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 84
    const-string v9, "pushBundle"

    invoke-virtual {v6, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public onRegistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "registrationId"

    .prologue
    .line 28
    invoke-static {p1, p2}, Lcom/arellomobile/android/push/DeviceRegistrar;->registerWithServer(Landroid/content/Context;Ljava/lang/String;)V

    .line 29
    invoke-static {p1, p2}, Lcom/arellomobile/android/push/PushEventsTransmitter;->onRegistered(Landroid/content/Context;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public onUnregistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "registrationId"

    .prologue
    .line 35
    invoke-static {p1, p2}, Lcom/arellomobile/android/push/DeviceRegistrar;->unregisterWithServer(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    invoke-static {p1, p2}, Lcom/arellomobile/android/push/PushEventsTransmitter;->onUnregistered(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    return-void
.end method
