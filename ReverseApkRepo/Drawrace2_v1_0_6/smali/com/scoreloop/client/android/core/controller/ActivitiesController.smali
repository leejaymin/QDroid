.class public Lcom/scoreloop/client/android/core/controller/ActivitiesController;
.super Lcom/scoreloop/client/android/core/controller/RequestController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/core/controller/ActivitiesController$1;,
        Lcom/scoreloop/client/android/core/controller/ActivitiesController$b;,
        Lcom/scoreloop/client/android/core/controller/ActivitiesController$a;
    }
.end annotation


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/model/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V
    .locals 1
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/scoreloop/client/android/core/controller/ActivitiesController;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    .line 129
    return-void
.end method

.method public constructor <init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V
    .locals 1
    .parameter
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 146
    invoke-direct {p0, p1, p2}, Lcom/scoreloop/client/android/core/controller/RequestController;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    .line 111
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/ActivitiesController;->b:Ljava/util/List;

    .line 147
    return-void
.end method


# virtual methods
.method final a(Lcom/scoreloop/client/android/core/server/Request;Lcom/scoreloop/client/android/core/server/Response;)Z
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 290
    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/server/Response;->f()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 291
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 292
    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/server/Response;->d()Lorg/json/JSONArray;

    move-result-object v2

    .line 293
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 294
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 295
    new-instance v4, Lcom/scoreloop/client/android/core/model/Activity;

    sget-object v5, Lcom/scoreloop/client/android/core/model/Activity;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/scoreloop/client/android/core/model/Activity;-><init>(Lorg/json/JSONObject;)V

    .line 296
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 298
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/ActivitiesController;->b:Ljava/util/List;

    .line 299
    const/4 v0, 0x1

    return v0

    .line 301
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid response status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/server/Response;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActivities()Ljava/util/List;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/model/Activity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ActivitiesController;->b:Ljava/util/List;

    return-object v0
.end method

.method public loadActivitiesForGame(Lcom/scoreloop/client/android/core/model/Game;)V
    .locals 4
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_1_0;
    .end annotation

    .prologue
    .line 187
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Game;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 188
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid game argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_1
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ActivitiesController;->a_()V

    .line 191
    new-instance v0, Lcom/scoreloop/client/android/core/controller/ActivitiesController$a;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ActivitiesController;->e()Lcom/scoreloop/client/android/core/controller/RequestController$b;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/scoreloop/client/android/core/controller/ActivitiesController$b;->GAME:Lcom/scoreloop/client/android/core/controller/ActivitiesController$b;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/scoreloop/client/android/core/controller/ActivitiesController$a;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/controller/ActivitiesController$b;)V

    .line 192
    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Lcom/scoreloop/client/android/core/controller/ActivitiesController$a;->a(J)V

    .line 193
    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/controller/ActivitiesController;->b(Lcom/scoreloop/client/android/core/server/Request;)V

    .line 194
    return-void
.end method

.method public loadActivitiesForUser(Lcom/scoreloop/client/android/core/model/User;)V
    .locals 4
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_1_0;
    .end annotation

    .prologue
    .line 211
    if-nez p1, :cond_0

    .line 212
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid user argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ActivitiesController;->a_()V

    .line 215
    new-instance v0, Lcom/scoreloop/client/android/core/controller/ActivitiesController$a;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ActivitiesController;->e()Lcom/scoreloop/client/android/core/controller/RequestController$b;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/scoreloop/client/android/core/controller/ActivitiesController$b;->USER:Lcom/scoreloop/client/android/core/controller/ActivitiesController$b;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/scoreloop/client/android/core/controller/ActivitiesController$a;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/controller/ActivitiesController$b;)V

    .line 216
    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Lcom/scoreloop/client/android/core/controller/ActivitiesController$a;->a(J)V

    .line 217
    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/controller/ActivitiesController;->b(Lcom/scoreloop/client/android/core/server/Request;)V

    .line 218
    return-void
.end method

.method public loadBuddyActivities()V
    .locals 5
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ActivitiesController;->a_()V

    .line 237
    new-instance v0, Lcom/scoreloop/client/android/core/controller/ActivitiesController$a;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ActivitiesController;->e()Lcom/scoreloop/client/android/core/controller/RequestController$b;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ActivitiesController;->g()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v3

    sget-object v4, Lcom/scoreloop/client/android/core/controller/ActivitiesController$b;->BUDDY:Lcom/scoreloop/client/android/core/controller/ActivitiesController$b;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/scoreloop/client/android/core/controller/ActivitiesController$a;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/controller/ActivitiesController$b;)V

    .line 238
    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Lcom/scoreloop/client/android/core/controller/ActivitiesController$a;->a(J)V

    .line 239
    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/controller/ActivitiesController;->b(Lcom/scoreloop/client/android/core/server/Request;)V

    .line 240
    return-void
.end method

.method public loadCommunityActivities()V
    .locals 4
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_2_0;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 255
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ActivitiesController;->a_()V

    .line 256
    new-instance v0, Lcom/scoreloop/client/android/core/controller/ActivitiesController$a;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ActivitiesController;->e()Lcom/scoreloop/client/android/core/controller/RequestController$b;

    move-result-object v1

    sget-object v2, Lcom/scoreloop/client/android/core/controller/ActivitiesController$b;->COMMUNITY:Lcom/scoreloop/client/android/core/controller/ActivitiesController$b;

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/scoreloop/client/android/core/controller/ActivitiesController$a;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/controller/ActivitiesController$b;)V

    .line 257
    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Lcom/scoreloop/client/android/core/controller/ActivitiesController$a;->a(J)V

    .line 258
    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/controller/ActivitiesController;->b(Lcom/scoreloop/client/android/core/server/Request;)V

    .line 259
    return-void
.end method

.method public loadGameActivities()V
    .locals 5
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ActivitiesController;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v0

    if-nez v0, :cond_0

    .line 278
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "using loadGameActivities does not make sense without gameID being set on AcitiviesController instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ActivitiesController;->a_()V

    .line 282
    new-instance v0, Lcom/scoreloop/client/android/core/controller/ActivitiesController$a;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ActivitiesController;->e()Lcom/scoreloop/client/android/core/controller/RequestController$b;

    move-result-object v1

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ActivitiesController;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/scoreloop/client/android/core/controller/ActivitiesController$b;->GAME:Lcom/scoreloop/client/android/core/controller/ActivitiesController$b;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/scoreloop/client/android/core/controller/ActivitiesController$a;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/controller/ActivitiesController$b;)V

    .line 283
    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Lcom/scoreloop/client/android/core/controller/ActivitiesController$a;->a(J)V

    .line 284
    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/controller/ActivitiesController;->b(Lcom/scoreloop/client/android/core/server/Request;)V

    .line 285
    return-void
.end method
