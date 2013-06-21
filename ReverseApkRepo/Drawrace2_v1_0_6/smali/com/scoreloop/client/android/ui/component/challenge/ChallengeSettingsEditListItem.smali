.class Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem;
.super Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsListItem;
.source "ChallengeSettingsEditListItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem$ViewHolder;
    }
.end annotation


# instance fields
.field private _modePosition:I

.field private _stakePosition:I

.field private final stakes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/model/Money;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsListItem;-><init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Lcom/scoreloop/client/android/core/model/Challenge;)V

    .line 48
    invoke-static {}, Lcom/scoreloop/client/android/core/model/Session;->getCurrentSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->getChallengeStakes()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem;->stakes:Ljava/util/List;

    .line 55
    return-void
.end method

.method static synthetic access$002(Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem;->_modePosition:I

    return p1
.end method

.method static synthetic access$102(Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem;->_stakePosition:I

    return p1
.end method

.method static synthetic access$200(Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem;Landroid/widget/TextView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem;->updateStakeText(Landroid/widget/TextView;)V

    return-void
.end method

.method private prepareModeSelector(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 96
    const v2, 0x7f0c0069

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 97
    .local v1, modeSelector:Landroid/widget/Spinner;
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem;->getComponentActivity()Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Game;->hasModes()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 99
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f030037

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem;->getComponentActivity()Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->getConfiguration()Lcom/scoreloop/client/android/ui/component/base/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scoreloop/client/android/ui/component/base/Configuration;->getModesNames()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 101
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<*>;"
    const v2, 0x1090009

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 103
    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 104
    iget v2, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem;->_modePosition:I

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 105
    new-instance v2, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem$1;

    invoke-direct {v2, p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem$1;-><init>(Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 118
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<*>;"
    :goto_0
    return-void

    .line 116
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    goto :goto_0
.end method

.method private prepareStakeSelector(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 121
    const v2, 0x7f0c0068

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    .line 122
    .local v1, stakeSelector:Landroid/widget/SeekBar;
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem;->stakes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 123
    iget v2, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem;->_stakePosition:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 124
    new-instance v2, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem$2;

    invoke-direct {v2, p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem$2;-><init>(Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 140
    new-instance v0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem$ViewHolder;-><init>(Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem;Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem$1;)V

    .line 141
    .local v0, holder:Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem$ViewHolder;
    const v2, 0x7f0c0067

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem$ViewHolder;->stakeText:Landroid/widget/TextView;

    .line 142
    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    .line 143
    return-void
.end method

.method private prepareStakeText(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 146
    const v1, 0x7f0c0067

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 147
    .local v0, stakeText:Landroid/widget/TextView;
    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem;->updateStakeText(Landroid/widget/TextView;)V

    .line 148
    return-void
.end method

.method private updateStakeText(Landroid/widget/TextView;)V
    .locals 3
    .parameter "stakeText"

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem;->getStake()Lcom/scoreloop/client/android/core/model/Money;

    move-result-object v0

    .line 159
    .local v0, stake:Lcom/scoreloop/client/android/core/model/Money;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem;->getComponentActivity()Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->getConfiguration()Lcom/scoreloop/client/android/ui/component/base/Configuration;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/scoreloop/client/android/ui/component/base/StringFormatter;->formatMoney(Lcom/scoreloop/client/android/core/model/Money;Lcom/scoreloop/client/android/ui/component/base/Configuration;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    return-void

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080276

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method getMode()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem;->getComponentActivity()Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Game;->hasModes()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem;->getComponentActivity()Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;

    move-result-object v0

    iget v1, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem;->_modePosition:I

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->getModeForPosition(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 61
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getStake()Lcom/scoreloop/client/android/core/model/Money;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 66
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem;->getComponentActivity()Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->getUserValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v4

    const-string v5, "userBalance"

    invoke-virtual {v4, v5}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/Money;

    .line 67
    .local v0, balance:Lcom/scoreloop/client/android/core/model/Money;
    if-nez v0, :cond_0

    .line 73
    :goto_0
    return-object v3

    .line 71
    :cond_0
    iget-object v4, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem;->stakes:Ljava/util/List;

    iget v5, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem;->_stakePosition:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scoreloop/client/android/core/model/Money;

    .line 72
    .local v2, stake:Lcom/scoreloop/client/android/core/model/Money;
    invoke-virtual {v2, v0}, Lcom/scoreloop/client/android/core/model/Money;->compareTo(Lcom/scoreloop/client/android/core/model/Money;)I

    move-result v4

    if-gtz v4, :cond_1

    const/4 v1, 0x1

    .line 73
    .local v1, enoughBalance:Z
    :goto_1
    if-eqz v1, :cond_2

    .end local v2           #stake:Lcom/scoreloop/client/android/core/model/Money;
    :goto_2
    move-object v3, v2

    goto :goto_0

    .line 72
    .end local v1           #enoughBalance:Z
    .restart local v2       #stake:Lcom/scoreloop/client/android/core/model/Money;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .restart local v1       #enoughBalance:Z
    :cond_2
    move-object v2, v3

    .line 73
    goto :goto_2
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 78
    const/16 v0, 0x9

    return v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "view"
    .parameter "parent"

    .prologue
    .line 83
    if-nez p1, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030024

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 86
    :cond_0
    invoke-virtual {p0, p1}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem;->prepareView(Landroid/view/View;)V

    .line 87
    return-object p1
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method protected prepareView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem;->prepareStakeText(Landroid/view/View;)V

    .line 153
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem;->prepareModeSelector(Landroid/view/View;)V

    .line 154
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem;->prepareStakeSelector(Landroid/view/View;)V

    .line 155
    return-void
.end method
