.class public Lcom/scoreloop/client/android/core/controller/ChallengesController;
.super Lcom/scoreloop/client/android/core/controller/RequestController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/core/controller/ChallengesController$a;
    }
.end annotation


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/model/Challenge;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/scoreloop/client/android/core/model/User;


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V
    .locals 1
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/scoreloop/client/android/core/controller/ChallengesController;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    .line 138
    return-void
.end method

.method public constructor <init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V
    .locals 1
    .parameter
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/scoreloop/client/android/core/controller/RequestController;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    .line 99
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/ChallengesController;->b:Ljava/util/List;

    .line 117
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ChallengesController;->f()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/ChallengesController;->c:Lcom/scoreloop/client/android/core/model/User;

    .line 118
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ChallengesController;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v0

    .line 200
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ChallengesController;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v1

    .line 202
    new-instance v2, Lcom/scoreloop/client/android/core/controller/ChallengesController$a;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ChallengesController;->e()Lcom/scoreloop/client/android/core/controller/RequestController$b;

    move-result-object v3

    invoke-direct {v2, v3, v0, v1, p1}, Lcom/scoreloop/client/android/core/controller/ChallengesController$a;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/User;Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/ChallengesController;->a_()V

    .line 204
    const-wide/16 v0, 0x7530

    invoke-virtual {v2, v0, v1}, Lcom/scoreloop/client/android/core/server/Request;->a(J)V

    .line 205
    invoke-virtual {p0, v2}, Lcom/scoreloop/client/android/core/controller/ChallengesController;->b(Lcom/scoreloop/client/android/core/server/Request;)V

    .line 206
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
    .line 216
    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/server/Response;->f()I

    move-result v0

    .line 217
    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    .line 218
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

    .line 221
    :cond_0
    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/server/Response;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 222
    const-string v1, "challenges"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 224
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 225
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 226
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    .line 227
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 228
    sget-object v5, Lcom/scoreloop/client/android/core/model/Challenge;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 229
    new-instance v5, Lcom/scoreloop/client/android/core/model/Challenge;

    invoke-direct {v5, v4}, Lcom/scoreloop/client/android/core/model/Challenge;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/ChallengesController;->b:Ljava/util/List;

    .line 233
    const/4 v0, 0x1

    return v0
.end method

.method public getChallenges()Ljava/util/List;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/model/Challenge;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ChallengesController;->b:Ljava/util/List;

    return-object v0
.end method

.method public getUser()Lcom/scoreloop/client/android/core/model/User;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_0_0;
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ChallengesController;->c:Lcom/scoreloop/client/android/core/model/User;

    return-object v0
.end method

.method public loadChallengeHistory()V
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 177
    const-string v0, "#history"

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/core/controller/ChallengesController;->a(Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public loadOpenChallenges()V
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 195
    const-string v0, "#open"

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/core/controller/ChallengesController;->a(Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public setUser(Lcom/scoreloop/client/android/core/model/User;)V
    .locals 2
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_0_0;
    .end annotation

    .prologue
    .line 255
    if-nez p1, :cond_0

    .line 256
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "user must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_0
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/ChallengesController;->c:Lcom/scoreloop/client/android/core/model/User;

    .line 259
    return-void
.end method
