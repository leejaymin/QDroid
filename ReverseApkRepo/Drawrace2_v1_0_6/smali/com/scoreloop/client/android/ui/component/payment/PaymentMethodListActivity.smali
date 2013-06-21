.class public Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;
.super Lcom/scoreloop/client/android/ui/component/payment/AbstractCheckoutListActivity;
.source "PaymentMethodListActivity.java"


# static fields
.field private static final FALLBACK_CURRENCY_CODE:Ljava/lang/String; = "USD"

.field private static final MODE_LOAD_GAME_ITEM:I = 0x0

.field private static final MODE_LOAD_PAYMENT_METHODS:I = 0x1

.field private static final MODE_SUBMIT_GAME_ITEM_OWNERSHIP:I = 0x2


# instance fields
.field private _freeListItem:Lcom/scoreloop/client/android/ui/component/payment/FreeListItem;

.field private _gameItemController:Lcom/scoreloop/client/android/core/controller/GameItemController;

.field private _mode:I

.field private _paymentMethodsController:Lcom/scoreloop/client/android/core/controller/PaymentMethodsController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/payment/AbstractCheckoutListActivity;-><init>()V

    return-void
.end method

.method private getFreeListItem()Lcom/scoreloop/client/android/ui/component/payment/FreeListItem;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->_freeListItem:Lcom/scoreloop/client/android/ui/component/payment/FreeListItem;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/scoreloop/client/android/ui/component/payment/FreeListItem;

    invoke-direct {v0, p0}, Lcom/scoreloop/client/android/ui/component/payment/FreeListItem;-><init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->_freeListItem:Lcom/scoreloop/client/android/ui/component/payment/FreeListItem;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->_freeListItem:Lcom/scoreloop/client/android/ui/component/payment/FreeListItem;

    return-object v0
.end method

.method private getGameItemEntity()Lcom/scoreloop/client/android/core/model/Entity;
    .locals 4

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->getSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->getEntityFactory()Lcom/scoreloop/client/android/core/model/EntityFactory;

    move-result-object v1

    sget-object v2, Lcom/scoreloop/client/android/core/model/GameItem;->ENTITY_NAME:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->getActivityArguments()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v0

    const-string v3, "gameItemId"

    invoke-virtual {v0, v3}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/scoreloop/client/android/core/model/EntityFactory;->createEntity(Ljava/lang/String;Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/Entity;

    move-result-object v0

    return-object v0
.end method

.method private onGameItem()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 98
    iget-object v3, p0, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->_gameItemController:Lcom/scoreloop/client/android/core/controller/GameItemController;

    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/controller/GameItemController;->getGameItem()Lcom/scoreloop/client/android/core/model/GameItem;

    move-result-object v1

    .line 101
    .local v1, gameItem:Lcom/scoreloop/client/android/core/model/GameItem;
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/GameItem;->getPurchaseDate()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/GameItem;->isCollectable()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 102
    invoke-virtual {p0, v6}, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->finishWithResult(I)V

    .line 124
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->getBaseListAdapter()Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;

    move-result-object v0

    .line 108
    .local v0, adapter:Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;,"Lcom/scoreloop/client/android/ui/framework/BaseListAdapter<Lcom/scoreloop/client/android/ui/framework/BaseListItem;>;"
    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->clear()V

    .line 109
    new-instance v3, Lcom/scoreloop/client/android/ui/component/base/CaptionListItem;

    const v4, 0x7f080283

    invoke-virtual {p0, v4}, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v5, v4}, Lcom/scoreloop/client/android/ui/component/base/CaptionListItem;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->add(Ljava/lang/Object;)V

    .line 110
    new-instance v3, Lcom/scoreloop/client/android/ui/component/payment/GameItemDetailListItem;

    invoke-direct {v3, p0, v5, v1}, Lcom/scoreloop/client/android/ui/component/payment/GameItemDetailListItem;-><init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Landroid/graphics/drawable/Drawable;Lcom/scoreloop/client/android/core/model/GameItem;)V

    invoke-virtual {v0, v3}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->add(Ljava/lang/Object;)V

    .line 113
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->getScreenValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v2

    .line 114
    .local v2, store:Lcom/scoreloop/client/android/ui/framework/ValueStore;
    const-string v3, "gameItem"

    invoke-virtual {v2, v3, v1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/GameItem;->isFree()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 118
    new-instance v3, Lcom/scoreloop/client/android/ui/component/base/CaptionListItem;

    const v4, 0x7f08026e

    invoke-virtual {p0, v4}, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v5, v4}, Lcom/scoreloop/client/android/ui/component/base/CaptionListItem;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->add(Ljava/lang/Object;)V

    .line 119
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->getFreeListItem()Lcom/scoreloop/client/android/ui/component/payment/FreeListItem;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 122
    :cond_1
    sget-object v3, Lcom/scoreloop/client/android/ui/framework/BaseActivity$RefreshMode;->SET:Lcom/scoreloop/client/android/ui/framework/BaseActivity$RefreshMode;

    invoke-virtual {p0, v6, v3}, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->setNeedsRefresh(ILcom/scoreloop/client/android/ui/framework/BaseActivity$RefreshMode;)V

    goto :goto_0
.end method

.method private onPaymentMethods()V
    .locals 12

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->getBaseListAdapter()Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;

    move-result-object v0

    .line 163
    .local v0, adapter:Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;,"Lcom/scoreloop/client/android/ui/framework/BaseListAdapter<Lcom/scoreloop/client/android/ui/framework/BaseListItem;>;"
    new-instance v9, Lcom/scoreloop/client/android/ui/component/base/CaptionListItem;

    const/4 v10, 0x0

    const v11, 0x7f0802f0

    invoke-virtual {p0, v11}, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, p0, v10, v11}, Lcom/scoreloop/client/android/ui/component/base/CaptionListItem;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->add(Ljava/lang/Object;)V

    .line 166
    const/4 v4, 0x0

    .line 167
    .local v4, paymentMethodCount:I
    const/4 v2, 0x0

    .line 168
    .local v2, item:Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListItem;
    iget-object v9, p0, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->_paymentMethodsController:Lcom/scoreloop/client/android/core/controller/PaymentMethodsController;

    invoke-virtual {v9}, Lcom/scoreloop/client/android/core/controller/PaymentMethodsController;->getPaymentMethods()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/scoreloop/client/android/core/model/PaymentMethod;

    .line 169
    .local v3, paymentMethod:Lcom/scoreloop/client/android/core/model/PaymentMethod;
    add-int/lit8 v4, v4, 0x1

    .line 170
    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/model/PaymentMethod;->getPaymentProvider()Lcom/scoreloop/client/android/core/model/PaymentProvider;

    move-result-object v5

    .line 173
    .local v5, paymentProvider:Lcom/scoreloop/client/android/core/model/PaymentProvider;
    const/4 v6, 0x0

    .line 174
    .local v6, paymentProviderController:Lcom/scoreloop/client/android/core/controller/PaymentProviderController;
    invoke-virtual {v5}, Lcom/scoreloop/client/android/core/model/PaymentProvider;->controllerSupportsPrepare()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->getSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v9

    invoke-static {p0, v5, v9}, Lcom/scoreloop/client/android/core/controller/PaymentProviderController;->getPaymentProviderController(Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;Lcom/scoreloop/client/android/core/model/PaymentProvider;Lcom/scoreloop/client/android/core/model/Session;)Lcom/scoreloop/client/android/core/controller/PaymentProviderController;

    move-result-object v6

    .line 176
    invoke-virtual {v6}, Lcom/scoreloop/client/android/core/controller/PaymentProviderController;->prepare()V

    .line 180
    :cond_0
    const/4 v8, 0x0

    .line 181
    .local v8, pricesString:Ljava/lang/String;
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->showAllPrices()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 182
    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/model/PaymentMethod;->getPrices()Ljava/util/List;

    move-result-object v9

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->getConfiguration()Lcom/scoreloop/client/android/ui/component/base/Configuration;

    move-result-object v10

    invoke-static {p0, v9, v10}, Lcom/scoreloop/client/android/ui/component/base/StringFormatter;->formatPriceList(Landroid/content/Context;Ljava/util/List;Lcom/scoreloop/client/android/ui/component/base/Configuration;)Ljava/lang/String;

    move-result-object v8

    .line 187
    :goto_1
    new-instance v2, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListItem;

    .end local v2           #item:Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListItem;
    invoke-direct {v2, p0, v3, v8}, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListItem;-><init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Lcom/scoreloop/client/android/core/model/PaymentMethod;Ljava/lang/String;)V

    .line 188
    .restart local v2       #item:Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListItem;
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListItem;->setEnabled(Z)V

    .line 191
    invoke-virtual {v2, v6}, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListItem;->setPaymentProviderController(Lcom/scoreloop/client/android/core/controller/PaymentProviderController;)V

    .line 192
    invoke-virtual {v0, v2}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 184
    :cond_1
    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/model/PaymentMethod;->getPrices()Ljava/util/List;

    move-result-object v9

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    const-string v11, "USD"

    invoke-static {v9, v10, v11}, Lcom/scoreloop/client/android/core/model/Money;->getPreferred(Ljava/util/List;Ljava/util/Locale;Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/Money;

    move-result-object v7

    check-cast v7, Lcom/scoreloop/client/android/core/model/Price;

    .line 185
    .local v7, preferedPrice:Lcom/scoreloop/client/android/core/model/Price;
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->getConfiguration()Lcom/scoreloop/client/android/ui/component/base/Configuration;

    move-result-object v9

    invoke-static {p0, v7, v9}, Lcom/scoreloop/client/android/ui/component/base/StringFormatter;->formatPrice(Landroid/content/Context;Lcom/scoreloop/client/android/core/model/Price;Lcom/scoreloop/client/android/ui/component/base/Configuration;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 196
    .end local v3           #paymentMethod:Lcom/scoreloop/client/android/core/model/PaymentMethod;
    .end local v5           #paymentProvider:Lcom/scoreloop/client/android/core/model/PaymentProvider;
    .end local v6           #paymentProviderController:Lcom/scoreloop/client/android/core/controller/PaymentProviderController;
    .end local v7           #preferedPrice:Lcom/scoreloop/client/android/core/model/Price;
    .end local v8           #pricesString:Ljava/lang/String;
    :cond_2
    if-nez v4, :cond_3

    .line 197
    const/4 v9, 0x3

    invoke-virtual {p0, v9}, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->finishWithResult(I)V

    .line 199
    :cond_3
    return-void
.end method

.method private onSubmitOwnershipFailed()V
    .locals 1

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->stopCheckout()V

    .line 231
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->finishWithResult(I)V

    .line 232
    return-void
.end method

.method private onSubmitOwnershipSucceeded()V
    .locals 1

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->stopCheckout()V

    .line 236
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->finishWithResult(I)V

    .line 237
    return-void
.end method

.method private showAllPrices()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 262
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->getActivityArguments()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v2

    const-string v3, "viewFlags"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 263
    .local v0, viewFlags:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/ui/component/payment/AbstractCheckoutListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    new-instance v1, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;

    invoke-direct {v1, p0}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 81
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->getGameItemEntity()Lcom/scoreloop/client/android/core/model/Entity;

    move-result-object v0

    .line 83
    .local v0, gameItemEntity:Lcom/scoreloop/client/android/core/model/Entity;
    new-instance v1, Lcom/scoreloop/client/android/core/controller/GameItemController;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->getRequestControllerObserver()Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/scoreloop/client/android/core/controller/GameItemController;-><init>(Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    iput-object v1, p0, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->_gameItemController:Lcom/scoreloop/client/android/core/controller/GameItemController;

    .line 84
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->_gameItemController:Lcom/scoreloop/client/android/core/controller/GameItemController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/core/controller/GameItemController;->setCachedResponseUsed(Z)V

    .line 85
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->_gameItemController:Lcom/scoreloop/client/android/core/controller/GameItemController;

    invoke-virtual {v1, v0}, Lcom/scoreloop/client/android/core/controller/GameItemController;->setGameItem(Lcom/scoreloop/client/android/core/model/Entity;)V

    .line 87
    new-instance v1, Lcom/scoreloop/client/android/core/controller/PaymentMethodsController;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->getRequestControllerObserver()Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/scoreloop/client/android/core/controller/PaymentMethodsController;-><init>(Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    iput-object v1, p0, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->_paymentMethodsController:Lcom/scoreloop/client/android/core/controller/PaymentMethodsController;

    .line 88
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->_paymentMethodsController:Lcom/scoreloop/client/android/core/controller/PaymentMethodsController;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->getActivityArguments()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v1

    const-string v3, "paymentExplicitCurrency"

    invoke-virtual {v1, v3}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/scoreloop/client/android/core/controller/PaymentMethodsController;->setCurrency(Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->_paymentMethodsController:Lcom/scoreloop/client/android/core/controller/PaymentMethodsController;

    invoke-virtual {v1, v0}, Lcom/scoreloop/client/android/core/controller/PaymentMethodsController;->setGameItem(Lcom/scoreloop/client/android/core/model/Entity;)V

    .line 90
    return-void
.end method

.method public onListItemClick(Lcom/scoreloop/client/android/ui/framework/BaseListItem;)V
    .locals 10
    .parameter "item"

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->getGameItem()Lcom/scoreloop/client/android/core/model/GameItem;

    move-result-object v0

    .line 130
    .local v0, gameItem:Lcom/scoreloop/client/android/core/model/GameItem;
    iget-object v6, p0, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->_freeListItem:Lcom/scoreloop/client/android/ui/component/payment/FreeListItem;

    if-ne p1, v6, :cond_1

    .line 131
    const/4 v6, 0x2

    sget-object v7, Lcom/scoreloop/client/android/ui/framework/BaseActivity$RefreshMode;->SET:Lcom/scoreloop/client/android/ui/framework/BaseActivity$RefreshMode;

    invoke-virtual {p0, v6, v7}, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->setNeedsRefresh(ILcom/scoreloop/client/android/ui/framework/BaseActivity$RefreshMode;)V

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    instance-of v6, p1, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListItem;

    if-eqz v6, :cond_0

    move-object v1, p1

    .line 133
    check-cast v1, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListItem;

    .line 134
    .local v1, methodItem:Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListItem;
    invoke-virtual {v1}, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListItem;->getTarget()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scoreloop/client/android/core/model/PaymentMethod;

    .line 136
    .local v2, paymentMethod:Lcom/scoreloop/client/android/core/model/PaymentMethod;
    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/PaymentMethod;->getPrices()Ljava/util/List;

    move-result-object v5

    .line 137
    .local v5, prices:Ljava/util/List;,"Ljava/util/List<Lcom/scoreloop/client/android/core/model/Price;>;"
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->showAllPrices()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_2

    .line 140
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->getFactory()Lcom/scoreloop/client/android/ui/component/base/Factory;

    move-result-object v7

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->getActivityArguments()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v6

    const-string v8, "viewFlags"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v7, v0, v2, v6}, Lcom/scoreloop/client/android/ui/component/base/Factory;->createPricesScreenDescription(Lcom/scoreloop/client/android/core/model/GameItem;Lcom/scoreloop/client/android/core/model/PaymentMethod;I)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->display(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)V

    goto :goto_0

    .line 143
    :cond_2
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->startCheckout()V

    .line 146
    invoke-virtual {v1}, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListItem;->getPaymentProviderController()Lcom/scoreloop/client/android/core/controller/PaymentProviderController;

    move-result-object v3

    .line 147
    .local v3, paymentProviderController:Lcom/scoreloop/client/android/core/controller/PaymentProviderController;
    if-nez v3, :cond_3

    .line 148
    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/PaymentMethod;->getPaymentProvider()Lcom/scoreloop/client/android/core/model/PaymentProvider;

    move-result-object v6

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->getSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v7

    invoke-static {p0, v6, v7}, Lcom/scoreloop/client/android/core/controller/PaymentProviderController;->getPaymentProviderController(Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;Lcom/scoreloop/client/android/core/model/PaymentProvider;Lcom/scoreloop/client/android/core/model/Session;)Lcom/scoreloop/client/android/core/controller/PaymentProviderController;

    move-result-object v3

    .line 153
    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    const-string v7, "USD"

    invoke-static {v5, v6, v7}, Lcom/scoreloop/client/android/core/model/Money;->getPreferred(Ljava/util/List;Ljava/util/Locale;Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/Money;

    move-result-object v4

    check-cast v4, Lcom/scoreloop/client/android/core/model/Price;

    .line 154
    .local v4, preferedPrice:Lcom/scoreloop/client/android/core/model/Price;
    invoke-virtual {v3, p0, v0, v4}, Lcom/scoreloop/client/android/core/controller/PaymentProviderController;->checkout(Landroid/app/Activity;Lcom/scoreloop/client/android/core/model/GameItem;Lcom/scoreloop/client/android/core/model/Price;)V

    goto :goto_0
.end method

.method public onRefresh(I)V
    .locals 1
    .parameter "flags"

    .prologue
    .line 203
    iput p1, p0, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->_mode:I

    .line 204
    if-nez p1, :cond_1

    .line 205
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->_gameItemController:Lcom/scoreloop/client/android/core/controller/GameItemController;

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->showSpinnerFor(Ljava/lang/Object;)V

    .line 206
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->_gameItemController:Lcom/scoreloop/client/android/core/controller/GameItemController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/GameItemController;->loadGameItem()V

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 208
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->startCheckout()V

    .line 209
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->_gameItemController:Lcom/scoreloop/client/android/core/controller/GameItemController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/GameItemController;->submitOwnership()V

    goto :goto_0

    .line 210
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->_paymentMethodsController:Lcom/scoreloop/client/android/core/controller/PaymentMethodsController;

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->showSpinnerFor(Ljava/lang/Object;)V

    .line 212
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->_paymentMethodsController:Lcom/scoreloop/client/android/core/controller/PaymentMethodsController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/PaymentMethodsController;->loadPaymentMethods()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 218
    invoke-super {p0}, Lcom/scoreloop/client/android/ui/component/payment/AbstractCheckoutListActivity;->onStart()V

    .line 221
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->getSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    invoke-static {v0}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->getInstance(Lcom/scoreloop/client/android/core/model/Session;)Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;

    move-result-object v0

    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->getGameItemEntity()Lcom/scoreloop/client/android/core/model/Entity;

    move-result-object v1

    invoke-interface {v1}, Lcom/scoreloop/client/android/core/model/Entity;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->hasPendingPaymentForGameItem(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->finishWithResult(I)V

    .line 227
    :goto_0
    return-void

    .line 226
    :cond_0
    const/4 v0, 0x0

    sget-object v1, Lcom/scoreloop/client/android/ui/framework/BaseActivity$RefreshMode;->SET:Lcom/scoreloop/client/android/ui/framework/BaseActivity$RefreshMode;

    invoke-virtual {p0, v0, v1}, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->setNeedsRefresh(ILcom/scoreloop/client/android/ui/framework/BaseActivity$RefreshMode;)V

    goto :goto_0
.end method

.method protected requestControllerDidFailSafe(Lcom/scoreloop/client/android/core/controller/RequestController;Ljava/lang/Exception;)V
    .locals 2
    .parameter "aRequestController"
    .parameter "anException"

    .prologue
    const/4 v1, 0x2

    .line 241
    iget v0, p0, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->_mode:I

    if-nez v0, :cond_1

    .line 242
    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->finishWithResult(I)V

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iget v0, p0, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->_mode:I

    if-ne v0, v1, :cond_2

    .line 244
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->onSubmitOwnershipFailed()V

    goto :goto_0

    .line 245
    :cond_2
    iget v0, p0, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->_mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 246
    invoke-super {p0, p1, p2}, Lcom/scoreloop/client/android/ui/component/payment/AbstractCheckoutListActivity;->requestControllerDidFailSafe(Lcom/scoreloop/client/android/core/controller/RequestController;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public requestControllerDidReceiveResponseSafe(Lcom/scoreloop/client/android/core/controller/RequestController;)V
    .locals 2
    .parameter "aRequestController"

    .prologue
    .line 252
    iget v0, p0, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->_mode:I

    if-nez v0, :cond_1

    .line 253
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->onGameItem()V

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    iget v0, p0, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->_mode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 255
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->onSubmitOwnershipSucceeded()V

    goto :goto_0

    .line 256
    :cond_2
    iget v0, p0, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->_mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 257
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->onPaymentMethods()V

    goto :goto_0
.end method

.method protected stepOut()V
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;->displayPrevious(Z)V

    .line 269
    return-void
.end method
