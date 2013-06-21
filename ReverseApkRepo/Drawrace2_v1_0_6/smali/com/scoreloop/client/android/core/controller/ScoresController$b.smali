.class final Lcom/scoreloop/client/android/core/controller/ScoresController$b;
.super Lcom/scoreloop/client/android/core/server/Request;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/controller/ScoresController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/scoreloop/client/android/core/model/Game;

.field private final b:Ljava/lang/Integer;

.field private c:I

.field private final d:I

.field private final e:Lcom/scoreloop/client/android/core/model/SearchList;

.field private final f:Lcom/scoreloop/client/android/core/model/User;


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/SearchList;Lcom/scoreloop/client/android/core/model/User;Ljava/lang/Integer;II)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/core/server/Request;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;)V

    .line 95
    if-nez p2, :cond_0

    .line 96
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "internal error: null game"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    iput-object p2, p0, Lcom/scoreloop/client/android/core/controller/ScoresController$b;->a:Lcom/scoreloop/client/android/core/model/Game;

    .line 99
    iput-object p3, p0, Lcom/scoreloop/client/android/core/controller/ScoresController$b;->e:Lcom/scoreloop/client/android/core/model/SearchList;

    .line 100
    iput-object p4, p0, Lcom/scoreloop/client/android/core/controller/ScoresController$b;->f:Lcom/scoreloop/client/android/core/model/User;

    .line 101
    iput-object p5, p0, Lcom/scoreloop/client/android/core/controller/ScoresController$b;->b:Ljava/lang/Integer;

    .line 102
    iput p6, p0, Lcom/scoreloop/client/android/core/controller/ScoresController$b;->d:I

    .line 103
    iput p7, p0, Lcom/scoreloop/client/android/core/controller/ScoresController$b;->c:I

    .line 104
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 108
    const-string v0, "/service/games/%s/scores"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/scoreloop/client/android/core/controller/ScoresController$b;->a:Lcom/scoreloop/client/android/core/model/Game;

    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/model/Game;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput p1, p0, Lcom/scoreloop/client/android/core/controller/ScoresController$b;->c:I

    .line 139
    return-void
.end method

.method public final b()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 113
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 116
    :try_start_0
    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/ScoresController$b;->e:Lcom/scoreloop/client/android/core/model/SearchList;

    if-eqz v1, :cond_0

    .line 117
    const-string v1, "search_list_id"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/ScoresController$b;->e:Lcom/scoreloop/client/android/core/model/SearchList;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/SearchList;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    :cond_0
    const-string v1, "user_id"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/ScoresController$b;->f:Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/User;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    const-string v1, "offset"

    iget v2, p0, Lcom/scoreloop/client/android/core/controller/ScoresController$b;->c:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 121
    const-string v1, "per_page"

    iget v2, p0, Lcom/scoreloop/client/android/core/controller/ScoresController$b;->d:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 122
    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/ScoresController$b;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 123
    const-string v1, "mode"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/ScoresController$b;->b:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :cond_1
    return-object v0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Invalid challenge data"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final c()Lcom/scoreloop/client/android/core/server/RequestMethod;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/scoreloop/client/android/core/server/RequestMethod;->GET:Lcom/scoreloop/client/android/core/server/RequestMethod;

    return-object v0
.end method
