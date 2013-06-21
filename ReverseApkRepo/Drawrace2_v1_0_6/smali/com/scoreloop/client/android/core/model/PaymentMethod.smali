.class public Lcom/scoreloop/client/android/core/model/PaymentMethod;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/scoreloop/client/android/core/model/PaymentProvider;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/model/Price;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/scoreloop/client/android/core/model/PaymentProvider;Lorg/json/JSONObject;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/PaymentMethod;->b:Ljava/util/List;

    .line 36
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/PaymentMethod;->a:Lcom/scoreloop/client/android/core/model/PaymentProvider;

    .line 39
    const-string v0, "prices"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 41
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 42
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "price"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 43
    new-instance v4, Lcom/scoreloop/client/android/core/model/Price;

    invoke-direct {v4, v3}, Lcom/scoreloop/client/android/core/model/Price;-><init>(Lorg/json/JSONObject;)V

    .line 44
    iget-object v3, p0, Lcom/scoreloop/client/android/core/model/PaymentMethod;->b:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    :cond_0
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/scoreloop/client/android/core/model/PaymentMethod;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-static {p0}, Lcom/scoreloop/client/android/core/model/PaymentProvider;->a(Lorg/json/JSONObject;)Lcom/scoreloop/client/android/core/model/PaymentProvider;

    move-result-object v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    new-instance v0, Lcom/scoreloop/client/android/core/model/PaymentMethod;

    invoke-direct {v0, v1, p0}, Lcom/scoreloop/client/android/core/model/PaymentMethod;-><init>(Lcom/scoreloop/client/android/core/model/PaymentProvider;Lorg/json/JSONObject;)V

    .line 29
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/PaymentMethod;->a:Lcom/scoreloop/client/android/core/model/PaymentProvider;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/PaymentProvider;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPaymentProvider()Lcom/scoreloop/client/android/core/model/PaymentProvider;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/PaymentMethod;->a:Lcom/scoreloop/client/android/core/model/PaymentProvider;

    return-object v0
.end method

.method public getPrices()Ljava/util/List;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/model/Price;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/PaymentMethod;->b:Ljava/util/List;

    return-object v0
.end method
