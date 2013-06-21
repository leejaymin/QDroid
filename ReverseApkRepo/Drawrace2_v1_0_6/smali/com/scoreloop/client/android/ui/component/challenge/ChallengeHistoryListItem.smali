.class public Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem;
.super Lcom/scoreloop/client/android/ui/framework/BaseListItem;
.source "ChallengeHistoryListItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem$ViewHolder;
    }
.end annotation


# instance fields
.field private final _challenge:Lcom/scoreloop/client/android/core/model/Challenge;

.field private _showPrize:Z


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Lcom/scoreloop/client/android/core/model/Challenge;Z)V
    .locals 1
    .parameter "componentActivity"
    .parameter "challenge"
    .parameter "showPrize"

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, v0, v0}, Lcom/scoreloop/client/android/ui/framework/BaseListItem;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 59
    iput-object p2, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem;->_challenge:Lcom/scoreloop/client/android/core/model/Challenge;

    .line 60
    iput-boolean p3, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem;->_showPrize:Z

    .line 61
    return-void
.end method

.method private fillView(Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem$ViewHolder;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "holder"
    .parameter "drawable"
    .parameter "contestantName"
    .parameter "contestantScore"
    .parameter "prize"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 99
    iget-object v0, p1, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem$ViewHolder;->icon:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    .end local p2
    :goto_0
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    iget-object v0, p1, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem$ViewHolder;->contenderName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem;->_challenge:Lcom/scoreloop/client/android/core/model/Challenge;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Challenge;->getContender()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/User;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p1, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem$ViewHolder;->contenderScore:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem;->_challenge:Lcom/scoreloop/client/android/core/model/Challenge;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Challenge;->getContenderScore()Lcom/scoreloop/client/android/core/model/Score;

    move-result-object v1

    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem;->getComponentActivity()Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->getConfiguration()Lcom/scoreloop/client/android/ui/component/base/Configuration;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/scoreloop/client/android/ui/component/base/StringFormatter;->formatChallengesScore(Lcom/scoreloop/client/android/core/model/Score;Lcom/scoreloop/client/android/ui/component/base/Configuration;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p1, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem$ViewHolder;->contestantName:Landroid/widget/TextView;

    if-eqz p3, :cond_1

    .end local p3
    :goto_1
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p1, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem$ViewHolder;->contestantScore:Landroid/widget/TextView;

    if-eqz p4, :cond_2

    .end local p4
    :goto_2
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p1, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem$ViewHolder;->prize:Landroid/widget/TextView;

    if-eqz p5, :cond_3

    .end local p5
    :goto_3
    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-boolean v0, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem;->_showPrize:Z

    if-eqz v0, :cond_4

    .line 110
    iget-object v0, p1, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem$ViewHolder;->prize:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    iget-object v0, p1, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem$ViewHolder;->scores:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 116
    :goto_4
    return-void

    .line 99
    .restart local p2
    .restart local p3
    .restart local p4
    .restart local p5
    :cond_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02004a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_0

    .line 103
    .end local p2
    :cond_1
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem;->_challenge:Lcom/scoreloop/client/android/core/model/Challenge;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Challenge;->getContestant()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/User;->getDisplayName()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .line 104
    .end local p3
    :cond_2
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0802f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    goto :goto_2

    .line 106
    .end local p4
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem;->_challenge:Lcom/scoreloop/client/android/core/model/Challenge;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Challenge;->getStake()Lcom/scoreloop/client/android/core/model/Money;

    move-result-object v2

    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem;->getComponentActivity()Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->getConfiguration()Lcom/scoreloop/client/android/ui/component/base/Configuration;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/scoreloop/client/android/ui/component/base/StringFormatter;->formatMoney(Lcom/scoreloop/client/android/core/model/Money;Lcom/scoreloop/client/android/ui/component/base/Configuration;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    goto :goto_3

    .line 113
    .end local p5
    :cond_4
    iget-object v0, p1, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem$ViewHolder;->prize:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    iget-object v0, p1, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem$ViewHolder;->scores:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_4
.end method

.method private getComponentActivity()Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;

    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x4

    return v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "view"
    .parameter "parent"

    .prologue
    .line 72
    if-nez p1, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030020

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 74
    new-instance v0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem$ViewHolder;

    invoke-direct {v0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem$ViewHolder;-><init>()V

    .line 75
    .local v0, holder:Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem$ViewHolder;
    const v1, 0x7f0c0039

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 76
    const v1, 0x7f0c0058

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem$ViewHolder;->contenderName:Landroid/widget/TextView;

    .line 77
    const v1, 0x7f0c005b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem$ViewHolder;->contenderScore:Landroid/widget/TextView;

    .line 78
    const v1, 0x7f0c0059

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem$ViewHolder;->contestantName:Landroid/widget/TextView;

    .line 79
    const v1, 0x7f0c005c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem$ViewHolder;->contestantScore:Landroid/widget/TextView;

    .line 80
    const v1, 0x7f0c005a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem$ViewHolder;->scores:Landroid/widget/LinearLayout;

    .line 81
    const v1, 0x7f0c005d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem$ViewHolder;->prize:Landroid/widget/TextView;

    .line 82
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 87
    :goto_0
    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem;->prepareView(Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem$ViewHolder;)V

    .line 89
    return-object p1

    .line 84
    .end local v0           #holder:Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem$ViewHolder;
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem$ViewHolder;

    .restart local v0       #holder:Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem$ViewHolder;
    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method protected prepareView(Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem$ViewHolder;)V
    .locals 12
    .parameter "holder"

    .prologue
    const v4, 0x7f0802f3

    const/4 v3, 0x0

    .line 123
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem;->_challenge:Lcom/scoreloop/client/android/core/model/Challenge;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Challenge;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    sget-object v10, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 126
    .local v10, prize:Ljava/math/BigDecimal;
    const-string v11, ""

    .line 127
    .local v11, sign:Ljava/lang/String;
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem;->_challenge:Lcom/scoreloop/client/android/core/model/Challenge;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Challenge;->getStake()Lcom/scoreloop/client/android/core/model/Money;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Money;->getAmount()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v10

    .line 129
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem;->getComponentActivity()Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->getSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem;->_challenge:Lcom/scoreloop/client/android/core/model/Challenge;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Challenge;->getWinner()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/model/Session;->isOwnedByUser(Lcom/scoreloop/client/android/core/model/User;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 131
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem;->_challenge:Lcom/scoreloop/client/android/core/model/Challenge;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Challenge;->getPrize()Lcom/scoreloop/client/android/core/model/Money;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Money;->getAmount()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v10

    .line 132
    const-string v11, "+"

    .line 137
    :goto_0
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem;->_challenge:Lcom/scoreloop/client/android/core/model/Challenge;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Challenge;->getContestantScore()Lcom/scoreloop/client/android/core/model/Score;

    move-result-object v0

    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem;->getComponentActivity()Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->getConfiguration()Lcom/scoreloop/client/android/ui/component/base/Configuration;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/scoreloop/client/android/ui/component/base/StringFormatter;->formatChallengesScore(Lcom/scoreloop/client/android/core/model/Score;Lcom/scoreloop/client/android/ui/component/base/Configuration;)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Lcom/scoreloop/client/android/core/model/Money;

    invoke-direct {v1, v10}, Lcom/scoreloop/client/android/core/model/Money;-><init>(Ljava/math/BigDecimal;)V

    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem;->getComponentActivity()Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->getConfiguration()Lcom/scoreloop/client/android/ui/component/base/Configuration;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/scoreloop/client/android/ui/component/base/StringFormatter;->formatMoney(Lcom/scoreloop/client/android/core/model/Money;Lcom/scoreloop/client/android/ui/component/base/Configuration;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem;->fillView(Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem$ViewHolder;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .end local v2           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v10           #prize:Ljava/math/BigDecimal;
    .end local v11           #sign:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 134
    .restart local v10       #prize:Ljava/math/BigDecimal;
    .restart local v11       #sign:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .restart local v2       #drawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 141
    .end local v2           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v10           #prize:Ljava/math/BigDecimal;
    .end local v11           #sign:Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem;->_challenge:Lcom/scoreloop/client/android/core/model/Challenge;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Challenge;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 142
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080275

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v4, p0

    move-object v5, p1

    move-object v6, v3

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem;->fillView(Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem$ViewHolder;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 145
    :cond_3
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem;->_challenge:Lcom/scoreloop/client/android/core/model/Challenge;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Challenge;->isAssigned()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 146
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v4, p0

    move-object v5, p1

    move-object v6, v3

    move-object v7, v3

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem;->fillView(Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem$ViewHolder;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 148
    :cond_4
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem;->_challenge:Lcom/scoreloop/client/android/core/model/Challenge;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Challenge;->isRejected()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 149
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080303

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lcom/scoreloop/client/android/core/model/Money;

    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Lcom/scoreloop/client/android/core/model/Money;-><init>(Ljava/math/BigDecimal;)V

    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem;->getComponentActivity()Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->getConfiguration()Lcom/scoreloop/client/android/ui/component/base/Configuration;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/scoreloop/client/android/ui/component/base/StringFormatter;->formatMoney(Lcom/scoreloop/client/android/core/model/Money;Lcom/scoreloop/client/android/ui/component/base/Configuration;)Ljava/lang/String;

    move-result-object v9

    move-object v4, p0

    move-object v5, p1

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v4 .. v9}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem;->fillView(Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem$ViewHolder;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 151
    :cond_5
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem;->_challenge:Lcom/scoreloop/client/android/core/model/Challenge;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Challenge;->isAccepted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v4, p0

    move-object v5, p1

    move-object v6, v3

    move-object v7, v3

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem;->fillView(Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem$ViewHolder;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method setShowPrize(Z)V
    .locals 0
    .parameter "showPrize"

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeHistoryListItem;->_showPrize:Z

    .line 158
    return-void
.end method
