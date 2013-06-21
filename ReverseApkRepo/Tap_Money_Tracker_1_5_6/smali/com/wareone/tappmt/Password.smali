.class public Lcom/wareone/tappmt/Password;
.super Landroid/app/Activity;
.source "Password.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/wareone/tappmt/Password;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wareone/tappmt/Password;->TAG:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/wareone/tappmt/Password;)Lcom/wareone/tappmt/PmtDbAdapter;
    .locals 1
    .parameter

    .prologue
    .line 204
    iget-object v0, p0, Lcom/wareone/tappmt/Password;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    return-object v0
.end method


# virtual methods
.method public isServiceExisted(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 9
    .parameter "className"

    .prologue
    const/4 v8, 0x0

    .line 181
    sget-object v5, Lcom/wareone/tappmt/Password;->TAG:Ljava/lang/String;

    const-string v6, "isServiceExisted -----"

    invoke-static {v5, v6}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Lcom/wareone/tappmt/Password;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 183
    .local v0, activityManager:Landroid/app/ActivityManager;
    const v5, 0x7fffffff

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    .line 184
    .local v3, serviceList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_0

    move-object v5, v8

    .line 201
    :goto_0
    return-object v5

    .line 189
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lt v1, v5, :cond_1

    move-object v5, v8

    .line 201
    goto :goto_0

    .line 191
    :cond_1
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 192
    .local v2, serviceInfo:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v4, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .line 193
    .local v4, serviceName:Landroid/content/ComponentName;
    sget-object v5, Lcom/wareone/tappmt/Password;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "service name -----> "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v4

    .line 197
    goto :goto_0

    .line 189
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/wareone/tappmt/Password;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 37
    .local v5, extra:Landroid/os/Bundle;
    if-eqz v5, :cond_0

    .line 38
    const-string v10, "REMINDER_ID"

    invoke-virtual {v5, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 39
    const-string v10, "notification"

    invoke-virtual {p0, v10}, Lcom/wareone/tappmt/Password;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 40
    .local v8, nm:Landroid/app/NotificationManager;
    const-string v10, "REMINDER_ID"

    invoke-virtual {v5, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 41
    .local v0, _id:J
    sget-object v10, Lcom/wareone/tappmt/Password;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "reminder id ---> "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    long-to-int v10, v0

    invoke-virtual {v8, v10}, Landroid/app/NotificationManager;->cancel(I)V

    .line 47
    .end local v0           #_id:J
    .end local v8           #nm:Landroid/app/NotificationManager;
    :cond_0
    const v10, 0x7f03002e

    invoke-virtual {p0, v10}, Lcom/wareone/tappmt/Password;->setContentView(I)V

    .line 48
    new-instance v10, Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-direct {v10, p0}, Lcom/wareone/tappmt/PmtDbAdapter;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/wareone/tappmt/Password;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    .line 49
    iget-object v10, p0, Lcom/wareone/tappmt/Password;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v10}, Lcom/wareone/tappmt/PmtDbAdapter;->open()Lcom/wareone/tappmt/PmtDbAdapter;

    .line 51
    const-string v10, "TapPMTPrefs"

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/wareone/tappmt/Password;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 52
    .local v9, settings:Landroid/content/SharedPreferences;
    const-string v10, "authorized"

    invoke-interface {v9, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 53
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 54
    .local v4, editor:Landroid/content/SharedPreferences$Editor;
    const-string v10, "authorized"

    const/4 v11, 0x0

    invoke-interface {v4, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 55
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 58
    .end local v4           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    const-string v10, "reminder_service"

    invoke-interface {v9, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 59
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 60
    .restart local v4       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v10, "reminder_service"

    const/4 v11, 0x0

    invoke-interface {v4, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 61
    const-string v10, "before_days"

    const/4 v11, 0x0

    invoke-interface {v4, v10, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 62
    const-string v10, "reminder_time"

    const-string v11, "08:00"

    invoke-interface {v4, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 63
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 66
    .end local v4           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_2
    const-string v10, "authorized"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "trans_max"

    invoke-interface {v9, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 67
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 68
    .restart local v4       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v10, "trans_max"

    iget-object v11, p0, Lcom/wareone/tappmt/Password;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v11}, Lcom/wareone/tappmt/PmtDbAdapter;->getTransactionCount()I

    move-result v11

    add-int/lit16 v11, v11, 0x96

    invoke-interface {v4, v10, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 69
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 72
    .end local v4           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_3
    const-string v10, "reminder_service"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 74
    const-string v10, "com.wareone.tappmt.ReminderService"

    invoke-virtual {p0, v10}, Lcom/wareone/tappmt/Password;->isServiceExisted(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    if-nez v10, :cond_4

    .line 75
    sget-object v10, Lcom/wareone/tappmt/Password;->TAG:Ljava/lang/String;

    const-string v11, "start service "

    invoke-static {v10, v11}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    new-instance v6, Landroid/content/Intent;

    const-class v10, Lcom/wareone/tappmt/ReminderService;

    invoke-direct {v6, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    .local v6, it:Landroid/content/Intent;
    const/high16 v10, 0x1000

    invoke-virtual {v6, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 78
    invoke-virtual {p0, v6}, Lcom/wareone/tappmt/Password;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 82
    .end local v6           #it:Landroid/content/Intent;
    :cond_4
    const-string v10, "SECURITY_ENABLED"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 83
    const-string v10, "PASSWD"

    const-string v11, ""

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 84
    .local v7, md5:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x20

    if-ge v10, v11, :cond_6

    .line 85
    :cond_5
    new-instance v6, Landroid/content/Intent;

    const-class v10, Lcom/wareone/tappmt/Security;

    invoke-direct {v6, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    .restart local v6       #it:Landroid/content/Intent;
    invoke-virtual {p0, v6}, Lcom/wareone/tappmt/Password;->startActivity(Landroid/content/Intent;)V

    .line 88
    invoke-virtual {p0}, Lcom/wareone/tappmt/Password;->finish()V

    .line 106
    .end local v6           #it:Landroid/content/Intent;
    .end local v7           #md5:Ljava/lang/String;
    :cond_6
    :goto_0
    const v10, 0x7f0c0088

    invoke-virtual {p0, v10}, Lcom/wareone/tappmt/Password;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 108
    .local v3, btn_ok:Landroid/widget/Button;
    new-instance v10, Lcom/wareone/tappmt/Password$1;

    invoke-direct {v10, p0, v5}, Lcom/wareone/tappmt/Password$1;-><init>(Lcom/wareone/tappmt/Password;Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {v3, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    const v10, 0x7f0c0011

    invoke-virtual {p0, v10}, Lcom/wareone/tappmt/Password;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 162
    .local v2, btn_cancel:Landroid/widget/Button;
    new-instance v10, Lcom/wareone/tappmt/Password$2;

    invoke-direct {v10, p0}, Lcom/wareone/tappmt/Password$2;-><init>(Lcom/wareone/tappmt/Password;)V

    .line 161
    invoke-virtual {v2, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    return-void

    .line 91
    .end local v2           #btn_cancel:Landroid/widget/Button;
    .end local v3           #btn_ok:Landroid/widget/Button;
    :cond_7
    new-instance v6, Landroid/content/Intent;

    const-class v10, Lcom/wareone/tappmt/TapPMT;

    invoke-direct {v6, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    .restart local v6       #it:Landroid/content/Intent;
    if-eqz v5, :cond_9

    .line 93
    const-string v10, "SOURCE"

    invoke-virtual {v5, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 94
    const-string v10, "SOURCE"

    const-string v11, "SOURCE"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const-string v10, "SOURCE"

    const-string v11, "SOURCE_ID"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-virtual {v6, v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 96
    const-string v10, "SOURCE"

    const-string v11, "AMOUNT"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v11

    invoke-virtual {v6, v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 98
    :cond_8
    const-string v10, "REMINDER_ID"

    invoke-virtual {v5, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 99
    const-string v10, "REMINDER_ID"

    const-string v11, "REMINDER_ID"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-virtual {v6, v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 102
    :cond_9
    invoke-virtual {p0, v6}, Lcom/wareone/tappmt/Password;->startActivity(Landroid/content/Intent;)V

    .line 103
    invoke-virtual {p0}, Lcom/wareone/tappmt/Password;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/wareone/tappmt/Password;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v0}, Lcom/wareone/tappmt/PmtDbAdapter;->close()V

    .line 176
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 177
    return-void
.end method
