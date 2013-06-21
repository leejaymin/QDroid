.class public Lcom/scoreloop/client/android/ui/component/base/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;,
        Lcom/scoreloop/client/android/ui/component/base/Configuration$ConfigurationException;
    }
.end annotation


# static fields
.field private static final ACHIVEMENT_INITIAL_SYNC:Ljava/lang/String; = "ui.feature.achievement.forceSync"

.field private static final FORMAT_SCORE_CHALLENGES:Ljava/lang/String; = "ui.format.score.challenges"

.field private static final FORMAT_SCORE_LEADERBOARD:Ljava/lang/String; = "ui.format.score.leaderboard"

.field private static final FORMAT_SCORE_SOCIAL_NETWORK_POST:Ljava/lang/String; = "ui.format.score.socialnetworkpost"


# instance fields
.field private _achievementForceInitialSync:Z

.field private final _challengesScoreFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;

.field private final _leaderboardScoreFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;

.field private _modesNames:[Ljava/lang/String;

.field private final _socialNetworkPostScoreFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/scoreloop/client/android/core/model/Session;)V
    .locals 17
    .parameter "context"
    .parameter "session"

    .prologue
    .line 90
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/scoreloop/client/android/ui/component/base/Configuration;->_achievementForceInitialSync:Z

    .line 91
    invoke-static/range {p1 .. p1}, Lcom/scoreloop/client/android/core/model/Client;->getProperties(Landroid/content/Context;)Ljava/util/Properties;

    move-result-object v7

    .line 95
    .local v7, properties:Ljava/util/Properties;
    invoke-static {}, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->values()[Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    move-result-object v2

    .line 96
    .local v2, features:[Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v10, v2

    if-ge v4, v10, :cond_1

    .line 97
    aget-object v1, v2, v4

    .line 98
    .local v1, feature:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;
    invoke-virtual {v1}, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->getPropertyName()Ljava/lang/String;

    move-result-object v8

    .line 100
    .local v8, property:Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 101
    .local v9, value:Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 102
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v8}, Lcom/scoreloop/client/android/ui/component/base/Configuration;->verifyBooleanProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v1, v10}, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->setEnabled(Z)V

    .line 96
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 106
    .end local v1           #feature:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;
    .end local v8           #property:Ljava/lang/String;
    .end local v9           #value:Ljava/lang/String;
    :cond_1
    const-string v10, "ui.feature.achievement.forceSync"

    invoke-virtual {v7, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 107
    .restart local v9       #value:Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 108
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string v11, "ui.feature.achievement.forceSync"

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/scoreloop/client/android/ui/component/base/Configuration;->verifyBooleanProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/scoreloop/client/android/ui/component/base/Configuration;->_achievementForceInitialSync:Z

    .line 111
    :cond_2
    const-string v10, "ui.format.score.leaderboard"

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v10}, Lcom/scoreloop/client/android/ui/component/base/Configuration;->loadScoreFormatProperty(Ljava/util/Properties;Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/scoreloop/client/android/ui/component/base/Configuration;->_leaderboardScoreFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;

    .line 112
    const-string v10, "ui.format.score.challenges"

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v10}, Lcom/scoreloop/client/android/ui/component/base/Configuration;->loadScoreFormatProperty(Ljava/util/Properties;Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/scoreloop/client/android/ui/component/base/Configuration;->_challengesScoreFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;

    .line 113
    const-string v10, "ui.format.score.socialnetworkpost"

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v10}, Lcom/scoreloop/client/android/ui/component/base/Configuration;->loadScoreFormatProperty(Ljava/util/Properties;Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/scoreloop/client/android/ui/component/base/Configuration;->_socialNetworkPostScoreFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;

    .line 115
    invoke-virtual/range {p2 .. p2}, Lcom/scoreloop/client/android/core/model/Session;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v3

    .line 116
    .local v3, game:Lcom/scoreloop/client/android/core/model/Game;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/model/Game;->hasModes()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 117
    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/model/Game;->getMinMode()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 118
    .local v5, minMode:I
    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/model/Game;->getModeCount()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 120
    .local v6, modeCount:I
    new-array v10, v6, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/scoreloop/client/android/ui/component/base/Configuration;->_modesNames:[Ljava/lang/String;

    .line 121
    move v4, v5

    :goto_1
    add-int v10, v5, v6

    if-ge v4, v10, :cond_4

    .line 122
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/scoreloop/client/android/ui/component/base/Configuration;->_modesNames:[Ljava/lang/String;

    sub-int v11, v4, v5

    invoke-static {}, Lcom/scoreloop/client/android/core/model/ScoreFormatter;->getDefaultScoreFormatter()Lcom/scoreloop/client/android/core/model/ScoreFormatter;

    move-result-object v12

    new-instance v13, Lcom/scoreloop/client/android/core/model/Score;

    const/4 v14, 0x0

    const-string v15, "SLContextKeyMode"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lcom/scoreloop/client/android/core/model/Score;-><init>(Ljava/lang/Double;Ljava/util/Map;)V

    sget-object v14, Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;->ModeOnlyFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;

    invoke-virtual {v12, v13, v14}, Lcom/scoreloop/client/android/core/model/ScoreFormatter;->formatScore(Lcom/scoreloop/client/android/core/model/Score;Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 121
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 127
    .end local v5           #minMode:I
    .end local v6           #modeCount:I
    :cond_3
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/scoreloop/client/android/ui/component/base/Configuration;->_modesNames:[Ljava/lang/String;

    .line 130
    :cond_4
    const-string v10, "ui.format.score"

    invoke-virtual {v7, v10}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 131
    new-instance v10, Lcom/scoreloop/client/android/ui/component/base/Configuration$ConfigurationException;

    const-string v11, "Property \"ui.format.score\" is no longer supported. Please use \"format.score\"."

    invoke-direct {v10, v11}, Lcom/scoreloop/client/android/ui/component/base/Configuration$ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 134
    :cond_5
    const-string v10, "ui.format.money"

    invoke-virtual {v7, v10}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 135
    new-instance v10, Lcom/scoreloop/client/android/ui/component/base/Configuration$ConfigurationException;

    const-string v11, "Property \"ui.format.money\" is no longer supported. Please use \"format.money\"."

    invoke-direct {v10, v11}, Lcom/scoreloop/client/android/ui/component/base/Configuration$ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 139
    :cond_6
    invoke-virtual/range {p0 .. p2}, Lcom/scoreloop/client/android/ui/component/base/Configuration;->verifyConfiguration(Landroid/content/Context;Lcom/scoreloop/client/android/core/model/Session;)V

    .line 140
    return-void
.end method

.method private loadScoreFormatProperty(Ljava/util/Properties;Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;
    .locals 5
    .parameter "properties"
    .parameter "propertyName"

    .prologue
    .line 167
    invoke-virtual {p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, format:Ljava/lang/String;
    const/4 v1, 0x0

    .line 170
    .local v1, scoreFormatKey:Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;
    if-eqz v0, :cond_0

    .line 171
    invoke-static {v0}, Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;->parse(Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;

    move-result-object v1

    .line 172
    if-nez v1, :cond_0

    .line 173
    new-instance v2, Lcom/scoreloop/client/android/ui/component/base/Configuration$ConfigurationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " value (unrecognized format key): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/scoreloop/client/android/ui/component/base/Configuration$ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 177
    :cond_0
    return-object v1
.end method

.method private verifyBooleanProperty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "value"
    .parameter "property"

    .prologue
    .line 181
    const-string v0, "false"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    const/4 v0, 0x0

    .line 184
    :goto_0
    return v0

    .line 183
    :cond_0
    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    const/4 v0, 0x1

    goto :goto_0

    .line 186
    :cond_1
    new-instance v0, Lcom/scoreloop/client/android/ui/component/base/Configuration$ConfigurationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be either \'true\' or \'false\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/scoreloop/client/android/ui/component/base/Configuration$ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getChallengesScoreFormat()Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/base/Configuration;->_challengesScoreFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;

    return-object v0
.end method

.method public getLeaderboardScoreFormat()Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/base/Configuration;->_leaderboardScoreFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;

    return-object v0
.end method

.method public getModesNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/base/Configuration;->_modesNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getSocialNetworkPostScoreFormat()Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/base/Configuration;->_socialNetworkPostScoreFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;

    return-object v0
.end method

.method public isAchievementForceInitialSync()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/scoreloop/client/android/ui/component/base/Configuration;->_achievementForceInitialSync:Z

    return v0
.end method

.method public isFeatureEnabled(Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;)Z
    .locals 1
    .parameter "feature"

    .prologue
    .line 163
    invoke-virtual {p1}, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->isEnabled()Z

    move-result v0

    return v0
.end method

.method protected verifyConfiguration(Landroid/content/Context;Lcom/scoreloop/client/android/core/model/Session;)V
    .locals 9
    .parameter "context"
    .parameter "session"

    .prologue
    .line 193
    sget-object v6, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->ACHIEVEMENT:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    invoke-virtual {p0, v6}, Lcom/scoreloop/client/android/ui/component/base/Configuration;->isFeatureEnabled(Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 194
    new-instance v0, Lcom/scoreloop/client/android/core/controller/AchievementsController;

    new-instance v6, Lcom/scoreloop/client/android/ui/component/base/Configuration$1;

    invoke-direct {v6, p0}, Lcom/scoreloop/client/android/ui/component/base/Configuration$1;-><init>(Lcom/scoreloop/client/android/ui/component/base/Configuration;)V

    invoke-direct {v0, v6}, Lcom/scoreloop/client/android/core/controller/AchievementsController;-><init>(Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    .line 203
    .local v0, controller:Lcom/scoreloop/client/android/core/controller/AchievementsController;
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/AchievementsController;->getAwardList()Lcom/scoreloop/client/android/core/model/AwardList;

    move-result-object v6

    if-nez v6, :cond_0

    .line 204
    new-instance v6, Lcom/scoreloop/client/android/ui/component/base/Configuration$ConfigurationException;

    const-string v7, "when you enable the achievement feature you also have to provide an SLAwards.bundle in the assets folder"

    invoke-direct {v6, v7}, Lcom/scoreloop/client/android/ui/component/base/Configuration$ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 210
    .end local v0           #controller:Lcom/scoreloop/client/android/core/controller/AchievementsController;
    :cond_0
    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/model/Session;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v1

    .line 211
    .local v1, game:Lcom/scoreloop/client/android/core/model/Game;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Game;->hasModes()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 212
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Game;->getModeCount()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 213
    .local v4, modeCount:I
    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/model/Session;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v6

    invoke-virtual {v6}, Lcom/scoreloop/client/android/core/model/Game;->getMinMode()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 214
    .local v3, minMode:I
    invoke-static {}, Lcom/scoreloop/client/android/core/model/ScoreFormatter;->getDefaultScoreFormatter()Lcom/scoreloop/client/android/core/model/ScoreFormatter;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Lcom/scoreloop/client/android/core/model/ScoreFormatter;->getDefinedModesNames(II)[Ljava/lang/String;

    move-result-object v5

    .line 216
    .local v5, modesNames:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v6, v5

    if-ge v2, v6, :cond_2

    .line 217
    aget-object v6, v5, v2

    if-nez v6, :cond_1

    .line 218
    new-instance v6, Lcom/scoreloop/client/android/ui/component/base/Configuration$ConfigurationException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "no name configured for mode "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int v8, v3, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/scoreloop/client/android/ui/component/base/Configuration$ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 216
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 222
    .end local v2           #i:I
    .end local v3           #minMode:I
    .end local v4           #modeCount:I
    .end local v5           #modesNames:[Ljava/lang/String;
    :cond_2
    return-void
.end method
