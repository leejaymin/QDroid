.class public Lcom/scoreloop/client/android/ui/ChallengesScreenActivity;
.super Lcom/scoreloop/client/android/ui/framework/ScreenActivity;
.source "ChallengesScreenActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/framework/ScreenActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/ui/framework/ScreenActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-static {}, Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton;->getImpl()Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton$Impl;

    move-result-object v2

    invoke-interface {v2}, Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton$Impl;->getConfiguration()Lcom/scoreloop/client/android/ui/component/base/Configuration;

    move-result-object v0

    .line 61
    .local v0, configuration:Lcom/scoreloop/client/android/ui/component/base/Configuration;
    sget-object v2, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->CHALLENGE:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    invoke-virtual {v0, v2}, Lcom/scoreloop/client/android/ui/component/base/Configuration;->isFeatureEnabled(Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/ChallengesScreenActivity;->finish()V

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-static {}, Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton;->getImpl()Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton$Impl;

    move-result-object v2

    invoke-interface {v2}, Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton$Impl;->getFactory()Lcom/scoreloop/client/android/ui/component/base/Factory;

    move-result-object v1

    .line 66
    .local v1, factory:Lcom/scoreloop/client/android/ui/component/base/Factory;
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/scoreloop/client/android/ui/component/base/Factory;->createChallengeScreenDescription(Lcom/scoreloop/client/android/core/model/User;)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lcom/scoreloop/client/android/ui/ChallengesScreenActivity;->display(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;Landroid/os/Bundle;)V

    goto :goto_0
.end method
