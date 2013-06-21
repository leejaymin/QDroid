.class public Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;
.super Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;
.source "ScoreListActivity.java"

# interfaces
.implements Lcom/scoreloop/client/android/ui/framework/ValueStore$Observer;
.implements Lcom/scoreloop/client/android/ui/framework/PagingListAdapter$OnListItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity$4;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity",
        "<",
        "Lcom/scoreloop/client/android/ui/component/score/ScoreListItem;",
        ">;",
        "Lcom/scoreloop/client/android/ui/framework/ValueStore$Observer;",
        "Lcom/scoreloop/client/android/ui/framework/PagingListAdapter$OnListItemClickListener",
        "<",
        "Lcom/scoreloop/client/android/ui/component/score/ScoreListItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final RECENT_TOP_RANK:Ljava/lang/String; = "recentTopRank"


# instance fields
.field private _cachedVerticalCenterOffset:I

.field private _highlightedPosition:I

.field private _pagingDirection:Lcom/scoreloop/client/android/ui/framework/PagingDirection;

.field private _rankingController:Lcom/scoreloop/client/android/core/controller/RankingController;

.field private _scoresController:Lcom/scoreloop/client/android/core/controller/ScoresController;

.field private _searchList:Lcom/scoreloop/client/android/core/model/SearchList;

.field private _submitLocalScoresListItem:Lcom/scoreloop/client/android/ui/framework/BaseListItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;-><init>()V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->_cachedVerticalCenterOffset:I

    return-void
.end method

.method static synthetic access$000(Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->hideSpinner()V

    return-void
.end method

.method static synthetic access$100(Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;Lcom/scoreloop/client/android/ui/framework/PagingDirection;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->setNeedsRefresh(Lcom/scoreloop/client/android/ui/framework/PagingDirection;)V

    return-void
.end method

.method static synthetic access$200(Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;)Lcom/scoreloop/client/android/ui/framework/BaseListItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->_submitLocalScoresListItem:Lcom/scoreloop/client/android/ui/framework/BaseListItem;

    return-object v0
.end method

.method static synthetic access$300(Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;)Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->getPagingListAdapter()Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->_highlightedPosition:I

    return v0
.end method

.method static synthetic access$500(Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->getVerticalCenterOffset()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;)Lcom/scoreloop/client/android/ui/framework/PagingDirection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->_pagingDirection:Lcom/scoreloop/client/android/ui/framework/PagingDirection;

    return-object v0
.end method

.method private getPagingListAdapter()Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/scoreloop/client/android/ui/framework/PagingListAdapter",
            "<",
            "Lcom/scoreloop/client/android/ui/component/score/ScoreListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->getBaseListAdapter()Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;

    move-result-object v0

    .line 67
    .local v0, baseAdapter:Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;,"Lcom/scoreloop/client/android/ui/framework/BaseListAdapter<*>;"
    check-cast v0, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;

    .end local v0           #baseAdapter:Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;,"Lcom/scoreloop/client/android/ui/framework/BaseListAdapter<*>;"
    return-object v0
.end method

.method private getVerticalCenterOffset()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 71
    iget v4, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->_cachedVerticalCenterOffset:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 72
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->getPagingListAdapter()Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;

    move-result-object v4

    iget v5, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->_highlightedPosition:I

    invoke-virtual {v4, v5}, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;->getContentItem(I)Lcom/scoreloop/client/android/ui/framework/BaseListItem;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/ui/component/score/ScoreListItem;

    .line 73
    .local v0, item:Lcom/scoreloop/client/android/ui/component/score/ScoreListItem;
    invoke-virtual {v0, v7, v7}, Lcom/scoreloop/client/android/ui/component/score/ScoreListItem;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 74
    .local v2, itemView:Landroid/view/View;
    invoke-virtual {v2, v6, v6}, Landroid/view/View;->measure(II)V

    .line 75
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeight()I

    move-result v3

    .line 76
    .local v3, listHeight:I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 77
    .local v1, itemHeight:I
    sub-int v4, v3, v1

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->_cachedVerticalCenterOffset:I

    .line 79
    .end local v0           #item:Lcom/scoreloop/client/android/ui/component/score/ScoreListItem;
    .end local v1           #itemHeight:I
    .end local v2           #itemView:Landroid/view/View;
    .end local v3           #listHeight:I
    :cond_0
    iget v4, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->_cachedVerticalCenterOffset:I

    return v4
.end method

.method private isHighlightedScore(Lcom/scoreloop/client/android/core/model/Score;)Z
    .locals 4
    .parameter "score"

    .prologue
    const/4 v1, 0x0

    .line 83
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->_searchList:Lcom/scoreloop/client/android/core/model/SearchList;

    invoke-static {}, Lcom/scoreloop/client/android/core/model/SearchList;->getLocalScoreSearchList()Lcom/scoreloop/client/android/core/model/SearchList;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v1

    .line 86
    :cond_1
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Score;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v0

    .line 87
    .local v0, user:Lcom/scoreloop/client/android/core/model/User;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->getSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/scoreloop/client/android/core/model/Session;->isOwnedByUser(Lcom/scoreloop/client/android/core/model/User;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private onRanking()V
    .locals 7

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->getPagingListAdapter()Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;

    move-result-object v0

    .line 153
    .local v0, adapter:Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;,"Lcom/scoreloop/client/android/ui/framework/PagingListAdapter<Lcom/scoreloop/client/android/ui/component/score/ScoreListItem;>;"
    iget-object v5, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->_rankingController:Lcom/scoreloop/client/android/core/controller/RankingController;

    invoke-virtual {v5}, Lcom/scoreloop/client/android/core/controller/RankingController;->getRanking()Lcom/scoreloop/client/android/core/model/Ranking;

    move-result-object v3

    .line 154
    .local v3, ranking:Lcom/scoreloop/client/android/core/model/Ranking;
    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/model/Ranking;->getRank()Ljava/lang/Integer;

    move-result-object v2

    .line 157
    .local v2, rank:Ljava/lang/Integer;
    if-eqz v2, :cond_2

    .line 160
    iget v5, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->_highlightedPosition:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 161
    iget v5, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->_highlightedPosition:I

    invoke-virtual {v0, v5}, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;->getContentItem(I)Lcom/scoreloop/client/android/ui/framework/BaseListItem;

    move-result-object v1

    check-cast v1, Lcom/scoreloop/client/android/ui/component/score/ScoreHighlightedListItem;

    .line 162
    .local v1, highlightedItem:Lcom/scoreloop/client/android/ui/component/score/ScoreHighlightedListItem;
    invoke-virtual {v1, v3}, Lcom/scoreloop/client/android/ui/component/score/ScoreHighlightedListItem;->setRanking(Lcom/scoreloop/client/android/core/model/Ranking;)V

    .line 163
    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;->notifyDataSetChanged()V

    .line 179
    .end local v1           #highlightedItem:Lcom/scoreloop/client/android/ui/component/score/ScoreHighlightedListItem;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->updateScrollPosition()V

    .line 180
    return-void

    .line 168
    :cond_1
    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/model/Ranking;->getScore()Lcom/scoreloop/client/android/core/model/Score;

    move-result-object v4

    .line 169
    .local v4, score:Lcom/scoreloop/client/android/core/model/Score;
    if-eqz v4, :cond_0

    .line 170
    new-instance v5, Lcom/scoreloop/client/android/ui/component/score/ScoreHighlightedListItem;

    invoke-direct {v5, p0, v4, v3}, Lcom/scoreloop/client/android/ui/component/score/ScoreHighlightedListItem;-><init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Lcom/scoreloop/client/android/core/model/Score;Lcom/scoreloop/client/android/core/model/Ranking;)V

    invoke-virtual {p0, v5}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->showFooter(Lcom/scoreloop/client/android/ui/framework/BaseListItem;)V

    goto :goto_0

    .line 175
    .end local v4           #score:Lcom/scoreloop/client/android/core/model/Score;
    :cond_2
    new-instance v5, Lcom/scoreloop/client/android/ui/component/score/ScoreExcludedListItem;

    invoke-direct {v5, p0}, Lcom/scoreloop/client/android/ui/component/score/ScoreExcludedListItem;-><init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;)V

    invoke-virtual {p0, v5}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->showFooter(Lcom/scoreloop/client/android/ui/framework/BaseListItem;)V

    goto :goto_0
.end method

.method private onScores()V
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 216
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->getPagingListAdapter()Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;

    move-result-object v0

    .line 217
    .local v0, adapter:Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;,"Lcom/scoreloop/client/android/ui/framework/PagingListAdapter<Lcom/scoreloop/client/android/ui/component/score/ScoreListItem;>;"
    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;->clear()V

    .line 220
    iget-object v11, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->_scoresController:Lcom/scoreloop/client/android/core/controller/ScoresController;

    invoke-virtual {v11}, Lcom/scoreloop/client/android/core/controller/ScoresController;->getScores()Ljava/util/List;

    move-result-object v8

    .line 221
    .local v8, scores:Ljava/util/List;,"Ljava/util/List<Lcom/scoreloop/client/android/core/model/Score;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v7

    .line 222
    .local v7, scoreCount:I
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->showsLocalSearchList()Z

    move-result v11

    if-nez v11, :cond_0

    move v1, v9

    .line 223
    .local v1, clickable:Z
    :goto_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v7, :cond_2

    .line 224
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/scoreloop/client/android/core/model/Score;

    .line 225
    .local v6, score:Lcom/scoreloop/client/android/core/model/Score;
    invoke-direct {p0, v6}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->isHighlightedScore(Lcom/scoreloop/client/android/core/model/Score;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 226
    iput v3, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->_highlightedPosition:I

    .line 227
    new-instance v11, Lcom/scoreloop/client/android/ui/component/score/ScoreHighlightedListItem;

    invoke-direct {v11, p0, v6, v4}, Lcom/scoreloop/client/android/ui/component/score/ScoreHighlightedListItem;-><init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Lcom/scoreloop/client/android/core/model/Score;Lcom/scoreloop/client/android/core/model/Ranking;)V

    invoke-virtual {v0, v11}, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;->add(Ljava/lang/Object;)V

    .line 223
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v1           #clickable:Z
    .end local v3           #i:I
    .end local v6           #score:Lcom/scoreloop/client/android/core/model/Score;
    :cond_0
    move v1, v10

    .line 222
    goto :goto_0

    .line 229
    .restart local v1       #clickable:Z
    .restart local v3       #i:I
    .restart local v6       #score:Lcom/scoreloop/client/android/core/model/Score;
    :cond_1
    new-instance v11, Lcom/scoreloop/client/android/ui/component/score/ScoreListItem;

    invoke-direct {v11, p0, v6, v1}, Lcom/scoreloop/client/android/ui/component/score/ScoreListItem;-><init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Lcom/scoreloop/client/android/core/model/Score;Z)V

    invoke-virtual {v0, v11}, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_2

    .line 233
    .end local v6           #score:Lcom/scoreloop/client/android/core/model/Score;
    :cond_2
    if-nez v7, :cond_3

    .line 234
    new-instance v10, Lcom/scoreloop/client/android/ui/component/base/EmptyListItem;

    const v11, 0x7f0802e9

    invoke-virtual {p0, v11}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, p0, v11}, Lcom/scoreloop/client/android/ui/component/base/EmptyListItem;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;->add(Ljava/lang/Object;)V

    .line 235
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 239
    .local v5, recentTopRank:Ljava/lang/Integer;
    :goto_3
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->getActivityArguments()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v9

    const-string v10, "recentTopRank"

    invoke-virtual {v9, v10, v5}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 242
    iget-object v9, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->_scoresController:Lcom/scoreloop/client/android/core/controller/ScoresController;

    invoke-virtual {v9}, Lcom/scoreloop/client/android/core/controller/ScoresController;->hasPreviousRange()Z

    move-result v2

    .line 243
    .local v2, hasPreviousRange:Z
    iget-object v9, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->_scoresController:Lcom/scoreloop/client/android/core/controller/ScoresController;

    invoke-virtual {v9}, Lcom/scoreloop/client/android/core/controller/ScoresController;->hasNextRange()Z

    move-result v9

    invoke-virtual {v0, v2, v2, v9}, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;->addPagingItems(ZZZ)V

    .line 246
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->showsLocalSearchList()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 247
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->hideFooter()V

    .line 248
    new-instance v9, Lcom/scoreloop/client/android/core/controller/ScoresController;

    new-instance v10, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity$2;

    invoke-direct {v10, p0}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity$2;-><init>(Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;)V

    invoke-direct {v9, v10}, Lcom/scoreloop/client/android/core/controller/ScoresController;-><init>(Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    invoke-virtual {v9}, Lcom/scoreloop/client/android/core/controller/ScoresController;->loadLocalScoresToSubmit()V

    .line 267
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->updateScrollPosition()V

    .line 273
    :goto_4
    return-void

    .line 237
    .end local v2           #hasPreviousRange:Z
    .end local v5           #recentTopRank:Ljava/lang/Integer;
    :cond_3
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/scoreloop/client/android/core/model/Score;

    invoke-virtual {v9}, Lcom/scoreloop/client/android/core/model/Score;->getRank()Ljava/lang/Integer;

    move-result-object v5

    .restart local v5       #recentTopRank:Ljava/lang/Integer;
    goto :goto_3

    .line 270
    .restart local v2       #hasPreviousRange:Z
    :cond_4
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v9

    invoke-virtual {v9}, Lcom/scoreloop/client/android/core/model/Game;->hasModes()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->getScreenValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v9

    const-string v10, "mode"

    invoke-virtual {v9, v10}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    move-object v4, v9

    .line 271
    .local v4, mode:Ljava/lang/Integer;
    :cond_5
    iget-object v9, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->_rankingController:Lcom/scoreloop/client/android/core/controller/RankingController;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v10

    invoke-virtual {v9, v10, v4}, Lcom/scoreloop/client/android/core/controller/RankingController;->loadRankingForUserInGameMode(Lcom/scoreloop/client/android/core/model/User;Ljava/lang/Integer;)V

    goto :goto_4
.end method

.method private setNeedsRefresh(Lcom/scoreloop/client/android/ui/framework/PagingDirection;)V
    .locals 1
    .parameter "pagingDirection"

    .prologue
    .line 306
    const/4 v0, -0x1

    iput v0, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->_highlightedPosition:I

    .line 307
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->_pagingDirection:Lcom/scoreloop/client/android/ui/framework/PagingDirection;

    .line 308
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->hideFooter()V

    .line 309
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->setNeedsRefresh()V

    .line 310
    return-void
.end method

.method private showsLocalSearchList()Z
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->_searchList:Lcom/scoreloop/client/android/core/model/SearchList;

    invoke-static {}, Lcom/scoreloop/client/android/core/model/SearchList;->getLocalScoreSearchList()Lcom/scoreloop/client/android/core/model/SearchList;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateScrollPosition()V
    .locals 2

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity$3;

    invoke-direct {v1, p0}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity$3;-><init>(Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 338
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 92
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    new-instance v0, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;

    invoke-direct {v0, p0}, Lcom/scoreloop/client/android/ui/framework/PagingListAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 96
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->getActivityArguments()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v0

    const-string v1, "searchList"

    invoke-static {}, Lcom/scoreloop/client/android/core/model/SearchList;->getDefaultScoreSearchList()Lcom/scoreloop/client/android/core/model/SearchList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/SearchList;

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->_searchList:Lcom/scoreloop/client/android/core/model/SearchList;

    .line 98
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "mode"

    aput-object v1, v0, v6

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->addObservedKeys([Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->_searchList:Lcom/scoreloop/client/android/core/model/SearchList;

    invoke-static {}, Lcom/scoreloop/client/android/core/model/SearchList;->getBuddiesScoreSearchList()Lcom/scoreloop/client/android/core/model/SearchList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/model/SearchList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "numberBuddies"

    aput-object v1, v0, v6

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->addObservedKeys([Ljava/lang/String;)V

    .line 103
    :cond_0
    new-instance v0, Lcom/scoreloop/client/android/core/controller/ScoresController;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->getRequestControllerObserver()Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/scoreloop/client/android/core/controller/ScoresController;-><init>(Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->_scoresController:Lcom/scoreloop/client/android/core/controller/ScoresController;

    .line 104
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->_scoresController:Lcom/scoreloop/client/android/core/controller/ScoresController;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Lcom/scoreloop/client/android/ui/component/score/ScoreListItem;

    new-instance v3, Lcom/scoreloop/client/android/core/model/Score;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/scoreloop/client/android/core/model/Score;-><init>(Ljava/lang/Double;Ljava/util/Map;)V

    invoke-direct {v2, p0, v3, v6}, Lcom/scoreloop/client/android/ui/component/score/ScoreListItem;-><init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Lcom/scoreloop/client/android/core/model/Score;Z)V

    invoke-static {v1, v2}, Lcom/scoreloop/client/android/ui/component/base/Constant;->getOptimalRangeLength(Landroid/view/View;Lcom/scoreloop/client/android/ui/framework/BaseListItem;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/controller/ScoresController;->setRangeLength(I)V

    .line 106
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->_scoresController:Lcom/scoreloop/client/android/core/controller/ScoresController;

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->_searchList:Lcom/scoreloop/client/android/core/model/SearchList;

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/controller/ScoresController;->setSearchList(Lcom/scoreloop/client/android/core/model/SearchList;)V

    .line 108
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->showsLocalSearchList()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    new-instance v0, Lcom/scoreloop/client/android/ui/component/score/ScoreSubmitLocalListItem;

    invoke-direct {v0, p0}, Lcom/scoreloop/client/android/ui/component/score/ScoreSubmitLocalListItem;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->_submitLocalScoresListItem:Lcom/scoreloop/client/android/ui/framework/BaseListItem;

    .line 114
    :goto_0
    return-void

    .line 111
    :cond_1
    new-instance v0, Lcom/scoreloop/client/android/core/controller/RankingController;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->getRequestControllerObserver()Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/scoreloop/client/android/core/controller/RankingController;-><init>(Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->_rankingController:Lcom/scoreloop/client/android/core/controller/RankingController;

    .line 112
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->_rankingController:Lcom/scoreloop/client/android/core/controller/RankingController;

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->_searchList:Lcom/scoreloop/client/android/core/model/SearchList;

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/controller/RankingController;->setSearchList(Lcom/scoreloop/client/android/core/model/SearchList;)V

    goto :goto_0
.end method

.method protected onFooterItemClick(Lcom/scoreloop/client/android/ui/framework/BaseListItem;)V
    .locals 2
    .parameter "footerItem"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->_submitLocalScoresListItem:Lcom/scoreloop/client/android/ui/framework/BaseListItem;

    if-ne p1, v0, :cond_1

    .line 119
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->showSpinner()V

    .line 120
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->getManager()Lcom/scoreloop/client/android/ui/component/base/Manager;

    move-result-object v0

    new-instance v1, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity$1;

    invoke-direct {v1, p0}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity$1;-><init>(Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;)V

    invoke-interface {v0, v1}, Lcom/scoreloop/client/android/ui/component/base/Manager;->submitLocalScores(Ljava/lang/Runnable;)V

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    invoke-virtual {p1}, Lcom/scoreloop/client/android/ui/framework/BaseListItem;->getType()I

    move-result v0

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    .line 129
    sget-object v0, Lcom/scoreloop/client/android/ui/framework/PagingDirection;->PAGE_TO_OWN:Lcom/scoreloop/client/android/ui/framework/PagingDirection;

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->setNeedsRefresh(Lcom/scoreloop/client/android/ui/framework/PagingDirection;)V

    goto :goto_0
.end method

.method public onListItemClick(Lcom/scoreloop/client/android/ui/component/score/ScoreListItem;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->getFactory()Lcom/scoreloop/client/android/ui/component/base/Factory;

    move-result-object v0

    .line 136
    .local v0, factory:Lcom/scoreloop/client/android/ui/component/base/Factory;
    invoke-virtual {p1}, Lcom/scoreloop/client/android/ui/component/score/ScoreListItem;->getTarget()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scoreloop/client/android/core/model/Score;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Score;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v1

    .line 138
    .local v1, user:Lcom/scoreloop/client/android/core/model/User;
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->getSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/scoreloop/client/android/core/model/Session;->isOwnedByUser(Lcom/scoreloop/client/android/core/model/User;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    invoke-interface {v0, v1}, Lcom/scoreloop/client/android/ui/component/base/Factory;->createProfileSettingsScreenDescription(Lcom/scoreloop/client/android/core/model/User;)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->display(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)V

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_0
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/scoreloop/client/android/ui/component/base/Factory;->createUserDetailScreenDescription(Lcom/scoreloop/client/android/core/model/User;Ljava/lang/Boolean;)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->display(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)V

    goto :goto_0
.end method

.method public bridge synthetic onListItemClick(Lcom/scoreloop/client/android/ui/framework/BaseListItem;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    check-cast p1, Lcom/scoreloop/client/android/ui/component/score/ScoreListItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->onListItemClick(Lcom/scoreloop/client/android/ui/component/score/ScoreListItem;)V

    return-void
.end method

.method public onPagingListItemClick(Lcom/scoreloop/client/android/ui/framework/PagingDirection;)V
    .locals 0
    .parameter "pagingDirection"

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->setNeedsRefresh(Lcom/scoreloop/client/android/ui/framework/PagingDirection;)V

    .line 148
    return-void
.end method

.method public onRefresh(I)V
    .locals 5
    .parameter "flags"

    .prologue
    const/4 v4, 0x1

    .line 184
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->_scoresController:Lcom/scoreloop/client/android/core/controller/ScoresController;

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->showSpinnerFor(Ljava/lang/Object;)V

    .line 185
    invoke-static {}, Lcom/scoreloop/client/android/core/model/Session;->getCurrentSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Session;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Game;->hasModes()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->_scoresController:Lcom/scoreloop/client/android/core/controller/ScoresController;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->getScreenValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v1

    const-string v3, "mode"

    invoke-virtual {v1, v3}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v2, v1}, Lcom/scoreloop/client/android/core/controller/ScoresController;->setMode(Ljava/lang/Integer;)V

    .line 191
    :goto_0
    sget-object v1, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity$4;->$SwitchMap$com$scoreloop$client$android$ui$framework$PagingDirection:[I

    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->_pagingDirection:Lcom/scoreloop/client/android/ui/framework/PagingDirection;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/ui/framework/PagingDirection;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 213
    :goto_1
    return-void

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->_scoresController:Lcom/scoreloop/client/android/core/controller/ScoresController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/core/controller/ScoresController;->setMode(Ljava/lang/Integer;)V

    goto :goto_0

    .line 193
    :pswitch_0
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->_scoresController:Lcom/scoreloop/client/android/core/controller/ScoresController;

    invoke-virtual {v1, v4}, Lcom/scoreloop/client/android/core/controller/ScoresController;->loadRangeAtRank(I)V

    goto :goto_1

    .line 197
    :pswitch_1
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->getActivityArguments()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v1

    const-string v2, "recentTopRank"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 198
    .local v0, recentTopRank:Ljava/lang/Integer;
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->_scoresController:Lcom/scoreloop/client/android/core/controller/ScoresController;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/core/controller/ScoresController;->loadRangeAtRank(I)V

    goto :goto_1

    .line 202
    .end local v0           #recentTopRank:Ljava/lang/Integer;
    :pswitch_2
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->_scoresController:Lcom/scoreloop/client/android/core/controller/ScoresController;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/controller/ScoresController;->loadPreviousRange()V

    goto :goto_1

    .line 206
    :pswitch_3
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->_scoresController:Lcom/scoreloop/client/android/core/controller/ScoresController;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/controller/ScoresController;->loadNextRange()V

    goto :goto_1

    .line 210
    :pswitch_4
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->_scoresController:Lcom/scoreloop/client/android/core/controller/ScoresController;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->getSessionUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/core/controller/ScoresController;->loadRangeForUser(Lcom/scoreloop/client/android/core/model/User;)V

    goto :goto_1

    .line 191
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 277
    invoke-super {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;->onStart()V

    .line 279
    sget-object v0, Lcom/scoreloop/client/android/ui/framework/PagingDirection;->PAGE_TO_RECENT:Lcom/scoreloop/client/android/ui/framework/PagingDirection;

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->setNeedsRefresh(Lcom/scoreloop/client/android/ui/framework/PagingDirection;)V

    .line 280
    return-void
.end method

.method public onValueChanged(Lcom/scoreloop/client/android/ui/framework/ValueStore;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter "valueStore"
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 284
    const-string v0, "mode"

    invoke-static {p2, v0, p3, p4}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->isValueChangedFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 285
    if-nez p3, :cond_1

    .line 287
    sget-object v0, Lcom/scoreloop/client/android/ui/framework/PagingDirection;->PAGE_TO_RECENT:Lcom/scoreloop/client/android/ui/framework/PagingDirection;

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->setNeedsRefresh(Lcom/scoreloop/client/android/ui/framework/PagingDirection;)V

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    sget-object v0, Lcom/scoreloop/client/android/ui/framework/PagingDirection;->PAGE_TO_TOP:Lcom/scoreloop/client/android/ui/framework/PagingDirection;

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->setNeedsRefresh(Lcom/scoreloop/client/android/ui/framework/PagingDirection;)V

    goto :goto_0

    .line 291
    :cond_2
    const-string v0, "numberBuddies"

    invoke-static {p2, v0, p3, p4}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->isValueChangedFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    sget-object v0, Lcom/scoreloop/client/android/ui/framework/PagingDirection;->PAGE_TO_TOP:Lcom/scoreloop/client/android/ui/framework/PagingDirection;

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->setNeedsRefresh(Lcom/scoreloop/client/android/ui/framework/PagingDirection;)V

    goto :goto_0
.end method

.method public requestControllerDidReceiveResponseSafe(Lcom/scoreloop/client/android/core/controller/RequestController;)V
    .locals 1
    .parameter "aRequestController"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->_scoresController:Lcom/scoreloop/client/android/core/controller/ScoresController;

    if-ne p1, v0, :cond_1

    .line 299
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->onScores()V

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->_rankingController:Lcom/scoreloop/client/android/core/controller/RankingController;

    if-ne p1, v0, :cond_0

    .line 301
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->onRanking()V

    goto :goto_0
.end method
