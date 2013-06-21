.class public Lcom/scoreloop/client/android/ui/component/market/MarketListActivity;
.super Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;
.source "MarketListActivity.java"

# interfaces
.implements Lcom/scoreloop/client/android/ui/framework/ValueStore$Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/ui/component/market/MarketListActivity$SocialMarketListAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity",
        "<",
        "Lcom/scoreloop/client/android/ui/framework/BaseListItem;",
        ">;",
        "Lcom/scoreloop/client/android/ui/framework/ValueStore$Observer;"
    }
.end annotation


# instance fields
.field private _buddiesGamesItem:Lcom/scoreloop/client/android/ui/component/market/MarketListItem;

.field private _myGamesItem:Lcom/scoreloop/client/android/ui/component/market/MarketListItem;

.field private _newGamesItem:Lcom/scoreloop/client/android/ui/component/market/MarketListItem;

.field private _popularGamesItem:Lcom/scoreloop/client/android/ui/component/market/MarketListItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;-><init>()V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/scoreloop/client/android/ui/component/market/MarketListActivity;)Lcom/scoreloop/client/android/ui/component/market/MarketListItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/market/MarketListActivity;->_newGamesItem:Lcom/scoreloop/client/android/ui/component/market/MarketListItem;

    return-object v0
.end method

.method static synthetic access$100(Lcom/scoreloop/client/android/ui/component/market/MarketListActivity;)Lcom/scoreloop/client/android/ui/component/market/MarketListItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/market/MarketListActivity;->_popularGamesItem:Lcom/scoreloop/client/android/ui/component/market/MarketListItem;

    return-object v0
.end method

.method static synthetic access$200(Lcom/scoreloop/client/android/ui/component/market/MarketListActivity;)Lcom/scoreloop/client/android/ui/component/market/MarketListItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/market/MarketListActivity;->_buddiesGamesItem:Lcom/scoreloop/client/android/ui/component/market/MarketListItem;

    return-object v0
.end method

.method static synthetic access$300(Lcom/scoreloop/client/android/ui/component/market/MarketListActivity;)Lcom/scoreloop/client/android/ui/component/market/MarketListItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/market/MarketListActivity;->_myGamesItem:Lcom/scoreloop/client/android/ui/component/market/MarketListItem;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const v5, 0x7f020057

    .line 60
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/market/MarketListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 62
    .local v0, res:Landroid/content/res/Resources;
    new-instance v1, Lcom/scoreloop/client/android/ui/component/market/MarketListItem;

    const v2, 0x7f020054

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const v3, 0x7f0802db

    invoke-virtual {p0, v3}, Lcom/scoreloop/client/android/ui/component/market/MarketListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0802c4

    invoke-virtual {p0, v4}, Lcom/scoreloop/client/android/ui/component/market/MarketListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/scoreloop/client/android/ui/component/market/MarketListItem;-><init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/scoreloop/client/android/ui/component/market/MarketListActivity;->_myGamesItem:Lcom/scoreloop/client/android/ui/component/market/MarketListItem;

    .line 64
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/market/MarketListActivity;->_myGamesItem:Lcom/scoreloop/client/android/ui/component/market/MarketListItem;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/market/MarketListActivity;->getSessionUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/User;->getGamesCounter()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/ui/component/market/MarketListItem;->setCounter(Ljava/lang/Integer;)V

    .line 65
    new-instance v1, Lcom/scoreloop/client/android/ui/component/market/MarketListItem;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const v3, 0x7f0802f8

    invoke-virtual {p0, v3}, Lcom/scoreloop/client/android/ui/component/market/MarketListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0802f9

    invoke-virtual {p0, v4}, Lcom/scoreloop/client/android/ui/component/market/MarketListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/scoreloop/client/android/ui/component/market/MarketListItem;-><init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/scoreloop/client/android/ui/component/market/MarketListActivity;->_popularGamesItem:Lcom/scoreloop/client/android/ui/component/market/MarketListItem;

    .line 67
    new-instance v1, Lcom/scoreloop/client/android/ui/component/market/MarketListItem;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const v3, 0x7f0802de

    invoke-virtual {p0, v3}, Lcom/scoreloop/client/android/ui/component/market/MarketListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0802df

    invoke-virtual {p0, v4}, Lcom/scoreloop/client/android/ui/component/market/MarketListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/scoreloop/client/android/ui/component/market/MarketListItem;-><init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/scoreloop/client/android/ui/component/market/MarketListActivity;->_newGamesItem:Lcom/scoreloop/client/android/ui/component/market/MarketListItem;

    .line 69
    new-instance v1, Lcom/scoreloop/client/android/ui/component/market/MarketListItem;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const v3, 0x7f0802c0

    invoke-virtual {p0, v3}, Lcom/scoreloop/client/android/ui/component/market/MarketListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0802c1

    invoke-virtual {p0, v4}, Lcom/scoreloop/client/android/ui/component/market/MarketListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/scoreloop/client/android/ui/component/market/MarketListItem;-><init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/scoreloop/client/android/ui/component/market/MarketListActivity;->_buddiesGamesItem:Lcom/scoreloop/client/android/ui/component/market/MarketListItem;

    .line 71
    new-instance v1, Lcom/scoreloop/client/android/ui/component/market/MarketListActivity$SocialMarketListAdapter;

    invoke-direct {v1, p0, p0}, Lcom/scoreloop/client/android/ui/component/market/MarketListActivity$SocialMarketListAdapter;-><init>(Lcom/scoreloop/client/android/ui/component/market/MarketListActivity;Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/component/market/MarketListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 72
    return-void
.end method

.method public onListItemClick(Lcom/scoreloop/client/android/ui/framework/BaseListItem;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/market/MarketListActivity;->getFactory()Lcom/scoreloop/client/android/ui/component/base/Factory;

    move-result-object v0

    .line 77
    .local v0, factory:Lcom/scoreloop/client/android/ui/component/base/Factory;
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/market/MarketListActivity;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v1

    .line 78
    .local v1, user:Lcom/scoreloop/client/android/core/model/User;
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/market/MarketListActivity;->_myGamesItem:Lcom/scoreloop/client/android/ui/component/market/MarketListItem;

    if-ne p1, v2, :cond_1

    .line 79
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/scoreloop/client/android/ui/component/base/Factory;->createGameScreenDescription(Lcom/scoreloop/client/android/core/model/User;I)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/scoreloop/client/android/ui/component/market/MarketListActivity;->display(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/market/MarketListActivity;->_popularGamesItem:Lcom/scoreloop/client/android/ui/component/market/MarketListItem;

    if-ne p1, v2, :cond_2

    .line 81
    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/scoreloop/client/android/ui/component/base/Factory;->createGameScreenDescription(Lcom/scoreloop/client/android/core/model/User;I)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/scoreloop/client/android/ui/component/market/MarketListActivity;->display(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)V

    goto :goto_0

    .line 82
    :cond_2
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/market/MarketListActivity;->_newGamesItem:Lcom/scoreloop/client/android/ui/component/market/MarketListItem;

    if-ne p1, v2, :cond_3

    .line 83
    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/scoreloop/client/android/ui/component/base/Factory;->createGameScreenDescription(Lcom/scoreloop/client/android/core/model/User;I)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/scoreloop/client/android/ui/component/market/MarketListActivity;->display(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)V

    goto :goto_0

    .line 84
    :cond_3
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/market/MarketListActivity;->_buddiesGamesItem:Lcom/scoreloop/client/android/ui/component/market/MarketListItem;

    if-ne p1, v2, :cond_0

    .line 85
    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Lcom/scoreloop/client/android/ui/component/base/Factory;->createGameScreenDescription(Lcom/scoreloop/client/android/core/model/User;I)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/scoreloop/client/android/ui/component/market/MarketListActivity;->display(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)V

    goto :goto_0
.end method
