.class public Lcom/scoreloop/client/android/core/controller/GamesController;
.super Lcom/scoreloop/client/android/core/controller/RequestController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/core/controller/GamesController$a;
    }
.end annotation


# instance fields
.field private final b:Lcom/scoreloop/client/android/core/controller/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/scoreloop/client/android/core/controller/a",
            "<",
            "Lcom/scoreloop/client/android/core/model/Game;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Lcom/scoreloop/client/android/core/model/User;


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V
    .locals 2
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_1_0;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 175
    invoke-direct {p0, v1, p1}, Lcom/scoreloop/client/android/core/controller/RequestController;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    .line 156
    new-instance v0, Lcom/scoreloop/client/android/core/controller/a;

    invoke-direct {v0}, Lcom/scoreloop/client/android/core/controller/a;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/GamesController;->b:Lcom/scoreloop/client/android/core/controller/a;

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scoreloop/client/android/core/controller/GamesController;->c:Z

    .line 158
    iput-object v1, p0, Lcom/scoreloop/client/android/core/controller/GamesController;->d:Ljava/lang/String;

    .line 159
    iput-object v1, p0, Lcom/scoreloop/client/android/core/controller/GamesController;->e:Lcom/scoreloop/client/android/core/model/User;

    .line 176
    return-void
.end method

.method public constructor <init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V
    .locals 2
    .parameter
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_1_0;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 191
    invoke-direct {p0, p1, p2}, Lcom/scoreloop/client/android/core/controller/RequestController;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    .line 156
    new-instance v0, Lcom/scoreloop/client/android/core/controller/a;

    invoke-direct {v0}, Lcom/scoreloop/client/android/core/controller/a;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/GamesController;->b:Lcom/scoreloop/client/android/core/controller/a;

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scoreloop/client/android/core/controller/GamesController;->c:Z

    .line 158
    iput-object v1, p0, Lcom/scoreloop/client/android/core/controller/GamesController;->d:Ljava/lang/String;

    .line 159
    iput-object v1, p0, Lcom/scoreloop/client/android/core/controller/GamesController;->e:Lcom/scoreloop/client/android/core/model/User;

    .line 192
    return-void
.end method

.method private a(I)V
    .locals 7
    .parameter

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/GamesController;->a_()V

    .line 255
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/GamesController;->b:Lcom/scoreloop/client/android/core/controller/a;

    invoke-virtual {v0, p1}, Lcom/scoreloop/client/android/core/controller/a;->a(I)V

    .line 256
    iget-boolean v0, p0, Lcom/scoreloop/client/android/core/controller/GamesController;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/GamesController;->f()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->d()Lcom/scoreloop/client/android/core/model/Device;

    move-result-object v4

    .line 257
    :goto_0
    new-instance v0, Lcom/scoreloop/client/android/core/controller/GamesController$a;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/GamesController;->e()Lcom/scoreloop/client/android/core/controller/RequestController$b;

    move-result-object v1

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/GamesController;->e:Lcom/scoreloop/client/android/core/model/User;

    iget-object v3, p0, Lcom/scoreloop/client/android/core/controller/GamesController;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/scoreloop/client/android/core/controller/GamesController;->b:Lcom/scoreloop/client/android/core/controller/a;

    invoke-virtual {v5}, Lcom/scoreloop/client/android/core/controller/a;->a()I

    move-result v6

    move v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/scoreloop/client/android/core/controller/GamesController$a;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/User;Ljava/lang/String;Lcom/scoreloop/client/android/core/model/Device;II)V

    .line 259
    const-string v1, "#featured_games"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/GamesController;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 260
    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Lcom/scoreloop/client/android/core/controller/GamesController$a;->a(J)V

    .line 264
    :goto_1
    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/controller/GamesController;->b(Lcom/scoreloop/client/android/core/server/Request;)V

    .line 265
    return-void

    .line 256
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 262
    :cond_1
    const-wide/32 v1, 0x927c0

    invoke-virtual {v0, v1, v2}, Lcom/scoreloop/client/android/core/controller/GamesController$a;->a(J)V

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Lcom/scoreloop/client/android/core/model/User;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 352
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/GamesController;->d:Ljava/lang/String;

    if-eq v0, p1, :cond_0

    .line 353
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/GamesController;->b()V

    .line 354
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/GamesController;->d:Ljava/lang/String;

    .line 355
    iput-object p2, p0, Lcom/scoreloop/client/android/core/controller/GamesController;->e:Lcom/scoreloop/client/android/core/model/User;

    .line 357
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/core/controller/GamesController;->a(I)V

    .line 358
    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 434
    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/GamesController;->e:Lcom/scoreloop/client/android/core/model/User;

    .line 435
    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/GamesController;->d:Ljava/lang/String;

    .line 436
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/GamesController;->b:Lcom/scoreloop/client/android/core/controller/a;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/a;->j()V

    .line 437
    return-void
.end method


# virtual methods
.method final a(Lcom/scoreloop/client/android/core/server/Request;Lcom/scoreloop/client/android/core/server/Response;)Z
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 404
    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/server/Response;->f()I

    move-result v0

    .line 406
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/server/Response;->d()Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 407
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 409
    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/server/Response;->d()Lorg/json/JSONArray;

    move-result-object v2

    .line 410
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 412
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/GamesController;->f()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v4

    .line 414
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    .line 415
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    sget-object v6, Lcom/scoreloop/client/android/core/model/Game;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 416
    new-instance v6, Lcom/scoreloop/client/android/core/model/Game;

    invoke-direct {v6, v5}, Lcom/scoreloop/client/android/core/model/Game;-><init>(Lorg/json/JSONObject;)V

    .line 418
    if-eqz v4, :cond_0

    invoke-virtual {v4, v6}, Lcom/scoreloop/client/android/core/model/Game;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 419
    invoke-virtual {v4, v5}, Lcom/scoreloop/client/android/core/model/Game;->a(Lorg/json/JSONObject;)V

    .line 420
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 422
    :cond_0
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 425
    :cond_1
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/GamesController;->b:Lcom/scoreloop/client/android/core/controller/a;

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/controller/a;->a(Ljava/util/List;)V

    .line 427
    const/4 v0, 0x1

    return v0

    .line 429
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Request failed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getGames()Ljava/util/List;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_1_0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/model/Game;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/GamesController;->b:Lcom/scoreloop/client/android/core/controller/a;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/a;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLoadsDevicesPlatformOnly()Z
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_1_0;
    .end annotation

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/scoreloop/client/android/core/controller/GamesController;->c:Z

    return v0
.end method

.method public getRangeLength()I
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_1_0;
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/GamesController;->b:Lcom/scoreloop/client/android/core/controller/a;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/a;->f()I

    move-result v0

    return v0
.end method

.method public hasNextRange()Z
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_1_0;
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/GamesController;->b:Lcom/scoreloop/client/android/core/controller/a;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/a;->h()Z

    move-result v0

    return v0
.end method

.method public hasPreviousRange()Z
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_1_0;
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/GamesController;->b:Lcom/scoreloop/client/android/core/controller/a;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/a;->i()Z

    move-result v0

    return v0
.end method

.method public loadFirstRange()V
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_0_0;
    .end annotation

    .prologue
    .line 398
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/core/controller/GamesController;->a(I)V

    .line 399
    return-void
.end method

.method public loadNextRange()V
    .locals 2
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_1_0;
    .end annotation

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/GamesController;->hasNextRange()Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There\'s no next range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/GamesController;->b:Lcom/scoreloop/client/android/core/controller/a;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/a;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/GamesController;->b:Lcom/scoreloop/client/android/core/controller/a;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/a;->c()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/core/controller/GamesController;->a(I)V

    .line 287
    :goto_0
    return-void

    .line 285
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/core/controller/GamesController;->a(I)V

    goto :goto_0
.end method

.method public loadPreviousRange()V
    .locals 2
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_1_0;
    .end annotation

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/GamesController;->hasPreviousRange()Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There\'s no previous range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/GamesController;->b:Lcom/scoreloop/client/android/core/controller/a;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/a;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/GamesController;->b:Lcom/scoreloop/client/android/core/controller/a;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/a;->e()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/core/controller/GamesController;->a(I)V

    .line 309
    :goto_0
    return-void

    .line 307
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/core/controller/GamesController;->a(I)V

    goto :goto_0
.end method

.method public loadRangeForBuddies()V
    .locals 2
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_1_0;
    .end annotation

    .prologue
    .line 318
    const-string v0, "#buddy_games"

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/GamesController;->g()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/scoreloop/client/android/core/controller/GamesController;->a(Ljava/lang/String;Lcom/scoreloop/client/android/core/model/User;)V

    .line 319
    return-void
.end method

.method public loadRangeForFeatured()V
    .locals 2
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_1_0;
    .end annotation

    .prologue
    .line 328
    const-string v0, "#featured_games"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/scoreloop/client/android/core/controller/GamesController;->a(Ljava/lang/String;Lcom/scoreloop/client/android/core/model/User;)V

    .line 329
    return-void
.end method

.method public loadRangeForNew()V
    .locals 2
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_1_0;
    .end annotation

    .prologue
    .line 348
    const-string v0, "#new_games"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/scoreloop/client/android/core/controller/GamesController;->a(Ljava/lang/String;Lcom/scoreloop/client/android/core/model/User;)V

    .line 349
    return-void
.end method

.method public loadRangeForPopular()V
    .locals 2
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_1_0;
    .end annotation

    .prologue
    .line 338
    const-string v0, "#popular_games"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/scoreloop/client/android/core/controller/GamesController;->a(Ljava/lang/String;Lcom/scoreloop/client/android/core/model/User;)V

    .line 339
    return-void
.end method

.method public loadRangeForUser(Lcom/scoreloop/client/android/core/model/User;)V
    .locals 2
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_1_0;
    .end annotation

    .prologue
    .line 377
    if-nez p1, :cond_0

    .line 378
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "user must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/GamesController;->e:Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {p1, v0}, Lcom/scoreloop/client/android/core/model/User;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 381
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/GamesController;->b()V

    .line 382
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/GamesController;->e:Lcom/scoreloop/client/android/core/model/User;

    .line 384
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/core/controller/GamesController;->a(I)V

    .line 385
    return-void
.end method

.method public setLoadsDevicesPlatformOnly(Z)V
    .locals 0
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_1_0;
    .end annotation

    .prologue
    .line 447
    iput-boolean p1, p0, Lcom/scoreloop/client/android/core/controller/GamesController;->c:Z

    .line 448
    return-void
.end method

.method public setRangeLength(I)V
    .locals 1
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_1_0;
    .end annotation

    .prologue
    .line 456
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/GamesController;->b:Lcom/scoreloop/client/android/core/controller/a;

    invoke-virtual {v0, p1}, Lcom/scoreloop/client/android/core/controller/a;->b(I)V

    .line 457
    return-void
.end method
