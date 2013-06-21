.class Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$2;
.super Ljava/lang/Object;
.source "TrialHelper.java"

# interfaces
.implements Lcom/spritefish/fastburstcamera/activities/helper/DialogButton;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper;->enableTrialDialog(Landroid/app/Activity;Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$dbHelper:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

.field private final synthetic val$tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$2;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$2;->val$dbHelper:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    iput-object p3, p0, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$2;->val$tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action()V
    .locals 8

    .prologue
    .line 176
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$2;->val$dbHelper:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$2;->val$tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-static {v0, v1}, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper;->enableTrial(Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)V

    .line 177
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$2;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$2;->val$dbHelper:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$2;->val$activity:Landroid/app/Activity;

    const v3, 0x7f07006b

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$2;->val$activity:Landroid/app/Activity;

    const v4, 0x7f07006c

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    new-instance v5, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$2$1;

    iget-object v6, p0, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$2;->val$activity:Landroid/app/Activity;

    invoke-direct {v5, p0, v6}, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$2$1;-><init>(Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$2;Landroid/app/Activity;)V

    .line 189
    const/4 v6, 0x0

    .line 177
    invoke-static/range {v0 .. v6}, Lcom/spritefish/fastburstcamera/activities/helper/DialogHelper;->createCustomDialogBuilder(Landroid/content/Context;Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/spritefish/fastburstcamera/activities/helper/DialogButton;Lcom/spritefish/fastburstcamera/activities/helper/DialogButton;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 190
    .local v7, oktrial:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 191
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$2;->val$activity:Landroid/app/Activity;

    const v1, 0x7f07006a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
