.class public Lcom/urbanairship/iap/marketinterface/BillingService;
.super Landroid/app/Service;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/iap/marketinterface/BillingService$Purchase;,
        Lcom/urbanairship/iap/marketinterface/BillingService$RestoreTransactions;,
        Lcom/urbanairship/iap/marketinterface/BillingService$GetPurchaseInformation;,
        Lcom/urbanairship/iap/marketinterface/BillingService$ConfirmNotifications;,
        Lcom/urbanairship/iap/marketinterface/BillingService$RequestPurchase;,
        Lcom/urbanairship/iap/marketinterface/BillingService$CheckBillingSupported;,
        Lcom/urbanairship/iap/marketinterface/BillingService$BillingRequest;
    }
.end annotation


# static fields
.field private static mPendingRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/urbanairship/iap/marketinterface/BillingService$BillingRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static mSentRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/urbanairship/iap/marketinterface/BillingService$BillingRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static mService:Lcom/android/vending/billing/IMarketBillingService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/urbanairship/iap/marketinterface/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/urbanairship/iap/marketinterface/BillingService;->mSentRequests:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/urbanairship/iap/marketinterface/BillingService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/urbanairship/iap/marketinterface/BillingService;->bindToMarketBillingService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Ljava/util/LinkedList;
    .locals 1

    sget-object v0, Lcom/urbanairship/iap/marketinterface/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$200()Lcom/android/vending/billing/IMarketBillingService;
    .locals 1

    sget-object v0, Lcom/urbanairship/iap/marketinterface/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/vending/billing/IMarketBillingService;)Lcom/android/vending/billing/IMarketBillingService;
    .locals 0

    sput-object p0, Lcom/urbanairship/iap/marketinterface/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    return-object p0
.end method

.method static synthetic access$300()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/urbanairship/iap/marketinterface/BillingService;->mSentRequests:Ljava/util/HashMap;

    return-object v0
.end method

.method private bindToMarketBillingService()Z
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.vending.billing.MarketBillingService.BIND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v1, p0, v2}, Lcom/urbanairship/iap/marketinterface/BillingService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const-string v0, "Could not bind to service."

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Security exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private checkResponseCode(JLcom/urbanairship/iap/marketinterface/Consts$ResponseCode;)V
    .locals 2

    sget-object v0, Lcom/urbanairship/iap/marketinterface/BillingService;->mSentRequests:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/iap/marketinterface/BillingService$BillingRequest;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p3}, Lcom/urbanairship/iap/marketinterface/BillingService$BillingRequest;->responseCodeReceived(Lcom/urbanairship/iap/marketinterface/Consts$ResponseCode;)V

    :cond_0
    sget-object v0, Lcom/urbanairship/iap/marketinterface/BillingService;->mSentRequests:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private confirmNotifications(I[Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Lcom/urbanairship/iap/marketinterface/BillingService$ConfirmNotifications;

    invoke-direct {v0, p0, p1, p2}, Lcom/urbanairship/iap/marketinterface/BillingService$ConfirmNotifications;-><init>(Lcom/urbanairship/iap/marketinterface/BillingService;I[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/urbanairship/iap/marketinterface/BillingService$ConfirmNotifications;->runRequest()Z

    move-result v0

    return v0
.end method

.method private getPurchaseInformation(I[Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Lcom/urbanairship/iap/marketinterface/BillingService$GetPurchaseInformation;

    invoke-direct {v0, p0, p1, p2}, Lcom/urbanairship/iap/marketinterface/BillingService$GetPurchaseInformation;-><init>(Lcom/urbanairship/iap/marketinterface/BillingService;I[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/urbanairship/iap/marketinterface/BillingService$GetPurchaseInformation;->runRequest()Z

    move-result v0

    return v0
.end method

.method private getPurchases(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/urbanairship/iap/marketinterface/BillingService$Purchase;",
            ">;"
        }
    .end annotation

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "orders"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move v9, v0

    :goto_0
    const/4 v0, 0x0

    move v11, v0

    :goto_1
    if-ge v11, v9, :cond_1

    :try_start_1
    invoke-virtual {v12, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "purchaseState"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/urbanairship/iap/marketinterface/Consts$PurchaseState;->valueOf(I)Lcom/urbanairship/iap/marketinterface/Consts$PurchaseState;

    move-result-object v2

    const-string v1, "productId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "purchaseTime"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string v1, "orderId"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    const-string v1, "notificationId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "notificationId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    const-string v1, "developerPayload"

    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lcom/urbanairship/iap/marketinterface/BillingService$Purchase;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/urbanairship/iap/marketinterface/BillingService$Purchase;-><init>(Lcom/urbanairship/iap/marketinterface/BillingService;Lcom/urbanairship/iap/marketinterface/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :goto_2
    return-object v0

    :catch_1
    move-exception v0

    const-string v1, "JSON exception: "

    invoke-static {v1, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_2

    :cond_1
    move-object v0, v10

    goto :goto_2

    :cond_2
    move v9, v0

    goto :goto_0
.end method

.method private purchaseStateChanged(ILjava/lang/String;Ljava/lang/String;)V
    .locals 9

    invoke-direct {p0, p2, p3}, Lcom/urbanairship/iap/marketinterface/BillingService;->getPurchases(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/urbanairship/iap/marketinterface/BillingService$Purchase;

    iget-object v0, v3, Lcom/urbanairship/iap/marketinterface/BillingService$Purchase;->notificationId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, v3, Lcom/urbanairship/iap/marketinterface/BillingService$Purchase;->notificationId:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, v3, Lcom/urbanairship/iap/marketinterface/BillingService$Purchase;->purchaseState:Lcom/urbanairship/iap/marketinterface/Consts$PurchaseState;

    iget-object v1, v3, Lcom/urbanairship/iap/marketinterface/BillingService$Purchase;->productId:Ljava/lang/String;

    iget-object v2, v3, Lcom/urbanairship/iap/marketinterface/BillingService$Purchase;->orderId:Ljava/lang/String;

    iget-wide v3, v3, Lcom/urbanairship/iap/marketinterface/BillingService$Purchase;->purchaseTime:J

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/urbanairship/iap/marketinterface/ResponseHandler;->purchaseResponse(Lcom/urbanairship/iap/marketinterface/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/urbanairship/iap/marketinterface/BillingService;->confirmNotifications(I[Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private runPendingRequests()V
    .locals 4

    const/4 v0, -0x1

    move v1, v0

    :cond_0
    :goto_0
    sget-object v0, Lcom/urbanairship/iap/marketinterface/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/iap/marketinterface/BillingService$BillingRequest;

    if-eqz v0, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Billing Service - running request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/urbanairship/iap/marketinterface/BillingService$BillingRequest;->getStartId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/urbanairship/iap/marketinterface/BillingService$BillingRequest;->runIfConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Billing Service - request ran: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/urbanairship/iap/marketinterface/BillingService$BillingRequest;->getStartId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    sget-object v2, Lcom/urbanairship/iap/marketinterface/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/urbanairship/iap/marketinterface/BillingService$BillingRequest;->getStartId()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/urbanairship/iap/marketinterface/BillingService$BillingRequest;->getStartId()I

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_1
    const-string v0, "Billing Service - bind to market service"

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/urbanairship/iap/marketinterface/BillingService;->bindToMarketBillingService()Z

    :cond_2
    :goto_1
    return-void

    :cond_3
    if-ltz v1, :cond_2

    invoke-virtual {p0, v1}, Lcom/urbanairship/iap/marketinterface/BillingService;->stopSelf(I)V

    goto :goto_1
.end method


# virtual methods
.method public checkBillingSupported()Z
    .locals 1

    new-instance v0, Lcom/urbanairship/iap/marketinterface/BillingService$CheckBillingSupported;

    invoke-direct {v0, p0}, Lcom/urbanairship/iap/marketinterface/BillingService$CheckBillingSupported;-><init>(Lcom/urbanairship/iap/marketinterface/BillingService;)V

    invoke-virtual {v0}, Lcom/urbanairship/iap/marketinterface/BillingService$CheckBillingSupported;->runRequest()Z

    move-result v0

    return v0
.end method

.method public handleCommand(Landroid/content/Intent;I)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.example.dungeons.CONFIRM_NOTIFICATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "notification_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/urbanairship/iap/marketinterface/BillingService;->confirmNotifications(I[Ljava/lang/String;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "com.example.dungeons.GET_PURCHASE_INFORMATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "notification_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-direct {p0, p2, v1}, Lcom/urbanairship/iap/marketinterface/BillingService;->getPurchaseInformation(I[Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    const-string v1, "com.android.vending.billing.PURCHASE_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "inapp_signed_data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "inapp_signature"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v0, v1}, Lcom/urbanairship/iap/marketinterface/BillingService;->purchaseStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "com.android.vending.billing.RESPONSE_CODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "request_id"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "response_code"

    sget-object v3, Lcom/urbanairship/iap/marketinterface/Consts$ResponseCode;->RESULT_ERROR:Lcom/urbanairship/iap/marketinterface/Consts$ResponseCode;

    invoke-virtual {v3}, Lcom/urbanairship/iap/marketinterface/Consts$ResponseCode;->ordinal()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/urbanairship/iap/marketinterface/Consts$ResponseCode;->valueOf(I)Lcom/urbanairship/iap/marketinterface/Consts$ResponseCode;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/urbanairship/iap/marketinterface/BillingService;->checkResponseCode(JLcom/urbanairship/iap/marketinterface/Consts$ResponseCode;)V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    invoke-static {p2}, Lcom/android/vending/billing/IMarketBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v0

    sput-object v0, Lcom/urbanairship/iap/marketinterface/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    invoke-direct {p0}, Lcom/urbanairship/iap/marketinterface/BillingService;->runPendingRequests()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string v0, "Billing service disconnected"

    invoke-static {v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/urbanairship/iap/marketinterface/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/urbanairship/iap/marketinterface/BillingService;->handleCommand(Landroid/content/Intent;I)V

    return-void
.end method

.method public requestPurchase(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Lcom/urbanairship/iap/marketinterface/BillingService$RequestPurchase;

    invoke-direct {v0, p0, p1, p2}, Lcom/urbanairship/iap/marketinterface/BillingService$RequestPurchase;-><init>(Lcom/urbanairship/iap/marketinterface/BillingService;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/urbanairship/iap/marketinterface/BillingService$RequestPurchase;->runRequest()Z

    move-result v0

    return v0
.end method

.method public requestPurchase(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Lcom/urbanairship/iap/marketinterface/BillingService$RequestPurchase;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/urbanairship/iap/marketinterface/BillingService$RequestPurchase;-><init>(Lcom/urbanairship/iap/marketinterface/BillingService;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/urbanairship/iap/marketinterface/BillingService$RequestPurchase;->runRequest()Z

    move-result v0

    return v0
.end method

.method public restoreTransactions()Z
    .locals 1

    new-instance v0, Lcom/urbanairship/iap/marketinterface/BillingService$RestoreTransactions;

    invoke-direct {v0, p0}, Lcom/urbanairship/iap/marketinterface/BillingService$RestoreTransactions;-><init>(Lcom/urbanairship/iap/marketinterface/BillingService;)V

    invoke-virtual {v0}, Lcom/urbanairship/iap/marketinterface/BillingService$RestoreTransactions;->runRequest()Z

    move-result v0

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/urbanairship/iap/marketinterface/BillingService;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public unbind()V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p0}, Lcom/urbanairship/iap/marketinterface/BillingService;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
