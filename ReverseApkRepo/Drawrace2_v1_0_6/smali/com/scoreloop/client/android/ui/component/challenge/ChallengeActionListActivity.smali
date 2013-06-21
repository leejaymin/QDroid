.class public abstract Lcom/scoreloop/client/android/ui/component/challenge/ChallengeActionListActivity;
.super Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;
.source "ChallengeActionListActivity.java"

# interfaces
.implements Lcom/scoreloop/client/android/ui/framework/BaseDialog$OnActionListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity",
        "<",
        "Lcom/scoreloop/client/android/ui/framework/BaseListItem;",
        ">;",
        "Lcom/scoreloop/client/android/ui/framework/BaseDialog$OnActionListener;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected challengeGamePlayAllowed()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeActionListActivity;->getManager()Lcom/scoreloop/client/android/ui/component/base/Manager;

    move-result-object v1

    invoke-interface {v1}, Lcom/scoreloop/client/android/ui/component/base/Manager;->isChallengeOngoing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeActionListActivity;->showDialogSafe(I)V

    .line 81
    :goto_0
    return v0

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeActionListActivity;->getManager()Lcom/scoreloop/client/android/ui/component/base/Manager;

    move-result-object v1

    invoke-interface {v1}, Lcom/scoreloop/client/android/ui/component/base/Manager;->canStartGamePlay()Z

    move-result v1

    if-nez v1, :cond_1

    .line 78
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeActionListActivity;->showDialogSafe(I)V

    goto :goto_0

    .line 81
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method abstract getCaptionListItem()Lcom/scoreloop/client/android/ui/component/base/CaptionListItem;
.end method

.method abstract getChallengeControlsListItem()Lcom/scoreloop/client/android/ui/component/challenge/ChallengeControlsListItem;
.end method

.method abstract getChallengeParticipantsListItem()Lcom/scoreloop/client/android/ui/component/challenge/ChallengeParticipantsListItem;
.end method

.method abstract getChallengeStakeAndModeListItem()Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsListItem;
.end method

.method initAdapter()V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;

    invoke-direct {v0, p0}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;-><init>(Landroid/content/Context;)V

    .line 48
    .local v0, adapter:Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;,"Lcom/scoreloop/client/android/ui/framework/BaseListAdapter<Lcom/scoreloop/client/android/ui/framework/BaseListItem;>;"
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeActionListActivity;->getCaptionListItem()Lcom/scoreloop/client/android/ui/component/base/CaptionListItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->add(Ljava/lang/Object;)V

    .line 49
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeActionListActivity;->getChallengeParticipantsListItem()Lcom/scoreloop/client/android/ui/component/challenge/ChallengeParticipantsListItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->add(Ljava/lang/Object;)V

    .line 50
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeActionListActivity;->getChallengeStakeAndModeListItem()Lcom/scoreloop/client/android/ui/component/challenge/ChallengeSettingsListItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->add(Ljava/lang/Object;)V

    .line 51
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeActionListActivity;->getChallengeControlsListItem()Lcom/scoreloop/client/android/ui/component/challenge/ChallengeControlsListItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->add(Ljava/lang/Object;)V

    .line 52
    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeActionListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 53
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 57
    packed-switch p1, :pswitch_data_0

    .line 69
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    .line 59
    :pswitch_0
    new-instance v1, Lcom/scoreloop/client/android/ui/framework/TextButtonDialog;

    invoke-direct {v1, p0}, Lcom/scoreloop/client/android/ui/framework/TextButtonDialog;-><init>(Landroid/content/Context;)V

    .line 60
    .local v1, dialogOngoing:Lcom/scoreloop/client/android/ui/framework/TextButtonDialog;
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeActionListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08028a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/ui/framework/TextButtonDialog;->setText(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v1, p0}, Lcom/scoreloop/client/android/ui/framework/TextButtonDialog;->setOnActionListener(Lcom/scoreloop/client/android/ui/framework/BaseDialog$OnActionListener;)V

    goto :goto_0

    .line 64
    .end local v1           #dialogOngoing:Lcom/scoreloop/client/android/ui/framework/TextButtonDialog;
    :pswitch_1
    new-instance v0, Lcom/scoreloop/client/android/ui/framework/TextButtonDialog;

    invoke-direct {v0, p0}, Lcom/scoreloop/client/android/ui/framework/TextButtonDialog;-><init>(Landroid/content/Context;)V

    .line 65
    .local v0, dialogGameNotReady:Lcom/scoreloop/client/android/ui/framework/TextButtonDialog;
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeActionListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080288

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/scoreloop/client/android/ui/framework/TextButtonDialog;->setText(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0, p0}, Lcom/scoreloop/client/android/ui/framework/TextButtonDialog;->setOnActionListener(Lcom/scoreloop/client/android/ui/framework/BaseDialog$OnActionListener;)V

    move-object v1, v0

    .line 67
    goto :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
