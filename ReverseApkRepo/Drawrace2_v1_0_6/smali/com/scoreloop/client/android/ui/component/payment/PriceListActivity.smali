.class public Lcom/scoreloop/client/android/ui/component/payment/PriceListActivity;
.super Lcom/scoreloop/client/android/ui/component/payment/AbstractCheckoutListActivity;
.source "PriceListActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/payment/AbstractCheckoutListActivity;-><init>()V

    return-void
.end method

.method private getPaymentMethod()Lcom/scoreloop/client/android/core/model/PaymentMethod;
    .locals 2

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/PriceListActivity;->getActivityArguments()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v0

    const-string v1, "paymentMethod"

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/PaymentMethod;

    return-object v0
.end method

.method private updateUI()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 86
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/payment/PriceListActivity;->getPaymentMethod()Lcom/scoreloop/client/android/core/model/PaymentMethod;

    move-result-object v2

    .line 89
    .local v2, paymentMethod:Lcom/scoreloop/client/android/core/model/PaymentMethod;
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/PriceListActivity;->getBaseListAdapter()Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;

    move-result-object v0

    .line 90
    .local v0, adapter:Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;,"Lcom/scoreloop/client/android/ui/framework/BaseListAdapter<Lcom/scoreloop/client/android/ui/framework/BaseListItem;>;"
    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->clear()V

    .line 93
    new-instance v4, Lcom/scoreloop/client/android/ui/component/base/CaptionListItem;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/PriceListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0802ef

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v7, v5}, Lcom/scoreloop/client/android/ui/component/base/CaptionListItem;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->add(Ljava/lang/Object;)V

    .line 94
    new-instance v4, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListItem;

    invoke-direct {v4, p0, v2, v7}, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListItem;-><init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Lcom/scoreloop/client/android/core/model/PaymentMethod;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->add(Ljava/lang/Object;)V

    .line 97
    new-instance v4, Lcom/scoreloop/client/android/ui/component/base/CaptionListItem;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/PriceListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0802fc

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v7, v5}, Lcom/scoreloop/client/android/ui/component/base/CaptionListItem;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->add(Ljava/lang/Object;)V

    .line 98
    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/PaymentMethod;->getPrices()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/scoreloop/client/android/core/model/Price;

    .line 99
    .local v3, price:Lcom/scoreloop/client/android/core/model/Price;
    new-instance v4, Lcom/scoreloop/client/android/ui/component/payment/PriceListItem;

    invoke-direct {v4, p0, v3}, Lcom/scoreloop/client/android/ui/component/payment/PriceListItem;-><init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Lcom/scoreloop/client/android/core/model/Price;)V

    invoke-virtual {v0, v4}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 101
    .end local v3           #price:Lcom/scoreloop/client/android/core/model/Price;
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/ui/component/payment/AbstractCheckoutListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    new-instance v0, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;

    invoke-direct {v0, p0}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/payment/PriceListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 44
    return-void
.end method

.method public onListItemClick(Lcom/scoreloop/client/android/ui/framework/BaseListItem;)V
    .locals 5
    .parameter "item"

    .prologue
    .line 48
    instance-of v3, p1, Lcom/scoreloop/client/android/ui/component/payment/PriceListItem;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 49
    check-cast v2, Lcom/scoreloop/client/android/ui/component/payment/PriceListItem;

    .line 50
    .local v2, priceListItem:Lcom/scoreloop/client/android/ui/component/payment/PriceListItem;
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/payment/PriceListActivity;->getPaymentMethod()Lcom/scoreloop/client/android/core/model/PaymentMethod;

    move-result-object v0

    .line 51
    .local v0, paymentMethod:Lcom/scoreloop/client/android/core/model/PaymentMethod;
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/PaymentMethod;->getPaymentProvider()Lcom/scoreloop/client/android/core/model/PaymentProvider;

    move-result-object v3

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/PriceListActivity;->getSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/scoreloop/client/android/core/controller/PaymentProviderController;->getPaymentProviderController(Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;Lcom/scoreloop/client/android/core/model/PaymentProvider;Lcom/scoreloop/client/android/core/model/Session;)Lcom/scoreloop/client/android/core/controller/PaymentProviderController;

    move-result-object v1

    .line 54
    .local v1, paymentProviderController:Lcom/scoreloop/client/android/core/controller/PaymentProviderController;
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/PriceListActivity;->startCheckout()V

    .line 55
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/PriceListActivity;->getGameItem()Lcom/scoreloop/client/android/core/model/GameItem;

    move-result-object v4

    invoke-virtual {v2}, Lcom/scoreloop/client/android/ui/component/payment/PriceListItem;->getTarget()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/scoreloop/client/android/core/model/Price;

    invoke-virtual {v1, p0, v4, v3}, Lcom/scoreloop/client/android/core/controller/PaymentProviderController;->checkout(Landroid/app/Activity;Lcom/scoreloop/client/android/core/model/GameItem;Lcom/scoreloop/client/android/core/model/Price;)V

    .line 57
    .end local v0           #paymentMethod:Lcom/scoreloop/client/android/core/model/PaymentMethod;
    .end local v1           #paymentProviderController:Lcom/scoreloop/client/android/core/controller/PaymentProviderController;
    .end local v2           #priceListItem:Lcom/scoreloop/client/android/ui/component/payment/PriceListItem;
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 61
    invoke-super {p0}, Lcom/scoreloop/client/android/ui/component/payment/AbstractCheckoutListActivity;->onStart()V

    .line 62
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/payment/PriceListActivity;->updateUI()V

    .line 63
    return-void
.end method

.method public paymentControllerDidCancel(Lcom/scoreloop/client/android/core/controller/PaymentProviderController;)V
    .locals 0
    .parameter "paymentProviderController"

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/ui/component/payment/AbstractCheckoutListActivity;->paymentControllerDidCancel(Lcom/scoreloop/client/android/core/controller/PaymentProviderController;)V

    .line 68
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/PriceListActivity;->displayPrevious()V

    .line 69
    return-void
.end method

.method public paymentControllerDidFail(Lcom/scoreloop/client/android/core/controller/PaymentProviderController;Ljava/lang/Exception;)V
    .locals 0
    .parameter "paymentProviderController"
    .parameter "error"

    .prologue
    .line 73
    invoke-super {p0, p1, p2}, Lcom/scoreloop/client/android/ui/component/payment/AbstractCheckoutListActivity;->paymentControllerDidFail(Lcom/scoreloop/client/android/core/controller/PaymentProviderController;Ljava/lang/Exception;)V

    .line 74
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/PriceListActivity;->displayPrevious()V

    .line 75
    return-void
.end method

.method protected stepOut()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 81
    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/payment/PriceListActivity;->displayPrevious(Z)V

    .line 82
    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/payment/PriceListActivity;->displayPrevious(Z)V

    .line 83
    return-void
.end method
