.class public Lcom/scoreloop/client/android/core/controller/RankingController;
.super Lcom/scoreloop/client/android/core/controller/RequestController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/core/controller/RankingController$a;
    }
.end annotation


# instance fields
.field private b:Lcom/scoreloop/client/android/core/model/Ranking;

.field private c:Lcom/scoreloop/client/android/core/model/SearchList;


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V
    .locals 1
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/scoreloop/client/android/core/controller/RankingController;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    .line 131
    return-void
.end method

.method public constructor <init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V
    .locals 2
    .parameter
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 147
    invoke-direct {p0, p1, p2}, Lcom/scoreloop/client/android/core/controller/RequestController;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    .line 117
    new-instance v0, Lcom/scoreloop/client/android/core/model/Ranking;

    invoke-direct {v0}, Lcom/scoreloop/client/android/core/model/Ranking;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/RankingController;->b:Lcom/scoreloop/client/android/core/model/Ranking;

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/RankingController;->c:Lcom/scoreloop/client/android/core/model/SearchList;

    .line 148
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/RankingController;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v0

    .line 149
    if-nez v0, :cond_0

    .line 150
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "I think there\'s no point in getting a rank of a score in a null game.."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_0
    invoke-static {}, Lcom/scoreloop/client/android/core/model/SearchList;->getDefaultScoreSearchList()Lcom/scoreloop/client/android/core/model/SearchList;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/RankingController;->c:Lcom/scoreloop/client/android/core/model/SearchList;

    .line 153
    return-void
.end method


# virtual methods
.method final a(Lcom/scoreloop/client/android/core/server/Request;Lcom/scoreloop/client/android/core/server/Response;)Z
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 263
    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/server/Response;->f()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    .line 264
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Request failed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_0
    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/server/Response;->d()Lorg/json/JSONArray;

    move-result-object v0

    .line 268
    new-instance v1, Lcom/scoreloop/client/android/core/model/Ranking;

    invoke-direct {v1}, Lcom/scoreloop/client/android/core/model/Ranking;-><init>()V

    iput-object v1, p0, Lcom/scoreloop/client/android/core/controller/RankingController;->b:Lcom/scoreloop/client/android/core/model/Ranking;

    .line 269
    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/RankingController;->b:Lcom/scoreloop/client/android/core/model/Ranking;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "ranking"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/scoreloop/client/android/core/model/Ranking;->a(Lorg/json/JSONObject;)V

    .line 271
    const/4 v0, 0x1

    return v0
.end method

.method public getRanking()Lcom/scoreloop/client/android/core/model/Ranking;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/RankingController;->b:Lcom/scoreloop/client/android/core/model/Ranking;

    return-object v0
.end method

.method public getSearchList()Lcom/scoreloop/client/android/core/model/SearchList;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/RankingController;->c:Lcom/scoreloop/client/android/core/model/SearchList;

    return-object v0
.end method

.method public loadRankingForScore(Lcom/scoreloop/client/android/core/model/Score;)V
    .locals 7
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 194
    if-nez p1, :cond_0

    .line 195
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "score parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/RankingController;->c:Lcom/scoreloop/client/android/core/model/SearchList;

    if-nez v0, :cond_1

    .line 198
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Search list or user is required for score ranking"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_1
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Score;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v0

    if-nez v0, :cond_2

    .line 201
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/RankingController;->g()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/scoreloop/client/android/core/model/Score;->a(Lcom/scoreloop/client/android/core/model/User;)V

    .line 203
    :cond_2
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/RankingController;->c:Lcom/scoreloop/client/android/core/model/SearchList;

    invoke-static {}, Lcom/scoreloop/client/android/core/model/SearchList;->getLocalScoreSearchList()Lcom/scoreloop/client/android/core/model/SearchList;

    move-result-object v1

    if-eq v0, v1, :cond_3

    .line 204
    new-instance v0, Lcom/scoreloop/client/android/core/controller/RankingController$a;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/RankingController;->e()Lcom/scoreloop/client/android/core/controller/RequestController$b;

    move-result-object v1

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/RankingController;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v2

    iget-object v3, p0, Lcom/scoreloop/client/android/core/controller/RankingController;->c:Lcom/scoreloop/client/android/core/model/SearchList;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Score;->getMode()Ljava/lang/Integer;

    move-result-object v6

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/scoreloop/client/android/core/controller/RankingController$a;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/SearchList;Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/model/Score;Ljava/lang/Integer;)V

    .line 205
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/RankingController;->a_()V

    .line 206
    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v1, v2}, Lcom/scoreloop/client/android/core/server/Request;->a(J)V

    .line 207
    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/controller/RankingController;->b(Lcom/scoreloop/client/android/core/server/Request;)V

    .line 208
    return-void

    .line 209
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "loadRankingForScore is not supported in this release when the search list is set to the local search list"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public loadRankingForScoreResult(Ljava/lang/Double;Ljava/util/Map;)V
    .locals 1
    .parameter
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Double;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 230
    new-instance v0, Lcom/scoreloop/client/android/core/model/Score;

    invoke-direct {v0, p1, p2}, Lcom/scoreloop/client/android/core/model/Score;-><init>(Ljava/lang/Double;Ljava/util/Map;)V

    .line 231
    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/controller/RankingController;->loadRankingForScore(Lcom/scoreloop/client/android/core/model/Score;)V

    .line 232
    return-void
.end method

.method public loadRankingForUserInGameMode(Lcom/scoreloop/client/android/core/model/User;Ljava/lang/Integer;)V
    .locals 7
    .parameter
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 246
    if-nez p1, :cond_0

    .line 247
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "user paramter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/RankingController;->c:Lcom/scoreloop/client/android/core/model/SearchList;

    invoke-static {}, Lcom/scoreloop/client/android/core/model/SearchList;->getLocalScoreSearchList()Lcom/scoreloop/client/android/core/model/SearchList;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 250
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "loadRankingForUserInGameMode is not available when the search list is set to the local search list"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_1
    new-instance v0, Lcom/scoreloop/client/android/core/controller/RankingController$a;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/RankingController;->e()Lcom/scoreloop/client/android/core/controller/RequestController$b;

    move-result-object v1

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/RankingController;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v2

    iget-object v3, p0, Lcom/scoreloop/client/android/core/controller/RankingController;->c:Lcom/scoreloop/client/android/core/model/SearchList;

    const/4 v5, 0x0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/scoreloop/client/android/core/controller/RankingController$a;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/SearchList;Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/model/Score;Ljava/lang/Integer;)V

    .line 255
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/RankingController;->a_()V

    .line 256
    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v1, v2}, Lcom/scoreloop/client/android/core/server/Request;->a(J)V

    .line 257
    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/controller/RankingController;->b(Lcom/scoreloop/client/android/core/server/Request;)V

    .line 258
    return-void
.end method

.method public setSearchList(Lcom/scoreloop/client/android/core/model/SearchList;)V
    .locals 0
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 288
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/RankingController;->c:Lcom/scoreloop/client/android/core/model/SearchList;

    .line 289
    return-void
.end method
