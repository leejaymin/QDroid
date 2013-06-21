.class public Lnet/robotmedia/billing/BillingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BillingReceiver.java"


# static fields
.field static final ACTION_NOTIFY:Ljava/lang/String; = "com.android.vending.billing.IN_APP_NOTIFY"

.field static final ACTION_PURCHASE_STATE_CHANGED:Ljava/lang/String; = "com.android.vending.billing.PURCHASE_STATE_CHANGED"

.field static final ACTION_RESPONSE_CODE:Ljava/lang/String; = "com.android.vending.billing.RESPONSE_CODE"

.field static final EXTRA_INAPP_SIGNATURE:Ljava/lang/String; = "inapp_signature"

.field static final EXTRA_INAPP_SIGNED_DATA:Ljava/lang/String; = "inapp_signed_data"

.field static final EXTRA_NOTIFICATION_ID:Ljava/lang/String; = "notification_id"

.field static final EXTRA_REQUEST_ID:Ljava/lang/String; = "request_id"

.field static final EXTRA_RESPONSE_CODE:Ljava/lang/String; = "response_code"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private notify(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 60
    const-string v1, "notification_id"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, notifyId:Ljava/lang/String;
    invoke-static {p1, v0}, Lnet/robotmedia/billing/BillingController;->onNotify(Landroid/content/Context;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method private purchaseStateChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 54
    const-string v2, "inapp_signed_data"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, signedData:Ljava/lang/String;
    const-string v2, "inapp_signature"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, signature:Ljava/lang/String;
    invoke-static {p1, v1, v0}, Lnet/robotmedia/billing/BillingController;->onPurchaseStateChanged(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method private responseCode(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 65
    const-string v3, "request_id"

    const-wide/16 v4, -0x1

    invoke-virtual {p2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 66
    .local v0, requestId:J
    const-string v3, "response_code"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 67
    .local v2, responseCode:I
    invoke-static {p1, v0, v1, v2}, Lnet/robotmedia/billing/BillingController;->onResponseCode(Landroid/content/Context;JI)V

    .line 68
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 39
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, action:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/robotmedia/billing/BillingController;->debug(Ljava/lang/String;)V

    .line 42
    const-string v1, "com.android.vending.billing.PURCHASE_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    invoke-direct {p0, p1, p2}, Lnet/robotmedia/billing/BillingReceiver;->purchaseStateChanged(Landroid/content/Context;Landroid/content/Intent;)V

    .line 51
    :goto_0
    return-void

    .line 44
    :cond_0
    const-string v1, "com.android.vending.billing.IN_APP_NOTIFY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    invoke-direct {p0, p1, p2}, Lnet/robotmedia/billing/BillingReceiver;->notify(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 46
    :cond_1
    const-string v1, "com.android.vending.billing.RESPONSE_CODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 47
    invoke-direct {p0, p1, p2}, Lnet/robotmedia/billing/BillingReceiver;->responseCode(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected action: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
