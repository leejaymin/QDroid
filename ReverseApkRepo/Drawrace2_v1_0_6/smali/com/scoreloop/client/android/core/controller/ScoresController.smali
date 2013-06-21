.class public Lcom/scoreloop/client/android/core/controller/ScoresController;
.super Lcom/scoreloop/client/android/core/controller/RequestController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/core/controller/ScoresController$b;,
        Lcom/scoreloop/client/android/core/controller/ScoresController$a;
    }
.end annotation


# instance fields
.field private final b:Lcom/scoreloop/client/android/core/controller/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/scoreloop/client/android/core/controller/a",
            "<",
            "Lcom/scoreloop/client/android/core/model/Score;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Integer;

.field private d:Lcom/scoreloop/client/android/core/controller/ScoresController$b;

.field private e:Lcom/scoreloop/client/android/core/controller/RankingController;

.field private f:Lcom/scoreloop/client/android/core/model/Score;

.field private g:Lcom/scoreloop/client/android/core/model/SearchList;

.field private final h:Lcom/scoreloop/client/android/core/controller/LocalScoreStore;


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V
    .locals 1
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 168
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/scoreloop/client/android/core/controller/ScoresController;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    .line 169
    return-void
.end method

.method public constructor <init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V
    .locals 5
    .parameter
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 187
    invoke-direct {p0, p1, p2}, Lcom/scoreloop/client/android/core/controller/RequestController;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    .line 151
    new-instance v0, Lcom/scoreloop/client/android/core/controller/a;

    invoke-direct {v0}, Lcom/scoreloop/client/android/core/controller/a;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoresController;->b:Lcom/scoreloop/client/android/core/controller/a;

    .line 152
    iput-object v1, p0, Lcom/scoreloop/client/android/core/controller/ScoresController;->c:Ljava/lang/Integer;

    .line 155
    iput-object v1, p0, Lcom/scoreloop/client/android/core/controller/ScoresController;->f:Lcom/scoreloop/client/android/core/model/Score;

    .line 156
    iput-object v1, p0, Lcom/scoreloop/client/android/core/controller/ScoresController;->g:Lcom/scoreloop/client/android/core/model/SearchList;

    .line 188
    invoke-static {}, Lcom/scoreloop/client/android/core/model/SearchList;->getDefaultScoreSearchList()Lcom/scoreloop/client/android/core/model/SearchList;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoresController;->g:Lcom/scoreloop/client/android/core/model/SearchList;

    .line 189
    new-instance v0, Lcom/scoreloop/client/android/core/controller/LocalScoreStore;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ScoresController;->f()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Session;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ScoresController;->f()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Session;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Game;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ScoresController;->f()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/model/Session;->d()Lcom/scoreloop/client/android/core/model/Device;

    move-result-object v3

    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/model/Device;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ScoresController;->f()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scoreloop/client/android/core/model/Session;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/scoreloop/client/android/core/controller/LocalScoreStore;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/scoreloop/client/android/core/model/User;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoresController;->h:Lcom/scoreloop/client/android/core/controller/LocalScoreStore;

    .line 191
    return-void
.end method

.method static synthetic a(Lcom/scoreloop/client/android/core/controller/ScoresController;)Lcom/scoreloop/client/android/core/model/Score;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoresController;->f:Lcom/scoreloop/client/android/core/model/Score;

    return-object v0
.end method

.method private a(I)V
    .locals 8
    .parameter

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ScoresController;->a_()V

    .line 334
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoresController;->g:Lcom/scoreloop/client/android/core/model/SearchList;

    invoke-static {}, Lcom/scoreloop/client/android/core/model/SearchList;->getLocalScoreSearchList()Lcom/scoreloop/client/android/core/model/SearchList;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 335
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoresController;->b:Lcom/scoreloop/client/android/core/controller/a;

    invoke-virtual {v0, p1}, Lcom/scoreloop/client/android/core/controller/a;->a(I)V

    .line 336
    new-instance v0, Lcom/scoreloop/client/android/core/controller/ScoresController$b;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ScoresController;->e()Lcom/scoreloop/client/android/core/controller/RequestController$b;

    move-result-object v1

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ScoresController;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v2

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ScoresController;->getSearchList()Lcom/scoreloop/client/android/core/model/SearchList;

    move-result-object v3

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ScoresController;->g()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v4

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ScoresController;->getMode()Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/scoreloop/client/android/core/controller/ScoresController;->b:Lcom/scoreloop/client/android/core/controller/a;

    invoke-virtual {v6}, Lcom/scoreloop/client/android/core/controller/a;->a()I

    move-result v6

    move v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/scoreloop/client/android/core/controller/ScoresController$b;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/SearchList;Lcom/scoreloop/client/android/core/model/User;Ljava/lang/Integer;II)V

    .line 338
    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Lcom/scoreloop/client/android/core/server/Request;->a(J)V

    .line 339
    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/controller/ScoresController;->b(Lcom/scoreloop/client/android/core/server/Request;)V

    .line 343
    :goto_0
    return-void

    .line 341
    :cond_0
    new-instance v0, Lcom/scoreloop/client/android/core/controller/ScoresController$2;

    invoke-direct {v0, p0, p1}, Lcom/scoreloop/client/android/core/controller/ScoresController$2;-><init>(Lcom/scoreloop/client/android/core/controller/ScoresController;I)V

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/ScoresController$2;->c()Lcom/scoreloop/client/android/core/util/DiskAsyncTask;

    goto :goto_0
.end method

.method static synthetic a(Lcom/scoreloop/client/android/core/controller/ScoresController;Ljava/lang/Integer;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 60
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ScoresController;->getRangeLength()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int v1, v2, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/ScoresController;->d:Lcom/scoreloop/client/android/core/controller/ScoresController$b;

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "_nextRequest must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/ScoresController;->b:Lcom/scoreloop/client/android/core/controller/a;

    invoke-virtual {v1, v0}, Lcom/scoreloop/client/android/core/controller/a;->c(I)V

    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/ScoresController;->d:Lcom/scoreloop/client/android/core/controller/ScoresController$b;

    invoke-virtual {v1, v0}, Lcom/scoreloop/client/android/core/controller/ScoresController$b;->a(I)V

    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoresController;->d:Lcom/scoreloop/client/android/core/controller/ScoresController$b;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/scoreloop/client/android/core/controller/ScoresController;->d:Lcom/scoreloop/client/android/core/controller/ScoresController$b;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ScoresController;->a_()V

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Lcom/scoreloop/client/android/core/controller/ScoresController$b;->a(J)V

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/controller/ScoresController;->b(Lcom/scoreloop/client/android/core/server/Request;)V

    return-void
.end method

.method static synthetic b(Lcom/scoreloop/client/android/core/controller/ScoresController;)Lcom/scoreloop/client/android/core/controller/LocalScoreStore;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoresController;->h:Lcom/scoreloop/client/android/core/controller/LocalScoreStore;

    return-object v0
.end method

.method private b()Lcom/scoreloop/client/android/core/controller/RankingController;
    .locals 3

    .prologue
    .line 256
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoresController;->e:Lcom/scoreloop/client/android/core/controller/RankingController;

    if-nez v0, :cond_0

    .line 257
    new-instance v0, Lcom/scoreloop/client/android/core/controller/RankingController;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ScoresController;->f()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v1

    new-instance v2, Lcom/scoreloop/client/android/core/controller/ScoresController$a;

    invoke-direct {v2, p0}, Lcom/scoreloop/client/android/core/controller/ScoresController$a;-><init>(Lcom/scoreloop/client/android/core/controller/ScoresController;)V

    invoke-direct {v0, v1, v2}, Lcom/scoreloop/client/android/core/controller/RankingController;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoresController;->e:Lcom/scoreloop/client/android/core/controller/RankingController;

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoresController;->e:Lcom/scoreloop/client/android/core/controller/RankingController;

    return-object v0
.end method

.method static synthetic c(Lcom/scoreloop/client/android/core/controller/ScoresController;)Lcom/scoreloop/client/android/core/controller/a;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoresController;->b:Lcom/scoreloop/client/android/core/controller/a;

    return-object v0
.end method

.method private c()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 539
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoresController;->b:Lcom/scoreloop/client/android/core/controller/a;

    invoke-virtual {v0, v7}, Lcom/scoreloop/client/android/core/controller/a;->a(I)V

    .line 540
    new-instance v0, Lcom/scoreloop/client/android/core/controller/ScoresController$b;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ScoresController;->e()Lcom/scoreloop/client/android/core/controller/RequestController$b;

    move-result-object v1

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ScoresController;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v2

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ScoresController;->getSearchList()Lcom/scoreloop/client/android/core/model/SearchList;

    move-result-object v3

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ScoresController;->g()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v4

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ScoresController;->getMode()Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/scoreloop/client/android/core/controller/ScoresController;->b:Lcom/scoreloop/client/android/core/controller/a;

    invoke-virtual {v6}, Lcom/scoreloop/client/android/core/controller/a;->a()I

    move-result v6

    invoke-direct/range {v0 .. v7}, Lcom/scoreloop/client/android/core/controller/ScoresController$b;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/SearchList;Lcom/scoreloop/client/android/core/model/User;Ljava/lang/Integer;II)V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoresController;->d:Lcom/scoreloop/client/android/core/controller/ScoresController$b;

    .line 542
    return-void
.end method

.method static synthetic d(Lcom/scoreloop/client/android/core/controller/ScoresController;)Ljava/lang/Integer;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoresController;->c:Ljava/lang/Integer;

    return-object v0
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
    .line 547
    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/server/Response;->f()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    .line 548
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ScoresController;->a_()V

    .line 549
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request failed, returned status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/server/Response;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 552
    :cond_0
    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/server/Response;->e()Lorg/json/JSONObject;

    move-result-object v0

    .line 553
    const-string v1, "scores"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 555
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoresController;->f:Lcom/scoreloop/client/android/core/model/Score;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 558
    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 559
    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/ScoresController;->b:Lcom/scoreloop/client/android/core/controller/a;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/controller/a;->b()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    .line 560
    const/4 v1, 0x0

    move v3, v2

    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 566
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 567
    sget-object v6, Lcom/scoreloop/client/android/core/model/Score;->a:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 568
    new-instance v6, Lcom/scoreloop/client/android/core/model/Score;

    invoke-direct {v6, v1}, Lcom/scoreloop/client/android/core/model/Score;-><init>(Lorg/json/JSONObject;)V

    .line 573
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v3, v1, :cond_2

    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/ScoresController;->f:Lcom/scoreloop/client/android/core/model/Score;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Score;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v6}, Lcom/scoreloop/client/android/core/model/Score;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    iget-object v7, p0, Lcom/scoreloop/client/android/core/controller/ScoresController;->f:Lcom/scoreloop/client/android/core/model/Score;

    invoke-virtual {v7}, Lcom/scoreloop/client/android/core/model/Score;->getIdentifier()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 575
    :cond_1
    add-int/lit8 v1, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/scoreloop/client/android/core/model/Score;->a(Ljava/lang/Integer;)V

    .line 576
    iget-object v3, p0, Lcom/scoreloop/client/android/core/controller/ScoresController;->f:Lcom/scoreloop/client/android/core/model/Score;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v1

    .line 579
    :cond_2
    add-int/lit8 v1, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/scoreloop/client/android/core/model/Score;->a(Ljava/lang/Integer;)V

    .line 580
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v1

    move v1, v2

    .line 581
    goto :goto_1

    .line 555
    :cond_3
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoresController;->f:Lcom/scoreloop/client/android/core/model/Score;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Score;->getRank()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 583
    :cond_4
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoresController;->b:Lcom/scoreloop/client/android/core/controller/a;

    invoke-virtual {v0, v5}, Lcom/scoreloop/client/android/core/controller/a;->a(Ljava/util/List;)V

    .line 585
    const/4 v0, 0x1

    return v0
.end method

.method protected final a_()V
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoresController;->e:Lcom/scoreloop/client/android/core/controller/RankingController;

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoresController;->e:Lcom/scoreloop/client/android/core/controller/RankingController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/RankingController;->a_()V

    .line 595
    :cond_0
    invoke-super {p0}, Lcom/scoreloop/client/android/core/controller/RequestController;->a_()V

    .line 596
    return-void
.end method

.method public getMode()Ljava/lang/Integer;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoresController;->c:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRangeLength()I
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoresController;->b:Lcom/scoreloop/client/android/core/controller/a;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/a;->f()I

    move-result v0

    return v0
.end method

.method public getScores()Ljava/util/List;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/model/Score;",
            ">;"
        }
    .end annotation

    .prologue
    .line 277
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoresController;->b:Lcom/scoreloop/client/android/core/controller/a;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/a;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSearchList()Lcom/scoreloop/client/android/core/model/SearchList;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 294
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoresController;->g:Lcom/scoreloop/client/android/core/model/SearchList;

    return-object v0
.end method

.method public hasNextRange()Z
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 309
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoresController;->b:Lcom/scoreloop/client/android/core/controller/a;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/a;->h()Z

    move-result v0

    return v0
.end method

.method public hasPreviousRange()Z
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 324
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoresController;->b:Lcom/scoreloop/client/android/core/controller/a;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/a;->i()Z

    move-result v0

    return v0
.end method

.method public loadLocalScoresToSubmit()V
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 200
    new-instance v0, Lcom/scoreloop/client/android/core/controller/ScoresController$1;

    invoke-direct {v0, p0}, Lcom/scoreloop/client/android/core/controller/ScoresController$1;-><init>(Lcom/scoreloop/client/android/core/controller/ScoresController;)V

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/ScoresController$1;->c()Lcom/scoreloop/client/android/core/util/DiskAsyncTask;

    .line 229
    return-void
.end method

.method public loadNextRange()V
    .locals 2
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ScoresController;->hasNextRange()Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There\'s no next range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoresController;->b:Lcom/scoreloop/client/android/core/controller/a;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/a;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoresController;->b:Lcom/scoreloop/client/android/core/controller/a;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/a;->c()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/core/controller/ScoresController;->a(I)V

    .line 377
    :goto_0
    return-void

    .line 375
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/core/controller/ScoresController;->a(I)V

    goto :goto_0
.end method

.method public loadPreviousRange()V
    .locals 2
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ScoresController;->hasPreviousRange()Z

    move-result v0

    if-nez v0, :cond_0

    .line 387
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There\'s no previous range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoresController;->b:Lcom/scoreloop/client/android/core/controller/a;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/a;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 391
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoresController;->b:Lcom/scoreloop/client/android/core/controller/a;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/a;->e()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/core/controller/ScoresController;->a(I)V

    .line 395
    :goto_0
    return-void

    .line 393
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/core/controller/ScoresController;->a(I)V

    goto :goto_0
.end method

.method public loadRangeAtRank(I)V
    .locals 2
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 409
    if-gtz p1, :cond_0

    .line 410
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rank must be a positive integer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 414
    :cond_0
    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/core/controller/ScoresController;->a(I)V

    .line 415
    return-void
.end method

.method public loadRangeForScore(Lcom/scoreloop/client/android/core/model/Score;)V
    .locals 3
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 432
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoresController;->g:Lcom/scoreloop/client/android/core/model/SearchList;

    invoke-static {}, Lcom/scoreloop/client/android/core/model/SearchList;->getLocalScoreSearchList()Lcom/scoreloop/client/android/core/model/SearchList;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 433
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "loadRangeForScore is not available when the search list is set to the local search list"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :cond_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ScoresController;->a_()V

    .line 442
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/ScoresController;->c()V

    .line 444
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/ScoresController;->b()Lcom/scoreloop/client/android/core/controller/RankingController;

    move-result-object v0

    .line 445
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ScoresController;->getSearchList()Lcom/scoreloop/client/android/core/model/SearchList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/controller/RankingController;->setSearchList(Lcom/scoreloop/client/android/core/model/SearchList;)V

    .line 446
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/ScoresController;->f:Lcom/scoreloop/client/android/core/model/Score;

    .line 447
    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/ScoresController;->f:Lcom/scoreloop/client/android/core/model/Score;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/core/model/Score;->a(Ljava/lang/Integer;)V

    .line 448
    invoke-virtual {v0, p1}, Lcom/scoreloop/client/android/core/controller/RankingController;->loadRankingForScore(Lcom/scoreloop/client/android/core/model/Score;)V

    .line 449
    return-void
.end method

.method public loadRangeForScoreResult(Ljava/lang/Double;Ljava/util/Map;)V
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
    .line 465
    new-instance v0, Lcom/scoreloop/client/android/core/model/Score;

    invoke-direct {v0, p1, p2}, Lcom/scoreloop/client/android/core/model/Score;-><init>(Ljava/lang/Double;Ljava/util/Map;)V

    .line 466
    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/controller/ScoresController;->loadRangeForScore(Lcom/scoreloop/client/android/core/model/Score;)V

    .line 467
    return-void
.end method

.method public loadRangeForUser(Lcom/scoreloop/client/android/core/model/User;)V
    .locals 2
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 481
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoresController;->g:Lcom/scoreloop/client/android/core/model/SearchList;

    invoke-static {}, Lcom/scoreloop/client/android/core/model/SearchList;->getLocalScoreSearchList()Lcom/scoreloop/client/android/core/model/SearchList;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 482
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "loadRangeForUser is not available when the search list is set to the local search list"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 490
    :cond_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ScoresController;->a_()V

    .line 492
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/ScoresController;->c()V

    .line 494
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoresController;->f:Lcom/scoreloop/client/android/core/model/Score;

    .line 495
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/ScoresController;->b()Lcom/scoreloop/client/android/core/controller/RankingController;

    move-result-object v0

    .line 496
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ScoresController;->getSearchList()Lcom/scoreloop/client/android/core/model/SearchList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/controller/RankingController;->setSearchList(Lcom/scoreloop/client/android/core/model/SearchList;)V

    .line 497
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ScoresController;->getMode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/scoreloop/client/android/core/controller/RankingController;->loadRankingForUserInGameMode(Lcom/scoreloop/client/android/core/model/User;Ljava/lang/Integer;)V

    .line 498
    return-void
.end method

.method public removeLocalScores()V
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 646
    new-instance v0, Lcom/scoreloop/client/android/core/controller/ScoresController$3;

    invoke-direct {v0, p0}, Lcom/scoreloop/client/android/core/controller/ScoresController$3;-><init>(Lcom/scoreloop/client/android/core/controller/ScoresController;)V

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/ScoresController$3;->c()Lcom/scoreloop/client/android/core/util/DiskAsyncTask;

    .line 658
    return-void
.end method

.method public setMode(Ljava/lang/Integer;)V
    .locals 0
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 609
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/ScoresController;->c:Ljava/lang/Integer;

    .line 610
    return-void
.end method

.method public setRangeLength(I)V
    .locals 1
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 619
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoresController;->b:Lcom/scoreloop/client/android/core/controller/a;

    invoke-virtual {v0, p1}, Lcom/scoreloop/client/android/core/controller/a;->b(I)V

    .line 620
    return-void
.end method

.method public setSearchList(Lcom/scoreloop/client/android/core/model/SearchList;)V
    .locals 2
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 631
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoresController;->g:Lcom/scoreloop/client/android/core/model/SearchList;

    if-eq v0, p1, :cond_0

    .line 632
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/ScoresController;->g:Lcom/scoreloop/client/android/core/model/SearchList;

    .line 633
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoresController;->f:Lcom/scoreloop/client/android/core/model/Score;

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoresController;->f:Lcom/scoreloop/client/android/core/model/Score;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/model/Score;->a(Ljava/lang/Integer;)V

    .line 637
    :cond_0
    return-void
.end method
