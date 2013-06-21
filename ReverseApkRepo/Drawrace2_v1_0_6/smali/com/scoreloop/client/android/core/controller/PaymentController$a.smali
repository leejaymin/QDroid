.class Lcom/scoreloop/client/android/core/controller/PaymentController$a;
.super Lcom/scoreloop/client/android/core/controller/PaymentController$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/controller/PaymentController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/model/Payment;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/scoreloop/client/android/core/controller/PaymentController$d;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/model/Payment;)V

    .line 36
    const-class v0, Lcom/scoreloop/client/android/core/controller/PaymentController$a;

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/controller/PaymentController$a;->a(Ljava/lang/Object;)V

    .line 37
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 41
    const-string v0, "/service/games/%s/users/%s/payments"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/scoreloop/client/android/core/controller/PaymentController$a;->a:Lcom/scoreloop/client/android/core/model/Game;

    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/model/Game;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/scoreloop/client/android/core/controller/PaymentController$a;->c:Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/model/User;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 46
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 48
    :try_start_0
    sget-object v1, Lcom/scoreloop/client/android/core/model/Payment;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/PaymentController$a;->b:Lcom/scoreloop/client/android/core/model/Payment;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Payment;->b_()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    return-object v0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Invalid payment data"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final c()Lcom/scoreloop/client/android/core/server/RequestMethod;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/scoreloop/client/android/core/server/RequestMethod;->POST:Lcom/scoreloop/client/android/core/server/RequestMethod;

    return-object v0
.end method
