.class Lcom/gameboys/pocket7/Dungeons$DungeonsPurchaseObserver;
.super Lcom/gameboys/pocket7/PurchaseObserver;
.source "Dungeons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameboys/pocket7/Dungeons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DungeonsPurchaseObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gameboys/pocket7/Dungeons;


# direct methods
.method public constructor <init>(Lcom/gameboys/pocket7/Dungeons;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 204
    iput-object p1, p0, Lcom/gameboys/pocket7/Dungeons$DungeonsPurchaseObserver;->this$0:Lcom/gameboys/pocket7/Dungeons;

    .line 203
    invoke-direct {p0, p1, p2}, Lcom/gameboys/pocket7/PurchaseObserver;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onBillingSupported(Z)V
    .locals 2
    .parameter "supported"

    .prologue
    .line 211
    if-eqz p1, :cond_0

    .line 212
    iget-object v0, p0, Lcom/gameboys/pocket7/Dungeons$DungeonsPurchaseObserver;->this$0:Lcom/gameboys/pocket7/Dungeons;

    #calls: Lcom/gameboys/pocket7/Dungeons;->restoreDatabase()V
    invoke-static {v0}, Lcom/gameboys/pocket7/Dungeons;->access$0(Lcom/gameboys/pocket7/Dungeons;)V

    .line 217
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/gameboys/pocket7/Dungeons$DungeonsPurchaseObserver;->this$0:Lcom/gameboys/pocket7/Dungeons;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/gameboys/pocket7/Dungeons;->showDialog(I)V

    goto :goto_0
.end method

.method public onPurchaseStateChange(Lcom/gameboys/pocket7/Consts$PurchaseState;Ljava/lang/String;IJLjava/lang/String;)V
    .locals 1
    .parameter "purchaseState"
    .parameter "itemId"
    .parameter "quantity"
    .parameter "purchaseTime"
    .parameter "developerPayload"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/gameboys/pocket7/Dungeons$DungeonsPurchaseObserver;->this$0:Lcom/gameboys/pocket7/Dungeons;

    #getter for: Lcom/gameboys/pocket7/Dungeons;->mOwnedItemsCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/gameboys/pocket7/Dungeons;->access$1(Lcom/gameboys/pocket7/Dungeons;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 228
    return-void
.end method

.method public onRequestPurchaseResponse(Lcom/gameboys/pocket7/BillingService$RequestPurchase;Lcom/gameboys/pocket7/Consts$ResponseCode;)V
    .locals 4
    .parameter "request"
    .parameter "responseCode"

    .prologue
    .line 236
    sget-object v1, Lcom/gameboys/pocket7/Consts$ResponseCode;->RESULT_OK:Lcom/gameboys/pocket7/Consts$ResponseCode;

    if-ne p2, v1, :cond_0

    .line 238
    const-string v1, "1"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/gameboys/pocket7/BillingService$RequestPurchase;->mProductId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 239
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 238
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 245
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "ADD_PRODUCT"

    iget-object v2, p0, Lcom/gameboys/pocket7/Dungeons$DungeonsPurchaseObserver;->this$0:Lcom/gameboys/pocket7/Dungeons;

    iget v2, v2, Lcom/gameboys/pocket7/Dungeons;->product:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 246
    iget-object v1, p0, Lcom/gameboys/pocket7/Dungeons$DungeonsPurchaseObserver;->this$0:Lcom/gameboys/pocket7/Dungeons;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/gameboys/pocket7/Dungeons;->setResult(ILandroid/content/Intent;)V

    .line 247
    iget-object v1, p0, Lcom/gameboys/pocket7/Dungeons$DungeonsPurchaseObserver;->this$0:Lcom/gameboys/pocket7/Dungeons;

    invoke-virtual {v1}, Lcom/gameboys/pocket7/Dungeons;->finish()V

    .line 262
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 249
    :cond_0
    sget-object v1, Lcom/gameboys/pocket7/Consts$ResponseCode;->RESULT_USER_CANCELED:Lcom/gameboys/pocket7/Consts$ResponseCode;

    if-ne p2, v1, :cond_1

    .line 254
    iget-object v1, p0, Lcom/gameboys/pocket7/Dungeons$DungeonsPurchaseObserver;->this$0:Lcom/gameboys/pocket7/Dungeons;

    invoke-virtual {v1}, Lcom/gameboys/pocket7/Dungeons;->finish()V

    goto :goto_0

    .line 260
    :cond_1
    iget-object v1, p0, Lcom/gameboys/pocket7/Dungeons$DungeonsPurchaseObserver;->this$0:Lcom/gameboys/pocket7/Dungeons;

    invoke-virtual {v1}, Lcom/gameboys/pocket7/Dungeons;->finish()V

    goto :goto_0
.end method

.method public onRestoreTransactionsResponse(Lcom/gameboys/pocket7/BillingService$RestoreTransactions;Lcom/gameboys/pocket7/Consts$ResponseCode;)V
    .locals 4
    .parameter "request"
    .parameter "responseCode"

    .prologue
    .line 267
    sget-object v2, Lcom/gameboys/pocket7/Consts$ResponseCode;->RESULT_OK:Lcom/gameboys/pocket7/Consts$ResponseCode;

    if-ne p2, v2, :cond_0

    .line 273
    iget-object v2, p0, Lcom/gameboys/pocket7/Dungeons$DungeonsPurchaseObserver;->this$0:Lcom/gameboys/pocket7/Dungeons;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/gameboys/pocket7/Dungeons;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 274
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 275
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "db_initialized"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 276
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 282
    .end local v0           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method
