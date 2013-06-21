.class public Lcom/urbanairship/iap/DownloadManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/iap/DownloadManager$InventoryObserver;,
        Lcom/urbanairship/iap/DownloadManager$UnzipDelegate;
    }
.end annotation


# static fields
.field static final MAX_TRIES:I = 0x3

.field static final PENDING_PRODUCTS_FILE:Ljava/lang/String; = "com.urbanairship.iap.pending_products"


# instance fields
.field private inventoryObserver:Lcom/urbanairship/iap/DownloadManager$InventoryObserver;

.field private notificationController:Lcom/urbanairship/iap/NotificationController;

.field private queue:Lcom/urbanairship/restclient/RequestQueue;

.field private tries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/urbanairship/iap/DownloadManager$InventoryObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/urbanairship/iap/DownloadManager$InventoryObserver;-><init>(Lcom/urbanairship/iap/DownloadManager;Lcom/urbanairship/iap/DownloadManager$1;)V

    iput-object v0, p0, Lcom/urbanairship/iap/DownloadManager;->inventoryObserver:Lcom/urbanairship/iap/DownloadManager$InventoryObserver;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/iap/DownloadManager;->tries:Ljava/util/HashMap;

    new-instance v0, Lcom/urbanairship/restclient/RequestQueue;

    invoke-direct {v0}, Lcom/urbanairship/restclient/RequestQueue;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/iap/DownloadManager;->queue:Lcom/urbanairship/restclient/RequestQueue;

    new-instance v0, Lcom/urbanairship/iap/NotificationController;

    invoke-direct {v0}, Lcom/urbanairship/iap/NotificationController;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/iap/DownloadManager;->notificationController:Lcom/urbanairship/iap/NotificationController;

    invoke-static {}, Lcom/urbanairship/iap/IAPManager;->shared()Lcom/urbanairship/iap/IAPManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/iap/IAPManager;->getInventory()Lcom/urbanairship/iap/Inventory;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/iap/DownloadManager;->inventoryObserver:Lcom/urbanairship/iap/DownloadManager$InventoryObserver;

    invoke-virtual {v0, v1}, Lcom/urbanairship/iap/Inventory;->addObserver(Ljava/util/Observer;)V

    return-void
.end method

.method static synthetic access$100(Lcom/urbanairship/iap/DownloadManager;Lcom/urbanairship/iap/Product;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/urbanairship/iap/DownloadManager;->download(Lcom/urbanairship/iap/Product;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/urbanairship/iap/DownloadManager;Lcom/urbanairship/iap/Product;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/urbanairship/iap/DownloadManager;->retry(Lcom/urbanairship/iap/Product;)V

    return-void
.end method

.method static synthetic access$300(Lcom/urbanairship/iap/DownloadManager;)Lcom/urbanairship/iap/NotificationController;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/iap/DownloadManager;->notificationController:Lcom/urbanairship/iap/NotificationController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/urbanairship/iap/DownloadManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/urbanairship/iap/DownloadManager;->removePendingProduct(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/urbanairship/iap/DownloadManager;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/iap/DownloadManager;->tries:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/urbanairship/iap/DownloadManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/urbanairship/iap/DownloadManager;->resumePendingProducts()V

    return-void
.end method

.method private addPendingProduct(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/urbanairship/iap/DownloadManager;->getPendingProducts()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private download(Lcom/urbanairship/iap/Product;Ljava/lang/String;)V
    .locals 9

    invoke-virtual {p1}, Lcom/urbanairship/iap/Product;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/urbanairship/iap/Product;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3}, Lcom/urbanairship/iap/DownloadManager;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v7, Lcom/urbanairship/restclient/Request;

    const-string v0, "GET"

    invoke-direct {v7, v0, p2}, Lcom/urbanairship/restclient/Request;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/urbanairship/iap/Product$Status;->DOWNLOADING:Lcom/urbanairship/iap/Product$Status;

    invoke-virtual {p1, v0}, Lcom/urbanairship/iap/Product;->setStatus(Lcom/urbanairship/iap/Product$Status;)V

    iget-object v0, p0, Lcom/urbanairship/iap/DownloadManager;->notificationController:Lcom/urbanairship/iap/NotificationController;

    invoke-virtual {v0, v3}, Lcom/urbanairship/iap/NotificationController;->get(Ljava/lang/String;)Lcom/urbanairship/iap/PurchaseNotificationInfo;

    move-result-object v0

    sget-object v2, Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;->DOWNLOADING:Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;

    invoke-virtual {v0, v2}, Lcom/urbanairship/iap/PurchaseNotificationInfo;->setNotificationType(Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;)V

    iget-object v2, p0, Lcom/urbanairship/iap/DownloadManager;->notificationController:Lcom/urbanairship/iap/NotificationController;

    invoke-virtual {v2, v0}, Lcom/urbanairship/iap/NotificationController;->sendNotification(Lcom/urbanairship/iap/PurchaseNotificationInfo;)V

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    const-string v2, "Writing to SD card"

    invoke-static {v2}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    :goto_0
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/urbanairship/iap/IAPManager;->shared()Lcom/urbanairship/iap/IAPManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/urbanairship/iap/IAPManager;->getTempPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".zip"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v2

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/urbanairship/iap/IAPManager;->shared()Lcom/urbanairship/iap/IAPManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/urbanairship/iap/IAPManager;->getDownloadPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v7, v2}, Lcom/urbanairship/restclient/Request;->setDestination(Ljava/io/File;)V

    iget-object v8, p0, Lcom/urbanairship/iap/DownloadManager;->queue:Lcom/urbanairship/restclient/RequestQueue;

    new-instance v0, Lcom/urbanairship/iap/DownloadManager$2;

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/urbanairship/iap/DownloadManager$2;-><init>(Lcom/urbanairship/iap/DownloadManager;Ljava/io/File;Ljava/lang/String;Lcom/urbanairship/iap/Product;Ljava/io/File;)V

    invoke-virtual {v8, v7, v0}, Lcom/urbanairship/restclient/RequestQueue;->addRequest(Lcom/urbanairship/restclient/Request;Lcom/urbanairship/restclient/AsyncHandler;)V

    :goto_1
    return-void

    :cond_0
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v2, "SD card not available, writing to internal storage"

    invoke-static {v2}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error downloading product "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, p1}, Lcom/urbanairship/iap/DownloadManager;->retry(Lcom/urbanairship/iap/Product;)V

    goto :goto_1
.end method

.method private removePendingProduct(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/urbanairship/iap/DownloadManager;->getPendingProducts()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private resumePendingProducts()V
    .locals 5

    const-string v0, "resumePendingProducts"

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/urbanairship/iap/DownloadManager;->getPendingProducts()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/urbanairship/iap/IAPManager;->shared()Lcom/urbanairship/iap/IAPManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/iap/IAPManager;->getInventory()Lcom/urbanairship/iap/Inventory;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/urbanairship/iap/Inventory;->getProduct(Ljava/lang/String;)Lcom/urbanairship/iap/Product;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/iap/Product;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/urbanairship/iap/Product;->getStatus()Lcom/urbanairship/iap/Product$Status;

    move-result-object v3

    sget-object v4, Lcom/urbanairship/iap/Product$Status;->DOWNLOADING:Lcom/urbanairship/iap/Product$Status;

    if-eq v3, v4, :cond_0

    sget-object v4, Lcom/urbanairship/iap/Product$Status;->WAITING:Lcom/urbanairship/iap/Product$Status;

    if-eq v3, v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resuming download of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/urbanairship/iap/DownloadManager;->verify(Lcom/urbanairship/iap/Product;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is already downloading"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private retry(Lcom/urbanairship/iap/Product;)V
    .locals 6

    const/4 v5, 0x3

    invoke-virtual {p1}, Lcom/urbanairship/iap/Product;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/urbanairship/iap/Product;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/urbanairship/iap/DownloadManager;->tries:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v0, Lcom/urbanairship/iap/Product$Status;->PURCHASED:Lcom/urbanairship/iap/Product$Status;

    invoke-virtual {p1, v0}, Lcom/urbanairship/iap/Product;->setStatus(Lcom/urbanairship/iap/Product$Status;)V

    iget-object v0, p0, Lcom/urbanairship/iap/DownloadManager;->tries:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v5, :cond_1

    iget-object v0, p0, Lcom/urbanairship/iap/DownloadManager;->tries:Ljava/util/HashMap;

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Retrying download of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/urbanairship/iap/DownloadManager;->verify(Lcom/urbanairship/iap/Product;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Already tried downloading %s %d times, giving up for now"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/urbanairship/iap/DownloadManager;->notificationController:Lcom/urbanairship/iap/NotificationController;

    invoke-virtual {v0, v1}, Lcom/urbanairship/iap/NotificationController;->get(Ljava/lang/String;)Lcom/urbanairship/iap/PurchaseNotificationInfo;

    move-result-object v0

    sget-object v2, Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;->DOWNLOAD_FAILED:Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;

    invoke-virtual {v0, v2}, Lcom/urbanairship/iap/PurchaseNotificationInfo;->setNotificationType(Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;)V

    iget-object v0, p0, Lcom/urbanairship/iap/DownloadManager;->notificationController:Lcom/urbanairship/iap/NotificationController;

    invoke-virtual {v0, v1}, Lcom/urbanairship/iap/NotificationController;->removePurchaseNotification(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/urbanairship/iap/DownloadManager;->tries:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/urbanairship/iap/IAPManager;->shared()Lcom/urbanairship/iap/IAPManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/iap/IAPManager;->getEventListener()Lcom/urbanairship/iap/IAPEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/urbanairship/iap/IAPEventListener;->downloadFailed(Lcom/urbanairship/iap/Product;)V

    goto :goto_0
.end method

.method private sanitize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[a-zA-Z0-9]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private verify(Lcom/urbanairship/iap/Product;)V
    .locals 7

    invoke-virtual {p1}, Lcom/urbanairship/iap/Product;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/urbanairship/iap/Product;->getTitle()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/urbanairship/iap/Product$Status;->WAITING:Lcom/urbanairship/iap/Product$Status;

    invoke-virtual {p1, v2}, Lcom/urbanairship/iap/Product;->setStatus(Lcom/urbanairship/iap/Product$Status;)V

    iget-object v2, p0, Lcom/urbanairship/iap/DownloadManager;->notificationController:Lcom/urbanairship/iap/NotificationController;

    invoke-virtual {v2, v0}, Lcom/urbanairship/iap/NotificationController;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/urbanairship/iap/DownloadManager;->notificationController:Lcom/urbanairship/iap/NotificationController;

    sget-object v3, Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;->VERIFYING_RECEIPT:Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;

    invoke-virtual {v2, v0, v1, v3}, Lcom/urbanairship/iap/NotificationController;->registerPurchaseNotification(Ljava/lang/String;Ljava/lang/String;Lcom/urbanairship/iap/PurchaseNotificationInfo$NotificationType;)V

    :cond_0
    iget-object v2, p0, Lcom/urbanairship/iap/DownloadManager;->tries:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/urbanairship/iap/DownloadManager;->tries:Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance v2, Lcom/urbanairship/restclient/AppAuthenticatedRequest;

    const-string v3, "POST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/urbanairship/iap/Product;->getDownloadURLString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?platform=android"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/urbanairship/restclient/AppAuthenticatedRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/urbanairship/iap/Receipt;->fetch(Ljava/lang/String;)Lcom/urbanairship/iap/Receipt;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/iap/Receipt;->getSignedData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/urbanairship/iap/Receipt;->getSignature()Ljava/lang/String;

    move-result-object v3

    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    const-string v5, "paid product, verifying receipt"

    invoke-static {v5}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "receipt: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " signature: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    :try_start_0
    new-instance v5, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v5, v4}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    const-string v4, "application/json"

    invoke-virtual {v5, v4}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lcom/urbanairship/restclient/AppAuthenticatedRequest;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v4, Lorg/apache/http/message/BasicHeader;

    const-string v5, "x-google-iap-signature"

    invoke-direct {v4, v5, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/urbanairship/restclient/AppAuthenticatedRequest;->addHeader(Lorg/apache/http/Header;)V

    :goto_1
    iget-object v3, p0, Lcom/urbanairship/iap/DownloadManager;->queue:Lcom/urbanairship/restclient/RequestQueue;

    new-instance v4, Lcom/urbanairship/iap/DownloadManager$1;

    invoke-direct {v4, p0, p1, v1}, Lcom/urbanairship/iap/DownloadManager$1;-><init>(Lcom/urbanairship/iap/DownloadManager;Lcom/urbanairship/iap/Product;Ljava/lang/String;)V

    invoke-virtual {v3, v2, v4}, Lcom/urbanairship/restclient/RequestQueue;->addRequest(Lcom/urbanairship/restclient/Request;Lcom/urbanairship/restclient/AsyncHandler;)V

    iget-object v1, p0, Lcom/urbanairship/iap/DownloadManager;->notificationController:Lcom/urbanairship/iap/NotificationController;

    invoke-virtual {v1, v0}, Lcom/urbanairship/iap/NotificationController;->get(Ljava/lang/String;)Lcom/urbanairship/iap/PurchaseNotificationInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/urbanairship/iap/DownloadManager;->notificationController:Lcom/urbanairship/iap/NotificationController;

    invoke-virtual {v2, v1}, Lcom/urbanairship/iap/NotificationController;->sendNotification(Lcom/urbanairship/iap/PurchaseNotificationInfo;)V

    invoke-static {}, Lcom/urbanairship/iap/IAPManager;->shared()Lcom/urbanairship/iap/IAPManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/iap/IAPManager;->getEventListener()Lcom/urbanairship/iap/IAPEventListener;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/urbanairship/iap/DownloadManager;->tries:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, p1, v0}, Lcom/urbanairship/iap/IAPEventListener;->downloadStarted(Lcom/urbanairship/iap/Product;I)V

    :cond_2
    return-void

    :catch_0
    move-exception v4

    const-string v4, "Error setting verifyRequest entity"

    invoke-static {v4}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v3, "free product, sending bare request"

    invoke-static {v3}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public downloadIfValid(Lcom/urbanairship/iap/Product;)V
    .locals 2

    invoke-virtual {p1}, Lcom/urbanairship/iap/Product;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/urbanairship/iap/DownloadManager;->hasPendingProduct(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/urbanairship/iap/DownloadManager;->addPendingProduct(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/urbanairship/iap/DownloadManager;->verify(Lcom/urbanairship/iap/Product;)V

    return-void
.end method

.method getPendingProducts()Landroid/content/SharedPreferences;
    .locals 3

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.urbanairship.iap.pending_products"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public hasPendingProduct(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/urbanairship/iap/DownloadManager;->getPendingProducts()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
