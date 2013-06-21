.class abstract Lcom/scoreloop/client/android/core/controller/PaymentController$f;
.super Lcom/scoreloop/client/android/core/controller/PaymentController$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/controller/PaymentController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "f"
.end annotation


# instance fields
.field private final d:Lcom/scoreloop/client/android/core/model/Payment$Credential;


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/model/Payment;Lcom/scoreloop/client/android/core/model/Payment$Credential;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/scoreloop/client/android/core/controller/PaymentController$d;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/model/Payment;)V

    .line 104
    iput-object p5, p0, Lcom/scoreloop/client/android/core/controller/PaymentController$f;->d:Lcom/scoreloop/client/android/core/model/Payment$Credential;

    .line 105
    return-void
.end method


# virtual methods
.method public final b()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 109
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/PaymentController$f;->b:Lcom/scoreloop/client/android/core/model/Payment;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Payment;->b_()Lorg/json/JSONObject;

    move-result-object v1

    .line 112
    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/PaymentController$f;->d:Lcom/scoreloop/client/android/core/model/Payment$Credential;

    if-eqz v2, :cond_0

    .line 113
    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/PaymentController$f;->d:Lcom/scoreloop/client/android/core/model/Payment$Credential;

    invoke-interface {v2, v1}, Lcom/scoreloop/client/android/core/model/Payment$Credential;->a(Lorg/json/JSONObject;)V

    .line 115
    :cond_0
    sget-object v2, Lcom/scoreloop/client/android/core/model/Payment;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    return-object v0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Invalid payment data"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final c()Lcom/scoreloop/client/android/core/server/RequestMethod;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/scoreloop/client/android/core/server/RequestMethod;->PUT:Lcom/scoreloop/client/android/core/server/RequestMethod;

    return-object v0
.end method
