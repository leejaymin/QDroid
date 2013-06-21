.class public Lcom/scoreloop/client/android/core/controller/PaymentController;
.super Lcom/scoreloop/client/android/core/controller/RequestController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/core/controller/PaymentController$e;,
        Lcom/scoreloop/client/android/core/controller/PaymentController$c;,
        Lcom/scoreloop/client/android/core/controller/PaymentController$f;,
        Lcom/scoreloop/client/android/core/controller/PaymentController$d;,
        Lcom/scoreloop/client/android/core/controller/PaymentController$b;,
        Lcom/scoreloop/client/android/core/controller/PaymentController$a;
    }
.end annotation


# instance fields
.field private b:Lcom/scoreloop/client/android/core/model/Payment;


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V
    .locals 1
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/scoreloop/client/android/core/controller/PaymentController;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    .line 171
    return-void
.end method

.method public constructor <init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V
    .locals 0
    .parameter
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 181
    invoke-direct {p0, p1, p2}, Lcom/scoreloop/client/android/core/controller/RequestController;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    .line 182
    return-void
.end method


# virtual methods
.method public final a(Lcom/scoreloop/client/android/core/model/Payment$Credential;)V
    .locals 6
    .parameter

    .prologue
    .line 229
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/PaymentController;->b:Lcom/scoreloop/client/android/core/model/Payment;

    if-nez v0, :cond_0

    .line 230
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "payment is null. have you called setPayment() ?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/PaymentController;->a_()V

    .line 233
    new-instance v0, Lcom/scoreloop/client/android/core/controller/PaymentController$c;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/PaymentController;->e()Lcom/scoreloop/client/android/core/controller/RequestController$b;

    move-result-object v1

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/PaymentController;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v2

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/PaymentController;->g()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v3

    iget-object v4, p0, Lcom/scoreloop/client/android/core/controller/PaymentController;->b:Lcom/scoreloop/client/android/core/model/Payment;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/scoreloop/client/android/core/controller/PaymentController$c;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/model/Payment;Lcom/scoreloop/client/android/core/model/Payment$Credential;)V

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/controller/PaymentController;->b(Lcom/scoreloop/client/android/core/server/Request;)V

    .line 234
    return-void
.end method

.method final a(Lcom/scoreloop/client/android/core/server/Request;Lcom/scoreloop/client/android/core/server/Response;)Z
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v6, 0xc8

    const/4 v1, 0x1

    .line 249
    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/server/Response;->f()I

    move-result v2

    .line 250
    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/server/Response;->e()Lorg/json/JSONObject;

    move-result-object v0

    sget-object v3, Lcom/scoreloop/client/android/core/model/Payment;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 252
    const/4 v0, 0x0

    .line 253
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/server/Request;->l()Ljava/lang/Object;

    move-result-object v4

    const-class v5, Lcom/scoreloop/client/android/core/controller/PaymentController$a;

    if-ne v4, v5, :cond_2

    .line 254
    const/16 v4, 0xc9

    if-eq v2, v4, :cond_0

    if-ne v2, v6, :cond_1

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/PaymentController;->b:Lcom/scoreloop/client/android/core/model/Payment;

    invoke-virtual {v0, v3}, Lcom/scoreloop/client/android/core/model/Payment;->a(Lorg/json/JSONObject;)V

    move v0, v1

    .line 274
    :cond_1
    :goto_0
    if-nez v0, :cond_7

    .line 275
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request failed with status: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_2
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/server/Request;->l()Ljava/lang/Object;

    move-result-object v4

    const-class v5, Lcom/scoreloop/client/android/core/controller/PaymentController$b;

    if-ne v4, v5, :cond_3

    .line 259
    if-ne v2, v6, :cond_1

    .line 260
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/PaymentController;->b:Lcom/scoreloop/client/android/core/model/Payment;

    invoke-virtual {v0, v3}, Lcom/scoreloop/client/android/core/model/Payment;->a(Lorg/json/JSONObject;)V

    move v0, v1

    .line 261
    goto :goto_0

    .line 263
    :cond_3
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/server/Request;->l()Ljava/lang/Object;

    move-result-object v4

    const-class v5, Lcom/scoreloop/client/android/core/controller/PaymentController$c;

    if-eq v4, v5, :cond_4

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/server/Request;->l()Ljava/lang/Object;

    move-result-object v4

    const-class v5, Lcom/scoreloop/client/android/core/controller/PaymentController$e;

    if-ne v4, v5, :cond_1

    .line 264
    :cond_4
    if-eqz v3, :cond_5

    .line 265
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/PaymentController;->b:Lcom/scoreloop/client/android/core/model/Payment;

    invoke-virtual {v0, v3}, Lcom/scoreloop/client/android/core/model/Payment;->a(Lorg/json/JSONObject;)V

    .line 267
    :cond_5
    if-ne v2, v6, :cond_6

    move v0, v1

    .line 268
    goto :goto_0

    .line 270
    :cond_6
    invoke-static {p2}, Lcom/scoreloop/client/android/core/controller/RequestControllerException;->a(Lcom/scoreloop/client/android/core/server/Response;)Lcom/scoreloop/client/android/core/controller/RequestControllerException;

    move-result-object v0

    throw v0

    .line 277
    :cond_7
    return v1
.end method

.method public final b()V
    .locals 5

    .prologue
    .line 188
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/PaymentController;->b:Lcom/scoreloop/client/android/core/model/Payment;

    if-nez v0, :cond_0

    .line 189
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "payment is null. have you called setPayment() ?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/PaymentController;->a_()V

    .line 192
    new-instance v0, Lcom/scoreloop/client/android/core/controller/PaymentController$a;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/PaymentController;->e()Lcom/scoreloop/client/android/core/controller/RequestController$b;

    move-result-object v1

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/PaymentController;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v2

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/PaymentController;->g()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v3

    iget-object v4, p0, Lcom/scoreloop/client/android/core/controller/PaymentController;->b:Lcom/scoreloop/client/android/core/model/Payment;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/scoreloop/client/android/core/controller/PaymentController$a;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/model/Payment;)V

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/controller/PaymentController;->b(Lcom/scoreloop/client/android/core/server/Request;)V

    .line 193
    return-void
.end method

.method public final b(Lcom/scoreloop/client/android/core/model/Payment$Credential;)V
    .locals 6
    .parameter

    .prologue
    .line 240
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/PaymentController;->b:Lcom/scoreloop/client/android/core/model/Payment;

    if-nez v0, :cond_0

    .line 241
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "payment is null. have you called setPayment() ?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/PaymentController;->a_()V

    .line 244
    new-instance v0, Lcom/scoreloop/client/android/core/controller/PaymentController$e;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/PaymentController;->e()Lcom/scoreloop/client/android/core/controller/RequestController$b;

    move-result-object v1

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/PaymentController;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v2

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/PaymentController;->g()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v3

    iget-object v4, p0, Lcom/scoreloop/client/android/core/controller/PaymentController;->b:Lcom/scoreloop/client/android/core/model/Payment;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/scoreloop/client/android/core/controller/PaymentController$e;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/model/Payment;Lcom/scoreloop/client/android/core/model/Payment$Credential;)V

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/controller/PaymentController;->b(Lcom/scoreloop/client/android/core/server/Request;)V

    .line 245
    return-void
.end method

.method public getPayment()Lcom/scoreloop/client/android/core/model/Payment;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 201
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/PaymentController;->b:Lcom/scoreloop/client/android/core/model/Payment;

    instance-of v0, v0, Lcom/scoreloop/client/android/core/model/Payment;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/PaymentController;->b:Lcom/scoreloop/client/android/core/model/Payment;

    .line 204
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadPayment()V
    .locals 5
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/PaymentController;->b:Lcom/scoreloop/client/android/core/model/Payment;

    if-nez v0, :cond_0

    .line 219
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "payment is null. have you called setPayment() ?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/PaymentController;->a_()V

    .line 222
    new-instance v0, Lcom/scoreloop/client/android/core/controller/PaymentController$b;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/PaymentController;->e()Lcom/scoreloop/client/android/core/controller/RequestController$b;

    move-result-object v1

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/PaymentController;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v2

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/PaymentController;->g()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v3

    iget-object v4, p0, Lcom/scoreloop/client/android/core/controller/PaymentController;->b:Lcom/scoreloop/client/android/core/model/Payment;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/scoreloop/client/android/core/controller/PaymentController$b;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/model/Payment;)V

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/controller/PaymentController;->b(Lcom/scoreloop/client/android/core/server/Request;)V

    .line 223
    return-void
.end method

.method public setPayment(Lcom/scoreloop/client/android/core/model/Entity;)V
    .locals 2
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 286
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/scoreloop/client/android/core/model/Payment;

    if-nez v0, :cond_1

    .line 287
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid payment argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_1
    check-cast p1, Lcom/scoreloop/client/android/core/model/Payment;

    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/PaymentController;->b:Lcom/scoreloop/client/android/core/model/Payment;

    .line 290
    return-void
.end method
