.class public Lcom/scoreloop/client/android/core/controller/GameItemsController;
.super Lcom/scoreloop/client/android/core/controller/RequestController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/core/controller/GameItemsController$TagsMode;,
        Lcom/scoreloop/client/android/core/controller/GameItemsController$a;
    }
.end annotation


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/model/GameItem;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/scoreloop/client/android/core/controller/GameItemsController$TagsMode;


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V
    .locals 1
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 177
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/scoreloop/client/android/core/controller/GameItemsController;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    .line 178
    return-void
.end method

.method public constructor <init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V
    .locals 1
    .parameter
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 188
    invoke-direct {p0, p1, p2}, Lcom/scoreloop/client/android/core/controller/RequestController;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    .line 164
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/GameItemsController;->c:Ljava/util/List;

    .line 166
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/GameItemsController;->e:Ljava/util/List;

    .line 167
    sget-object v0, Lcom/scoreloop/client/android/core/controller/GameItemsController$TagsMode;->REQUIRES_ALL_TAGS:Lcom/scoreloop/client/android/core/controller/GameItemsController$TagsMode;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/GameItemsController;->f:Lcom/scoreloop/client/android/core/controller/GameItemsController$TagsMode;

    .line 189
    return-void
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
    .line 274
    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/server/Response;->f()I

    move-result v0

    .line 276
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/server/Response;->e()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 277
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 279
    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/server/Response;->e()Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "items"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 280
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 282
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 283
    new-instance v4, Lcom/scoreloop/client/android/core/model/GameItem;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    sget-object v6, Lcom/scoreloop/client/android/core/model/GameItem;->ENTITY_NAME:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/scoreloop/client/android/core/model/GameItem;-><init>(Lorg/json/JSONObject;)V

    .line 284
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 286
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/GameItemsController;->c:Ljava/util/List;

    .line 288
    const/4 v0, 0x1

    return v0

    .line 290
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Request failed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/GameItemsController;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getGameItems()Ljava/util/List;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/model/GameItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/GameItemsController;->c:Ljava/util/List;

    return-object v0
.end method

.method public getGameVersion()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 220
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/GameItemsController;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/GameItemsController;->e:Ljava/util/List;

    return-object v0
.end method

.method public getTagsMode()Lcom/scoreloop/client/android/core/controller/GameItemsController$TagsMode;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/GameItemsController;->f:Lcom/scoreloop/client/android/core/controller/GameItemsController$TagsMode;

    return-object v0
.end method

.method public loadCoinPacks()V
    .locals 10
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/GameItemsController;->a_()V

    .line 253
    new-instance v0, Lcom/scoreloop/client/android/core/controller/GameItemsController$a;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/GameItemsController;->e()Lcom/scoreloop/client/android/core/controller/RequestController$b;

    move-result-object v1

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/GameItemsController;->f()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Session;->d()Lcom/scoreloop/client/android/core/model/Device;

    move-result-object v2

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/GameItemsController;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v3

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/GameItemsController;->g()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v4

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/GameItemsController;->getTags()Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/scoreloop/client/android/core/controller/GameItemsController;->f:Lcom/scoreloop/client/android/core/controller/GameItemsController$TagsMode;

    iget-object v6, v6, Lcom/scoreloop/client/android/core/controller/GameItemsController$TagsMode;->a:Lcom/scoreloop/client/android/core/controller/d;

    iget-object v7, p0, Lcom/scoreloop/client/android/core/controller/GameItemsController;->d:Ljava/lang/String;

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/GameItemsController;->f()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v7

    invoke-virtual {v7}, Lcom/scoreloop/client/android/core/model/Session;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v7

    invoke-virtual {v7}, Lcom/scoreloop/client/android/core/model/Game;->getVersion()Ljava/lang/String;

    move-result-object v7

    :goto_0
    const-string v8, "#coin_packs_list"

    iget-object v9, p0, Lcom/scoreloop/client/android/core/controller/GameItemsController;->b:Ljava/lang/String;

    invoke-direct/range {v0 .. v9}, Lcom/scoreloop/client/android/core/controller/GameItemsController$a;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Device;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/User;Ljava/util/List;Lcom/scoreloop/client/android/core/controller/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/controller/GameItemsController;->b(Lcom/scoreloop/client/android/core/server/Request;)V

    .line 256
    return-void

    .line 253
    :cond_0
    iget-object v7, p0, Lcom/scoreloop/client/android/core/controller/GameItemsController;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public loadGameItems()V
    .locals 10
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/GameItemsController;->a_()V

    .line 267
    new-instance v0, Lcom/scoreloop/client/android/core/controller/GameItemsController$a;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/GameItemsController;->e()Lcom/scoreloop/client/android/core/controller/RequestController$b;

    move-result-object v1

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/GameItemsController;->f()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Session;->d()Lcom/scoreloop/client/android/core/model/Device;

    move-result-object v2

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/GameItemsController;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v3

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/GameItemsController;->g()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v4

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/GameItemsController;->getTags()Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/scoreloop/client/android/core/controller/GameItemsController;->f:Lcom/scoreloop/client/android/core/controller/GameItemsController$TagsMode;

    iget-object v6, v6, Lcom/scoreloop/client/android/core/controller/GameItemsController$TagsMode;->a:Lcom/scoreloop/client/android/core/controller/d;

    iget-object v7, p0, Lcom/scoreloop/client/android/core/controller/GameItemsController;->d:Ljava/lang/String;

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/GameItemsController;->f()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v7

    invoke-virtual {v7}, Lcom/scoreloop/client/android/core/model/Session;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v7

    invoke-virtual {v7}, Lcom/scoreloop/client/android/core/model/Game;->getVersion()Ljava/lang/String;

    move-result-object v7

    :goto_0
    const-string v8, "#game_items_list"

    iget-object v9, p0, Lcom/scoreloop/client/android/core/controller/GameItemsController;->b:Ljava/lang/String;

    invoke-direct/range {v0 .. v9}, Lcom/scoreloop/client/android/core/controller/GameItemsController$a;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Device;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/User;Ljava/util/List;Lcom/scoreloop/client/android/core/controller/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/controller/GameItemsController;->b(Lcom/scoreloop/client/android/core/server/Request;)V

    .line 270
    return-void

    .line 267
    :cond_0
    iget-object v7, p0, Lcom/scoreloop/client/android/core/controller/GameItemsController;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public setCurrency(Ljava/lang/String;)V
    .locals 0
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 301
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/GameItemsController;->b:Ljava/lang/String;

    .line 302
    return-void
.end method

.method public setGameVersion(Ljava/lang/String;)V
    .locals 0
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 312
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/GameItemsController;->d:Ljava/lang/String;

    .line 313
    return-void
.end method

.method public setTags(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 324
    if-nez p1, :cond_0

    .line 325
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "tags list must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/GameItemsController;->e:Ljava/util/List;

    .line 328
    return-void
.end method

.method public setTagsMode(Lcom/scoreloop/client/android/core/controller/GameItemsController$TagsMode;)V
    .locals 0
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 336
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/GameItemsController;->f:Lcom/scoreloop/client/android/core/controller/GameItemsController$TagsMode;

    .line 337
    return-void
.end method
