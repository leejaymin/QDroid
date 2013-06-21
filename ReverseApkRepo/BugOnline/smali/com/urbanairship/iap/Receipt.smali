.class Lcom/urbanairship/iap/Receipt;
.super Ljava/lang/Object;


# static fields
.field private static final RECEIPT_STORE:Ljava/lang/String; = "com.urbanairship.iap.receipts"


# instance fields
.field private downloadPathString:Ljava/lang/String;

.field private orderId:Ljava/lang/String;

.field private productId:Ljava/lang/String;

.field private productRevision:Ljava/lang/Integer;

.field private purchaseTime:Ljava/lang/Long;

.field private signature:Ljava/lang/String;

.field private signedData:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 8

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/urbanairship/iap/Receipt;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/urbanairship/iap/Receipt;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/urbanairship/iap/Receipt;->productId:Ljava/lang/String;

    iput-object p1, p0, Lcom/urbanairship/iap/Receipt;->productRevision:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/urbanairship/iap/Receipt;->orderId:Ljava/lang/String;

    iput-object p4, p0, Lcom/urbanairship/iap/Receipt;->purchaseTime:Ljava/lang/Long;

    iput-object p5, p0, Lcom/urbanairship/iap/Receipt;->signedData:Ljava/lang/String;

    iput-object p6, p0, Lcom/urbanairship/iap/Receipt;->signature:Ljava/lang/String;

    iput-object p7, p0, Lcom/urbanairship/iap/Receipt;->downloadPathString:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "productId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/urbanairship/iap/Receipt;->productId:Ljava/lang/String;

    const-string v1, "productRevision"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/urbanairship/iap/Receipt;->productRevision:Ljava/lang/Integer;

    const-string v1, "orderId"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/urbanairship/iap/Receipt;->orderId:Ljava/lang/String;

    const-string v1, "purchaseTime"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/urbanairship/iap/Receipt;->purchaseTime:Ljava/lang/Long;

    const-string v1, "data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/urbanairship/iap/Receipt;->signedData:Ljava/lang/String;

    const-string v1, "signature"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/urbanairship/iap/Receipt;->signature:Ljava/lang/String;

    const-string v1, "downloadPathString"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/iap/Receipt;->downloadPathString:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "Error parsing receipt"

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static contains(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/urbanairship/iap/Receipt;->getReceiptStore()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static fetch(Ljava/lang/String;)Lcom/urbanairship/iap/Receipt;
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/urbanairship/iap/Receipt;->getReceiptStore()Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v1, p0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    new-instance v0, Lcom/urbanairship/iap/Receipt;

    invoke-direct {v0, v1}, Lcom/urbanairship/iap/Receipt;-><init>(Ljava/lang/String;)V

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receipt not found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_0
.end method

.method static getReceiptStore()Landroid/content/SharedPreferences;
    .locals 3

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.urbanairship.iap.receipts"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static hasReceipts()Z
    .locals 1

    invoke-static {}, Lcom/urbanairship/iap/Receipt;->getReceiptStore()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method getDownloadPathString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/iap/Receipt;->downloadPathString:Ljava/lang/String;

    return-object v0
.end method

.method getOrderId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/iap/Receipt;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method getProductId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/iap/Receipt;->productId:Ljava/lang/String;

    return-object v0
.end method

.method getProductRevision()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/iap/Receipt;->productRevision:Ljava/lang/Integer;

    return-object v0
.end method

.method getPurchaseTime()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/iap/Receipt;->purchaseTime:Ljava/lang/Long;

    return-object v0
.end method

.method getSignature()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/iap/Receipt;->signature:Ljava/lang/String;

    return-object v0
.end method

.method getSignedData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/iap/Receipt;->signedData:Ljava/lang/String;

    return-object v0
.end method

.method serialize()Z
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "productRevision"

    iget-object v3, p0, Lcom/urbanairship/iap/Receipt;->productRevision:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "productId"

    iget-object v3, p0, Lcom/urbanairship/iap/Receipt;->productId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/urbanairship/iap/Receipt;->orderId:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, "orderId"

    iget-object v3, p0, Lcom/urbanairship/iap/Receipt;->orderId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v2, p0, Lcom/urbanairship/iap/Receipt;->purchaseTime:Ljava/lang/Long;

    if-eqz v2, :cond_1

    const-string v2, "purchaseTime"

    iget-object v3, p0, Lcom/urbanairship/iap/Receipt;->purchaseTime:Ljava/lang/Long;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v2, p0, Lcom/urbanairship/iap/Receipt;->signedData:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v2, "data"

    iget-object v3, p0, Lcom/urbanairship/iap/Receipt;->signedData:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget-object v2, p0, Lcom/urbanairship/iap/Receipt;->signature:Ljava/lang/String;

    if-eqz v2, :cond_3

    const-string v2, "signature"

    iget-object v3, p0, Lcom/urbanairship/iap/Receipt;->signature:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    iget-object v2, p0, Lcom/urbanairship/iap/Receipt;->downloadPathString:Ljava/lang/String;

    if-eqz v2, :cond_4

    const-string v2, "downloadPathString"

    iget-object v3, p0, Lcom/urbanairship/iap/Receipt;->downloadPathString:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :try_start_1
    invoke-static {}, Lcom/urbanairship/iap/Receipt;->getReceiptStore()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, p0, Lcom/urbanairship/iap/Receipt;->productId:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v1, "error constructing JSON object out of receipt data"

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v1, "error writing receipt"

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method setDownloadPathString(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/iap/Receipt;->downloadPathString:Ljava/lang/String;

    return-void
.end method

.method setProductRevision(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/iap/Receipt;->productRevision:Ljava/lang/Integer;

    return-void
.end method
