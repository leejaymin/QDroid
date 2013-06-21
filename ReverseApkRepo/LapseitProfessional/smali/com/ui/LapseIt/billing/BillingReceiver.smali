.class public Lcom/ui/LapseIt/billing/BillingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BillingReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private handleInAppNotify(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 35
    const-string v2, "notification_id"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, notifyId:Ljava/lang/String;
    const-string v2, "trace"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Notify Purchase ID: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    new-instance v0, Landroid/content/Intent;

    const-string v2, "ACTION_VERIFY_PURCHASE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    .local v0, i:Landroid/content/Intent;
    const-string v2, "notification_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    const-class v2, Lcom/ui/LapseIt/billing/BillingService;

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 40
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 41
    return-void
.end method

.method private handlePurchaseStateChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 44
    const-string v6, "inapp_signed_data"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 48
    .local v5, signedData:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 49
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 51
    .local v2, jsonData:Lorg/json/JSONObject;
    const-string v6, "nonce"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, nonceString:Ljava/lang/String;
    const-string v6, "orders"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 54
    .local v4, ordersData:Lorg/json/JSONArray;
    const-string v6, "trace"

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const-string v6, "trace"

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v1, Landroid/content/Intent;

    const-string v6, "ACTION_RESTORE_PURCHASE"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 58
    .local v1, i:Landroid/content/Intent;
    const-string v6, "NONCE"

    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const-class v6, Lcom/ui/LapseIt/billing/BillingService;

    invoke-virtual {v1, p1, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 60
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 67
    .end local v1           #i:Landroid/content/Intent;
    .end local v2           #jsonData:Lorg/json/JSONObject;
    .end local v3           #nonceString:Ljava/lang/String;
    .end local v4           #ordersData:Lorg/json/JSONArray;
    :goto_0
    return-void

    .line 62
    :cond_0
    const-string v6, "trace"

    const-string v7, "Signed data is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private handleResponseCode(JI)V
    .locals 3
    .parameter "requestId"
    .parameter "responseCode"

    .prologue
    .line 31
    const-string v0, "trace"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Response code is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 16
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 17
    .local v0, action:Ljava/lang/String;
    const-string v4, "trace"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Received a broadcast: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    const-string v4, "com.android.vending.billing.RESPONSE_CODE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 20
    const-string v4, "request_id"

    const-wide/16 v5, -0x1

    invoke-virtual {p2, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 21
    .local v1, requestId:J
    const-string v4, "response_code"

    sget-object v5, Lcom/ui/LapseIt/billing/BillingConsts$ResponseCode;->RESULT_ERROR:Lcom/ui/LapseIt/billing/BillingConsts$ResponseCode;

    invoke-virtual {v5}, Lcom/ui/LapseIt/billing/BillingConsts$ResponseCode;->ordinal()I

    move-result v5

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 22
    .local v3, responseCode:I
    invoke-direct {p0, v1, v2, v3}, Lcom/ui/LapseIt/billing/BillingReceiver;->handleResponseCode(JI)V

    .line 28
    .end local v1           #requestId:J
    .end local v3           #responseCode:I
    :cond_0
    :goto_0
    return-void

    .line 23
    :cond_1
    const-string v4, "com.android.vending.billing.IN_APP_NOTIFY"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/ui/LapseIt/billing/BillingReceiver;->handleInAppNotify(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 25
    :cond_2
    const-string v4, "com.android.vending.billing.PURCHASE_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/ui/LapseIt/billing/BillingReceiver;->handlePurchaseStateChanged(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
