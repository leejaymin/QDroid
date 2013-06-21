.class public Lcom/scoreloop/client/android/ui/component/game/GameDetailListActivity;
.super Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;
.source "GameDetailListActivity.java"

# interfaces
.implements Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/ui/component/game/GameDetailListActivity$GameDetailListAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity",
        "<",
        "Lcom/scoreloop/client/android/ui/framework/BaseListItem;",
        ">;",
        "Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;"
    }
.end annotation


# instance fields
.field protected _usersController:Lcom/scoreloop/client/android/core/controller/UsersController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;-><init>()V

    .line 43
    return-void
.end method


# virtual methods
.method protected addUsers(Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;Ljava/util/List;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/scoreloop/client/android/ui/framework/BaseListAdapter",
            "<",
            "Lcom/scoreloop/client/android/ui/framework/BaseListItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/model/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, adapter:Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;,"Lcom/scoreloop/client/android/ui/framework/BaseListAdapter<Lcom/scoreloop/client/android/ui/framework/BaseListItem;>;"
    .local p2, users:Ljava/util/List;,"Ljava/util/List<Lcom/scoreloop/client/android/core/model/User;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 57
    new-instance v2, Lcom/scoreloop/client/android/ui/component/base/EmptyListItem;

    const v3, 0x7f0802e3

    invoke-virtual {p0, v3}, Lcom/scoreloop/client/android/ui/component/game/GameDetailListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/scoreloop/client/android/ui/component/base/EmptyListItem;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->add(Ljava/lang/Object;)V

    .line 63
    :cond_0
    return-void

    .line 59
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scoreloop/client/android/core/model/User;

    .line 60
    .local v1, user:Lcom/scoreloop/client/android/core/model/User;
    new-instance v2, Lcom/scoreloop/client/android/ui/component/game/GameDetailUserListItem;

    invoke-direct {v2, p0, v1}, Lcom/scoreloop/client/android/ui/component/game/GameDetailUserListItem;-><init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Lcom/scoreloop/client/android/core/model/User;)V

    invoke-virtual {p1, v2}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    new-instance v0, Lcom/scoreloop/client/android/ui/component/game/GameDetailListActivity$GameDetailListAdapter;

    invoke-direct {v0, p0, p0}, Lcom/scoreloop/client/android/ui/component/game/GameDetailListActivity$GameDetailListAdapter;-><init>(Lcom/scoreloop/client/android/ui/component/game/GameDetailListActivity;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/game/GameDetailListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 69
    new-instance v0, Lcom/scoreloop/client/android/core/controller/UsersController;

    invoke-direct {v0, p0}, Lcom/scoreloop/client/android/core/controller/UsersController;-><init>(Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/game/GameDetailListActivity;->_usersController:Lcom/scoreloop/client/android/core/controller/UsersController;

    .line 70
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/game/GameDetailListActivity;->_usersController:Lcom/scoreloop/client/android/core/controller/UsersController;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/game/GameDetailListActivity;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v1

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/game/GameDetailListActivity;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/scoreloop/client/android/core/controller/UsersController;->loadBuddies(Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/model/Game;)V

    .line 71
    return-void
.end method

.method public onListItemClick(Lcom/scoreloop/client/android/ui/framework/BaseListItem;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 81
    invoke-virtual {p1}, Lcom/scoreloop/client/android/ui/framework/BaseListItem;->getType()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/game/GameDetailListActivity;->getFactory()Lcom/scoreloop/client/android/ui/component/base/Factory;

    move-result-object v1

    check-cast p1, Lcom/scoreloop/client/android/ui/component/game/GameDetailUserListItem;

    .end local p1
    invoke-virtual {p1}, Lcom/scoreloop/client/android/ui/component/game/GameDetailUserListItem;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/User;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/scoreloop/client/android/ui/component/base/Factory;->createUserDetailScreenDescription(Lcom/scoreloop/client/android/core/model/User;Ljava/lang/Boolean;)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/game/GameDetailListActivity;->display(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)V

    .line 84
    :cond_0
    return-void
.end method

.method public onRefresh(I)V
    .locals 1
    .parameter "flags"

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;->onRefresh(I)V

    .line 76
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/game/GameDetailListActivity;->getBaseListAdapter()Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->notifyDataSetChanged()V

    .line 77
    return-void
.end method

.method public requestControllerDidReceiveResponseSafe(Lcom/scoreloop/client/android/core/controller/RequestController;)V
    .locals 8
    .parameter "controller"

    .prologue
    .line 88
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/game/GameDetailListActivity;->_usersController:Lcom/scoreloop/client/android/core/controller/UsersController;

    if-ne p1, v2, :cond_0

    .line 89
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/game/GameDetailListActivity;->_usersController:Lcom/scoreloop/client/android/core/controller/UsersController;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/controller/UsersController;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 90
    .local v1, users:Ljava/util/List;,"Ljava/util/List<Lcom/scoreloop/client/android/core/model/User;>;"
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/game/GameDetailListActivity;->getBaseListAdapter()Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;

    move-result-object v0

    .line 91
    .local v0, adapter:Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;,"Lcom/scoreloop/client/android/ui/framework/BaseListAdapter<Lcom/scoreloop/client/android/ui/framework/BaseListItem;>;"
    new-instance v2, Lcom/scoreloop/client/android/ui/component/base/CaptionListItem;

    const/4 v3, 0x0

    const v4, 0x7f0802a2

    invoke-virtual {p0, v4}, Lcom/scoreloop/client/android/ui/component/game/GameDetailListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/game/GameDetailListActivity;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v7

    invoke-virtual {v7}, Lcom/scoreloop/client/android/core/model/Game;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/scoreloop/client/android/ui/component/base/CaptionListItem;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->add(Ljava/lang/Object;)V

    .line 92
    invoke-virtual {p0, v0, v1}, Lcom/scoreloop/client/android/ui/component/game/GameDetailListActivity;->addUsers(Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;Ljava/util/List;)V

    .line 94
    .end local v0           #adapter:Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;,"Lcom/scoreloop/client/android/ui/framework/BaseListAdapter<Lcom/scoreloop/client/android/ui/framework/BaseListItem;>;"
    .end local v1           #users:Ljava/util/List;,"Ljava/util/List<Lcom/scoreloop/client/android/core/model/User;>;"
    :cond_0
    return-void
.end method
