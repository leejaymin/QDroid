.class public Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;
.super Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;
.source "EntryListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity$EntryListAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity",
        "<",
        "Lcom/scoreloop/client/android/ui/framework/BaseListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private achievementsItem:Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;

.field private challengesItem:Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;

.field private leaderboardsItem:Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;

.field private newsItem:Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;

.field private shopItem:Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;-><init>()V

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;)Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->leaderboardsItem:Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;

    return-object v0
.end method

.method static synthetic access$002(Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;)Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->leaderboardsItem:Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;

    return-object p1
.end method

.method static synthetic access$100(Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;)Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->achievementsItem:Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;

    return-object v0
.end method

.method static synthetic access$102(Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;)Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->achievementsItem:Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;

    return-object p1
.end method

.method static synthetic access$200(Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;)Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->challengesItem:Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;

    return-object v0
.end method

.method static synthetic access$202(Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;)Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->challengesItem:Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;

    return-object p1
.end method

.method static synthetic access$300(Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;)Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->newsItem:Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;

    return-object v0
.end method

.method static synthetic access$302(Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;)Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->newsItem:Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;

    return-object p1
.end method

.method static synthetic access$400(Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;)Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->shopItem:Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;

    return-object v0
.end method

.method static synthetic access$402(Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;)Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->shopItem:Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;

    return-object p1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 86
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    new-instance v0, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity$EntryListAdapter;

    invoke-direct {v0, p0, p0}, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity$EntryListAdapter;-><init>(Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 90
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "userValues"

    aput-object v2, v1, v3

    const-string v2, "numberAchievements"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->concatenateKeys([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "userValues"

    aput-object v2, v1, v3

    const-string v2, "numberChallengesWon"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->concatenateKeys([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "userValues"

    aput-object v2, v1, v3

    const-string v2, "newsNumberUnreadItems"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->concatenateKeys([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->addObservedKeys([Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method protected onFooterItemClick(Lcom/scoreloop/client/android/ui/framework/BaseListItem;)V
    .locals 0
    .parameter "footerItem"

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->hideFooter()V

    .line 154
    invoke-static {p0}, Lcom/scoreloop/client/android/ui/component/base/PackageManager;->installScoreloopApp(Landroid/content/Context;)V

    .line 155
    return-void
.end method

.method public onListItemClick(Lcom/scoreloop/client/android/ui/framework/BaseListItem;)V
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 97
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->getFactory()Lcom/scoreloop/client/android/ui/component/base/Factory;

    move-result-object v0

    .line 98
    .local v0, factory:Lcom/scoreloop/client/android/ui/component/base/Factory;
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->leaderboardsItem:Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;

    if-ne p1, v1, :cond_1

    .line 99
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v1

    invoke-interface {v0, v1, v2, v2}, Lcom/scoreloop/client/android/ui/component/base/Factory;->createScoreScreenDescription(Lcom/scoreloop/client/android/core/model/Game;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->display(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->challengesItem:Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;

    if-ne p1, v1, :cond_2

    .line 101
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/scoreloop/client/android/ui/component/base/Factory;->createChallengeScreenDescription(Lcom/scoreloop/client/android/core/model/User;)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->display(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)V

    goto :goto_0

    .line 102
    :cond_2
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->achievementsItem:Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;

    if-ne p1, v1, :cond_3

    .line 103
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/scoreloop/client/android/ui/component/base/Factory;->createAchievementScreenDescription(Lcom/scoreloop/client/android/core/model/User;)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->display(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)V

    goto :goto_0

    .line 104
    :cond_3
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->newsItem:Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;

    if-ne p1, v1, :cond_4

    .line 105
    invoke-interface {v0}, Lcom/scoreloop/client/android/ui/component/base/Factory;->createNewsScreenDescription()Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->display(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)V

    goto :goto_0

    .line 106
    :cond_4
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->shopItem:Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;

    if-ne p1, v1, :cond_0

    .line 107
    invoke-interface {v0, v3, v2, v2, v3}, Lcom/scoreloop/client/android/ui/component/base/Factory;->createGameItemsScreenDescription(ILjava/lang/String;Ljava/util/List;I)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->display(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 6

    .prologue
    .line 143
    invoke-super {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;->onResume()V

    .line 144
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->hideFooter()V

    .line 145
    invoke-static {p0}, Lcom/scoreloop/client/android/ui/component/base/PackageManager;->isScoreloopAppInstalled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020061

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const v1, 0x7f080309

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f08030a

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;-><init>(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->showFooter(Lcom/scoreloop/client/android/ui/framework/BaseListItem;)V

    .line 149
    :cond_0
    return-void
.end method

.method public onValueChanged(Lcom/scoreloop/client/android/ui/framework/ValueStore;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .parameter "valueStore"
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    const/4 v2, 0x0

    .line 113
    const-string v0, "numberAchievements"

    invoke-static {p2, v0, p3, p4}, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->isValueChangedFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->achievementsItem:Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->getUserValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v1

    invoke-static {p0, v1, v2}, Lcom/scoreloop/client/android/ui/component/base/StringFormatter;->getAchievementsSubTitle(Landroid/content/Context;Lcom/scoreloop/client/android/ui/framework/ValueStore;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;->setSubTitle(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->getBaseListAdapter()Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->notifyDataSetChanged()V

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    const-string v0, "numberChallengesWon"

    invoke-static {p2, v0, p3, p4}, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->isValueChangedFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->challengesItem:Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->getUserValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/scoreloop/client/android/ui/component/base/StringFormatter;->getChallengesSubTitle(Landroid/content/Context;Lcom/scoreloop/client/android/ui/framework/ValueStore;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;->setSubTitle(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->getBaseListAdapter()Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 119
    :cond_2
    const-string v0, "newsNumberUnreadItems"

    invoke-static {p2, v0, p3, p4}, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->isValueChangedFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->newsItem:Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->getUserValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/scoreloop/client/android/ui/component/base/StringFormatter;->getNewsSubTitle(Landroid/content/Context;Lcom/scoreloop/client/android/ui/framework/ValueStore;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;->setSubTitle(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->newsItem:Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->getUserValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v1

    invoke-static {p0, v1, v2}, Lcom/scoreloop/client/android/ui/component/base/StringFormatter;->getNewsDrawable(Landroid/content/Context;Lcom/scoreloop/client/android/ui/framework/ValueStore;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/component/entry/EntryListItem;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->getBaseListAdapter()Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onValueSetDirty(Lcom/scoreloop/client/android/ui/framework/ValueStore;Ljava/lang/String;)V
    .locals 5
    .parameter "valueStore"
    .parameter "key"

    .prologue
    const/4 v3, 0x0

    .line 128
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->getConfiguration()Lcom/scoreloop/client/android/ui/component/base/Configuration;

    move-result-object v0

    .line 130
    .local v0, configuration:Lcom/scoreloop/client/android/ui/component/base/Configuration;
    sget-object v1, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->ACHIEVEMENT:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/component/base/Configuration;->isFeatureEnabled(Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "numberAchievements"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->getUserValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v1

    sget-object v2, Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;->NOT_DIRTY:Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;

    invoke-virtual {v1, p2, v2, v3}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->retrieveValue(Ljava/lang/String;Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;Ljava/lang/Object;)Z

    .line 133
    :cond_0
    sget-object v1, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->CHALLENGE:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/component/base/Configuration;->isFeatureEnabled(Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "numberChallengesWon"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->getUserValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v1

    sget-object v2, Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;->NOT_DIRTY:Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;

    invoke-virtual {v1, p2, v2, v3}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->retrieveValue(Ljava/lang/String;Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;Ljava/lang/Object;)Z

    .line 136
    :cond_1
    sget-object v1, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->NEWS:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/component/base/Configuration;->isFeatureEnabled(Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "newsNumberUnreadItems"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 137
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;->getUserValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v1

    sget-object v2, Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;->NOT_OLDER_THAN:Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;

    const-wide/16 v3, 0x7530

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, p2, v2, v3}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->retrieveValue(Ljava/lang/String;Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;Ljava/lang/Object;)Z

    .line 139
    :cond_2
    return-void
.end method
