.class public Lcom/scoreloop/client/android/ui/component/market/MarketHeaderActivity;
.super Lcom/scoreloop/client/android/ui/component/base/ComponentHeaderActivity;
.source "MarketHeaderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/scoreloop/client/android/ui/framework/ValueStore$Observer;


# instance fields
.field private _gamesController:Lcom/scoreloop/client/android/core/controller/GamesController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentHeaderActivity;-><init>()V

    return-void
.end method

.method private showControlIcon(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 115
    const v1, 0x7f0c0043

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/component/market/MarketHeaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 116
    .local v0, icon:Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 117
    const v1, 0x7f0c003f

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/component/market/MarketHeaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/market/MarketHeaderActivity;->getScreenValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v1

    const-string v2, "featuredGame"

    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/Game;

    .line 49
    .local v0, featuredGame:Lcom/scoreloop/client/android/core/model/Game;
    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/market/MarketHeaderActivity;->getTracker()Lcom/scoreloop/client/android/ui/component/base/Tracker;

    move-result-object v1

    const-string v2, "navigation"

    const-string v3, "header.game-featured"

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Game;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/scoreloop/client/android/ui/component/base/Tracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 51
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/market/MarketHeaderActivity;->getFactory()Lcom/scoreloop/client/android/ui/component/base/Factory;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/scoreloop/client/android/ui/component/base/Factory;->createGameDetailScreenDescription(Lcom/scoreloop/client/android/core/model/Game;)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/component/market/MarketHeaderActivity;->display(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)V

    .line 53
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 57
    const v0, 0x7f03001b

    invoke-super {p0, p1, v0}, Lcom/scoreloop/client/android/ui/component/base/ComponentHeaderActivity;->onCreate(Landroid/os/Bundle;I)V

    .line 58
    const v0, 0x7f0802d2

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/market/MarketHeaderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/market/MarketHeaderActivity;->setTitle(Ljava/lang/String;)V

    .line 59
    const v0, 0x7f0802d3

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/market/MarketHeaderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/market/MarketHeaderActivity;->setSubTitle(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/market/MarketHeaderActivity;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02003c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "featuredGame"

    aput-object v2, v0, v1

    const-string v1, "featuredGameName"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "featuredGameImageUrl"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "featuredGamePublisher"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/market/MarketHeaderActivity;->addObservedKeys([Ljava/lang/String;)V

    .line 63
    new-instance v0, Lcom/scoreloop/client/android/core/controller/GamesController;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/market/MarketHeaderActivity;->getRequestControllerObserver()Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/scoreloop/client/android/core/controller/GamesController;-><init>(Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/market/MarketHeaderActivity;->_gamesController:Lcom/scoreloop/client/android/core/controller/GamesController;

    .line 64
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/market/MarketHeaderActivity;->_gamesController:Lcom/scoreloop/client/android/core/controller/GamesController;

    invoke-virtual {v0, v3}, Lcom/scoreloop/client/android/core/controller/GamesController;->setRangeLength(I)V

    .line 65
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentHeaderActivity;->onResume()V

    .line 70
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/market/MarketHeaderActivity;->_gamesController:Lcom/scoreloop/client/android/core/controller/GamesController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/GamesController;->loadRangeForFeatured()V

    .line 71
    return-void
.end method

.method public onValueChanged(Lcom/scoreloop/client/android/ui/framework/ValueStore;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .parameter "valueStore"
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 75
    if-eq p3, p4, :cond_0

    .line 76
    const-string v0, "featuredGameImageUrl"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    check-cast p4, Ljava/lang/String;

    .end local p4
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/market/MarketHeaderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/market/MarketHeaderActivity;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p4, v0, v1, v2}, Lcom/scoreloop/client/android/ui/util/ImageDownloader;->downloadImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 79
    .restart local p4
    :cond_1
    const-string v0, "featuredGameName"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    check-cast p4, Ljava/lang/String;

    .end local p4
    invoke-virtual {p0, p4}, Lcom/scoreloop/client/android/ui/component/market/MarketHeaderActivity;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    .restart local p4
    :cond_2
    const-string v0, "featuredGamePublisher"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    check-cast p4, Ljava/lang/String;

    .end local p4
    invoke-virtual {p0, p4}, Lcom/scoreloop/client/android/ui/component/market/MarketHeaderActivity;->setSubTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onValueSetDirty(Lcom/scoreloop/client/android/ui/framework/ValueStore;Ljava/lang/String;)V
    .locals 3
    .parameter "valueStore"
    .parameter "key"

    .prologue
    const/4 v2, 0x0

    .line 89
    const-string v0, "featuredGame"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/market/MarketHeaderActivity;->getScreenValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v0

    sget-object v1, Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;->NOT_DIRTY:Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;

    invoke-virtual {v0, p2, v1, v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->retrieveValue(Ljava/lang/String;Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;Ljava/lang/Object;)Z

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    const-string v0, "featuredGameImageUrl"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/market/MarketHeaderActivity;->getScreenValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v0

    sget-object v1, Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;->NOT_DIRTY:Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;

    invoke-virtual {v0, p2, v1, v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->retrieveValue(Ljava/lang/String;Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    :cond_2
    const-string v0, "featuredGameName"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 94
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/market/MarketHeaderActivity;->getScreenValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v0

    sget-object v1, Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;->NOT_DIRTY:Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;

    invoke-virtual {v0, p2, v1, v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->retrieveValue(Ljava/lang/String;Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;Ljava/lang/Object;)Z

    goto :goto_0

    .line 95
    :cond_3
    const-string v0, "featuredGamePublisher"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/market/MarketHeaderActivity;->getScreenValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v0

    sget-object v1, Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;->NOT_DIRTY:Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;

    invoke-virtual {v0, p2, v1, v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->retrieveValue(Ljava/lang/String;Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public requestControllerDidReceiveResponseSafe(Lcom/scoreloop/client/android/core/controller/RequestController;)V
    .locals 5
    .parameter "aRequestController"

    .prologue
    .line 102
    iget-object v3, p0, Lcom/scoreloop/client/android/ui/component/market/MarketHeaderActivity;->_gamesController:Lcom/scoreloop/client/android/core/controller/GamesController;

    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/controller/GamesController;->getGames()Ljava/util/List;

    move-result-object v0

    .line 103
    .local v0, featuredGames:Ljava/util/List;,"Ljava/util/List<Lcom/scoreloop/client/android/core/model/Game;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/market/MarketHeaderActivity;->getScreenValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v2

    .line 105
    .local v2, store:Lcom/scoreloop/client/android/ui/framework/ValueStore;
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scoreloop/client/android/core/model/Game;

    .line 106
    .local v1, game:Lcom/scoreloop/client/android/core/model/Game;
    const-string v3, "featuredGame"

    invoke-virtual {v2, v3, v1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 107
    const-string v3, "featuredGameName"

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Game;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    const-string v3, "featuredGamePublisher"

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Game;->getPublisherName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    const-string v3, "featuredGameImageUrl"

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Game;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    const v3, 0x7f02001c

    invoke-direct {p0, v3}, Lcom/scoreloop/client/android/ui/component/market/MarketHeaderActivity;->showControlIcon(I)V

    .line 112
    .end local v1           #game:Lcom/scoreloop/client/android/core/model/Game;
    .end local v2           #store:Lcom/scoreloop/client/android/ui/framework/ValueStore;
    :cond_0
    return-void
.end method
