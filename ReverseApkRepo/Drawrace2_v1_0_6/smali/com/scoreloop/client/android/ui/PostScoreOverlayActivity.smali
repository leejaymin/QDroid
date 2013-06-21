.class public Lcom/scoreloop/client/android/ui/PostScoreOverlayActivity;
.super Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;
.source "PostScoreOverlayActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMessageTarget()Lcom/scoreloop/client/android/core/model/Entity;
    .locals 3

    .prologue
    .line 48
    invoke-static {}, Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton;->getImpl()Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton$Impl;

    move-result-object v0

    .line 49
    .local v0, impl:Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton$Impl;
    invoke-interface {v0}, Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton$Impl;->getLastSubmittedChallenge()Lcom/scoreloop/client/android/core/model/Challenge;

    move-result-object v1

    .line 50
    .local v1, target:Lcom/scoreloop/client/android/core/model/Entity;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/scoreloop/client/android/core/model/Entity;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 51
    :cond_0
    invoke-interface {v0}, Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton$Impl;->getLastSubmittedScore()Lcom/scoreloop/client/android/core/model/Score;

    move-result-object v1

    .line 53
    :cond_1
    return-object v1
.end method

.method protected getPostText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/PostScoreOverlayActivity;->getMessageTarget()Lcom/scoreloop/client/android/core/model/Entity;

    move-result-object v1

    .line 59
    .local v1, target:Lcom/scoreloop/client/android/core/model/Entity;
    instance-of v2, v1, Lcom/scoreloop/client/android/core/model/Score;

    if-eqz v2, :cond_0

    .line 60
    invoke-static {}, Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton;->getImpl()Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton$Impl;

    move-result-object v2

    invoke-interface {v2}, Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton$Impl;->getConfiguration()Lcom/scoreloop/client/android/ui/component/base/Configuration;

    move-result-object v0

    .line 61
    .local v0, configuration:Lcom/scoreloop/client/android/ui/component/base/Configuration;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Score: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    check-cast v1, Lcom/scoreloop/client/android/core/model/Score;

    .end local v1           #target:Lcom/scoreloop/client/android/core/model/Entity;
    invoke-static {v1, v0}, Lcom/scoreloop/client/android/ui/component/base/StringFormatter;->formatSocialNetworkPostScore(Lcom/scoreloop/client/android/core/model/Score;Lcom/scoreloop/client/android/ui/component/base/Configuration;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 63
    .end local v0           #configuration:Lcom/scoreloop/client/android/ui/component/base/Configuration;
    :goto_0
    return-object v2

    .restart local v1       #target:Lcom/scoreloop/client/android/core/model/Entity;
    :cond_0
    const-string v2, "Challenge"

    goto :goto_0
.end method
