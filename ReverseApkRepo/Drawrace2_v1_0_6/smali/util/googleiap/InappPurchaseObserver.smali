.class public Lutil/googleiap/InappPurchaseObserver;
.super Lutil/googleiap/PurchaseObserver;
.source "InappPurchaseObserver.java"


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/app/Activity;)V
    .locals 0
    .parameter "handler"
    .parameter "activity"

    .prologue
    .line 22
    invoke-direct {p0, p2, p1}, Lutil/googleiap/PurchaseObserver;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    .line 23
    return-void
.end method


# virtual methods
.method public onBillingSupported(Z)V
    .locals 0
    .parameter "supported"

    .prologue
    .line 30
    if-eqz p1, :cond_0

    .line 31
    invoke-static {}, Lutil/googleiap/DrawRace2Purchase;->restoreDatabase()V

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_0
    invoke-static {}, Lutil/googleiap/DrawRace2Purchase;->toastNotSupported()V

    goto :goto_0
.end method

.method public onPurchaseStateChange(Lutil/googleiap/Consts$PurchaseState;Ljava/lang/String;IJLjava/lang/String;)V
    .locals 1
    .parameter "purchaseState"
    .parameter "itemId"
    .parameter "quantity"
    .parameter "purchaseTime"
    .parameter "developerPayload"

    .prologue
    .line 43
    sget-object v0, Lutil/googleiap/Consts$PurchaseState;->PURCHASED:Lutil/googleiap/Consts$PurchaseState;

    if-ne p1, v0, :cond_1

    .line 44
    invoke-static {p2}, Lutil/googleiap/DrawRace2Purchase;->productPurchased(Ljava/lang/String;)V

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    sget-object v0, Lutil/googleiap/Consts$PurchaseState;->REFUNDED:Lutil/googleiap/Consts$PurchaseState;

    if-ne p1, v0, :cond_0

    .line 46
    invoke-static {p2}, Lutil/googleiap/DrawRace2Purchase;->productRefunded(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onRequestPurchaseResponse(Lutil/googleiap/BillingService$RequestPurchase;Lutil/googleiap/Consts$ResponseCode;)V
    .locals 1
    .parameter "request"
    .parameter "responseCode"

    .prologue
    .line 55
    sget-object v0, Lutil/googleiap/Consts$ResponseCode;->RESULT_OK:Lutil/googleiap/Consts$ResponseCode;

    if-ne p2, v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 57
    :cond_0
    sget-object v0, Lutil/googleiap/Consts$ResponseCode;->RESULT_USER_CANCELED:Lutil/googleiap/Consts$ResponseCode;

    if-ne p2, v0, :cond_1

    .line 58
    invoke-static {}, Lutil/googleiap/DrawRace2Purchase;->purchaseCanceled()V

    goto :goto_0

    .line 60
    :cond_1
    invoke-static {}, Lutil/googleiap/DrawRace2Purchase;->purchaseErrorOccured()V

    goto :goto_0
.end method

.method public onRestoreTransactionsResponse(Lutil/googleiap/BillingService$RestoreTransactions;Lutil/googleiap/Consts$ResponseCode;)V
    .locals 4
    .parameter "request"
    .parameter "responseCode"

    .prologue
    .line 69
    sget-object v2, Lutil/googleiap/Consts$ResponseCode;->RESULT_OK:Lutil/googleiap/Consts$ResponseCode;

    if-ne p2, v2, :cond_0

    .line 73
    invoke-static {}, Lutil/googleiap/DrawRace2Purchase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 74
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 75
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "db_initialized"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 76
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 82
    .end local v0           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method
