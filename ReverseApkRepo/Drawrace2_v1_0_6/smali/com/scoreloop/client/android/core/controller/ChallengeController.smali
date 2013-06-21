.class public Lcom/scoreloop/client/android/core/controller/ChallengeController;
.super Lcom/scoreloop/client/android/core/controller/RequestController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/core/controller/ChallengeController$c;,
        Lcom/scoreloop/client/android/core/controller/ChallengeController$b;,
        Lcom/scoreloop/client/android/core/controller/ChallengeController$a;
    }
.end annotation


# instance fields
.field private b:Lcom/scoreloop/client/android/core/model/Challenge;

.field private final c:Lcom/scoreloop/client/android/core/controller/ChallengeController$c;


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V
    .locals 1
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 182
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/scoreloop/client/android/core/controller/ChallengeController;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    .line 183
    return-void
.end method

.method public constructor <init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V
    .locals 1
    .parameter
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 201
    invoke-direct {p0, p1, p2}, Lcom/scoreloop/client/android/core/controller/RequestController;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    .line 203
    new-instance v0, Lcom/scoreloop/client/android/core/controller/ChallengeController$c;

    invoke-direct {v0, p0}, Lcom/scoreloop/client/android/core/controller/ChallengeController$c;-><init>(Lcom/scoreloop/client/android/core/controller/ChallengeController;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/ChallengeController;->c:Lcom/scoreloop/client/android/core/controller/ChallengeController$c;

    .line 204
    return-void
.end method

.method private a(ILcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 358
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ChallengeController;->c:Lcom/scoreloop/client/android/core/controller/ChallengeController$c;

    invoke-virtual {v0, p1}, Lcom/scoreloop/client/android/core/controller/ChallengeController$c;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 359
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 360
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 361
    return-void
.end method

.method private a(Lcom/scoreloop/client/android/core/model/Score;Lcom/scoreloop/client/android/core/model/User;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 255
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Score;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ChallengeController;->f()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/scoreloop/client/android/core/model/Session;->isOwnedByUser(Lcom/scoreloop/client/android/core/model/User;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ChallengeController;->g()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/scoreloop/client/android/core/model/Score;->a(Lcom/scoreloop/client/android/core/model/User;)V

    .line 258
    :cond_0
    return-void
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
    const/4 v3, 0x0

    .line 290
    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/server/Response;->f()I

    move-result v0

    .line 292
    const/16 v1, 0xc8

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_1

    .line 295
    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/server/Response;->e()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/scoreloop/client/android/core/controller/ChallengeController;->a(Lorg/json/JSONObject;)Ljava/lang/Integer;

    move-result-object v1

    .line 297
    if-nez v1, :cond_0

    .line 298
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request failed with status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 301
    :cond_0
    invoke-static {p2}, Lcom/scoreloop/client/android/core/controller/RequestControllerException;->a(Lcom/scoreloop/client/android/core/server/Response;)Lcom/scoreloop/client/android/core/controller/RequestControllerException;

    move-result-object v0

    .line 303
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 311
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ChallengeController;->f()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/scoreloop/client/android/core/model/Session;->setChallenge(Lcom/scoreloop/client/android/core/model/Challenge;)V

    .line 312
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ChallengeController;->d()Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;->requestControllerDidFail(Lcom/scoreloop/client/android/core/controller/RequestController;Ljava/lang/Exception;)V

    .line 330
    :goto_1
    const/4 v0, 0x0

    return v0

    .line 307
    :pswitch_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/controller/RequestControllerException;->a(I)V

    goto :goto_0

    .line 316
    :cond_1
    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/server/Response;->e()Lorg/json/JSONObject;

    move-result-object v0

    sget-object v1, Lcom/scoreloop/client/android/core/model/Challenge;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 317
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ChallengeController;->getChallenge()Lcom/scoreloop/client/android/core/model/Challenge;

    move-result-object v1

    .line 318
    invoke-virtual {v1, v0}, Lcom/scoreloop/client/android/core/model/Challenge;->a(Lorg/json/JSONObject;)V

    .line 320
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ChallengeController;->g()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v0

    .line 321
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Challenge;->getContender()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/scoreloop/client/android/core/model/User;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Challenge;->isCreated()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Challenge;->getContestant()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/scoreloop/client/android/core/model/User;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Challenge;->isRejected()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Challenge;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 323
    :cond_3
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ChallengeController;->f()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/scoreloop/client/android/core/model/Session;->setChallenge(Lcom/scoreloop/client/android/core/model/Challenge;)V

    .line 326
    :cond_4
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ChallengeController;->d()Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;->requestControllerDidReceiveResponse(Lcom/scoreloop/client/android/core/controller/RequestController;)V

    goto :goto_1

    .line 303
    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public acceptChallenge()V
    .locals 3
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 219
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ChallengeController;->getChallenge()Lcom/scoreloop/client/android/core/model/Challenge;

    move-result-object v0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ChallengeController;->g()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/model/Challenge;->isPlayableForUser(Lcom/scoreloop/client/android/core/model/User;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ChallengeController;->f()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/model/Session;->setChallenge(Lcom/scoreloop/client/android/core/model/Challenge;)V

    .line 221
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ChallengeController;->d()Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/scoreloop/client/android/core/controller/ChallengeController;->a(ILcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    .line 228
    :goto_0
    return-void

    .line 225
    :cond_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ChallengeController;->getChallenge()Lcom/scoreloop/client/android/core/model/Challenge;

    move-result-object v0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ChallengeController;->g()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/scoreloop/client/android/core/model/Challenge;->a(Lcom/scoreloop/client/android/core/model/User;Z)V

    .line 226
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ChallengeController;->submitChallenge()V

    goto :goto_0
.end method

.method public createChallenge(Lcom/scoreloop/client/android/core/model/Money;Lcom/scoreloop/client/android/core/model/User;)V
    .locals 1
    .parameter
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ChallengeController;->f()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/scoreloop/client/android/core/model/Challenge;->a(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/model/Money;Lcom/scoreloop/client/android/core/model/User;)Lcom/scoreloop/client/android/core/model/Challenge;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/ChallengeController;->b:Lcom/scoreloop/client/android/core/model/Challenge;

    .line 252
    return-void
.end method

.method public getChallenge()Lcom/scoreloop/client/android/core/model/Challenge;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 272
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ChallengeController;->b:Lcom/scoreloop/client/android/core/model/Challenge;

    if-nez v0, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ChallengeController;->f()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->getChallenge()Lcom/scoreloop/client/android/core/model/Challenge;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/ChallengeController;->b:Lcom/scoreloop/client/android/core/model/Challenge;

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ChallengeController;->b:Lcom/scoreloop/client/android/core/model/Challenge;

    return-object v0
.end method

.method public rejectChallenge()V
    .locals 3
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ChallengeController;->getChallenge()Lcom/scoreloop/client/android/core/model/Challenge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Challenge;->isAssigned()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ChallengeController;->getChallenge()Lcom/scoreloop/client/android/core/model/Challenge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Challenge;->getContestant()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ChallengeController;->g()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/model/User;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 347
    :cond_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ChallengeController;->f()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/model/Session;->setChallenge(Lcom/scoreloop/client/android/core/model/Challenge;)V

    .line 348
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ChallengeController;->d()Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/scoreloop/client/android/core/controller/ChallengeController;->a(ILcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    .line 355
    :goto_0
    return-void

    .line 352
    :cond_1
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ChallengeController;->getChallenge()Lcom/scoreloop/client/android/core/model/Challenge;

    move-result-object v0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ChallengeController;->g()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/scoreloop/client/android/core/model/Challenge;->a(Lcom/scoreloop/client/android/core/model/User;Z)V

    .line 353
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ChallengeController;->submitChallenge()V

    goto :goto_0
.end method

.method public setChallenge(Lcom/scoreloop/client/android/core/model/Challenge;)V
    .locals 0
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 370
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/ChallengeController;->b:Lcom/scoreloop/client/android/core/model/Challenge;

    .line 371
    return-void
.end method

.method public submitChallenge()V
    .locals 4
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ChallengeController;->getChallenge()Lcom/scoreloop/client/android/core/model/Challenge;

    move-result-object v1

    .line 388
    if-nez v1, :cond_0

    .line 389
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Set the challenge first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_0
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Challenge;->getContenderScore()Lcom/scoreloop/client/android/core/model/Score;

    move-result-object v0

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Challenge;->getContender()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/scoreloop/client/android/core/controller/ChallengeController;->a(Lcom/scoreloop/client/android/core/model/Score;Lcom/scoreloop/client/android/core/model/User;)V

    .line 393
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Challenge;->getContestantScore()Lcom/scoreloop/client/android/core/model/Score;

    move-result-object v0

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Challenge;->getContestant()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/scoreloop/client/android/core/controller/ChallengeController;->a(Lcom/scoreloop/client/android/core/model/Score;Lcom/scoreloop/client/android/core/model/User;)V

    .line 395
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Challenge;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 398
    new-instance v0, Lcom/scoreloop/client/android/core/controller/ChallengeController$a;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ChallengeController;->e()Lcom/scoreloop/client/android/core/controller/RequestController$b;

    move-result-object v2

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ChallengeController;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1}, Lcom/scoreloop/client/android/core/controller/ChallengeController$a;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/Challenge;)V

    .line 403
    :goto_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ChallengeController;->f()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/scoreloop/client/android/core/model/Session;->setChallenge(Lcom/scoreloop/client/android/core/model/Challenge;)V

    .line 405
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ChallengeController;->a_()V

    .line 406
    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/controller/ChallengeController;->b(Lcom/scoreloop/client/android/core/server/Request;)V

    .line 407
    return-void

    .line 401
    :cond_1
    new-instance v0, Lcom/scoreloop/client/android/core/controller/ChallengeController$b;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ChallengeController;->e()Lcom/scoreloop/client/android/core/controller/RequestController$b;

    move-result-object v2

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ChallengeController;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1}, Lcom/scoreloop/client/android/core/controller/ChallengeController$b;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/Challenge;)V

    goto :goto_0
.end method

.method public submitChallengeScore(Lcom/scoreloop/client/android/core/model/Score;)V
    .locals 3
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 423
    if-nez p1, :cond_0

    .line 424
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "aScore parameter can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    :cond_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ChallengeController;->getChallenge()Lcom/scoreloop/client/android/core/model/Challenge;

    move-result-object v0

    .line 429
    if-nez v0, :cond_1

    .line 430
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no challenge to submit score to"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 434
    :cond_1
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Score;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v1

    .line 435
    if-nez v1, :cond_3

    .line 436
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ChallengeController;->g()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/scoreloop/client/android/core/model/Score;->a(Lcom/scoreloop/client/android/core/model/User;)V

    .line 442
    :cond_2
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Challenge;->getMode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Score;->getMode()Ljava/lang/Integer;

    move-result-object v2

    if-eq v1, v2, :cond_4

    .line 443
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Score mode does not match challenge mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 437
    :cond_3
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ChallengeController;->f()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/scoreloop/client/android/core/model/Session;->isOwnedByUser(Lcom/scoreloop/client/android/core/model/User;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 438
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "User is not participating in the challenge"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 446
    :cond_4
    invoke-virtual {v0, p1}, Lcom/scoreloop/client/android/core/model/Challenge;->a(Lcom/scoreloop/client/android/core/model/Score;)V

    .line 447
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ChallengeController;->submitChallenge()V

    .line 448
    return-void
.end method
