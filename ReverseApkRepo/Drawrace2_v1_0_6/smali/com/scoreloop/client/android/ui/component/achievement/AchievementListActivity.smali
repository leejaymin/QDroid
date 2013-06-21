.class public Lcom/scoreloop/client/android/ui/component/achievement/AchievementListActivity;
.super Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;
.source "AchievementListActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity",
        "<",
        "Lcom/scoreloop/client/android/ui/component/achievement/AchievementListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private _achievementsController:Lcom/scoreloop/client/android/core/controller/AchievementsController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/scoreloop/client/android/ui/component/achievement/AchievementListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListActivity;->hideSpinner()V

    return-void
.end method

.method static synthetic access$100(Lcom/scoreloop/client/android/ui/component/achievement/AchievementListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListActivity;->onAchievements()V

    return-void
.end method

.method private onAchievements()V
    .locals 5

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListActivity;->getBaseListAdapter()Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;

    move-result-object v1

    .line 43
    .local v1, adapter:Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;,"Lcom/scoreloop/client/android/ui/framework/BaseListAdapter<Lcom/scoreloop/client/android/ui/component/achievement/AchievementListItem;>;"
    invoke-virtual {v1}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->clear()V

    .line 44
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListActivity;->isSessionUser()Z

    move-result v3

    .line 45
    .local v3, isSessionUser:Z
    iget-object v4, p0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListActivity;->_achievementsController:Lcom/scoreloop/client/android/core/controller/AchievementsController;

    invoke-virtual {v4}, Lcom/scoreloop/client/android/core/controller/AchievementsController;->getAchievements()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/Achievement;

    .line 46
    .local v0, achievement:Lcom/scoreloop/client/android/core/model/Achievement;
    new-instance v4, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListItem;

    invoke-direct {v4, p0, v0, v3}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListItem;-><init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Lcom/scoreloop/client/android/core/model/Achievement;Z)V

    invoke-virtual {v1, v4}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 48
    .end local v0           #achievement:Lcom/scoreloop/client/android/core/model/Achievement;
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    new-instance v1, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;

    invoke-direct {v1, p0}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 55
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListActivity;->isSessionUser()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListActivity;->getActivityArguments()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v1

    const-string v2, "achievementsEngine"

    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;

    .line 57
    .local v0, engine:Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;
    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;->getAchievementsController()Lcom/scoreloop/client/android/core/controller/AchievementsController;

    move-result-object v1

    iput-object v1, p0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListActivity;->_achievementsController:Lcom/scoreloop/client/android/core/controller/AchievementsController;

    .line 61
    .end local v0           #engine:Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;
    :goto_0
    return-void

    .line 59
    :cond_0
    new-instance v1, Lcom/scoreloop/client/android/core/controller/AchievementsController;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListActivity;->getRequestControllerObserver()Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/scoreloop/client/android/core/controller/AchievementsController;-><init>(Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    iput-object v1, p0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListActivity;->_achievementsController:Lcom/scoreloop/client/android/core/controller/AchievementsController;

    goto :goto_0
.end method

.method public onListItemClick(Lcom/scoreloop/client/android/ui/component/achievement/AchievementListItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 70
    return-void
.end method

.method public bridge synthetic onListItemClick(Lcom/scoreloop/client/android/ui/framework/BaseListItem;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    check-cast p1, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListActivity;->onListItemClick(Lcom/scoreloop/client/android/ui/component/achievement/AchievementListItem;)V

    return-void
.end method

.method public onRefresh(I)V
    .locals 3
    .parameter "flags"

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListActivity;->isSessionUser()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListActivity;->showSpinner()V

    .line 76
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListActivity;->getActivityArguments()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v1

    const-string v2, "achievementsEngine"

    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;

    .line 77
    .local v0, engine:Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;
    const/4 v1, 0x1

    new-instance v2, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListActivity$1;

    invoke-direct {v2, p0}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListActivity$1;-><init>(Lcom/scoreloop/client/android/ui/component/achievement/AchievementListActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;->submitAchievements(ZLcom/scoreloop/client/android/core/model/Continuation;)V

    .line 89
    .end local v0           #engine:Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListActivity;->_achievementsController:Lcom/scoreloop/client/android/core/controller/AchievementsController;

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListActivity;->showSpinnerFor(Ljava/lang/Object;)V

    .line 86
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListActivity;->_achievementsController:Lcom/scoreloop/client/android/core/controller/AchievementsController;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListActivity;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/core/controller/AchievementsController;->setUser(Lcom/scoreloop/client/android/core/model/User;)V

    .line 87
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListActivity;->_achievementsController:Lcom/scoreloop/client/android/core/controller/AchievementsController;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/controller/AchievementsController;->loadAchievements()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 93
    invoke-super {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;->onStart()V

    .line 94
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListActivity;->setNeedsRefresh()V

    .line 95
    return-void
.end method

.method public requestControllerDidReceiveResponseSafe(Lcom/scoreloop/client/android/core/controller/RequestController;)V
    .locals 0
    .parameter "aRequestController"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListActivity;->onAchievements()V

    .line 100
    return-void
.end method
