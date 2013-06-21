.class public Lcom/scoreloop/client/android/ui/component/challenge/ChallengeCreateListActivity;
.super Lcom/scoreloop/client/android/ui/component/challenge/ChallengeActionListActivity;
.source "ChallengeCreateListActivity.java"

# interfaces
.implements Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;
.implements Lcom/scoreloop/client/android/ui/framework/BaseDialog$OnActionListener;
.implements Lcom/scoreloop/client/android/ui/component/challenge/ChallengeControlsListItem$OnControlObserver;


# instance fields
.field private _challengeControlsListItem:Lcom/scoreloop/client/android/ui/component/challenge/ChallengeControlsListItem;

.field private _challengeParticipantsListItem:Lcom/scoreloop/client/android/ui/component/challenge/ChallengeParticipantsListItem;

.field private _challengeStakeAndModeEditListItem:Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem;

.field private _contestant:Lcom/scoreloop/client/android/core/model/User;

.field private _opponentValueStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeActionListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method getCaptionListItem()Lcom/scoreloop/client/android/ui/component/base/CaptionListItem;
    .locals 3

    .prologue
    .line 51
    new-instance v0, Lcom/scoreloop/client/android/ui/component/base/CaptionListItem;

    const/4 v1, 0x0

    const v2, 0x7f0802dd

    invoke-virtual {p0, v2}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeCreateListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/scoreloop/client/android/ui/component/base/CaptionListItem;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-object v0
.end method

.method getChallengeControlsListItem()Lcom/scoreloop/client/android/ui/component/challenge/ChallengeControlsListItem;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeControlsListItem;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeControlsListItem;-><init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Lcom/scoreloop/client/android/core/model/Challenge;Lcom/scoreloop/client/android/ui/component/challenge/ChallengeControlsListItem$OnControlObserver;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeCreateListActivity;->_challengeControlsListItem:Lcom/scoreloop/client/android/ui/component/challenge/ChallengeControlsListItem;

    .line 57
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeCreateListActivity;->_challengeControlsListItem:Lcom/scoreloop/client/android/ui/component/challenge/ChallengeControlsListItem;

    return-object v0
.end method

.method getChallengeParticipantsListItem()Lcom/scoreloop/client/android/ui/component/challenge/ChallengeParticipantsListItem;
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeCreateListActivity;->_challengeParticipantsListItem:Lcom/scoreloop/client/android/ui/component/challenge/ChallengeParticipantsListItem;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeParticipantsListItem;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeCreateListActivity;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v1

    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeCreateListActivity;->_contestant:Lcom/scoreloop/client/android/core/model/User;

    invoke-direct {v0, p0, v1, v2}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeParticipantsListItem;-><init>(Landroid/content/Context;Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/model/User;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeCreateListActivity;->_challengeParticipantsListItem:Lcom/scoreloop/client/android/ui/component/challenge/ChallengeParticipantsListItem;

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeCreateListActivity;->_challengeParticipantsListItem:Lcom/scoreloop/client/android/ui/component/challenge/ChallengeParticipantsListItem;

    return-object v0
.end method

.method getChallengeStakeAndModeListItem()Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsListItem;
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem;

    invoke-direct {v0, p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem;-><init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeCreateListActivity;->_challengeStakeAndModeEditListItem:Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem;

    .line 71
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeCreateListActivity;->_challengeStakeAndModeEditListItem:Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem;

    return-object v0
.end method

.method public onAction(Lcom/scoreloop/client/android/ui/framework/BaseDialog;I)V
    .locals 0
    .parameter "dialog"
    .parameter "actionId"

    .prologue
    .line 76
    invoke-virtual {p1}, Lcom/scoreloop/client/android/ui/framework/BaseDialog;->dismiss()V

    .line 77
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeCreateListActivity;->displayPrevious()V

    .line 78
    return-void
.end method

.method public onControl1()V
    .locals 5

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeCreateListActivity;->challengeGamePlayAllowed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 83
    iget-object v3, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeCreateListActivity;->_challengeStakeAndModeEditListItem:Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem;

    invoke-virtual {v3}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem;->getStake()Lcom/scoreloop/client/android/core/model/Money;

    move-result-object v2

    .line 84
    .local v2, stake:Lcom/scoreloop/client/android/core/model/Money;
    if-eqz v2, :cond_1

    .line 85
    new-instance v0, Lcom/scoreloop/client/android/core/controller/ChallengeController;

    invoke-direct {v0, p0}, Lcom/scoreloop/client/android/core/controller/ChallengeController;-><init>(Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    .line 86
    .local v0, challengeController:Lcom/scoreloop/client/android/core/controller/ChallengeController;
    iget-object v3, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeCreateListActivity;->_contestant:Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {v0, v2, v3}, Lcom/scoreloop/client/android/core/controller/ChallengeController;->createChallenge(Lcom/scoreloop/client/android/core/model/Money;Lcom/scoreloop/client/android/core/model/User;)V

    .line 88
    iget-object v3, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeCreateListActivity;->_challengeStakeAndModeEditListItem:Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem;

    invoke-virtual {v3}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsEditListItem;->getMode()Ljava/lang/Integer;

    move-result-object v1

    .line 89
    .local v1, mode:Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/ChallengeController;->getChallenge()Lcom/scoreloop/client/android/core/model/Challenge;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/scoreloop/client/android/core/model/Challenge;->setMode(Ljava/lang/Integer;)V

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeCreateListActivity;->finishDisplay()V

    .line 94
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeCreateListActivity;->getManager()Lcom/scoreloop/client/android/ui/component/base/Manager;

    move-result-object v3

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/ChallengeController;->getChallenge()Lcom/scoreloop/client/android/core/model/Challenge;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lcom/scoreloop/client/android/ui/component/base/Manager;->startGamePlay(Ljava/lang/Integer;Lcom/scoreloop/client/android/core/model/Challenge;)V

    .line 97
    .end local v0           #challengeController:Lcom/scoreloop/client/android/core/controller/ChallengeController;
    .end local v1           #mode:Ljava/lang/Integer;
    .end local v2           #stake:Lcom/scoreloop/client/android/core/model/Money;
    :cond_1
    return-void
.end method

.method public onControl2()V
    .locals 2

    .prologue
    .line 101
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this should not happen - a button has been clicked that isn\'t there"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 106
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeActionListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    new-array v0, v4, [Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "userValues"

    aput-object v2, v1, v3

    const-string v2, "numberChallengesWon"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->concatenateKeys([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeCreateListActivity;->addObservedKeys([Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeCreateListActivity;->getActivityArguments()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v0

    const-string v1, "contestant"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/User;

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeCreateListActivity;->_contestant:Lcom/scoreloop/client/android/core/model/User;

    .line 112
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeCreateListActivity;->_contestant:Lcom/scoreloop/client/android/core/model/User;

    if-eqz v0, :cond_0

    .line 113
    new-instance v0, Lcom/scoreloop/client/android/ui/framework/ValueStore;

    invoke-direct {v0}, Lcom/scoreloop/client/android/ui/framework/ValueStore;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeCreateListActivity;->_opponentValueStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    .line 114
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeCreateListActivity;->_opponentValueStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    const-string v1, "user"

    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeCreateListActivity;->_contestant:Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {v0, v1, v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeCreateListActivity;->_opponentValueStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    const-string v1, "numberChallengesWon"

    invoke-virtual {v0, v1, p0}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->addObserver(Ljava/lang/String;Lcom/scoreloop/client/android/ui/framework/ValueStore$Observer;)V

    .line 116
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeCreateListActivity;->_opponentValueStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    new-array v1, v4, [Lcom/scoreloop/client/android/ui/framework/ValueStore$ValueSource;

    new-instance v2, Lcom/scoreloop/client/android/ui/component/agent/UserDetailsAgent;

    invoke-direct {v2, p0}, Lcom/scoreloop/client/android/ui/component/agent/UserDetailsAgent;-><init>(Lcom/scoreloop/client/android/ui/component/agent/BaseAgent$Delegate;)V

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->addValueSources([Lcom/scoreloop/client/android/ui/framework/ValueStore$ValueSource;)V

    .line 117
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeCreateListActivity;->setNeedsRefresh()V

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeCreateListActivity;->initAdapter()V

    .line 121
    return-void
.end method

.method public onRefresh(I)V
    .locals 4
    .parameter "flags"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeCreateListActivity;->_contestant:Lcom/scoreloop/client/android/core/model/User;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeCreateListActivity;->_opponentValueStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    const-string v1, "numberChallengesWon"

    sget-object v2, Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;->NOT_DIRTY:Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->retrieveValue(Ljava/lang/String;Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;Ljava/lang/Object;)Z

    .line 128
    :cond_0
    return-void
.end method

.method public onValueChanged(Lcom/scoreloop/client/android/ui/framework/ValueStore;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .parameter "valueStore"
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeCreateListActivity;->_opponentValueStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    if-ne p1, v0, :cond_1

    .line 133
    const-string v0, "numberChallengesWon"

    invoke-static {p2, v0, p3, p4}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeCreateListActivity;->isValueChangedFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeCreateListActivity;->getChallengeParticipantsListItem()Lcom/scoreloop/client/android/ui/component/challenge/ChallengeParticipantsListItem;

    move-result-object v0

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeCreateListActivity;->_opponentValueStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    invoke-static {p0, v1}, Lcom/scoreloop/client/android/ui/component/base/StringFormatter;->getChallengesSubTitle(Landroid/content/Context;Lcom/scoreloop/client/android/ui/framework/ValueStore;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeParticipantsListItem;->setContestantStats(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeCreateListActivity;->getBaseListAdapter()Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->notifyDataSetChanged()V

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    const-string v0, "numberChallengesWon"

    invoke-static {p2, v0, p3, p4}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeCreateListActivity;->isValueChangedFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeCreateListActivity;->getChallengeParticipantsListItem()Lcom/scoreloop/client/android/ui/component/challenge/ChallengeParticipantsListItem;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/scoreloop/client/android/ui/component/base/StringFormatter;->getChallengesSubTitle(Landroid/content/Context;Lcom/scoreloop/client/android/ui/framework/ValueStore;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeParticipantsListItem;->setContenderStats(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeCreateListActivity;->getBaseListAdapter()Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onValueSetDirty(Lcom/scoreloop/client/android/ui/framework/ValueStore;Ljava/lang/String;)V
    .locals 4
    .parameter "valueStore"
    .parameter "key"

    .prologue
    const/4 v3, 0x0

    .line 147
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeCreateListActivity;->_opponentValueStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    if-ne p1, v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeCreateListActivity;->_opponentValueStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    const-string v1, "numberChallengesWon"

    sget-object v2, Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;->NOT_DIRTY:Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;

    invoke-virtual {v0, v1, v2, v3}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->retrieveValue(Ljava/lang/String;Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;Ljava/lang/Object;)Z

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    const-string v0, "numberChallengesWon"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeCreateListActivity;->getUserValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v0

    sget-object v1, Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;->NOT_DIRTY:Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;

    invoke-virtual {v0, p2, v1, v3}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->retrieveValue(Ljava/lang/String;Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;Ljava/lang/Object;)Z

    goto :goto_0
.end method
