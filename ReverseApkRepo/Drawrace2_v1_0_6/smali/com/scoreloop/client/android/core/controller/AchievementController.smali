.class public Lcom/scoreloop/client/android/core/controller/AchievementController;
.super Lcom/scoreloop/client/android/core/controller/RequestController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/core/controller/AchievementController$a;
    }
.end annotation


# instance fields
.field private b:Lcom/scoreloop/client/android/core/model/Achievement;


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V
    .locals 1
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_1_0;
    .end annotation

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/scoreloop/client/android/core/controller/AchievementController;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V
    .locals 1
    .parameter
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_1_0;
    .end annotation

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/scoreloop/client/android/core/controller/RequestController;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/AchievementController;->b:Lcom/scoreloop/client/android/core/model/Achievement;

    .line 117
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
    const/4 v3, 0x1

    .line 135
    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/server/Response;->f()I

    move-result v0

    .line 136
    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_0

    .line 137
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid status code"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 141
    :cond_0
    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/server/Response;->e()Lorg/json/JSONObject;

    move-result-object v0

    sget-object v1, Lcom/scoreloop/client/android/core/model/Achievement;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 142
    new-instance v1, Lcom/scoreloop/client/android/core/model/Achievement;

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/AchievementController;->b:Lcom/scoreloop/client/android/core/model/Achievement;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Achievement;->getAward()Lcom/scoreloop/client/android/core/model/Award;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Award;->a()Lcom/scoreloop/client/android/core/model/Award$a;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/scoreloop/client/android/core/model/Achievement;-><init>(Lcom/scoreloop/client/android/core/model/Award$a;Lorg/json/JSONObject;)V

    .line 145
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/AchievementController;->b:Lcom/scoreloop/client/android/core/model/Achievement;

    invoke-virtual {v0, v1, v3}, Lcom/scoreloop/client/android/core/model/Achievement;->a(Lcom/scoreloop/client/android/core/model/Achievement;Z)V

    .line 147
    return v3
.end method

.method public getAchievement()Lcom/scoreloop/client/android/core/model/Achievement;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_1_0;
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/AchievementController;->b:Lcom/scoreloop/client/android/core/model/Achievement;

    return-object v0
.end method

.method public setAchievement(Lcom/scoreloop/client/android/core/model/Achievement;)V
    .locals 2
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_1_0;
    .end annotation

    .prologue
    .line 157
    if-nez p1, :cond_0

    .line 158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "achievement must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_0
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/AchievementController;->b:Lcom/scoreloop/client/android/core/model/Achievement;

    .line 161
    return-void
.end method

.method public submitAchievement()V
    .locals 5
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_1_0;
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/AchievementController;->b:Lcom/scoreloop/client/android/core/model/Achievement;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "you have to set an achievement first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_0
    new-instance v0, Lcom/scoreloop/client/android/core/controller/AchievementController$a;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/AchievementController;->e()Lcom/scoreloop/client/android/core/controller/RequestController$b;

    move-result-object v1

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/AchievementController;->g()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v2

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/AchievementController;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v3

    iget-object v4, p0, Lcom/scoreloop/client/android/core/controller/AchievementController;->b:Lcom/scoreloop/client/android/core/model/Achievement;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/scoreloop/client/android/core/controller/AchievementController$a;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/Achievement;)V

    .line 174
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/AchievementController;->a_()V

    .line 175
    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/controller/AchievementController;->b(Lcom/scoreloop/client/android/core/server/Request;)V

    .line 176
    return-void
.end method
