.class public Lcom/scoreloop/client/android/core/controller/GameController;
.super Lcom/scoreloop/client/android/core/controller/RequestController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/core/controller/GameController$a;
    }
.end annotation


# instance fields
.field private b:Lcom/scoreloop/client/android/core/model/Game;


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V
    .locals 1
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_1_0;
    .end annotation

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/scoreloop/client/android/core/controller/GameController;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V
    .locals 1
    .parameter
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_1_0;
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/scoreloop/client/android/core/controller/RequestController;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/GameController;->b:Lcom/scoreloop/client/android/core/model/Game;

    .line 62
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
    .line 117
    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/server/Response;->f()I

    move-result v0

    .line 119
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/server/Response;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/server/Response;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 121
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/GameController;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v1

    sget-object v2, Lcom/scoreloop/client/android/core/model/Game;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/scoreloop/client/android/core/model/Game;->a(Lorg/json/JSONObject;)V

    .line 122
    const/4 v0, 0x1

    return v0

    .line 124
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Request failed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getGame()Lcom/scoreloop/client/android/core/model/Game;
    .locals 2
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_1_0;
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/GameController;->b:Lcom/scoreloop/client/android/core/model/Game;

    if-nez v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/GameController;->f()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/GameController;->b:Lcom/scoreloop/client/android/core/model/Game;

    .line 91
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/GameController;->b:Lcom/scoreloop/client/android/core/model/Game;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no session game available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/GameController;->b:Lcom/scoreloop/client/android/core/model/Game;

    return-object v0
.end method

.method public loadGame()V
    .locals 3
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_1_0;
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/GameController;->a_()V

    .line 109
    new-instance v0, Lcom/scoreloop/client/android/core/controller/GameController$a;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/GameController;->e()Lcom/scoreloop/client/android/core/controller/RequestController$b;

    move-result-object v1

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/GameController;->b:Lcom/scoreloop/client/android/core/model/Game;

    invoke-direct {v0, v1, v2}, Lcom/scoreloop/client/android/core/controller/GameController$a;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Entity;)V

    .line 110
    const-wide/32 v1, 0x927c0

    invoke-virtual {v0, v1, v2}, Lcom/scoreloop/client/android/core/controller/GameController$a;->a(J)V

    .line 111
    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/controller/GameController;->b(Lcom/scoreloop/client/android/core/server/Request;)V

    .line 112
    return-void
.end method

.method public setGame(Lcom/scoreloop/client/android/core/model/Entity;)V
    .locals 2
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_1_0;
    .end annotation

    .prologue
    .line 134
    if-nez p1, :cond_0

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/GameController;->b:Lcom/scoreloop/client/android/core/model/Game;

    .line 145
    :goto_0
    return-void

    .line 138
    :cond_0
    sget-object v0, Lcom/scoreloop/client/android/core/model/Game;->a:Ljava/lang/String;

    invoke-interface {p1}, Lcom/scoreloop/client/android/core/model/Entity;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "entity must be of type Game"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_1
    instance-of v0, p1, Lcom/scoreloop/client/android/core/model/Game;

    if-nez v0, :cond_2

    .line 142
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "In this release Entity must be a Game instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_2
    check-cast p1, Lcom/scoreloop/client/android/core/model/Game;

    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/GameController;->b:Lcom/scoreloop/client/android/core/model/Game;

    goto :goto_0
.end method
