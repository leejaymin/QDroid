.class public final Lcom/urbanairship/iap/IAPManager;
.super Ljava/lang/Object;


# static fields
.field private static final IAP_FIRST_RUN_PREFERENCES:Ljava/lang/String; = "com.urbanairship.iap.first_run"

.field private static final INITIALIZED_KEY:Ljava/lang/String; = "initialized"

.field private static final instance:Lcom/urbanairship/iap/IAPManager;


# instance fields
.field private appIcon:I

.field private appName:Ljava/lang/String;

.field private billingService:Lcom/urbanairship/iap/marketinterface/BillingService;

.field private downloadManager:Lcom/urbanairship/iap/DownloadManager;

.field private downloadPath:Ljava/lang/String;

.field private eventListener:Lcom/urbanairship/iap/IAPEventListener;

.field private inventory:Lcom/urbanairship/iap/Inventory;

.field private isBillingSupported:Z

.field private marketListener:Lcom/urbanairship/iap/MarketListener;

.field private notificationBuilder:Lcom/urbanairship/iap/PurchaseNotificationBuilder;

.field private tempPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/urbanairship/iap/IAPManager;

    invoke-direct {v0}, Lcom/urbanairship/iap/IAPManager;-><init>()V

    sput-object v0, Lcom/urbanairship/iap/IAPManager;->instance:Lcom/urbanairship/iap/IAPManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/urbanairship/iap/IAPManager;->appName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/urbanairship/iap/IAPManager;->isBillingSupported:Z

    return-void
.end method

.method static firstRun()V
    .locals 3

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.urbanairship.iap.first_run"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "initialized"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "Error writing to shared preferences"

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static init()V
    .locals 3

    sget-object v0, Lcom/urbanairship/iap/IAPManager;->instance:Lcom/urbanairship/iap/IAPManager;

    new-instance v1, Lcom/urbanairship/iap/Inventory;

    invoke-direct {v1}, Lcom/urbanairship/iap/Inventory;-><init>()V

    iput-object v1, v0, Lcom/urbanairship/iap/IAPManager;->inventory:Lcom/urbanairship/iap/Inventory;

    sget-object v0, Lcom/urbanairship/iap/IAPManager;->instance:Lcom/urbanairship/iap/IAPManager;

    new-instance v1, Lcom/urbanairship/iap/DownloadManager;

    invoke-direct {v1}, Lcom/urbanairship/iap/DownloadManager;-><init>()V

    iput-object v1, v0, Lcom/urbanairship/iap/IAPManager;->downloadManager:Lcom/urbanairship/iap/DownloadManager;

    sget-object v0, Lcom/urbanairship/iap/IAPManager;->instance:Lcom/urbanairship/iap/IAPManager;

    new-instance v1, Lcom/urbanairship/iap/BasicPurchaseNotificationBuilder;

    invoke-direct {v1}, Lcom/urbanairship/iap/BasicPurchaseNotificationBuilder;-><init>()V

    iput-object v1, v0, Lcom/urbanairship/iap/IAPManager;->notificationBuilder:Lcom/urbanairship/iap/PurchaseNotificationBuilder;

    sget-object v0, Lcom/urbanairship/iap/IAPManager;->instance:Lcom/urbanairship/iap/IAPManager;

    new-instance v1, Lcom/urbanairship/iap/marketinterface/BillingService;

    invoke-direct {v1}, Lcom/urbanairship/iap/marketinterface/BillingService;-><init>()V

    iput-object v1, v0, Lcom/urbanairship/iap/IAPManager;->billingService:Lcom/urbanairship/iap/marketinterface/BillingService;

    sget-object v0, Lcom/urbanairship/iap/IAPManager;->instance:Lcom/urbanairship/iap/IAPManager;

    iget-object v0, v0, Lcom/urbanairship/iap/IAPManager;->billingService:Lcom/urbanairship/iap/marketinterface/BillingService;

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/iap/marketinterface/BillingService;->setContext(Landroid/content/Context;)V

    sget-object v0, Lcom/urbanairship/iap/IAPManager;->instance:Lcom/urbanairship/iap/IAPManager;

    invoke-static {}, Lcom/urbanairship/UAirship;->getAppName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/urbanairship/iap/IAPManager;->appName:Ljava/lang/String;

    sget-object v0, Lcom/urbanairship/iap/IAPManager;->instance:Lcom/urbanairship/iap/IAPManager;

    invoke-static {}, Lcom/urbanairship/UAirship;->getAppIcon()I

    move-result v1

    iput v1, v0, Lcom/urbanairship/iap/IAPManager;->appIcon:I

    sget-object v0, Lcom/urbanairship/iap/IAPManager;->instance:Lcom/urbanairship/iap/IAPManager;

    iget-object v0, v0, Lcom/urbanairship/iap/IAPManager;->billingService:Lcom/urbanairship/iap/marketinterface/BillingService;

    invoke-virtual {v0}, Lcom/urbanairship/iap/marketinterface/BillingService;->checkBillingSupported()Z

    sget-object v0, Lcom/urbanairship/iap/IAPManager;->instance:Lcom/urbanairship/iap/IAPManager;

    new-instance v1, Lcom/urbanairship/iap/DefaultIAPEventListener;

    invoke-direct {v1}, Lcom/urbanairship/iap/DefaultIAPEventListener;-><init>()V

    iput-object v1, v0, Lcom/urbanairship/iap/IAPManager;->eventListener:Lcom/urbanairship/iap/IAPEventListener;

    sget-object v0, Lcom/urbanairship/iap/IAPManager;->instance:Lcom/urbanairship/iap/IAPManager;

    iget-object v0, v0, Lcom/urbanairship/iap/IAPManager;->marketListener:Lcom/urbanairship/iap/MarketListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/urbanairship/iap/IAPManager;->instance:Lcom/urbanairship/iap/IAPManager;

    iget-object v0, v0, Lcom/urbanairship/iap/IAPManager;->marketListener:Lcom/urbanairship/iap/MarketListener;

    invoke-static {v0}, Lcom/urbanairship/iap/marketinterface/ResponseHandler;->unregister(Lcom/urbanairship/iap/MarketListener;)V

    :cond_0
    sget-object v0, Lcom/urbanairship/iap/IAPManager;->instance:Lcom/urbanairship/iap/IAPManager;

    new-instance v1, Lcom/urbanairship/iap/MarketListener;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, v2}, Lcom/urbanairship/iap/MarketListener;-><init>(Landroid/os/Handler;)V

    iput-object v1, v0, Lcom/urbanairship/iap/IAPManager;->marketListener:Lcom/urbanairship/iap/MarketListener;

    sget-object v0, Lcom/urbanairship/iap/IAPManager;->instance:Lcom/urbanairship/iap/IAPManager;

    iget-object v0, v0, Lcom/urbanairship/iap/IAPManager;->marketListener:Lcom/urbanairship/iap/MarketListener;

    invoke-static {v0}, Lcom/urbanairship/iap/marketinterface/ResponseHandler;->register(Lcom/urbanairship/iap/MarketListener;)V

    return-void
.end method

.method public static isBillingSupported()Z
    .locals 1

    sget-object v0, Lcom/urbanairship/iap/IAPManager;->instance:Lcom/urbanairship/iap/IAPManager;

    iget-boolean v0, v0, Lcom/urbanairship/iap/IAPManager;->isBillingSupported:Z

    return v0
.end method

.method static isFirstRun()Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.urbanairship.iap.first_run"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "initialized"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static onBillingSupported(Z)V
    .locals 1

    sget-object v0, Lcom/urbanairship/iap/IAPManager;->instance:Lcom/urbanairship/iap/IAPManager;

    iput-boolean p0, v0, Lcom/urbanairship/iap/IAPManager;->isBillingSupported:Z

    sget-object v0, Lcom/urbanairship/iap/IAPManager;->instance:Lcom/urbanairship/iap/IAPManager;

    iget-object v0, v0, Lcom/urbanairship/iap/IAPManager;->eventListener:Lcom/urbanairship/iap/IAPEventListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/urbanairship/iap/IAPManager;->instance:Lcom/urbanairship/iap/IAPManager;

    iget-object v0, v0, Lcom/urbanairship/iap/IAPManager;->eventListener:Lcom/urbanairship/iap/IAPEventListener;

    invoke-virtual {v0, p0}, Lcom/urbanairship/iap/IAPEventListener;->billingSupported(Z)V

    :cond_0
    return-void
.end method

.method public static shared()Lcom/urbanairship/iap/IAPManager;
    .locals 1

    sget-object v0, Lcom/urbanairship/iap/IAPManager;->instance:Lcom/urbanairship/iap/IAPManager;

    return-object v0
.end method

.method public static tearDown()V
    .locals 1

    sget-object v0, Lcom/urbanairship/iap/IAPManager;->instance:Lcom/urbanairship/iap/IAPManager;

    iget-object v0, v0, Lcom/urbanairship/iap/IAPManager;->billingService:Lcom/urbanairship/iap/marketinterface/BillingService;

    invoke-virtual {v0}, Lcom/urbanairship/iap/marketinterface/BillingService;->unbind()V

    sget-object v0, Lcom/urbanairship/iap/IAPManager;->instance:Lcom/urbanairship/iap/IAPManager;

    iget-object v0, v0, Lcom/urbanairship/iap/IAPManager;->marketListener:Lcom/urbanairship/iap/MarketListener;

    invoke-static {v0}, Lcom/urbanairship/iap/marketinterface/ResponseHandler;->unregister(Lcom/urbanairship/iap/MarketListener;)V

    return-void
.end method


# virtual methods
.method public getAppIcon()I
    .locals 1

    iget v0, p0, Lcom/urbanairship/iap/IAPManager;->appIcon:I

    return v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/iap/IAPManager;->appName:Ljava/lang/String;

    return-object v0
.end method

.method getBillingService()Lcom/urbanairship/iap/marketinterface/BillingService;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/iap/IAPManager;->billingService:Lcom/urbanairship/iap/marketinterface/BillingService;

    return-object v0
.end method

.method getDownloadManager()Lcom/urbanairship/iap/DownloadManager;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/iap/IAPManager;->downloadManager:Lcom/urbanairship/iap/DownloadManager;

    return-object v0
.end method

.method public getDownloadPath()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/iap/IAPManager;->downloadPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/iap/IAPManager;->downloadPath:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iap/downloads/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/urbanairship/UAirship;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getEventListener()Lcom/urbanairship/iap/IAPEventListener;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/iap/IAPManager;->eventListener:Lcom/urbanairship/iap/IAPEventListener;

    return-object v0
.end method

.method public getInventory()Lcom/urbanairship/iap/Inventory;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/iap/IAPManager;->inventory:Lcom/urbanairship/iap/Inventory;

    return-object v0
.end method

.method public getNotificationBuilder()Lcom/urbanairship/iap/PurchaseNotificationBuilder;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/iap/IAPManager;->notificationBuilder:Lcom/urbanairship/iap/PurchaseNotificationBuilder;

    return-object v0
.end method

.method public getTempPath()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/iap/IAPManager;->tempPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/iap/IAPManager;->tempPath:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iap/temp/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/urbanairship/UAirship;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method payForProduct(Landroid/app/Activity;Lcom/urbanairship/iap/Product;)Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/urbanairship/iap/IAPManager;->isBillingSupported:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/urbanairship/iap/IAPManager;->billingService:Lcom/urbanairship/iap/marketinterface/BillingService;

    invoke-virtual {p2}, Lcom/urbanairship/iap/Product;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/urbanairship/iap/marketinterface/BillingService;->requestPurchase(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/urbanairship/iap/IAPManager;->eventListener:Lcom/urbanairship/iap/IAPEventListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/urbanairship/iap/IAPManager;->eventListener:Lcom/urbanairship/iap/IAPEventListener;

    invoke-virtual {v1, p2}, Lcom/urbanairship/iap/IAPEventListener;->marketUnavailable(Lcom/urbanairship/iap/Product;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "Billing is not supported on this version of Android Market"

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public restoreTransactions()V
    .locals 1

    invoke-virtual {p0}, Lcom/urbanairship/iap/IAPManager;->getEventListener()Lcom/urbanairship/iap/IAPEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/urbanairship/iap/IAPEventListener;->restoreStarted()V

    :cond_0
    invoke-virtual {p0}, Lcom/urbanairship/iap/IAPManager;->getBillingService()Lcom/urbanairship/iap/marketinterface/BillingService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/iap/marketinterface/BillingService;->restoreTransactions()Z

    return-void
.end method

.method public setDownloadPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/iap/IAPManager;->downloadPath:Ljava/lang/String;

    return-void
.end method

.method public setEventListener(Lcom/urbanairship/iap/IAPEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/iap/IAPManager;->eventListener:Lcom/urbanairship/iap/IAPEventListener;

    return-void
.end method

.method public setNotificationBuilder(Lcom/urbanairship/iap/PurchaseNotificationBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/iap/IAPManager;->notificationBuilder:Lcom/urbanairship/iap/PurchaseNotificationBuilder;

    return-void
.end method

.method public setTempPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/iap/IAPManager;->tempPath:Ljava/lang/String;

    return-void
.end method
