.class public Lutil/googleiap/BillingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BillingReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BillingReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private checkResponseCode(Landroid/content/Context;JI)V
    .locals 2
    .parameter "context"
    .parameter "requestId"
    .parameter "responseCodeIndex"

    .prologue
    .line 113
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.RESPONSE_CODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lutil/googleiap/BillingService;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 115
    const-string v1, "request_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 116
    const-string v1, "response_code"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 117
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 118
    return-void
.end method

.method private notify(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "notifyId"

    .prologue
    .line 98
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lutil/googleiap/Consts;->ACTION_GET_PURCHASE_INFORMATION:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lutil/googleiap/BillingService;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 100
    const-string v1, "notification_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 102
    return-void
.end method

.method private purchaseStateChanged(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "signedData"
    .parameter "signature"

    .prologue
    .line 79
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.PURCHASE_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lutil/googleiap/BillingService;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 81
    const-string v1, "inapp_signed_data"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const-string v1, "inapp_signature"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 84
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 49
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, action:Ljava/lang/String;
    const-string v7, "com.android.vending.billing.PURCHASE_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 51
    const-string v7, "inapp_signed_data"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 52
    .local v6, signedData:Ljava/lang/String;
    const-string v7, "inapp_signature"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 53
    .local v5, signature:Ljava/lang/String;
    invoke-direct {p0, p1, v6, v5}, Lutil/googleiap/BillingReceiver;->purchaseStateChanged(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .end local v5           #signature:Ljava/lang/String;
    .end local v6           #signedData:Ljava/lang/String;
    :goto_0
    return-void

    .line 54
    :cond_0
    const-string v7, "com.android.vending.billing.IN_APP_NOTIFY"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 55
    const-string v7, "notification_id"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, notifyId:Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Lutil/googleiap/BillingReceiver;->notify(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 60
    .end local v1           #notifyId:Ljava/lang/String;
    :cond_1
    const-string v7, "com.android.vending.billing.RESPONSE_CODE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 61
    const-string v7, "request_id"

    const-wide/16 v8, -0x1

    invoke-virtual {p2, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 62
    .local v2, requestId:J
    const-string v7, "response_code"

    sget-object v8, Lutil/googleiap/Consts$ResponseCode;->RESULT_ERROR:Lutil/googleiap/Consts$ResponseCode;

    invoke-virtual {v8}, Lutil/googleiap/Consts$ResponseCode;->ordinal()I

    move-result v8

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 63
    .local v4, responseCodeIndex:I
    invoke-direct {p0, p1, v2, v3, v4}, Lutil/googleiap/BillingReceiver;->checkResponseCode(Landroid/content/Context;JI)V

    goto :goto_0

    .line 65
    .end local v2           #requestId:J
    .end local v4           #responseCodeIndex:I
    :cond_2
    const-string v7, "BillingReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unexpected action: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
