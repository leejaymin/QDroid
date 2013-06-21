.class public Lnet/robotmedia/billing/BillingService;
.super Landroid/app/Service;
.source "BillingService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/robotmedia/billing/BillingService$Action;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$net$robotmedia$billing$BillingService$Action:[I = null

.field private static final ACTION_MARKET_BILLING_SERVICE:Ljava/lang/String; = "com.android.vending.billing.MarketBillingService.BIND"

.field private static final EXTRA_DEVELOPER_PAYLOAD:Ljava/lang/String; = "DEVELOPER_PAYLOAD"

.field private static final EXTRA_ITEM_ID:Ljava/lang/String; = "ITEM_ID"

.field private static final EXTRA_NONCE:Ljava/lang/String; = "EXTRA_NONCE"

.field private static final EXTRA_NOTIFY_IDS:Ljava/lang/String; = "NOTIFY_IDS"

.field private static mPendingRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lnet/robotmedia/billing/BillingRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static mService:Lcom/android/vending/billing/IMarketBillingService;


# direct methods
.method static synthetic $SWITCH_TABLE$net$robotmedia$billing$BillingService$Action()[I
    .locals 3

    .prologue
    .line 35
    sget-object v0, Lnet/robotmedia/billing/BillingService;->$SWITCH_TABLE$net$robotmedia$billing$BillingService$Action:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lnet/robotmedia/billing/BillingService$Action;->values()[Lnet/robotmedia/billing/BillingService$Action;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lnet/robotmedia/billing/BillingService$Action;->CHECK_BILLING_SUPPORTED:Lnet/robotmedia/billing/BillingService$Action;

    invoke-virtual {v1}, Lnet/robotmedia/billing/BillingService$Action;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lnet/robotmedia/billing/BillingService$Action;->CONFIRM_NOTIFICATIONS:Lnet/robotmedia/billing/BillingService$Action;

    invoke-virtual {v1}, Lnet/robotmedia/billing/BillingService$Action;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lnet/robotmedia/billing/BillingService$Action;->GET_PURCHASE_INFORMATION:Lnet/robotmedia/billing/BillingService$Action;

    invoke-virtual {v1}, Lnet/robotmedia/billing/BillingService$Action;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lnet/robotmedia/billing/BillingService$Action;->REQUEST_PURCHASE:Lnet/robotmedia/billing/BillingService$Action;

    invoke-virtual {v1}, Lnet/robotmedia/billing/BillingService$Action;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lnet/robotmedia/billing/BillingService$Action;->RESTORE_TRANSACTIONS:Lnet/robotmedia/billing/BillingService$Action;

    invoke-virtual {v1}, Lnet/robotmedia/billing/BillingService$Action;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lnet/robotmedia/billing/BillingService;->$SWITCH_TABLE$net$robotmedia$billing$BillingService$Action:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lnet/robotmedia/billing/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private bindMarketBillingService()V
    .locals 4

    .prologue
    .line 96
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.vending.billing.MarketBillingService.BIND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v2, p0, v3}, Lnet/robotmedia/billing/BillingService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 97
    .local v0, bindResult:Z
    if-nez v0, :cond_0

    .line 98
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Could not bind to MarketBillingService"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v0           #bindResult:Z
    :cond_0
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v1

    .line 101
    .local v1, e:Ljava/lang/SecurityException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Could not bind to MarketBillingService"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private checkBillingSupported(I)V
    .locals 2
    .parameter "startId"

    .prologue
    .line 106
    invoke-virtual {p0}, Lnet/robotmedia/billing/BillingService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, packageName:Ljava/lang/String;
    new-instance v1, Lnet/robotmedia/billing/BillingRequest$CheckBillingSupported;

    invoke-direct {v1, v0, p1}, Lnet/robotmedia/billing/BillingRequest$CheckBillingSupported;-><init>(Ljava/lang/String;I)V

    .line 108
    .local v1, request:Lnet/robotmedia/billing/BillingRequest$CheckBillingSupported;
    invoke-direct {p0, v1}, Lnet/robotmedia/billing/BillingService;->runRequestOrQueue(Lnet/robotmedia/billing/BillingRequest;)V

    .line 109
    return-void
.end method

.method public static checkBillingSupported(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 52
    sget-object v1, Lnet/robotmedia/billing/BillingService$Action;->CHECK_BILLING_SUPPORTED:Lnet/robotmedia/billing/BillingService$Action;

    invoke-static {p0, v1}, Lnet/robotmedia/billing/BillingService;->createIntent(Landroid/content/Context;Lnet/robotmedia/billing/BillingService$Action;)Landroid/content/Intent;

    move-result-object v0

    .line 53
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 54
    return-void
.end method

.method public static confirmNotifications(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "notifyIds"

    .prologue
    .line 57
    sget-object v1, Lnet/robotmedia/billing/BillingService$Action;->CONFIRM_NOTIFICATIONS:Lnet/robotmedia/billing/BillingService$Action;

    invoke-static {p0, v1}, Lnet/robotmedia/billing/BillingService;->createIntent(Landroid/content/Context;Lnet/robotmedia/billing/BillingService$Action;)Landroid/content/Intent;

    move-result-object v0

    .line 58
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "NOTIFY_IDS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 60
    return-void
.end method

.method private confirmNotifications(Landroid/content/Intent;I)V
    .locals 4
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 112
    invoke-virtual {p0}, Lnet/robotmedia/billing/BillingService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, packageName:Ljava/lang/String;
    const-string v3, "NOTIFY_IDS"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, notifyIds:[Ljava/lang/String;
    new-instance v2, Lnet/robotmedia/billing/BillingRequest$ConfirmNotifications;

    invoke-direct {v2, v1, p2, v0}, Lnet/robotmedia/billing/BillingRequest$ConfirmNotifications;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 115
    .local v2, request:Lnet/robotmedia/billing/BillingRequest$ConfirmNotifications;
    invoke-direct {p0, v2}, Lnet/robotmedia/billing/BillingService;->runRequestOrQueue(Lnet/robotmedia/billing/BillingRequest;)V

    .line 116
    return-void
.end method

.method private static createIntent(Landroid/content/Context;Lnet/robotmedia/billing/BillingService$Action;)Landroid/content/Intent;
    .locals 3
    .parameter "context"
    .parameter "action"

    .prologue
    .line 63
    invoke-static {p0, p1}, Lnet/robotmedia/billing/BillingService;->getActionForIntent(Landroid/content/Context;Lnet/robotmedia/billing/BillingService$Action;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, actionString:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    .local v1, intent:Landroid/content/Intent;
    const-class v2, Lnet/robotmedia/billing/BillingService;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 66
    return-object v1
.end method

.method private static final getActionForIntent(Landroid/content/Context;Lnet/robotmedia/billing/BillingService$Action;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "action"

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lnet/robotmedia/billing/BillingService$Action;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getActionFromIntent(Landroid/content/Intent;)Lnet/robotmedia/billing/BillingService$Action;
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 119
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, actionString:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-object v2

    .line 123
    :cond_1
    const-string v3, "\\."

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, split:[Ljava/lang/String;
    array-length v3, v1

    if-lez v3, :cond_0

    .line 127
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Lnet/robotmedia/billing/BillingService$Action;->valueOf(Ljava/lang/String;)Lnet/robotmedia/billing/BillingService$Action;

    move-result-object v2

    goto :goto_0
.end method

.method public static getPurchaseInformation(Landroid/content/Context;[Ljava/lang/String;J)V
    .locals 2
    .parameter "context"
    .parameter "notifyIds"
    .parameter "nonce"

    .prologue
    .line 74
    sget-object v1, Lnet/robotmedia/billing/BillingService$Action;->GET_PURCHASE_INFORMATION:Lnet/robotmedia/billing/BillingService$Action;

    invoke-static {p0, v1}, Lnet/robotmedia/billing/BillingService;->createIntent(Landroid/content/Context;Lnet/robotmedia/billing/BillingService$Action;)Landroid/content/Intent;

    move-result-object v0

    .line 75
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "NOTIFY_IDS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    const-string v1, "EXTRA_NONCE"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 77
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 78
    return-void
.end method

.method private getPurchaseInformation(Landroid/content/Intent;I)V
    .locals 8
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 131
    invoke-virtual {p0}, Lnet/robotmedia/billing/BillingService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 132
    .local v3, packageName:Ljava/lang/String;
    const-string v5, "EXTRA_NONCE"

    const-wide/16 v6, 0x0

    invoke-virtual {p1, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 133
    .local v0, nonce:J
    const-string v5, "NOTIFY_IDS"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, notifyIds:[Ljava/lang/String;
    new-instance v4, Lnet/robotmedia/billing/BillingRequest$GetPurchaseInformation;

    invoke-direct {v4, v3, p2, v2}, Lnet/robotmedia/billing/BillingRequest$GetPurchaseInformation;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 135
    .local v4, request:Lnet/robotmedia/billing/BillingRequest$GetPurchaseInformation;
    invoke-virtual {v4, v0, v1}, Lnet/robotmedia/billing/BillingRequest$GetPurchaseInformation;->setNonce(J)V

    .line 136
    invoke-direct {p0, v4}, Lnet/robotmedia/billing/BillingService;->runRequestOrQueue(Lnet/robotmedia/billing/BillingRequest;)V

    .line 137
    return-void
.end method

.method private handleCommand(Landroid/content/Intent;I)V
    .locals 3
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lnet/robotmedia/billing/BillingService;->getActionFromIntent(Landroid/content/Intent;)Lnet/robotmedia/billing/BillingService$Action;

    move-result-object v0

    .line 171
    .local v0, action:Lnet/robotmedia/billing/BillingService$Action;
    if-nez v0, :cond_0

    .line 190
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-static {}, Lnet/robotmedia/billing/BillingService;->$SWITCH_TABLE$net$robotmedia$billing$BillingService$Action()[I

    move-result-object v1

    invoke-virtual {v0}, Lnet/robotmedia/billing/BillingService$Action;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 176
    :pswitch_0
    invoke-direct {p0, p2}, Lnet/robotmedia/billing/BillingService;->checkBillingSupported(I)V

    goto :goto_0

    .line 179
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lnet/robotmedia/billing/BillingService;->requestPurchase(Landroid/content/Intent;I)V

    goto :goto_0

    .line 182
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lnet/robotmedia/billing/BillingService;->getPurchaseInformation(Landroid/content/Intent;I)V

    goto :goto_0

    .line 185
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lnet/robotmedia/billing/BillingService;->confirmNotifications(Landroid/content/Intent;I)V

    goto :goto_0

    .line 188
    :pswitch_4
    invoke-direct {p0, p1, p2}, Lnet/robotmedia/billing/BillingService;->restoreTransactions(Landroid/content/Intent;I)V

    goto :goto_0

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public static requestPurchase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "itemId"
    .parameter "developerPayload"

    .prologue
    .line 81
    sget-object v1, Lnet/robotmedia/billing/BillingService$Action;->REQUEST_PURCHASE:Lnet/robotmedia/billing/BillingService$Action;

    invoke-static {p0, v1}, Lnet/robotmedia/billing/BillingService;->createIntent(Landroid/content/Context;Lnet/robotmedia/billing/BillingService$Action;)Landroid/content/Intent;

    move-result-object v0

    .line 82
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "ITEM_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const-string v1, "DEVELOPER_PAYLOAD"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 85
    return-void
.end method

.method private requestPurchase(Landroid/content/Intent;I)V
    .locals 5
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 193
    invoke-virtual {p0}, Lnet/robotmedia/billing/BillingService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, packageName:Ljava/lang/String;
    const-string v4, "ITEM_ID"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, itemId:Ljava/lang/String;
    const-string v4, "DEVELOPER_PAYLOAD"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, developerPayload:Ljava/lang/String;
    new-instance v3, Lnet/robotmedia/billing/BillingRequest$RequestPurchase;

    invoke-direct {v3, v2, p2, v1, v0}, Lnet/robotmedia/billing/BillingRequest$RequestPurchase;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 197
    .local v3, request:Lnet/robotmedia/billing/BillingRequest$RequestPurchase;
    invoke-direct {p0, v3}, Lnet/robotmedia/billing/BillingService;->runRequestOrQueue(Lnet/robotmedia/billing/BillingRequest;)V

    .line 198
    return-void
.end method

.method private restoreTransactions(Landroid/content/Intent;I)V
    .locals 7
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 201
    invoke-virtual {p0}, Lnet/robotmedia/billing/BillingService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, packageName:Ljava/lang/String;
    const-string v4, "EXTRA_NONCE"

    const-wide/16 v5, 0x0

    invoke-virtual {p1, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 203
    .local v0, nonce:J
    new-instance v3, Lnet/robotmedia/billing/BillingRequest$RestoreTransactions;

    invoke-direct {v3, v2, p2}, Lnet/robotmedia/billing/BillingRequest$RestoreTransactions;-><init>(Ljava/lang/String;I)V

    .line 204
    .local v3, request:Lnet/robotmedia/billing/BillingRequest$RestoreTransactions;
    invoke-virtual {v3, v0, v1}, Lnet/robotmedia/billing/BillingRequest$RestoreTransactions;->setNonce(J)V

    .line 205
    invoke-direct {p0, v3}, Lnet/robotmedia/billing/BillingService;->runRequestOrQueue(Lnet/robotmedia/billing/BillingRequest;)V

    .line 206
    return-void
.end method

.method public static restoreTransations(Landroid/content/Context;J)V
    .locals 2
    .parameter "context"
    .parameter "nonce"

    .prologue
    .line 88
    sget-object v1, Lnet/robotmedia/billing/BillingService$Action;->RESTORE_TRANSACTIONS:Lnet/robotmedia/billing/BillingService$Action;

    invoke-static {p0, v1}, Lnet/robotmedia/billing/BillingService;->createIntent(Landroid/content/Context;Lnet/robotmedia/billing/BillingService$Action;)Landroid/content/Intent;

    move-result-object v0

    .line 89
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lnet/robotmedia/billing/BillingService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 90
    const-string v1, "EXTRA_NONCE"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 92
    return-void
.end method

.method private runPendingRequests()V
    .locals 3

    .prologue
    .line 210
    const/4 v0, -0x1

    .line 211
    .local v0, maxStartId:I
    :cond_0
    :goto_0
    sget-object v2, Lnet/robotmedia/billing/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/robotmedia/billing/BillingRequest;

    .local v1, request:Lnet/robotmedia/billing/BillingRequest;
    if-nez v1, :cond_2

    .line 223
    if-ltz v0, :cond_1

    .line 224
    invoke-virtual {p0, v0}, Lnet/robotmedia/billing/BillingService;->stopSelf(I)V

    .line 226
    :cond_1
    :goto_1
    return-void

    .line 212
    :cond_2
    sget-object v2, Lnet/robotmedia/billing/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    if-eqz v2, :cond_3

    .line 213
    invoke-direct {p0, v1}, Lnet/robotmedia/billing/BillingService;->runRequest(Lnet/robotmedia/billing/BillingRequest;)V

    .line 214
    sget-object v2, Lnet/robotmedia/billing/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 215
    invoke-virtual {v1}, Lnet/robotmedia/billing/BillingRequest;->getStartId()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 216
    invoke-virtual {v1}, Lnet/robotmedia/billing/BillingRequest;->getStartId()I

    move-result v0

    goto :goto_0

    .line 219
    :cond_3
    invoke-direct {p0}, Lnet/robotmedia/billing/BillingService;->bindMarketBillingService()V

    goto :goto_1
.end method

.method private runRequest(Lnet/robotmedia/billing/BillingRequest;)V
    .locals 5
    .parameter "request"

    .prologue
    .line 230
    :try_start_0
    sget-object v3, Lnet/robotmedia/billing/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    invoke-virtual {p1, v3}, Lnet/robotmedia/billing/BillingRequest;->run(Lcom/android/vending/billing/IMarketBillingService;)J

    move-result-wide v1

    .line 231
    .local v1, requestId:J
    invoke-static {v1, v2, p1}, Lnet/robotmedia/billing/BillingController;->onRequestSent(JLnet/robotmedia/billing/BillingRequest;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .end local v1           #requestId:J
    :goto_0
    return-void

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Remote billing service crashed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private runRequestOrQueue(Lnet/robotmedia/billing/BillingRequest;)V
    .locals 1
    .parameter "request"

    .prologue
    .line 239
    sget-object v0, Lnet/robotmedia/billing/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 240
    sget-object v0, Lnet/robotmedia/billing/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    if-nez v0, :cond_0

    .line 241
    invoke-direct {p0}, Lnet/robotmedia/billing/BillingService;->bindMarketBillingService()V

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_0
    invoke-direct {p0}, Lnet/robotmedia/billing/BillingService;->runPendingRequests()V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 141
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 249
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 251
    sget-object v0, Lnet/robotmedia/billing/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    if-eqz v0, :cond_0

    .line 253
    :try_start_0
    invoke-virtual {p0, p0}, Lnet/robotmedia/billing/BillingService;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 254
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "name"
    .parameter "service"

    .prologue
    .line 146
    invoke-static {p2}, Lcom/android/vending/billing/IMarketBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v0

    sput-object v0, Lnet/robotmedia/billing/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    .line 147
    invoke-direct {p0}, Lnet/robotmedia/billing/BillingService;->runPendingRequests()V

    .line 148
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 152
    const/4 v0, 0x0

    sput-object v0, Lnet/robotmedia/billing/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    .line 153
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 160
    invoke-direct {p0, p1, p2}, Lnet/robotmedia/billing/BillingService;->handleCommand(Landroid/content/Intent;I)V

    .line 161
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 165
    invoke-direct {p0, p1, p3}, Lnet/robotmedia/billing/BillingService;->handleCommand(Landroid/content/Intent;I)V

    .line 166
    sget v0, Lnet/robotmedia/billing/utils/Compatibility;->START_NOT_STICKY:I

    return v0
.end method
