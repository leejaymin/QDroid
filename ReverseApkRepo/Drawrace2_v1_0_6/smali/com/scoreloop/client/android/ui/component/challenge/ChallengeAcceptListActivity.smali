.class public Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;
.super Lcom/scoreloop/client/android/ui/component/challenge/ChallengeActionListActivity;
.source "ChallengeAcceptListActivity.java"

# interfaces
.implements Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;
.implements Lcom/scoreloop/client/android/ui/framework/BaseDialog$OnActionListener;
.implements Lcom/scoreloop/client/android/ui/component/challenge/ChallengeControlsListItem$OnControlObserver;


# instance fields
.field private _challenge:Lcom/scoreloop/client/android/core/model/Challenge;

.field private _challengeParticipantsListItem:Lcom/scoreloop/client/android/ui/component/challenge/ChallengeParticipantsListItem;

.field private _isNavigationAllowed:Z

.field private _navigationDialog:Lcom/scoreloop/client/android/ui/framework/OkCancelDialog;

.field private _navigationDialogContinuation:Ljava/lang/Runnable;

.field private _navigationIntent:Lcom/scoreloop/client/android/ui/framework/NavigationIntent;

.field private _opponentValueStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeActionListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->startChallenge()V

    return-void
.end method

.method static synthetic access$100(Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->displayPrevious()V

    return-void
.end method

.method private doAfterNavigationDialog(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "continuation"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->_navigationDialog:Lcom/scoreloop/client/android/ui/framework/OkCancelDialog;

    if-nez v0, :cond_0

    .line 130
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_0
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->_navigationDialogContinuation:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method private onNavigationDialogFinished()V
    .locals 2

    .prologue
    .line 259
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->_navigationDialogContinuation:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 260
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->_navigationDialogContinuation:Ljava/lang/Runnable;

    .line 261
    .local v0, continuation:Ljava/lang/Runnable;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->_navigationDialogContinuation:Ljava/lang/Runnable;

    .line 262
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 264
    .end local v0           #continuation:Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method private startChallenge()V
    .locals 3

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->finishDisplay()V

    .line 305
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->getManager()Lcom/scoreloop/client/android/ui/component/base/Manager;

    move-result-object v0

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->_challenge:Lcom/scoreloop/client/android/core/model/Challenge;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Challenge;->getMode()Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->_challenge:Lcom/scoreloop/client/android/core/model/Challenge;

    invoke-interface {v0, v1, v2}, Lcom/scoreloop/client/android/ui/component/base/Manager;->startGamePlay(Ljava/lang/Integer;Lcom/scoreloop/client/android/core/model/Challenge;)V

    .line 306
    return-void
.end method


# virtual methods
.method getCaptionListItem()Lcom/scoreloop/client/android/ui/component/base/CaptionListItem;
    .locals 3

    .prologue
    .line 138
    new-instance v0, Lcom/scoreloop/client/android/ui/component/base/CaptionListItem;

    const/4 v1, 0x0

    const v2, 0x7f080267

    invoke-virtual {p0, v2}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/scoreloop/client/android/ui/component/base/CaptionListItem;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-object v0
.end method

.method getChallengeControlsListItem()Lcom/scoreloop/client/android/ui/component/challenge/ChallengeControlsListItem;
    .locals 2

    .prologue
    .line 143
    new-instance v0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeControlsListItem;

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->_challenge:Lcom/scoreloop/client/android/core/model/Challenge;

    invoke-direct {v0, p0, v1, p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeControlsListItem;-><init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Lcom/scoreloop/client/android/core/model/Challenge;Lcom/scoreloop/client/android/ui/component/challenge/ChallengeControlsListItem$OnControlObserver;)V

    return-object v0
.end method

.method getChallengeParticipantsListItem()Lcom/scoreloop/client/android/ui/component/challenge/ChallengeParticipantsListItem;
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->_challengeParticipantsListItem:Lcom/scoreloop/client/android/ui/component/challenge/ChallengeParticipantsListItem;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeParticipantsListItem;

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->_challenge:Lcom/scoreloop/client/android/core/model/Challenge;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Challenge;->getContender()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v1

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeParticipantsListItem;-><init>(Landroid/content/Context;Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/model/User;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->_challengeParticipantsListItem:Lcom/scoreloop/client/android/ui/component/challenge/ChallengeParticipantsListItem;

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->_challengeParticipantsListItem:Lcom/scoreloop/client/android/ui/component/challenge/ChallengeParticipantsListItem;

    return-object v0
.end method

.method getChallengeStakeAndModeListItem()Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsListItem;
    .locals 2

    .prologue
    .line 156
    new-instance v0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsListItem;

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->_challenge:Lcom/scoreloop/client/android/core/model/Challenge;

    invoke-direct {v0, p0, v1}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsListItem;-><init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Lcom/scoreloop/client/android/core/model/Challenge;)V

    return-object v0
.end method

.method protected isNavigationAllowed(Lcom/scoreloop/client/android/ui/framework/NavigationIntent;)Z
    .locals 2
    .parameter "navigationIntent"

    .prologue
    const/4 v0, 0x1

    .line 174
    iget-boolean v1, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->_isNavigationAllowed:Z

    if-nez v1, :cond_0

    .line 175
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->_navigationIntent:Lcom/scoreloop/client/android/ui/framework/NavigationIntent;

    .line 176
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->showDialogSafe(IZ)V

    .line 177
    const/4 v0, 0x0

    .line 179
    :cond_0
    return v0
.end method

.method public onAction(Lcom/scoreloop/client/android/ui/framework/BaseDialog;I)V
    .locals 1
    .parameter "dialog"
    .parameter "action"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->_navigationDialog:Lcom/scoreloop/client/android/ui/framework/OkCancelDialog;

    if-ne p1, v0, :cond_1

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->_navigationDialog:Lcom/scoreloop/client/android/ui/framework/OkCancelDialog;

    .line 186
    if-nez p2, :cond_0

    .line 187
    invoke-virtual {p1}, Lcom/scoreloop/client/android/ui/framework/BaseDialog;->dismiss()V

    .line 188
    invoke-virtual {p1}, Lcom/scoreloop/client/android/ui/framework/BaseDialog;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/ui/framework/NavigationIntent;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/framework/NavigationIntent;->execute()V

    .line 202
    :goto_0
    return-void

    .line 190
    :cond_0
    invoke-virtual {p1}, Lcom/scoreloop/client/android/ui/framework/BaseDialog;->dismiss()V

    .line 191
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->onNavigationDialogFinished()V

    goto :goto_0

    .line 194
    :cond_1
    invoke-virtual {p1}, Lcom/scoreloop/client/android/ui/framework/BaseDialog;->dismiss()V

    .line 195
    new-instance v0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity$2;

    invoke-direct {v0, p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity$2;-><init>(Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;)V

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->doAfterNavigationDialog(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onControl1()V
    .locals 3

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->challengeGamePlayAllowed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->_isNavigationAllowed:Z

    .line 208
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->_challenge:Lcom/scoreloop/client/android/core/model/Challenge;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/core/model/Challenge;->setContestant(Lcom/scoreloop/client/android/core/model/User;)V

    .line 209
    new-instance v0, Lcom/scoreloop/client/android/core/controller/ChallengeController;

    invoke-direct {v0, p0}, Lcom/scoreloop/client/android/core/controller/ChallengeController;-><init>(Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    .line 210
    .local v0, challengeController:Lcom/scoreloop/client/android/core/controller/ChallengeController;
    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->showSpinnerFor(Ljava/lang/Object;)V

    .line 211
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->_challenge:Lcom/scoreloop/client/android/core/model/Challenge;

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/controller/ChallengeController;->setChallenge(Lcom/scoreloop/client/android/core/model/Challenge;)V

    .line 212
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/ChallengeController;->acceptChallenge()V

    .line 214
    .end local v0           #challengeController:Lcom/scoreloop/client/android/core/controller/ChallengeController;
    :cond_0
    return-void
.end method

.method public onControl2()V
    .locals 3

    .prologue
    .line 218
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->_challenge:Lcom/scoreloop/client/android/core/model/Challenge;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/core/model/Challenge;->setContestant(Lcom/scoreloop/client/android/core/model/User;)V

    .line 219
    new-instance v0, Lcom/scoreloop/client/android/core/controller/ChallengeController;

    invoke-direct {v0, p0}, Lcom/scoreloop/client/android/core/controller/ChallengeController;-><init>(Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    .line 220
    .local v0, challengeController:Lcom/scoreloop/client/android/core/controller/ChallengeController;
    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->showSpinnerFor(Ljava/lang/Object;)V

    .line 221
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->_challenge:Lcom/scoreloop/client/android/core/model/Challenge;

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/controller/ChallengeController;->setChallenge(Lcom/scoreloop/client/android/core/model/Challenge;)V

    .line 222
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/ChallengeController;->rejectChallenge()V

    .line 223
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 228
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->getActivityArguments()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v1

    const-string v2, "navigationIntent"

    iget-object v3, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->_navigationIntent:Lcom/scoreloop/client/android/ui/framework/NavigationIntent;

    invoke-virtual {v1, v2, v3}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scoreloop/client/android/ui/framework/NavigationIntent;

    iput-object v1, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->_navigationIntent:Lcom/scoreloop/client/android/ui/framework/NavigationIntent;

    .line 229
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->getActivityArguments()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v1

    const-string v2, "navigationDialogContinuation"

    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    iput-object v1, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->_navigationDialogContinuation:Ljava/lang/Runnable;

    .line 230
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->getActivityArguments()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v1

    const-string v2, "navigationAllowed"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 231
    .local v0, navigationAllowed:Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->_isNavigationAllowed:Z

    .line 235
    :cond_0
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeActionListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 237
    new-array v1, v5, [Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "userValues"

    aput-object v3, v2, v4

    const-string v3, "numberChallengesWon"

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->concatenateKeys([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->addObservedKeys([Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->getActivityArguments()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v1

    const-string v2, "challenge"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scoreloop/client/android/core/model/Challenge;

    iput-object v1, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->_challenge:Lcom/scoreloop/client/android/core/model/Challenge;

    .line 241
    new-instance v1, Lcom/scoreloop/client/android/ui/framework/ValueStore;

    invoke-direct {v1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;-><init>()V

    iput-object v1, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->_opponentValueStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    .line 242
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->_opponentValueStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    const-string v2, "user"

    iget-object v3, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->_challenge:Lcom/scoreloop/client/android/core/model/Challenge;

    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/model/Challenge;->getContender()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 243
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->_opponentValueStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    const-string v2, "numberChallengesWon"

    invoke-virtual {v1, v2, p0}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->addObserver(Ljava/lang/String;Lcom/scoreloop/client/android/ui/framework/ValueStore$Observer;)V

    .line 244
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->_opponentValueStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    new-array v2, v5, [Lcom/scoreloop/client/android/ui/framework/ValueStore$ValueSource;

    new-instance v3, Lcom/scoreloop/client/android/ui/component/agent/UserDetailsAgent;

    invoke-direct {v3, p0}, Lcom/scoreloop/client/android/ui/component/agent/UserDetailsAgent;-><init>(Lcom/scoreloop/client/android/ui/component/agent/BaseAgent$Delegate;)V

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->addValueSources([Lcom/scoreloop/client/android/ui/framework/ValueStore$ValueSource;)V

    .line 245
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->setNeedsRefresh()V

    .line 247
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->initAdapter()V

    .line 248
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter "id"

    .prologue
    .line 58
    packed-switch p1, :pswitch_data_0

    .line 84
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeActionListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 60
    :pswitch_0
    new-instance v0, Lcom/scoreloop/client/android/ui/framework/TextButtonDialog;

    invoke-direct {v0, p0}, Lcom/scoreloop/client/android/ui/framework/TextButtonDialog;-><init>(Landroid/content/Context;)V

    .line 61
    .local v0, dialogAccept:Lcom/scoreloop/client/android/ui/framework/TextButtonDialog;
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080286

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/scoreloop/client/android/ui/framework/TextButtonDialog;->setText(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0, p0}, Lcom/scoreloop/client/android/ui/framework/TextButtonDialog;->setOnActionListener(Lcom/scoreloop/client/android/ui/framework/BaseDialog$OnActionListener;)V

    .line 63
    invoke-virtual {v0, p0}, Lcom/scoreloop/client/android/ui/framework/TextButtonDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 66
    .end local v0           #dialogAccept:Lcom/scoreloop/client/android/ui/framework/TextButtonDialog;
    :pswitch_1
    new-instance v2, Lcom/scoreloop/client/android/ui/framework/TextButtonDialog;

    invoke-direct {v2, p0}, Lcom/scoreloop/client/android/ui/framework/TextButtonDialog;-><init>(Landroid/content/Context;)V

    .line 67
    .local v2, dialogReject:Lcom/scoreloop/client/android/ui/framework/TextButtonDialog;
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080289

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/scoreloop/client/android/ui/framework/TextButtonDialog;->setText(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v2, p0}, Lcom/scoreloop/client/android/ui/framework/TextButtonDialog;->setOnActionListener(Lcom/scoreloop/client/android/ui/framework/BaseDialog$OnActionListener;)V

    .line 69
    invoke-virtual {v2, p0}, Lcom/scoreloop/client/android/ui/framework/TextButtonDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object v0, v2

    .line 70
    goto :goto_0

    .line 72
    .end local v2           #dialogReject:Lcom/scoreloop/client/android/ui/framework/TextButtonDialog;
    :pswitch_2
    new-instance v1, Lcom/scoreloop/client/android/ui/framework/TextButtonDialog;

    invoke-direct {v1, p0}, Lcom/scoreloop/client/android/ui/framework/TextButtonDialog;-><init>(Landroid/content/Context;)V

    .line 73
    .local v1, dialogBalance:Lcom/scoreloop/client/android/ui/framework/TextButtonDialog;
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080287

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/scoreloop/client/android/ui/framework/TextButtonDialog;->setText(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v1, p0}, Lcom/scoreloop/client/android/ui/framework/TextButtonDialog;->setOnActionListener(Lcom/scoreloop/client/android/ui/framework/BaseDialog$OnActionListener;)V

    .line 75
    invoke-virtual {v1, p0}, Lcom/scoreloop/client/android/ui/framework/TextButtonDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object v0, v1

    .line 76
    goto :goto_0

    .line 78
    .end local v1           #dialogBalance:Lcom/scoreloop/client/android/ui/framework/TextButtonDialog;
    :pswitch_3
    new-instance v3, Lcom/scoreloop/client/android/ui/framework/OkCancelDialog;

    invoke-direct {v3, p0}, Lcom/scoreloop/client/android/ui/framework/OkCancelDialog;-><init>(Landroid/content/Context;)V

    .line 79
    .local v3, navigationDialog:Lcom/scoreloop/client/android/ui/framework/OkCancelDialog;
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0802cb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/scoreloop/client/android/ui/framework/OkCancelDialog;->setText(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v3, p0}, Lcom/scoreloop/client/android/ui/framework/OkCancelDialog;->setOnActionListener(Lcom/scoreloop/client/android/ui/framework/BaseDialog$OnActionListener;)V

    .line 81
    invoke-virtual {v3, p0}, Lcom/scoreloop/client/android/ui/framework/OkCancelDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object v0, v3

    .line 82
    goto :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 161
    packed-switch p1, :pswitch_data_0

    .line 169
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeActionListActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 170
    return-void

    :pswitch_0
    move-object v0, p2

    .line 163
    check-cast v0, Lcom/scoreloop/client/android/ui/framework/OkCancelDialog;

    .line 164
    .local v0, okCancelDialog:Lcom/scoreloop/client/android/ui/framework/OkCancelDialog;
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->_navigationIntent:Lcom/scoreloop/client/android/ui/framework/NavigationIntent;

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/framework/OkCancelDialog;->setTarget(Ljava/lang/Object;)V

    .line 165
    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->_navigationDialog:Lcom/scoreloop/client/android/ui/framework/OkCancelDialog;

    goto :goto_0

    .line 161
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onRefresh(I)V
    .locals 4
    .parameter "flags"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->_opponentValueStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    const-string v1, "numberChallengesWon"

    sget-object v2, Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;->NOT_DIRTY:Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->retrieveValue(Ljava/lang/String;Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;Ljava/lang/Object;)Z

    .line 269
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 273
    invoke-super {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeActionListActivity;->onResume()V

    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->_isNavigationAllowed:Z

    .line 276
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 252
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeActionListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 253
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->getActivityArguments()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v0

    const-string v1, "navigationIntent"

    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->_navigationIntent:Lcom/scoreloop/client/android/ui/framework/NavigationIntent;

    invoke-virtual {v0, v1, v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 254
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->getActivityArguments()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v0

    const-string v1, "navigationDialogContinuation"

    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->_navigationDialogContinuation:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 255
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->getActivityArguments()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v0

    const-string v1, "navigationAllowed"

    iget-boolean v2, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->_isNavigationAllowed:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 256
    return-void
.end method

.method public onValueChanged(Lcom/scoreloop/client/android/ui/framework/ValueStore;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .parameter "valueStore"
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->_opponentValueStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    if-ne p1, v0, :cond_1

    .line 281
    const-string v0, "numberChallengesWon"

    invoke-static {p2, v0, p3, p4}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->isValueChangedFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->getChallengeParticipantsListItem()Lcom/scoreloop/client/android/ui/component/challenge/ChallengeParticipantsListItem;

    move-result-object v0

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->_opponentValueStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    invoke-static {p0, v1}, Lcom/scoreloop/client/android/ui/component/base/StringFormatter;->getChallengesSubTitle(Landroid/content/Context;Lcom/scoreloop/client/android/ui/framework/ValueStore;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeParticipantsListItem;->setContenderStats(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->getBaseListAdapter()Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->notifyDataSetChanged()V

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    const-string v0, "numberChallengesWon"

    invoke-static {p2, v0, p3, p4}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->isValueChangedFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->getChallengeParticipantsListItem()Lcom/scoreloop/client/android/ui/component/challenge/ChallengeParticipantsListItem;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/scoreloop/client/android/ui/component/base/StringFormatter;->getChallengesSubTitle(Landroid/content/Context;Lcom/scoreloop/client/android/ui/framework/ValueStore;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeParticipantsListItem;->setContestantStats(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->getBaseListAdapter()Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;

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

    .line 296
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->_opponentValueStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    if-ne p1, v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->_opponentValueStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    const-string v1, "numberChallengesWon"

    sget-object v2, Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;->NOT_DIRTY:Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;

    invoke-virtual {v0, v1, v2, v3}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->retrieveValue(Ljava/lang/String;Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;Ljava/lang/Object;)Z

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    const-string v0, "numberChallengesWon"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->getUserValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v0

    sget-object v1, Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;->NOT_DIRTY:Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;

    invoke-virtual {v0, p2, v1, v3}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->retrieveValue(Ljava/lang/String;Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected requestControllerDidFailSafe(Lcom/scoreloop/client/android/core/controller/RequestController;Ljava/lang/Exception;)V
    .locals 3
    .parameter "aRequestController"
    .parameter "anException"

    .prologue
    const/4 v2, 0x1

    .line 90
    iput-boolean v2, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->_isNavigationAllowed:Z

    .line 91
    instance-of v1, p2, Lcom/scoreloop/client/android/core/controller/RequestControllerException;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 92
    check-cast v0, Lcom/scoreloop/client/android/core/controller/RequestControllerException;

    .line 93
    .local v0, exception:Lcom/scoreloop/client/android/core/controller/RequestControllerException;
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/RequestControllerException;->getErrorCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 107
    .end local v0           #exception:Lcom/scoreloop/client/android/core/controller/RequestControllerException;
    :cond_0
    invoke-virtual {p0, p2}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->showDialogForExceptionSafe(Ljava/lang/Exception;)V

    .line 108
    :goto_0
    return-void

    .line 95
    .restart local v0       #exception:Lcom/scoreloop/client/android/core/controller/RequestControllerException;
    :sswitch_0
    invoke-virtual {p0, v2, v2}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->showDialogSafe(IZ)V

    goto :goto_0

    .line 100
    :sswitch_1
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->showDialogSafe(IZ)V

    goto :goto_0

    .line 103
    :sswitch_2
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->showDialogSafe(IZ)V

    goto :goto_0

    .line 93
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x16 -> :sswitch_1
        0x18 -> :sswitch_0
        0x1b -> :sswitch_1
    .end sparse-switch
.end method

.method public requestControllerDidReceiveResponseSafe(Lcom/scoreloop/client/android/core/controller/RequestController;)V
    .locals 3
    .parameter "aRequestController"

    .prologue
    .line 112
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->_isNavigationAllowed:Z

    .line 113
    check-cast p1, Lcom/scoreloop/client/android/core/controller/ChallengeController;

    .end local p1
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/controller/ChallengeController;->getChallenge()Lcom/scoreloop/client/android/core/model/Challenge;

    move-result-object v0

    .line 114
    .local v0, challenge:Lcom/scoreloop/client/android/core/model/Challenge;
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Challenge;->isAccepted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    new-instance v1, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity$1;

    invoke-direct {v1, p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity$1;-><init>(Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;)V

    invoke-direct {p0, v1}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->doAfterNavigationDialog(Ljava/lang/Runnable;)V

    .line 126
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Challenge;->isRejected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->displayPrevious()V

    goto :goto_0

    .line 124
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "this should not happen - illegal state of the accepted/rejected challenge"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
