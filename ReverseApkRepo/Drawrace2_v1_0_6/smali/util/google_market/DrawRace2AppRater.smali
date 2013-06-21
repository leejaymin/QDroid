.class public Lutil/google_market/DrawRace2AppRater;
.super Ljava/lang/Object;
.source "DrawRace2AppRater.java"


# static fields
.field private static final DAYS_UNTIL_PROMPT:I = 0x0

.field public static final EVENT_TYPE_LAUNCH:I = 0x0

.field public static final EVENT_TYPE_SIG_EVENT:I = 0x1

.field private static final LAUNCHES_UNTIL_PROMPT:I = 0x0

.field private static final PREF_APPRATER:Ljava/lang/String; = "apprate_p_d000"

.field private static final PREF_ITEM_DONT_SHOW_AGAIN:Ljava/lang/String; = "apprate_p_i_d000"

.field private static final PREF_ITEM_FIRST_LAUNCH:Ljava/lang/String; = "apprate_p_i_d002"

.field private static final PREF_ITEM_LAUNCH_COUNT:Ljava/lang/String; = "apprate_p_i_d001"

.field private static final PREF_ITEM_PROMPTED:Ljava/lang/String; = "apprate_p_i_d003"

.field private static final PREF_ITEM_SIG_EVENTS_LEFT:Ljava/lang/String; = "apprate_p_i_d004"

.field private static final SIG_EVENTS_UNTIL_PROMPT:I = 0x16

.field private static final SIG_EVENTS_UNTIL_PROMPT_2:I = 0x2e

.field private static smActivity:Landroid/app/Activity;

.field private static smLaunched:Z

.field private static smMarketAppURL:Ljava/lang/String;

.field private static smPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lutil/google_market/DrawRace2AppRater;->smActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static dontShowDialogAgain()V
    .locals 3

    .prologue
    .line 105
    sget-object v1, Lutil/google_market/DrawRace2AppRater;->smPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 106
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_0

    .line 107
    const-string v1, "apprate_p_i_d000"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 108
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 111
    :cond_0
    return-void
.end method

.method public static initialize(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 38
    sput-object p0, Lutil/google_market/DrawRace2AppRater;->smActivity:Landroid/app/Activity;

    .line 39
    const/4 v0, 0x1

    sput-boolean v0, Lutil/google_market/DrawRace2AppRater;->smLaunched:Z

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "market://details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lutil/google_market/DrawRace2AppRater;->smMarketAppURL:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public static onEvent(I)V
    .locals 15
    .parameter "eventType"

    .prologue
    const/16 v8, 0x2e

    const/4 v14, 0x1

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    .line 53
    sget-object v7, Lutil/google_market/DrawRace2AppRater;->smActivity:Landroid/app/Activity;

    if-nez v7, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    sget-object v7, Lutil/google_market/DrawRace2AppRater;->smActivity:Landroid/app/Activity;

    const-string v9, "apprate_p_d000"

    invoke-virtual {v7, v9, v13}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    sput-object v7, Lutil/google_market/DrawRace2AppRater;->smPrefs:Landroid/content/SharedPreferences;

    .line 56
    sget-object v7, Lutil/google_market/DrawRace2AppRater;->smPrefs:Landroid/content/SharedPreferences;

    const-string v9, "apprate_p_i_d000"

    invoke-interface {v7, v9, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_0

    .line 60
    sget-object v7, Lutil/google_market/DrawRace2AppRater;->smPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 63
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    sget-object v7, Lutil/google_market/DrawRace2AppRater;->smPrefs:Landroid/content/SharedPreferences;

    const-string v9, "apprate_p_i_d001"

    invoke-interface {v7, v9, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 64
    .local v5, launch_count:I
    if-nez p0, :cond_2

    sget-boolean v7, Lutil/google_market/DrawRace2AppRater;->smLaunched:Z

    if-eqz v7, :cond_2

    .line 65
    const-string v7, "apprate_p_i_d001"

    add-int/lit8 v6, v5, 0x1

    .end local v5           #launch_count:I
    .local v6, launch_count:I
    invoke-interface {v0, v7, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move v5, v6

    .line 68
    .end local v6           #launch_count:I
    .restart local v5       #launch_count:I
    :cond_2
    sget-object v7, Lutil/google_market/DrawRace2AppRater;->smPrefs:Landroid/content/SharedPreferences;

    const-string v9, "apprate_p_i_d002"

    invoke-interface {v7, v9, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 69
    .local v2, firstLaunch:J
    cmp-long v7, v2, v11

    if-nez v7, :cond_3

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 71
    const-string v7, "apprate_p_i_d002"

    invoke-interface {v0, v7, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 74
    :cond_3
    sget-object v7, Lutil/google_market/DrawRace2AppRater;->smPrefs:Landroid/content/SharedPreferences;

    const-string v9, "apprate_p_i_d003"

    invoke-interface {v7, v9, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 75
    .local v4, hasPrompted:Z
    sget-object v9, Lutil/google_market/DrawRace2AppRater;->smPrefs:Landroid/content/SharedPreferences;

    const-string v10, "apprate_p_i_d004"

    if-eqz v4, :cond_6

    move v7, v8

    :goto_1
    invoke-interface {v9, v10, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 77
    .local v1, eventsLeft:I
    if-ne p0, v14, :cond_4

    .line 78
    add-int/lit8 v1, v1, -0x1

    .line 79
    const-string v7, "apprate_p_i_d004"

    invoke-interface {v0, v7, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 82
    :cond_4
    if-ltz v5, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    add-long/2addr v11, v2

    cmp-long v7, v9, v11

    if-ltz v7, :cond_5

    if-gtz v1, :cond_5

    .line 85
    sget-object v7, Lutil/google_market/DrawRace2AppRater;->smActivity:Landroid/app/Activity;

    new-instance v9, Lutil/google_market/DrawRace2AppRater$1;

    invoke-direct {v9}, Lutil/google_market/DrawRace2AppRater$1;-><init>()V

    invoke-virtual {v7, v9}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 90
    const-string v7, "apprate_p_i_d003"

    invoke-interface {v0, v7, v14}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 91
    const-string v7, "apprate_p_i_d004"

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 93
    :cond_5
    sput-boolean v13, Lutil/google_market/DrawRace2AppRater;->smLaunched:Z

    .line 94
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 75
    .end local v1           #eventsLeft:I
    :cond_6
    const/16 v7, 0x16

    goto :goto_1
.end method

.method public static onSignificantEvent()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    invoke-static {v0}, Lutil/google_market/DrawRace2AppRater;->onEvent(I)V

    .line 50
    return-void
.end method

.method public static showApplicationInMarket()V
    .locals 4

    .prologue
    .line 99
    sget-object v0, Lutil/google_market/DrawRace2AppRater;->smActivity:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    sget-object v3, Lutil/google_market/DrawRace2AppRater;->smMarketAppURL:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 101
    return-void
.end method
