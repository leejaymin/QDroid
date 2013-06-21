.class public Lcom/chillingo/crystal/market/MarketNotificationService;
.super Landroid/app/Service;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chillingo/crystal/market/MarketNotificationService$GetPurchaseInformation;,
        Lcom/chillingo/crystal/market/MarketNotificationService$ConfirmNotifications;,
        Lcom/chillingo/crystal/market/MarketNotificationService$PurchaseRequest;,
        Lcom/chillingo/crystal/market/MarketNotificationService$CheckBillingSupported;,
        Lcom/chillingo/crystal/market/MarketNotificationService$BillingRequest;,
        Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;
    }
.end annotation


# static fields
.field public static final ACTION_CONFIRM_NOTIFICATION:Ljava/lang/String; = "com.chillingo.crystal.CONFIRM_NOTIFICATION"

.field public static final ACTION_GET_PURCHASE_INFORMATION:Ljava/lang/String; = "com.chillingo.crystal.GET_PURCHASE_INFORMATION"

.field public static final ACTION_NOTIFY:Ljava/lang/String; = "com.android.vending.billing.IN_APP_NOTIFY"

.field public static final ACTION_PURCHASE_STATE_CHANGED:Ljava/lang/String; = "com.android.vending.billing.PURCHASE_STATE_CHANGED"

.field public static final ACTION_RESPONSE_CODE:Ljava/lang/String; = "com.android.vending.billing.RESPONSE_CODE"

.field public static final BILLING_REQUEST_API_VERSION:Ljava/lang/String; = "API_VERSION"

.field public static final BILLING_REQUEST_DEVELOPER_PAYLOAD:Ljava/lang/String; = "DEVELOPER_PAYLOAD"

.field public static final BILLING_REQUEST_ITEM_ID:Ljava/lang/String; = "ITEM_ID"

.field public static final BILLING_REQUEST_METHOD:Ljava/lang/String; = "BILLING_REQUEST"

.field public static final BILLING_REQUEST_NONCE:Ljava/lang/String; = "NONCE"

.field public static final BILLING_REQUEST_NOTIFY_IDS:Ljava/lang/String; = "NOTIFY_IDS"

.field public static final BILLING_REQUEST_PACKAGE_NAME:Ljava/lang/String; = "PACKAGE_NAME"

.field public static BILLING_RESPONSE_INVALID_REQUEST_ID:J = 0x0L

.field public static final BILLING_RESPONSE_PURCHASE_INTENT:Ljava/lang/String; = "PURCHASE_INTENT"

.field public static final BILLING_RESPONSE_REQUEST_ID:Ljava/lang/String; = "REQUEST_ID"

.field public static final BILLING_RESPONSE_RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"

.field private static final BIND_MARKET_PLACE:Ljava/lang/String; = "com.android.vending.billing.MarketBillingService.BIND"

.field public static final INAPP_REQUEST_ID:Ljava/lang/String; = "request_id"

.field public static final INAPP_RESPONSE_CODE:Ljava/lang/String; = "response_code"

.field public static final INAPP_SIGNATURE:Ljava/lang/String; = "inapp_signature"

.field public static final INAPP_SIGNED_DATA:Ljava/lang/String; = "inapp_signed_data"

.field public static final NOTIFICATION_ID:Ljava/lang/String; = "notification_id"

.field private static _marketAppService:Lcom/android/vending/billing/IMarketBillingService;

.field private static _pendingRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/chillingo/crystal/market/MarketNotificationService$BillingRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static _responseHandler:Lcom/chillingo/crystal/market/ResponseHandler;

.field private static _sentRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/chillingo/crystal/market/MarketNotificationService$BillingRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/chillingo/crystal/market/MarketNotificationService;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    const/4 v0, 0x0

    sput-object v0, Lcom/chillingo/crystal/market/MarketNotificationService;->_marketAppService:Lcom/android/vending/billing/IMarketBillingService;

    new-instance v0, Lcom/chillingo/crystal/market/ResponseHandler;

    invoke-direct {v0}, Lcom/chillingo/crystal/market/ResponseHandler;-><init>()V

    sput-object v0, Lcom/chillingo/crystal/market/MarketNotificationService;->_responseHandler:Lcom/chillingo/crystal/market/ResponseHandler;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/chillingo/crystal/market/MarketNotificationService;->_pendingRequests:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/chillingo/crystal/market/MarketNotificationService;->_sentRequests:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/chillingo/crystal/market/MarketNotificationService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/chillingo/crystal/market/MarketNotificationService;->bindToMarketService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Ljava/util/LinkedList;
    .locals 1

    sget-object v0, Lcom/chillingo/crystal/market/MarketNotificationService;->_pendingRequests:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$200()Lcom/android/vending/billing/IMarketBillingService;
    .locals 1

    sget-object v0, Lcom/chillingo/crystal/market/MarketNotificationService;->_marketAppService:Lcom/android/vending/billing/IMarketBillingService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/vending/billing/IMarketBillingService;)Lcom/android/vending/billing/IMarketBillingService;
    .locals 0

    sput-object p0, Lcom/chillingo/crystal/market/MarketNotificationService;->_marketAppService:Lcom/android/vending/billing/IMarketBillingService;

    return-object p0
.end method

.method static synthetic access$300()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/chillingo/crystal/market/MarketNotificationService;->_sentRequests:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400()Lcom/chillingo/crystal/market/ResponseHandler;
    .locals 1

    sget-object v0, Lcom/chillingo/crystal/market/MarketNotificationService;->_responseHandler:Lcom/chillingo/crystal/market/ResponseHandler;

    return-object v0
.end method

.method private bindToMarketService()Z
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.vending.billing.MarketBillingService.BIND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v1, p0, v2}, Lcom/chillingo/crystal/market/MarketNotificationService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkResponseCode(JLcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;)V
    .locals 2

    sget-object v0, Lcom/chillingo/crystal/market/MarketNotificationService;->_sentRequests:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/market/MarketNotificationService$BillingRequest;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p3}, Lcom/chillingo/crystal/market/MarketNotificationService$BillingRequest;->responseCodeReceived(Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;)V

    :cond_0
    sget-object v0, Lcom/chillingo/crystal/market/MarketNotificationService;->_sentRequests:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private purchaseStateChanged(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/chillingo/crystal/market/MarketNotificationService;->_responseHandler:Lcom/chillingo/crystal/market/ResponseHandler;

    invoke-virtual {v0, p2, p3}, Lcom/chillingo/crystal/market/ResponseHandler;->receiptReceived(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private runPendingRequests()V
    .locals 3

    const/4 v0, -0x1

    move v1, v0

    :cond_0
    :goto_0
    sget-object v0, Lcom/chillingo/crystal/market/MarketNotificationService;->_pendingRequests:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/market/MarketNotificationService$BillingRequest;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/chillingo/crystal/market/MarketNotificationService$BillingRequest;->runIfConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/chillingo/crystal/market/MarketNotificationService;->_pendingRequests:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/chillingo/crystal/market/MarketNotificationService$BillingRequest;->getStartId()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/chillingo/crystal/market/MarketNotificationService$BillingRequest;->getStartId()I

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/chillingo/crystal/market/MarketNotificationService;->bindToMarketService()Z

    :cond_2
    :goto_1
    return-void

    :cond_3
    if-ltz v1, :cond_2

    invoke-virtual {p0, v1}, Lcom/chillingo/crystal/market/MarketNotificationService;->stopSelf(I)V

    goto :goto_1
.end method


# virtual methods
.method public checkBillingSupported()Z
    .locals 1

    new-instance v0, Lcom/chillingo/crystal/market/MarketNotificationService$CheckBillingSupported;

    invoke-direct {v0, p0}, Lcom/chillingo/crystal/market/MarketNotificationService$CheckBillingSupported;-><init>(Lcom/chillingo/crystal/market/MarketNotificationService;)V

    invoke-virtual {v0}, Lcom/chillingo/crystal/market/MarketNotificationService$CheckBillingSupported;->runRequest()Z

    move-result v0

    return v0
.end method

.method public confirmNotifications([Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Lcom/chillingo/crystal/market/MarketNotificationService$ConfirmNotifications;

    invoke-direct {v0, p0, p1}, Lcom/chillingo/crystal/market/MarketNotificationService$ConfirmNotifications;-><init>(Lcom/chillingo/crystal/market/MarketNotificationService;[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/chillingo/crystal/market/MarketNotificationService$ConfirmNotifications;->runRequest()Z

    move-result v0

    return v0
.end method

.method public getPurchaseInformation([Ljava/lang/String;J)Z
    .locals 1

    new-instance v0, Lcom/chillingo/crystal/market/MarketNotificationService$GetPurchaseInformation;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/chillingo/crystal/market/MarketNotificationService$GetPurchaseInformation;-><init>(Lcom/chillingo/crystal/market/MarketNotificationService;[Ljava/lang/String;J)V

    invoke-virtual {v0}, Lcom/chillingo/crystal/market/MarketNotificationService$GetPurchaseInformation;->runRequest()Z

    move-result v0

    return v0
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

    sput-object v0, Lcom/chillingo/crystal/market/MarketNotificationService;->_marketAppService:Lcom/android/vending/billing/IMarketBillingService;

    invoke-direct {p0}, Lcom/chillingo/crystal/market/MarketNotificationService;->runPendingRequests()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/chillingo/crystal/market/MarketNotificationService;->_marketAppService:Lcom/android/vending/billing/IMarketBillingService;

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 4

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.vending.billing.PURCHASE_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "inapp_signed_data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "inapp_signature"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v0, v1}, Lcom/chillingo/crystal/market/MarketNotificationService;->purchaseStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "com.chillingo.crystal.GET_PURCHASE_INFORMATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "notification_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/chillingo/crystal/market/MarketNotificationService;->_responseHandler:Lcom/chillingo/crystal/market/ResponseHandler;

    invoke-virtual {v1, p1, p0, v0}, Lcom/chillingo/crystal/market/ResponseHandler;->notificationReceived(Landroid/content/Intent;Lcom/chillingo/crystal/market/MarketNotificationService;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "com.android.vending.billing.RESPONSE_CODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "request_id"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "response_code"

    sget-object v3, Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;->RESULT_ERROR:Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;

    invoke-virtual {v3}, Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;->ordinal()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;->valueOf(I)Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/chillingo/crystal/market/MarketNotificationService;->checkResponseCode(JLcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isWarningLoggingEnabled()Z

    move-result v1

    if-ne v1, v2, :cond_0

    const-string v1, "MarketNotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected response code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/chillingo/crystal/utils/DLog;->warning(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v0

    if-ne v0, v2, :cond_0

    const-string v0, "MarketNotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received null intent in market place receiver with start id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public requestPurcahse(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Lcom/chillingo/crystal/market/MarketNotificationService$PurchaseRequest;

    invoke-direct {v0, p0, p1, p2}, Lcom/chillingo/crystal/market/MarketNotificationService$PurchaseRequest;-><init>(Lcom/chillingo/crystal/market/MarketNotificationService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/chillingo/crystal/market/MarketNotificationService$PurchaseRequest;->runRequest()Z

    move-result v0

    return v0
.end method

.method public responseHandler()Lcom/chillingo/crystal/market/ResponseHandler;
    .locals 1

    sget-object v0, Lcom/chillingo/crystal/market/MarketNotificationService;->_responseHandler:Lcom/chillingo/crystal/market/ResponseHandler;

    return-object v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/chillingo/crystal/market/MarketNotificationService;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public unbind()V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p0}, Lcom/chillingo/crystal/market/MarketNotificationService;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
