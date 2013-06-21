.class public Lcom/scoreloop/client/android/core/paymentprovider/fortumo/FortumoPaymentProviderController;
.super Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/ui/ProxyActivity$Delegate;


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;Lcom/scoreloop/client/android/core/model/PaymentProvider;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/UsedInternally;
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;Lcom/scoreloop/client/android/core/model/PaymentProvider;)V

    .line 31
    return-void
.end method

.method private h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/fortumo/FortumoPaymentProviderController;->getPrice()Lcom/scoreloop/client/android/core/model/Price;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Price;->c()Ljava/util/Map;

    move-result-object v0

    const-string v1, "service_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/fortumo/FortumoPaymentProviderController;->getPrice()Lcom/scoreloop/client/android/core/model/Price;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Price;->c()Ljava/util/Map;

    move-result-object v0

    const-string v1, "secret"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(ILandroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 52
    if-nez p1, :cond_1

    .line 53
    sget-object v0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;->CANCELED:Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;

    invoke-virtual {p0, v0, v4}, Lcom/scoreloop/client/android/core/paymentprovider/fortumo/FortumoPaymentProviderController;->a(Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;Ljava/lang/Exception;)V

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 55
    const-string v0, "com.fortumo.android.result.BILLINGSTATUS"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 56
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 64
    :pswitch_0
    sget-object v0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;->CANCELED:Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;

    invoke-virtual {p0, v0, v4}, Lcom/scoreloop/client/android/core/paymentprovider/fortumo/FortumoPaymentProviderController;->a(Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;Ljava/lang/Exception;)V

    goto :goto_0

    .line 58
    :pswitch_1
    sget-object v0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;->OK:Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;

    invoke-virtual {p0, v0, v4}, Lcom/scoreloop/client/android/core/paymentprovider/fortumo/FortumoPaymentProviderController;->a(Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;Ljava/lang/Exception;)V

    goto :goto_0

    .line 61
    :pswitch_2
    sget-object v0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;->FAILED:Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "failed!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/scoreloop/client/android/core/paymentprovider/fortumo/FortumoPaymentProviderController;->a(Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;Ljava/lang/Exception;)V

    goto :goto_0

    .line 67
    :pswitch_3
    const-string v0, "com.fortumo.android.result.MESSAGEID"

    const-wide/16 v1, -0x1

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pending Fortumo payment with id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 69
    sget-object v0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;->PENDING:Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;

    invoke-virtual {p0, v0, v4}, Lcom/scoreloop/client/android/core/paymentprovider/fortumo/FortumoPaymentProviderController;->a(Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;Ljava/lang/Exception;)V

    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final c_()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method protected final f()V
    .locals 3

    .prologue
    .line 82
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/fortumo/FortumoPaymentProviderController;->b()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/fortumo/android/FortumoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    const-string v1, "com.fortumo.android.extra.DISPLAY_STRING"

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/fortumo/FortumoPaymentProviderController;->getGameItem()Lcom/scoreloop/client/android/core/model/GameItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/GameItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const-string v1, "com.fortumo.android.extra.PRODUCT_NAME"

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/fortumo/FortumoPaymentProviderController;->getPayment()Lcom/scoreloop/client/android/core/model/Payment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Payment;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const-string v1, "com.fortumo.android.extra.SERVICE_ID"

    invoke-direct {p0}, Lcom/scoreloop/client/android/core/paymentprovider/fortumo/FortumoPaymentProviderController;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const-string v1, "com.fortumo.android.extra.APP_SECRET"

    invoke-direct {p0}, Lcom/scoreloop/client/android/core/paymentprovider/fortumo/FortumoPaymentProviderController;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/fortumo/FortumoPaymentProviderController;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/scoreloop/client/android/core/ui/ProxyActivity;->a(Landroid/content/Intent;Landroid/app/Activity;Lcom/scoreloop/client/android/core/ui/ProxyActivity$Delegate;)V

    .line 88
    return-void
.end method

.method protected final g()Z
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/paymentprovider/fortumo/FortumoPaymentProviderController;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/scoreloop/client/android/core/paymentprovider/fortumo/FortumoPaymentProviderController;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
