.class public Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;
.super Ljava/lang/Object;
.source "StandardScoreloopManager.java"

# interfaces
.implements Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton$Impl;
.implements Lcom/scoreloop/client/android/ui/component/base/Manager;
.implements Lcom/scoreloop/client/android/ui/component/base/Factory;
.implements Lcom/scoreloop/client/android/ui/framework/ScreenDescription$ShortcutObserver;
.implements Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate;
.implements Lcom/scoreloop/client/android/ui/framework/ValueStore$ValueSourceFactory;
.implements Lcom/scoreloop/client/android/ui/component/base/Tracker;
.implements Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$Observer;
.implements Lcom/scoreloop/client/android/core/model/ClientObserver;
.implements Lcom/scoreloop/client/android/ui/component/agent/BaseAgent$Delegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$8;,
        Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$ChallengeRequestControllerObserver;,
        Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$ScoreRequestControllerObserver;
    }
.end annotation


# static fields
.field private static final PREFERENCES_ENTRY_USER_IMAGE_URL:Ljava/lang/String; = "userImageUrl"

.field private static final PREFERENCES_ENTRY_USER_NAME:Ljava/lang/String; = "userName"

.field private static final PREFERENCES_NAME:Ljava/lang/String; = "com.scoreloop.ui.login"


# instance fields
.field private _achievementsEngine:Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;

.field private _askUserForTermsAndConditions:Z

.field private _cachedUserValueStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;

.field private _client:Lcom/scoreloop/client/android/core/model/Client;

.field private _configuration:Lcom/scoreloop/client/android/ui/component/base/Configuration;

.field private _context:Landroid/content/Context;

.field private final _handler:Landroid/os/Handler;

.field private _lastSubmitStatus:I

.field private _lastSubmittedChallenge:Lcom/scoreloop/client/android/core/model/Challenge;

.field private _lastSubmittedScore:Lcom/scoreloop/client/android/core/model/Score;

.field private _onCanStartGamePlayObserver:Lcom/scoreloop/client/android/ui/OnCanStartGamePlayObserver;

.field private _onPaymentChangedObserver:Lcom/scoreloop/client/android/ui/OnPaymentChangedObserver;

.field private _onScoreSubmitObserver:Lcom/scoreloop/client/android/ui/OnScoreSubmitObserver;

.field private _onStartGamePlayRequestObserver:Lcom/scoreloop/client/android/ui/OnStartGamePlayRequestObserver;

.field private _rejectedTermsOfServiceNotification:Lcom/scoreloop/client/android/core/model/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/scoreloop/client/android/core/model/Continuation",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private _sessionGameValueStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;

.field private _sessionUserValueStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;

.field private _submitLocalScoresContinuations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_askUserForTermsAndConditions:Z

    .line 145
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_handler:Landroid/os/Handler;

    .line 156
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_submitLocalScoresContinuations:Ljava/util/List;

    .line 888
    return-void
.end method

.method static synthetic access$1000(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_submitLocalScoresContinuations:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->runSubmitLocalScoresContinuations()V

    return-void
.end method

.method static synthetic access$200(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;)Lcom/scoreloop/client/android/ui/OnPaymentChangedObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_onPaymentChangedObserver:Lcom/scoreloop/client/android/ui/OnPaymentChangedObserver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_lastSubmitStatus:I

    return v0
.end method

.method static synthetic access$402(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    iput p1, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_lastSubmitStatus:I

    return p1
.end method

.method static synthetic access$500(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;)Lcom/scoreloop/client/android/ui/OnScoreSubmitObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_onScoreSubmitObserver:Lcom/scoreloop/client/android/ui/OnScoreSubmitObserver;

    return-object v0
.end method

.method static synthetic access$602(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;Lcom/scoreloop/client/android/core/model/Score;)Lcom/scoreloop/client/android/core/model/Score;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_lastSubmittedScore:Lcom/scoreloop/client/android/core/model/Score;

    return-object p1
.end method

.method static synthetic access$702(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;Lcom/scoreloop/client/android/core/model/Challenge;)Lcom/scoreloop/client/android/core/model/Challenge;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_lastSubmittedChallenge:Lcom/scoreloop/client/android/core/model/Challenge;

    return-object p1
.end method

.method static synthetic access$800(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getPersistedUserName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private checkHasAwards()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_configuration:Lcom/scoreloop/client/android/ui/component/base/Configuration;

    sget-object v1, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->ACHIEVEMENT:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/component/base/Configuration;->isFeatureEnabled(Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "you have to set \'ui.feature.achievement = true\' in the scoreloop.properties first!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_0
    return-void
.end method

.method private checkHasLoadedAchievements()V
    .locals 2

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->hasLoadedAchievements()Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "you have to load the achievements first!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_0
    return-void
.end method

.method private checkHasPaymentEnabled()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_configuration:Lcom/scoreloop/client/android/ui/component/base/Configuration;

    sget-object v1, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->PAYMENT:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/component/base/Configuration;->isFeatureEnabled(Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "you have to set \'ui.feature.payment = true\' in the scoreloop.properties first!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_0
    return-void
.end method

.method private static containsKey([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "keys"
    .parameter "key"

    .prologue
    .line 131
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 132
    .local v3, string:Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 133
    const/4 v4, 0x1

    .line 136
    .end local v3           #string:Ljava/lang/String;
    :goto_1
    return v4

    .line 131
    .restart local v3       #string:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    .end local v3           #string:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private createScreenDescription(Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/model/Game;Z)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
    .locals 5
    .parameter "user"
    .parameter "game"
    .parameter "addStandardShortcuts"

    .prologue
    .line 401
    new-instance v0, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    invoke-direct {v0}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;-><init>()V

    .line 403
    .local v0, description:Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->getScreenValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v1

    .line 404
    .local v1, screenValues:Lcom/scoreloop/client/android/ui/framework/ValueStore;
    const-string v2, "userValues"

    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->ensureUser(Lcom/scoreloop/client/android/core/model/User;)Lcom/scoreloop/client/android/core/model/User;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getUserValues(Lcom/scoreloop/client/android/core/model/User;)Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 405
    const-string v2, "gameValues"

    invoke-direct {p0, p2}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->ensureGame(Lcom/scoreloop/client/android/core/model/Game;)Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getGameValues(Lcom/scoreloop/client/android/core/model/Game;)Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 406
    const-string v2, "sessionUserValues"

    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getSessionUserValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 407
    const-string v2, "sessionGameValues"

    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getSessionGameValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 408
    const-string v2, "manager"

    invoke-virtual {v1, v2, p0}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 409
    const-string v2, "factory"

    invoke-virtual {v1, v2, p0}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 410
    const-string v2, "tracker"

    invoke-virtual {v1, v2, p0}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 411
    const-string v2, "configuration"

    iget-object v3, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_configuration:Lcom/scoreloop/client/android/ui/component/base/Configuration;

    invoke-virtual {v1, v2, v3}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 413
    if-eqz p3, :cond_0

    .line 414
    invoke-virtual {v0, p0}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->addShortcutObserver(Lcom/scoreloop/client/android/ui/framework/ScreenDescription$ShortcutObserver;)V

    .line 415
    const v2, 0x7f0802c7

    const v3, 0x7f020076

    const v4, 0x7f020075

    invoke-virtual {v0, v2, v3, v4}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->addShortcutDescription(III)V

    .line 416
    const v2, 0x7f0802be

    const v3, 0x7f020073

    const v4, 0x7f020072

    invoke-virtual {v0, v2, v3, v4}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->addShortcutDescription(III)V

    .line 418
    const v2, 0x7f0802d2

    const v3, 0x7f020078

    const v4, 0x7f020077

    invoke-virtual {v0, v2, v3, v4}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->addShortcutDescription(III)V

    .line 421
    :cond_0
    return-object v0
.end method

.method private displayWithEmptyStack(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)V
    .locals 1
    .parameter "description"

    .prologue
    .line 469
    invoke-static {}, Lcom/scoreloop/client/android/ui/framework/ScreenManagerSingleton;->get()Lcom/scoreloop/client/android/ui/framework/ScreenManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/scoreloop/client/android/ui/framework/ScreenManager;->displayWithEmptyStack(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)V

    .line 470
    return-void
.end method

.method private ensureGame(Lcom/scoreloop/client/android/core/model/Game;)Lcom/scoreloop/client/android/core/model/Game;
    .locals 1
    .parameter "game"

    .prologue
    .line 473
    if-eqz p1, :cond_0

    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object p1

    goto :goto_0
.end method

.method private ensureUser(Lcom/scoreloop/client/android/core/model/User;)Lcom/scoreloop/client/android/core/model/User;
    .locals 1
    .parameter "user"

    .prologue
    .line 477
    if-eqz p1, :cond_0

    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object p1

    goto :goto_0
.end method

.method private getAchievementsEngine()Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_achievementsEngine:Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;

    if-nez v0, :cond_0

    .line 496
    new-instance v0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;

    invoke-direct {v0}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_achievementsEngine:Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_achievementsEngine:Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;

    return-object v0
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_context:Landroid/content/Context;

    return-object v0
.end method

.method private getGameValues(Lcom/scoreloop/client/android/core/model/Game;)Lcom/scoreloop/client/android/ui/framework/ValueStore;
    .locals 2
    .parameter "game"

    .prologue
    .line 545
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Session;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/scoreloop/client/android/core/model/Game;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 546
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getSessionGameValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v0

    .line 552
    :goto_0
    return-object v0

    .line 548
    :cond_0
    new-instance v0, Lcom/scoreloop/client/android/ui/framework/ValueStore;

    invoke-direct {v0}, Lcom/scoreloop/client/android/ui/framework/ValueStore;-><init>()V

    .line 549
    .local v0, valueStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;
    invoke-virtual {v0, p0}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->setValueSourceFactroy(Lcom/scoreloop/client/android/ui/framework/ValueStore$ValueSourceFactory;)V

    .line 550
    const-string v1, "game"

    invoke-virtual {v0, v1, p1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getPersistedUserImageUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 581
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.scoreloop.ui.login"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 582
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v1, "userImageUrl"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getPersistedUserName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 586
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.scoreloop.ui.login"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 587
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v1, "userName"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getSessionGameValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;
    .locals 3

    .prologue
    .line 596
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_sessionGameValueStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    if-nez v0, :cond_0

    .line 597
    new-instance v0, Lcom/scoreloop/client/android/ui/framework/ValueStore;

    invoke-direct {v0}, Lcom/scoreloop/client/android/ui/framework/ValueStore;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_sessionGameValueStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    .line 598
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_sessionGameValueStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    invoke-virtual {v0, p0}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->setValueSourceFactroy(Lcom/scoreloop/client/android/ui/framework/ValueStore$ValueSourceFactory;)V

    .line 599
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_sessionGameValueStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    const-string v1, "game"

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Session;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 601
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_sessionGameValueStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    return-object v0
.end method

.method private getSessionUserValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;
    .locals 3

    .prologue
    .line 605
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_sessionUserValueStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    if-nez v0, :cond_0

    .line 606
    new-instance v0, Lcom/scoreloop/client/android/ui/framework/ValueStore;

    invoke-direct {v0}, Lcom/scoreloop/client/android/ui/framework/ValueStore;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_sessionUserValueStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    .line 607
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_sessionUserValueStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    invoke-virtual {v0, p0}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->setValueSourceFactroy(Lcom/scoreloop/client/android/ui/framework/ValueStore$ValueSourceFactory;)V

    .line 608
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_sessionUserValueStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    const-string v1, "user"

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Session;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_sessionUserValueStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    return-object v0
.end method

.method private getUserValues(Lcom/scoreloop/client/android/core/model/User;)Lcom/scoreloop/client/android/ui/framework/ValueStore;
    .locals 3
    .parameter "user"

    .prologue
    .line 614
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/scoreloop/client/android/core/model/Session;->isOwnedByUser(Lcom/scoreloop/client/android/core/model/User;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 615
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getSessionUserValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v0

    .line 629
    :goto_0
    return-object v0

    .line 619
    :cond_0
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_cachedUserValueStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_cachedUserValueStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 620
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_cachedUserValueStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    goto :goto_0

    .line 624
    :cond_1
    new-instance v0, Lcom/scoreloop/client/android/ui/framework/ValueStore;

    invoke-direct {v0}, Lcom/scoreloop/client/android/ui/framework/ValueStore;-><init>()V

    .line 625
    .local v0, valueStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;
    invoke-virtual {v0, p0}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->setValueSourceFactroy(Lcom/scoreloop/client/android/ui/framework/ValueStore$ValueSourceFactory;)V

    .line 626
    const-string v1, "user"

    invoke-virtual {v0, v1, p1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 627
    iput-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_cachedUserValueStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    goto :goto_0
.end method

.method private runSubmitLocalScoresContinuations()V
    .locals 4

    .prologue
    .line 923
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_submitLocalScoresContinuations:Ljava/util/List;

    .line 924
    .local v1, continuations:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Runnable;>;"
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_submitLocalScoresContinuations:Ljava/util/List;

    .line 926
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 927
    .local v0, continuation:Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 929
    .end local v0           #continuation:Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method private showToastForAchievement(Lcom/scoreloop/client/android/core/model/Achievement;)V
    .locals 5
    .parameter "achievement"

    .prologue
    .line 1012
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0802b0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Achievement;->getAward()Lcom/scoreloop/client/android/core/model/Award;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scoreloop/client/android/core/model/Award;->getLocalizedTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1013
    .local v0, text:Ljava/lang/String;
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 1014
    return-void
.end method

.method private verifyManifest()V
    .locals 13

    .prologue
    const/16 v8, 0xb0

    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1133
    new-instance v0, Lcom/scoreloop/client/android/ui/manager/Checker;

    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getConfiguration()Lcom/scoreloop/client/android/ui/component/base/Configuration;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/scoreloop/client/android/ui/manager/Checker;-><init>(Landroid/content/Context;Lcom/scoreloop/client/android/ui/component/base/Configuration;)V

    .line 1135
    .local v0, checker:Lcom/scoreloop/client/android/ui/manager/Checker;
    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/manager/Checker;->createActivityRun()Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;

    move-result-object v3

    .line 1136
    .local v3, required:Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;
    const-string v4, "com.scoreloop.client.android.core.ui.ProxyActivity"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "configChanges"

    aput-object v6, v5, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    const-string v6, "theme"

    aput-object v6, v5, v11

    const/4 v6, 0x3

    const-string v7, "@android:style/Theme.Black.NoTitleBar.Fullscreen"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v12, v5}, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->add(Ljava/lang/String;Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;[Ljava/lang/Object;)V

    .line 1140
    const-string v4, "com.scoreloop.client.android.ui.framework.ScreenActivity"

    new-array v5, v11, [Ljava/lang/Object;

    const-string v6, "theme"

    aput-object v6, v5, v9

    const-string v6, "@android:style/Theme.Black.NoTitleBar.Fullscreen"

    aput-object v6, v5, v10

    invoke-virtual {v3, v4, v12, v5}, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->add(Ljava/lang/String;Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;[Ljava/lang/Object;)V

    .line 1142
    const-string v4, "com.scoreloop.client.android.ui.framework.TabsActivity"

    invoke-virtual {v3, v4}, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->add(Ljava/lang/String;)V

    .line 1143
    const-string v4, "com.scoreloop.client.android.ui.component.market.MarketHeaderActivity"

    invoke-virtual {v3, v4}, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->add(Ljava/lang/String;)V

    .line 1144
    const-string v4, "com.scoreloop.client.android.ui.component.market.MarketListActivity"

    invoke-virtual {v3, v4}, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->add(Ljava/lang/String;)V

    .line 1145
    const-string v4, "com.scoreloop.client.android.ui.component.entry.EntryListActivity"

    invoke-virtual {v3, v4}, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->add(Ljava/lang/String;)V

    .line 1146
    const-string v4, "com.scoreloop.client.android.ui.component.post.PostOverlayActivity"

    new-array v5, v11, [Ljava/lang/Object;

    const-string v6, "theme"

    aput-object v6, v5, v9

    const v6, 0x7f090018

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {v3, v4, v12, v5}, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->add(Ljava/lang/String;Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;[Ljava/lang/Object;)V

    .line 1147
    const-string v4, "com.scoreloop.client.android.ui.component.score.ScoreHeaderActivity"

    invoke-virtual {v3, v4}, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->add(Ljava/lang/String;)V

    .line 1148
    const-string v4, "com.scoreloop.client.android.ui.component.score.ScoreListActivity"

    invoke-virtual {v3, v4}, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->add(Ljava/lang/String;)V

    .line 1149
    const-string v4, "com.scoreloop.client.android.ui.component.user.UserAddBuddyListActivity"

    invoke-virtual {v3, v4}, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->add(Ljava/lang/String;)V

    .line 1150
    const-string v4, "com.scoreloop.client.android.ui.component.user.UserHeaderActivity"

    invoke-virtual {v3, v4}, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->add(Ljava/lang/String;)V

    .line 1151
    const-string v4, "com.scoreloop.client.android.ui.component.user.UserDetailListActivity"

    invoke-virtual {v3, v4}, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->add(Ljava/lang/String;)V

    .line 1152
    const-string v4, "com.scoreloop.client.android.ui.component.user.UserListActivity"

    invoke-virtual {v3, v4}, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->add(Ljava/lang/String;)V

    .line 1153
    const-string v4, "com.scoreloop.client.android.ui.component.game.GameDetailHeaderActivity"

    invoke-virtual {v3, v4}, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->add(Ljava/lang/String;)V

    .line 1154
    const-string v4, "com.scoreloop.client.android.ui.component.game.GameDetailListActivity"

    invoke-virtual {v3, v4}, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->add(Ljava/lang/String;)V

    .line 1155
    const-string v4, "com.scoreloop.client.android.ui.component.game.GameListActivity"

    invoke-virtual {v3, v4}, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->add(Ljava/lang/String;)V

    .line 1156
    const-string v4, "com.scoreloop.client.android.ui.component.achievement.AchievementHeaderActivity"

    sget-object v5, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->ACHIEVEMENT:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5, v6}, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->add(Ljava/lang/String;Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;[Ljava/lang/Object;)V

    .line 1157
    const-string v4, "com.scoreloop.client.android.ui.component.achievement.AchievementListActivity"

    sget-object v5, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->ACHIEVEMENT:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5, v6}, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->add(Ljava/lang/String;Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;[Ljava/lang/Object;)V

    .line 1158
    const-string v4, "com.scoreloop.client.android.ui.component.news.NewsHeaderActivity"

    sget-object v5, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->NEWS:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5, v6}, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->add(Ljava/lang/String;Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;[Ljava/lang/Object;)V

    .line 1159
    const-string v4, "com.scoreloop.client.android.ui.component.news.NewsListActivity"

    sget-object v5, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->NEWS:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5, v6}, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->add(Ljava/lang/String;Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;[Ljava/lang/Object;)V

    .line 1160
    const-string v4, "com.scoreloop.client.android.ui.component.challenge.ChallengeHeaderActivity"

    sget-object v5, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->CHALLENGE:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5, v6}, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->add(Ljava/lang/String;Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;[Ljava/lang/Object;)V

    .line 1161
    const-string v4, "com.scoreloop.client.android.ui.component.challenge.ChallengeListActivity"

    sget-object v5, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->CHALLENGE:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5, v6}, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->add(Ljava/lang/String;Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;[Ljava/lang/Object;)V

    .line 1162
    const-string v4, "com.scoreloop.client.android.ui.component.challenge.ChallengeAcceptListActivity"

    sget-object v5, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->CHALLENGE:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5, v6}, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->add(Ljava/lang/String;Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;[Ljava/lang/Object;)V

    .line 1163
    const-string v4, "com.scoreloop.client.android.ui.component.challenge.ChallengeCreateListActivity"

    sget-object v5, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->CHALLENGE:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5, v6}, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->add(Ljava/lang/String;Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;[Ljava/lang/Object;)V

    .line 1164
    const-string v4, "com.scoreloop.client.android.ui.component.profile.ProfileSettingsListActivity"

    invoke-virtual {v3, v4}, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->add(Ljava/lang/String;)V

    .line 1165
    const-string v4, "com.scoreloop.client.android.ui.component.profile.ProfileSettingsPictureListActivity"

    invoke-virtual {v3, v4}, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->add(Ljava/lang/String;)V

    .line 1166
    const-string v4, "com.scoreloop.client.android.ui.component.payment.PaymentHeaderActivity"

    sget-object v5, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->PAYMENT:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5, v6}, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->add(Ljava/lang/String;Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;[Ljava/lang/Object;)V

    .line 1167
    const-string v4, "com.scoreloop.client.android.ui.component.payment.GameItemHeaderActivity"

    sget-object v5, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->PAYMENT:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5, v6}, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->add(Ljava/lang/String;Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;[Ljava/lang/Object;)V

    .line 1168
    const-string v4, "com.scoreloop.client.android.ui.component.payment.GameItemListActivity"

    sget-object v5, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->PAYMENT:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5, v6}, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->add(Ljava/lang/String;Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;[Ljava/lang/Object;)V

    .line 1169
    const-string v4, "com.scoreloop.client.android.ui.component.payment.PaymentMethodListActivity"

    sget-object v5, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->PAYMENT:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    new-array v6, v11, [Ljava/lang/Object;

    const-string v7, "configChanges"

    aput-object v7, v6, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v3, v4, v5, v6}, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->add(Ljava/lang/String;Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;[Ljava/lang/Object;)V

    .line 1171
    const-string v4, "com.scoreloop.client.android.ui.component.payment.PriceListActivity"

    sget-object v5, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->PAYMENT:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    new-array v6, v11, [Ljava/lang/Object;

    const-string v7, "configChanges"

    aput-object v7, v6, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v3, v4, v5, v6}, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->add(Ljava/lang/String;Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;[Ljava/lang/Object;)V

    .line 1175
    const-string v4, "com.paypal.android.MEP.PayPalActivity"

    sget-object v5, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->PAYMENT_PAYPALX:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "configChanges"

    aput-object v7, v6, v9

    const/16 v7, 0xa0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    const-string v7, "theme"

    aput-object v7, v6, v11

    const/4 v7, 0x3

    const-string v8, "@android:style/Theme.Translucent.NoTitleBar"

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->add(Ljava/lang/String;Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;[Ljava/lang/Object;)V

    .line 1177
    const-string v4, "com.fortumo.android.FortumoActivity"

    sget-object v5, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->PAYMENT_FORTUMO:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    new-array v6, v11, [Ljava/lang/Object;

    const-string v7, "theme"

    aput-object v7, v6, v9

    const-string v7, "@android:style/Theme.Translucent.NoTitleBar"

    aput-object v7, v6, v10

    invoke-virtual {v3, v4, v5, v6}, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->add(Ljava/lang/String;Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;[Ljava/lang/Object;)V

    .line 1179
    invoke-virtual {v3}, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->reportRequired()V

    .line 1181
    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/manager/Checker;->createActivityRun()Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;

    move-result-object v1

    .line 1182
    .local v1, optional:Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;
    const-string v4, "com.scoreloop.client.android.ui.EntryScreenActivity"

    new-array v5, v11, [Ljava/lang/Object;

    const-string v6, "theme"

    aput-object v6, v5, v9

    const-string v6, "@android:style/Theme.Black.NoTitleBar.Fullscreen"

    aput-object v6, v5, v10

    invoke-virtual {v1, v4, v12, v5}, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->add(Ljava/lang/String;Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;[Ljava/lang/Object;)V

    .line 1184
    const-string v4, "com.scoreloop.client.android.ui.PostScoreOverlayActivity"

    new-array v5, v10, [Ljava/lang/Object;

    const v6, 0x7f090018

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v1, v4, v12, v5}, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->add(Ljava/lang/String;Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;[Ljava/lang/Object;)V

    .line 1185
    const-string v4, "com.scoreloop.client.android.ui.ShowResultOverlayActivity"

    new-array v5, v10, [Ljava/lang/Object;

    const v6, 0x7f090018

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v1, v4, v12, v5}, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->add(Ljava/lang/String;Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;[Ljava/lang/Object;)V

    .line 1186
    const-string v4, "com.scoreloop.client.android.ui.BuddiesScreenActivity"

    new-array v5, v11, [Ljava/lang/Object;

    const-string v6, "theme"

    aput-object v6, v5, v9

    const-string v6, "@android:style/Theme.Black.NoTitleBar.Fullscreen"

    aput-object v6, v5, v10

    invoke-virtual {v1, v4, v12, v5}, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->add(Ljava/lang/String;Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;[Ljava/lang/Object;)V

    .line 1188
    const-string v4, "com.scoreloop.client.android.ui.LeaderboardsScreenActivity"

    new-array v5, v11, [Ljava/lang/Object;

    const-string v6, "theme"

    aput-object v6, v5, v9

    const-string v6, "@android:style/Theme.Black.NoTitleBar.Fullscreen"

    aput-object v6, v5, v10

    invoke-virtual {v1, v4, v12, v5}, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->add(Ljava/lang/String;Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;[Ljava/lang/Object;)V

    .line 1190
    const-string v4, "com.scoreloop.client.android.ui.ChallengesScreenActivity"

    sget-object v5, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->CHALLENGE:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    new-array v6, v11, [Ljava/lang/Object;

    const-string v7, "theme"

    aput-object v7, v6, v9

    const-string v7, "@android:style/Theme.Black.NoTitleBar.Fullscreen"

    aput-object v7, v6, v10

    invoke-virtual {v1, v4, v5, v6}, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->add(Ljava/lang/String;Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;[Ljava/lang/Object;)V

    .line 1192
    const-string v4, "com.scoreloop.client.android.ui.AchievementsScreenActivity"

    sget-object v5, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->ACHIEVEMENT:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    new-array v6, v11, [Ljava/lang/Object;

    const-string v7, "theme"

    aput-object v7, v6, v9

    const-string v7, "@android:style/Theme.Black.NoTitleBar.Fullscreen"

    aput-object v7, v6, v10

    invoke-virtual {v1, v4, v5, v6}, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->add(Ljava/lang/String;Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;[Ljava/lang/Object;)V

    .line 1194
    const-string v4, "com.scoreloop.client.android.ui.SocialMarketScreenActivity"

    new-array v5, v11, [Ljava/lang/Object;

    const-string v6, "theme"

    aput-object v6, v5, v9

    const-string v6, "@android:style/Theme.Black.NoTitleBar.Fullscreen"

    aput-object v6, v5, v10

    invoke-virtual {v1, v4, v12, v5}, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->add(Ljava/lang/String;Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;[Ljava/lang/Object;)V

    .line 1196
    const-string v4, "com.scoreloop.client.android.ui.ProfileScreenActivity"

    new-array v5, v11, [Ljava/lang/Object;

    const-string v6, "theme"

    aput-object v6, v5, v9

    const-string v6, "@android:style/Theme.Black.NoTitleBar.Fullscreen"

    aput-object v6, v5, v10

    invoke-virtual {v1, v4, v12, v5}, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->add(Ljava/lang/String;Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;[Ljava/lang/Object;)V

    .line 1198
    const-string v4, "com.scoreloop.client.android.ui.PaymentScreenActivity"

    sget-object v5, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->PAYMENT:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    new-array v6, v11, [Ljava/lang/Object;

    const-string v7, "theme"

    aput-object v7, v6, v9

    const-string v7, "@android:style/Theme.Black.NoTitleBar.Fullscreen"

    aput-object v7, v6, v10

    invoke-virtual {v1, v4, v5, v6}, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->add(Ljava/lang/String;Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;[Ljava/lang/Object;)V

    .line 1200
    const-string v4, "com.scoreloop.client.android.ui.GameItemsScreenActivity"

    sget-object v5, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->PAYMENT:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    new-array v6, v11, [Ljava/lang/Object;

    const-string v7, "theme"

    aput-object v7, v6, v9

    const-string v7, "@android:style/Theme.Black.NoTitleBar.Fullscreen"

    aput-object v7, v6, v10

    invoke-virtual {v1, v4, v5, v6}, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->add(Ljava/lang/String;Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;[Ljava/lang/Object;)V

    .line 1202
    invoke-virtual {v1}, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->reportOptional()V

    .line 1206
    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/manager/Checker;->createUsesPermissionRun()Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;

    move-result-object v2

    .line 1207
    .local v2, permission:Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;
    const-string v4, "android.permission.READ_CONTACTS"

    sget-object v5, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->ADDRESS_BOOK:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5, v6}, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->add(Ljava/lang/String;Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;[Ljava/lang/Object;)V

    .line 1208
    invoke-virtual {v2}, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->reportRequired()V

    .line 1210
    invoke-virtual {v3}, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->check()V

    .line 1211
    invoke-virtual {v1}, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->check()V

    .line 1212
    invoke-virtual {v2}, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;->check()V

    .line 1213
    return-void
.end method


# virtual methods
.method public achieveAward(Ljava/lang/String;ZZ)V
    .locals 2
    .parameter "awardId"
    .parameter "showToast"
    .parameter "submitNow"

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getAchievement(Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/Achievement;

    move-result-object v0

    .line 161
    .local v0, achievement:Lcom/scoreloop/client/android/core/model/Achievement;
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Achievement;->isAchieved()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Achievement;->setAchieved()V

    .line 165
    if-eqz p2, :cond_2

    .line 166
    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->showToastForAchievement(Lcom/scoreloop/client/android/core/model/Achievement;)V

    .line 168
    :cond_2
    if-eqz p3, :cond_0

    .line 169
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->submitAchievements(Lcom/scoreloop/client/android/core/model/Continuation;)V

    goto :goto_0
.end method

.method public askUserToAcceptTermsOfService(Landroid/app/Activity;Lcom/scoreloop/client/android/core/model/Continuation;)V
    .locals 3
    .parameter "activity"
    .parameter
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

    .prologue
    .line 175
    .local p2, continuation:Lcom/scoreloop/client/android/core/model/Continuation;,"Lcom/scoreloop/client/android/core/model/Continuation<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v1

    new-instance v2, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$1;

    invoke-direct {v2, p0, p2}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$1;-><init>(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;Lcom/scoreloop/client/android/core/model/Continuation;)V

    invoke-direct {v0, v1, v2}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/TermsOfServiceControllerObserver;)V

    .line 183
    .local v0, controller:Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;
    invoke-virtual {v0, p1}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->query(Landroid/app/Activity;)V

    .line 184
    return-void
.end method

.method public canStartGamePlay()Z
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_onCanStartGamePlayObserver:Lcom/scoreloop/client/android/ui/OnCanStartGamePlayObserver;

    if-nez v0, :cond_0

    .line 189
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "trying to check if gameplay can be started, but the callback is not set - did you call ScoreloopManagerSingleton.get().setOnCanStartGamePlayObserver(...)?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_onCanStartGamePlayObserver:Lcom/scoreloop/client/android/ui/OnCanStartGamePlayObserver;

    invoke-interface {v0}, Lcom/scoreloop/client/android/ui/OnCanStartGamePlayObserver;->onCanStartGamePlay()Z

    move-result v0

    return v0
.end method

.method public clientDidAskUserForTermsOfService(Lcom/scoreloop/client/android/core/model/Client;Ljava/lang/Boolean;)V
    .locals 2
    .parameter "client"
    .parameter "accepted"

    .prologue
    .line 215
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_rejectedTermsOfServiceNotification:Lcom/scoreloop/client/android/core/model/Continuation;

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_rejectedTermsOfServiceNotification:Lcom/scoreloop/client/android/core/model/Continuation;

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Lcom/scoreloop/client/android/core/model/Continuation;->withValue(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 220
    :cond_1
    return-void
.end method

.method public clientShouldAskUserForTermsOfService(Lcom/scoreloop/client/android/core/model/Client;)Z
    .locals 1
    .parameter "client"

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_askUserForTermsAndConditions:Z

    return v0
.end method

.method public createAchievementScreenDescription(Lcom/scoreloop/client/android/core/model/User;)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
    .locals 4
    .parameter "user"

    .prologue
    .line 229
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->createScreenDescription(Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/model/Game;Z)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v0

    .line 230
    .local v0, description:Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/scoreloop/client/android/ui/component/achievement/AchievementHeaderActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->setHeaderDescription(Landroid/content/Intent;)Lcom/scoreloop/client/android/ui/framework/ActivityDescription;

    .line 231
    new-instance v1, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->setBodyDescription(Landroid/content/Intent;)Lcom/scoreloop/client/android/ui/framework/ActivityDescription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;->getArguments()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v1

    const-string v2, "achievementsEngine"

    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getAchievementsEngine()Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 233
    return-object v0
.end method

.method public createChallengeAcceptScreenDescription(Lcom/scoreloop/client/android/core/model/Challenge;)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
    .locals 4
    .parameter "challenge"

    .prologue
    const/4 v2, 0x0

    .line 238
    const/4 v1, 0x1

    invoke-direct {p0, v2, v2, v1}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->createScreenDescription(Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/model/Game;Z)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v0

    .line 239
    .local v0, description:Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHeaderActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->setHeaderDescription(Landroid/content/Intent;)Lcom/scoreloop/client/android/ui/framework/ActivityDescription;

    .line 240
    new-instance v1, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->setBodyDescription(Landroid/content/Intent;)Lcom/scoreloop/client/android/ui/framework/ActivityDescription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;->getArguments()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v1

    const-string v2, "challenge"

    invoke-virtual {v1, v2, p1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 243
    return-object v0
.end method

.method public createChallengeCreateScreenDescription(Lcom/scoreloop/client/android/core/model/User;Ljava/lang/Integer;)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
    .locals 4
    .parameter "user"
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    .line 248
    const/4 v1, 0x1

    invoke-direct {p0, v2, v2, v1}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->createScreenDescription(Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/model/Game;Z)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v0

    .line 249
    .local v0, description:Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHeaderActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->setHeaderDescription(Landroid/content/Intent;)Lcom/scoreloop/client/android/ui/framework/ActivityDescription;

    .line 250
    new-instance v1, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeCreateListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->setBodyDescription(Landroid/content/Intent;)Lcom/scoreloop/client/android/ui/framework/ActivityDescription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;->getArguments()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v1

    const-string v2, "contestant"

    invoke-virtual {v1, v2, p1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 253
    return-object v0
.end method

.method public createChallengePaymentScreenDescription()Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 258
    const/4 v0, 0x1

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v2, v2, v1}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->createGameItemsScreenDescription(ILjava/lang/String;Ljava/util/List;I)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v0

    return-object v0
.end method

.method public createChallengeScreenDescription(Lcom/scoreloop/client/android/core/model/User;)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
    .locals 4
    .parameter "user"

    .prologue
    .line 264
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->createScreenDescription(Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/model/Game;Z)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v0

    .line 265
    .local v0, description:Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHeaderActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->setHeaderDescription(Landroid/content/Intent;)Lcom/scoreloop/client/android/ui/framework/ActivityDescription;

    .line 266
    new-instance v1, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->setBodyDescription(Landroid/content/Intent;)Lcom/scoreloop/client/android/ui/framework/ActivityDescription;

    .line 267
    return-object v0
.end method

.method public createEntryScreenDescription()Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 272
    const/4 v1, 0x1

    invoke-direct {p0, v2, v2, v1}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->createScreenDescription(Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/model/Game;Z)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v0

    .line 273
    .local v0, description:Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->setHeaderDescription(Landroid/content/Intent;)Lcom/scoreloop/client/android/ui/framework/ActivityDescription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;->getArguments()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v1

    const-string v2, "mode"

    sget-object v3, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;->PROFILE:Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;

    invoke-virtual {v1, v2, v3}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 275
    new-instance v1, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/scoreloop/client/android/ui/component/entry/EntryListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->setBodyDescription(Landroid/content/Intent;)Lcom/scoreloop/client/android/ui/framework/ActivityDescription;

    .line 276
    const v1, 0x7f0802c7

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->setShortcutSelectionId(I)V

    .line 277
    return-object v0
.end method

.method public createGameDetailScreenDescription(Lcom/scoreloop/client/android/core/model/Game;)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
    .locals 4
    .parameter "game"

    .prologue
    .line 282
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v1, p1, v2}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->createScreenDescription(Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/model/Game;Z)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v0

    .line 283
    .local v0, description:Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/scoreloop/client/android/ui/component/game/GameDetailHeaderActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->setHeaderDescription(Landroid/content/Intent;)Lcom/scoreloop/client/android/ui/framework/ActivityDescription;

    .line 284
    new-instance v1, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/scoreloop/client/android/ui/component/game/GameDetailListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->setBodyDescription(Landroid/content/Intent;)Lcom/scoreloop/client/android/ui/framework/ActivityDescription;

    .line 285
    return-object v0
.end method

.method public createGameItemsScreenDescription(ILjava/lang/String;Ljava/util/List;I)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
    .locals 5
    .parameter "mode"
    .parameter "explicitCurrency"
    .parameter
    .parameter "viewFlags"
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

    .prologue
    .local p3, tags:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 291
    const/4 v2, 0x1

    invoke-direct {p0, v3, v3, v2}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->createScreenDescription(Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/model/Game;Z)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v1

    .line 292
    .local v1, description:Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/scoreloop/client/android/ui/component/payment/GameItemHeaderActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->setHeaderDescription(Landroid/content/Intent;)Lcom/scoreloop/client/android/ui/framework/ActivityDescription;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;->getArguments()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v2

    const-string v3, "gameItemsMode"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 294
    new-instance v2, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/scoreloop/client/android/ui/component/payment/GameItemGridActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->setBodyDescription(Landroid/content/Intent;)Lcom/scoreloop/client/android/ui/framework/ActivityDescription;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;->getArguments()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v0

    .line 296
    .local v0, bodyArguments:Lcom/scoreloop/client/android/ui/framework/ValueStore;
    const-string v2, "gameItemsMode"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 297
    const-string v2, "paymentExplicitCurrency"

    invoke-virtual {v0, v2, p2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 298
    const-string v2, "tags"

    invoke-virtual {v0, v2, p3}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 299
    const-string v2, "viewFlags"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 300
    return-object v1
.end method

.method public createGameScreenDescription(Lcom/scoreloop/client/android/core/model/User;I)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
    .locals 4
    .parameter "user"
    .parameter "mode"

    .prologue
    .line 305
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->createScreenDescription(Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/model/Game;Z)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v0

    .line 306
    .local v0, description:Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
    if-nez p2, :cond_0

    .line 307
    new-instance v1, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->setHeaderDescription(Landroid/content/Intent;)Lcom/scoreloop/client/android/ui/framework/ActivityDescription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;->getArguments()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v1

    const-string v2, "mode"

    sget-object v3, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;->BUDDY:Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;

    invoke-virtual {v1, v2, v3}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 312
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/scoreloop/client/android/ui/component/game/GameListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->setBodyDescription(Landroid/content/Intent;)Lcom/scoreloop/client/android/ui/framework/ActivityDescription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;->getArguments()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v1

    const-string v2, "mode"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 313
    return-object v0

    .line 310
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/scoreloop/client/android/ui/component/market/MarketHeaderActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->setHeaderDescription(Landroid/content/Intent;)Lcom/scoreloop/client/android/ui/framework/ActivityDescription;

    goto :goto_0
.end method

.method public createMarketScreenDescription(Lcom/scoreloop/client/android/core/model/User;)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
    .locals 4
    .parameter "user"

    .prologue
    .line 318
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->createScreenDescription(Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/model/Game;Z)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v0

    .line 319
    .local v0, description:Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/scoreloop/client/android/ui/component/market/MarketHeaderActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->setHeaderDescription(Landroid/content/Intent;)Lcom/scoreloop/client/android/ui/framework/ActivityDescription;

    .line 320
    new-instance v1, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/scoreloop/client/android/ui/component/market/MarketListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->setBodyDescription(Landroid/content/Intent;)Lcom/scoreloop/client/android/ui/framework/ActivityDescription;

    .line 321
    const v1, 0x7f0802d2

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->setShortcutSelectionId(I)V

    .line 322
    return-object v0
.end method

.method public createNewsScreenDescription()Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 327
    const/4 v1, 0x1

    invoke-direct {p0, v2, v2, v1}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->createScreenDescription(Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/model/Game;Z)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v0

    .line 328
    .local v0, description:Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/scoreloop/client/android/ui/component/news/NewsHeaderActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->setHeaderDescription(Landroid/content/Intent;)Lcom/scoreloop/client/android/ui/framework/ActivityDescription;

    .line 329
    new-instance v1, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/scoreloop/client/android/ui/component/news/NewsListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->setBodyDescription(Landroid/content/Intent;)Lcom/scoreloop/client/android/ui/framework/ActivityDescription;

    .line 330
    return-object v0
.end method

.method public createPaymentMethodsScreenDescription(Ljava/lang/String;Ljava/lang/String;I)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
    .locals 5
    .parameter "gameItemId"
    .parameter "explicitCurrency"
    .parameter "viewFlags"

    .prologue
    const/4 v3, 0x0

    .line 336
    const/4 v2, 0x0

    invoke-direct {p0, v3, v3, v2}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->createScreenDescription(Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/model/Game;Z)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v1

    .line 337
    .local v1, description:Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/scoreloop/client/android/ui/component/payment/PaymentHeaderActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->setHeaderDescription(Landroid/content/Intent;)Lcom/scoreloop/client/android/ui/framework/ActivityDescription;

    .line 338
    new-instance v2, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/scoreloop/client/android/ui/component/payment/PaymentMethodListActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->setBodyDescription(Landroid/content/Intent;)Lcom/scoreloop/client/android/ui/framework/ActivityDescription;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;->getArguments()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v0

    .line 340
    .local v0, bodyArguments:Lcom/scoreloop/client/android/ui/framework/ValueStore;
    const-string v2, "gameItemId"

    invoke-virtual {v0, v2, p1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 341
    const-string v2, "paymentExplicitCurrency"

    invoke-virtual {v0, v2, p2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 342
    const-string v2, "viewFlags"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 343
    return-object v1
.end method

.method public createPricesScreenDescription(Lcom/scoreloop/client/android/core/model/GameItem;Lcom/scoreloop/client/android/core/model/PaymentMethod;I)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
    .locals 5
    .parameter "gameItem"
    .parameter "paymentMethod"
    .parameter "viewFlags"

    .prologue
    const/4 v3, 0x0

    .line 348
    const/4 v2, 0x0

    invoke-direct {p0, v3, v3, v2}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->createScreenDescription(Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/model/Game;Z)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v1

    .line 349
    .local v1, description:Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
    invoke-virtual {v1}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->getScreenValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v2

    const-string v3, "gameItem"

    invoke-virtual {v2, v3, p1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 350
    new-instance v2, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/scoreloop/client/android/ui/component/payment/PaymentHeaderActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->setHeaderDescription(Landroid/content/Intent;)Lcom/scoreloop/client/android/ui/framework/ActivityDescription;

    .line 351
    new-instance v2, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/scoreloop/client/android/ui/component/payment/PriceListActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->setBodyDescription(Landroid/content/Intent;)Lcom/scoreloop/client/android/ui/framework/ActivityDescription;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;->getArguments()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v0

    .line 352
    .local v0, bodyArguments:Lcom/scoreloop/client/android/ui/framework/ValueStore;
    const-string v2, "paymentMethod"

    invoke-virtual {v0, v2, p2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 353
    const-string v2, "viewFlags"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 354
    return-object v1
.end method

.method public createProfileSettingsPictureScreenDescription(Lcom/scoreloop/client/android/core/model/User;)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
    .locals 4
    .parameter "user"

    .prologue
    .line 359
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->createScreenDescription(Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/model/Game;Z)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v0

    .line 360
    .local v0, description:Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->setHeaderDescription(Landroid/content/Intent;)Lcom/scoreloop/client/android/ui/framework/ActivityDescription;

    .line 361
    new-instance v1, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsPictureListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->setBodyDescription(Landroid/content/Intent;)Lcom/scoreloop/client/android/ui/framework/ActivityDescription;

    .line 362
    return-object v0
.end method

.method public createProfileSettingsScreenDescription(Lcom/scoreloop/client/android/core/model/User;)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
    .locals 4
    .parameter "user"

    .prologue
    .line 367
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->createScreenDescription(Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/model/Game;Z)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v0

    .line 368
    .local v0, description:Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->setHeaderDescription(Landroid/content/Intent;)Lcom/scoreloop/client/android/ui/framework/ActivityDescription;

    .line 369
    new-instance v1, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->setBodyDescription(Landroid/content/Intent;)Lcom/scoreloop/client/android/ui/framework/ActivityDescription;

    .line 370
    return-object v0
.end method

.method public createScoreScreenDescription(Lcom/scoreloop/client/android/core/model/Game;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
    .locals 6
    .parameter "game"
    .parameter "mode"
    .parameter "leaderboard"

    .prologue
    const/4 v2, 0x1

    .line 375
    const/4 v3, 0x0

    invoke-direct {p0, v3, p1, v2}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->createScreenDescription(Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/model/Game;Z)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v0

    .line 376
    .local v0, description:Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->getScreenValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v3

    const-string v4, "mode"

    if-eqz p2, :cond_1

    .end local p2
    :goto_0
    invoke-virtual {v3, v4, p2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 378
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 379
    .local v1, isLocalLeaderboard:Ljava/lang/Boolean;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/scoreloop/client/android/ui/component/score/ScoreHeaderActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->setHeaderDescription(Landroid/content/Intent;)Lcom/scoreloop/client/android/ui/framework/ActivityDescription;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;->getArguments()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v2

    const-string v3, "isLocalLeadearboard"

    invoke-virtual {v2, v3, v1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 382
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 383
    new-instance v2, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->setBodyDescription(Landroid/content/Intent;)Lcom/scoreloop/client/android/ui/framework/ActivityDescription;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;->getArguments()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v2

    const-string v3, "searchList"

    invoke-static {}, Lcom/scoreloop/client/android/core/model/SearchList;->getLocalScoreSearchList()Lcom/scoreloop/client/android/core/model/SearchList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 397
    :cond_0
    :goto_2
    return-object v0

    .line 376
    .end local v1           #isLocalLeaderboard:Ljava/lang/Boolean;
    .restart local p2
    :cond_1
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->ensureGame(Lcom/scoreloop/client/android/core/model/Game;)Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v5

    invoke-virtual {v5}, Lcom/scoreloop/client/android/core/model/Game;->getMinMode()Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    .line 378
    .end local p2
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 386
    .restart local v1       #isLocalLeaderboard:Ljava/lang/Boolean;
    :cond_3
    const v2, 0x7f0802c6

    new-instance v3, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2, v3}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->addBodyDescription(ILandroid/content/Intent;)Lcom/scoreloop/client/android/ui/framework/ActivityDescription;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;->getArguments()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v2

    const-string v3, "searchList"

    invoke-static {}, Lcom/scoreloop/client/android/core/model/SearchList;->getGlobalScoreSearchList()Lcom/scoreloop/client/android/core/model/SearchList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 388
    const v2, 0x7f0802be

    new-instance v3, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2, v3}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->addBodyDescription(ILandroid/content/Intent;)Lcom/scoreloop/client/android/ui/framework/ActivityDescription;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;->getArguments()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v2

    const-string v3, "searchList"

    invoke-static {}, Lcom/scoreloop/client/android/core/model/SearchList;->getBuddiesScoreSearchList()Lcom/scoreloop/client/android/core/model/SearchList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 390
    const v2, 0x7f080317

    new-instance v3, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2, v3}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->addBodyDescription(ILandroid/content/Intent;)Lcom/scoreloop/client/android/ui/framework/ActivityDescription;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;->getArguments()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v2

    const-string v3, "searchList"

    invoke-static {}, Lcom/scoreloop/client/android/core/model/SearchList;->getTwentyFourHourScoreSearchList()Lcom/scoreloop/client/android/core/model/SearchList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 392
    if-eqz p3, :cond_0

    .line 393
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->setSelectedBodyIndex(I)V

    goto :goto_2
.end method

.method public createUserAddBuddyScreenDescription()Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 426
    const/4 v1, 0x1

    invoke-direct {p0, v2, v2, v1}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->createScreenDescription(Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/model/Game;Z)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v0

    .line 427
    .local v0, description:Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->setHeaderDescription(Landroid/content/Intent;)Lcom/scoreloop/client/android/ui/framework/ActivityDescription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;->getArguments()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v1

    const-string v2, "mode"

    sget-object v3, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;->BLANK:Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;

    invoke-virtual {v1, v2, v3}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 429
    new-instance v1, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->setBodyDescription(Landroid/content/Intent;)Lcom/scoreloop/client/android/ui/framework/ActivityDescription;

    .line 430
    return-object v0
.end method

.method public createUserDetailScreenDescription(Lcom/scoreloop/client/android/core/model/User;Ljava/lang/Boolean;)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
    .locals 4
    .parameter "user"
    .parameter "playsSessionGame"

    .prologue
    .line 435
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->createScreenDescription(Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/model/Game;Z)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v0

    .line 436
    .local v0, description:Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->setHeaderDescription(Landroid/content/Intent;)Lcom/scoreloop/client/android/ui/framework/ActivityDescription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;->getArguments()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v1

    const-string v2, "mode"

    sget-object v3, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;->BUDDY:Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;

    invoke-virtual {v1, v2, v3}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 438
    new-instance v1, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->setBodyDescription(Landroid/content/Intent;)Lcom/scoreloop/client/android/ui/framework/ActivityDescription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;->getArguments()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v1

    const-string v2, "userPlaysSessionGame"

    invoke-virtual {v1, v2, p2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 440
    return-object v0
.end method

.method public createUserScreenDescription(Lcom/scoreloop/client/android/core/model/User;)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
    .locals 5
    .parameter "user"

    .prologue
    .line 445
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->createScreenDescription(Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/model/Game;Z)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v0

    .line 446
    .local v0, description:Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->setHeaderDescription(Landroid/content/Intent;)Lcom/scoreloop/client/android/ui/framework/ActivityDescription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;->getArguments()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v2

    const-string v3, "mode"

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->ensureUser(Lcom/scoreloop/client/android/core/model/User;)Lcom/scoreloop/client/android/core/model/User;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/scoreloop/client/android/core/model/Session;->isOwnedByUser(Lcom/scoreloop/client/android/core/model/User;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;->BLANK:Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;

    :goto_0
    invoke-virtual {v2, v3, v1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 453
    new-instance v1, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/scoreloop/client/android/ui/component/user/UserListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->setBodyDescription(Landroid/content/Intent;)Lcom/scoreloop/client/android/ui/framework/ActivityDescription;

    .line 454
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->ensureUser(Lcom/scoreloop/client/android/core/model/User;)Lcom/scoreloop/client/android/core/model/User;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/core/model/Session;->isOwnedByUser(Lcom/scoreloop/client/android/core/model/User;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 455
    const v1, 0x7f0802be

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->setShortcutSelectionId(I)V

    .line 457
    :cond_0
    return-object v0

    .line 446
    :cond_1
    sget-object v1, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;->BUDDY:Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 462
    invoke-static {}, Lcom/scoreloop/client/android/ui/framework/ScreenManagerSingleton;->destroy()V

    .line 464
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_client:Lcom/scoreloop/client/android/core/model/Client;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Client;->destroy()V

    .line 465
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_client:Lcom/scoreloop/client/android/core/model/Client;

    .line 466
    return-void
.end method

.method public getAchievement(Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/Achievement;
    .locals 1
    .parameter "awardId"

    .prologue
    .line 482
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->checkHasAwards()V

    .line 483
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->checkHasLoadedAchievements()V

    .line 484
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_achievementsEngine:Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;->getAchievementsController()Lcom/scoreloop/client/android/core/controller/AchievementsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/scoreloop/client/android/core/controller/AchievementsController;->getAchievementForAwardIdentifier(Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/Achievement;

    move-result-object v0

    return-object v0
.end method

.method public getAchievements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/model/Achievement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 489
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->checkHasAwards()V

    .line 490
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->checkHasLoadedAchievements()V

    .line 491
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_achievementsEngine:Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;->getAchievementsController()Lcom/scoreloop/client/android/core/controller/AchievementsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/AchievementsController;->getAchievements()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAwardList()Lcom/scoreloop/client/android/core/model/AwardList;
    .locals 1

    .prologue
    .line 503
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->checkHasAwards()V

    .line 504
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getAchievementsEngine()Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;->getAchievementsController()Lcom/scoreloop/client/android/core/controller/AchievementsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/AchievementsController;->getAwardList()Lcom/scoreloop/client/android/core/model/AwardList;

    move-result-object v0

    return-object v0
.end method

.method public getConfiguration()Lcom/scoreloop/client/android/ui/component/base/Configuration;
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_configuration:Lcom/scoreloop/client/android/ui/component/base/Configuration;

    return-object v0
.end method

.method public getFactory()Lcom/scoreloop/client/android/ui/component/base/Factory;
    .locals 0

    .prologue
    .line 518
    return-object p0
.end method

.method public getGameItemDownloadUrl(Ljava/lang/String;Lcom/scoreloop/client/android/core/model/Continuation;)V
    .locals 3
    .parameter "gameItemIdentifier"
    .parameter
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

    .prologue
    .line 523
    .local p2, continuation:Lcom/scoreloop/client/android/core/model/Continuation;,"Lcom/scoreloop/client/android/core/model/Continuation<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 524
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "arguments must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 526
    :cond_1
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->checkHasPaymentEnabled()V

    .line 528
    new-instance v0, Lcom/scoreloop/client/android/core/controller/GameItemController;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v1

    new-instance v2, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$2;

    invoke-direct {v2, p0, p2}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$2;-><init>(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;Lcom/scoreloop/client/android/core/model/Continuation;)V

    invoke-direct {v0, v1, v2}, Lcom/scoreloop/client/android/core/controller/GameItemController;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    .line 540
    .local v0, controller:Lcom/scoreloop/client/android/core/controller/GameItemController;
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Session;->getEntityFactory()Lcom/scoreloop/client/android/core/model/EntityFactory;

    move-result-object v1

    sget-object v2, Lcom/scoreloop/client/android/core/model/GameItem;->ENTITY_NAME:Ljava/lang/String;

    invoke-interface {v1, p1, v2}, Lcom/scoreloop/client/android/core/model/EntityFactory;->createEntity(Ljava/lang/String;Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/Entity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/controller/GameItemController;->setGameItem(Lcom/scoreloop/client/android/core/model/Entity;)V

    .line 541
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/GameItemController;->loadGameItemDownloadUrl()V

    .line 542
    return-void
.end method

.method public getInfoString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_client:Lcom/scoreloop/client/android/core/model/Client;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Client;->getInfoString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastSubmitStatus()I
    .locals 1

    .prologue
    .line 572
    iget v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_lastSubmitStatus:I

    return v0
.end method

.method public getLastSubmittedChallenge()Lcom/scoreloop/client/android/core/model/Challenge;
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_lastSubmittedChallenge:Lcom/scoreloop/client/android/core/model/Challenge;

    return-object v0
.end method

.method public getLastSubmittedScore()Lcom/scoreloop/client/android/core/model/Score;
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_lastSubmittedScore:Lcom/scoreloop/client/android/core/model/Score;

    return-object v0
.end method

.method public getModeNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_configuration:Lcom/scoreloop/client/android/ui/component/base/Configuration;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/component/base/Configuration;->getModesNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSession()Lcom/scoreloop/client/android/core/model/Session;
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_client:Lcom/scoreloop/client/android/core/model/Client;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Client;->getSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedPaymentProviderKinds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1239
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_client:Lcom/scoreloop/client/android/core/model/Client;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Client;->getSupportedPaymentProviderKinds()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getValueSourceForKeyInStore(Ljava/lang/String;Lcom/scoreloop/client/android/ui/framework/ValueStore;)Lcom/scoreloop/client/android/ui/framework/ValueStore$ValueSource;
    .locals 1
    .parameter "key"
    .parameter "valueStore"

    .prologue
    .line 634
    sget-object v0, Lcom/scoreloop/client/android/ui/component/agent/UserAgent;->SUPPORTED_KEYS:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->containsKey([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    new-instance v0, Lcom/scoreloop/client/android/ui/component/agent/UserAgent;

    invoke-direct {v0, p0}, Lcom/scoreloop/client/android/ui/component/agent/UserAgent;-><init>(Lcom/scoreloop/client/android/ui/component/agent/BaseAgent$Delegate;)V

    .line 645
    :goto_0
    return-object v0

    .line 636
    :cond_0
    sget-object v0, Lcom/scoreloop/client/android/ui/component/agent/UserDetailsAgent;->SUPPORTED_KEYS:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->containsKey([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 637
    new-instance v0, Lcom/scoreloop/client/android/ui/component/agent/UserDetailsAgent;

    invoke-direct {v0, p0}, Lcom/scoreloop/client/android/ui/component/agent/UserDetailsAgent;-><init>(Lcom/scoreloop/client/android/ui/component/agent/BaseAgent$Delegate;)V

    goto :goto_0

    .line 638
    :cond_1
    sget-object v0, Lcom/scoreloop/client/android/ui/component/agent/NumberAchievementsAgent;->SUPPORTED_KEYS:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->containsKey([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 639
    new-instance v0, Lcom/scoreloop/client/android/ui/component/agent/NumberAchievementsAgent;

    invoke-direct {v0, p0}, Lcom/scoreloop/client/android/ui/component/agent/NumberAchievementsAgent;-><init>(Lcom/scoreloop/client/android/ui/component/agent/BaseAgent$Delegate;)V

    goto :goto_0

    .line 640
    :cond_2
    sget-object v0, Lcom/scoreloop/client/android/ui/component/agent/NewsAgent;->SUPPORTED_KEYS:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->containsKey([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 641
    new-instance v0, Lcom/scoreloop/client/android/ui/component/agent/NewsAgent;

    invoke-direct {v0}, Lcom/scoreloop/client/android/ui/component/agent/NewsAgent;-><init>()V

    goto :goto_0

    .line 642
    :cond_3
    sget-object v0, Lcom/scoreloop/client/android/ui/component/agent/UserBuddiesAgent;->SUPPORTED_KEYS:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->containsKey([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 643
    new-instance v0, Lcom/scoreloop/client/android/ui/component/agent/UserBuddiesAgent;

    invoke-direct {v0, p0}, Lcom/scoreloop/client/android/ui/component/agent/UserBuddiesAgent;-><init>(Lcom/scoreloop/client/android/ui/component/agent/BaseAgent$Delegate;)V

    goto :goto_0

    .line 645
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLoadedAchievements()Z
    .locals 1

    .prologue
    .line 650
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->checkHasAwards()V

    .line 651
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getAchievementsEngine()Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;->hasLoadedAchievements()Z

    move-result v0

    return v0
.end method

.method public hasPendingPaymentForGameItemWithIdentifier(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .parameter "identifier"

    .prologue
    .line 656
    if-nez p1, :cond_0

    .line 657
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "identifier must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 659
    :cond_0
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->checkHasPaymentEnabled()V

    .line 661
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    invoke-static {v0}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->getInstance(Lcom/scoreloop/client/android/core/model/Session;)Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->hasPendingPaymentForGameItem(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public incrementAward(Ljava/lang/String;ZZ)Z
    .locals 3
    .parameter "awardId"
    .parameter "showToast"
    .parameter "submitNow"

    .prologue
    const/4 v1, 0x0

    .line 666
    invoke-virtual {p0, p1}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getAchievement(Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/Achievement;

    move-result-object v0

    .line 667
    .local v0, achievement:Lcom/scoreloop/client/android/core/model/Achievement;
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Achievement;->isAchieved()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 680
    :cond_0
    :goto_0
    return v1

    .line 670
    :cond_1
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Achievement;->incrementValue()V

    .line 671
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Achievement;->needsSubmit()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 674
    if-eqz p2, :cond_2

    .line 675
    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->showToastForAchievement(Lcom/scoreloop/client/android/core/model/Achievement;)V

    .line 677
    :cond_2
    if-eqz p3, :cond_3

    .line 678
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->submitAchievements(Lcom/scoreloop/client/android/core/model/Continuation;)V

    .line 680
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "gameSecret"

    .prologue
    .line 685
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_context:Landroid/content/Context;

    .line 686
    new-instance v2, Lcom/scoreloop/client/android/core/model/Client;

    iget-object v3, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_context:Landroid/content/Context;

    invoke-direct {v2, v3, p2, p0}, Lcom/scoreloop/client/android/core/model/Client;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/scoreloop/client/android/core/model/ClientObserver;)V

    iput-object v2, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_client:Lcom/scoreloop/client/android/core/model/Client;

    .line 688
    new-instance v2, Lcom/scoreloop/client/android/ui/component/base/Configuration;

    iget-object v3, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/scoreloop/client/android/ui/component/base/Configuration;-><init>(Landroid/content/Context;Lcom/scoreloop/client/android/core/model/Session;)V

    iput-object v2, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_configuration:Lcom/scoreloop/client/android/ui/component/base/Configuration;

    .line 689
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->verifyManifest()V

    .line 691
    new-instance v1, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;

    invoke-direct {v1}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;-><init>()V

    .line 692
    .local v1, screenManager:Lcom/scoreloop/client/android/ui/framework/ScreenManager;
    invoke-interface {v1, p0}, Lcom/scoreloop/client/android/ui/framework/ScreenManager;->setDelegate(Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate;)V

    .line 693
    invoke-static {v1}, Lcom/scoreloop/client/android/ui/framework/ScreenManagerSingleton;->init(Lcom/scoreloop/client/android/ui/framework/ScreenManager;)V

    .line 695
    invoke-static {}, Lcom/scoreloop/client/android/ui/component/base/Constant;->setup()V

    .line 697
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getConfiguration()Lcom/scoreloop/client/android/ui/component/base/Configuration;

    move-result-object v2

    sget-object v3, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->PAYMENT:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    invoke-virtual {v2, v3}, Lcom/scoreloop/client/android/ui/component/base/Configuration;->isFeatureEnabled(Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 698
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v2

    invoke-static {v2}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->getInstance(Lcom/scoreloop/client/android/core/model/Session;)Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;

    move-result-object v0

    .line 699
    .local v0, processor:Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;
    invoke-virtual {v0, p0}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->addObserver(Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$Observer;)V

    .line 701
    .end local v0           #processor:Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;
    :cond_0
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_handler:Landroid/os/Handler;

    new-instance v3, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$3;

    invoke-direct {v3, p0, p1}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$3;-><init>(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;Landroid/content/Context;)V

    const-wide/16 v4, 0x7530

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 707
    return-void
.end method

.method public isAwardAchieved(Ljava/lang/String;)Z
    .locals 2
    .parameter "awardId"

    .prologue
    .line 711
    invoke-virtual {p0, p1}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getAchievement(Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/Achievement;

    move-result-object v0

    .line 712
    .local v0, achievement:Lcom/scoreloop/client/android/core/model/Achievement;
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Achievement;->isAchieved()Z

    move-result v1

    return v1
.end method

.method public isChallengeOngoing()Z
    .locals 1

    .prologue
    .line 717
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->getChallenge()Lcom/scoreloop/client/android/core/model/Challenge;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAchievements(Lcom/scoreloop/client/android/core/model/Continuation;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/scoreloop/client/android/core/model/Continuation",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 722
    .local p1, continuation:Lcom/scoreloop/client/android/core/model/Continuation;,"Lcom/scoreloop/client/android/core/model/Continuation<Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->checkHasAwards()V

    .line 723
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getAchievementsEngine()Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getConfiguration()Lcom/scoreloop/client/android/ui/component/base/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/ui/component/base/Configuration;->isAchievementForceInitialSync()Z

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;->loadAchievements(ZLcom/scoreloop/client/android/core/model/Continuation;)V

    .line 724
    return-void
.end method

.method public onAgentDidFail(Lcom/scoreloop/client/android/ui/component/agent/BaseAgent;Lcom/scoreloop/client/android/core/controller/RequestController;Ljava/lang/Exception;)V
    .locals 0
    .parameter "agent"
    .parameter "controller"
    .parameter "error"

    .prologue
    .line 729
    return-void
.end method

.method public onGamePlayEnded(Lcom/scoreloop/client/android/core/model/Score;Ljava/lang/Boolean;)V
    .locals 10
    .parameter "score"
    .parameter "submitLocallyOnly"

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 740
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v8

    invoke-virtual {v8}, Lcom/scoreloop/client/android/core/model/Session;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v2

    .line 742
    .local v2, game:Lcom/scoreloop/client/android/core/model/Game;
    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Game;->hasModes()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 743
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Score;->hasMode()Z

    move-result v8

    if-nez v8, :cond_0

    .line 744
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "the game has modes, but no mode was passed"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 746
    :cond_0
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Score;->getMode()Ljava/lang/Integer;

    move-result-object v5

    .line 747
    .local v5, mode:Ljava/lang/Integer;
    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Game;->getMinMode()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 748
    .local v4, minMode:I
    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Game;->getMaxMode()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 749
    .local v3, maxMode:I
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lt v8, v4, :cond_1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lt v8, v3, :cond_2

    .line 750
    :cond_1
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mode out of range ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 754
    .end local v3           #maxMode:I
    .end local v4           #minMode:I
    .end local v5           #mode:Ljava/lang/Integer;
    :cond_2
    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Game;->hasModes()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Score;->hasMode()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 755
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "the game has no modes, but a mode was passed"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 758
    :cond_3
    iput v7, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_lastSubmitStatus:I

    .line 759
    iput-object v9, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_lastSubmittedScore:Lcom/scoreloop/client/android/core/model/Score;

    .line 760
    iput-object v9, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_lastSubmittedChallenge:Lcom/scoreloop/client/android/core/model/Challenge;

    .line 762
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->isChallengeOngoing()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 763
    iget-object v7, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_configuration:Lcom/scoreloop/client/android/ui/component/base/Configuration;

    sget-object v8, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->CHALLENGE:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    invoke-virtual {v7, v8}, Lcom/scoreloop/client/android/ui/component/base/Configuration;->isFeatureEnabled(Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 764
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "we\'re in challenge mode, but the challenge feature is not enabled in the scoreloop.properties"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 768
    :cond_4
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v7

    invoke-virtual {v7}, Lcom/scoreloop/client/android/core/model/Session;->getChallenge()Lcom/scoreloop/client/android/core/model/Challenge;

    move-result-object v0

    .line 769
    .local v0, challenge:Lcom/scoreloop/client/android/core/model/Challenge;
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Challenge;->isCreated()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 770
    invoke-virtual {v0, p1}, Lcom/scoreloop/client/android/core/model/Challenge;->setContenderScore(Lcom/scoreloop/client/android/core/model/Score;)V

    .line 773
    :cond_5
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Challenge;->isAccepted()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 774
    invoke-virtual {v0, p1}, Lcom/scoreloop/client/android/core/model/Challenge;->setContestantScore(Lcom/scoreloop/client/android/core/model/Score;)V

    .line 777
    :cond_6
    new-instance v1, Lcom/scoreloop/client/android/core/controller/ChallengeController;

    new-instance v7, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$ChallengeRequestControllerObserver;

    invoke-direct {v7, p0, p1, v9}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$ChallengeRequestControllerObserver;-><init>(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;Lcom/scoreloop/client/android/core/model/Score;Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$1;)V

    invoke-direct {v1, v7}, Lcom/scoreloop/client/android/core/controller/ChallengeController;-><init>(Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    .line 778
    .local v1, challengeController:Lcom/scoreloop/client/android/core/controller/ChallengeController;
    invoke-virtual {v1, v0}, Lcom/scoreloop/client/android/core/controller/ChallengeController;->setChallenge(Lcom/scoreloop/client/android/core/model/Challenge;)V

    .line 779
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/controller/ChallengeController;->submitChallenge()V

    .line 785
    .end local v0           #challenge:Lcom/scoreloop/client/android/core/model/Challenge;
    .end local v1           #challengeController:Lcom/scoreloop/client/android/core/controller/ChallengeController;
    :goto_0
    return-void

    .line 781
    :cond_7
    new-instance v6, Lcom/scoreloop/client/android/core/controller/ScoreController;

    new-instance v8, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$ScoreRequestControllerObserver;

    invoke-direct {v8, p0, v9}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$ScoreRequestControllerObserver;-><init>(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$1;)V

    invoke-direct {v6, v8}, Lcom/scoreloop/client/android/core/controller/ScoreController;-><init>(Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    .line 782
    .local v6, scoreController:Lcom/scoreloop/client/android/core/controller/ScoreController;
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v7, 0x1

    :cond_8
    invoke-virtual {v6, v7}, Lcom/scoreloop/client/android/core/controller/ScoreController;->setShouldSubmitScoreLocally(Z)V

    .line 783
    invoke-virtual {v6, p1}, Lcom/scoreloop/client/android/core/controller/ScoreController;->submitScore(Lcom/scoreloop/client/android/core/model/Score;)V

    goto :goto_0
.end method

.method public onGamePlayEnded(Ljava/lang/Double;Ljava/lang/Integer;)V
    .locals 2
    .parameter "scoreResult"
    .parameter "mode"

    .prologue
    const/4 v1, 0x0

    .line 733
    new-instance v0, Lcom/scoreloop/client/android/core/model/Score;

    invoke-direct {v0, p1, v1}, Lcom/scoreloop/client/android/core/model/Score;-><init>(Ljava/lang/Double;Ljava/util/Map;)V

    .line 734
    .local v0, score:Lcom/scoreloop/client/android/core/model/Score;
    invoke-virtual {v0, p2}, Lcom/scoreloop/client/android/core/model/Score;->setMode(Ljava/lang/Integer;)V

    .line 735
    invoke-virtual {p0, v0, v1}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->onGamePlayEnded(Lcom/scoreloop/client/android/core/model/Score;Ljava/lang/Boolean;)V

    .line 736
    return-void
.end method

.method public onShortcut(I)V
    .locals 2
    .parameter "textId"

    .prologue
    const/4 v1, 0x0

    .line 789
    const v0, 0x7f0802c7

    if-ne p1, v0, :cond_1

    .line 790
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->createEntryScreenDescription()Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->displayWithEmptyStack(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)V

    .line 796
    :cond_0
    :goto_0
    return-void

    .line 791
    :cond_1
    const v0, 0x7f0802be

    if-ne p1, v0, :cond_2

    .line 792
    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->createUserScreenDescription(Lcom/scoreloop/client/android/core/model/User;)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->displayWithEmptyStack(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)V

    goto :goto_0

    .line 793
    :cond_2
    const v0, 0x7f0802d2

    if-ne p1, v0, :cond_0

    .line 794
    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->createMarketScreenDescription(Lcom/scoreloop/client/android/core/model/User;)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->displayWithEmptyStack(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)V

    goto :goto_0
.end method

.method public paymentFinished(Lcom/scoreloop/client/android/core/model/GameItem;I)I
    .locals 2
    .parameter "gameItem"
    .parameter "code"

    .prologue
    .line 803
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_onPaymentChangedObserver:Lcom/scoreloop/client/android/ui/OnPaymentChangedObserver;

    if-eqz v0, :cond_0

    .line 804
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_onPaymentChangedObserver:Lcom/scoreloop/client/android/ui/OnPaymentChangedObserver;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/scoreloop/client/android/ui/OnPaymentChangedObserver;->onPaymentChanged(Lcom/scoreloop/client/android/core/model/GameItem;IZ)I

    move-result v0

    .line 806
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x10

    goto :goto_0
.end method

.method public pendingPaymentProcessorDidProcessPayment(Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;Lcom/scoreloop/client/android/core/model/Payment;)V
    .locals 3
    .parameter "processor"
    .parameter "payment"

    .prologue
    .line 811
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/model/Payment;->getGameItemIdentifier()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$4;

    invoke-direct {v2, p0, p2}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$4;-><init>(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;Lcom/scoreloop/client/android/core/model/Payment;)V

    invoke-static {v0, v1, v2}, Lcom/scoreloop/client/android/ui/manager/GameItemUtil;->withGameItemForIdentifier(Lcom/scoreloop/client/android/core/model/Session;Ljava/lang/String;Lcom/scoreloop/client/android/core/model/Continuation;)V

    .line 843
    return-void
.end method

.method public persistSessionUserName()V
    .locals 5

    .prologue
    .line 847
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Session;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v1

    .line 848
    .local v1, sessionUser:Lcom/scoreloop/client/android/core/model/User;
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/User;->isAuthenticated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 849
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.scoreloop.ui.login"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 850
    .local v0, preferences:Landroid/content/SharedPreferences$Editor;
    const-string v2, "userName"

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/User;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 851
    const-string v2, "userImageUrl"

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/User;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 852
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 854
    .end local v0           #preferences:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public screenManagerDidLeaveFramework(Lcom/scoreloop/client/android/ui/framework/ScreenManager;)V
    .locals 1
    .parameter "manager"

    .prologue
    const/4 v0, 0x0

    .line 933
    iput-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_sessionUserValueStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    .line 934
    iput-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_sessionGameValueStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    .line 935
    iput-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_cachedUserValueStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    .line 936
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->persistSessionUserName()V

    .line 937
    return-void
.end method

.method public screenManagerWantsNewScreen(Lcom/scoreloop/client/android/ui/framework/ScreenManager;Lcom/scoreloop/client/android/ui/framework/ScreenDescription;Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)Z
    .locals 11
    .parameter "screenManager"
    .parameter "description"
    .parameter "referenceDescription"

    .prologue
    .line 945
    invoke-virtual {p2}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->getScreenValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v5

    .line 946
    .local v5, screenValues:Lcom/scoreloop/client/android/ui/framework/ValueStore;
    invoke-virtual {p3}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->getScreenValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v3

    .line 948
    .local v3, referenceScreenValues:Lcom/scoreloop/client/android/ui/framework/ValueStore;
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "userValues"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "user"

    aput-object v10, v8, v9

    invoke-static {v8}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->concatenateKeys([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 949
    .local v7, userPath:Ljava/lang/String;
    invoke-virtual {v5, v7}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/scoreloop/client/android/core/model/User;

    .line 950
    .local v6, user:Lcom/scoreloop/client/android/core/model/User;
    invoke-virtual {v3, v7}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scoreloop/client/android/core/model/User;

    .line 951
    .local v4, referenceUser:Lcom/scoreloop/client/android/core/model/User;
    invoke-virtual {v6, v4}, Lcom/scoreloop/client/android/core/model/User;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 952
    const/4 v8, 0x1

    .line 958
    :goto_0
    return v8

    .line 955
    :cond_0
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "gameValues"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "game"

    aput-object v10, v8, v9

    invoke-static {v8}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->concatenateKeys([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 956
    .local v1, gamePath:Ljava/lang/String;
    invoke-virtual {v5, v1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/Game;

    .line 957
    .local v0, game:Lcom/scoreloop/client/android/core/model/Game;
    invoke-virtual {v3, v1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scoreloop/client/android/core/model/Game;

    .line 958
    .local v2, referenceGame:Lcom/scoreloop/client/android/core/model/Game;
    invoke-virtual {v0, v2}, Lcom/scoreloop/client/android/core/model/Game;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public screenManagerWillEnterFramework(Lcom/scoreloop/client/android/ui/framework/ScreenManager;)V
    .locals 4
    .parameter "manager"

    .prologue
    .line 963
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getPersistedUserName()Ljava/lang/String;

    move-result-object v1

    .line 964
    .local v1, userName:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 965
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Session;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/scoreloop/client/android/core/model/User;->setLogin(Ljava/lang/String;)V

    .line 967
    :cond_0
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getPersistedUserImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 968
    .local v0, userImageUrl:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 969
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getSessionUserValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v2

    const-string v3, "userImageUrl"

    invoke-virtual {v2, v3}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 970
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getSessionUserValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v2

    const-string v3, "userImageUrl"

    invoke-virtual {v2, v3, v0}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 973
    :cond_1
    return-void
.end method

.method public screenManagerWillShowOptionsMenu()V
    .locals 0

    .prologue
    .line 978
    return-void
.end method

.method public screenManagerWillShowScreenDescription(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate$Direction;)V
    .locals 0
    .parameter "screenDescription"
    .parameter "direction"

    .prologue
    .line 983
    return-void
.end method

.method public setAllowToAskUserToAcceptTermsOfService(Z)V
    .locals 0
    .parameter "ask"

    .prologue
    .line 987
    iput-boolean p1, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_askUserForTermsAndConditions:Z

    .line 988
    return-void
.end method

.method public setOnCanStartGamePlayObserver(Lcom/scoreloop/client/android/ui/OnCanStartGamePlayObserver;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 992
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_onCanStartGamePlayObserver:Lcom/scoreloop/client/android/ui/OnCanStartGamePlayObserver;

    .line 993
    return-void
.end method

.method public setOnPaymentChangedObserver(Lcom/scoreloop/client/android/ui/OnPaymentChangedObserver;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 997
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->checkHasPaymentEnabled()V

    .line 998
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_onPaymentChangedObserver:Lcom/scoreloop/client/android/ui/OnPaymentChangedObserver;

    .line 999
    return-void
.end method

.method public setOnScoreSubmitObserver(Lcom/scoreloop/client/android/ui/OnScoreSubmitObserver;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 1003
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_onScoreSubmitObserver:Lcom/scoreloop/client/android/ui/OnScoreSubmitObserver;

    .line 1004
    return-void
.end method

.method public setOnStartGamePlayRequestObserver(Lcom/scoreloop/client/android/ui/OnStartGamePlayRequestObserver;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 1008
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_onStartGamePlayRequestObserver:Lcom/scoreloop/client/android/ui/OnStartGamePlayRequestObserver;

    .line 1009
    return-void
.end method

.method public showWelcomeBackToast(J)V
    .locals 2
    .parameter "delay"

    .prologue
    .line 1018
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 1019
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "delay to showWelcomeBackToast must be zero or postive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1021
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_handler:Landroid/os/Handler;

    new-instance v1, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$5;

    invoke-direct {v1, p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$5;-><init>(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1031
    return-void
.end method

.method public startGamePlay(Ljava/lang/Integer;Lcom/scoreloop/client/android/core/model/Challenge;)V
    .locals 2
    .parameter "mode"
    .parameter "challenge"

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_onStartGamePlayRequestObserver:Lcom/scoreloop/client/android/ui/OnStartGamePlayRequestObserver;

    if-nez v0, :cond_0

    .line 1036
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "trying to start gameplay, but the callback is not set - did you call ScoreloopManagerSingleton.get().setOnStartGamePlayRequestObserver(...)?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1040
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_onStartGamePlayRequestObserver:Lcom/scoreloop/client/android/ui/OnStartGamePlayRequestObserver;

    invoke-interface {v0, p1}, Lcom/scoreloop/client/android/ui/OnStartGamePlayRequestObserver;->onStartGamePlayRequest(Ljava/lang/Integer;)V

    .line 1041
    return-void
.end method

.method public submitAchievements(Lcom/scoreloop/client/android/core/model/Continuation;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/scoreloop/client/android/core/model/Continuation",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1045
    .local p1, continuation:Lcom/scoreloop/client/android/core/model/Continuation;,"Lcom/scoreloop/client/android/core/model/Continuation<Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->checkHasAwards()V

    .line 1046
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getAchievementsEngine()Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getConfiguration()Lcom/scoreloop/client/android/ui/component/base/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/ui/component/base/Configuration;->isAchievementForceInitialSync()Z

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;->submitAchievements(ZLcom/scoreloop/client/android/core/model/Continuation;)V

    .line 1047
    return-void
.end method

.method public submitLocalScores(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "continuation"

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_submitLocalScoresContinuations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1054
    if-eqz p1, :cond_0

    .line 1055
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_submitLocalScoresContinuations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1114
    :cond_0
    :goto_0
    return-void

    .line 1060
    :cond_1
    new-instance v0, Lcom/scoreloop/client/android/core/controller/ScoresController;

    new-instance v1, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$6;

    invoke-direct {v1, p0, p1}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$6;-><init>(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;Ljava/lang/Runnable;)V

    invoke-direct {v0, v1}, Lcom/scoreloop/client/android/core/controller/ScoresController;-><init>(Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/ScoresController;->loadLocalScoresToSubmit()V

    goto :goto_0
.end method

.method public trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "category"
    .parameter "action"
    .parameter "label"
    .parameter "value"

    .prologue
    .line 1119
    return-void
.end method

.method public trackPageView(Ljava/lang/String;Lcom/scoreloop/client/android/ui/framework/ValueStore;)V
    .locals 0
    .parameter "activityClassName"
    .parameter "arguments"

    .prologue
    .line 1124
    return-void
.end method

.method public userRejectedTermsOfService(Lcom/scoreloop/client/android/core/model/Continuation;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/scoreloop/client/android/core/model/Continuation",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1128
    .local p1, notification:Lcom/scoreloop/client/android/core/model/Continuation;,"Lcom/scoreloop/client/android/core/model/Continuation<Ljava/lang/Boolean;>;"
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_rejectedTermsOfServiceNotification:Lcom/scoreloop/client/android/core/model/Continuation;

    .line 1129
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->getUsersTermsOfService()Lcom/scoreloop/client/android/core/model/TermsOfService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/TermsOfService;->getStatus()Lcom/scoreloop/client/android/core/model/TermsOfService$Status;

    move-result-object v0

    sget-object v1, Lcom/scoreloop/client/android/core/model/TermsOfService$Status;->REJECTED:Lcom/scoreloop/client/android/core/model/TermsOfService$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public wasGameItemPurchasedBefore(Ljava/lang/String;Lcom/scoreloop/client/android/core/model/Continuation;)V
    .locals 2
    .parameter "gameItemIdentifier"
    .parameter
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

    .prologue
    .line 1217
    .local p2, continuation:Lcom/scoreloop/client/android/core/model/Continuation;,"Lcom/scoreloop/client/android/core/model/Continuation<Ljava/lang/Boolean;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1218
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid gameItemIdentifier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1220
    :cond_1
    if-nez p2, :cond_2

    .line 1221
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "continuation must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1223
    :cond_2
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->checkHasPaymentEnabled()V

    .line 1225
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    new-instance v1, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$7;

    invoke-direct {v1, p0, p2}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$7;-><init>(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;Lcom/scoreloop/client/android/core/model/Continuation;)V

    invoke-static {v0, p1, v1}, Lcom/scoreloop/client/android/ui/manager/GameItemUtil;->withGameItemForIdentifier(Lcom/scoreloop/client/android/core/model/Session;Ljava/lang/String;Lcom/scoreloop/client/android/core/model/Continuation;)V

    .line 1235
    return-void
.end method
