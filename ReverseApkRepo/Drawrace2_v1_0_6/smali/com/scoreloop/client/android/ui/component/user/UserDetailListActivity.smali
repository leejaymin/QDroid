.class public Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;
.super Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;
.source "UserDetailListActivity.java"

# interfaces
.implements Lcom/scoreloop/client/android/ui/framework/BaseDialog$OnActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$1;,
        Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity",
        "<",
        "Lcom/scoreloop/client/android/ui/framework/BaseListItem;",
        ">;",
        "Lcom/scoreloop/client/android/ui/framework/BaseDialog$OnActionListener;"
    }
.end annotation


# instance fields
.field protected _achievementsListItem:Lcom/scoreloop/client/android/ui/component/user/UserDetailListItem;

.field protected _buddiesListItem:Lcom/scoreloop/client/android/ui/component/user/UserDetailListItem;

.field protected _challengesListItem:Lcom/scoreloop/client/android/ui/framework/BaseListItem;

.field protected _gameSectionDisplayOption:Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;

.field protected _gamesListItem:Lcom/scoreloop/client/android/ui/component/user/UserDetailListItem;

.field protected _recommendListItem:Lcom/scoreloop/client/android/ui/framework/BaseListItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;-><init>()V

    .line 58
    sget-object v0, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;->UNKNOWN:Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->_gameSectionDisplayOption:Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;

    return-void
.end method


# virtual methods
.method protected getAchievementsListItem()Lcom/scoreloop/client/android/ui/component/user/UserDetailListItem;
    .locals 5

    .prologue
    .line 63
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->_achievementsListItem:Lcom/scoreloop/client/android/ui/component/user/UserDetailListItem;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/scoreloop/client/android/ui/component/user/UserDetailListItem;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020043

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f08026b

    invoke-virtual {p0, v2}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->getUserValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/scoreloop/client/android/ui/component/base/StringFormatter;->getAchievementsSubTitle(Landroid/content/Context;Lcom/scoreloop/client/android/ui/framework/ValueStore;Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListItem;-><init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->_achievementsListItem:Lcom/scoreloop/client/android/ui/component/user/UserDetailListItem;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->_achievementsListItem:Lcom/scoreloop/client/android/ui/component/user/UserDetailListItem;

    return-object v0
.end method

.method protected getBuddiesListItem()Lcom/scoreloop/client/android/ui/component/user/UserDetailListItem;
    .locals 4

    .prologue
    .line 71
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->_buddiesListItem:Lcom/scoreloop/client/android/ui/component/user/UserDetailListItem;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/scoreloop/client/android/ui/component/user/UserDetailListItem;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020053

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0802be

    invoke-virtual {p0, v2}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->getUserValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/scoreloop/client/android/ui/component/base/StringFormatter;->getBuddiesSubTitle(Landroid/content/Context;Lcom/scoreloop/client/android/ui/framework/ValueStore;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListItem;-><init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->_buddiesListItem:Lcom/scoreloop/client/android/ui/component/user/UserDetailListItem;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->_buddiesListItem:Lcom/scoreloop/client/android/ui/component/user/UserDetailListItem;

    return-object v0
.end method

.method protected getChallengesListItem()Lcom/scoreloop/client/android/ui/framework/BaseListItem;
    .locals 7

    .prologue
    .line 79
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->_challengesListItem:Lcom/scoreloop/client/android/ui/framework/BaseListItem;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02004a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const v1, 0x7f08029c

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f08029d

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v6

    invoke-virtual {v6}, Lcom/scoreloop/client/android/core/model/User;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v1, v4}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;-><init>(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->_challengesListItem:Lcom/scoreloop/client/android/ui/framework/BaseListItem;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->_challengesListItem:Lcom/scoreloop/client/android/ui/framework/BaseListItem;

    return-object v0
.end method

.method protected getCommunityCaptionListItem()Lcom/scoreloop/client/android/ui/component/base/CaptionListItem;
    .locals 3

    .prologue
    .line 88
    new-instance v0, Lcom/scoreloop/client/android/ui/component/base/CaptionListItem;

    const/4 v1, 0x0

    const v2, 0x7f080280

    invoke-virtual {p0, v2}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/scoreloop/client/android/ui/component/base/CaptionListItem;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getGameCaptionListItem()Lcom/scoreloop/client/android/ui/component/base/CaptionListItem;
    .locals 3

    .prologue
    .line 92
    new-instance v0, Lcom/scoreloop/client/android/ui/component/base/CaptionListItem;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Game;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/scoreloop/client/android/ui/component/base/CaptionListItem;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getGamesListItem()Lcom/scoreloop/client/android/ui/component/user/UserDetailListItem;
    .locals 4

    .prologue
    .line 96
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->_gamesListItem:Lcom/scoreloop/client/android/ui/component/user/UserDetailListItem;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/scoreloop/client/android/ui/component/user/UserDetailListItem;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0802c2

    invoke-virtual {p0, v2}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->getUserValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/scoreloop/client/android/ui/component/base/StringFormatter;->getGamesSubTitle(Landroid/content/Context;Lcom/scoreloop/client/android/ui/framework/ValueStore;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListItem;-><init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->_gamesListItem:Lcom/scoreloop/client/android/ui/component/user/UserDetailListItem;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->_gamesListItem:Lcom/scoreloop/client/android/ui/component/user/UserDetailListItem;

    return-object v0
.end method

.method protected getRecommendListItem()Lcom/scoreloop/client/android/ui/framework/BaseListItem;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 104
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->_recommendListItem:Lcom/scoreloop/client/android/ui/framework/BaseListItem;

    if-nez v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v7

    .line 106
    .local v7, user:Lcom/scoreloop/client/android/core/model/User;
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v6

    .line 108
    .local v6, game:Lcom/scoreloop/client/android/core/model/Game;
    const v0, 0x7f0802ab

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/scoreloop/client/android/core/model/Game;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 109
    .local v3, title:Ljava/lang/String;
    const v0, 0x7f0802ac

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual {v7}, Lcom/scoreloop/client/android/core/model/User;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 111
    .local v4, subtitle:Ljava/lang/String;
    new-instance v0, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02005f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;-><init>(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->_recommendListItem:Lcom/scoreloop/client/android/ui/framework/BaseListItem;

    .line 114
    .end local v3           #title:Ljava/lang/String;
    .end local v4           #subtitle:Ljava/lang/String;
    .end local v6           #game:Lcom/scoreloop/client/android/core/model/Game;
    .end local v7           #user:Lcom/scoreloop/client/android/core/model/User;
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->_recommendListItem:Lcom/scoreloop/client/android/ui/framework/BaseListItem;

    return-object v0
.end method

.method public onAction(Lcom/scoreloop/client/android/ui/framework/BaseDialog;I)V
    .locals 0
    .parameter "dialog"
    .parameter "actionId"

    .prologue
    .line 182
    invoke-virtual {p1}, Lcom/scoreloop/client/android/ui/framework/BaseDialog;->dismiss()V

    .line 183
    if-nez p2, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->postRecommendation()V

    .line 186
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 119
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 121
    new-instance v0, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;

    invoke-direct {v0, p0}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 123
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "userValues"

    aput-object v2, v1, v3

    const-string v2, "numberBuddies"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->concatenateKeys([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "userValues"

    aput-object v2, v1, v3

    const-string v2, "numberGames"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->concatenateKeys([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "userValues"

    aput-object v2, v1, v3

    const-string v2, "numberAchievements"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->concatenateKeys([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->addObservedKeys([Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 155
    packed-switch p1, :pswitch_data_0

    .line 164
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 157
    :pswitch_0
    new-instance v0, Lcom/scoreloop/client/android/ui/framework/OkCancelDialog;

    invoke-direct {v0, p0}, Lcom/scoreloop/client/android/ui/framework/OkCancelDialog;-><init>(Landroid/content/Context;)V

    .line 158
    .local v0, dialog:Lcom/scoreloop/client/android/ui/framework/OkCancelDialog;
    invoke-virtual {v0, p0}, Lcom/scoreloop/client/android/ui/framework/OkCancelDialog;->setOnActionListener(Lcom/scoreloop/client/android/ui/framework/BaseDialog$OnActionListener;)V

    .line 159
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0802cd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/framework/OkCancelDialog;->setOkButtonText(Ljava/lang/String;)V

    .line 160
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/framework/OkCancelDialog;->setCancelable(Z)V

    .line 161
    invoke-virtual {v0, p0}, Lcom/scoreloop/client/android/ui/framework/OkCancelDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 155
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public onListItemClick(Lcom/scoreloop/client/android/ui/framework/BaseListItem;)V
    .locals 4
    .parameter "item"

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v1

    .line 138
    .local v1, user:Lcom/scoreloop/client/android/core/model/User;
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->getFactory()Lcom/scoreloop/client/android/ui/component/base/Factory;

    move-result-object v0

    .line 140
    .local v0, factory:Lcom/scoreloop/client/android/ui/component/base/Factory;
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->getRecommendListItem()Lcom/scoreloop/client/android/ui/framework/BaseListItem;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 141
    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->showDialogSafe(IZ)V

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->getAchievementsListItem()Lcom/scoreloop/client/android/ui/component/user/UserDetailListItem;

    move-result-object v2

    if-ne p1, v2, :cond_2

    .line 143
    invoke-interface {v0, v1}, Lcom/scoreloop/client/android/ui/component/base/Factory;->createAchievementScreenDescription(Lcom/scoreloop/client/android/core/model/User;)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->display(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)V

    goto :goto_0

    .line 144
    :cond_2
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->getChallengesListItem()Lcom/scoreloop/client/android/ui/framework/BaseListItem;

    move-result-object v2

    if-ne p1, v2, :cond_3

    .line 145
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/scoreloop/client/android/ui/component/base/Factory;->createChallengeCreateScreenDescription(Lcom/scoreloop/client/android/core/model/User;Ljava/lang/Integer;)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->display(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)V

    goto :goto_0

    .line 146
    :cond_3
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->getBuddiesListItem()Lcom/scoreloop/client/android/ui/component/user/UserDetailListItem;

    move-result-object v2

    if-ne p1, v2, :cond_4

    .line 147
    invoke-interface {v0, v1}, Lcom/scoreloop/client/android/ui/component/base/Factory;->createUserScreenDescription(Lcom/scoreloop/client/android/core/model/User;)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->display(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)V

    goto :goto_0

    .line 148
    :cond_4
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->getGamesListItem()Lcom/scoreloop/client/android/ui/component/user/UserDetailListItem;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 149
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/scoreloop/client/android/ui/component/base/Factory;->createGameScreenDescription(Lcom/scoreloop/client/android/core/model/User;I)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->display(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)V

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 6
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 169
    packed-switch p1, :pswitch_data_0

    .line 176
    invoke-super {p0, p1, p2}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 178
    .end local p2
    :goto_0
    return-void

    .line 171
    .restart local p2
    :pswitch_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0802cc

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v5

    invoke-virtual {v5}, Lcom/scoreloop/client/android/core/model/Game;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v5

    invoke-virtual {v5}, Lcom/scoreloop/client/android/core/model/User;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, msg:Ljava/lang/String;
    check-cast p2, Lcom/scoreloop/client/android/ui/framework/OkCancelDialog;

    .end local p2
    invoke-virtual {p2, v0}, Lcom/scoreloop/client/android/ui/framework/OkCancelDialog;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public onRefresh(I)V
    .locals 3
    .parameter "flags"

    .prologue
    .line 190
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->_gameSectionDisplayOption:Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;

    sget-object v2, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;->UNKNOWN:Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;

    if-ne v1, v2, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->isSessionGame()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 193
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->getActivityArguments()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v1

    const-string v2, "userPlaysSessionGame"

    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 194
    .local v0, userPlaysGame:Ljava/lang/Boolean;
    if-nez v0, :cond_1

    .line 195
    sget-object v1, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;->UNKNOWN:Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;

    iput-object v1, p0, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->_gameSectionDisplayOption:Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;

    .line 204
    .end local v0           #userPlaysGame:Ljava/lang/Boolean;
    :goto_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->updateList()V

    .line 206
    :cond_0
    return-void

    .line 196
    .restart local v0       #userPlaysGame:Ljava/lang/Boolean;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 197
    sget-object v1, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;->SHOW:Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;

    iput-object v1, p0, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->_gameSectionDisplayOption:Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;

    goto :goto_0

    .line 199
    :cond_2
    sget-object v1, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;->RECOMMEND:Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;

    iput-object v1, p0, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->_gameSectionDisplayOption:Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;

    goto :goto_0

    .line 202
    .end local v0           #userPlaysGame:Ljava/lang/Boolean;
    :cond_3
    sget-object v1, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;->HIDE:Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;

    iput-object v1, p0, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->_gameSectionDisplayOption:Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;

    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 130
    invoke-super {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;->onStart()V

    .line 132
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->setNeedsRefresh()V

    .line 133
    return-void
.end method

.method public onValueChanged(Lcom/scoreloop/client/android/ui/framework/ValueStore;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .parameter "valueStore"
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 210
    const-string v0, "numberBuddies"

    invoke-static {p2, v0, p3, p4}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->isValueChangedFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->getBuddiesListItem()Lcom/scoreloop/client/android/ui/component/user/UserDetailListItem;

    move-result-object v0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->getUserValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/scoreloop/client/android/ui/component/base/StringFormatter;->getBuddiesSubTitle(Landroid/content/Context;Lcom/scoreloop/client/android/ui/framework/ValueStore;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListItem;->setSubTitle(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->getBaseListAdapter()Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->notifyDataSetChanged()V

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    const-string v0, "numberGames"

    invoke-static {p2, v0, p3, p4}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->isValueChangedFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 214
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->getGamesListItem()Lcom/scoreloop/client/android/ui/component/user/UserDetailListItem;

    move-result-object v0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->getUserValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/scoreloop/client/android/ui/component/base/StringFormatter;->getGamesSubTitle(Landroid/content/Context;Lcom/scoreloop/client/android/ui/framework/ValueStore;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListItem;->setSubTitle(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->getBaseListAdapter()Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 216
    :cond_2
    const-string v0, "numberAchievements"

    invoke-static {p2, v0, p3, p4}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->isValueChangedFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->getAchievementsListItem()Lcom/scoreloop/client/android/ui/component/user/UserDetailListItem;

    move-result-object v0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->getUserValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/scoreloop/client/android/ui/component/base/StringFormatter;->getAchievementsSubTitle(Landroid/content/Context;Lcom/scoreloop/client/android/ui/framework/ValueStore;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListItem;->setSubTitle(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->getBaseListAdapter()Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;

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

    .line 224
    const-string v1, "numberBuddies"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->getUserValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v1

    sget-object v2, Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;->NOT_DIRTY:Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;

    invoke-virtual {v1, p2, v2, v3}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->retrieveValue(Ljava/lang/String;Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;Ljava/lang/Object;)Z

    .line 227
    :cond_0
    const-string v1, "numberGames"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 228
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->getUserValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v1

    sget-object v2, Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;->NOT_DIRTY:Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;

    invoke-virtual {v1, p2, v2, v3}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->retrieveValue(Ljava/lang/String;Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;Ljava/lang/Object;)Z

    .line 231
    :cond_1
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->getConfiguration()Lcom/scoreloop/client/android/ui/component/base/Configuration;

    move-result-object v0

    .line 232
    .local v0, configuration:Lcom/scoreloop/client/android/ui/component/base/Configuration;
    sget-object v1, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->ACHIEVEMENT:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/component/base/Configuration;->isFeatureEnabled(Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "numberAchievements"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 233
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->getUserValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v1

    sget-object v2, Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;->NOT_DIRTY:Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;

    invoke-virtual {v1, p2, v2, v3}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->retrieveValue(Ljava/lang/String;Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;Ljava/lang/Object;)Z

    .line 235
    :cond_2
    return-void
.end method

.method protected postRecommendation()V
    .locals 5

    .prologue
    .line 238
    new-instance v0, Lcom/scoreloop/client/android/core/controller/MessageController;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->getRequestControllerObserver()Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/scoreloop/client/android/core/controller/MessageController;-><init>(Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    .line 240
    .local v0, controller:Lcom/scoreloop/client/android/core/controller/MessageController;
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/controller/MessageController;->setTarget(Ljava/lang/Object;)V

    .line 241
    sget v1, Lcom/scoreloop/client/android/core/controller/MessageController;->TYPE_RECOMMENDATION:I

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/controller/MessageController;->setMessageType(I)V

    .line 242
    sget-object v1, Lcom/scoreloop/client/android/core/controller/MessageController;->RECEIVER_USER:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/scoreloop/client/android/core/controller/MessageController;->addReceiverWithUsers(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 244
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/MessageController;->isSubmitAllowed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->showSpinnerFor(Ljava/lang/Object;)V

    .line 246
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/MessageController;->submitMessage()V

    .line 248
    :cond_0
    return-void
.end method

.method public requestControllerDidReceiveResponseSafe(Lcom/scoreloop/client/android/core/controller/RequestController;)V
    .locals 1
    .parameter "aRequestController"

    .prologue
    .line 252
    const v0, 0x7f080300

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->showToast(Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method protected updateList()V
    .locals 6

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->getBaseListAdapter()Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;

    move-result-object v0

    .line 257
    .local v0, adapter:Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;,"Lcom/scoreloop/client/android/ui/framework/BaseListAdapter<Lcom/scoreloop/client/android/ui/framework/BaseListItem;>;"
    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->clear()V

    .line 259
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->getConfiguration()Lcom/scoreloop/client/android/ui/component/base/Configuration;

    move-result-object v1

    .line 261
    .local v1, configuration:Lcom/scoreloop/client/android/ui/component/base/Configuration;
    sget-object v4, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$1;->$SwitchMap$com$scoreloop$client$android$ui$component$user$UserDetailListActivity$GameSectionDisplayOption:[I

    iget-object v5, p0, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->_gameSectionDisplayOption:Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;

    invoke-virtual {v5}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 283
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->getCommunityCaptionListItem()Lcom/scoreloop/client/android/ui/component/base/CaptionListItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->add(Ljava/lang/Object;)V

    .line 284
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->getBuddiesListItem()Lcom/scoreloop/client/android/ui/component/user/UserDetailListItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->add(Ljava/lang/Object;)V

    .line 285
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->getGamesListItem()Lcom/scoreloop/client/android/ui/component/user/UserDetailListItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->add(Ljava/lang/Object;)V

    .line 286
    return-void

    .line 263
    :pswitch_0
    sget-object v4, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->ACHIEVEMENT:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    invoke-virtual {v1, v4}, Lcom/scoreloop/client/android/ui/component/base/Configuration;->isFeatureEnabled(Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;)Z

    move-result v2

    .line 264
    .local v2, showAchievements:Z
    sget-object v4, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->CHALLENGE:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    invoke-virtual {v1, v4}, Lcom/scoreloop/client/android/ui/component/base/Configuration;->isFeatureEnabled(Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;)Z

    move-result v3

    .line 266
    .local v3, showChallenges:Z
    if-nez v2, :cond_1

    if-eqz v3, :cond_0

    .line 267
    :cond_1
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->getGameCaptionListItem()Lcom/scoreloop/client/android/ui/component/base/CaptionListItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->add(Ljava/lang/Object;)V

    .line 268
    if-eqz v2, :cond_2

    .line 269
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->getAchievementsListItem()Lcom/scoreloop/client/android/ui/component/user/UserDetailListItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->add(Ljava/lang/Object;)V

    .line 271
    :cond_2
    if-eqz v3, :cond_0

    .line 272
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->getChallengesListItem()Lcom/scoreloop/client/android/ui/framework/BaseListItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 278
    .end local v2           #showAchievements:Z
    .end local v3           #showChallenges:Z
    :pswitch_1
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->getGameCaptionListItem()Lcom/scoreloop/client/android/ui/component/base/CaptionListItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->add(Ljava/lang/Object;)V

    .line 279
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;->getRecommendListItem()Lcom/scoreloop/client/android/ui/framework/BaseListItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 261
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
