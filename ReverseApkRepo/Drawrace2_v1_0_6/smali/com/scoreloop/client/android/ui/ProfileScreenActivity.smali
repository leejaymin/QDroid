.class public Lcom/scoreloop/client/android/ui/ProfileScreenActivity;
.super Lcom/scoreloop/client/android/ui/framework/ScreenActivity;
.source "ProfileScreenActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/framework/ScreenActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/ui/framework/ScreenActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-static {}, Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton;->getImpl()Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton$Impl;

    move-result-object v1

    invoke-interface {v1}, Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton$Impl;->getFactory()Lcom/scoreloop/client/android/ui/component/base/Factory;

    move-result-object v0

    .line 49
    .local v0, factory:Lcom/scoreloop/client/android/ui/component/base/Factory;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/scoreloop/client/android/ui/component/base/Factory;->createProfileSettingsScreenDescription(Lcom/scoreloop/client/android/core/model/User;)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/scoreloop/client/android/ui/ProfileScreenActivity;->display(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;Landroid/os/Bundle;)V

    .line 50
    return-void
.end method
