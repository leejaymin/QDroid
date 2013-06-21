.class public abstract Lcom/urbanairship/iap/marketinterface/AbstractMarketListener;
.super Ljava/lang/Object;


# static fields
.field private static final START_INTENT_SENDER_SIG:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mStartIntentSender:Ljava/lang/reflect/Method;

.field private mStartIntentSenderArgs:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/IntentSender;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/content/Intent;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    sput-object v0, Lcom/urbanairship/iap/marketinterface/AbstractMarketListener;->START_INTENT_SENDER_SIG:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/urbanairship/iap/marketinterface/AbstractMarketListener;->mStartIntentSenderArgs:[Ljava/lang/Object;

    iput-object p1, p0, Lcom/urbanairship/iap/marketinterface/AbstractMarketListener;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private initCompatibilityLayer(Landroid/app/Activity;)V
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "startIntentSender"

    sget-object v2, Lcom/urbanairship/iap/marketinterface/AbstractMarketListener;->START_INTENT_SENDER_SIG:[Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/iap/marketinterface/AbstractMarketListener;->mStartIntentSender:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iput-object v3, p0, Lcom/urbanairship/iap/marketinterface/AbstractMarketListener;->mStartIntentSender:Ljava/lang/reflect/Method;

    goto :goto_0

    :catch_1
    move-exception v0

    iput-object v3, p0, Lcom/urbanairship/iap/marketinterface/AbstractMarketListener;->mStartIntentSender:Ljava/lang/reflect/Method;

    goto :goto_0
.end method


# virtual methods
.method public abstract onBillingSupported(Z)V
.end method

.method public abstract onPurchaseStateChange(Lcom/urbanairship/iap/marketinterface/Consts$PurchaseState;Ljava/lang/String;IJLjava/lang/String;)V
.end method

.method public abstract onRequestPurchaseResponse(Lcom/urbanairship/iap/marketinterface/BillingService$RequestPurchase;Lcom/urbanairship/iap/marketinterface/Consts$ResponseCode;)V
.end method

.method public abstract onRestoreTransactionsResponse(Lcom/urbanairship/iap/marketinterface/BillingService$RestoreTransactions;Lcom/urbanairship/iap/marketinterface/Consts$ResponseCode;)V
.end method

.method public postPurchaseStateChange(Lcom/urbanairship/iap/marketinterface/Consts$PurchaseState;Ljava/lang/String;IJLjava/lang/String;)V
    .locals 9

    iget-object v8, p0, Lcom/urbanairship/iap/marketinterface/AbstractMarketListener;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/urbanairship/iap/marketinterface/AbstractMarketListener$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/urbanairship/iap/marketinterface/AbstractMarketListener$1;-><init>(Lcom/urbanairship/iap/marketinterface/AbstractMarketListener;Lcom/urbanairship/iap/marketinterface/Consts$PurchaseState;Ljava/lang/String;IJLjava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startBuyPageActivity(Landroid/app/Activity;Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/urbanairship/iap/marketinterface/AbstractMarketListener;->initCompatibilityLayer(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/urbanairship/iap/marketinterface/AbstractMarketListener;->mStartIntentSender:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/iap/marketinterface/AbstractMarketListener;->mStartIntentSenderArgs:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/urbanairship/iap/marketinterface/AbstractMarketListener;->mStartIntentSenderArgs:[Ljava/lang/Object;

    const/4 v1, 0x1

    aput-object p3, v0, v1

    iget-object v0, p0, Lcom/urbanairship/iap/marketinterface/AbstractMarketListener;->mStartIntentSenderArgs:[Ljava/lang/Object;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/urbanairship/iap/marketinterface/AbstractMarketListener;->mStartIntentSenderArgs:[Ljava/lang/Object;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/urbanairship/iap/marketinterface/AbstractMarketListener;->mStartIntentSenderArgs:[Ljava/lang/Object;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/urbanairship/iap/marketinterface/AbstractMarketListener;->mStartIntentSender:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/urbanairship/iap/marketinterface/AbstractMarketListener;->mStartIntentSenderArgs:[Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "error starting buy page activity"

    invoke-static {v1, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p2, p1, v0, p3}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "error starting buy page activity"

    invoke-static {v1, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
