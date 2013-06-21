.class public abstract Lcom/scoreloop/client/android/core/settings/CommonSettings$Payment;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/settings/CommonSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Payment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/core/settings/CommonSettings$Payment$ZongPayment;,
        Lcom/scoreloop/client/android/core/settings/CommonSettings$Payment$SLVirtualCurrencyPayment;,
        Lcom/scoreloop/client/android/core/settings/CommonSettings$Payment$PayPalXPayment;,
        Lcom/scoreloop/client/android/core/settings/CommonSettings$Payment$PayPalPayment;,
        Lcom/scoreloop/client/android/core/settings/CommonSettings$Payment$GoogleMarketPayment;,
        Lcom/scoreloop/client/android/core/settings/CommonSettings$Payment$GoogleCheckoutPayment;,
        Lcom/scoreloop/client/android/core/settings/CommonSettings$Payment$FortumoPayment;,
        Lcom/scoreloop/client/android/core/settings/CommonSettings$Payment$CreditCardPayment;,
        Lcom/scoreloop/client/android/core/settings/CommonSettings$Payment$BokuPayment;
    }
.end annotation


# static fields
.field static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 70
    sput-object v0, Lcom/scoreloop/client/android/core/settings/CommonSettings$Payment;->a:Ljava/util/Map;

    const-string v1, "google_checkout"

    const-string v2, "com.scoreloop.client.android.core.paymentprovider.web.WebPaymentProvider"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/scoreloop/client/android/core/settings/CommonSettings$Payment;->a:Ljava/util/Map;

    const-string v1, "google_market"

    const-string v2, "com.scoreloop.client.android.core.paymentprovider.googlemarket.GoogleMarketPaymentProvider"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/scoreloop/client/android/core/settings/CommonSettings$Payment;->a:Ljava/util/Map;

    const-string v1, "boku"

    const-string v2, "com.scoreloop.client.android.core.paymentprovider.boku.BokuPaymentProvider"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/scoreloop/client/android/core/settings/CommonSettings$Payment;->a:Ljava/util/Map;

    const-string v1, "credit_card"

    const-string v2, "com.scoreloop.client.android.core.paymentprovider.web.WebPaymentProvider"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/scoreloop/client/android/core/settings/CommonSettings$Payment;->a:Ljava/util/Map;

    const-string v1, "game_currency"

    const-string v2, "com.scoreloop.client.android.core.paymentprovider.virtualcurrency.SLVirtualCurrencyPaymentProvider"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/scoreloop/client/android/core/settings/CommonSettings$Payment;->a:Ljava/util/Map;

    const-string v1, "paypal_mobile"

    const-string v2, "com.scoreloop.client.android.core.paymentprovider.paypalx.PayPalXPaymentProvider"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/scoreloop/client/android/core/settings/CommonSettings$Payment;->a:Ljava/util/Map;

    const-string v1, "zong"

    const-string v2, "com.scoreloop.client.android.core.paymentprovider.zong.ZongPaymentProvider"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method
