.class Lcom/spritefish/fastburstcamera/activities/RecorderActivity$5;
.super Ljava/lang/Object;
.source "RecorderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$5;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 451
    iget-object v4, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$5;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    #calls: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->initUiControls()V
    invoke-static {v4}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$2(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)V

    .line 453
    iget-object v4, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$5;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    iget-object v4, v4, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->soundOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v5, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$5;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    iget-object v5, v5, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v6, "sound"

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 454
    iget-object v4, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$5;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    #calls: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->updateSoundButton()V
    invoke-static {v4}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$3(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)V

    .line 456
    const/4 v2, 0x0

    .line 457
    .local v2, poppedUp:Z
    iget-object v4, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$5;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    iget-object v4, v4, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->isLiteVersion:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 459
    iget-object v4, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$5;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    iget-object v4, v4, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->dbHelper:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    invoke-static {v4}, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper;->isTrialPossible(Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 461
    iget-object v4, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$5;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    iget-object v5, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$5;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;
    invoke-static {v5}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$4(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper;->enableTrialDialog(Landroid/app/Activity;Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)V

    .line 477
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 478
    iget-object v4, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$5;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    iget-object v4, v4, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->dbHelper:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    iget-object v5, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$5;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    invoke-static {v4, v5}, Lcom/spritefish/fastburstcamera/activities/helper/SocialHelper;->showSocialDialog(Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;Landroid/content/Context;)V

    .line 484
    :cond_1
    const-string v3, ""

    .line 485
    .local v3, previewBuild:Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 488
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$5;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 489
    .local v1, builder2:Landroid/app/AlertDialog$Builder;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Engineering test version for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nDo not redistribute"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 490
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 491
    const v5, 0x7f070037

    new-instance v6, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$5$1;

    invoke-direct {v6, p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$5$1;-><init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$5;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 496
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 497
    .local v0, alert2:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 501
    .end local v0           #alert2:Landroid/app/AlertDialog;
    .end local v1           #builder2:Landroid/app/AlertDialog$Builder;
    :cond_2
    return-void

    .line 466
    .end local v3           #previewBuild:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$5;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    iget-object v4, v4, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->dbHelper:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    invoke-static {v4}, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper;->isTrialEnabled(Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 468
    iget-object v4, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$5;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    invoke-static {v4}, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper;->showDaysLeft(Landroid/app/Activity;)V

    goto :goto_0

    .line 472
    :cond_4
    iget-object v4, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$5;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    iget-object v5, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$5;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;
    invoke-static {v5}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$4(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper;->showTrialEndIfNeeded(Landroid/app/Activity;Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)V

    goto :goto_0
.end method
