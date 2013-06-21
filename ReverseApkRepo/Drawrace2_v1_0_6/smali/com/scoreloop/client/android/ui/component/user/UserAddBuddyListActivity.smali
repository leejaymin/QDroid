.class public Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;
.super Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;
.source "UserAddBuddyListActivity.java"

# interfaces
.implements Lcom/scoreloop/client/android/core/controller/SocialProviderControllerObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity$LoginDialog;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity",
        "<",
        "Lcom/scoreloop/client/android/ui/framework/BaseListItem;",
        ">;",
        "Lcom/scoreloop/client/android/core/controller/SocialProviderControllerObserver;"
    }
.end annotation


# instance fields
.field private final _addressBookTarget:Ljava/lang/Object;

.field private final _loginTarget:Ljava/lang/Object;

.field private usersSearchController:Lcom/scoreloop/client/android/core/controller/UsersController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;-><init>()V

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->_addressBookTarget:Ljava/lang/Object;

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->_loginTarget:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->handleDialogClick(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->hideSpinner()V

    return-void
.end method

.method static synthetic access$200(Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->isPaused()Z

    move-result v0

    return v0
.end method

.method private handleDialogClick(Ljava/lang/String;)V
    .locals 2
    .parameter "login"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->usersSearchController:Lcom/scoreloop/client/android/core/controller/UsersController;

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->showSpinnerFor(Ljava/lang/Object;)V

    .line 87
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->usersSearchController:Lcom/scoreloop/client/android/core/controller/UsersController;

    sget-object v1, Lcom/scoreloop/client/android/core/controller/UsersController$LoginSearchOperator;->EXACT_MATCH:Lcom/scoreloop/client/android/core/controller/UsersController$LoginSearchOperator;

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/controller/UsersController;->setSearchOperator(Lcom/scoreloop/client/android/core/controller/UsersController$LoginSearchOperator;)V

    .line 88
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->usersSearchController:Lcom/scoreloop/client/android/core/controller/UsersController;

    invoke-virtual {v0, p1}, Lcom/scoreloop/client/android/core/controller/UsersController;->searchByLogin(Ljava/lang/String;)V

    .line 89
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    new-instance v3, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;

    invoke-direct {v3, p0}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v3}, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 96
    new-instance v3, Lcom/scoreloop/client/android/core/controller/UsersController;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->getRequestControllerObserver()Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/scoreloop/client/android/core/controller/UsersController;-><init>(Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    iput-object v3, p0, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->usersSearchController:Lcom/scoreloop/client/android/core/controller/UsersController;

    .line 97
    iget-object v3, p0, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->usersSearchController:Lcom/scoreloop/client/android/core/controller/UsersController;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/scoreloop/client/android/core/controller/UsersController;->setSearchesGlobal(Z)V

    .line 99
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->getBaseListAdapter()Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;

    move-result-object v0

    .line 100
    .local v0, adapter:Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;,"Lcom/scoreloop/client/android/ui/framework/BaseListAdapter<Lcom/scoreloop/client/android/ui/framework/BaseListItem;>;"
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 101
    .local v2, res:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->getConfiguration()Lcom/scoreloop/client/android/ui/component/base/Configuration;

    move-result-object v1

    .line 103
    .local v1, configuration:Lcom/scoreloop/client/android/ui/component/base/Configuration;
    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->clear()V

    .line 104
    new-instance v3, Lcom/scoreloop/client/android/ui/component/base/CaptionListItem;

    const/4 v4, 0x0

    const v5, 0x7f080271

    invoke-virtual {p0, v5}, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5}, Lcom/scoreloop/client/android/ui/component/base/CaptionListItem;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->add(Ljava/lang/Object;)V

    .line 105
    new-instance v3, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListItem;

    const v4, 0x7f020051

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x7f080292

    invoke-virtual {p0, v5}, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.facebook.v1"

    invoke-static {v6}, Lcom/scoreloop/client/android/core/model/SocialProvider;->getSocialProviderForIdentifier(Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/SocialProvider;

    move-result-object v6

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListItem;-><init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->add(Ljava/lang/Object;)V

    .line 107
    new-instance v3, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListItem;

    const v4, 0x7f020066

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x7f080318

    invoke-virtual {p0, v5}, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.twitter.v1"

    invoke-static {v6}, Lcom/scoreloop/client/android/core/model/SocialProvider;->getSocialProviderForIdentifier(Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/SocialProvider;

    move-result-object v6

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListItem;-><init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->add(Ljava/lang/Object;)V

    .line 109
    sget-object v3, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->ADDRESS_BOOK:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    invoke-virtual {v1, v3}, Lcom/scoreloop/client/android/ui/component/base/Configuration;->isFeatureEnabled(Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    new-instance v3, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListItem;

    const v4, 0x7f020045

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x7f080272

    invoke-virtual {p0, v5}, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->_addressBookTarget:Ljava/lang/Object;

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListItem;-><init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->add(Ljava/lang/Object;)V

    .line 113
    :cond_0
    new-instance v3, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListItem;

    const v4, 0x7f020061

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x7f080305

    invoke-virtual {p0, v5}, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->_loginTarget:Ljava/lang/Object;

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListItem;-><init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Lcom/scoreloop/client/android/ui/framework/BaseListAdapter;->add(Ljava/lang/Object;)V

    .line 115
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "id"

    .prologue
    .line 119
    packed-switch p1, :pswitch_data_0

    .line 125
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/ui/component/base/ComponentListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 121
    :pswitch_0
    new-instance v0, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity$LoginDialog;

    const v1, 0x7f090018

    invoke-direct {v0, p0, p0, v1}, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity$LoginDialog;-><init>(Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;Landroid/content/Context;I)V

    .line 122
    .local v0, loginDialog:Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity$LoginDialog;
    invoke-virtual {v0, p0}, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity$LoginDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
    .end packed-switch
.end method

.method public onListItemClick(Lcom/scoreloop/client/android/ui/framework/BaseListItem;)V
    .locals 5
    .parameter "item"

    .prologue
    .line 131
    check-cast p1, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListItem;

    .end local p1
    invoke-virtual {p1}, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListItem;->getTarget()Ljava/lang/Object;

    move-result-object v2

    .line 132
    .local v2, target:Ljava/lang/Object;
    iget-object v3, p0, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->_addressBookTarget:Ljava/lang/Object;

    if-ne v2, v3, :cond_0

    .line 133
    iget-object v3, p0, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->usersSearchController:Lcom/scoreloop/client/android/core/controller/UsersController;

    invoke-virtual {p0, v3}, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->showSpinnerFor(Ljava/lang/Object;)V

    .line 134
    iget-object v3, p0, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->usersSearchController:Lcom/scoreloop/client/android/core/controller/UsersController;

    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/controller/UsersController;->searchByLocalAddressBook()V

    .line 148
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v3, p0, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->_loginTarget:Ljava/lang/Object;

    if-ne v2, v3, :cond_1

    .line 136
    const/16 v3, 0x13

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->showDialogSafe(IZ)V

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 138
    check-cast v0, Lcom/scoreloop/client/android/core/model/SocialProvider;

    .line 139
    .local v0, socialProvider:Lcom/scoreloop/client/android/core/model/SocialProvider;
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->getSessionUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/scoreloop/client/android/core/model/SocialProvider;->isUserConnected(Lcom/scoreloop/client/android/core/model/User;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 140
    iget-object v3, p0, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->usersSearchController:Lcom/scoreloop/client/android/core/controller/UsersController;

    invoke-virtual {p0, v3}, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->showSpinnerFor(Ljava/lang/Object;)V

    .line 141
    iget-object v3, p0, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->usersSearchController:Lcom/scoreloop/client/android/core/controller/UsersController;

    invoke-virtual {v3, v0}, Lcom/scoreloop/client/android/core/controller/UsersController;->searchBySocialProvider(Lcom/scoreloop/client/android/core/model/SocialProvider;)V

    goto :goto_0

    .line 143
    :cond_2
    const/4 v3, 0x0

    invoke-static {v3, p0, v0}, Lcom/scoreloop/client/android/core/controller/SocialProviderController;->getSocialProviderController(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/SocialProviderControllerObserver;Lcom/scoreloop/client/android/core/model/SocialProvider;)Lcom/scoreloop/client/android/core/controller/SocialProviderController;

    move-result-object v1

    .line 145
    .local v1, socialProviderController:Lcom/scoreloop/client/android/core/controller/SocialProviderController;
    invoke-virtual {v1, p0}, Lcom/scoreloop/client/android/core/controller/SocialProviderController;->connect(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public requestControllerDidReceiveResponseSafe(Lcom/scoreloop/client/android/core/controller/RequestController;)V
    .locals 5
    .parameter "requestController"

    .prologue
    .line 152
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->usersSearchController:Lcom/scoreloop/client/android/core/controller/UsersController;

    if-ne p1, v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->usersSearchController:Lcom/scoreloop/client/android/core/controller/UsersController;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/controller/UsersController;->isOverLimit()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 154
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->usersSearchController:Lcom/scoreloop/client/android/core/controller/UsersController;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/controller/UsersController;->isMaxUserCount()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0802bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->showToast(Ljava/lang/String;)V

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08029e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->usersSearchController:Lcom/scoreloop/client/android/core/controller/UsersController;

    invoke-virtual {v4}, Lcom/scoreloop/client/android/core/controller/UsersController;->getCountOfUsers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_2
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->usersSearchController:Lcom/scoreloop/client/android/core/controller/UsersController;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/controller/UsersController;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 164
    .local v0, users:Ljava/util/List;,"Ljava/util/List<Lcom/scoreloop/client/android/core/model/User;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 165
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0802bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 167
    :cond_3
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->showSpinner()V

    .line 168
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->getSessionUserValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v1

    new-instance v2, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity$1;

    invoke-direct {v2, p0}, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity$1;-><init>(Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;)V

    invoke-static {p0, v0, v1, v2}, Lcom/scoreloop/client/android/ui/component/agent/ManageBuddiesTask;->addBuddies(Lcom/scoreloop/client/android/ui/framework/BaseActivity;Ljava/util/List;Lcom/scoreloop/client/android/ui/framework/ValueStore;Lcom/scoreloop/client/android/core/model/Continuation;)V

    goto :goto_0
.end method

.method public socialProviderControllerDidCancel(Lcom/scoreloop/client/android/core/controller/SocialProviderController;)V
    .locals 0
    .parameter "controller"

    .prologue
    .line 193
    return-void
.end method

.method public socialProviderControllerDidEnterInvalidCredentials(Lcom/scoreloop/client/android/core/controller/SocialProviderController;)V
    .locals 1
    .parameter "controller"

    .prologue
    .line 197
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->showDialogSafe(I)V

    .line 198
    return-void
.end method

.method public socialProviderControllerDidFail(Lcom/scoreloop/client/android/core/controller/SocialProviderController;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "controller"
    .parameter "error"

    .prologue
    .line 202
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->showDialogSafe(I)V

    .line 203
    return-void
.end method

.method public socialProviderControllerDidSucceed(Lcom/scoreloop/client/android/core/controller/SocialProviderController;)V
    .locals 2
    .parameter "socialProviderController"

    .prologue
    .line 207
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/controller/SocialProviderController;->getSocialProvider()Lcom/scoreloop/client/android/core/model/SocialProvider;

    move-result-object v0

    .line 208
    .local v0, socialProvider:Lcom/scoreloop/client/android/core/model/SocialProvider;
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->getSessionUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/model/SocialProvider;->isUserConnected(Lcom/scoreloop/client/android/core/model/User;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->usersSearchController:Lcom/scoreloop/client/android/core/controller/UsersController;

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->showSpinnerFor(Ljava/lang/Object;)V

    .line 210
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->usersSearchController:Lcom/scoreloop/client/android/core/controller/UsersController;

    invoke-virtual {v1, v0}, Lcom/scoreloop/client/android/core/controller/UsersController;->searchBySocialProvider(Lcom/scoreloop/client/android/core/model/SocialProvider;)V

    .line 212
    :cond_0
    return-void
.end method
