.class Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$4;
.super Ljava/lang/Object;
.source "TrialHelper.java"

# interfaces
.implements Lcom/spritefish/fastburstcamera/activities/helper/DialogButton;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper;->showTrialEndIfNeeded(Landroid/app/Activity;Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$4;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$4;->val$tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action()V
    .locals 3

    .prologue
    .line 226
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$4;->val$tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$4;->val$tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    const-string v2, "trialend - purchaseIntent"

    invoke-virtual {v1, v2}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 229
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "market://details?id=com.spritefish.fastburstcamera"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 230
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$4;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 233
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$4;->val$activity:Landroid/app/Activity;

    const v1, 0x7f070068

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
