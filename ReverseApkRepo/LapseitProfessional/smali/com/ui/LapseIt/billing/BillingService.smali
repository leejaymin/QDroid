.class public Lcom/ui/LapseIt/billing/BillingService;
.super Landroid/app/Service;
.source "BillingService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private mService:Lcom/android/vending/billing/IMarketBillingService;

.field private requestQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 25
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ui/LapseIt/billing/BillingService;->requestQueue:Ljava/util/LinkedList;

    .line 21
    return-void
.end method

.method private bindToMarketBillingService()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 125
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.vending.billing.MarketBillingService.BIND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {p0, v3, p0, v4}, Lcom/ui/LapseIt/billing/BillingService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 127
    .local v0, bindResult:Z
    if-eqz v0, :cond_0

    .line 135
    .end local v0           #bindResult:Z
    :goto_0
    return v2

    .line 130
    .restart local v0       #bindResult:Z
    :cond_0
    const-string v2, "trace"

    const-string v3, "Error binding Market Billing Service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .end local v0           #bindResult:Z
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 132
    :catch_0
    move-exception v1

    .line 133
    .local v1, e:Ljava/lang/SecurityException;
    const-string v2, "trace"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Security Exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private checkBillingSupported()Z
    .locals 4

    .prologue
    .line 37
    :try_start_0
    iget-object v2, p0, Lcom/ui/LapseIt/billing/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    const-string v3, "CHECK_BILLING_SUPPORTED"

    invoke-virtual {p0, v3}, Lcom/ui/LapseIt/billing/BillingService;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 38
    .local v1, response:Landroid/os/Bundle;
    const-string v2, "RESPONSE_CODE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Lcom/ui/LapseIt/billing/BillingConsts$ResponseCode;->RESULT_OK:Lcom/ui/LapseIt/billing/BillingConsts$ResponseCode;

    invoke-virtual {v3}, Lcom/ui/LapseIt/billing/BillingConsts$ResponseCode;->ordinal()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v2, v3, :cond_0

    .line 39
    const/4 v2, 0x1

    .line 44
    .end local v1           #response:Landroid/os/Bundle;
    :goto_0
    return v2

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 44
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getPurchaseInformation([Ljava/lang/String;)V
    .locals 6
    .parameter "notifyIds"

    .prologue
    .line 68
    :try_start_0
    const-string v5, "SHA1PRNG"

    invoke-static {v5}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v4

    .line 69
    .local v4, secRand:Ljava/security/SecureRandom;
    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 70
    invoke-virtual {v4}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v1

    .line 72
    .local v1, nonce:J
    const-string v5, "GET_PURCHASE_INFORMATION"

    invoke-virtual {p0, v5}, Lcom/ui/LapseIt/billing/BillingService;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 73
    .local v3, request:Landroid/os/Bundle;
    const-string v5, "NONCE"

    invoke-virtual {v3, v5, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 74
    const-string v5, "NOTIFY_IDS"

    invoke-virtual {v3, v5, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 75
    iget-object v5, p0, Lcom/ui/LapseIt/billing/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    invoke-interface {v5, v3}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    .line 81
    .end local v1           #nonce:J
    .end local v3           #request:Landroid/os/Bundle;
    .end local v4           #secRand:Ljava/security/SecureRandom;
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 78
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 79
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    .line 109
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, action:Ljava/lang/String;
    const-string v4, "ACTION_REQUEST_PURCHASE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 112
    invoke-direct {p0}, Lcom/ui/LapseIt/billing/BillingService;->makeRequestPurchase()V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    const-string v4, "ACTION_VERIFY_PURCHASE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 114
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "notification_id"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 115
    .local v3, notifyId:[Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/ui/LapseIt/billing/BillingService;->getPurchaseInformation([Ljava/lang/String;)V

    goto :goto_0

    .line 116
    .end local v3           #notifyId:[Ljava/lang/String;
    :cond_2
    const-string v4, "ACTION_RESTORE_PURCHASE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 117
    const-string v4, "trace"

    const-string v5, "Restoring purchase"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const-string v4, "NONCE"

    const-wide/16 v5, -0x1

    invoke-virtual {p1, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 119
    .local v1, nonce:J
    invoke-direct {p0, v1, v2}, Lcom/ui/LapseIt/billing/BillingService;->restoreTransaction(J)V

    goto :goto_0
.end method

.method private makeRequestPurchase()V
    .locals 7

    .prologue
    .line 49
    :try_start_0
    const-string v4, "REQUEST_PURCHASE"

    invoke-virtual {p0, v4}, Lcom/ui/LapseIt/billing/BillingService;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 50
    .local v2, request:Landroid/os/Bundle;
    const-string v4, "ITEM_ID"

    const-string v5, "android.test.purchased"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v4, p0, Lcom/ui/LapseIt/billing/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    invoke-interface {v4, v2}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 52
    .local v3, response:Landroid/os/Bundle;
    const-string v4, "RESPONSE_CODE"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Lcom/ui/LapseIt/billing/BillingConsts$ResponseCode;->RESULT_OK:Lcom/ui/LapseIt/billing/BillingConsts$ResponseCode;

    invoke-virtual {v5}, Lcom/ui/LapseIt/billing/BillingConsts$ResponseCode;->ordinal()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 53
    const-string v4, "trace"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PURCHASE_INTENT"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const-string v4, "trace"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "REQUEST_ID"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const-string v4, "PURCHASE_INTENT"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 57
    .local v1, purchaseIntent:Landroid/app/PendingIntent;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 64
    .end local v1           #purchaseIntent:Landroid/app/PendingIntent;
    .end local v2           #request:Landroid/os/Bundle;
    .end local v3           #response:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 61
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 62
    .local v0, e:Landroid/app/PendingIntent$CanceledException;
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_0
.end method

.method private restoreTransaction(J)V
    .locals 3
    .parameter "nonce"

    .prologue
    .line 85
    :try_start_0
    const-string v2, "RESTORE_TRANSACTIONS"

    invoke-virtual {p0, v2}, Lcom/ui/LapseIt/billing/BillingService;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 86
    .local v1, request:Landroid/os/Bundle;
    const-string v2, "NONCE"

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 87
    iget-object v2, p0, Lcom/ui/LapseIt/billing/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    invoke-interface {v2, v1}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v1           #request:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public handleCommand(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/ui/LapseIt/billing/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    if-eqz v0, :cond_0

    .line 101
    invoke-direct {p0, p1}, Lcom/ui/LapseIt/billing/BillingService;->handleIntent(Landroid/content/Intent;)V

    .line 106
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/ui/LapseIt/billing/BillingService;->requestQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-direct {p0}, Lcom/ui/LapseIt/billing/BillingService;->bindToMarketBillingService()Z

    goto :goto_0
.end method

.method protected makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .parameter "method"

    .prologue
    .line 28
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 29
    .local v0, request:Landroid/os/Bundle;
    const-string v1, "BILLING_REQUEST"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v1, "API_VERSION"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 31
    const-string v1, "PACKAGE_NAME"

    invoke-virtual {p0}, Lcom/ui/LapseIt/billing/BillingService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 140
    const/4 v0, 0x0

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "service"

    .prologue
    .line 145
    invoke-static {p2}, Lcom/android/vending/billing/IMarketBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v1

    iput-object v1, p0, Lcom/ui/LapseIt/billing/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    .line 147
    invoke-direct {p0}, Lcom/ui/LapseIt/billing/BillingService;->checkBillingSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/ui/LapseIt/billing/BillingService;->requestQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 155
    :cond_0
    return-void

    .line 148
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 149
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/ui/LapseIt/billing/BillingService;->handleIntent(Landroid/content/Intent;)V

    .line 150
    iget-object v2, p0, Lcom/ui/LapseIt/billing/BillingService;->requestQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ui/LapseIt/billing/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    .line 160
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 95
    invoke-virtual {p0, p1, p2}, Lcom/ui/LapseIt/billing/BillingService;->handleCommand(Landroid/content/Intent;I)V

    .line 96
    return-void
.end method
