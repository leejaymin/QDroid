.class public Lcom/urbanairship/iap/Product;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/iap/Product$1;,
        Lcom/urbanairship/iap/Product$ProductObservable;,
        Lcom/urbanairship/iap/Product$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/urbanairship/iap/Product;",
        ">;"
    }
.end annotation


# instance fields
.field private description:Ljava/lang/String;

.field private downloadPath:Ljava/io/File;

.field private downloadURLString:Ljava/lang/String;

.field private fileSize:D

.field private iconURLString:Ljava/lang/String;

.field identifier:Ljava/lang/String;

.field private isFree:Z

.field private notifier:Lcom/urbanairship/iap/Product$ProductObservable;

.field private previewURLString:Ljava/lang/String;

.field price:Ljava/lang/String;

.field private revision:I

.field private status:Lcom/urbanairship/iap/Product$Status;

.field title:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/urbanairship/iap/Product$Status;->PURCHASED:Lcom/urbanairship/iap/Product$Status;

    invoke-virtual {p0, v0}, Lcom/urbanairship/iap/Product;->setStatus(Lcom/urbanairship/iap/Product$Status;)V

    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "product_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/iap/Product;->identifier:Ljava/lang/String;

    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/iap/Product;->title:Ljava/lang/String;

    const-string v0, "description"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/iap/Product;->description:Ljava/lang/String;

    const-string v0, "price"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/iap/Product;->price:Ljava/lang/String;

    const-string v0, "free"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/urbanairship/iap/Product;->isFree:Z

    iget-boolean v0, p0, Lcom/urbanairship/iap/Product;->isFree:Z

    if-eqz v0, :cond_0

    const-string v0, "FREE"

    iput-object v0, p0, Lcom/urbanairship/iap/Product;->price:Ljava/lang/String;

    :cond_0
    const-string v0, "current_revision"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/urbanairship/iap/Product;->revision:I

    const-string v0, "file_size"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/urbanairship/iap/Product;->fileSize:D

    const-string v0, "preview_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/iap/Product;->previewURLString:Ljava/lang/String;

    const-string v0, "icon_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/iap/Product;->iconURLString:Ljava/lang/String;

    const-string v0, "download_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/iap/Product;->downloadURLString:Ljava/lang/String;

    iget-object v0, p0, Lcom/urbanairship/iap/Product;->identifier:Ljava/lang/String;

    invoke-static {v0}, Lcom/urbanairship/iap/Receipt;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "found purchase receipt for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/iap/Product;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/urbanairship/iap/Product;->identifier:Ljava/lang/String;

    invoke-static {v0}, Lcom/urbanairship/iap/Receipt;->fetch(Ljava/lang/String;)Lcom/urbanairship/iap/Receipt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/iap/Receipt;->getProductRevision()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/urbanairship/iap/Product;->revision:I

    if-ge v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting status to UPDATE for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/urbanairship/iap/Product;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    sget-object v1, Lcom/urbanairship/iap/Product$Status;->UPDATE:Lcom/urbanairship/iap/Product$Status;

    iput-object v1, p0, Lcom/urbanairship/iap/Product;->status:Lcom/urbanairship/iap/Product$Status;

    :goto_0
    invoke-virtual {v0}, Lcom/urbanairship/iap/Receipt;->getDownloadPathString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/urbanairship/iap/Product;->downloadPath:Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Download path for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/iap/Product;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/iap/Product;->downloadPath:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    :goto_1
    new-instance v0, Lcom/urbanairship/iap/Product$ProductObservable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/urbanairship/iap/Product$ProductObservable;-><init>(Lcom/urbanairship/iap/Product;Lcom/urbanairship/iap/Product$1;)V

    iput-object v0, p0, Lcom/urbanairship/iap/Product;->notifier:Lcom/urbanairship/iap/Product$ProductObservable;

    return-void

    :cond_1
    invoke-static {}, Lcom/urbanairship/iap/IAPManager;->shared()Lcom/urbanairship/iap/IAPManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/iap/IAPManager;->getDownloadManager()Lcom/urbanairship/iap/DownloadManager;

    move-result-object v1

    iget-object v2, p0, Lcom/urbanairship/iap/Product;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/urbanairship/iap/DownloadManager;->hasPendingProduct(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/urbanairship/iap/Product;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is pending"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/iap/IAPManager;->shared()Lcom/urbanairship/iap/IAPManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/iap/IAPManager;->getInventory()Lcom/urbanairship/iap/Inventory;

    move-result-object v1

    iget-object v2, p0, Lcom/urbanairship/iap/Product;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/urbanairship/iap/Inventory;->getProduct(Ljava/lang/String;)Lcom/urbanairship/iap/Product;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/urbanairship/iap/Product;->status:Lcom/urbanairship/iap/Product$Status;

    iput-object v1, p0, Lcom/urbanairship/iap/Product;->status:Lcom/urbanairship/iap/Product$Status;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/urbanairship/iap/Product;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has existing status, copying"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting status to PURCHASED for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/urbanairship/iap/Product;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    sget-object v1, Lcom/urbanairship/iap/Product$Status;->PURCHASED:Lcom/urbanairship/iap/Product$Status;

    iput-object v1, p0, Lcom/urbanairship/iap/Product;->status:Lcom/urbanairship/iap/Product$Status;

    goto/16 :goto_0

    :cond_3
    sget-object v1, Lcom/urbanairship/iap/Product$Status;->INSTALLED:Lcom/urbanairship/iap/Product$Status;

    iput-object v1, p0, Lcom/urbanairship/iap/Product;->status:Lcom/urbanairship/iap/Product$Status;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting status to INSTALLED for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/urbanairship/iap/Product;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No download path found for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/iap/Product;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    sget-object v0, Lcom/urbanairship/iap/Product$Status;->UNPURCHASED:Lcom/urbanairship/iap/Product$Status;

    iput-object v0, p0, Lcom/urbanairship/iap/Product;->status:Lcom/urbanairship/iap/Product$Status;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no receipt found for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/iap/Product;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", setting status to UNPURCHASED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public addObserver(Ljava/util/Observer;)V
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/iap/Product;->notifier:Lcom/urbanairship/iap/Product$ProductObservable;

    invoke-virtual {v0, p1}, Lcom/urbanairship/iap/Product$ProductObservable;->addObserver(Ljava/util/Observer;)V

    return-void
.end method

.method public compareTo(Lcom/urbanairship/iap/Product;)I
    .locals 2

    invoke-virtual {p0}, Lcom/urbanairship/iap/Product;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/urbanairship/iap/Product;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/urbanairship/iap/Product;

    invoke-virtual {p0, p1}, Lcom/urbanairship/iap/Product;->compareTo(Lcom/urbanairship/iap/Product;)I

    move-result v0

    return v0
.end method

.method public deleteObserver(Ljava/util/Observer;)V
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/iap/Product;->notifier:Lcom/urbanairship/iap/Product$ProductObservable;

    invoke-virtual {v0, p1}, Lcom/urbanairship/iap/Product$ProductObservable;->deleteObserver(Ljava/util/Observer;)V

    return-void
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/iap/Product;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadPath()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/iap/Product;->downloadPath:Ljava/io/File;

    return-object v0
.end method

.method public getDownloadURLString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/iap/Product;->downloadURLString:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()D
    .locals 2

    iget-wide v0, p0, Lcom/urbanairship/iap/Product;->fileSize:D

    return-wide v0
.end method

.method public getHumanReadableFileSize()Ljava/lang/String;
    .locals 9

    const-wide v7, 0x408f400000000000L

    invoke-virtual {p0}, Lcom/urbanairship/iap/Product;->getFileSize()D

    move-result-wide v1

    div-double v3, v1, v7

    const-wide v5, 0x412e848000000000L

    div-double v5, v1, v5

    cmpg-double v0, v1, v7

    if-gez v0, :cond_0

    const-string v0, "Bytes"

    :goto_0
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "#0.0"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-wide/high16 v0, 0x3ff0

    cmpl-double v0, v3, v0

    if-ltz v0, :cond_1

    cmpg-double v0, v3, v7

    if-gez v0, :cond_1

    const-string v0, "KB"

    move-wide v1, v3

    goto :goto_0

    :cond_1
    const-string v0, "MB"

    move-wide v1, v5

    goto :goto_0
.end method

.method public getIconURLString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/iap/Product;->iconURLString:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/iap/Product;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewURLString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/iap/Product;->previewURLString:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/iap/Product;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getRevision()I
    .locals 1

    iget v0, p0, Lcom/urbanairship/iap/Product;->revision:I

    return v0
.end method

.method public getStatus()Lcom/urbanairship/iap/Product$Status;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/iap/Product;->status:Lcom/urbanairship/iap/Product$Status;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/iap/Product;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isFree()Z
    .locals 1

    iget-boolean v0, p0, Lcom/urbanairship/iap/Product;->isFree:Z

    return v0
.end method

.method setDownloadPath(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/iap/Product;->downloadPath:Ljava/io/File;

    return-void
.end method

.method setStatus(Lcom/urbanairship/iap/Product$Status;)V
    .locals 1

    iput-object p1, p0, Lcom/urbanairship/iap/Product;->status:Lcom/urbanairship/iap/Product$Status;

    iget-object v0, p0, Lcom/urbanairship/iap/Product;->notifier:Lcom/urbanairship/iap/Product$ProductObservable;

    invoke-virtual {v0, p0}, Lcom/urbanairship/iap/Product$ProductObservable;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method
