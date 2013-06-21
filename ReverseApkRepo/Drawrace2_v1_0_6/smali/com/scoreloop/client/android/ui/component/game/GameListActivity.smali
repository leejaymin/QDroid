.class public Lcom/scoreloop/client/android/ui/component/game/GameListActivity;
.super Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;
.source "GameListActivity.java"

# interfaces
.implements Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;
.implements Lcom/scoreloop/client/android/ui/framework/PagingListAdapter$OnListItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/ui/component/game/GameListActivity$2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity",
        "<",
        "Lcom/scoreloop/client/android/ui/component/game/GameListItem;",
        ">;",
        "Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;",
        "Lcom/scoreloop/client/android/ui/framework/PagingListAdapter$OnListItemClickListener",
        "<",
        "Lcom/scoreloop/client/android/ui/component/game/GameListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private _captionVisible:Ljava/lang/Boolean;

.field private _gamesController:Lcom/scoreloop/client/android/core/controller/GamesController;

.field private _mode:I

.field private _pagingDirection:Lcom/scoreloop/client/android/ui/framework/PagingDirection;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;-><init>()V

    .line 177
    return-void
.end method

.method static synthetic access$000(Lcom/scoreloop/client/android/ui/component/game/GameListActivity;)Lcom/scoreloop/client/android/ui/framework/PagingDirection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->_pagingDirection:Lcom/scoreloop/client/android/ui/framework/PagingDirection;

    return-object v0
.end method

.method private getPagingListAdapter()Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/scoreloop/client/android/ui/framework/PagingListAdapter",
            "<",
            "Lcom/scoreloop/client/android/ui/component/game/GameListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->getBaseListAdapter()Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;

    move-result-object v0

    .line 83
    .local v0, baseAdapter:Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;,"Lcom/scoreloop/client/android/ui/framework/BaseListAdapter<*>;"
    check-cast v0, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;

    .end local v0           #baseAdapter:Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;,"Lcom/scoreloop/client/android/ui/framework/BaseListAdapter<*>;"
    return-object v0
.end method

.method private isCaptionVisible()Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->_captionVisible:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->_captionVisible:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onGames(Ljava/util/List;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/model/Game;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, games:Ljava/util/List;,"Ljava/util/List<Lcom/scoreloop/client/android/core/model/Game;>;"
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->getPagingListAdapter()Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;

    move-result-object v0

    .line 88
    .local v0, adapter:Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;,"Lcom/scoreloop/client/android/ui/framework/PagingListAdapter<Lcom/scoreloop/client/android/ui/component/game/GameListItem;>;"
    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;->clear()V

    .line 91
    const/4 v3, 0x0

    .line 92
    .local v3, id:I
    iget v6, p0, Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->_mode:I

    packed-switch v6, :pswitch_data_0

    .line 106
    const v3, 0x7f0802c2

    .line 109
    :goto_0
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->isCaptionVisible()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 110
    new-instance v6, Lcom/scoreloop/client/android/ui/component/base/CaptionListItem;

    const/4 v7, 0x0

    invoke-virtual {p0, v3}, Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, p0, v7, v8}, Lcom/scoreloop/client/android/ui/component/base/CaptionListItem;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;->add(Ljava/lang/Object;)V

    .line 114
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scoreloop/client/android/core/model/Game;

    .line 115
    .local v1, game:Lcom/scoreloop/client/android/core/model/Game;
    new-instance v6, Lcom/scoreloop/client/android/ui/component/game/GameListItem;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020055

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-direct {v6, p0, v7, v1}, Lcom/scoreloop/client/android/ui/component/game/GameListItem;-><init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Landroid/graphics/drawable/Drawable;Lcom/scoreloop/client/android/core/model/Game;)V

    invoke-virtual {v0, v6}, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 94
    .end local v1           #game:Lcom/scoreloop/client/android/core/model/Game;
    .end local v2           #i$:Ljava/util/Iterator;
    :pswitch_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->isSessionUser()Z

    move-result v6

    if-eqz v6, :cond_1

    const v3, 0x7f0802db

    .line 95
    :goto_2
    goto :goto_0

    .line 94
    :cond_1
    const v3, 0x7f0802c2

    goto :goto_2

    .line 97
    :pswitch_1
    const v3, 0x7f0802f8

    .line 98
    goto :goto_0

    .line 100
    :pswitch_2
    const v3, 0x7f0802de

    .line 101
    goto :goto_0

    .line 103
    :pswitch_3
    const v3, 0x7f0802c0

    .line 104
    goto :goto_0

    .line 117
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_3

    .line 118
    new-instance v6, Lcom/scoreloop/client/android/ui/component/base/EmptyListItem;

    const v7, 0x7f0802e4

    invoke-virtual {p0, v7}, Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/scoreloop/client/android/ui/component/base/EmptyListItem;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;->add(Ljava/lang/Object;)V

    .line 140
    :goto_3
    return-void

    .line 121
    :cond_3
    iget-object v6, p0, Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->_gamesController:Lcom/scoreloop/client/android/core/controller/GamesController;

    invoke-virtual {v6}, Lcom/scoreloop/client/android/core/controller/GamesController;->hasPreviousRange()Z

    move-result v5

    .line 122
    .local v5, showTop:Z
    iget-object v6, p0, Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->_gamesController:Lcom/scoreloop/client/android/core/controller/GamesController;

    invoke-virtual {v6}, Lcom/scoreloop/client/android/core/controller/GamesController;->hasNextRange()Z

    move-result v6

    invoke-virtual {v0, v5, v5, v6}, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;->addPagingItems(ZZZ)V

    .line 126
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    .line 127
    .local v4, listView:Landroid/widget/ListView;
    new-instance v6, Lcom/scoreloop/client/android/ui/component/game/GameListActivity$1;

    invoke-direct {v6, p0, v4, v0}, Lcom/scoreloop/client/android/ui/component/game/GameListActivity$1;-><init>(Lcom/scoreloop/client/android/ui/component/game/GameListActivity;Landroid/widget/ListView;Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;)V

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private onRefreshBuddies()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->_gamesController:Lcom/scoreloop/client/android/core/controller/GamesController;

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->showSpinnerFor(Ljava/lang/Object;)V

    .line 184
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->_gamesController:Lcom/scoreloop/client/android/core/controller/GamesController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/GamesController;->loadRangeForBuddies()V

    .line 185
    return-void
.end method

.method private onRefreshNew()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->_gamesController:Lcom/scoreloop/client/android/core/controller/GamesController;

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->showSpinnerFor(Ljava/lang/Object;)V

    .line 189
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->_gamesController:Lcom/scoreloop/client/android/core/controller/GamesController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/GamesController;->loadRangeForNew()V

    .line 190
    return-void
.end method

.method private onRefreshPopular()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->_gamesController:Lcom/scoreloop/client/android/core/controller/GamesController;

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->showSpinnerFor(Ljava/lang/Object;)V

    .line 194
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->_gamesController:Lcom/scoreloop/client/android/core/controller/GamesController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/GamesController;->loadRangeForPopular()V

    .line 195
    return-void
.end method

.method private onRefreshUser()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->_gamesController:Lcom/scoreloop/client/android/core/controller/GamesController;

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->showSpinnerFor(Ljava/lang/Object;)V

    .line 199
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->_gamesController:Lcom/scoreloop/client/android/core/controller/GamesController;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/controller/GamesController;->loadRangeForUser(Lcom/scoreloop/client/android/core/model/User;)V

    .line 200
    return-void
.end method

.method private setNeedsRefresh(Lcom/scoreloop/client/android/ui/framework/PagingDirection;)V
    .locals 0
    .parameter "pagingDirection"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->_pagingDirection:Lcom/scoreloop/client/android/ui/framework/PagingDirection;

    .line 73
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->setNeedsRefresh()V

    .line 74
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 54
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->getActivityArguments()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v0

    const-string v1, "mode"

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->_mode:I

    .line 57
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->getActivityArguments()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v0

    const-string v1, "captionVisible"

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->_captionVisible:Ljava/lang/Boolean;

    .line 58
    new-instance v1, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;

    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->isCaptionVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {v1, p0, v0}, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 60
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v8

    new-instance v0, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;

    const-string v3, "title"

    const-string v4, "subtitle"

    move-object v1, p0

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;-><init>(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v8, v0}, Lcom/scoreloop/client/android/ui/component/base/Constant;->getOptimalRangeLength(Landroid/view/View;Lcom/scoreloop/client/android/ui/framework/BaseListItem;)I

    move-result v6

    .line 63
    .local v6, optimalRangeLength:I
    new-instance v0, Lcom/scoreloop/client/android/core/controller/GamesController;

    invoke-direct {v0, p0}, Lcom/scoreloop/client/android/core/controller/GamesController;-><init>(Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->_gamesController:Lcom/scoreloop/client/android/core/controller/GamesController;

    .line 64
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->_gamesController:Lcom/scoreloop/client/android/core/controller/GamesController;

    invoke-virtual {v0, v6}, Lcom/scoreloop/client/android/core/controller/GamesController;->setRangeLength(I)V

    .line 65
    iget v0, p0, Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->_mode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->_gamesController:Lcom/scoreloop/client/android/core/controller/GamesController;

    invoke-virtual {v0, v7}, Lcom/scoreloop/client/android/core/controller/GamesController;->setLoadsDevicesPlatformOnly(Z)V

    .line 68
    :cond_0
    sget-object v0, Lcom/scoreloop/client/android/ui/framework/PagingDirection;->PAGE_TO_TOP:Lcom/scoreloop/client/android/ui/framework/PagingDirection;

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->setNeedsRefresh(Lcom/scoreloop/client/android/ui/framework/PagingDirection;)V

    .line 69
    return-void

    .end local v6           #optimalRangeLength:I
    :cond_1
    move v0, v7

    .line 58
    goto :goto_0
.end method

.method public onListItemClick(Lcom/scoreloop/client/android/ui/component/game/GameListItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 144
    invoke-virtual {p1}, Lcom/scoreloop/client/android/ui/component/game/GameListItem;->getType()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->getFactory()Lcom/scoreloop/client/android/ui/component/base/Factory;

    move-result-object v1

    invoke-virtual {p1}, Lcom/scoreloop/client/android/ui/component/game/GameListItem;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/Game;

    invoke-interface {v1, v0}, Lcom/scoreloop/client/android/ui/component/base/Factory;->createGameDetailScreenDescription(Lcom/scoreloop/client/android/core/model/Game;)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->display(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)V

    .line 147
    :cond_0
    return-void
.end method

.method public bridge synthetic onListItemClick(Lcom/scoreloop/client/android/ui/framework/BaseListItem;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    check-cast p1, Lcom/scoreloop/client/android/ui/component/game/GameListItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->onListItemClick(Lcom/scoreloop/client/android/ui/component/game/GameListItem;)V

    return-void
.end method

.method public onPagingListItemClick(Lcom/scoreloop/client/android/ui/framework/PagingDirection;)V
    .locals 0
    .parameter "pagingDirection"

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->setNeedsRefresh(Lcom/scoreloop/client/android/ui/framework/PagingDirection;)V

    .line 212
    return-void
.end method

.method public onRefresh(I)V
    .locals 2
    .parameter "flags"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->_gamesController:Lcom/scoreloop/client/android/core/controller/GamesController;

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->showSpinnerFor(Ljava/lang/Object;)V

    .line 153
    sget-object v0, Lcom/scoreloop/client/android/ui/component/game/GameListActivity$2;->$SwitchMap$com$scoreloop$client$android$ui$framework$PagingDirection:[I

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->_pagingDirection:Lcom/scoreloop/client/android/ui/framework/PagingDirection;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/ui/framework/PagingDirection;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 180
    :goto_0
    return-void

    .line 155
    :pswitch_0
    iget v0, p0, Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->_mode:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 157
    :pswitch_1
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->onRefreshUser()V

    goto :goto_0

    .line 160
    :pswitch_2
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->onRefreshPopular()V

    goto :goto_0

    .line 163
    :pswitch_3
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->onRefreshNew()V

    goto :goto_0

    .line 166
    :pswitch_4
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->onRefreshBuddies()V

    goto :goto_0

    .line 172
    :pswitch_5
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->_gamesController:Lcom/scoreloop/client/android/core/controller/GamesController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/GamesController;->loadPreviousRange()V

    goto :goto_0

    .line 176
    :pswitch_6
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->_gamesController:Lcom/scoreloop/client/android/core/controller/GamesController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/GamesController;->loadNextRange()V

    goto :goto_0

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 155
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public requestControllerDidReceiveResponseSafe(Lcom/scoreloop/client/android/core/controller/RequestController;)V
    .locals 1
    .parameter "aRequestController"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->_gamesController:Lcom/scoreloop/client/android/core/controller/GamesController;

    if-ne p1, v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->_gamesController:Lcom/scoreloop/client/android/core/controller/GamesController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/GamesController;->getGames()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/ui/component/game/GameListActivity;->onGames(Ljava/util/List;)V

    .line 207
    :cond_0
    return-void
.end method
