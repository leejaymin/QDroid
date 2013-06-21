.class public Lcom/scoreloop/client/android/core/controller/ScoreController;
.super Lcom/scoreloop/client/android/core/controller/RequestController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/core/controller/ScoreController$c;,
        Lcom/scoreloop/client/android/core/controller/ScoreController$b;,
        Lcom/scoreloop/client/android/core/controller/ScoreController$a;
    }
.end annotation


# instance fields
.field private b:Lcom/scoreloop/client/android/core/controller/ChallengeController;

.field private c:Lcom/scoreloop/client/android/core/model/Score;

.field private d:Z

.field private e:Z

.field private final f:Lcom/scoreloop/client/android/core/controller/LocalScoreStore;


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V
    .locals 1
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/scoreloop/client/android/core/controller/ScoreController;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    .line 182
    return-void
.end method

.method public constructor <init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V
    .locals 5
    .parameter
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 197
    invoke-direct {p0, p1, p2}, Lcom/scoreloop/client/android/core/controller/RequestController;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    .line 199
    new-instance v0, Lcom/scoreloop/client/android/core/controller/ScoreController$b;

    invoke-direct {v0, p0, p2}, Lcom/scoreloop/client/android/core/controller/ScoreController$b;-><init>(Lcom/scoreloop/client/android/core/controller/ScoreController;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoreController;->a:Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;

    .line 200
    new-instance v0, Lcom/scoreloop/client/android/core/controller/LocalScoreStore;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ScoreController;->f()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Session;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ScoreController;->f()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Session;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Game;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ScoreController;->f()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/model/Session;->d()Lcom/scoreloop/client/android/core/model/Device;

    move-result-object v3

    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/model/Device;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ScoreController;->f()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scoreloop/client/android/core/model/Session;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/scoreloop/client/android/core/controller/LocalScoreStore;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/scoreloop/client/android/core/model/User;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoreController;->f:Lcom/scoreloop/client/android/core/controller/LocalScoreStore;

    .line 202
    return-void
.end method

.method static synthetic a(Lcom/scoreloop/client/android/core/controller/ScoreController;)Lcom/scoreloop/client/android/core/model/Score;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoreController;->c:Lcom/scoreloop/client/android/core/model/Score;

    return-object v0
.end method

.method static synthetic b(Lcom/scoreloop/client/android/core/controller/ScoreController;)Lcom/scoreloop/client/android/core/controller/LocalScoreStore;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoreController;->f:Lcom/scoreloop/client/android/core/controller/LocalScoreStore;

    return-object v0
.end method


# virtual methods
.method final a(Lcom/scoreloop/client/android/core/server/Request;Lcom/scoreloop/client/android/core/server/Response;)Z
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 233
    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/server/Response;->f()I

    move-result v0

    .line 234
    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/server/Response;->e()Lorg/json/JSONObject;

    move-result-object v2

    .line 235
    sget-object v3, Lcom/scoreloop/client/android/core/model/Score;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 237
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ScoreController;->getScore()Lcom/scoreloop/client/android/core/model/Score;

    move-result-object v3

    if-nez v3, :cond_1

    .line 238
    new-instance v3, Lcom/scoreloop/client/android/core/model/Score;

    invoke-direct {v3, v2}, Lcom/scoreloop/client/android/core/model/Score;-><init>(Lorg/json/JSONObject;)V

    iput-object v3, p0, Lcom/scoreloop/client/android/core/controller/ScoreController;->c:Lcom/scoreloop/client/android/core/model/Score;

    .line 242
    :goto_0
    const/16 v2, 0xc8

    if-eq v0, v2, :cond_0

    const/16 v2, 0xc9

    if-ne v0, v2, :cond_2

    :cond_0
    move v0, v1

    .line 243
    :goto_1
    if-nez v0, :cond_3

    .line 244
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Request failed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_1
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ScoreController;->getScore()Lcom/scoreloop/client/android/core/model/Score;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/scoreloop/client/android/core/model/Score;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 242
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 247
    :cond_3
    return v1
.end method

.method public getScore()Lcom/scoreloop/client/android/core/model/Score;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoreController;->c:Lcom/scoreloop/client/android/core/model/Score;

    return-object v0
.end method

.method final i()Z
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x1

    return v0
.end method

.method public setShouldSubmitScoreForChallenge(Z)V
    .locals 0
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 263
    iput-boolean p1, p0, Lcom/scoreloop/client/android/core/controller/ScoreController;->d:Z

    .line 264
    return-void
.end method

.method public setShouldSubmitScoreLocally(Z)V
    .locals 0
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_3_0;
    .end annotation

    .prologue
    .line 277
    iput-boolean p1, p0, Lcom/scoreloop/client/android/core/controller/ScoreController;->e:Z

    .line 278
    return-void
.end method

.method public shouldSubmitScoreForChallenge()Z
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/scoreloop/client/android/core/controller/ScoreController;->d:Z

    return v0
.end method

.method public shouldSubmitScoreLocally()Z
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_3_0;
    .end annotation

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/scoreloop/client/android/core/controller/ScoreController;->e:Z

    return v0
.end method

.method public submitScore(Lcom/scoreloop/client/android/core/model/Score;)V
    .locals 4
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 389
    if-nez p1, :cond_0

    .line 390
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "aScore parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    :cond_0
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/ScoreController;->c:Lcom/scoreloop/client/android/core/model/Score;

    .line 394
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ScoreController;->f()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->getChallenge()Lcom/scoreloop/client/android/core/model/Challenge;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/scoreloop/client/android/core/controller/ScoreController;->d:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoreController;->b:Lcom/scoreloop/client/android/core/controller/ChallengeController;

    if-nez v0, :cond_1

    new-instance v0, Lcom/scoreloop/client/android/core/controller/ChallengeController;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ScoreController;->f()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v1

    new-instance v2, Lcom/scoreloop/client/android/core/controller/ScoreController$a;

    invoke-direct {v2, p0}, Lcom/scoreloop/client/android/core/controller/ScoreController$a;-><init>(Lcom/scoreloop/client/android/core/controller/ScoreController;)V

    invoke-direct {v0, v1, v2}, Lcom/scoreloop/client/android/core/controller/ChallengeController;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoreController;->b:Lcom/scoreloop/client/android/core/controller/ChallengeController;

    :cond_1
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoreController;->b:Lcom/scoreloop/client/android/core/controller/ChallengeController;

    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/ScoreController;->c:Lcom/scoreloop/client/android/core/model/Score;

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/controller/ChallengeController;->submitChallengeScore(Lcom/scoreloop/client/android/core/model/Score;)V

    .line 395
    :cond_2
    :goto_0
    return-void

    .line 394
    :cond_3
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ScoreController;->a_()V

    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoreController;->c:Lcom/scoreloop/client/android/core/model/Score;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ScoreController;->g()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/model/Score;->a(Lcom/scoreloop/client/android/core/model/User;)V

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ScoreController;->f()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->l()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ScoreController;->f()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->m()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/scoreloop/client/android/core/controller/ScoreController;->e:Z

    if-eqz v0, :cond_6

    :cond_4
    iget-boolean v0, p0, Lcom/scoreloop/client/android/core/controller/ScoreController;->e:Z

    new-instance v1, Lcom/scoreloop/client/android/core/controller/ScoreController$1;

    invoke-direct {v1, p0, v0}, Lcom/scoreloop/client/android/core/controller/ScoreController$1;-><init>(Lcom/scoreloop/client/android/core/controller/ScoreController;Z)V

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/controller/ScoreController$1;->c()Lcom/scoreloop/client/android/core/util/DiskAsyncTask;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ScoreController;->f()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->n()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ScoreController;->f()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Session;->n()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    :cond_5
    new-instance v0, Lcom/scoreloop/client/android/core/controller/ScoresController;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ScoreController;->f()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v1

    new-instance v2, Lcom/scoreloop/client/android/core/controller/ScoreController$2;

    invoke-direct {v2}, Lcom/scoreloop/client/android/core/controller/ScoreController$2;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/scoreloop/client/android/core/controller/ScoresController;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/ScoresController;->f()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/core/model/Session;->a(Ljava/util/Date;)V

    new-instance v1, Lcom/scoreloop/client/android/core/controller/ScoresController$4;

    invoke-direct {v1, v0}, Lcom/scoreloop/client/android/core/controller/ScoresController$4;-><init>(Lcom/scoreloop/client/android/core/controller/ScoresController;)V

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/controller/ScoresController$4;->c()Lcom/scoreloop/client/android/core/util/DiskAsyncTask;

    :cond_6
    iget-boolean v0, p0, Lcom/scoreloop/client/android/core/controller/ScoreController;->e:Z

    if-nez v0, :cond_2

    new-instance v0, Lcom/scoreloop/client/android/core/controller/ScoreController$c;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ScoreController;->e()Lcom/scoreloop/client/android/core/controller/RequestController$b;

    move-result-object v1

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ScoreController;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v2

    iget-object v3, p0, Lcom/scoreloop/client/android/core/controller/ScoreController;->c:Lcom/scoreloop/client/android/core/model/Score;

    invoke-direct {v0, v1, v2, v3}, Lcom/scoreloop/client/android/core/controller/ScoreController$c;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/Score;)V

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/controller/ScoreController;->b(Lcom/scoreloop/client/android/core/server/Request;)V

    goto/16 :goto_0
.end method
