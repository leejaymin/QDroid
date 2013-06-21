.class public Lcom/inmobi/androidsdk/IMSDKUtil;
.super Ljava/lang/Object;
.source "IMSDKUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "3.5.2"

    return-object v0
.end method

.method public static declared-synchronized sendAppTrackerConversion(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 58
    const-class v1, Lcom/inmobi/androidsdk/IMSDKUtil;

    monitor-enter v1

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 59
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "Arguments cannot be null."

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 62
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Advertiser ID cannot be empty."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_2
    const-string v0, "InMobi_Prefs_key"

    const/4 v2, 0x0

    .line 66
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 68
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 69
    const-string v3, "InMobi_Prefs_key"

    .line 70
    const/4 v4, 0x0

    .line 69
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    if-nez v0, :cond_4

    .line 73
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 74
    const-string v0, "InMobiAndroidSDK_3.5.2"

    .line 75
    const-string v3, "App tracker ping is not sent. Sending now..."

    .line 74
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_3
    new-instance v0, Lcom/inmobi/androidsdk/IMSDKUtil$1;

    invoke-direct {v0, p0, p1, v2}, Lcom/inmobi/androidsdk/IMSDKUtil$1;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    .line 92
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/IMSDKUtil$1;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    :cond_4
    monitor-exit v1

    return-void
.end method

.method public static setLogLevel(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 25
    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    .line 26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 27
    const-string v1, "Currently, log level can only be 0 or 1"

    .line 26
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_0
    if-nez p0, :cond_2

    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    .line 34
    :cond_1
    :goto_0
    return-void

    .line 31
    :cond_2
    if-ne p0, v0, :cond_1

    .line 32
    sput-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    goto :goto_0
.end method
