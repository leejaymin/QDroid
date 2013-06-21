.class public Lcom/scoreloop/client/android/core/controller/UsersController;
.super Lcom/scoreloop/client/android/core/controller/RequestController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/core/controller/UsersController$1;,
        Lcom/scoreloop/client/android/core/controller/UsersController$b;,
        Lcom/scoreloop/client/android/core/controller/UsersController$a;,
        Lcom/scoreloop/client/android/core/controller/UsersController$d;,
        Lcom/scoreloop/client/android/core/controller/UsersController$c;,
        Lcom/scoreloop/client/android/core/controller/UsersController$LoginSearchOperator;
    }
.end annotation


# instance fields
.field private b:I

.field private c:Z

.field private d:Lcom/scoreloop/client/android/core/controller/UsersController$LoginSearchOperator;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/model/User;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V
    .locals 1
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/scoreloop/client/android/core/controller/UsersController;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    .line 137
    return-void
.end method

.method public constructor <init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V
    .locals 1
    .parameter
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Lcom/scoreloop/client/android/core/controller/RequestController;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    .line 103
    const/16 v0, 0x19

    iput v0, p0, Lcom/scoreloop/client/android/core/controller/UsersController;->b:I

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scoreloop/client/android/core/controller/UsersController;->c:Z

    .line 105
    sget-object v0, Lcom/scoreloop/client/android/core/controller/UsersController$LoginSearchOperator;->PREFIX:Lcom/scoreloop/client/android/core/controller/UsersController$LoginSearchOperator;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/UsersController;->d:Lcom/scoreloop/client/android/core/controller/UsersController$LoginSearchOperator;

    .line 106
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/UsersController;->e:Ljava/util/List;

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/UsersController;->f:Ljava/lang/Integer;

    .line 125
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/scoreloop/client/android/core/controller/SearchSpec;)Lcom/scoreloop/client/android/core/controller/UsersController$d;
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 546
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 547
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "arguments must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 550
    :cond_1
    new-instance v0, Lcom/scoreloop/client/android/core/controller/UsersController$d;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/UsersController;->e()Lcom/scoreloop/client/android/core/controller/RequestController$b;

    move-result-object v1

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/UsersController;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v2

    iget-boolean v3, p0, Lcom/scoreloop/client/android/core/controller/UsersController;->c:Z

    iget v4, p0, Lcom/scoreloop/client/android/core/controller/UsersController;->b:I

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/scoreloop/client/android/core/controller/UsersController$d;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;ZILjava/lang/String;Lcom/scoreloop/client/android/core/controller/SearchSpec;)V

    return-object v0
.end method

.method private a(Ljava/util/List;Ljava/lang/Integer;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/model/User;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 275
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/UsersController;->e:Ljava/util/List;

    .line 276
    iput-object p2, p0, Lcom/scoreloop/client/android/core/controller/UsersController;->f:Ljava/lang/Integer;

    .line 277
    return-void
.end method

.method private b()Lcom/scoreloop/client/android/core/controller/SearchSpec;
    .locals 5

    .prologue
    .line 583
    new-instance v0, Lcom/scoreloop/client/android/core/controller/SearchSpec;

    new-instance v1, Lcom/scoreloop/client/android/core/controller/e;

    const-string v2, "login"

    sget-object v3, Lcom/scoreloop/client/android/core/controller/e$a;->ASCENDING:Lcom/scoreloop/client/android/core/controller/e$a;

    invoke-direct {v1, v2, v3}, Lcom/scoreloop/client/android/core/controller/e;-><init>(Ljava/lang/String;Lcom/scoreloop/client/android/core/controller/e$a;)V

    invoke-direct {v0, v1}, Lcom/scoreloop/client/android/core/controller/SearchSpec;-><init>(Lcom/scoreloop/client/android/core/controller/e;)V

    .line 584
    iget-boolean v1, p0, Lcom/scoreloop/client/android/core/controller/UsersController;->c:Z

    if-nez v1, :cond_0

    .line 585
    new-instance v1, Lcom/scoreloop/client/android/core/controller/c;

    const-string v2, "skills_game_id"

    sget-object v3, Lcom/scoreloop/client/android/core/controller/d;->IS:Lcom/scoreloop/client/android/core/controller/d;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/UsersController;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scoreloop/client/android/core/model/Game;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/scoreloop/client/android/core/controller/c;-><init>(Ljava/lang/String;Lcom/scoreloop/client/android/core/controller/d;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/controller/SearchSpec;->a(Lcom/scoreloop/client/android/core/controller/c;)V

    .line 587
    :cond_0
    return-object v0
.end method


# virtual methods
.method final a(Lcom/scoreloop/client/android/core/server/Request;Lcom/scoreloop/client/android/core/server/Response;)Z
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 511
    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/server/Response;->f()I

    move-result v0

    .line 512
    const/16 v2, 0xc8

    if-eq v0, v2, :cond_0

    .line 513
    invoke-static {p2}, Lcom/scoreloop/client/android/core/controller/RequestControllerException;->a(Lcom/scoreloop/client/android/core/server/Response;)Lcom/scoreloop/client/android/core/controller/RequestControllerException;

    move-result-object v0

    throw v0

    .line 516
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 517
    const/4 v0, 0x0

    .line 519
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/server/Request;->l()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/scoreloop/client/android/core/controller/UsersController$a;->a:Ljava/lang/Object;

    if-ne v3, v4, :cond_1

    .line 520
    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/server/Response;->e()Lorg/json/JSONObject;

    move-result-object v3

    sget-object v4, Lcom/scoreloop/client/android/core/model/User;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "buddies"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 521
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 523
    :goto_0
    if-ge v1, v4, :cond_3

    .line 524
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 525
    new-instance v6, Lcom/scoreloop/client/android/core/model/User;

    invoke-direct {v6, v5}, Lcom/scoreloop/client/android/core/model/User;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 523
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 527
    :cond_1
    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/server/Response;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 528
    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/server/Response;->d()Lorg/json/JSONArray;

    move-result-object v3

    .line 529
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 531
    :goto_1
    if-ge v1, v4, :cond_3

    .line 532
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    sget-object v6, Lcom/scoreloop/client/android/core/model/User;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 533
    new-instance v6, Lcom/scoreloop/client/android/core/model/User;

    invoke-direct {v6, v5}, Lcom/scoreloop/client/android/core/model/User;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 531
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 536
    :cond_2
    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/server/Response;->e()Lorg/json/JSONObject;

    move-result-object v0

    .line 537
    const-string v1, "users_count"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 540
    :cond_3
    invoke-direct {p0, v2, v0}, Lcom/scoreloop/client/android/core/controller/UsersController;->a(Ljava/util/List;Ljava/lang/Integer;)V

    .line 542
    const/4 v0, 0x1

    return v0
.end method

.method public getCountOfUsers()I
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 496
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/UsersController;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/UsersController;->f:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 499
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/UsersController;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getSearchLimit()I
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 193
    iget v0, p0, Lcom/scoreloop/client/android/core/controller/UsersController;->b:I

    return v0
.end method

.method public getSearchOperator()Lcom/scoreloop/client/android/core/controller/UsersController$LoginSearchOperator;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/UsersController;->d:Lcom/scoreloop/client/android/core/controller/UsersController$LoginSearchOperator;

    return-object v0
.end method

.method public getSearchesGlobal()Z
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/scoreloop/client/android/core/controller/UsersController;->c:Z

    return v0
.end method

.method public getUsers()Ljava/util/List;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/model/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 271
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/UsersController;->e:Ljava/util/List;

    return-object v0
.end method

.method public isMaxUserCount()Z
    .locals 2
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_1_0;
    .end annotation

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/UsersController;->getCountOfUsers()I

    move-result v0

    const/16 v1, 0x3e7

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverLimit()Z
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 453
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/UsersController;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadBuddies(Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/model/Game;)V
    .locals 3
    .parameter
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_0_0;
    .end annotation

    .prologue
    .line 473
    if-nez p1, :cond_0

    .line 474
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The user parameter must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 476
    :cond_0
    if-nez p2, :cond_1

    .line 477
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The game paramter must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 479
    :cond_1
    new-instance v0, Lcom/scoreloop/client/android/core/controller/UsersController$a;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/UsersController;->e()Lcom/scoreloop/client/android/core/controller/RequestController$b;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/scoreloop/client/android/core/controller/UsersController$a;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/model/Game;)V

    .line 480
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/UsersController;->a_()V

    .line 481
    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v1, v2}, Lcom/scoreloop/client/android/core/server/Request;->a(J)V

    .line 482
    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/controller/UsersController;->b(Lcom/scoreloop/client/android/core/server/Request;)V

    .line 483
    return-void
.end method

.method public loadRecommendedBuddies(I)V
    .locals 6
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_0_0;
    .end annotation

    .prologue
    .line 437
    new-instance v0, Lcom/scoreloop/client/android/core/controller/UsersController$b;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/UsersController;->e()Lcom/scoreloop/client/android/core/controller/RequestController$b;

    move-result-object v1

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/UsersController;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v2

    iget-boolean v3, p0, Lcom/scoreloop/client/android/core/controller/UsersController;->c:Z

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/UsersController;->g()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v5

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/scoreloop/client/android/core/controller/UsersController$b;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;ZILcom/scoreloop/client/android/core/model/User;)V

    .line 438
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/UsersController;->a_()V

    .line 439
    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v1, v2}, Lcom/scoreloop/client/android/core/server/Request;->a(J)V

    .line 440
    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/controller/UsersController;->b(Lcom/scoreloop/client/android/core/server/Request;)V

    .line 441
    return-void
.end method

.method public searchByEmail(Ljava/lang/String;)V
    .locals 4
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 332
    if-nez p1, :cond_0

    .line 333
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter anEmail cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_0
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/UsersController;->b()Lcom/scoreloop/client/android/core/controller/SearchSpec;

    move-result-object v0

    .line 337
    new-instance v1, Lcom/scoreloop/client/android/core/controller/c;

    const-string v2, "email"

    sget-object v3, Lcom/scoreloop/client/android/core/controller/d;->EXACT:Lcom/scoreloop/client/android/core/controller/d;

    invoke-direct {v1, v2, v3, p1}, Lcom/scoreloop/client/android/core/controller/c;-><init>(Ljava/lang/String;Lcom/scoreloop/client/android/core/controller/d;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/controller/SearchSpec;->a(Lcom/scoreloop/client/android/core/controller/c;)V

    .line 339
    const-string v1, "UserEMailSearch"

    invoke-direct {p0, v1, v0}, Lcom/scoreloop/client/android/core/controller/UsersController;->a(Ljava/lang/String;Lcom/scoreloop/client/android/core/controller/SearchSpec;)Lcom/scoreloop/client/android/core/controller/UsersController$d;

    move-result-object v0

    .line 340
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/UsersController;->a_()V

    .line 341
    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/controller/UsersController;->b(Lcom/scoreloop/client/android/core/server/Request;)V

    .line 342
    return-void
.end method

.method public searchByLocalAddressBook()V
    .locals 6
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 364
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/UsersController;->b()Lcom/scoreloop/client/android/core/controller/SearchSpec;

    move-result-object v1

    .line 366
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/UsersController;->f()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    invoke-static {v0}, Lcom/scoreloop/client/android/core/model/AddressBook;->a(Lcom/scoreloop/client/android/core/model/Session;)Lcom/scoreloop/client/android/core/model/AddressBook;

    move-result-object v0

    .line 367
    sget-object v2, Lcom/scoreloop/client/android/core/model/AddressBook$HashAlgorithm;->MD5:Lcom/scoreloop/client/android/core/model/AddressBook$HashAlgorithm;

    invoke-virtual {v0, v2}, Lcom/scoreloop/client/android/core/model/AddressBook;->a(Lcom/scoreloop/client/android/core/model/AddressBook$HashAlgorithm;)V

    .line 368
    const-string v2, "shwu2831j78s"

    invoke-virtual {v0, v2}, Lcom/scoreloop/client/android/core/model/AddressBook;->a(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/UsersController;->f()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Session;->b()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/scoreloop/client/android/core/model/AddressBook;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 371
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 373
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/scoreloop/client/android/core/controller/UsersController;->a(Ljava/util/List;Ljava/lang/Integer;)V

    .line 374
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/UsersController;->h()V

    .line 386
    :goto_0
    return-void

    .line 376
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 377
    new-instance v2, Lcom/scoreloop/client/android/core/controller/c;

    const-string v3, "email_digest"

    sget-object v4, Lcom/scoreloop/client/android/core/controller/d;->EQUALS_ANY:Lcom/scoreloop/client/android/core/controller/d;

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v3, v4, v0}, Lcom/scoreloop/client/android/core/controller/c;-><init>(Ljava/lang/String;Lcom/scoreloop/client/android/core/controller/d;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/core/controller/SearchSpec;->a(Lcom/scoreloop/client/android/core/controller/c;)V

    .line 382
    :goto_1
    const-string v0, "UserAddressBookSearch"

    invoke-direct {p0, v0, v1}, Lcom/scoreloop/client/android/core/controller/UsersController;->a(Ljava/lang/String;Lcom/scoreloop/client/android/core/controller/SearchSpec;)Lcom/scoreloop/client/android/core/controller/UsersController$d;

    move-result-object v0

    .line 383
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/UsersController;->a_()V

    .line 384
    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/controller/UsersController;->b(Lcom/scoreloop/client/android/core/server/Request;)V

    goto :goto_0

    .line 379
    :cond_1
    new-instance v2, Lcom/scoreloop/client/android/core/controller/c;

    const-string v3, "email_digest"

    sget-object v4, Lcom/scoreloop/client/android/core/controller/d;->EQUALS_ANY:Lcom/scoreloop/client/android/core/controller/d;

    invoke-direct {v2, v3, v4, v0}, Lcom/scoreloop/client/android/core/controller/c;-><init>(Ljava/lang/String;Lcom/scoreloop/client/android/core/controller/d;Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/core/controller/SearchSpec;->a(Lcom/scoreloop/client/android/core/controller/c;)V

    goto :goto_1
.end method

.method public searchByLogin(Ljava/lang/String;)V
    .locals 4
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 291
    if-nez p1, :cond_0

    .line 292
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter aLogin cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_0
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/UsersController;->b()Lcom/scoreloop/client/android/core/controller/SearchSpec;

    move-result-object v1

    .line 298
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/UsersController;->d:Lcom/scoreloop/client/android/core/controller/UsersController$LoginSearchOperator;

    if-eqz v0, :cond_1

    .line 299
    sget-object v0, Lcom/scoreloop/client/android/core/controller/UsersController$1;->a:[I

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/UsersController;->d:Lcom/scoreloop/client/android/core/controller/UsersController$LoginSearchOperator;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/controller/UsersController$LoginSearchOperator;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 306
    sget-object v0, Lcom/scoreloop/client/android/core/controller/d;->BEGINS_WITH:Lcom/scoreloop/client/android/core/controller/d;

    .line 312
    :goto_0
    new-instance v2, Lcom/scoreloop/client/android/core/controller/c;

    const-string v3, "login"

    invoke-direct {v2, v3, v0, p1}, Lcom/scoreloop/client/android/core/controller/c;-><init>(Ljava/lang/String;Lcom/scoreloop/client/android/core/controller/d;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/core/controller/SearchSpec;->a(Lcom/scoreloop/client/android/core/controller/c;)V

    .line 314
    const-string v0, "UserLoginSearch"

    invoke-direct {p0, v0, v1}, Lcom/scoreloop/client/android/core/controller/UsersController;->a(Ljava/lang/String;Lcom/scoreloop/client/android/core/controller/SearchSpec;)Lcom/scoreloop/client/android/core/controller/UsersController$d;

    move-result-object v0

    .line 315
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/UsersController;->a_()V

    .line 316
    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/controller/UsersController;->b(Lcom/scoreloop/client/android/core/server/Request;)V

    .line 317
    return-void

    .line 302
    :pswitch_0
    sget-object v0, Lcom/scoreloop/client/android/core/controller/d;->EXACT:Lcom/scoreloop/client/android/core/controller/d;

    goto :goto_0

    .line 310
    :cond_1
    sget-object v0, Lcom/scoreloop/client/android/core/controller/d;->BEGINS_WITH:Lcom/scoreloop/client/android/core/controller/d;

    goto :goto_0

    .line 299
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public searchBySocialProvider(Lcom/scoreloop/client/android/core/model/SocialProvider;)V
    .locals 5
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 407
    if-nez p1, :cond_0

    .line 408
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter aSocialProvider cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 411
    :cond_0
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/UsersController;->b()Lcom/scoreloop/client/android/core/controller/SearchSpec;

    move-result-object v0

    .line 412
    new-instance v1, Lcom/scoreloop/client/android/core/controller/c;

    const-string v2, "social_provider_id"

    sget-object v3, Lcom/scoreloop/client/android/core/controller/d;->EXACT:Lcom/scoreloop/client/android/core/controller/d;

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/SocialProvider;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/scoreloop/client/android/core/controller/c;-><init>(Ljava/lang/String;Lcom/scoreloop/client/android/core/controller/d;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/controller/SearchSpec;->a(Lcom/scoreloop/client/android/core/controller/c;)V

    .line 414
    const-string v1, "#user_social_provider_search"

    invoke-direct {p0, v1, v0}, Lcom/scoreloop/client/android/core/controller/UsersController;->a(Ljava/lang/String;Lcom/scoreloop/client/android/core/controller/SearchSpec;)Lcom/scoreloop/client/android/core/controller/UsersController$d;

    move-result-object v0

    .line 415
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/UsersController;->g()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/controller/UsersController$d;->a(Lcom/scoreloop/client/android/core/model/User;)V

    .line 417
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/UsersController;->a_()V

    .line 418
    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/controller/UsersController;->b(Lcom/scoreloop/client/android/core/server/Request;)V

    .line 419
    return-void
.end method

.method public setSearchLimit(I)V
    .locals 0
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 165
    iput p1, p0, Lcom/scoreloop/client/android/core/controller/UsersController;->b:I

    .line 166
    return-void
.end method

.method public setSearchOperator(Lcom/scoreloop/client/android/core/controller/UsersController$LoginSearchOperator;)V
    .locals 2
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 232
    if-nez p1, :cond_0

    .line 233
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter aSearchOperator cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_0
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/UsersController;->d:Lcom/scoreloop/client/android/core/controller/UsersController$LoginSearchOperator;

    .line 236
    return-void
.end method

.method public setSearchesGlobal(Z)V
    .locals 2
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/UsersController;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 205
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot search not globally without game being set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_0
    iput-boolean p1, p0, Lcom/scoreloop/client/android/core/controller/UsersController;->c:Z

    .line 208
    return-void
.end method
