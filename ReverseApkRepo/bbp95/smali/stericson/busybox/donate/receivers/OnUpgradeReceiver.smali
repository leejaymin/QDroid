.class public Lstericson/busybox/donate/receivers/OnUpgradeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OnUpgradeReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 25
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 27
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "stericson.busybox.donate"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 29
    const/4 v12, 0x0

    .line 30
    .local v12, blowout:Z
    if-eqz v12, :cond_0

    .line 32
    new-instance v4, Lstericson/busybox/donate/services/PreferenceService;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lstericson/busybox/donate/services/PreferenceService;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lstericson/busybox/donate/services/PreferenceService;->setDeleteDatabase(Z)V

    .line 34
    new-instance v22, Lstericson/busybox/donate/receivers/OnUpgradeReceiver$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lstericson/busybox/donate/receivers/OnUpgradeReceiver$1;-><init>(Lstericson/busybox/donate/receivers/OnUpgradeReceiver;Landroid/content/Context;)V

    .line 47
    .local v22, t:Ljava/lang/Thread;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Thread;->start()V

    .line 50
    .end local v22           #t:Ljava/lang/Thread;
    :cond_0
    const-string v4, "BusyBox"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    .line 52
    .local v21, sp:Landroid/content/SharedPreferences;
    sget v4, Lstericson/busybox/donate/Constants;->updateType:I

    if-eqz v4, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "stericson.busybox.donate"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 55
    const-string v23, ""

    .line 56
    .local v23, ticker:Ljava/lang/String;
    const-string v24, "Update!"

    .line 58
    .local v24, title:Ljava/lang/String;
    const-string v4, "auto-update"

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 60
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lstericson/busybox/donate/Common;->findBusyBoxLocations(ZZ)[Ljava/lang/String;

    move-result-object v15

    .line 61
    .local v15, locations:[Ljava/lang/String;
    array-length v4, v15

    if-lez v4, :cond_4

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lstericson/busybox/donate/Common;->findBusyBoxLocations(ZZ)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v14, v4, v5

    .line 63
    .local v14, location:Ljava/lang/String;
    :goto_0
    if-eqz v14, :cond_1

    const-string v4, ""

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 64
    :cond_1
    const-string v14, "/system/bin"

    .line 66
    :cond_2
    new-instance v4, Lstericson/busybox/donate/jobs/Install;

    invoke-direct {v4}, Lstericson/busybox/donate/jobs/Install;-><init>()V

    const/4 v6, 0x0

    sget-object v7, Lstericson/busybox/donate/Constants;->newest:Ljava/lang/String;

    if-nez v14, :cond_5

    const-string v8, "/system/bin"

    :goto_1
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v11}, Lstericson/busybox/donate/jobs/Install;->install(Landroid/content/Context;Lstericson/busybox/donate/jobs/InstallJob;Ljava/lang/String;Ljava/lang/String;ZZZ)Lstericson/busybox/donate/domain/Result;

    move-result-object v20

    .line 68
    .local v20, result:Lstericson/busybox/donate/domain/Result;
    invoke-virtual/range {v20 .. v20}, Lstericson/busybox/donate/domain/Result;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 70
    const-string v24, "Success!"

    .line 71
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Updated/Installed "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lstericson/busybox/donate/Constants;->newest:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 95
    .end local v14           #location:Ljava/lang/String;
    .end local v15           #locations:[Ljava/lang/String;
    .end local v20           #result:Lstericson/busybox/donate/domain/Result;
    :goto_2
    const-string v19, "notification"

    .line 96
    .local v19, ns:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/NotificationManager;

    .line 98
    .local v16, mNotificationManager:Landroid/app/NotificationManager;
    new-instance v17, Landroid/app/Notification;

    invoke-direct/range {v17 .. v17}, Landroid/app/Notification;-><init>()V

    .line 99
    .local v17, notification:Landroid/app/Notification;
    const v4, 0x7f02001a

    move-object/from16 v0, v17

    iput v4, v0, Landroid/app/Notification;->icon:I

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, v17

    iput-wide v4, v0, Landroid/app/Notification;->when:J

    .line 102
    new-instance v18, Landroid/content/Intent;

    const-class v4, Lstericson/busybox/donate/Activity/MainActivity;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    .local v18, notificationIntent:Landroid/content/Intent;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v4, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 105
    .local v13, contentIntent:Landroid/app/PendingIntent;
    move-object/from16 v0, v17

    iput-object v13, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 107
    move-object/from16 v0, v17

    iget v4, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x10

    move-object/from16 v0, v17

    iput v4, v0, Landroid/app/Notification;->flags:I

    .line 109
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3, v13}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 112
    const/4 v4, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 115
    .end local v12           #blowout:Z
    .end local v13           #contentIntent:Landroid/app/PendingIntent;
    .end local v16           #mNotificationManager:Landroid/app/NotificationManager;
    .end local v17           #notification:Landroid/app/Notification;
    .end local v18           #notificationIntent:Landroid/content/Intent;
    .end local v19           #ns:Ljava/lang/String;
    .end local v21           #sp:Landroid/content/SharedPreferences;
    .end local v23           #ticker:Ljava/lang/String;
    .end local v24           #title:Ljava/lang/String;
    :cond_3
    return-void

    .line 61
    .restart local v12       #blowout:Z
    .restart local v15       #locations:[Ljava/lang/String;
    .restart local v21       #sp:Landroid/content/SharedPreferences;
    .restart local v23       #ticker:Ljava/lang/String;
    .restart local v24       #title:Ljava/lang/String;
    :cond_4
    const-string v14, ""

    goto/16 :goto_0

    .restart local v14       #location:Ljava/lang/String;
    :cond_5
    move-object v8, v14

    .line 66
    goto :goto_1

    .line 75
    .restart local v20       #result:Lstericson/busybox/donate/domain/Result;
    :cond_6
    const-string v24, "Failed"

    .line 76
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Update/Install of "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lstericson/busybox/donate/Constants;->newest:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    goto :goto_2

    .line 81
    .end local v14           #location:Ljava/lang/String;
    .end local v15           #locations:[Ljava/lang/String;
    .end local v20           #result:Lstericson/busybox/donate/domain/Result;
    :cond_7
    sget v4, Lstericson/busybox/donate/Constants;->updateType:I

    packed-switch v4, :pswitch_data_0

    goto :goto_2

    .line 84
    :pswitch_0
    const-string v23, "Update available for BusyBox binary!"

    .line 85
    goto :goto_2

    .line 87
    :pswitch_1
    const-string v23, "New BusyBox binary available!"

    .line 88
    goto :goto_2

    .line 90
    :pswitch_2
    const-string v23, "New binary and updates available!"

    goto :goto_2

    .line 81
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
