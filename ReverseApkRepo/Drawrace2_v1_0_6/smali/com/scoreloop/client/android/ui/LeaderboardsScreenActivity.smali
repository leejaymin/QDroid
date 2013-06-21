.class public Lcom/scoreloop/client/android/ui/LeaderboardsScreenActivity;
.super Lcom/scoreloop/client/android/ui/framework/ScreenActivity;
.source "LeaderboardsScreenActivity.java"


# static fields
.field public static final LEADERBOARD:Ljava/lang/String; = "leaderboard"

.field public static final LEADERBOARD_24h:I = 0x2

.field public static final LEADERBOARD_FRIENDS:I = 0x1

.field public static final LEADERBOARD_GLOBAL:I = 0x0

.field public static final LEADERBOARD_LOCAL:I = 0x3

.field public static final MODE:Ljava/lang/String; = "mode"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/framework/ScreenActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x0

    .line 101
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/ui/framework/ScreenActivity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/LeaderboardsScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 105
    .local v2, intent:Landroid/content/Intent;
    const/4 v6, 0x0

    .line 106
    .local v6, mode:Ljava/lang/Integer;
    const-string v8, "mode"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 107
    const-string v8, "mode"

    invoke-virtual {v2, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 108
    invoke-static {}, Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton;->getImpl()Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton$Impl;

    move-result-object v8

    invoke-interface {v8}, Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton$Impl;->getSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v7

    .line 109
    .local v7, session:Lcom/scoreloop/client/android/core/model/Session;
    invoke-virtual {v7}, Lcom/scoreloop/client/android/core/model/Session;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v1

    .line 110
    .local v1, game:Lcom/scoreloop/client/android/core/model/Game;
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Game;->getMinMode()Ljava/lang/Integer;

    move-result-object v5

    .line 111
    .local v5, minMode:Ljava/lang/Integer;
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Game;->getMaxMode()Ljava/lang/Integer;

    move-result-object v4

    .line 112
    .local v4, maxMode:Ljava/lang/Integer;
    if-eqz v5, :cond_1

    if-eqz v4, :cond_1

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-lt v8, v9, :cond_0

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-lt v8, v9, :cond_1

    .line 113
    :cond_0
    const-string v8, "ScoreloopUI"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mode extra parameter on LeaderboardsScreenActivity is out of range ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/LeaderboardsScreenActivity;->finish()V

    .line 132
    .end local v1           #game:Lcom/scoreloop/client/android/core/model/Game;
    .end local v4           #maxMode:Ljava/lang/Integer;
    .end local v5           #minMode:Ljava/lang/Integer;
    .end local v7           #session:Lcom/scoreloop/client/android/core/model/Session;
    :goto_0
    return-void

    .line 120
    :cond_1
    const/4 v3, 0x0

    .line 121
    .local v3, leaderboard:Ljava/lang/Integer;
    const-string v8, "leaderboard"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 122
    const-string v8, "leaderboard"

    invoke-virtual {v2, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 123
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ltz v8, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x3

    if-le v8, v9, :cond_3

    .line 124
    :cond_2
    const-string v8, "ScoreloopUI"

    const-string v9, "leaderboard extra parameter on LeaderboardsScreenActivity is invalid"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/LeaderboardsScreenActivity;->finish()V

    goto :goto_0

    .line 130
    :cond_3
    invoke-static {}, Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton;->getImpl()Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton$Impl;

    move-result-object v8

    invoke-interface {v8}, Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton$Impl;->getFactory()Lcom/scoreloop/client/android/ui/component/base/Factory;

    move-result-object v0

    .line 131
    .local v0, factory:Lcom/scoreloop/client/android/ui/component/base/Factory;
    const/4 v8, 0x0

    invoke-interface {v0, v8, v6, v3}, Lcom/scoreloop/client/android/ui/component/base/Factory;->createScoreScreenDescription(Lcom/scoreloop/client/android/core/model/Game;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v8

    invoke-virtual {p0, v8, p1}, Lcom/scoreloop/client/android/ui/LeaderboardsScreenActivity;->display(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;Landroid/os/Bundle;)V

    goto :goto_0
.end method
