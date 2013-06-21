.class public final Lcom/nix/apps/androlib/wallpapers/GoogleAnalytics;
.super Ljava/lang/Object;
.source "GoogleAnalytics.java"


# static fields
.field private static final CHANNEL:Ljava/lang/String; = "UA-344156-61"

.field private static mRoot:Ljava/lang/String;

.field private static mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getPageWithRoot(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "page"

    .prologue
    .line 38
    if-eqz p0, :cond_0

    sget-object v0, Lcom/nix/apps/androlib/wallpapers/GoogleAnalytics;->mRoot:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/nix/apps/androlib/wallpapers/GoogleAnalytics;->mRoot:Ljava/lang/String;

    goto :goto_0
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "root"

    .prologue
    .line 14
    sget-object v0, Lcom/nix/apps/androlib/wallpapers/GoogleAnalytics;->mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    if-eqz v0, :cond_0

    .line 19
    :goto_0
    return-void

    .line 15
    :cond_0
    sput-object p1, Lcom/nix/apps/androlib/wallpapers/GoogleAnalytics;->mRoot:Ljava/lang/String;

    .line 16
    invoke-static {}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->getInstance()Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v0

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/GoogleAnalytics;->mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    .line 17
    sget-object v0, Lcom/nix/apps/androlib/wallpapers/GoogleAnalytics;->mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    const-string v1, "UA-344156-61"

    invoke-virtual {v0, v1, p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->start(Ljava/lang/String;Landroid/content/Context;)V

    .line 18
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/nix/apps/androlib/wallpapers/GoogleAnalytics;->trackAndDispatch(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static stop()V
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/nix/apps/androlib/wallpapers/GoogleAnalytics;->mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    if-nez v0, :cond_0

    .line 35
    :goto_0
    return-void

    .line 34
    :cond_0
    sget-object v0, Lcom/nix/apps/androlib/wallpapers/GoogleAnalytics;->mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->stop()V

    goto :goto_0
.end method

.method public static track(Ljava/lang/String;)V
    .locals 2
    .parameter "page"

    .prologue
    .line 28
    sget-object v0, Lcom/nix/apps/androlib/wallpapers/GoogleAnalytics;->mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    if-nez v0, :cond_0

    .line 30
    :goto_0
    return-void

    .line 29
    :cond_0
    sget-object v0, Lcom/nix/apps/androlib/wallpapers/GoogleAnalytics;->mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-static {p0}, Lcom/nix/apps/androlib/wallpapers/GoogleAnalytics;->getPageWithRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static trackAndDispatch(Ljava/lang/String;)V
    .locals 2
    .parameter "page"

    .prologue
    .line 22
    sget-object v0, Lcom/nix/apps/androlib/wallpapers/GoogleAnalytics;->mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    if-nez v0, :cond_0

    .line 25
    :goto_0
    return-void

    .line 23
    :cond_0
    sget-object v0, Lcom/nix/apps/androlib/wallpapers/GoogleAnalytics;->mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-static {p0}, Lcom/nix/apps/androlib/wallpapers/GoogleAnalytics;->getPageWithRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 24
    sget-object v0, Lcom/nix/apps/androlib/wallpapers/GoogleAnalytics;->mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatch()Z

    goto :goto_0
.end method
