.class public Lcom/gameboys/pocket7/BillingService;
.super Landroid/app/Service;
.source "BillingService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gameboys/pocket7/BillingService$BillingRequest;,
        Lcom/gameboys/pocket7/BillingService$CheckBillingSupported;,
        Lcom/gameboys/pocket7/BillingService$ConfirmNotifications;,
        Lcom/gameboys/pocket7/BillingService$GetPurchaseInformation;,
        Lcom/gameboys/pocket7/BillingService$RequestPurchase;,
        Lcom/gameboys/pocket7/BillingService$RestoreTransactions;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BillingService"

.field private static mPendingRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/gameboys/pocket7/BillingService$BillingRequest;",
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
            "Lcom/gameboys/pocket7/BillingService$BillingRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static mService:Lcom/android/vending/billing/IMarketBillingService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/gameboys/pocket7/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/gameboys/pocket7/BillingService;->mSentRequests:Ljava/util/HashMap;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 265
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 266
    return-void
.end method

.method static synthetic access$0(Lcom/gameboys/pocket7/BillingService;)Z
    .locals 1
    .parameter

    .prologue
    .line 313
    invoke-direct {p0}, Lcom/gameboys/pocket7/BillingService;->bindToMarketBillingService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1()Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/gameboys/pocket7/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$2()Lcom/android/vending/billing/IMarketBillingService;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/gameboys/pocket7/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    return-object v0
.end method

.method static synthetic access$3()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/gameboys/pocket7/BillingService;->mSentRequests:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4(Lcom/android/vending/billing/IMarketBillingService;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    sput-object p0, Lcom/gameboys/pocket7/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    return-void
.end method

.method private bindToMarketBillingService()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 319
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    .line 320
    const-string v4, "com.android.vending.billing.MarketBillingService.BIND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 321
    const/4 v4, 0x1

    .line 319
    invoke-virtual {p0, v3, p0, v4}, Lcom/gameboys/pocket7/BillingService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 323
    .local v0, bindResult:Z
    if-eqz v0, :cond_0

    .line 331
    .end local v0           #bindResult:Z
    :goto_0
    return v2

    .line 326
    .restart local v0       #bindResult:Z
    :cond_0
    const-string v2, "BillingService"

    const-string v3, "Could not bind to service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    .end local v0           #bindResult:Z
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 328
    :catch_0
    move-exception v1

    .line 329
    .local v1, e:Ljava/lang/SecurityException;
    const-string v2, "BillingService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Security exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private checkResponseCode(JLcom/gameboys/pocket7/Consts$ResponseCode;)V
    .locals 3
    .parameter "requestId"
    .parameter "responseCode"

    .prologue
    .line 365
    sget-object v1, Lcom/gameboys/pocket7/BillingService;->mSentRequests:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameboys/pocket7/BillingService$BillingRequest;

    .line 366
    .local v0, request:Lcom/gameboys/pocket7/BillingService$BillingRequest;
    if-eqz v0, :cond_0

    .line 371
    invoke-virtual {v0, p3}, Lcom/gameboys/pocket7/BillingService$BillingRequest;->responseCodeReceived(Lcom/gameboys/pocket7/Consts$ResponseCode;)V

    .line 373
    :cond_0
    sget-object v1, Lcom/gameboys/pocket7/BillingService;->mSentRequests:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    return-void
.end method

.method private confirmNotifications(I[Ljava/lang/String;)Z
    .locals 1
    .parameter "startId"
    .parameter "notifyIds"

    .prologue
    .line 347
    new-instance v0, Lcom/gameboys/pocket7/BillingService$ConfirmNotifications;

    invoke-direct {v0, p0, p1, p2}, Lcom/gameboys/pocket7/BillingService$ConfirmNotifications;-><init>(Lcom/gameboys/pocket7/BillingService;I[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gameboys/pocket7/BillingService$ConfirmNotifications;->runRequest()Z

    move-result v0

    return v0
.end method

.method private getPurchaseInformation(I[Ljava/lang/String;)Z
    .locals 1
    .parameter "startId"
    .parameter "notifyIds"

    .prologue
    .line 351
    new-instance v0, Lcom/gameboys/pocket7/BillingService$GetPurchaseInformation;

    invoke-direct {v0, p0, p1, p2}, Lcom/gameboys/pocket7/BillingService$GetPurchaseInformation;-><init>(Lcom/gameboys/pocket7/BillingService;I[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gameboys/pocket7/BillingService$GetPurchaseInformation;->runRequest()Z

    move-result v0

    return v0
.end method

.method private purchaseStateChanged(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "startId"
    .parameter "signedData"
    .parameter "signature"

    .prologue
    .line 357
    invoke-static {p2, p3}, Lcom/gameboys/pocket7/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 359
    .local v0, purchases:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/gameboys/pocket7/Security$VerifiedPurchase;>;"
    if-nez v0, :cond_0

    .line 362
    :cond_0
    return-void
.end method

.method private runPendingRequests()V
    .locals 3

    .prologue
    .line 377
    const/4 v0, -0x1

    .line 379
    .local v0, maxStartId:I
    :cond_0
    :goto_0
    sget-object v2, Lcom/gameboys/pocket7/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gameboys/pocket7/BillingService$BillingRequest;

    .local v1, request:Lcom/gameboys/pocket7/BillingService$BillingRequest;
    if-nez v1, :cond_2

    .line 391
    if-ltz v0, :cond_1

    .line 395
    invoke-virtual {p0, v0}, Lcom/gameboys/pocket7/BillingService;->stopSelf(I)V

    .line 397
    :cond_1
    :goto_1
    return-void

    .line 380
    :cond_2
    invoke-virtual {v1}, Lcom/gameboys/pocket7/BillingService$BillingRequest;->runIfConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 382
    sget-object v2, Lcom/gameboys/pocket7/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 383
    invoke-virtual {v1}, Lcom/gameboys/pocket7/BillingService$BillingRequest;->getStartId()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 384
    invoke-virtual {v1}, Lcom/gameboys/pocket7/BillingService$BillingRequest;->getStartId()I

    move-result v0

    goto :goto_0

    .line 387
    :cond_3
    invoke-direct {p0}, Lcom/gameboys/pocket7/BillingService;->bindToMarketBillingService()Z

    goto :goto_1
.end method


# virtual methods
.method public checkBillingSupported()Z
    .locals 1

    .prologue
    .line 335
    new-instance v0, Lcom/gameboys/pocket7/BillingService$CheckBillingSupported;

    invoke-direct {v0, p0}, Lcom/gameboys/pocket7/BillingService$CheckBillingSupported;-><init>(Lcom/gameboys/pocket7/BillingService;)V

    invoke-virtual {v0}, Lcom/gameboys/pocket7/BillingService$CheckBillingSupported;->runRequest()Z

    move-result v0

    return v0
.end method

.method public handleCommand(Landroid/content/Intent;I)V
    .locals 12
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 283
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    const-string v9, "com.example.dungeons.CONFIRM_NOTIFICATION"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 294
    const-string v9, "notification_id"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 295
    .local v2, notifyIds:[Ljava/lang/String;
    invoke-direct {p0, p2, v2}, Lcom/gameboys/pocket7/BillingService;->confirmNotifications(I[Ljava/lang/String;)Z

    goto :goto_0

    .line 296
    .end local v2           #notifyIds:[Ljava/lang/String;
    :cond_2
    const-string v9, "com.example.dungeons.GET_PURCHASE_INFORMATION"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 297
    const-string v9, "notification_id"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 298
    .local v1, notifyId:Ljava/lang/String;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    invoke-direct {p0, p2, v9}, Lcom/gameboys/pocket7/BillingService;->getPurchaseInformation(I[Ljava/lang/String;)Z

    goto :goto_0

    .line 299
    .end local v1           #notifyId:Ljava/lang/String;
    :cond_3
    const-string v9, "com.android.vending.billing.PURCHASE_STATE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 300
    const-string v9, "inapp_signed_data"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 301
    .local v8, signedData:Ljava/lang/String;
    const-string v9, "inapp_signature"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 302
    .local v7, signature:Ljava/lang/String;
    invoke-direct {p0, p2, v8, v7}, Lcom/gameboys/pocket7/BillingService;->purchaseStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 303
    .end local v7           #signature:Ljava/lang/String;
    .end local v8           #signedData:Ljava/lang/String;
    :cond_4
    const-string v9, "com.android.vending.billing.RESPONSE_CODE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 304
    const-string v9, "request_id"

    const-wide/16 v10, -0x1

    invoke-virtual {p1, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 306
    .local v3, requestId:J
    const-string v9, "response_code"

    .line 307
    sget-object v10, Lcom/gameboys/pocket7/Consts$ResponseCode;->RESULT_ERROR:Lcom/gameboys/pocket7/Consts$ResponseCode;

    invoke-virtual {v10}, Lcom/gameboys/pocket7/Consts$ResponseCode;->ordinal()I

    move-result v10

    .line 305
    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 308
    .local v6, responseCodeIndex:I
    invoke-static {v6}, Lcom/gameboys/pocket7/Consts$ResponseCode;->valueOf(I)Lcom/gameboys/pocket7/Consts$ResponseCode;

    move-result-object v5

    .line 309
    .local v5, responseCode:Lcom/gameboys/pocket7/Consts$ResponseCode;
    invoke-direct {p0, v3, v4, v5}, Lcom/gameboys/pocket7/BillingService;->checkResponseCode(JLcom/gameboys/pocket7/Consts$ResponseCode;)V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 274
    const/4 v0, 0x0

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "name"
    .parameter "service"

    .prologue
    .line 403
    invoke-static {p2}, Lcom/android/vending/billing/IMarketBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v0

    sput-object v0, Lcom/gameboys/pocket7/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    .line 404
    invoke-direct {p0}, Lcom/gameboys/pocket7/BillingService;->runPendingRequests()V

    .line 405
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 408
    const-string v0, "BillingService"

    const-string v1, "Billing service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const/4 v0, 0x0

    sput-object v0, Lcom/gameboys/pocket7/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    .line 410
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 279
    invoke-virtual {p0, p1, p2}, Lcom/gameboys/pocket7/BillingService;->handleCommand(Landroid/content/Intent;I)V

    .line 280
    return-void
.end method

.method public requestPurchase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "productId"
    .parameter "developerPayload"

    .prologue
    .line 339
    new-instance v0, Lcom/gameboys/pocket7/BillingService$RequestPurchase;

    invoke-direct {v0, p0, p1, p2}, Lcom/gameboys/pocket7/BillingService$RequestPurchase;-><init>(Lcom/gameboys/pocket7/BillingService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gameboys/pocket7/BillingService$RequestPurchase;->runRequest()Z

    move-result v0

    return v0
.end method

.method public restoreTransactions()Z
    .locals 1

    .prologue
    .line 343
    new-instance v0, Lcom/gameboys/pocket7/BillingService$RestoreTransactions;

    invoke-direct {v0, p0}, Lcom/gameboys/pocket7/BillingService$RestoreTransactions;-><init>(Lcom/gameboys/pocket7/BillingService;)V

    invoke-virtual {v0}, Lcom/gameboys/pocket7/BillingService$RestoreTransactions;->runRequest()Z

    move-result v0

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 269
    invoke-virtual {p0, p1}, Lcom/gameboys/pocket7/BillingService;->attachBaseContext(Landroid/content/Context;)V

    .line 270
    return-void
.end method

.method public unbind()V
    .locals 1

    .prologue
    .line 414
    :try_start_0
    invoke-virtual {p0, p0}, Lcom/gameboys/pocket7/BillingService;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :goto_0
    return-void

    .line 415
    :catch_0
    move-exception v0

    goto :goto_0
.end method
