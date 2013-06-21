.class public Lcom/spritefish/fastburstcamera/receivers/NewPictureReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NewPictureReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const-wide/16 v6, -0x1

    .line 16
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.spritefish.fastburstcamera.newpicture"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 17
    const-string v2, "resolution"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v0, "unknown"

    .line 19
    .local v0, resolution:Ljava/lang/String;
    :goto_0
    invoke-static {p1}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->getTracker(Landroid/content/Context;)Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v1

    .line 20
    .local v1, tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;
    if-eqz v1, :cond_0

    .line 22
    const-string v2, "PictureTaken"

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 27
    :cond_0
    sget-object v2, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->instance:Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    if-eqz v2, :cond_1

    .line 28
    sget-object v2, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->instance:Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    const-string v3, "burstid"

    invoke-virtual {p2, v3, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v5, "pictureid"

    invoke-virtual {p2, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->newPictureRegistered(JJ)V

    .line 30
    .end local v0           #resolution:Ljava/lang/String;
    .end local v1           #tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;
    :cond_1
    return-void

    .line 17
    :cond_2
    const-string v2, "resolution"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
