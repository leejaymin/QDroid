.class public Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper;
.super Ljava/lang/Object;
.source "TrialHelper.java"


# static fields
.field static final picRequired:J = 0xc8L

.field static final preTrialMinutes:J = 0x2760L

.field private static shownInSession:Z = false

.field static final trialMinutes:J = 0x2760L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    sput-boolean v0, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper;->shownInSession:Z

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableTrial(Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)V
    .locals 4
    .parameter "db"
    .parameter "tracker"

    .prologue
    .line 84
    const-string v0, "trialstart"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v0, "trialendshown"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->enableTrial()V

    .line 88
    if-eqz p1, :cond_0

    .line 89
    const-string v0, "trialenabled"

    invoke-virtual {p1, v0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 91
    :cond_0
    return-void
.end method

.method public static enableTrialDialog(Landroid/app/Activity;Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)V
    .locals 8
    .parameter "activity"
    .parameter "tracker"

    .prologue
    .line 165
    new-instance v1, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    invoke-direct {v1, p0}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 166
    .local v1, dbHelper:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;
    const v0, 0x7f070064

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f070067

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "trial"

    new-instance v5, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$2;

    invoke-direct {v5, p0, v1, p1}, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$2;-><init>(Landroid/app/Activity;Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)V

    .line 192
    new-instance v6, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$3;

    invoke-direct {v6, p0}, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$3;-><init>(Landroid/app/Activity;)V

    move-object v0, p0

    .line 166
    invoke-static/range {v0 .. v6}, Lcom/spritefish/fastburstcamera/activities/helper/DialogHelper;->createCustomDialogBuilder(Landroid/content/Context;Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/spritefish/fastburstcamera/activities/helper/DialogButton;Lcom/spritefish/fastburstcamera/activities/helper/DialogButton;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 206
    .local v7, trialQuestion:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 208
    return-void
.end method

.method public static isTrialEnabled(Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;)Z
    .locals 7
    .parameter "db"

    .prologue
    const/4 v2, 0x0

    .line 25
    const-string v3, "trialstart"

    const-string v4, "-1"

    invoke-virtual {p0, v3, v4}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 26
    .local v0, trial:J
    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-nez v3, :cond_1

    .line 32
    :cond_0
    :goto_0
    return v2

    .line 29
    :cond_1
    const-wide/32 v3, 0x240c8400

    add-long/2addr v3, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    .line 32
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isTrialPossible(Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;)Z
    .locals 9
    .parameter "db"

    .prologue
    const/4 v4, 0x0

    .line 58
    :try_start_0
    const-string v5, "trialstart"

    const-string v6, "-1"

    invoke-virtual {p0, v5, v6}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "-1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 78
    :cond_0
    :goto_0
    return v4

    .line 63
    :cond_1
    const-string v5, "firststart"

    const-string v6, "-1"

    invoke-virtual {p0, v5, v6}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, firstStart:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 65
    .local v2, firstStart_ts:J
    const-wide/32 v5, 0x240c8400

    add-long/2addr v5, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gtz v5, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->getHighestPictureNumber()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    const-wide/16 v7, 0xc8

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    .line 74
    const/4 v4, 0x1

    goto :goto_0

    .line 75
    .end local v1           #firstStart:Ljava/lang/String;
    .end local v2           #firstStart_ts:J
    :catch_0
    move-exception v0

    .line 77
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "insta"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static showDaysLeft(Landroid/app/Activity;)V
    .locals 5
    .parameter "c"

    .prologue
    .line 98
    sget-boolean v3, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper;->shownInSession:Z

    if-eqz v3, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    const/4 v3, 0x1

    sput-boolean v3, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper;->shownInSession:Z

    .line 101
    new-instance v0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    invoke-direct {v0, p0}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 102
    .local v0, bdh:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper;->trialDaysLeft(Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;)J

    move-result-wide v1

    .line 103
    .local v1, days:J
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 107
    new-instance v3, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$1;

    invoke-direct {v3, p0, v1, v2, v0}, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$1;-><init>(Landroid/app/Activity;JLcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;)V

    invoke-virtual {p0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static showTrialEndIfNeeded(Landroid/app/Activity;Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)V
    .locals 8
    .parameter "activity"
    .parameter "tracker"

    .prologue
    .line 211
    new-instance v1, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    invoke-direct {v1, p0}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 212
    .local v1, dbHelper:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;
    const-string v0, "trialendshown"

    const-string v2, "true"

    invoke-virtual {v1, v0, v2}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    const v0, 0x7f070065

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f070066

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "trial"

    new-instance v5, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$4;

    invoke-direct {v5, p0, p1}, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$4;-><init>(Landroid/app/Activity;Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)V

    .line 234
    new-instance v6, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$5;

    invoke-direct {v6, p0}, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$5;-><init>(Landroid/app/Activity;)V

    move-object v0, p0

    .line 216
    invoke-static/range {v0 .. v6}, Lcom/spritefish/fastburstcamera/activities/helper/DialogHelper;->createCustomDialogBuilder(Landroid/content/Context;Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/spritefish/fastburstcamera/activities/helper/DialogButton;Lcom/spritefish/fastburstcamera/activities/helper/DialogButton;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 248
    .local v7, trialQuestion:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 250
    if-eqz p1, :cond_0

    .line 251
    const-string v0, "trialend"

    invoke-virtual {p1, v0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 255
    .end local v7           #trialQuestion:Landroid/app/AlertDialog$Builder;
    :cond_0
    const-string v0, "trialendshown"

    const-string v2, "true"

    invoke-virtual {v1, v0, v2}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method public static trialDaysLeft(Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;)J
    .locals 10
    .parameter "db"

    .prologue
    const-wide/32 v8, 0x240c8400

    const-wide/16 v2, -0x1

    .line 38
    const-string v4, "trialstart"

    const-string v5, "-1"

    invoke-virtual {p0, v4, v5}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 39
    .local v0, trial:J
    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 45
    :cond_0
    :goto_0
    return-wide v2

    .line 42
    :cond_1
    add-long v4, v0, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 45
    add-long v2, v0, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    div-long/2addr v2, v4

    goto :goto_0
.end method
