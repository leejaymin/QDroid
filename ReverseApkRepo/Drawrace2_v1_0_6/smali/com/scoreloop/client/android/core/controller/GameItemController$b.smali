.class Lcom/scoreloop/client/android/core/controller/GameItemController$b;
.super Lcom/scoreloop/client/android/core/server/Request;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/controller/GameItemController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/scoreloop/client/android/core/model/User;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/scoreloop/client/android/core/model/Device;


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/model/Device;Lcom/scoreloop/client/android/core/model/GameItem;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/core/server/Request;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;)V

    .line 93
    iput-object p3, p0, Lcom/scoreloop/client/android/core/controller/GameItemController$b;->a:Lcom/scoreloop/client/android/core/model/User;

    .line 94
    iput-object p4, p0, Lcom/scoreloop/client/android/core/controller/GameItemController$b;->c:Lcom/scoreloop/client/android/core/model/Device;

    .line 95
    iput-object p6, p0, Lcom/scoreloop/client/android/core/controller/GameItemController$b;->b:Ljava/lang/String;

    .line 97
    sget-object v0, Lcom/scoreloop/client/android/core/server/RequestMethod;->GET:Lcom/scoreloop/client/android/core/server/RequestMethod;

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/controller/GameItemController$b;->a(Lcom/scoreloop/client/android/core/server/RequestMethod;)V

    .line 98
    const-string v0, "/service/games/%s/items/%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/model/Game;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p5}, Lcom/scoreloop/client/android/core/model/GameItem;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/controller/GameItemController$b;->a(Ljava/lang/String;)V

    .line 99
    const-wide/32 v0, 0x927c0

    invoke-virtual {p0, v0, v1}, Lcom/scoreloop/client/android/core/controller/GameItemController$b;->a(J)V

    .line 100
    const-class v0, Lcom/scoreloop/client/android/core/controller/GameItemController$b;

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/controller/GameItemController$b;->a(Ljava/lang/Object;)V

    .line 101
    return-void
.end method


# virtual methods
.method public final b()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 105
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 107
    :try_start_0
    const-string v1, "user_id"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/GameItemController$b;->a:Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/User;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    const-string v1, "currency"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/GameItemController$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    const-string v1, "device_id"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/GameItemController$b;->c:Lcom/scoreloop/client/android/core/model/Device;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Device;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    invoke-static {}, Lcom/scoreloop/client/android/core/model/PaymentProvider;->a()Ljava/util/Set;

    move-result-object v1

    .line 111
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 112
    const-string v2, "supported_payment_method_kinds"

    invoke-static {v1}, Lcom/scoreloop/client/android/core/util/JSONUtils;->a(Ljava/util/Collection;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :cond_0
    return-object v0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Invalid request data"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
