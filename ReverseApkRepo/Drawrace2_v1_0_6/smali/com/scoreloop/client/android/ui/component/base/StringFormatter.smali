.class public Lcom/scoreloop/client/android/ui/component/base/StringFormatter;
.super Ljava/lang/Object;
.source "StringFormatter.java"


# static fields
.field private static final ROUND_TO_PERCENT:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatChallengesScore(Lcom/scoreloop/client/android/core/model/Score;Lcom/scoreloop/client/android/ui/component/base/Configuration;)Ljava/lang/String;
    .locals 2
    .parameter "score"
    .parameter "configuration"

    .prologue
    .line 51
    invoke-virtual {p1}, Lcom/scoreloop/client/android/ui/component/base/Configuration;->getChallengesScoreFormat()Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;

    move-result-object v0

    .line 53
    .local v0, format:Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;
    if-nez v0, :cond_0

    .line 54
    invoke-static {p0}, Lcom/scoreloop/client/android/core/model/ScoreFormatter;->format(Lcom/scoreloop/client/android/core/model/Score;)Ljava/lang/String;

    move-result-object v1

    .line 57
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, v0}, Lcom/scoreloop/client/android/core/model/ScoreFormatter;->format(Lcom/scoreloop/client/android/core/model/Score;Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static formatDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .parameter "date"

    .prologue
    .line 61
    const/4 v0, 0x2

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatLeaderboardsScore(Lcom/scoreloop/client/android/core/model/Score;Lcom/scoreloop/client/android/ui/component/base/Configuration;)Ljava/lang/String;
    .locals 2
    .parameter "score"
    .parameter "configuration"

    .prologue
    .line 65
    invoke-virtual {p1}, Lcom/scoreloop/client/android/ui/component/base/Configuration;->getLeaderboardScoreFormat()Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;

    move-result-object v0

    .line 67
    .local v0, format:Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;
    if-nez v0, :cond_0

    .line 68
    invoke-static {p0}, Lcom/scoreloop/client/android/core/model/ScoreFormatter;->format(Lcom/scoreloop/client/android/core/model/Score;)Ljava/lang/String;

    move-result-object v1

    .line 71
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, v0}, Lcom/scoreloop/client/android/core/model/ScoreFormatter;->format(Lcom/scoreloop/client/android/core/model/Score;Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static formatMoney(Lcom/scoreloop/client/android/core/model/Money;Lcom/scoreloop/client/android/ui/component/base/Configuration;)Ljava/lang/String;
    .locals 1
    .parameter "money"
    .parameter "configuration"

    .prologue
    .line 75
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Money;->getCurrency()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 76
    :cond_0
    const-string v0, ""

    .line 79
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/scoreloop/client/android/core/model/MoneyFormatter;->format(Lcom/scoreloop/client/android/core/model/Money;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static formatPrice(Landroid/content/Context;Lcom/scoreloop/client/android/core/model/Price;Lcom/scoreloop/client/android/ui/component/base/Configuration;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "price"
    .parameter "configuration"

    .prologue
    .line 83
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Price;->isExternalPrice()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f080291

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, p2}, Lcom/scoreloop/client/android/ui/component/base/StringFormatter;->formatMoney(Lcom/scoreloop/client/android/core/model/Money;Lcom/scoreloop/client/android/ui/component/base/Configuration;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static formatPriceList(Landroid/content/Context;Ljava/util/List;Lcom/scoreloop/client/android/ui/component/base/Configuration;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter
    .parameter "configuration"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/model/Price;",
            ">;",
            "Lcom/scoreloop/client/android/ui/component/base/Configuration;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, priceList:Ljava/util/List;,"Ljava/util/List<Lcom/scoreloop/client/android/core/model/Price;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 89
    .local v2, isFirst:Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/scoreloop/client/android/core/model/Price;

    .line 90
    .local v3, price:Lcom/scoreloop/client/android/core/model/Price;
    if-nez v2, :cond_0

    .line 91
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    :cond_0
    invoke-static {p0, v3, p2}, Lcom/scoreloop/client/android/ui/component/base/StringFormatter;->formatPrice(Landroid/content/Context;Lcom/scoreloop/client/android/core/model/Price;Lcom/scoreloop/client/android/ui/component/base/Configuration;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const/4 v2, 0x0

    goto :goto_0

    .line 96
    .end local v3           #price:Lcom/scoreloop/client/android/core/model/Price;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static formatRanking(Landroid/content/Context;Lcom/scoreloop/client/android/core/model/Ranking;Lcom/scoreloop/client/android/ui/component/base/Configuration;)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "ranking"
    .parameter "configuration"

    .prologue
    .line 100
    if-nez p1, :cond_0

    .line 101
    const-string v3, ""

    .line 116
    :goto_0
    return-object v3

    .line 103
    :cond_0
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Ranking;->getTotal()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 104
    .local v2, total:I
    if-nez v2, :cond_1

    .line 105
    const-string v3, ""

    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Ranking;->getRank()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    div-int v0, v3, v2

    .line 108
    .local v0, percent:I
    const/4 v1, 0x0

    .line 109
    .local v1, roundedPercent:I
    if-nez v0, :cond_2

    .line 110
    const/4 v1, 0x1

    .line 116
    :goto_1
    const v3, 0x7f0802a3

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 111
    :cond_2
    const/16 v3, 0x64

    if-ne v0, v3, :cond_3

    .line 112
    const/16 v1, 0x64

    goto :goto_1

    .line 114
    :cond_3
    add-int/lit8 v3, v0, 0x1

    div-int/lit8 v3, v3, 0x1

    mul-int/lit8 v1, v3, 0x1

    goto :goto_1
.end method

.method public static formatSocialNetworkPostScore(Lcom/scoreloop/client/android/core/model/Score;Lcom/scoreloop/client/android/ui/component/base/Configuration;)Ljava/lang/String;
    .locals 2
    .parameter "score"
    .parameter "configuration"

    .prologue
    .line 120
    invoke-virtual {p1}, Lcom/scoreloop/client/android/ui/component/base/Configuration;->getSocialNetworkPostScoreFormat()Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;

    move-result-object v0

    .line 122
    .local v0, format:Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;
    if-nez v0, :cond_0

    .line 123
    invoke-static {p0}, Lcom/scoreloop/client/android/core/model/ScoreFormatter;->format(Lcom/scoreloop/client/android/core/model/Score;)Ljava/lang/String;

    move-result-object v1

    .line 126
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, v0}, Lcom/scoreloop/client/android/core/model/ScoreFormatter;->format(Lcom/scoreloop/client/android/core/model/Score;Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getAchievementIncrementTitle(Landroid/content/Context;Lcom/scoreloop/client/android/core/model/Achievement;Lcom/scoreloop/client/android/ui/component/base/Configuration;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "achievement"
    .parameter "configuration"

    .prologue
    const/4 v4, 0x1

    .line 131
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Achievement;->getAward()Lcom/scoreloop/client/android/core/model/Award;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Award;->getCounterRange()Lcom/scoreloop/client/android/core/model/Range;

    move-result-object v1

    .line 132
    .local v1, range:Lcom/scoreloop/client/android/core/model/Range;
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Range;->getLength()I

    move-result v2

    if-le v2, v4, :cond_0

    .line 133
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Achievement;->getValue()I

    move-result v2

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Range;->getLocation()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x64

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Range;->getLength()I

    move-result v3

    div-int v0, v2, v3

    .line 134
    .local v0, percent:I
    const v2, 0x7f080296

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 136
    .end local v0           #percent:I
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method public static getAchievementRewardTitle(Landroid/content/Context;Lcom/scoreloop/client/android/core/model/Achievement;Lcom/scoreloop/client/android/ui/component/base/Configuration;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "achievement"
    .parameter "configuration"

    .prologue
    .line 140
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Achievement;->getAward()Lcom/scoreloop/client/android/core/model/Award;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Award;->getRewardMoney()Lcom/scoreloop/client/android/core/model/Money;

    move-result-object v0

    .line 141
    .local v0, reward:Lcom/scoreloop/client/android/core/model/Money;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Money;->hasAmount()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    invoke-static {v0, p2}, Lcom/scoreloop/client/android/ui/component/base/StringFormatter;->formatMoney(Lcom/scoreloop/client/android/core/model/Money;Lcom/scoreloop/client/android/ui/component/base/Configuration;)Ljava/lang/String;

    move-result-object v1

    .line 144
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static getAchievementsSubTitle(Landroid/content/Context;Lcom/scoreloop/client/android/ui/framework/ValueStore;Z)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "userValues"
    .parameter "extendedText"

    .prologue
    .line 148
    const-string v3, "numberAchievements"

    invoke-virtual {p1, v3}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 149
    .local v0, numAchieved:Ljava/lang/Integer;
    const-string v3, "numberAwards"

    invoke-virtual {p1, v3}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 150
    .local v1, numTotal:Ljava/lang/Integer;
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 151
    if-eqz p2, :cond_0

    const v2, 0x7f080298

    .line 152
    .local v2, resId:I
    :goto_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 154
    .end local v2           #resId:I
    :goto_1
    return-object v3

    .line 151
    :cond_0
    const v2, 0x7f080297

    goto :goto_0

    .line 154
    :cond_1
    const-string v3, ""

    goto :goto_1
.end method

.method public static getBalanceSubTitle(Landroid/content/Context;Lcom/scoreloop/client/android/ui/framework/ValueStore;Lcom/scoreloop/client/android/ui/component/base/Configuration;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "userValues"
    .parameter "configuration"

    .prologue
    .line 158
    const-string v1, "userBalance"

    invoke-virtual {p1, v1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/Money;

    .line 159
    .local v0, balance:Lcom/scoreloop/client/android/core/model/Money;
    if-eqz v0, :cond_0

    .line 160
    const v1, 0x7f08029a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0, p2}, Lcom/scoreloop/client/android/ui/component/base/StringFormatter;->formatMoney(Lcom/scoreloop/client/android/core/model/Money;Lcom/scoreloop/client/android/ui/component/base/Configuration;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 162
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static getBuddiesSubTitle(Landroid/content/Context;Lcom/scoreloop/client/android/ui/framework/ValueStore;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "userValues"

    .prologue
    .line 166
    const-string v1, "numberBuddies"

    invoke-virtual {p1, v1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 167
    .local v0, count:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 168
    const v1, 0x7f0802a5

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 170
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static getChallengesSubTitle(Landroid/content/Context;Lcom/scoreloop/client/android/ui/framework/ValueStore;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "userValues"

    .prologue
    .line 174
    const-string v2, "numberChallengesWon"

    invoke-virtual {p1, v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 175
    .local v1, numWon:Ljava/lang/Integer;
    const-string v2, "numberChallengesPlayed"

    invoke-virtual {p1, v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 176
    .local v0, numTotal:Ljava/lang/Integer;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 177
    const v2, 0x7f08029b

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 179
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method public static getGamesSubTitle(Landroid/content/Context;Lcom/scoreloop/client/android/ui/framework/ValueStore;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "userValues"

    .prologue
    .line 183
    const-string v1, "numberGames"

    invoke-virtual {p1, v1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 184
    .local v0, count:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 185
    const v1, 0x7f0802a6

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 187
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static getNewsDrawable(Landroid/content/Context;Lcom/scoreloop/client/android/ui/framework/ValueStore;Z)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "context"
    .parameter "userValues"
    .parameter "large"

    .prologue
    .line 191
    const-string v3, "newsFeed"

    invoke-virtual {p1, v3}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 192
    .local v1, feed:Ljava/util/List;,"Ljava/util/List<Lcom/scoreloop/client/android/core/addon/RSSItem;>;"
    const-string v3, "newsNumberUnreadItems"

    invoke-virtual {p1, v3}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 193
    .local v0, count:Ljava/lang/Integer;
    const/4 v2, 0x0

    .line 194
    .local v2, id:I
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_2

    .line 195
    :cond_0
    if-eqz p2, :cond_1

    const v2, 0x7f02003d

    .line 199
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    return-object v3

    .line 195
    :cond_1
    const v2, 0x7f02005a

    goto :goto_0

    .line 197
    :cond_2
    if-eqz p2, :cond_3

    const v2, 0x7f02003e

    :goto_1
    goto :goto_0

    :cond_3
    const v2, 0x7f02005b

    goto :goto_1
.end method

.method public static getNewsSubTitle(Landroid/content/Context;Lcom/scoreloop/client/android/ui/framework/ValueStore;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "userValues"

    .prologue
    const/4 v3, 0x1

    .line 203
    const-string v2, "newsNumberUnreadItems"

    invoke-virtual {p1, v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 204
    .local v0, count:Ljava/lang/Integer;
    if-eqz v0, :cond_4

    .line 205
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_2

    .line 206
    const-string v2, "newsFeed"

    invoke-virtual {p1, v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 207
    .local v1, feed:Ljava/util/List;,"Ljava/util/List<Lcom/scoreloop/client/android/core/addon/RSSItem;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 208
    :cond_0
    const v2, 0x7f0802e6

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 217
    .end local v1           #feed:Ljava/util/List;,"Ljava/util/List<Lcom/scoreloop/client/android/core/addon/RSSItem;>;"
    :goto_0
    return-object v2

    .line 210
    .restart local v1       #feed:Ljava/util/List;,"Ljava/util/List<Lcom/scoreloop/client/android/core/addon/RSSItem;>;"
    :cond_1
    const v2, 0x7f0802e7

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 211
    .end local v1           #feed:Ljava/util/List;,"Ljava/util/List<Lcom/scoreloop/client/android/core/addon/RSSItem;>;"
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_3

    .line 212
    const v2, 0x7f0802ed

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 214
    :cond_3
    const v2, 0x7f0802a4

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 217
    :cond_4
    const-string v2, ""

    goto :goto_0
.end method

.method public static getScoreTitle(Landroid/content/Context;Lcom/scoreloop/client/android/core/model/Score;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "score"

    .prologue
    .line 221
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Score;->getRank()Ljava/lang/Integer;

    move-result-object v0

    .line 222
    .local v0, rank:Ljava/lang/Integer;
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Score;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v1

    .line 223
    .local v1, user:Lcom/scoreloop/client/android/core/model/User;
    if-nez v1, :cond_0

    .line 225
    invoke-static {}, Lcom/scoreloop/client/android/core/model/Session;->getCurrentSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Session;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v1

    .line 227
    :cond_0
    const v2, 0x7f0802ae

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/User;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
