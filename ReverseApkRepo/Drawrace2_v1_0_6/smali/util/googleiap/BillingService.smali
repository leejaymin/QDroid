.class public Lutil/googleiap/BillingService;
.super Landroid/app/Service;
.source "BillingService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lutil/googleiap/BillingService$RestoreTransactions;,
        Lutil/googleiap/BillingService$GetPurchaseInformation;,
        Lutil/googleiap/BillingService$ConfirmNotifications;,
        Lutil/googleiap/BillingService$RequestPurchase;,
        Lutil/googleiap/BillingService$CheckBillingSupported;,
        Lutil/googleiap/BillingService$BillingRequest;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BillingService"

.field private static mPendingRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lutil/googleiap/BillingService$BillingRequest;",
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
            "Lutil/googleiap/BillingService$BillingRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static mService:Lcom/android/vending/billing/IMarketBillingService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lutil/googleiap/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lutil/googleiap/BillingService;->mSentRequests:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 350
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 351
    return-void
.end method

.method static synthetic access$000(Lutil/googleiap/BillingService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lutil/googleiap/BillingService;->bindToMarketBillingService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lutil/googleiap/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$200()Lcom/android/vending/billing/IMarketBillingService;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lutil/googleiap/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/vending/billing/IMarketBillingService;)Lcom/android/vending/billing/IMarketBillingService;
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    sput-object p0, Lutil/googleiap/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    return-object p0
.end method

.method static synthetic access$300()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lutil/googleiap/BillingService;->mSentRequests:Ljava/util/HashMap;

    return-object v0
.end method

.method private bindToMarketBillingService()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 423
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.vending.billing.MarketBillingService.BIND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {p0, v3, p0, v4}, Lutil/googleiap/BillingService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 428
    .local v0, bindResult:Z
    if-eqz v0, :cond_0

    .line 436
    .end local v0           #bindResult:Z
    :goto_0
    return v2

    .line 431
    .restart local v0       #bindResult:Z
    :cond_0
    const-string v2, "BillingService"

    const-string v3, "Could not bind to service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    .end local v0           #bindResult:Z
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 433
    :catch_0
    move-exception v1

    .line 434
    .local v1, e:Ljava/lang/SecurityException;
    const-string v2, "BillingService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Security exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private checkResponseCode(JLutil/googleiap/Consts$ResponseCode;)V
    .locals 3
    .parameter "requestId"
    .parameter "responseCode"

    .prologue
    .line 545
    sget-object v1, Lutil/googleiap/BillingService;->mSentRequests:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lutil/googleiap/BillingService$BillingRequest;

    .line 546
    .local v0, request:Lutil/googleiap/BillingService$BillingRequest;
    if-eqz v0, :cond_0

    .line 550
    invoke-virtual {v0, p3}, Lutil/googleiap/BillingService$BillingRequest;->responseCodeReceived(Lutil/googleiap/Consts$ResponseCode;)V

    .line 552
    :cond_0
    sget-object v1, Lutil/googleiap/BillingService;->mSentRequests:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    return-void
.end method

.method private confirmNotifications(I[Ljava/lang/String;)Z
    .locals 1
    .parameter "startId"
    .parameter "notifyIds"

    .prologue
    .line 483
    new-instance v0, Lutil/googleiap/BillingService$ConfirmNotifications;

    invoke-direct {v0, p0, p1, p2}, Lutil/googleiap/BillingService$ConfirmNotifications;-><init>(Lutil/googleiap/BillingService;I[Ljava/lang/String;)V

    invoke-virtual {v0}, Lutil/googleiap/BillingService$ConfirmNotifications;->runRequest()Z

    move-result v0

    return v0
.end method

.method private getPurchaseInformation(I[Ljava/lang/String;)Z
    .locals 1
    .parameter "startId"
    .parameter "notifyIds"

    .prologue
    .line 500
    new-instance v0, Lutil/googleiap/BillingService$GetPurchaseInformation;

    invoke-direct {v0, p0, p1, p2}, Lutil/googleiap/BillingService$GetPurchaseInformation;-><init>(Lutil/googleiap/BillingService;I[Ljava/lang/String;)V

    invoke-virtual {v0}, Lutil/googleiap/BillingService$GetPurchaseInformation;->runRequest()Z

    move-result v0

    return v0
.end method

.method private purchaseStateChanged(ILjava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "startId"
    .parameter "signedData"
    .parameter "signature"

    .prologue
    .line 513
    invoke-static {p2, p3}, Lutil/googleiap/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 514
    .local v10, purchases:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lutil/googleiap/Security$VerifiedPurchase;>;"
    if-nez v10, :cond_1

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 518
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 519
    .local v9, notifyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lutil/googleiap/Security$VerifiedPurchase;

    .line 520
    .local v11, vp:Lutil/googleiap/Security$VerifiedPurchase;
    iget-object v0, v11, Lutil/googleiap/Security$VerifiedPurchase;->notificationId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 521
    iget-object v0, v11, Lutil/googleiap/Security$VerifiedPurchase;->notificationId:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    :cond_2
    iget-object v1, v11, Lutil/googleiap/Security$VerifiedPurchase;->purchaseState:Lutil/googleiap/Consts$PurchaseState;

    iget-object v2, v11, Lutil/googleiap/Security$VerifiedPurchase;->productId:Ljava/lang/String;

    iget-object v3, v11, Lutil/googleiap/Security$VerifiedPurchase;->orderId:Ljava/lang/String;

    iget-wide v4, v11, Lutil/googleiap/Security$VerifiedPurchase;->purchaseTime:J

    iget-object v6, v11, Lutil/googleiap/Security$VerifiedPurchase;->developerPayload:Ljava/lang/String;

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lutil/googleiap/ResponseHandler;->purchaseResponse(Landroid/content/Context;Lutil/googleiap/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_1

    .line 526
    .end local v11           #vp:Lutil/googleiap/Security$VerifiedPurchase;
    :cond_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 527
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    .line 528
    .local v8, notifyIds:[Ljava/lang/String;
    invoke-direct {p0, p1, v8}, Lutil/googleiap/BillingService;->confirmNotifications(I[Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private runPendingRequests()V
    .locals 3

    .prologue
    .line 560
    const/4 v0, -0x1

    .line 565
    .local v0, maxStartId:I
    :cond_0
    :goto_0
    sget-object v2, Lutil/googleiap/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lutil/googleiap/BillingService$BillingRequest;

    .local v1, request:Lutil/googleiap/BillingService$BillingRequest;
    if-eqz v1, :cond_3

    .line 569
    invoke-virtual {v1}, Lutil/googleiap/BillingService$BillingRequest;->runIfConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 571
    sget-object v2, Lutil/googleiap/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 575
    invoke-virtual {v1}, Lutil/googleiap/BillingService$BillingRequest;->getStartId()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 576
    invoke-virtual {v1}, Lutil/googleiap/BillingService$BillingRequest;->getStartId()I

    move-result v0

    goto :goto_0

    .line 581
    :cond_1
    invoke-direct {p0}, Lutil/googleiap/BillingService;->bindToMarketBillingService()Z

    .line 595
    :cond_2
    :goto_1
    return-void

    .line 589
    :cond_3
    if-ltz v0, :cond_2

    .line 593
    invoke-virtual {p0, v0}, Lutil/googleiap/BillingService;->stopSelf(I)V

    goto :goto_1
.end method


# virtual methods
.method public checkBillingSupported()Z
    .locals 1

    .prologue
    .line 444
    new-instance v0, Lutil/googleiap/BillingService$CheckBillingSupported;

    invoke-direct {v0, p0}, Lutil/googleiap/BillingService$CheckBillingSupported;-><init>(Lutil/googleiap/BillingService;)V

    invoke-virtual {v0}, Lutil/googleiap/BillingService$CheckBillingSupported;->runRequest()Z

    move-result v0

    return v0
.end method

.method public handleCommand(Landroid/content/Intent;I)V
    .locals 12
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 384
    if-nez p1, :cond_1

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 394
    .local v0, action:Ljava/lang/String;
    sget-object v9, Lutil/googleiap/Consts;->ACTION_CONFIRM_NOTIFICATION:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 395
    const-string v9, "notification_id"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 396
    .local v2, notifyIds:[Ljava/lang/String;
    invoke-direct {p0, p2, v2}, Lutil/googleiap/BillingService;->confirmNotifications(I[Ljava/lang/String;)Z

    goto :goto_0

    .line 397
    .end local v2           #notifyIds:[Ljava/lang/String;
    :cond_2
    sget-object v9, Lutil/googleiap/Consts;->ACTION_GET_PURCHASE_INFORMATION:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 398
    const-string v9, "notification_id"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 399
    .local v1, notifyId:Ljava/lang/String;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    invoke-direct {p0, p2, v9}, Lutil/googleiap/BillingService;->getPurchaseInformation(I[Ljava/lang/String;)Z

    goto :goto_0

    .line 400
    .end local v1           #notifyId:Ljava/lang/String;
    :cond_3
    const-string v9, "com.android.vending.billing.PURCHASE_STATE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 401
    const-string v9, "inapp_signed_data"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 402
    .local v8, signedData:Ljava/lang/String;
    const-string v9, "inapp_signature"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 403
    .local v7, signature:Ljava/lang/String;
    invoke-direct {p0, p2, v8, v7}, Lutil/googleiap/BillingService;->purchaseStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 404
    .end local v7           #signature:Ljava/lang/String;
    .end local v8           #signedData:Ljava/lang/String;
    :cond_4
    const-string v9, "com.android.vending.billing.RESPONSE_CODE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 405
    const-string v9, "request_id"

    const-wide/16 v10, -0x1

    invoke-virtual {p1, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 406
    .local v3, requestId:J
    const-string v9, "response_code"

    sget-object v10, Lutil/googleiap/Consts$ResponseCode;->RESULT_ERROR:Lutil/googleiap/Consts$ResponseCode;

    invoke-virtual {v10}, Lutil/googleiap/Consts$ResponseCode;->ordinal()I

    move-result v10

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 408
    .local v6, responseCodeIndex:I
    invoke-static {v6}, Lutil/googleiap/Consts$ResponseCode;->valueOf(I)Lutil/googleiap/Consts$ResponseCode;

    move-result-object v5

    .line 409
    .local v5, responseCode:Lutil/googleiap/Consts$ResponseCode;
    invoke-direct {p0, v3, v4, v5}, Lutil/googleiap/BillingService;->checkResponseCode(JLutil/googleiap/Consts$ResponseCode;)V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 362
    const/4 v0, 0x0

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "name"
    .parameter "service"

    .prologue
    .line 605
    invoke-static {p2}, Lcom/android/vending/billing/IMarketBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v0

    sput-object v0, Lutil/googleiap/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    .line 606
    invoke-direct {p0}, Lutil/googleiap/BillingService;->runPendingRequests()V

    .line 607
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 613
    const-string v0, "BillingService"

    const-string v1, "Billing service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    const/4 v0, 0x0

    sput-object v0, Lutil/googleiap/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    .line 615
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 367
    invoke-virtual {p0, p1, p2}, Lutil/googleiap/BillingService;->handleCommand(Landroid/content/Intent;I)V

    .line 368
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 372
    invoke-virtual {p0, p1, p3}, Lutil/googleiap/BillingService;->handleCommand(Landroid/content/Intent;I)V

    .line 373
    const/4 v0, 0x3

    return v0
.end method

.method public requestPurchase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "productId"
    .parameter "developerPayload"

    .prologue
    .line 458
    new-instance v0, Lutil/googleiap/BillingService$RequestPurchase;

    invoke-direct {v0, p0, p1, p2}, Lutil/googleiap/BillingService$RequestPurchase;-><init>(Lutil/googleiap/BillingService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lutil/googleiap/BillingService$RequestPurchase;->runRequest()Z

    move-result v0

    return v0
.end method

.method public restoreTransactions()Z
    .locals 1

    .prologue
    .line 468
    new-instance v0, Lutil/googleiap/BillingService$RestoreTransactions;

    invoke-direct {v0, p0}, Lutil/googleiap/BillingService$RestoreTransactions;-><init>(Lutil/googleiap/BillingService;)V

    invoke-virtual {v0}, Lutil/googleiap/BillingService$RestoreTransactions;->runRequest()Z

    move-result v0

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 354
    invoke-virtual {p0, p1}, Lutil/googleiap/BillingService;->attachBaseContext(Landroid/content/Context;)V

    .line 355
    return-void
.end method

.method public unbind()V
    .locals 1

    .prologue
    .line 623
    :try_start_0
    invoke-virtual {p0, p0}, Lutil/googleiap/BillingService;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    :goto_0
    return-void

    .line 624
    :catch_0
    move-exception v0

    goto :goto_0
.end method
