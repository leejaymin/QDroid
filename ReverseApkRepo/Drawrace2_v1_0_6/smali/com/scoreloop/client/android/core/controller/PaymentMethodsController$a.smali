.class final Lcom/scoreloop/client/android/core/controller/PaymentMethodsController$a;
.super Lcom/scoreloop/client/android/core/server/Request;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/controller/PaymentMethodsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/scoreloop/client/android/core/model/Device;


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/Entity;Lcom/scoreloop/client/android/core/model/Device;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/core/server/Request;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;)V

    .line 44
    sget-object v0, Lcom/scoreloop/client/android/core/server/RequestMethod;->GET:Lcom/scoreloop/client/android/core/server/RequestMethod;

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/controller/PaymentMethodsController$a;->a(Lcom/scoreloop/client/android/core/server/RequestMethod;)V

    .line 45
    const-string v0, "/service/games/%s/items/%s/price_tier/payment_methods"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/model/Game;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-interface {p3}, Lcom/scoreloop/client/android/core/model/Entity;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/controller/PaymentMethodsController$a;->a(Ljava/lang/String;)V

    .line 46
    const-wide/32 v0, 0x927c0

    invoke-virtual {p0, v0, v1}, Lcom/scoreloop/client/android/core/controller/PaymentMethodsController$a;->a(J)V

    .line 48
    iput-object p4, p0, Lcom/scoreloop/client/android/core/controller/PaymentMethodsController$a;->b:Lcom/scoreloop/client/android/core/model/Device;

    .line 49
    iput-object p5, p0, Lcom/scoreloop/client/android/core/controller/PaymentMethodsController$a;->a:Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method public final b()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 54
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 57
    :try_start_0
    const-string v1, "device_id"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/PaymentMethodsController$a;->b:Lcom/scoreloop/client/android/core/model/Device;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Device;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    const-string v1, "currency"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/PaymentMethodsController$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    return-object v0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Invalid device data"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
