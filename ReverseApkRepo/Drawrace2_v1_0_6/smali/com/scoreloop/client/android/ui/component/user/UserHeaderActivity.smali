.class public Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;
.super Lcom/scoreloop/client/android/ui/component/base/ComponentHeaderActivity;
.source "UserHeaderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$3;,
        Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;
    }
.end annotation


# static fields
.field private static final MENU_FLAG_INAPPROPRIATE:I = 0x128

.field private static final MENU_REMOVE_BUDDY:I = 0x100


# instance fields
.field private _canRemoveBuddy:Z

.field private _messageController:Lcom/scoreloop/client/android/core/controller/MessageController;

.field private _mode:Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentHeaderActivity;-><init>()V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->isPaused()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->isPaused()Z

    move-result v0

    return v0
.end method

.method private disableAddRemoveBuddiesControl()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->hideControlIcon()Landroid/widget/ImageView;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->_canRemoveBuddy:Z

    .line 63
    return-void
.end method

.method private formatInteger(Lcom/scoreloop/client/android/ui/framework/ValueStore;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "store"
    .parameter "key"

    .prologue
    .line 66
    invoke-virtual {p1, p2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 67
    .local v0, value:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private hideControlIcon()Landroid/widget/ImageView;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 75
    const v2, 0x7f0c0043

    invoke-virtual {p0, v2}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 76
    .local v0, icon:Landroid/widget/ImageView;
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 79
    const v2, 0x7f0c003f

    invoke-virtual {p0, v2}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 80
    .local v1, view:Landroid/view/View;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 81
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    return-object v0
.end method

.method private postAbuseReport()V
    .locals 3

    .prologue
    .line 200
    new-instance v0, Lcom/scoreloop/client/android/core/controller/MessageController;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->getRequestControllerObserver()Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/scoreloop/client/android/core/controller/MessageController;-><init>(Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->_messageController:Lcom/scoreloop/client/android/core/controller/MessageController;

    .line 202
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->_messageController:Lcom/scoreloop/client/android/core/controller/MessageController;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/controller/MessageController;->setTarget(Ljava/lang/Object;)V

    .line 203
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->_messageController:Lcom/scoreloop/client/android/core/controller/MessageController;

    sget v1, Lcom/scoreloop/client/android/core/controller/MessageController;->TYPE_ABUSE_REPORT:I

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/controller/MessageController;->setMessageType(I)V

    .line 204
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->_messageController:Lcom/scoreloop/client/android/core/controller/MessageController;

    const-string v1, "Inappropriate user in ScoreloopUI"

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/controller/MessageController;->setText(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->_messageController:Lcom/scoreloop/client/android/core/controller/MessageController;

    sget-object v1, Lcom/scoreloop/client/android/core/controller/MessageController;->RECEIVER_SYSTEM:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/scoreloop/client/android/core/controller/MessageController;->addReceiverWithUsers(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 207
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->_messageController:Lcom/scoreloop/client/android/core/controller/MessageController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/MessageController;->isSubmitAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->_messageController:Lcom/scoreloop/client/android/core/controller/MessageController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/MessageController;->submitMessage()V

    .line 210
    :cond_0
    return-void
.end method

.method private setNumberBuddies(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 220
    const v1, 0x7f0c004b

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 221
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    return-void
.end method

.method private setNumberGames(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 225
    const v1, 0x7f0c004c

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 226
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    return-void
.end method

.method private setNumberGlobalAchievements(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 230
    const v1, 0x7f0c004d

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 231
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    return-void
.end method

.method private showControlIcon(IZ)V
    .locals 4
    .parameter "resId"
    .parameter "isHeaderClickable"

    .prologue
    const/4 v3, 0x1

    .line 235
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->hideControlIcon()Landroid/widget/ImageView;

    move-result-object v0

    .line 236
    .local v0, icon:Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 237
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 238
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    if-eqz p2, :cond_0

    .line 240
    const v2, 0x7f0c003f

    invoke-virtual {p0, v2}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 241
    .local v1, view:Landroid/view/View;
    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 242
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    .end local v1           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method private updateAddRemoveBuddiesControl()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 247
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->_mode:Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;

    sget-object v2, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;->BUDDY:Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;

    if-eq v1, v2, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->getSessionUserValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v1

    const-string v2, "userBuddies"

    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 251
    .local v0, buddyUsers:Ljava/util/List;,"Ljava/util/List<Lcom/scoreloop/client/android/core/model/User;>;"
    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v1

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->getSessionUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v2

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 255
    const v1, 0x7f02001b

    invoke-direct {p0, v1, v3}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->showControlIcon(IZ)V

    .line 256
    iput-boolean v3, p0, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->_canRemoveBuddy:Z

    goto :goto_0

    .line 258
    :cond_2
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->hideControlIcon()Landroid/widget/ImageView;

    .line 259
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->_canRemoveBuddy:Z

    goto :goto_0
.end method

.method private updateUI()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 264
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->getUserValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v1

    .line 265
    .local v1, store:Lcom/scoreloop/client/android/ui/framework/ValueStore;
    const-string v2, "userImageUrl"

    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 266
    .local v0, imageUrl:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 267
    const-string v2, "user"

    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/User;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 269
    :cond_0
    if-eqz v0, :cond_1

    .line 270
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->getDrawableLoading()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-static {v0, v2, v3, v4}, Lcom/scoreloop/client/android/ui/util/ImageDownloader;->downloadImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 277
    :goto_0
    const-string v2, "userName"

    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->setTitle(Ljava/lang/String;)V

    .line 278
    const-string v2, "numberGames"

    invoke-direct {p0, v1, v2}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->formatInteger(Lcom/scoreloop/client/android/ui/framework/ValueStore;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->setNumberGames(Ljava/lang/String;)V

    .line 279
    const-string v2, "numberBuddies"

    invoke-direct {p0, v1, v2}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->formatInteger(Lcom/scoreloop/client/android/ui/framework/ValueStore;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->setNumberBuddies(Ljava/lang/String;)V

    .line 280
    const-string v2, "numberGlobalAchievements"

    invoke-direct {p0, v1, v2}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->formatInteger(Lcom/scoreloop/client/android/ui/framework/ValueStore;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->setNumberGlobalAchievements(Ljava/lang/String;)V

    .line 282
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->updateAddRemoveBuddiesControl()V

    .line 283
    return-void

    .line 271
    :cond_1
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/User;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 273
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->getImageView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 275
    :cond_2
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->getImageView()Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f020040

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method protected getDrawableLoading()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v0

    .line 88
    .local v0, user:Lcom/scoreloop/client/android/core/model/User;
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->_mode:Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;

    sget-object v2, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;->PROFILE:Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;

    if-ne v1, v2, :cond_1

    .line 89
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->getTracker()Lcom/scoreloop/client/android/ui/component/base/Tracker;

    move-result-object v1

    const-string v2, "navigation"

    const-string v3, "header.account-settings"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/scoreloop/client/android/ui/component/base/Tracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 90
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->getFactory()Lcom/scoreloop/client/android/ui/component/base/Factory;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/scoreloop/client/android/ui/component/base/Factory;->createProfileSettingsScreenDescription(Lcom/scoreloop/client/android/core/model/User;)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->display(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)V

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->_mode:Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;

    sget-object v2, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;->BUDDY:Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;

    if-ne v1, v2, :cond_0

    .line 92
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->disableAddRemoveBuddiesControl()V

    .line 93
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->getSessionUserValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v1

    new-instance v2, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$1;-><init>(Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;Lcom/scoreloop/client/android/core/model/User;)V

    invoke-static {p0, v0, v1, v2}, Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask;->addBuddy(Lcom/scoreloop/client/android/ui/framework/BaseActivity;Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/ui/framework/ValueStore;Lcom/scoreloop/client/android/core/model/Continuation;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 106
    const v0, 0x7f03001c

    invoke-super {p0, p1, v0}, Lcom/scoreloop/client/android/ui/component/base/ComponentHeaderActivity;->onCreate(Landroid/os/Bundle;I)V

    .line 108
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "sessionUserValues"

    aput-object v2, v1, v5

    const-string v2, "userBuddies"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->concatenateKeys([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "userValues"

    aput-object v2, v1, v5

    const-string v2, "userName"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->concatenateKeys([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "userValues"

    aput-object v2, v1, v5

    const-string v2, "userImageUrl"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->concatenateKeys([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "userValues"

    aput-object v3, v2, v5

    const-string v3, "numberGames"

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->concatenateKeys([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "userValues"

    aput-object v3, v2, v5

    const-string v3, "numberBuddies"

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->concatenateKeys([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "userValues"

    aput-object v3, v2, v5

    const-string v3, "numberGlobalAchievements"

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->concatenateKeys([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->addObservedKeys([Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->getActivityArguments()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v0

    const-string v1, "mode"

    sget-object v2, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;->BLANK:Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;

    invoke-virtual {v0, v1, v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->_mode:Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;

    .line 117
    sget-object v0, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$3;->$SwitchMap$com$scoreloop$client$android$ui$component$user$UserHeaderActivity$ControlMode:[I

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->_mode:Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 123
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->disableAddRemoveBuddiesControl()V

    .line 127
    :goto_0
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->updateUI()V

    .line 128
    return-void

    .line 119
    :pswitch_0
    const v0, 0x7f020019

    invoke-direct {p0, v0, v4}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->showControlIcon(IZ)V

    goto :goto_0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenuForActivityGroup(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 132
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/ui/component/base/ComponentHeaderActivity;->onCreateOptionsMenuForActivityGroup(Landroid/view/Menu;)Z

    .line 133
    const/16 v0, 0x100

    const v1, 0x7f080304

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020060

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 134
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->isSessionUser()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    const/16 v0, 0x128

    const v1, 0x7f080266

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020052

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 138
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelectedForActivityGroup(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 143
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 164
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/ui/component/base/ComponentHeaderActivity;->onOptionsItemSelectedForActivityGroup(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 145
    :sswitch_0
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->disableAddRemoveBuddiesControl()V

    .line 146
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v0

    .line 147
    .local v0, user:Lcom/scoreloop/client/android/core/model/User;
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->getSessionUserValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v2

    new-instance v3, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$2;

    invoke-direct {v3, p0, v0}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$2;-><init>(Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;Lcom/scoreloop/client/android/core/model/User;)V

    invoke-static {p0, v0, v2, v3}, Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask;->removeBuddy(Lcom/scoreloop/client/android/ui/framework/BaseActivity;Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/ui/framework/ValueStore;Lcom/scoreloop/client/android/core/model/Continuation;)V

    .line 155
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->getTracker()Lcom/scoreloop/client/android/ui/component/base/Tracker;

    move-result-object v2

    const-string v3, "navigation"

    const-string v4, "optionsmenu.user-remove"

    invoke-interface {v2, v3, v4, v6, v5}, Lcom/scoreloop/client/android/ui/component/base/Tracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 159
    .end local v0           #user:Lcom/scoreloop/client/android/core/model/User;
    :sswitch_1
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->postAbuseReport()V

    .line 160
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->getTracker()Lcom/scoreloop/client/android/ui/component/base/Tracker;

    move-result-object v2

    const-string v3, "navigation"

    const-string v4, "optionsmenu.user-inappropriate"

    invoke-interface {v2, v3, v4, v6, v5}, Lcom/scoreloop/client/android/ui/component/base/Tracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 143
    nop

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x128 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenuForActivityGroup(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 170
    const/16 v1, 0x100

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 171
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 172
    iget-boolean v1, p0, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->_canRemoveBuddy:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 174
    :cond_0
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/ui/component/base/ComponentHeaderActivity;->onPrepareOptionsMenuForActivityGroup(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onValueChanged(Lcom/scoreloop/client/android/ui/framework/ValueStore;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "valueStore"
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->updateUI()V

    .line 180
    return-void
.end method

.method public onValueSetDirty(Lcom/scoreloop/client/android/ui/framework/ValueStore;Ljava/lang/String;)V
    .locals 3
    .parameter "valueStore"
    .parameter "key"

    .prologue
    const/4 v2, 0x0

    .line 184
    const-string v0, "userName"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->getUserValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v0

    sget-object v1, Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;->NOT_DIRTY:Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;

    invoke-virtual {v0, p2, v1, v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->retrieveValue(Ljava/lang/String;Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;Ljava/lang/Object;)Z

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    const-string v0, "userImageUrl"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 187
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->getUserValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v0

    sget-object v1, Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;->NOT_DIRTY:Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;

    invoke-virtual {v0, p2, v1, v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->retrieveValue(Ljava/lang/String;Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;Ljava/lang/Object;)Z

    goto :goto_0

    .line 188
    :cond_2
    const-string v0, "numberGames"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 189
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->getUserValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v0

    sget-object v1, Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;->NOT_DIRTY:Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;

    invoke-virtual {v0, p2, v1, v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->retrieveValue(Ljava/lang/String;Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;Ljava/lang/Object;)Z

    goto :goto_0

    .line 190
    :cond_3
    const-string v0, "numberBuddies"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 191
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->getUserValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v0

    sget-object v1, Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;->NOT_DIRTY:Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;

    invoke-virtual {v0, p2, v1, v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->retrieveValue(Ljava/lang/String;Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;Ljava/lang/Object;)Z

    goto :goto_0

    .line 192
    :cond_4
    const-string v0, "numberGlobalAchievements"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 193
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->getUserValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v0

    sget-object v1, Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;->NOT_DIRTY:Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;

    invoke-virtual {v0, p2, v1, v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->retrieveValue(Ljava/lang/String;Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;Ljava/lang/Object;)Z

    goto :goto_0

    .line 194
    :cond_5
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->_mode:Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;

    sget-object v1, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;->BUDDY:Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;

    if-ne v0, v1, :cond_0

    const-string v0, "userBuddies"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->getSessionUserValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v0

    sget-object v1, Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;->NOT_DIRTY:Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;

    invoke-virtual {v0, p2, v1, v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->retrieveValue(Ljava/lang/String;Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public requestControllerDidReceiveResponseSafe(Lcom/scoreloop/client/android/core/controller/RequestController;)V
    .locals 1
    .parameter "requestController"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->_messageController:Lcom/scoreloop/client/android/core/controller/MessageController;

    if-ne p1, v0, :cond_0

    .line 215
    const v0, 0x7f080265

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;->showToast(Ljava/lang/String;)V

    .line 217
    :cond_0
    return-void
.end method
