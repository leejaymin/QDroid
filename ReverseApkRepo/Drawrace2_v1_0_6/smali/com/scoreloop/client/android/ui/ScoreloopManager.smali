.class public interface abstract Lcom/scoreloop/client/android/ui/ScoreloopManager;
.super Ljava/lang/Object;
.source "ScoreloopManager.java"


# virtual methods
.method public abstract achieveAward(Ljava/lang/String;ZZ)V
.end method

.method public abstract askUserToAcceptTermsOfService(Landroid/app/Activity;Lcom/scoreloop/client/android/core/model/Continuation;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/scoreloop/client/android/core/model/Continuation",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getAchievement(Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/Achievement;
.end method

.method public abstract getAchievements()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/model/Achievement;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAwardList()Lcom/scoreloop/client/android/core/model/AwardList;
.end method

.method public abstract getGameItemDownloadUrl(Ljava/lang/String;Lcom/scoreloop/client/android/core/model/Continuation;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/scoreloop/client/android/core/model/Continuation",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getInfoString()Ljava/lang/String;
.end method

.method public abstract getModeNames()[Ljava/lang/String;
.end method

.method public abstract getSupportedPaymentProviderKinds()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasLoadedAchievements()Z
.end method

.method public abstract hasPendingPaymentForGameItemWithIdentifier(Ljava/lang/String;)Ljava/lang/Boolean;
.end method

.method public abstract incrementAward(Ljava/lang/String;ZZ)Z
.end method

.method public abstract isAwardAchieved(Ljava/lang/String;)Z
.end method

.method public abstract loadAchievements(Lcom/scoreloop/client/android/core/model/Continuation;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/scoreloop/client/android/core/model/Continuation",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onGamePlayEnded(Lcom/scoreloop/client/android/core/model/Score;Ljava/lang/Boolean;)V
.end method

.method public abstract onGamePlayEnded(Ljava/lang/Double;Ljava/lang/Integer;)V
.end method

.method public abstract setAllowToAskUserToAcceptTermsOfService(Z)V
.end method

.method public abstract setOnCanStartGamePlayObserver(Lcom/scoreloop/client/android/ui/OnCanStartGamePlayObserver;)V
.end method

.method public abstract setOnPaymentChangedObserver(Lcom/scoreloop/client/android/ui/OnPaymentChangedObserver;)V
.end method

.method public abstract setOnScoreSubmitObserver(Lcom/scoreloop/client/android/ui/OnScoreSubmitObserver;)V
.end method

.method public abstract setOnStartGamePlayRequestObserver(Lcom/scoreloop/client/android/ui/OnStartGamePlayRequestObserver;)V
.end method

.method public abstract showWelcomeBackToast(J)V
.end method

.method public abstract submitAchievements(Lcom/scoreloop/client/android/core/model/Continuation;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/scoreloop/client/android/core/model/Continuation",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract submitLocalScores(Ljava/lang/Runnable;)V
.end method

.method public abstract userRejectedTermsOfService(Lcom/scoreloop/client/android/core/model/Continuation;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/scoreloop/client/android/core/model/Continuation",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract wasGameItemPurchasedBefore(Ljava/lang/String;Lcom/scoreloop/client/android/core/model/Continuation;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/scoreloop/client/android/core/model/Continuation",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method
