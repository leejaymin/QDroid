.class public Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Lcom/scoreloop/client/android/core/model/Payment;

.field private final d:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$PurchaseState;


# direct methods
.method private constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "orderId"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    const-string v0, "notificationId"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;->b:Ljava/lang/String;

    .line 42
    const-string v0, "developerPayload"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;->a:Ljava/lang/String;

    .line 43
    const-string v0, "purchaseState"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$PurchaseState;->valueOf(I)Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$PurchaseState;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;->d:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$PurchaseState;

    .line 44
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 22
    const-string v2, "orders"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 23
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 24
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 25
    new-instance v4, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 27
    :cond_0
    return-object v1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/scoreloop/client/android/core/model/Payment;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;->c:Lcom/scoreloop/client/android/core/model/Payment;

    .line 68
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lcom/scoreloop/client/android/core/model/Payment;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;->c:Lcom/scoreloop/client/android/core/model/Payment;

    return-object v0
.end method

.method public final d()Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$PurchaseState;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;->d:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$PurchaseState;

    return-object v0
.end method
