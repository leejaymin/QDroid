.class final Lcom/scoreloop/client/android/core/controller/GameItemsController$a;
.super Lcom/scoreloop/client/android/core/server/Request;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/controller/GameItemsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/scoreloop/client/android/core/model/Device;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/scoreloop/client/android/core/controller/d;

.field private final g:Lcom/scoreloop/client/android/core/model/User;


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Device;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/User;Ljava/util/List;Lcom/scoreloop/client/android/core/controller/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;",
            "Lcom/scoreloop/client/android/core/model/Device;",
            "Lcom/scoreloop/client/android/core/model/Game;",
            "Lcom/scoreloop/client/android/core/model/User;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/scoreloop/client/android/core/controller/d;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/core/server/Request;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;)V

    .line 73
    sget-object v0, Lcom/scoreloop/client/android/core/server/RequestMethod;->GET:Lcom/scoreloop/client/android/core/server/RequestMethod;

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/controller/GameItemsController$a;->a(Lcom/scoreloop/client/android/core/server/RequestMethod;)V

    .line 74
    const-string v0, "/service/games/%s/items"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p3}, Lcom/scoreloop/client/android/core/model/Game;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/controller/GameItemsController$a;->a(Ljava/lang/String;)V

    .line 75
    const-wide/32 v0, 0x927c0

    invoke-virtual {p0, v0, v1}, Lcom/scoreloop/client/android/core/controller/GameItemsController$a;->a(J)V

    .line 77
    iput-object p4, p0, Lcom/scoreloop/client/android/core/controller/GameItemsController$a;->g:Lcom/scoreloop/client/android/core/model/User;

    .line 78
    iput-object p5, p0, Lcom/scoreloop/client/android/core/controller/GameItemsController$a;->e:Ljava/util/List;

    .line 79
    iput-object p6, p0, Lcom/scoreloop/client/android/core/controller/GameItemsController$a;->f:Lcom/scoreloop/client/android/core/controller/d;

    .line 80
    iput-object p7, p0, Lcom/scoreloop/client/android/core/controller/GameItemsController$a;->c:Ljava/lang/String;

    .line 81
    iput-object p8, p0, Lcom/scoreloop/client/android/core/controller/GameItemsController$a;->d:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lcom/scoreloop/client/android/core/controller/GameItemsController$a;->b:Lcom/scoreloop/client/android/core/model/Device;

    .line 83
    iput-object p9, p0, Lcom/scoreloop/client/android/core/controller/GameItemsController$a;->a:Ljava/lang/String;

    .line 84
    return-void
.end method


# virtual methods
.method public final b()Lorg/json/JSONObject;
    .locals 7

    .prologue
    .line 88
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/GameItemsController$a;->g:Lcom/scoreloop/client/android/core/model/User;

    if-eqz v1, :cond_1

    .line 93
    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/GameItemsController$a;->g:Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/User;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 94
    if-nez v1, :cond_0

    .line 95
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "user without an identifier?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Invalid game-item data"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 97
    :cond_0
    :try_start_1
    const-string v2, "user_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 102
    const-string v2, "id"

    iget-object v3, p0, Lcom/scoreloop/client/android/core/controller/GameItemsController$a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/GameItemsController$a;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_2

    .line 105
    new-instance v2, Lcom/scoreloop/client/android/core/controller/SearchSpec;

    invoke-direct {v2}, Lcom/scoreloop/client/android/core/controller/SearchSpec;-><init>()V

    .line 107
    new-instance v3, Lcom/scoreloop/client/android/core/controller/c;

    const-string v4, "tags"

    iget-object v5, p0, Lcom/scoreloop/client/android/core/controller/GameItemsController$a;->f:Lcom/scoreloop/client/android/core/controller/d;

    iget-object v6, p0, Lcom/scoreloop/client/android/core/controller/GameItemsController$a;->e:Ljava/util/List;

    invoke-direct {v3, v4, v5, v6}, Lcom/scoreloop/client/android/core/controller/c;-><init>(Ljava/lang/String;Lcom/scoreloop/client/android/core/controller/d;Ljava/util/Collection;)V

    invoke-virtual {v2, v3}, Lcom/scoreloop/client/android/core/controller/SearchSpec;->a(Lcom/scoreloop/client/android/core/controller/c;)V

    .line 108
    const-string v3, "definition"

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/controller/SearchSpec;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    :cond_2
    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/GameItemsController$a;->c:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 113
    const-string v2, "game_version"

    iget-object v3, p0, Lcom/scoreloop/client/android/core/controller/GameItemsController$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    :cond_3
    const-string v2, "search_list"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    const-string v1, "currency"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/GameItemsController$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    const-string v1, "device_id"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/GameItemsController$a;->b:Lcom/scoreloop/client/android/core/model/Device;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Device;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    invoke-static {}, Lcom/scoreloop/client/android/core/model/PaymentProvider;->a()Ljava/util/Set;

    move-result-object v1

    .line 122
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 123
    const-string v2, "supported_payment_method_kinds"

    invoke-static {v1}, Lcom/scoreloop/client/android/core/util/JSONUtils;->a(Ljava/util/Collection;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 129
    :cond_4
    return-object v0
.end method
