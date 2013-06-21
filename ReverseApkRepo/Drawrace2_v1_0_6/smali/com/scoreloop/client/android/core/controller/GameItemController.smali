.class public Lcom/scoreloop/client/android/core/controller/GameItemController;
.super Lcom/scoreloop/client/android/core/controller/RequestController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/core/controller/GameItemController$c;,
        Lcom/scoreloop/client/android/core/controller/GameItemController$b;,
        Lcom/scoreloop/client/android/core/controller/GameItemController$a;
    }
.end annotation


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lcom/scoreloop/client/android/core/model/GameItem;


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V
    .locals 1
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/scoreloop/client/android/core/controller/GameItemController;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    .line 167
    return-void
.end method

.method public constructor <init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V
    .locals 0
    .parameter
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 177
    invoke-direct {p0, p1, p2}, Lcom/scoreloop/client/android/core/controller/RequestController;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    .line 178
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
    .line 236
    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/server/Response;->f()I

    move-result v0

    .line 238
    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc9

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/server/Response;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 239
    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/server/Response;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 240
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/server/Request;->l()Ljava/lang/Object;

    move-result-object v1

    const-class v2, Lcom/scoreloop/client/android/core/controller/GameItemController$c;

    if-ne v1, v2, :cond_1

    .line 241
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/GameItemController;->loadGameItem()V

    .line 242
    const/4 v0, 0x0

    .line 245
    :goto_0
    return v0

    .line 244
    :cond_1
    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/GameItemController;->c:Lcom/scoreloop/client/android/core/model/GameItem;

    sget-object v2, Lcom/scoreloop/client/android/core/model/GameItem;->ENTITY_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/scoreloop/client/android/core/model/GameItem;->a(Lorg/json/JSONObject;)V

    .line 245
    const/4 v0, 0x1

    goto :goto_0

    .line 247
    :cond_2
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
    .line 188
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/GameItemController;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getGameItem()Lcom/scoreloop/client/android/core/model/GameItem;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/GameItemController;->c:Lcom/scoreloop/client/android/core/model/GameItem;

    return-object v0
.end method

.method public loadGameItem()V
    .locals 7
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/GameItemController;->c:Lcom/scoreloop/client/android/core/model/GameItem;

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "gameItem is null. did you call setGameItem() ?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/GameItemController;->a_()V

    .line 215
    new-instance v0, Lcom/scoreloop/client/android/core/controller/GameItemController$b;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/GameItemController;->e()Lcom/scoreloop/client/android/core/controller/RequestController$b;

    move-result-object v1

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/GameItemController;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v2

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/GameItemController;->g()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v3

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/GameItemController;->f()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scoreloop/client/android/core/model/Session;->d()Lcom/scoreloop/client/android/core/model/Device;

    move-result-object v4

    iget-object v5, p0, Lcom/scoreloop/client/android/core/controller/GameItemController;->c:Lcom/scoreloop/client/android/core/model/GameItem;

    iget-object v6, p0, Lcom/scoreloop/client/android/core/controller/GameItemController;->b:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/scoreloop/client/android/core/controller/GameItemController$b;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/model/Device;Lcom/scoreloop/client/android/core/model/GameItem;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/controller/GameItemController;->b(Lcom/scoreloop/client/android/core/server/Request;)V

    .line 216
    return-void
.end method

.method public loadGameItemDownloadUrl()V
    .locals 5
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/GameItemController;->c:Lcom/scoreloop/client/android/core/model/GameItem;

    if-nez v0, :cond_0

    .line 228
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "gameItem is null. did you call setGameItem() ?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/GameItemController;->a_()V

    .line 231
    new-instance v0, Lcom/scoreloop/client/android/core/controller/GameItemController$a;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/GameItemController;->e()Lcom/scoreloop/client/android/core/controller/RequestController$b;

    move-result-object v1

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/GameItemController;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v2

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/GameItemController;->g()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v3

    iget-object v4, p0, Lcom/scoreloop/client/android/core/controller/GameItemController;->c:Lcom/scoreloop/client/android/core/model/GameItem;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/scoreloop/client/android/core/controller/GameItemController$a;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/model/GameItem;)V

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/controller/GameItemController;->b(Lcom/scoreloop/client/android/core/server/Request;)V

    .line 232
    return-void
.end method

.method public setCurrency(Ljava/lang/String;)V
    .locals 0
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 258
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/GameItemController;->b:Ljava/lang/String;

    .line 259
    return-void
.end method

.method public setGameItem(Lcom/scoreloop/client/android/core/model/Entity;)V
    .locals 1
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 267
    invoke-static {p1}, Lcom/scoreloop/client/android/core/model/GameItem;->a(Lcom/scoreloop/client/android/core/model/Entity;)Lcom/scoreloop/client/android/core/model/GameItem;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/GameItemController;->c:Lcom/scoreloop/client/android/core/model/GameItem;

    .line 268
    return-void
.end method

.method public submitOwnership()V
    .locals 5
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 277
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/GameItemController;->c:Lcom/scoreloop/client/android/core/model/GameItem;

    if-nez v0, :cond_0

    .line 278
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "gameItem is null. did you call setGameItem() ?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/GameItemController;->a_()V

    .line 281
    new-instance v0, Lcom/scoreloop/client/android/core/controller/GameItemController$c;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/GameItemController;->e()Lcom/scoreloop/client/android/core/controller/RequestController$b;

    move-result-object v1

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/GameItemController;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v2

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/GameItemController;->g()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v3

    iget-object v4, p0, Lcom/scoreloop/client/android/core/controller/GameItemController;->c:Lcom/scoreloop/client/android/core/model/GameItem;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/scoreloop/client/android/core/controller/GameItemController$c;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/model/GameItem;)V

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/controller/GameItemController;->b(Lcom/scoreloop/client/android/core/server/Request;)V

    .line 282
    return-void
.end method
