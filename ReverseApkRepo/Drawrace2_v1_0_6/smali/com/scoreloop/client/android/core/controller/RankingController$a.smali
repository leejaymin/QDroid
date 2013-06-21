.class final Lcom/scoreloop/client/android/core/controller/RankingController$a;
.super Lcom/scoreloop/client/android/core/server/Request;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/controller/RankingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/scoreloop/client/android/core/model/Game;

.field private final b:Ljava/lang/Integer;

.field private final c:Lcom/scoreloop/client/android/core/model/Score;

.field private final d:Lcom/scoreloop/client/android/core/model/SearchList;

.field private final e:Lcom/scoreloop/client/android/core/model/User;


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/SearchList;Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/model/Score;Ljava/lang/Integer;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/core/server/Request;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;)V

    .line 66
    if-nez p2, :cond_0

    .line 67
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "internal error: aGame not being set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    iput-object p2, p0, Lcom/scoreloop/client/android/core/controller/RankingController$a;->a:Lcom/scoreloop/client/android/core/model/Game;

    .line 70
    iput-object p3, p0, Lcom/scoreloop/client/android/core/controller/RankingController$a;->d:Lcom/scoreloop/client/android/core/model/SearchList;

    .line 71
    iput-object p4, p0, Lcom/scoreloop/client/android/core/controller/RankingController$a;->e:Lcom/scoreloop/client/android/core/model/User;

    .line 72
    iput-object p5, p0, Lcom/scoreloop/client/android/core/controller/RankingController$a;->c:Lcom/scoreloop/client/android/core/model/Score;

    .line 73
    iput-object p6, p0, Lcom/scoreloop/client/android/core/controller/RankingController$a;->b:Ljava/lang/Integer;

    .line 74
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 78
    const-string v0, "/service/games/%s/scores/rankings"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/scoreloop/client/android/core/controller/RankingController$a;->a:Lcom/scoreloop/client/android/core/model/Game;

    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/model/Game;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 83
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/RankingController$a;->d:Lcom/scoreloop/client/android/core/model/SearchList;

    if-eqz v1, :cond_0

    .line 88
    const-string v1, "search_list_id"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/RankingController$a;->d:Lcom/scoreloop/client/android/core/model/SearchList;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/SearchList;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/RankingController$a;->c:Lcom/scoreloop/client/android/core/model/Score;

    if-eqz v1, :cond_2

    .line 92
    sget-object v1, Lcom/scoreloop/client/android/core/model/Score;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/RankingController$a;->c:Lcom/scoreloop/client/android/core/model/Score;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Score;->b_()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    :cond_1
    :goto_0
    return-object v0

    .line 94
    :cond_2
    const-string v1, "user_id"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/RankingController$a;->e:Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/User;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/RankingController$a;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 96
    const-string v1, "mode"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/RankingController$a;->b:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Invalid ranking data"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final c()Lcom/scoreloop/client/android/core/server/RequestMethod;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/scoreloop/client/android/core/server/RequestMethod;->GET:Lcom/scoreloop/client/android/core/server/RequestMethod;

    return-object v0
.end method
