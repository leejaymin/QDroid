.class final Lcom/scoreloop/client/android/core/controller/GamesController$a;
.super Lcom/scoreloop/client/android/core/server/Request;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/controller/GamesController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/scoreloop/client/android/core/model/Device;

.field private final b:I

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:Lcom/scoreloop/client/android/core/model/User;


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/User;Ljava/lang/String;Lcom/scoreloop/client/android/core/model/Device;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/core/server/Request;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;)V

    .line 104
    iput p5, p0, Lcom/scoreloop/client/android/core/controller/GamesController$a;->b:I

    .line 105
    iput p6, p0, Lcom/scoreloop/client/android/core/controller/GamesController$a;->c:I

    .line 106
    iput-object p2, p0, Lcom/scoreloop/client/android/core/controller/GamesController$a;->e:Lcom/scoreloop/client/android/core/model/User;

    .line 107
    iput-object p3, p0, Lcom/scoreloop/client/android/core/controller/GamesController$a;->d:Ljava/lang/String;

    .line 108
    iput-object p4, p0, Lcom/scoreloop/client/android/core/controller/GamesController$a;->a:Lcom/scoreloop/client/android/core/model/Device;

    .line 109
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 113
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/GamesController$a;->e:Lcom/scoreloop/client/android/core/model/User;

    if-eqz v0, :cond_0

    .line 114
    const-string v0, "/service/users/%s/games"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/scoreloop/client/android/core/controller/GamesController$a;->e:Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/model/User;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 116
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "/service/games"

    goto :goto_0
.end method

.method public final b()Lorg/json/JSONObject;
    .locals 7

    .prologue
    .line 122
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 124
    :try_start_0
    const-string v1, "offset"

    iget v2, p0, Lcom/scoreloop/client/android/core/controller/GamesController$a;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 125
    const-string v1, "per_page"

    iget v2, p0, Lcom/scoreloop/client/android/core/controller/GamesController$a;->c:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 128
    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/GamesController$a;->d:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 129
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 130
    const-string v2, "id"

    iget-object v3, p0, Lcom/scoreloop/client/android/core/controller/GamesController$a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/GamesController$a;->a:Lcom/scoreloop/client/android/core/model/Device;

    if-eqz v2, :cond_0

    .line 132
    new-instance v2, Lcom/scoreloop/client/android/core/controller/SearchSpec;

    invoke-direct {v2}, Lcom/scoreloop/client/android/core/controller/SearchSpec;-><init>()V

    .line 133
    new-instance v3, Lcom/scoreloop/client/android/core/controller/c;

    const-string v4, "playable_by_device"

    sget-object v5, Lcom/scoreloop/client/android/core/controller/d;->EXACT:Lcom/scoreloop/client/android/core/controller/d;

    iget-object v6, p0, Lcom/scoreloop/client/android/core/controller/GamesController$a;->a:Lcom/scoreloop/client/android/core/model/Device;

    invoke-virtual {v6}, Lcom/scoreloop/client/android/core/model/Device;->getIdentifier()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/scoreloop/client/android/core/controller/c;-><init>(Ljava/lang/String;Lcom/scoreloop/client/android/core/controller/d;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/scoreloop/client/android/core/controller/SearchSpec;->a(Lcom/scoreloop/client/android/core/controller/c;)V

    .line 135
    const-string v3, "definition"

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/controller/SearchSpec;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    :cond_0
    const-string v2, "search_list"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :cond_1
    return-object v0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final c()Lcom/scoreloop/client/android/core/server/RequestMethod;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/scoreloop/client/android/core/server/RequestMethod;->GET:Lcom/scoreloop/client/android/core/server/RequestMethod;

    return-object v0
.end method
