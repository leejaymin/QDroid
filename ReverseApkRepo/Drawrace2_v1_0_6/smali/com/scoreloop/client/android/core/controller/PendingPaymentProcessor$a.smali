.class final Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/util/JSONSerializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Z

.field b:Lcom/scoreloop/client/android/core/model/Payment;

.field c:Lcom/scoreloop/client/android/core/model/PaymentProvider;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method constructor <init>(Lcom/scoreloop/client/android/core/model/Payment;Lcom/scoreloop/client/android/core/model/PaymentProvider;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$a;->b:Lcom/scoreloop/client/android/core/model/Payment;

    .line 47
    iput-object p2, p0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$a;->c:Lcom/scoreloop/client/android/core/model/PaymentProvider;

    .line 49
    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 67
    new-instance v0, Lcom/scoreloop/client/android/core/model/Payment;

    invoke-direct {v0}, Lcom/scoreloop/client/android/core/model/Payment;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$a;->b:Lcom/scoreloop/client/android/core/model/Payment;

    .line 68
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$a;->b:Lcom/scoreloop/client/android/core/model/Payment;

    const-string v1, "payment"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/model/Payment;->a(Lorg/json/JSONObject;)V

    .line 69
    const-string v0, "provider"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/scoreloop/client/android/core/model/PaymentProvider;->a(Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/PaymentProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$a;->c:Lcom/scoreloop/client/android/core/model/PaymentProvider;

    .line 70
    return-void
.end method

.method public final b_()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 58
    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$a;->b:Lcom/scoreloop/client/android/core/model/Payment;

    if-eqz v1, :cond_0

    .line 59
    const-string v1, "payment"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$a;->b:Lcom/scoreloop/client/android/core/model/Payment;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Payment;->b_()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    :cond_0
    const-string v1, "provider"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$a;->c:Lcom/scoreloop/client/android/core/model/PaymentProvider;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/PaymentProvider;->getKind()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    return-object v0
.end method
