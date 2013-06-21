.class public Lcom/feelingk/lguiab/manager/net/enc/MwlanStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MwlanStateReceiver.java"


# instance fields
.field private mIsMwlanConnection:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/feelingk/lguiab/manager/net/enc/MwlanStateReceiver;->mIsMwlanConnection:Z

    .line 16
    return-void
.end method


# virtual methods
.method public ismIsMwlanConnection()Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/feelingk/lguiab/manager/net/enc/MwlanStateReceiver;->mIsMwlanConnection:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x1

    const/4 v11, 0x0

    .line 38
    sget-object v7, Lcom/feelingk/lguiab/common/Defines;->MWLAN_ACTION:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    const-string v7, "type"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 43
    .local v5, type:Ljava/lang/String;
    const-string v7, "action"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, action:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[MwlanReceiver] onReceive, type:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", action:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/feelingk/lguiab/util/Logger;->e(Ljava/lang/String;)V

    .line 46
    const-string v7, "notify"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 48
    const-string v7, "value"

    const/4 v8, -0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 49
    .local v6, value:I
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[MwlanReceiver] action: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/feelingk/lguiab/util/Logger;->e(Ljava/lang/String;)V

    .line 51
    packed-switch v6, :pswitch_data_0

    .line 65
    .end local v6           #value:I
    :cond_2
    :goto_1
    const-string v7, "response"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 70
    const-string v7, "isMwlanConnected"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 72
    const-string v7, "value"

    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 73
    .local v6, value:Z
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[MwlanReceiver] isMwlanConnected: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    .local v6, value:I
    :pswitch_0
    const-string v7, "[MwlanReceiver] Mwlan is disconnected."

    invoke-static {v7}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 55
    :pswitch_1
    const-string v7, "[MwlanReceiver] Mwlan is connecting."

    invoke-static {v7}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 57
    :pswitch_2
    const-string v7, "[MwlanReceiver] Mwlan is connected."

    invoke-static {v7}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0, v9}, Lcom/feelingk/lguiab/manager/net/enc/MwlanStateReceiver;->setmIsMwlanConnection(Z)V

    goto :goto_1

    .line 61
    :pswitch_3
    const-string v7, "[MwlanReceiver] Mwlan is not used."

    invoke-static {v7}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 75
    .end local v6           #value:I
    :cond_3
    const-string v7, "getMwlanConnState"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 77
    const-string v7, "value"

    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 78
    .local v4, r:I
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[MwlanReceiver] getMwlanConnState: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 80
    .end local v4           #r:I
    :cond_4
    const-string v7, "getMwlanConnError"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 82
    const-string v7, "value"

    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 83
    .restart local v4       #r:I
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[MwlanReceiver] getMwlanConnError: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/feelingk/lguiab/util/Logger;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 85
    .end local v4           #r:I
    :cond_5
    const-string v7, "startConnectMwlan"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 87
    const-string v7, "value"

    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 88
    .local v4, r:Z
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[MwlanReceiver] startConnectMwlan: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 90
    if-nez v4, :cond_6

    .line 92
    invoke-static {}, Lcom/feelingk/lguiab/util/DateUtil;->getCurrentTime()J

    move-result-wide v2

    .line 93
    .local v2, now:J
    invoke-static {}, Lcom/feelingk/lguiab/manager/net/enc/MwlanManager;->getmTimeOfFirstStartConnect()J

    move-result-wide v7

    const-wide/16 v9, 0x5

    add-long/2addr v7, v9

    cmp-long v7, v2, v7

    if-gez v7, :cond_0

    .line 95
    new-instance v1, Lcom/feelingk/lguiab/manager/net/enc/MwlanManager;

    invoke-direct {v1, p1}, Lcom/feelingk/lguiab/manager/net/enc/MwlanManager;-><init>(Landroid/content/Context;)V

    .line 96
    .local v1, mwlanManager:Lcom/feelingk/lguiab/manager/net/enc/MwlanManager;
    const-string v7, "startConnectMwlan"

    new-array v8, v11, [Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Lcom/feelingk/lguiab/manager/net/enc/MwlanManager;->sendToMwlan(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 100
    .end local v1           #mwlanManager:Lcom/feelingk/lguiab/manager/net/enc/MwlanManager;
    .end local v2           #now:J
    :cond_6
    invoke-virtual {p0, v9}, Lcom/feelingk/lguiab/manager/net/enc/MwlanStateReceiver;->setmIsMwlanConnection(Z)V

    goto/16 :goto_0

    .line 103
    .end local v4           #r:Z
    :cond_7
    const-string v7, "disconnectMwlan"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 105
    const-string v7, "value"

    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 106
    .restart local v4       #r:Z
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[MwlanReceiver] disconnectMwlan: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/feelingk/lguiab/util/Logger;->e(Ljava/lang/String;)V

    .line 107
    if-eqz v4, :cond_0

    .line 108
    invoke-virtual {p0, v11}, Lcom/feelingk/lguiab/manager/net/enc/MwlanStateReceiver;->setmIsMwlanConnection(Z)V

    goto/16 :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public declared-synchronized setmIsMwlanConnection(Z)V
    .locals 1
    .parameter "mIsMwlanConnection"

    .prologue
    .line 32
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/feelingk/lguiab/manager/net/enc/MwlanStateReceiver;->mIsMwlanConnection:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    monitor-exit p0

    return-void

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
