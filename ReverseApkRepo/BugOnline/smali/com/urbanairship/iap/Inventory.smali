.class public Lcom/urbanairship/iap/Inventory;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/iap/Inventory$2;,
        Lcom/urbanairship/iap/Inventory$InventoryObservable;,
        Lcom/urbanairship/iap/Inventory$FilterType;,
        Lcom/urbanairship/iap/Inventory$Status;
    }
.end annotation


# instance fields
.field private allProducts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/urbanairship/iap/Product;",
            ">;"
        }
    .end annotation
.end field

.field private installedProducts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/urbanairship/iap/Product;",
            ">;"
        }
    .end annotation
.end field

.field private notifier:Lcom/urbanairship/iap/Inventory$InventoryObservable;

.field private products:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/urbanairship/iap/Product;",
            ">;"
        }
    .end annotation
.end field

.field private status:Lcom/urbanairship/iap/Inventory$Status;

.field private updatedProducts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/urbanairship/iap/Product;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/iap/Inventory;->products:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/iap/Inventory;->allProducts:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/iap/Inventory;->updatedProducts:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/iap/Inventory;->installedProducts:Ljava/util/ArrayList;

    sget-object v0, Lcom/urbanairship/iap/Inventory$Status;->INITIALIZED:Lcom/urbanairship/iap/Inventory$Status;

    iput-object v0, p0, Lcom/urbanairship/iap/Inventory;->status:Lcom/urbanairship/iap/Inventory$Status;

    new-instance v0, Lcom/urbanairship/iap/Inventory$InventoryObservable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/urbanairship/iap/Inventory$InventoryObservable;-><init>(Lcom/urbanairship/iap/Inventory;Lcom/urbanairship/iap/Inventory$1;)V

    iput-object v0, p0, Lcom/urbanairship/iap/Inventory;->notifier:Lcom/urbanairship/iap/Inventory$InventoryObservable;

    return-void
.end method

.method static synthetic access$100(Lcom/urbanairship/iap/Inventory;Lorg/json/JSONArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/urbanairship/iap/Inventory;->setProducts(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$200(Lcom/urbanairship/iap/Inventory;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/iap/Inventory;->allProducts:Ljava/util/ArrayList;

    return-object v0
.end method

.method private setProducts(Lorg/json/JSONArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lcom/urbanairship/iap/Product;

    invoke-direct {v2, v1}, Lcom/urbanairship/iap/Product;-><init>(Lorg/json/JSONObject;)V

    iget-object v1, p0, Lcom/urbanairship/iap/Inventory;->products:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/urbanairship/iap/Product;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addObserver(Ljava/util/Observer;)V
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/iap/Inventory;->notifier:Lcom/urbanairship/iap/Inventory$InventoryObservable;

    invoke-virtual {v0, p1}, Lcom/urbanairship/iap/Inventory$InventoryObservable;->addObserver(Ljava/util/Observer;)V

    return-void
.end method

.method public deleteObserver(Ljava/util/Observer;)V
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/iap/Inventory;->notifier:Lcom/urbanairship/iap/Inventory$InventoryObservable;

    invoke-virtual {v0, p1}, Lcom/urbanairship/iap/Inventory$InventoryObservable;->deleteObserver(Ljava/util/Observer;)V

    return-void
.end method

.method public getProduct(Ljava/lang/String;)Lcom/urbanairship/iap/Product;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/iap/Inventory;->products:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/iap/Product;

    return-object v0
.end method

.method public getProducts(Lcom/urbanairship/iap/Inventory$FilterType;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/urbanairship/iap/Inventory$FilterType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/iap/Product;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    sget-object v1, Lcom/urbanairship/iap/Inventory$2;->$SwitchMap$com$urbanairship$iap$Inventory$FilterType:[I

    invoke-virtual {p1}, Lcom/urbanairship/iap/Inventory$FilterType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No product list for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/urbanairship/iap/Inventory;->allProducts:Ljava/util/ArrayList;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/urbanairship/iap/Inventory;->installedProducts:Ljava/util/ArrayList;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/urbanairship/iap/Inventory;->updatedProducts:Ljava/util/ArrayList;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getStatus()Lcom/urbanairship/iap/Inventory$Status;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/iap/Inventory;->status:Lcom/urbanairship/iap/Inventory$Status;

    return-object v0
.end method

.method public hasProduct(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/iap/Inventory;->products:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public load()V
    .locals 3

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->isFlying()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Inventory cannot be loaded unless UAirship.takeOff() has been called"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "Loading inventory"

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v0

    iget-object v0, v0, Lcom/urbanairship/AirshipConfigOptions;->hostURL:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "api/app/content/?platform=android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fetching inventory from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    new-instance v1, Lcom/urbanairship/restclient/AppAuthenticatedRequest;

    const-string v2, "GET"

    invoke-direct {v1, v2, v0}, Lcom/urbanairship/restclient/AppAuthenticatedRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/urbanairship/iap/Inventory$1;

    invoke-direct {v0, p0}, Lcom/urbanairship/iap/Inventory$1;-><init>(Lcom/urbanairship/iap/Inventory;)V

    invoke-virtual {v1, v0}, Lcom/urbanairship/restclient/AppAuthenticatedRequest;->executeAsync(Lcom/urbanairship/restclient/AsyncHandler;)V

    sget-object v0, Lcom/urbanairship/iap/Inventory$Status;->DOWNLOADING:Lcom/urbanairship/iap/Inventory$Status;

    invoke-virtual {p0, v0}, Lcom/urbanairship/iap/Inventory;->setStatus(Lcom/urbanairship/iap/Inventory$Status;)V

    return-void
.end method

.method public purchase(Landroid/app/Activity;Lcom/urbanairship/iap/Product;)V
    .locals 4

    invoke-virtual {p2}, Lcom/urbanairship/iap/Product;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/urbanairship/iap/Product;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/urbanairship/iap/Inventory;->status:Lcom/urbanairship/iap/Inventory$Status;

    sget-object v3, Lcom/urbanairship/iap/Inventory$Status;->LOADED:Lcom/urbanairship/iap/Inventory$Status;

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Retrieving product: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/urbanairship/iap/Product;->isFree()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    invoke-virtual {p2}, Lcom/urbanairship/iap/Product;->getStatus()Lcom/urbanairship/iap/Product$Status;

    move-result-object v1

    sget-object v2, Lcom/urbanairship/iap/Product$Status;->UPDATE:Lcom/urbanairship/iap/Product$Status;

    if-ne v1, v2, :cond_4

    :cond_2
    const-string v1, "Free or updated product, will download if valid..."

    invoke-static {v1}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/urbanairship/iap/Product;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/iap/Receipt;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/urbanairship/iap/Receipt;->fetch(Ljava/lang/String;)Lcom/urbanairship/iap/Receipt;

    move-result-object v0

    invoke-virtual {p2}, Lcom/urbanairship/iap/Product;->getRevision()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/iap/Receipt;->setProductRevision(Ljava/lang/Integer;)V

    invoke-virtual {v0}, Lcom/urbanairship/iap/Receipt;->serialize()Z

    :goto_1
    invoke-static {}, Lcom/urbanairship/iap/IAPManager;->shared()Lcom/urbanairship/iap/IAPManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/iap/IAPManager;->getDownloadManager()Lcom/urbanairship/iap/DownloadManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/urbanairship/iap/DownloadManager;->downloadIfValid(Lcom/urbanairship/iap/Product;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/urbanairship/iap/Receipt;

    invoke-virtual {p2}, Lcom/urbanairship/iap/Product;->getRevision()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2}, Lcom/urbanairship/iap/Product;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/urbanairship/iap/Receipt;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/urbanairship/iap/Receipt;->serialize()Z

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Paid product, attempting to purchase: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/urbanairship/iap/Product;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/urbanairship/iap/Product;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    sget-object v0, Lcom/urbanairship/iap/Product$Status;->WAITING:Lcom/urbanairship/iap/Product$Status;

    invoke-virtual {p2, v0}, Lcom/urbanairship/iap/Product;->setStatus(Lcom/urbanairship/iap/Product$Status;)V

    invoke-static {}, Lcom/urbanairship/iap/IAPManager;->shared()Lcom/urbanairship/iap/IAPManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/urbanairship/iap/IAPManager;->payForProduct(Landroid/app/Activity;Lcom/urbanairship/iap/Product;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/urbanairship/iap/Product$Status;->UNPURCHASED:Lcom/urbanairship/iap/Product$Status;

    invoke-virtual {p2, v0}, Lcom/urbanairship/iap/Product;->setStatus(Lcom/urbanairship/iap/Product$Status;)V

    goto/16 :goto_0

    :cond_5
    const-string v0, "Attempting to purchase product with null activity parameter, bailing"

    invoke-static {v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method purchase(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/urbanairship/iap/Inventory;->getProduct(Ljava/lang/String;)Lcom/urbanairship/iap/Product;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/urbanairship/iap/Inventory;->purchase(Landroid/app/Activity;Lcom/urbanairship/iap/Product;)V

    return-void
.end method

.method refresh()V
    .locals 4

    const-string v0, "Updating inventory"

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/urbanairship/iap/Inventory;->allProducts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/urbanairship/iap/Inventory;->allProducts:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/urbanairship/iap/Inventory;->products:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/urbanairship/iap/Inventory;->allProducts:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lcom/urbanairship/iap/Inventory;->updatedProducts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/urbanairship/iap/Inventory;->installedProducts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/urbanairship/iap/Inventory;->allProducts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/iap/Product;

    invoke-virtual {v0}, Lcom/urbanairship/iap/Product;->getStatus()Lcom/urbanairship/iap/Product$Status;

    move-result-object v2

    sget-object v3, Lcom/urbanairship/iap/Product$Status;->UPDATE:Lcom/urbanairship/iap/Product$Status;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/urbanairship/iap/Inventory;->updatedProducts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v0}, Lcom/urbanairship/iap/Product;->getStatus()Lcom/urbanairship/iap/Product$Status;

    move-result-object v2

    sget-object v3, Lcom/urbanairship/iap/Product$Status;->PURCHASED:Lcom/urbanairship/iap/Product$Status;

    if-eq v2, v3, :cond_2

    invoke-virtual {v0}, Lcom/urbanairship/iap/Product;->getStatus()Lcom/urbanairship/iap/Product$Status;

    move-result-object v2

    sget-object v3, Lcom/urbanairship/iap/Product$Status;->DOWNLOADING:Lcom/urbanairship/iap/Product$Status;

    if-eq v2, v3, :cond_2

    invoke-virtual {v0}, Lcom/urbanairship/iap/Product;->getStatus()Lcom/urbanairship/iap/Product$Status;

    move-result-object v2

    sget-object v3, Lcom/urbanairship/iap/Product$Status;->INSTALLED:Lcom/urbanairship/iap/Product$Status;

    if-ne v2, v3, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/urbanairship/iap/Inventory;->installedProducts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/urbanairship/iap/Inventory;->allProducts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    sget-object v0, Lcom/urbanairship/iap/Inventory$Status;->LOADED:Lcom/urbanairship/iap/Inventory$Status;

    invoke-virtual {p0, v0}, Lcom/urbanairship/iap/Inventory;->setStatus(Lcom/urbanairship/iap/Inventory$Status;)V

    :goto_1
    return-void

    :cond_4
    sget-object v0, Lcom/urbanairship/iap/Inventory$Status;->EMPTY:Lcom/urbanairship/iap/Inventory$Status;

    invoke-virtual {p0, v0}, Lcom/urbanairship/iap/Inventory;->setStatus(Lcom/urbanairship/iap/Inventory$Status;)V

    goto :goto_1
.end method

.method setStatus(Lcom/urbanairship/iap/Inventory$Status;)V
    .locals 1

    iput-object p1, p0, Lcom/urbanairship/iap/Inventory;->status:Lcom/urbanairship/iap/Inventory$Status;

    iget-object v0, p0, Lcom/urbanairship/iap/Inventory;->notifier:Lcom/urbanairship/iap/Inventory$InventoryObservable;

    invoke-virtual {v0, p0}, Lcom/urbanairship/iap/Inventory$InventoryObservable;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method

.method public size(Lcom/urbanairship/iap/Inventory$FilterType;)I
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/urbanairship/iap/Inventory$2;->$SwitchMap$com$urbanairship$iap$Inventory$FilterType:[I

    invoke-virtual {p1}, Lcom/urbanairship/iap/Inventory$FilterType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No product list for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/urbanairship/iap/Inventory;->allProducts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/urbanairship/iap/Inventory;->installedProducts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/urbanairship/iap/Inventory;->updatedProducts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
