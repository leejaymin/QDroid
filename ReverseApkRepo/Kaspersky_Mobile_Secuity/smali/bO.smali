.class public final LbO;
.super LbL;
.source "SourceFile"


# instance fields
.field private f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, LbL;-><init>()V

    .line 20
    iput-object p1, p0, LbO;->f:Landroid/content/Context;

    .line 21
    return-void
.end method

.method private b(I)Z
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 137
    invoke-virtual {p0}, LbO;->d()Z

    move-result v0

    .line 139
    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p0}, LbO;->n()V

    .line 145
    :goto_0
    int-to-long v3, p1

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_1
    invoke-virtual {p0}, LbO;->l()Z

    move-result v3

    .line 151
    if-eq v0, v3, :cond_1

    move v0, v1

    .line 152
    :goto_2
    sput-boolean v1, LbO;->b:Z

    .line 153
    sput-boolean v0, LbO;->c:Z

    .line 155
    if-nez v0, :cond_2

    .line 171
    :goto_3
    return v2

    .line 142
    :cond_0
    invoke-virtual {p0}, LbO;->m()V

    goto :goto_0

    .line 146
    :catch_0
    move-exception v3

    .line 147
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_1
    move v0, v2

    .line 151
    goto :goto_2

    .line 160
    :cond_2
    invoke-virtual {p0}, LbO;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 161
    invoke-virtual {p0}, LbO;->m()V

    .line 167
    :goto_4
    int-to-long v2, p1

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_5
    move v2, v1

    .line 171
    goto :goto_3

    .line 163
    :cond_3
    invoke-virtual {p0}, LbO;->n()V

    goto :goto_4

    .line 168
    :catch_1
    move-exception v0

    .line 169
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5
.end method

.method private s()V
    .locals 3

    .prologue
    .line 89
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 90
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.widget.SettingsAppWidgetProvider"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const-string v1, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 94
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 95
    iget-object v1, p0, LbO;->f:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 96
    return-void
.end method

.method private t()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 103
    iget-object v0, p0, LbO;->f:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 104
    invoke-virtual {p0}, LbO;->q()Z

    move-result v3

    .line 107
    if-nez v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_1
    invoke-virtual {p0}, LbO;->q()Z

    move-result v0

    if-eq v3, v0, :cond_1

    .line 133
    :goto_2
    return-void

    :cond_0
    move v1, v2

    .line 107
    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    const-string v0, "KMS"

    const-string v1, "Exception when trying toggle wifi setWifiEnabled failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 118
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 119
    const-string v1, "com.android.settings"

    const-string v3, "com.android.settings.widget.SettingsAppWidgetProvider"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const-string v1, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 123
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 126
    :try_start_1
    iget-object v1, p0, LbO;->f:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 128
    :catch_1
    move-exception v0

    .line 130
    const-string v1, "KMS"

    const-string v2, "Exception when trying toggle wifi"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public final a(I)Z
    .locals 1
    .parameter

    .prologue
    .line 177
    .line 178
    monitor-enter p0

    .line 180
    :try_start_0
    sget-boolean v0, LbO;->b:Z

    if-eqz v0, :cond_0

    .line 181
    sget-boolean v0, LbO;->c:Z

    .line 185
    :goto_0
    monitor-exit p0

    .line 186
    return v0

    .line 183
    :cond_0
    invoke-direct {p0, p1}, LbO;->b(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    goto :goto_0

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final k()Z
    .locals 2

    .prologue
    .line 218
    sget-object v0, LbO;->a:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected final l()Z
    .locals 2

    .prologue
    .line 204
    sget-object v0, LbO;->a:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected final m()V
    .locals 1

    .prologue
    .line 44
    :try_start_0
    invoke-virtual {p0}, LbO;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    invoke-direct {p0}, LbO;->s()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 53
    :catch_1
    move-exception v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public final n()V
    .locals 1

    .prologue
    .line 26
    :try_start_0
    invoke-virtual {p0}, LbO;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    invoke-direct {p0}, LbO;->s()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 35
    :catch_1
    move-exception v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method protected final o()V
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, LbO;->q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-direct {p0}, LbO;->t()V

    .line 82
    :cond_0
    return-void
.end method

.method public final p()V
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, LbO;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, LbO;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-direct {p0}, LbO;->t()V

    .line 69
    :cond_0
    return-void
.end method

.method protected final q()Z
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, LbO;->f:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 211
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    return v0
.end method
