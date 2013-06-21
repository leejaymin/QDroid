.class public Lcom/scoreloop/client/android/core/controller/PaymentMethodsController;
.super Lcom/scoreloop/client/android/core/controller/RequestController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/core/controller/PaymentMethodsController$a;
    }
.end annotation


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lcom/scoreloop/client/android/core/model/Entity;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/model/PaymentMethod;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V
    .locals 1
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/scoreloop/client/android/core/controller/PaymentMethodsController;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V
    .locals 1
    .parameter
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/scoreloop/client/android/core/controller/RequestController;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    .line 71
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/PaymentMethodsController;->d:Ljava/util/List;

    .line 93
    return-void
.end method


# virtual methods
.method final a(Lcom/scoreloop/client/android/core/server/Request;Lcom/scoreloop/client/android/core/server/Response;)Z
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 151
    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/server/Response;->f()I

    move-result v0

    .line 153
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/server/Response;->d()Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 154
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 156
    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/server/Response;->d()Lorg/json/JSONArray;

    move-result-object v2

    .line 157
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 159
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    .line 160
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "payment_method"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/scoreloop/client/android/core/model/PaymentMethod;->a(Lorg/json/JSONObject;)Lcom/scoreloop/client/android/core/model/PaymentMethod;

    move-result-object v4

    .line 162
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/scoreloop/client/android/core/model/PaymentMethod;->getPrices()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 163
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/PaymentMethodsController;->d:Ljava/util/List;

    .line 169
    const/4 v0, 0x1

    return v0

    .line 171
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Request failed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/PaymentMethodsController;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getGameItem()Lcom/scoreloop/client/android/core/model/Entity;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/PaymentMethodsController;->c:Lcom/scoreloop/client/android/core/model/Entity;

    return-object v0
.end method

.method public getPaymentMethods()Ljava/util/List;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/model/PaymentMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/PaymentMethodsController;->d:Ljava/util/List;

    return-object v0
.end method

.method public loadPaymentMethods()V
    .locals 6
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/PaymentMethodsController;->c:Lcom/scoreloop/client/android/core/model/Entity;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "gameItem is null. did you call setGameItem() ?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/PaymentMethodsController;->a_()V

    .line 146
    new-instance v0, Lcom/scoreloop/client/android/core/controller/PaymentMethodsController$a;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/PaymentMethodsController;->e()Lcom/scoreloop/client/android/core/controller/RequestController$b;

    move-result-object v1

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/PaymentMethodsController;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v2

    iget-object v3, p0, Lcom/scoreloop/client/android/core/controller/PaymentMethodsController;->c:Lcom/scoreloop/client/android/core/model/Entity;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/PaymentMethodsController;->f()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scoreloop/client/android/core/model/Session;->d()Lcom/scoreloop/client/android/core/model/Device;

    move-result-object v4

    iget-object v5, p0, Lcom/scoreloop/client/android/core/controller/PaymentMethodsController;->b:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/scoreloop/client/android/core/controller/PaymentMethodsController$a;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/Entity;Lcom/scoreloop/client/android/core/model/Device;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/controller/PaymentMethodsController;->b(Lcom/scoreloop/client/android/core/server/Request;)V

    .line 147
    return-void
.end method

.method public setCurrency(Ljava/lang/String;)V
    .locals 2
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 184
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "argument must be either null or a 3 digit currency code"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_0
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/PaymentMethodsController;->b:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setGameItem(Lcom/scoreloop/client/android/core/model/Entity;)V
    .locals 1
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 196
    invoke-static {p1}, Lcom/scoreloop/client/android/core/model/GameItem;->a(Lcom/scoreloop/client/android/core/model/Entity;)Lcom/scoreloop/client/android/core/model/GameItem;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/PaymentMethodsController;->c:Lcom/scoreloop/client/android/core/model/Entity;

    .line 197
    return-void
.end method
