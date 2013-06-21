.class public Lcom/spritefish/fastburstcamera/activities/SupportActivity;
.super Landroid/app/Activity;
.source "SupportActivity.java"


# instance fields
.field private tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-static {p0}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->getTracker(Landroid/content/Context;)Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/spritefish/fastburstcamera/activities/SupportActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    .line 25
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/activities/SupportActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    if-eqz v3, :cond_0

    .line 26
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/activities/SupportActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    const-string v4, "ViewSupport"

    invoke-virtual {v3, v4}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 28
    :cond_0
    const v3, 0x7f030012

    invoke-virtual {p0, v3}, Lcom/spritefish/fastburstcamera/activities/SupportActivity;->setContentView(I)V

    .line 30
    const v3, 0x7f0d005b

    invoke-virtual {p0, v3}, Lcom/spritefish/fastburstcamera/activities/SupportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 31
    .local v0, common:Landroid/widget/ImageButton;
    new-instance v3, Lcom/spritefish/fastburstcamera/activities/SupportActivity$1;

    invoke-direct {v3, p0}, Lcom/spritefish/fastburstcamera/activities/SupportActivity$1;-><init>(Lcom/spritefish/fastburstcamera/activities/SupportActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    const v3, 0x7f0d005c

    invoke-virtual {p0, v3}, Lcom/spritefish/fastburstcamera/activities/SupportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 42
    .local v1, forum:Landroid/widget/ImageButton;
    new-instance v3, Lcom/spritefish/fastburstcamera/activities/SupportActivity$2;

    invoke-direct {v3, p0}, Lcom/spritefish/fastburstcamera/activities/SupportActivity$2;-><init>(Lcom/spritefish/fastburstcamera/activities/SupportActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const v3, 0x7f0d005d

    invoke-virtual {p0, v3}, Lcom/spritefish/fastburstcamera/activities/SupportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 52
    .local v2, report:Landroid/widget/ImageButton;
    new-instance v3, Lcom/spritefish/fastburstcamera/activities/SupportActivity$3;

    invoke-direct {v3, p0}, Lcom/spritefish/fastburstcamera/activities/SupportActivity$3;-><init>(Lcom/spritefish/fastburstcamera/activities/SupportActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-void
.end method
