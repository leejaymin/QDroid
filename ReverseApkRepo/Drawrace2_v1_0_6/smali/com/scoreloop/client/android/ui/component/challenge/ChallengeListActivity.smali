.class public Lcom/scoreloop/client/android/ui/component/challenge/ChallengeListActivity;
.super Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;
.source "ChallengeListActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity",
        "<",
        "Lcom/scoreloop/client/android/ui/framework/BaseListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private _buddies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/model/User;",
            ">;"
        }
    .end annotation
.end field

.field private _expandableHistoryListItem:Lcom/scoreloop/client/android/ui/component/base/ExpandableListItem;

.field private _expandableOpenListItem:Lcom/scoreloop/client/android/ui/component/base/ExpandableListItem;

.field private _history:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/model/Challenge;",
            ">;"
        }
    .end annotation
.end field

.field private _historyController:Lcom/scoreloop/client/android/core/controller/ChallengesController;

.field private _open:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/model/Challenge;",
            ">;"
        }
    .end annotation
.end field

.field private _openController:Lcom/scoreloop/client/android/core/controller/ChallengesController;

.field private _showPrize:Z

.field private _showSeeMoreHistory:Z

.field private _showSeeMoreOpen:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 43
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;-><init>()V

    .line 53
    iput-boolean v0, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeListActivity;->_showSeeMoreHistory:Z

    .line 54
    iput-boolean v0, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeListActivity;->_showSeeMoreOpen:Z

    return-void
.end method

.method private updateListIfReady()V
    .locals 12

    .prologue
    const v11, 0x7f0802e5

    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 136
    iget-object v6, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeListActivity;->_open:Ljava/util/List;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeListActivity;->_history:Ljava/util/List;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeListActivity;->_buddies:Ljava/util/List;

    if-nez v6, :cond_1

    .line 187
    :cond_0
    return-void

    .line 140
    :cond_1
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeListActivity;->getBaseListAdapter()Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;

    move-result-object v0

    .line 141
    .local v0, adapter:Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;,"Lcom/scoreloop/client/android/ui/framework/BaseListAdapter<Lcom/scoreloop/client/android/ui/framework/BaseListItem;>;"
    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->clear()V

    .line 143
    new-instance v6, Lcom/scoreloop/client/android/ui/component/base/CaptionListItem;

    const v7, 0x7f0802ee

    invoke-virtual {p0, v7}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeListActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p0, v9, v7}, Lcom/scoreloop/client/android/ui/component/base/CaptionListItem;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->add(Ljava/lang/Object;)V

    .line 144
    iget-object v6, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeListActivity;->_open:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_8

    .line 145
    const/4 v3, 0x0

    .line 146
    .local v3, i:I
    iget-object v6, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeListActivity;->_open:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scoreloop/client/android/core/model/Challenge;

    .line 147
    .local v2, challenge:Lcom/scoreloop/client/android/core/model/Challenge;
    iget-boolean v6, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeListActivity;->_showSeeMoreOpen:Z

    if-eqz v6, :cond_7

    add-int/lit8 v3, v3, 0x1

    if-le v3, v10, :cond_7

    .line 148
    new-instance v6, Lcom/scoreloop/client/android/ui/component/base/ExpandableListItem;

    invoke-direct {v6, p0}, Lcom/scoreloop/client/android/ui/component/base/ExpandableListItem;-><init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;)V

    iput-object v6, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeListActivity;->_expandableOpenListItem:Lcom/scoreloop/client/android/ui/component/base/ExpandableListItem;

    .line 149
    iget-object v6, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeListActivity;->_expandableOpenListItem:Lcom/scoreloop/client/android/ui/component/base/ExpandableListItem;

    invoke-virtual {v0, v6}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->add(Ljava/lang/Object;)V

    .line 158
    .end local v2           #challenge:Lcom/scoreloop/client/android/core/model/Challenge;
    .end local v3           #i:I
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    new-instance v6, Lcom/scoreloop/client/android/ui/component/base/CaptionListItem;

    const v7, 0x7f08027a

    invoke-virtual {p0, v7}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeListActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p0, v9, v7}, Lcom/scoreloop/client/android/ui/component/base/CaptionListItem;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->add(Ljava/lang/Object;)V

    .line 159
    iget-object v6, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeListActivity;->_history:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_a

    .line 160
    const/4 v3, 0x0

    .line 161
    .restart local v3       #i:I
    const/4 v1, 0x0

    .line 162
    .local v1, addedItem:Z
    iget-object v6, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeListActivity;->_history:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scoreloop/client/android/core/model/Challenge;

    .line 163
    .restart local v2       #challenge:Lcom/scoreloop/client/android/core/model/Challenge;
    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Challenge;->isComplete()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Challenge;->isOpen()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Challenge;->isAssigned()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Challenge;->isRejected()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Challenge;->isAccepted()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 165
    :cond_4
    const/4 v1, 0x1

    .line 166
    iget-boolean v6, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeListActivity;->_showSeeMoreHistory:Z

    if-eqz v6, :cond_9

    add-int/lit8 v3, v3, 0x1

    if-le v3, v10, :cond_9

    .line 167
    new-instance v6, Lcom/scoreloop/client/android/ui/component/base/ExpandableListItem;

    invoke-direct {v6, p0}, Lcom/scoreloop/client/android/ui/component/base/ExpandableListItem;-><init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;)V

    iput-object v6, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeListActivity;->_expandableHistoryListItem:Lcom/scoreloop/client/android/ui/component/base/ExpandableListItem;

    .line 168
    iget-object v6, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeListActivity;->_expandableHistoryListItem:Lcom/scoreloop/client/android/ui/component/base/ExpandableListItem;

    invoke-virtual {v0, v6}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->add(Ljava/lang/Object;)V

    .line 174
    .end local v2           #challenge:Lcom/scoreloop/client/android/core/model/Challenge;
    :cond_5
    if-nez v1, :cond_6

    .line 175
    new-instance v6, Lcom/scoreloop/client/android/ui/component/base/EmptyListItem;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/scoreloop/client/android/ui/component/base/EmptyListItem;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->add(Ljava/lang/Object;)V

    .line 181
    .end local v1           #addedItem:Z
    .end local v3           #i:I
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_6
    :goto_3
    new-instance v6, Lcom/scoreloop/client/android/ui/component/base/CaptionListItem;

    const v7, 0x7f0802dd

    invoke-virtual {p0, v7}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeListActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p0, v9, v7}, Lcom/scoreloop/client/android/ui/component/base/CaptionListItem;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->add(Ljava/lang/Object;)V

    .line 183
    new-instance v6, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeCreateListItem;

    invoke-direct {v6, p0, v9}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeCreateListItem;-><init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Lcom/scoreloop/client/android/core/model/User;)V

    invoke-virtual {v0, v6}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->add(Ljava/lang/Object;)V

    .line 184
    iget-object v6, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeListActivity;->_buddies:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/scoreloop/client/android/core/model/User;

    .line 185
    .local v5, user:Lcom/scoreloop/client/android/core/model/User;
    new-instance v6, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeCreateListItem;

    invoke-direct {v6, p0, v5}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeCreateListItem;-><init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Lcom/scoreloop/client/android/core/model/User;)V

    invoke-virtual {v0, v6}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_4

    .line 152
    .end local v5           #user:Lcom/scoreloop/client/android/core/model/User;
    .restart local v2       #challenge:Lcom/scoreloop/client/android/core/model/Challenge;
    .restart local v3       #i:I
    :cond_7
    new-instance v6, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeOpenListItem;

    invoke-direct {v6, p0, v2}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeOpenListItem;-><init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Lcom/scoreloop/client/android/core/model/Challenge;)V

    invoke-virtual {v0, v6}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->add(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 155
    .end local v2           #challenge:Lcom/scoreloop/client/android/core/model/Challenge;
    .end local v3           #i:I
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_8
    new-instance v6, Lcom/scoreloop/client/android/ui/component/base/EmptyListItem;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0802e8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/scoreloop/client/android/ui/component/base/EmptyListItem;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->add(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 171
    .restart local v1       #addedItem:Z
    .restart local v2       #challenge:Lcom/scoreloop/client/android/core/model/Challenge;
    .restart local v3       #i:I
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_9
    new-instance v6, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem;

    iget-boolean v7, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeListActivity;->_showPrize:Z

    invoke-direct {v6, p0, v2, v7}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem;-><init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Lcom/scoreloop/client/android/core/model/Challenge;Z)V

    invoke-virtual {v0, v6}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->add(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 178
    .end local v1           #addedItem:Z
    .end local v2           #challenge:Lcom/scoreloop/client/android/core/model/Challenge;
    .end local v3           #i:I
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_a
    new-instance v6, Lcom/scoreloop/client/android/ui/component/base/EmptyListItem;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/scoreloop/client/android/ui/component/base/EmptyListItem;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_3
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 58
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    new-instance v0, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;

    invoke-direct {v0, p0}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 62
    new-instance v0, Lcom/scoreloop/client/android/core/controller/ChallengesController;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeListActivity;->getRequestControllerObserver()Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/scoreloop/client/android/core/controller/ChallengesController;-><init>(Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeListActivity;->_openController:Lcom/scoreloop/client/android/core/controller/ChallengesController;

    .line 63
    new-instance v0, Lcom/scoreloop/client/android/core/controller/ChallengesController;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeListActivity;->getRequestControllerObserver()Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/scoreloop/client/android/core/controller/ChallengesController;-><init>(Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeListActivity;->_historyController:Lcom/scoreloop/client/android/core/controller/ChallengesController;

    .line 65
    new-array v0, v4, [Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "sessionUserValues"

    aput-object v2, v1, v3

    const-string v2, "userBuddies"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->concatenateKeys([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeListActivity;->addObservedKeys([Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public onListItemClick(Lcom/scoreloop/client/android/ui/framework/BaseListItem;)V
    .locals 8
    .parameter "item"

    .prologue
    const/4 v7, 0x4

    const/4 v4, 0x0

    .line 71
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeListActivity;->getFactory()Lcom/scoreloop/client/android/ui/component/base/Factory;

    move-result-object v1

    .line 72
    .local v1, factory:Lcom/scoreloop/client/android/ui/component/base/Factory;
    iget-object v5, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeListActivity;->_expandableHistoryListItem:Lcom/scoreloop/client/android/ui/component/base/ExpandableListItem;

    if-ne p1, v5, :cond_1

    .line 73
    iput-boolean v4, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeListActivity;->_showSeeMoreHistory:Z

    .line 74
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeListActivity;->updateListIfReady()V

    .line 93
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 75
    .restart local p1
    :cond_1
    iget-object v5, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeListActivity;->_expandableOpenListItem:Lcom/scoreloop/client/android/ui/component/base/ExpandableListItem;

    if-ne p1, v5, :cond_2

    .line 76
    iput-boolean v4, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeListActivity;->_showSeeMoreOpen:Z

    .line 77
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeListActivity;->updateListIfReady()V

    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {p1}, Lcom/scoreloop/client/android/ui/framework/BaseListItem;->getType()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_3

    .line 79
    check-cast p1, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeOpenListItem;

    .end local p1
    invoke-virtual {p1}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeOpenListItem;->getTarget()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scoreloop/client/android/core/model/Challenge;

    invoke-interface {v1, v4}, Lcom/scoreloop/client/android/ui/component/base/Factory;->createChallengeAcceptScreenDescription(Lcom/scoreloop/client/android/core/model/Challenge;)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeListActivity;->display(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)V

    goto :goto_0

    .line 80
    .restart local p1
    :cond_3
    invoke-virtual {p1}, Lcom/scoreloop/client/android/ui/framework/BaseListItem;->getType()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_4

    .line 81
    check-cast p1, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeCreateListItem;

    .end local p1
    invoke-virtual {p1}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeCreateListItem;->getTarget()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scoreloop/client/android/core/model/User;

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Lcom/scoreloop/client/android/ui/component/base/Factory;->createChallengeCreateScreenDescription(Lcom/scoreloop/client/android/core/model/User;Ljava/lang/Integer;)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeListActivity;->display(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)V

    goto :goto_0

    .line 82
    .restart local p1
    :cond_4
    invoke-virtual {p1}, Lcom/scoreloop/client/android/ui/framework/BaseListItem;->getType()I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 83
    iget-boolean v5, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeListActivity;->_showPrize:Z

    if-nez v5, :cond_5

    const/4 v4, 0x1

    :cond_5
    iput-boolean v4, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeListActivity;->_showPrize:Z

    .line 84
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeListActivity;->getBaseListAdapter()Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;

    move-result-object v0

    .line 85
    .local v0, adapter:Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;,"Lcom/scoreloop/client/android/ui/framework/BaseListAdapter<Lcom/scoreloop/client/android/ui/framework/BaseListItem;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->getCount()I

    move-result v4

    if-ge v2, v4, :cond_7

    .line 86
    invoke-virtual {v0, v2}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/scoreloop/client/android/ui/framework/BaseListItem;

    .line 87
    .local v3, it:Lcom/scoreloop/client/android/ui/framework/BaseListItem;
    invoke-virtual {v3}, Lcom/scoreloop/client/android/ui/framework/BaseListItem;->getType()I

    move-result v4

    if-ne v4, v7, :cond_6

    .line 88
    check-cast v3, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem;

    .end local v3           #it:Lcom/scoreloop/client/android/ui/framework/BaseListItem;
    iget-boolean v4, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeListActivity;->_showPrize:Z

    invoke-virtual {v3, v4}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem;->setShowPrize(Z)V

    .line 85
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 91
    :cond_7
    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onRefresh(I)V
    .locals 1
    .parameter "flags"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeListActivity;->_openController:Lcom/scoreloop/client/android/core/controller/ChallengesController;

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeListActivity;->showSpinnerFor(Ljava/lang/Object;)V

    .line 98
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeListActivity;->_openController:Lcom/scoreloop/client/android/core/controller/ChallengesController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/ChallengesController;->loadOpenChallenges()V

    .line 100
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeListActivity;->_historyController:Lcom/scoreloop/client/android/core/controller/ChallengesController;

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeListActivity;->showSpinnerFor(Ljava/lang/Object;)V

    .line 101
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeListActivity;->_historyController:Lcom/scoreloop/client/android/core/controller/ChallengesController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/ChallengesController;->loadChallengeHistory()V

    .line 102
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 106
    invoke-super {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;->onStart()V

    .line 108
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeListActivity;->setNeedsRefresh()V

    .line 109
    return-void
.end method

.method public onValueChanged(Lcom/scoreloop/client/android/ui/framework/ValueStore;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter "valueStore"
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 114
    instance-of v0, p4, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 115
    check-cast p4, Ljava/util/List;

    .end local p4
    iput-object p4, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeListActivity;->_buddies:Ljava/util/List;

    .line 116
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeListActivity;->updateListIfReady()V

    .line 118
    :cond_0
    return-void
.end method

.method public onValueSetDirty(Lcom/scoreloop/client/android/ui/framework/ValueStore;Ljava/lang/String;)V
    .locals 4
    .parameter "valueStore"
    .parameter "key"

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeListActivity;->getSessionUserValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v0

    const-string v1, "userBuddies"

    sget-object v2, Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;->NOT_DIRTY:Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->retrieveValue(Ljava/lang/String;Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;Ljava/lang/Object;)Z

    .line 123
    return-void
.end method

.method public requestControllerDidReceiveResponseSafe(Lcom/scoreloop/client/android/core/controller/RequestController;)V
    .locals 1
    .parameter "aRequestController"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeListActivity;->_historyController:Lcom/scoreloop/client/android/core/controller/ChallengesController;

    if-ne p1, v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeListActivity;->_historyController:Lcom/scoreloop/client/android/core/controller/ChallengesController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/ChallengesController;->getChallenges()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeListActivity;->_history:Ljava/util/List;

    .line 132
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeListActivity;->updateListIfReady()V

    .line 133
    return-void

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeListActivity;->_openController:Lcom/scoreloop/client/android/core/controller/ChallengesController;

    if-ne p1, v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeListActivity;->_openController:Lcom/scoreloop/client/android/core/controller/ChallengesController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/ChallengesController;->getChallenges()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeListActivity;->_open:Ljava/util/List;

    goto :goto_0
.end method
