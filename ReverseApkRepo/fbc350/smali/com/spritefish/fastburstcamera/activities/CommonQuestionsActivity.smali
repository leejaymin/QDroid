.class public Lcom/spritefish/fastburstcamera/activities/CommonQuestionsActivity;
.super Landroid/app/Activity;
.source "CommonQuestionsActivity.java"


# instance fields
.field private tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-static {p0}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->getTracker(Landroid/content/Context;)Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/activities/CommonQuestionsActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    .line 24
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/CommonQuestionsActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/CommonQuestionsActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    const-string v1, "ViewCommonQuestions"

    invoke-virtual {v0, v1}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 27
    :cond_0
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/spritefish/fastburstcamera/activities/CommonQuestionsActivity;->setContentView(I)V

    .line 31
    return-void
.end method
