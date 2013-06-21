.class public interface abstract Lcom/scoreloop/client/android/ui/component/base/Factory;
.super Ljava/lang/Object;
.source "Factory.java"


# virtual methods
.method public abstract createAchievementScreenDescription(Lcom/scoreloop/client/android/core/model/User;)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
.end method

.method public abstract createChallengeAcceptScreenDescription(Lcom/scoreloop/client/android/core/model/Challenge;)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
.end method

.method public abstract createChallengeCreateScreenDescription(Lcom/scoreloop/client/android/core/model/User;Ljava/lang/Integer;)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
.end method

.method public abstract createChallengePaymentScreenDescription()Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
.end method

.method public abstract createChallengeScreenDescription(Lcom/scoreloop/client/android/core/model/User;)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
.end method

.method public abstract createEntryScreenDescription()Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
.end method

.method public abstract createGameDetailScreenDescription(Lcom/scoreloop/client/android/core/model/Game;)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
.end method

.method public abstract createGameItemsScreenDescription(ILjava/lang/String;Ljava/util/List;I)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Lcom/scoreloop/client/android/ui/framework/ScreenDescription;"
        }
    .end annotation
.end method

.method public abstract createGameScreenDescription(Lcom/scoreloop/client/android/core/model/User;I)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
.end method

.method public abstract createMarketScreenDescription(Lcom/scoreloop/client/android/core/model/User;)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
.end method

.method public abstract createNewsScreenDescription()Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
.end method

.method public abstract createPaymentMethodsScreenDescription(Ljava/lang/String;Ljava/lang/String;I)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
.end method

.method public abstract createPricesScreenDescription(Lcom/scoreloop/client/android/core/model/GameItem;Lcom/scoreloop/client/android/core/model/PaymentMethod;I)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
.end method

.method public abstract createProfileSettingsPictureScreenDescription(Lcom/scoreloop/client/android/core/model/User;)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
.end method

.method public abstract createProfileSettingsScreenDescription(Lcom/scoreloop/client/android/core/model/User;)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
.end method

.method public abstract createScoreScreenDescription(Lcom/scoreloop/client/android/core/model/Game;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
.end method

.method public abstract createUserAddBuddyScreenDescription()Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
.end method

.method public abstract createUserDetailScreenDescription(Lcom/scoreloop/client/android/core/model/User;Ljava/lang/Boolean;)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
.end method

.method public abstract createUserScreenDescription(Lcom/scoreloop/client/android/core/model/User;)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
.end method
