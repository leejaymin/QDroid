.class public abstract Lnet/robotmedia/billing/helper/AbstractBillingActivity;
.super Landroid/app/Activity;
.source "AbstractBillingActivity.java"

# interfaces
.implements Lnet/robotmedia/billing/BillingController$IConfiguration;


# instance fields
.field protected mBillingObserver:Lnet/robotmedia/billing/helper/AbstractBillingObserver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public checkBillingSupported()Lnet/robotmedia/billing/BillingController$BillingStatus;
    .locals 1

    .prologue
    .line 38
    invoke-static {p0}, Lnet/robotmedia/billing/BillingController;->checkBillingSupported(Landroid/content/Context;)Lnet/robotmedia/billing/BillingController$BillingStatus;

    move-result-object v0

    return-object v0
.end method

.method public abstract onBillingChecked(Z)V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    new-instance v0, Lnet/robotmedia/billing/helper/AbstractBillingActivity$1;

    invoke-direct {v0, p0, p0}, Lnet/robotmedia/billing/helper/AbstractBillingActivity$1;-><init>(Lnet/robotmedia/billing/helper/AbstractBillingActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lnet/robotmedia/billing/helper/AbstractBillingActivity;->mBillingObserver:Lnet/robotmedia/billing/helper/AbstractBillingObserver;

    .line 64
    iget-object v0, p0, Lnet/robotmedia/billing/helper/AbstractBillingActivity;->mBillingObserver:Lnet/robotmedia/billing/helper/AbstractBillingObserver;

    invoke-static {v0}, Lnet/robotmedia/billing/BillingController;->registerObserver(Lnet/robotmedia/billing/IBillingObserver;)Z

    .line 65
    invoke-static {p0}, Lnet/robotmedia/billing/BillingController;->setConfiguration(Lnet/robotmedia/billing/BillingController$IConfiguration;)V

    .line 67
    invoke-virtual {p0}, Lnet/robotmedia/billing/helper/AbstractBillingActivity;->checkBillingSupported()Lnet/robotmedia/billing/BillingController$BillingStatus;

    .line 68
    iget-object v0, p0, Lnet/robotmedia/billing/helper/AbstractBillingActivity;->mBillingObserver:Lnet/robotmedia/billing/helper/AbstractBillingObserver;

    invoke-virtual {v0}, Lnet/robotmedia/billing/helper/AbstractBillingObserver;->isTransactionsRestored()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    invoke-static {p0}, Lnet/robotmedia/billing/BillingController;->restoreTransactions(Landroid/content/Context;)V

    .line 71
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 76
    iget-object v0, p0, Lnet/robotmedia/billing/helper/AbstractBillingActivity;->mBillingObserver:Lnet/robotmedia/billing/helper/AbstractBillingObserver;

    invoke-static {v0}, Lnet/robotmedia/billing/BillingController;->unregisterObserver(Lnet/robotmedia/billing/IBillingObserver;)Z

    .line 80
    const/4 v0, 0x0

    invoke-static {v0}, Lnet/robotmedia/billing/BillingController;->setConfiguration(Lnet/robotmedia/billing/BillingController$IConfiguration;)V

    .line 81
    return-void
.end method

.method public abstract onPurchaseStateChanged(Ljava/lang/String;Lnet/robotmedia/billing/model/Transaction$PurchaseState;)V
.end method

.method public abstract onRequestPurchaseResponse(Ljava/lang/String;Lnet/robotmedia/billing/BillingRequest$ResponseCode;)V
.end method

.method public requestPurchase(Ljava/lang/String;)V
    .locals 0
    .parameter "itemId"

    .prologue
    .line 99
    invoke-static {p0, p1}, Lnet/robotmedia/billing/BillingController;->requestPurchase(Landroid/content/Context;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public restoreTransactions()V
    .locals 0

    .prologue
    .line 106
    invoke-static {p0}, Lnet/robotmedia/billing/BillingController;->restoreTransactions(Landroid/content/Context;)V

    .line 107
    return-void
.end method
