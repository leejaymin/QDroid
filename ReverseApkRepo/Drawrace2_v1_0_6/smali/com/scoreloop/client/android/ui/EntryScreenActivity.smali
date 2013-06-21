.class public Lcom/scoreloop/client/android/ui/EntryScreenActivity;
.super Lcom/scoreloop/client/android/ui/framework/ScreenActivity;
.source "EntryScreenActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/framework/ScreenActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/ui/framework/ScreenActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-static {}, Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton;->getImpl()Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton$Impl;

    move-result-object v1

    invoke-interface {v1}, Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton$Impl;->getFactory()Lcom/scoreloop/client/android/ui/component/base/Factory;

    move-result-object v0

    .line 51
    .local v0, factory:Lcom/scoreloop/client/android/ui/component/base/Factory;
    invoke-interface {v0}, Lcom/scoreloop/client/android/ui/component/base/Factory;->createEntryScreenDescription()Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/scoreloop/client/android/ui/EntryScreenActivity;->display(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;Landroid/os/Bundle;)V

    .line 52
    return-void
.end method
