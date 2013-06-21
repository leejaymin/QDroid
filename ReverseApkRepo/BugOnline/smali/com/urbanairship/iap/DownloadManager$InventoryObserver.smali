.class Lcom/urbanairship/iap/DownloadManager$InventoryObserver;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/iap/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InventoryObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/iap/DownloadManager;


# direct methods
.method private constructor <init>(Lcom/urbanairship/iap/DownloadManager;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/iap/DownloadManager$InventoryObserver;->this$0:Lcom/urbanairship/iap/DownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/urbanairship/iap/DownloadManager;Lcom/urbanairship/iap/DownloadManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/urbanairship/iap/DownloadManager$InventoryObserver;-><init>(Lcom/urbanairship/iap/DownloadManager;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2

    check-cast p2, Lcom/urbanairship/iap/Inventory;

    invoke-virtual {p2}, Lcom/urbanairship/iap/Inventory;->getStatus()Lcom/urbanairship/iap/Inventory$Status;

    move-result-object v0

    sget-object v1, Lcom/urbanairship/iap/Inventory$Status;->LOADED:Lcom/urbanairship/iap/Inventory$Status;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/urbanairship/iap/IAPManager;->isFirstRun()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/urbanairship/iap/IAPManager;->isBillingSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/urbanairship/iap/IAPManager;->shared()Lcom/urbanairship/iap/IAPManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/iap/IAPManager;->restoreTransactions()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/urbanairship/iap/DownloadManager$InventoryObserver;->this$0:Lcom/urbanairship/iap/DownloadManager;

    #calls: Lcom/urbanairship/iap/DownloadManager;->resumePendingProducts()V
    invoke-static {v0}, Lcom/urbanairship/iap/DownloadManager;->access$600(Lcom/urbanairship/iap/DownloadManager;)V

    goto :goto_0
.end method
