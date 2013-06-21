.class public Lcom/chillingo/crystal/market/ResponseHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/chillingo/crystal/NotificationReceiver;


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final _nonceUrl:Ljava/lang/String; = "https://chillingo-crystal.appspot.com/crystal/get_nonce.cuid"

.field private static final _receiptsUrl:Ljava/lang/String; = "https://chillingo-crystal.appspot.com/crystal/buy_virtual_currency.cuid"


# instance fields
.field private _delegate:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/chillingo/crystal/market/PurchaseDelegate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/chillingo/crystal/market/ResponseHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/chillingo/crystal/market/ResponseHandler;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chillingo/crystal/market/ResponseHandler;->_delegate:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private requestNonce()V
    .locals 4

    new-instance v0, Lcom/chillingo/crystal/serverdata/PurchaseNonceData;

    const-string v1, "https://chillingo-crystal.appspot.com/crystal/get_nonce.cuid"

    invoke-direct {v0, v1}, Lcom/chillingo/crystal/serverdata/PurchaseNonceData;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/chillingo/crystal/NotificationCentre;->sharedInstance()Lcom/chillingo/crystal/NotificationCentre;

    move-result-object v1

    const-string v2, "https://chillingo-crystal.appspot.com/crystal/get_nonce.cuid"

    invoke-virtual {v1, v2, p0}, Lcom/chillingo/crystal/NotificationCentre;->removeObserver(Ljava/lang/String;Lcom/chillingo/crystal/NotificationReceiver;)V

    invoke-static {}, Lcom/chillingo/crystal/NotificationCentre;->sharedInstance()Lcom/chillingo/crystal/NotificationCentre;

    move-result-object v1

    const-string v2, "https://chillingo-crystal.appspot.com/crystal/get_nonce.cuid"

    invoke-virtual {v1, v2, p0}, Lcom/chillingo/crystal/NotificationCentre;->addObserver(Ljava/lang/String;Lcom/chillingo/crystal/NotificationReceiver;)Z

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v1

    sget-object v2, Lcom/chillingo/crystal/serverdata/FetchPriority;->AwaitingDisplay:Lcom/chillingo/crystal/serverdata/FetchPriority;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/chillingo/crystal/http/FetchManager;->queueServerData(Lcom/chillingo/crystal/serverdata/AbstractServerData;Lcom/chillingo/crystal/serverdata/FetchPriority;I)Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    return-void
.end method


# virtual methods
.method public buyPageIntentReponse(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/market/ResponseHandler;->_delegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/market/ResponseHandler;->_delegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/market/PurchaseDelegate;

    invoke-interface {v0, p1, p2}, Lcom/chillingo/crystal/market/PurchaseDelegate;->startBuyActivity(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public checkBillingSupportedResponse(Z)V
    .locals 3

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chillingo/crystal/PrivateSession;->setInAppPurchaseSupported(Z)V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/CrystalPreferences;

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->context()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->gamePackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/chillingo/crystal/CrystalPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/chillingo/crystal/CrystalPreferences;->getPurchaseNotifications()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/chillingo/crystal/market/ResponseHandler;->requestNonce()V

    :cond_0
    return-void
.end method

.method public notificationReceived(Landroid/content/Intent;Lcom/chillingo/crystal/market/MarketNotificationService;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->sessionInitialised()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/chillingo/crystal/market/MarketNotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/chillingo/crystal/CrystalPreferences;

    invoke-virtual {p2}, Lcom/chillingo/crystal/market/MarketNotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/chillingo/crystal/CrystalPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Lcom/chillingo/crystal/CrystalPreferences;->getPurchaseNotifications()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/CrystalPreferences;->setPurchaseNotifications(Ljava/util/Set;)V

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->sessionInitialised()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    new-instance v0, Lcom/chillingo/crystal/CrystalPreferences;

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->context()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->gamePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/chillingo/crystal/CrystalPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/chillingo/crystal/market/ResponseHandler;->requestNonce()V

    goto :goto_1
.end method

.method public onNotification(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    invoke-static {p2}, Lcom/chillingo/crystal/utils/NotificationUtils;->resourceStatus(Ljava/lang/Object;)Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    move-result-object v0

    sget-object v1, Lcom/chillingo/crystal/http/FetchManagerResourceStatus;->ResourceAvailable:Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    if-ne v0, v1, :cond_4

    invoke-static {p1}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https://chillingo-crystal.appspot.com/crystal/get_nonce.cuid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v0

    const-string v1, "https://chillingo-crystal.appspot.com/crystal/get_nonce.cuid"

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/http/FetchManager;->serverDataForUrl(Ljava/lang/String;)Lcom/chillingo/crystal/serverdata/AbstractServerData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->type()Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    move-result-object v1

    sget-object v2, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->PurchaseNonce:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    if-ne v1, v2, :cond_4

    check-cast v0, Lcom/chillingo/crystal/serverdata/PurchaseNonceData;

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/PurchaseNonceData;->getNonce()J

    move-result-wide v1

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    new-instance v3, Lcom/chillingo/crystal/CrystalPreferences;

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->context()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->gamePackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/chillingo/crystal/CrystalPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/chillingo/crystal/CrystalPreferences;->getPurchaseNotifications()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->marketService()Lcom/chillingo/crystal/market/MarketNotificationService;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v4, v0, v1, v2}, Lcom/chillingo/crystal/market/MarketNotificationService;->getPurchaseInformation([Ljava/lang/String;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "https://chillingo-crystal.appspot.com/crystal/buy_virtual_currency.cuid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v0

    const-string v1, "https://chillingo-crystal.appspot.com/crystal/buy_virtual_currency.cuid"

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/http/FetchManager;->serverDataForUrl(Ljava/lang/String;)Lcom/chillingo/crystal/serverdata/AbstractServerData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->type()Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    move-result-object v1

    sget-object v2, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->UIDescription:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    if-ne v1, v2, :cond_4

    check-cast v0, Lcom/chillingo/crystal/serverdata/UIDescription;

    const-string v1, "item_error"

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/serverdata/UIDescription;->containsUiElementOfType(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/chillingo/crystal/market/ResponseHandler;->sendNotifications()V

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/UIDescription;->isCacheControlUpdatePlayerData()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->crystalPlayer()Lcom/chillingo/crystal/CrystalPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/CrystalPlayer;->updatePlayerInfo()V

    :cond_2
    iget-object v0, p0, Lcom/chillingo/crystal/market/ResponseHandler;->_delegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/market/PurchaseDelegate;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/chillingo/crystal/market/PurchaseDelegate;->purchaseComplete()V

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->context()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Purchase complete"

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    const-string v1, "Purchase Complete"

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/chillingo/crystal/PrivateSession;->presentPopupNotification(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/chillingo/crystal/market/ResponseHandler;->_delegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/market/ResponseHandler;->_delegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/market/PurchaseDelegate;

    invoke-interface {v0}, Lcom/chillingo/crystal/market/PurchaseDelegate;->serverError()V

    goto/16 :goto_0
.end method

.method public receiptReceived(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->sessionInitialised()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v6, :cond_0

    const-string v0, "ResponseHandler"

    const-string v1, "ResponseHandler::receiptReceived, Private session is not initialised so ignoring purchase state changed event"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v0

    if-ne v0, v6, :cond_3

    const-string v0, "Crystal"

    const-string v1, "No purchase data or signature in the receipt - bailing."

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v0

    if-ne v0, v6, :cond_4

    const-string v0, "Crystal"

    const-string v1, "Check the installed version matches the one uploaded to the market place."

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    sget-boolean v0, Lcom/chillingo/crystal/market/ResponseHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    new-instance v2, Lcom/chillingo/crystal/serverdata/UIDescription;

    const-string v0, "https://chillingo-crystal.appspot.com/crystal/buy_virtual_currency.cuid"

    sget-object v1, Lcom/chillingo/crystal/serverdata/FetchPriority;->AwaitingDisplay:Lcom/chillingo/crystal/serverdata/FetchPriority;

    invoke-direct {v2, v0, v1, v7}, Lcom/chillingo/crystal/serverdata/UIDescription;-><init>(Ljava/lang/String;Lcom/chillingo/crystal/serverdata/FetchPriority;I)V

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p1}, Lcom/chillingo/crystal/utils/JSONUtils;->ParseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "orders"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_7

    const-string v4, "productID"

    const-string v5, "productId"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "receipt"

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "signature"

    invoke-virtual {v0, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :try_start_1
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/chillingo/crystal/serverdata/UIDescription;->setPostData([B)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    invoke-static {}, Lcom/chillingo/crystal/NotificationCentre;->sharedInstance()Lcom/chillingo/crystal/NotificationCentre;

    move-result-object v1

    const-string v3, "https://chillingo-crystal.appspot.com/crystal/buy_virtual_currency.cuid"

    invoke-virtual {v1, v3, p0}, Lcom/chillingo/crystal/NotificationCentre;->removeObserver(Ljava/lang/String;Lcom/chillingo/crystal/NotificationReceiver;)V

    invoke-static {}, Lcom/chillingo/crystal/NotificationCentre;->sharedInstance()Lcom/chillingo/crystal/NotificationCentre;

    move-result-object v1

    const-string v3, "https://chillingo-crystal.appspot.com/crystal/buy_virtual_currency.cuid"

    invoke-virtual {v1, v3, p0}, Lcom/chillingo/crystal/NotificationCentre;->addObserver(Ljava/lang/String;Lcom/chillingo/crystal/NotificationReceiver;)Z

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v1

    if-ne v1, v6, :cond_6

    const-string v1, "ResponseHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ResponseHandler::receiptReceived, Sending IAP receipt to server with post data "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v0

    sget-object v1, Lcom/chillingo/crystal/serverdata/FetchPriority;->AwaitingDisplay:Lcom/chillingo/crystal/serverdata/FetchPriority;

    invoke-virtual {v0, v2, v1, v7}, Lcom/chillingo/crystal/http/FetchManager;->queueServerData(Lcom/chillingo/crystal/serverdata/AbstractServerData;Lcom/chillingo/crystal/serverdata/FetchPriority;I)Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    goto/16 :goto_0

    :cond_7
    :try_start_2
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v0

    if-ne v0, v6, :cond_0

    const-string v0, "Crystal"

    const-string v3, "No receipts in purchase data"

    invoke-static {v0, v3}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    :goto_3
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2
.end method

.method public responseCodeReceived(Lcom/chillingo/crystal/market/MarketNotificationService;Lcom/chillingo/crystal/market/MarketNotificationService$PurchaseRequest;Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;)V
    .locals 4

    const/4 v0, 0x1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v1

    if-ne v1, v0, :cond_0

    const-string v1, "Marketplace ResponseHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received marketplace response.  we have a delegate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/chillingo/crystal/market/ResponseHandler;->_delegate:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_2

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "response code is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/chillingo/crystal/market/ResponseHandler;->_delegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/chillingo/crystal/market/ResponseHandler;->_delegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/market/PurchaseDelegate;

    sget-object v1, Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;->RESULT_OK:Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;

    if-ne p3, v1, :cond_3

    invoke-interface {v0}, Lcom/chillingo/crystal/market/PurchaseDelegate;->purchaseSuccessful()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;->RESULT_USER_CANCELED:Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;

    if-ne p3, v1, :cond_4

    invoke-interface {v0}, Lcom/chillingo/crystal/market/PurchaseDelegate;->purchaseCancelled()V

    goto :goto_1

    :cond_4
    invoke-interface {v0, p3}, Lcom/chillingo/crystal/market/PurchaseDelegate;->purchaseFailed(Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;)V

    goto :goto_1
.end method

.method public sendNotifications()V
    .locals 4

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/CrystalPreferences;

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->context()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->gamePackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/chillingo/crystal/CrystalPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/chillingo/crystal/CrystalPreferences;->getPurchaseNotifications()Ljava/util/Set;

    move-result-object v0

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chillingo/crystal/PrivateSession;->marketService()Lcom/chillingo/crystal/market/MarketNotificationService;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/chillingo/crystal/market/MarketNotificationService;->confirmNotifications([Ljava/lang/String;)Z

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/chillingo/crystal/CrystalPreferences;->setPurchaseNotifications(Ljava/util/Set;)V

    return-void
.end method

.method public setDelegate(Lcom/chillingo/crystal/market/PurchaseDelegate;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chillingo/crystal/market/ResponseHandler;->_delegate:Ljava/lang/ref/WeakReference;

    return-void
.end method
