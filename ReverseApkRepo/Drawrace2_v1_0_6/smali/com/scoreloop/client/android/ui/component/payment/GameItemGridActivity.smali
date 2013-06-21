.class public Lcom/scoreloop/client/android/ui/component/payment/GameItemGridActivity;
.super Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;
.source "GameItemGridActivity.java"

# interfaces
.implements Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$Observer;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/scoreloop/client/android/ui/framework/BaseListAdapter$OnListItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;",
        "Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$Observer;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/scoreloop/client/android/ui/framework/BaseListAdapter$OnListItemClickListener",
        "<",
        "Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private _gameItemsController:Lcom/scoreloop/client/android/core/controller/GameItemsController;

.field private grid:Landroid/widget/GridView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;-><init>()V

    return-void
.end method

.method private getExplicitCurrency()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/GameItemGridActivity;->getActivityArguments()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v0

    const-string v1, "paymentExplicitCurrency"

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private onGameItems()V
    .locals 7

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/GameItemGridActivity;->getBaseListAdapter()Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;

    move-result-object v0

    .line 101
    .local v0, adapter:Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;,"Lcom/scoreloop/client/android/ui/framework/BaseListAdapter<Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;>;"
    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->clear()V

    .line 103
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/GameItemGridActivity;->getActivityArguments()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v5

    const-string v6, "viewFlags"

    invoke-virtual {v5, v6}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    const/4 v3, 0x1

    .line 104
    .local v3, hidePurchasedItems:Z
    :goto_0
    iget-object v5, p0, Lcom/scoreloop/client/android/ui/component/payment/GameItemGridActivity;->_gameItemsController:Lcom/scoreloop/client/android/core/controller/GameItemsController;

    invoke-virtual {v5}, Lcom/scoreloop/client/android/core/controller/GameItemsController;->getGameItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scoreloop/client/android/core/model/GameItem;

    .line 105
    .local v1, gameItem:Lcom/scoreloop/client/android/core/model/GameItem;
    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/GameItem;->isPurchased()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/GameItem;->isCollectable()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 108
    :cond_1
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/GameItemGridActivity;->getSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v5

    invoke-static {v5}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->getInstance(Lcom/scoreloop/client/android/core/model/Session;)Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;

    move-result-object v5

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/GameItem;->getIdentifier()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->hasPendingPaymentForGameItem(Ljava/lang/String;)Z

    move-result v2

    .line 110
    .local v2, hasPendingPayment:Z
    new-instance v5, Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;

    invoke-direct {v5, p0, v1, v2}, Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;-><init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Lcom/scoreloop/client/android/core/model/GameItem;Z)V

    invoke-virtual {v0, v5}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 103
    .end local v1           #gameItem:Lcom/scoreloop/client/android/core/model/GameItem;
    .end local v2           #hasPendingPayment:Z
    .end local v3           #hidePurchasedItems:Z
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 112
    .restart local v3       #hidePurchasedItems:Z
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method private setListAdapter(Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/scoreloop/client/android/ui/framework/BaseListAdapter",
            "<",
            "Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, adapter:Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;,"Lcom/scoreloop/client/android/ui/framework/BaseListAdapter<Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;>;"
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/payment/GameItemGridActivity;->grid:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 82
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/GameItemGridActivity;->getBaseListAdapter()Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->setOnListItemClickListener(Lcom/scoreloop/client/android/ui/framework/BaseListAdapter$OnListItemClickListener;)V

    .line 83
    return-void
.end method


# virtual methods
.method public getBaseListAdapter()Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/scoreloop/client/android/ui/framework/BaseListAdapter",
            "<",
            "Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/GameItemGridActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;

    return-object v0
.end method

.method public getListAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/payment/GameItemGridActivity;->grid:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 60
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v1, 0x7f030036

    invoke-virtual {p0, v1, v2}, Lcom/scoreloop/client/android/ui/component/payment/GameItemGridActivity;->setContentView(IZ)V

    .line 63
    const v1, 0x7f0c0086

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/component/payment/GameItemGridActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/scoreloop/client/android/ui/component/payment/GameItemGridActivity;->grid:Landroid/widget/GridView;

    .line 64
    new-instance v1, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;

    invoke-direct {v1, p0}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v1}, Lcom/scoreloop/client/android/ui/component/payment/GameItemGridActivity;->setListAdapter(Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;)V

    .line 66
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/payment/GameItemGridActivity;->grid:Landroid/widget/GridView;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setFocusable(Z)V

    .line 67
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/payment/GameItemGridActivity;->grid:Landroid/widget/GridView;

    invoke-virtual {v1, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 69
    new-instance v1, Lcom/scoreloop/client/android/core/controller/GameItemsController;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/GameItemGridActivity;->getRequestControllerObserver()Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/scoreloop/client/android/core/controller/GameItemsController;-><init>(Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    iput-object v1, p0, Lcom/scoreloop/client/android/ui/component/payment/GameItemGridActivity;->_gameItemsController:Lcom/scoreloop/client/android/core/controller/GameItemsController;

    .line 72
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/payment/GameItemGridActivity;->_gameItemsController:Lcom/scoreloop/client/android/core/controller/GameItemsController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/core/controller/GameItemsController;->setCachedResponseUsed(Z)V

    .line 73
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/GameItemGridActivity;->getActivityArguments()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v1

    const-string v2, "tags"

    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 74
    .local v0, tags:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 75
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/payment/GameItemGridActivity;->_gameItemsController:Lcom/scoreloop/client/android/core/controller/GameItemsController;

    invoke-virtual {v1, v0}, Lcom/scoreloop/client/android/core/controller/GameItemsController;->setTags(Ljava/util/List;)V

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/payment/GameItemGridActivity;->_gameItemsController:Lcom/scoreloop/client/android/core/controller/GameItemsController;

    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/payment/GameItemGridActivity;->getExplicitCurrency()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/core/controller/GameItemsController;->setCurrency(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/GameItemGridActivity;->getBaseListAdapter()Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;

    move-result-object v0

    .line 88
    .local v0, baseListAdapter:Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;,"Lcom/scoreloop/client/android/ui/framework/BaseListAdapter<Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;>;"
    invoke-virtual {v0, p3}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;

    .line 89
    .local v6, item:Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;
    invoke-virtual {v6}, Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    .line 90
    invoke-virtual/range {v0 .. v5}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 92
    :cond_0
    return-void
.end method

.method public onListItemClick(Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;)V
    .locals 5
    .parameter "item"

    .prologue
    .line 116
    invoke-virtual {p1}, Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;->getTarget()Lcom/scoreloop/client/android/core/model/GameItem;

    move-result-object v0

    .line 117
    .local v0, gameItem:Lcom/scoreloop/client/android/core/model/GameItem;
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/GameItemGridActivity;->getActivityArguments()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v2

    const-string v3, "viewFlags"

    invoke-virtual {v2, v3}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 118
    .local v1, viewFlags:I
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/GameItemGridActivity;->getFactory()Lcom/scoreloop/client/android/ui/component/base/Factory;

    move-result-object v2

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/GameItem;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/payment/GameItemGridActivity;->getExplicitCurrency()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v1}, Lcom/scoreloop/client/android/ui/component/base/Factory;->createPaymentMethodsScreenDescription(Ljava/lang/String;Ljava/lang/String;I)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/scoreloop/client/android/ui/component/payment/GameItemGridActivity;->display(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)V

    .line 119
    return-void
.end method

.method public bridge synthetic onListItemClick(Lcom/scoreloop/client/android/ui/framework/BaseListItem;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    check-cast p1, Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/scoreloop/client/android/ui/component/payment/GameItemGridActivity;->onListItemClick(Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->onPause()V

    .line 124
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/GameItemGridActivity;->getSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    invoke-static {v0}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->getInstance(Lcom/scoreloop/client/android/core/model/Session;)Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->removeObserver(Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$Observer;)V

    .line 125
    return-void
.end method

.method public onRefresh(I)V
    .locals 3
    .parameter "flags"

    .prologue
    .line 129
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/payment/GameItemGridActivity;->_gameItemsController:Lcom/scoreloop/client/android/core/controller/GameItemsController;

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/component/payment/GameItemGridActivity;->showSpinnerFor(Ljava/lang/Object;)V

    .line 131
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/GameItemGridActivity;->getActivityArguments()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v1

    const-string v2, "gameItemsMode"

    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 132
    .local v0, mode:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    .line 133
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/payment/GameItemGridActivity;->_gameItemsController:Lcom/scoreloop/client/android/core/controller/GameItemsController;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/controller/GameItemsController;->loadGameItems()V

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 135
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/payment/GameItemGridActivity;->_gameItemsController:Lcom/scoreloop/client/android/core/controller/GameItemsController;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/controller/GameItemsController;->loadCoinPacks()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 141
    invoke-super {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->onResume()V

    .line 142
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/GameItemGridActivity;->getSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    invoke-static {v0}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->getInstance(Lcom/scoreloop/client/android/core/model/Session;)Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->addObserver(Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$Observer;)V

    .line 143
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 147
    invoke-super {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->onStart()V

    .line 148
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/GameItemGridActivity;->setNeedsRefresh()V

    .line 149
    return-void
.end method

.method public pendingPaymentProcessorDidProcessPayment(Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;Lcom/scoreloop/client/android/core/model/Payment;)V
    .locals 4
    .parameter "processor"
    .parameter "payment"

    .prologue
    .line 153
    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/model/Payment;->getGameItemIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, gameItemIdentifier:Ljava/lang/String;
    iget-object v3, p0, Lcom/scoreloop/client/android/ui/component/payment/GameItemGridActivity;->_gameItemsController:Lcom/scoreloop/client/android/core/controller/GameItemsController;

    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/controller/GameItemsController;->getGameItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/GameItem;

    .line 158
    .local v0, gameItem:Lcom/scoreloop/client/android/core/model/GameItem;
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/GameItem;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/GameItemGridActivity;->setNeedsRefresh()V

    goto :goto_0

    .line 162
    .end local v0           #gameItem:Lcom/scoreloop/client/android/core/model/GameItem;
    :cond_1
    return-void
.end method

.method public requestControllerDidReceiveResponseSafe(Lcom/scoreloop/client/android/core/controller/RequestController;)V
    .locals 1
    .parameter "aRequestController"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/payment/GameItemGridActivity;->_gameItemsController:Lcom/scoreloop/client/android/core/controller/GameItemsController;

    if-ne p1, v0, :cond_0

    .line 167
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/payment/GameItemGridActivity;->onGameItems()V

    .line 169
    :cond_0
    return-void
.end method
