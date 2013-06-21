.class Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsListItem;
.super Lcom/scoreloop/client/android/ui/framework/BaseListItem;
.source "ChallengeSettingsListItem.java"


# instance fields
.field private final _challenge:Lcom/scoreloop/client/android/core/model/Challenge;


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Lcom/scoreloop/client/android/core/model/Challenge;)V
    .locals 1
    .parameter "context"
    .parameter "challenge"

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0, v0}, Lcom/scoreloop/client/android/ui/framework/BaseListItem;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 41
    iput-object p2, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsListItem;->_challenge:Lcom/scoreloop/client/android/core/model/Challenge;

    .line 42
    return-void
.end method


# virtual methods
.method protected getComponentActivity()Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 50
    const/16 v0, 0x9

    return v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "view"
    .parameter "parent"

    .prologue
    .line 55
    if-nez p1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsListItem;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030023

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 58
    :cond_0
    invoke-virtual {p0, p1}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsListItem;->prepareView(Landroid/view/View;)V

    .line 59
    return-object p1
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method protected prepareView(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/4 v6, 0x0

    .line 68
    const v2, 0x7f0c0065

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 69
    .local v1, stake:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsListItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0802af

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsListItem;->_challenge:Lcom/scoreloop/client/android/core/model/Challenge;

    invoke-virtual {v4}, Lcom/scoreloop/client/android/core/model/Challenge;->getStake()Lcom/scoreloop/client/android/core/model/Money;

    move-result-object v4

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsListItem;->getComponentActivity()Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->getConfiguration()Lcom/scoreloop/client/android/ui/component/base/Configuration;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/scoreloop/client/android/ui/component/base/StringFormatter;->formatMoney(Lcom/scoreloop/client/android/core/model/Money;Lcom/scoreloop/client/android/ui/component/base/Configuration;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    const v2, 0x7f0c0066

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 73
    .local v0, mode:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsListItem;->getComponentActivity()Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Game;->hasModes()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsListItem;->getComponentActivity()Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsListItem;->_challenge:Lcom/scoreloop/client/android/core/model/Challenge;

    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/model/Challenge;->getMode()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
